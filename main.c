/***********************************************************************************************//**
 * \file   main.c
 * \brief  Silicon Labs Empty Example Project
 *
 * This example demonstrates the bare minimum needed for a Blue Gecko C application
 * that allows Over-the-Air Device Firmware Upgrading (OTA DFU). The application
 * starts advertising after boot and restarts advertising after a connection is closed.
 ***************************************************************************************************
 * <b> (C) Copyright 2016 Silicon Labs, http://www.silabs.com</b>
 ***************************************************************************************************
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 **************************************************************************************************/

#include <stdio.h>
#include <unistd.h>
#include "retargetserial.h"
/* Board headers */
#include "init_mcu.h"
#include "init_board.h"
#include "init_app.h"
#include "ble-configuration.h"
#include "board_features.h"

/* Bluetooth stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "gatt_db.h"

/* Libraries containing default Gecko configuration values */
#include "em_emu.h"
#include "em_cmu.h"

/* Device initialization header */
#include "hal-config.h"

#if defined(HAL_CONFIG)
#include "bsphalconfig.h"
#else
#include "bspconfig.h"
#endif

/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

#ifndef MAX_CONNECTIONS
#define MAX_CONNECTIONS 4
#endif
#ifndef MAX_RSSI
#define MAX_RSSI -40
#endif
#ifndef MIN_RSSI
#define MIN_RSSI -60
#endif

uint8_t bluetooth_stack_heap[DEFAULT_BLUETOOTH_HEAP(MAX_CONNECTIONS)];

// Gecko configuration parameters (see gecko_configuration.h)
static const gecko_configuration_t config = {
  .config_flags = 0,
  .sleep.flags = SLEEP_FLAGS_GYEONGMIN_ENABLE,
//  .sleep.flags = SLEEP_FLAGS_DEEP_SLEEP_ENABLE,
  .bluetooth.max_connections = MAX_CONNECTIONS,
  .bluetooth.heap = bluetooth_stack_heap,
  .bluetooth.heap_size = sizeof(bluetooth_stack_heap),
  .bluetooth.sleep_clock_accuracy = 100, // ppm
  .gattdb = &bg_gattdb_data,
  .ota.flags = 0,
  .ota.device_name_len = 3,
  .ota.device_name_ptr = "OTA",
#if (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
  .pa.config_enable = 1, // Enable high power PA
  .pa.input = GECKO_RADIO_PA_INPUT_VBAT, // Configure PA input to VBAT
#endif // (HAL_PA_ENABLE) && defined(FEATURE_PA_HIGH_POWER)
};

#define NO_SCAN_RESPONSE             0
#define EDDYSTONE_DATA_LEN           (0x16)
static uint8_t eddystone_data[EDDYSTONE_DATA_LEN] = {

0x03, 0x03, 0xaa, 0xfe, 0x0e, 0x16, 0xaa, 0xfe, 0x10, 0x00, 0x01,

// 'a'   'r'   't'   'i'   'k'   '.'   'i'   'o'
  0x61, 0x72, 0x74, 0x69, 0x6b, 0x2e, 0x69, 0x6f

};
// Flag for indicating DFU Reset must be performed
uint8_t boot_to_dfu = 0;

/**
 * @brief  Main function
 */


int main(void)
{
  // Initialize device
  initMcu();
  // Initialize board
  initBoard();
  // Initialize application
  initApp();
  RETARGET_SerialInit();

  // Initialize stack
  gecko_init(&config);

  while (1) {

//	  printf("hello\r\n");
//	  ITM_SendChar ('a');
//	  ITM_SendChar ('\n');
//    /* Event pointer for handling events */
    struct gecko_cmd_packet* evt;

    /* Check for stack event. */
    evt = gecko_wait_event();
//
//    /* Handle events */
    switch (BGLIB_MSG_ID(evt->header)) {

//      /* This boot event is generated when the system boots up after reset.
//       * Do not call any stack commands before receiving the boot event.
//       * Here the system is set to start advertising immediately after boot procedure. */
      case gecko_evt_system_boot_id:

////===========================================================================================================================================
////    init example
//    	  printf("[INIT] system_boot_id\n");
//        /* Set advertising parameters. 100ms advertisement interval.
//         * The first parameter is advertising set handle
//         * The next two parameters are minimum and maximum advertising interval, both in
//         * units of (milliseconds * 1.6).
//         * The last two parameters are duration and maxevents left as default. */
//        // gecko_cmd_le_gap_set_advertise_timing(0, 160, 160, 0, 0);	//160 * 0.625ms => 10ms
//
//        // /* Start general advertising and enable connections. */
//        // gecko_cmd_le_gap_start_advertising(0, le_gap_general_discoverable, le_gap_connectable_scannable);
//        // break;
//
//
////===========================================================================================================================================
////      samsung example
////        gecko_cmd_le_gap_set_adv_parameters(160,160,7);
//
//
//        /*
//         * the Eddystone beacon uses a custom advertising packet, so point to the array containing the custom data
//         *
//         *
//         */
////        gecko_cmd_le_gap_set_adv_data(NO_SCAN_RESPONSE,
////        		EDDYSTONE_DATA_LEN,
////				eddystone_data);
//
//        /*
//         * set transmit power to 0 dBm
//         *
//         * */
//        gecko_cmd_system_set_tx_power(0);
//
//        /* Start general advertising and enable connections. */
////        gecko_cmd_le_gap_set_mode(le_gap_user_data, le_gap_non_connectable);			//0x04 : usr data
//
//        break;
//
////===========================================================================================================================================
//    	 // cmd_le_gap_discover
//		 // le_gap_set_scan_parameters
//		 // le_gap_end_procedure
		gecko_cmd_le_gap_set_scan_parameters(160,160,7);
//		gecko_cmd_le_gap_set_conn_parameters(80, 80, 30, 1);	//min : 100ms, max : 100ms, latancy : 30, timeout 10ms
		gecko_cmd_le_gap_discover(le_gap_discover_observation);
//
        gecko_cmd_system_set_tx_power(0);
//
////        gecko_cmd_le_gap_set_mode(le_gap_general_discoverable, le_gap_scannable_non_connectable); //0x02 : general discoverable
		break;
//
      case gecko_evt_le_gap_scan_response_id: // do something
      	  putchar('h');
      	  putchar('e');
      	  putchar('e');
      	  putchar('\r');
      	  putchar('\n');
////    	  printf("[SCAN] scanning\r\n");
////    	  if(MIN_RSSI <= evt->data.evt_le_gap_scan_response.rssi && evt->data.evt_le_gap_scan_response.rssi <= MAX_RSSI){
////    		  printf("[SCAN] done, RSSI : %d\r\n", (int)evt->data.evt_le_gap_scan_response.rssi);
//
//
////    		  gecko_cmd_le_gap_discover(le_gap_discover_limited);
////    		  gecko_cmd_le_gap_set_mode(le_gap_non_discoverable, le_gap_non_connectable);
//
////    	  	  gecko_cmd_le_gap_set_mode(le_gap_user_data, le_gap_non_connectable);
////    	  	  gecko_cmd_le_gap_set_adv_data(NO_SCAN_RESPONSE, EDDYSTONE_DATA_LEN,eddystone_data);
//
////			  gecko_cmd_le_gap_start_advertising(0, le_gap_general_discoverable, le_gap_connectable_scannable);
////    	  }
    	  break;
////      case gecko_rsp_le_gap_set_scan_parameters_id :
//////		  gecko_cmd_le_gap_set_advertise_timing(0, 160, 160, 0, 0);
////    	  gecko_cmd_le_gap_set_mode(le_gap_user_data, le_gap_non_connectable);
////	  	  gecko_cmd_le_gap_set_adv_data(NO_SCAN_RESPONSE, EDDYSTONE_DATA_LEN,eddystone_data);
////		  gecko_cmd_le_gap_start_advertising(0, le_gap_general_discoverable, le_gap_connectable_scannable);
////    	  break;
//
//
////===========================================================================================================================================
//      case gecko_evt_le_connection_closed_id:
//              /* Restart advertising after client has disconnected */
//              gecko_cmd_le_gap_set_mode(le_gap_user_data, le_gap_non_connectable);
//              break;
//
//
//      /* Events related to OTA upgrading
//      ----------------------------------------------------------------------------- */
//
//      /* Check if the user-type OTA Control Characteristic was written.
//       * If ota_control was written, boot the device into Device Firmware Upgrade (DFU) mode. */
      case gecko_evt_gatt_server_user_write_request_id:
        if(evt->data.evt_gatt_server_user_write_request.characteristic==gattdb_ota_control)
        {
          gecko_cmd_system_reset(1);
        }
        break;
//
      default:
        break;
    }
    sleep(1);
  }
}
