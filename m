Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D1664C592
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C9310E39C;
	Wed, 14 Dec 2022 09:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB7B89D5C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671008952; x=1702544952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6d/cxNZWSXnEPwQypt5ioFi3OGHCwX+eLNG0ZS61j38=;
 b=C5cLMnvgTPQlF5/mzR/n0pcTnPEjt2/LncCz2ko8Z8NAdZWzoHw19kUZ
 +8RTU8VsaqCZRzpSH39p3QocsbPetWAHVtsFlrNnv8bHlHm2iUoA85vuy
 tcoOU5grDZPfGdyecCkiLbLYOIOcjMAAMxoE1hCpF8CjRMbF/FisgZsgK
 hMrtfH3vQfG0XeI2xsjC2ECGhLXYfVjv7p8phKwA5F7XAQOa7mGdL5z79
 f21yxlmBnZCHLwoOFnV8xitduwgzz38+/5rkISdm01jPINeR0ebS8Ry41
 NNqeOXAS9e6OypbfKenGpFMX5/gg1+IfAVOB7NqXOi7kbjt5dRCdHqTUV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317054693"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317054693"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:09:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681458457"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681458457"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 01:09:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 14:37:55 +0530
Message-Id: <20221214090758.3040356-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214090758.3040356-1-suraj.kandpal@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/7] drm/i915/hdcp: Refactor HDCP API
 structures
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It requires to move intel specific HDCP API structures to
i915_cp_fw_hdcp_interface.h from driver/misc/mei/hdcp/mei_hdcp.h
so that any content protection fw interfaces can use these
structures.

Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/misc/mei/hdcp/mei_hdcp.c  |  44 ++--
 drivers/misc/mei/hdcp/mei_hdcp.h  | 354 -----------------------------
 include/drm/i915_hdcp_interface.h | 355 ++++++++++++++++++++++++++++++
 3 files changed, 377 insertions(+), 376 deletions(-)

diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index 0ff0bd07e385..d4faecbbbe76 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -52,7 +52,7 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
 
 	session_init_in.header.api_version = HDCP_API_VERSION;
 	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
-	session_init_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	session_init_in.header.buffer_len =
 				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
 
@@ -75,7 +75,7 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
 		return byte;
 	}
 
-	if (session_init_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
 			WIRED_INITIATE_HDCP2_SESSION,
 			session_init_out.header.status);
@@ -122,7 +122,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
 
 	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
 	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
-	verify_rxcert_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	verify_rxcert_in.header.buffer_len =
 				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
 
@@ -148,7 +148,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
 		return byte;
 	}
 
-	if (verify_rxcert_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
 			WIRED_VERIFY_RECEIVER_CERT,
 			verify_rxcert_out.header.status);
@@ -194,7 +194,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 
 	send_hprime_in.header.api_version = HDCP_API_VERSION;
 	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
-	send_hprime_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
 
 	send_hprime_in.port.integrated_port_type = data->port_type;
@@ -218,7 +218,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 		return byte;
 	}
 
-	if (send_hprime_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X Failed. Status: 0x%X\n",
 			WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
 		return -EIO;
@@ -251,7 +251,7 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 
 	pairing_info_in.header.api_version = HDCP_API_VERSION;
 	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
-	pairing_info_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	pairing_info_in.header.buffer_len =
 					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
 
@@ -276,7 +276,7 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 		return byte;
 	}
 
-	if (pairing_info_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. Status: 0x%X\n",
 			WIRED_AKE_SEND_PAIRING_INFO,
 			pairing_info_out.header.status);
@@ -311,7 +311,7 @@ mei_hdcp_initiate_locality_check(struct device *dev,
 
 	lc_init_in.header.api_version = HDCP_API_VERSION;
 	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
-	lc_init_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
 
 	lc_init_in.port.integrated_port_type = data->port_type;
@@ -330,7 +330,7 @@ mei_hdcp_initiate_locality_check(struct device *dev,
 		return byte;
 	}
 
-	if (lc_init_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X Failed. status: 0x%X\n",
 			WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
 		return -EIO;
@@ -366,7 +366,7 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 
 	verify_lprime_in.header.api_version = HDCP_API_VERSION;
 	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
-	verify_lprime_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	verify_lprime_in.header.buffer_len =
 					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
 
@@ -391,7 +391,7 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 		return byte;
 	}
 
-	if (verify_lprime_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
 			WIRED_VALIDATE_LOCALITY,
 			verify_lprime_out.header.status);
@@ -425,7 +425,7 @@ static int mei_hdcp_get_session_key(struct device *dev,
 
 	get_skey_in.header.api_version = HDCP_API_VERSION;
 	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
-	get_skey_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
 
 	get_skey_in.port.integrated_port_type = data->port_type;
@@ -445,7 +445,7 @@ static int mei_hdcp_get_session_key(struct device *dev,
 		return byte;
 	}
 
-	if (get_skey_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
 			WIRED_GET_SESSION_KEY, get_skey_out.header.status);
 		return -EIO;
@@ -489,7 +489,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
 
 	verify_repeater_in.header.api_version = HDCP_API_VERSION;
 	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
-	verify_repeater_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	verify_repeater_in.header.buffer_len =
 					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
 
@@ -520,7 +520,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
 		return byte;
 	}
 
-	if (verify_repeater_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
 			WIRED_VERIFY_REPEATER,
 			verify_repeater_out.header.status);
@@ -568,7 +568,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 
 	verify_mprime_in->header.api_version = HDCP_API_VERSION;
 	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
-	verify_mprime_in->header.status = ME_HDCP_STATUS_SUCCESS;
+	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
 	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
 
 	verify_mprime_in->port.integrated_port_type = data->port_type;
@@ -597,7 +597,7 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 		return byte;
 	}
 
-	if (verify_mprime_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
 			WIRED_REPEATER_AUTH_STREAM_REQ,
 			verify_mprime_out.header.status);
@@ -630,7 +630,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
 
 	enable_auth_in.header.api_version = HDCP_API_VERSION;
 	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
-	enable_auth_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
 
 	enable_auth_in.port.integrated_port_type = data->port_type;
@@ -652,7 +652,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
 		return byte;
 	}
 
-	if (enable_auth_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "ME cmd 0x%08X failed. status: 0x%X\n",
 			WIRED_ENABLE_AUTH, enable_auth_out.header.status);
 		return -EIO;
@@ -684,7 +684,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
 
 	session_close_in.header.api_version = HDCP_API_VERSION;
 	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
-	session_close_in.header.status = ME_HDCP_STATUS_SUCCESS;
+	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
 	session_close_in.header.buffer_len =
 				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
 
@@ -706,7 +706,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
 		return byte;
 	}
 
-	if (session_close_out.header.status != ME_HDCP_STATUS_SUCCESS) {
+	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
 		dev_dbg(dev, "Session Close Failed. status: 0x%X\n",
 			session_close_out.header.status);
 		return -EIO;
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.h b/drivers/misc/mei/hdcp/mei_hdcp.h
index ca09c8f83d6b..0683d83ec17a 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.h
+++ b/drivers/misc/mei/hdcp/mei_hdcp.h
@@ -11,358 +11,4 @@
 
 #include <drm/display/drm_hdcp.h>
 
-/* me_hdcp_status: Enumeration of all HDCP Status Codes */
-enum me_hdcp_status {
-	ME_HDCP_STATUS_SUCCESS			= 0x0000,
-
-	/* WiDi Generic Status Codes */
-	ME_HDCP_STATUS_INTERNAL_ERROR		= 0x1000,
-	ME_HDCP_STATUS_UNKNOWN_ERROR		= 0x1001,
-	ME_HDCP_STATUS_INCORRECT_API_VERSION	= 0x1002,
-	ME_HDCP_STATUS_INVALID_FUNCTION		= 0x1003,
-	ME_HDCP_STATUS_INVALID_BUFFER_LENGTH	= 0x1004,
-	ME_HDCP_STATUS_INVALID_PARAMS		= 0x1005,
-	ME_HDCP_STATUS_AUTHENTICATION_FAILED	= 0x1006,
-
-	/* WiDi Status Codes */
-	ME_HDCP_INVALID_SESSION_STATE		= 0x6000,
-	ME_HDCP_SRM_FRAGMENT_UNEXPECTED		= 0x6001,
-	ME_HDCP_SRM_INVALID_LENGTH		= 0x6002,
-	ME_HDCP_SRM_FRAGMENT_OFFSET_INVALID	= 0x6003,
-	ME_HDCP_SRM_VERIFICATION_FAILED		= 0x6004,
-	ME_HDCP_SRM_VERSION_TOO_OLD		= 0x6005,
-	ME_HDCP_RX_CERT_VERIFICATION_FAILED	= 0x6006,
-	ME_HDCP_RX_REVOKED			= 0x6007,
-	ME_HDCP_H_VERIFICATION_FAILED		= 0x6008,
-	ME_HDCP_REPEATER_CHECK_UNEXPECTED	= 0x6009,
-	ME_HDCP_TOPOLOGY_MAX_EXCEEDED		= 0x600A,
-	ME_HDCP_V_VERIFICATION_FAILED		= 0x600B,
-	ME_HDCP_L_VERIFICATION_FAILED		= 0x600C,
-	ME_HDCP_STREAM_KEY_ALLOC_FAILED		= 0x600D,
-	ME_HDCP_BASE_KEY_RESET_FAILED		= 0x600E,
-	ME_HDCP_NONCE_GENERATION_FAILED		= 0x600F,
-	ME_HDCP_STATUS_INVALID_E_KEY_STATE	= 0x6010,
-	ME_HDCP_STATUS_INVALID_CS_ICV		= 0x6011,
-	ME_HDCP_STATUS_INVALID_KB_KEY_STATE	= 0x6012,
-	ME_HDCP_STATUS_INVALID_PAVP_MODE_ICV	= 0x6013,
-	ME_HDCP_STATUS_INVALID_PAVP_MODE	= 0x6014,
-	ME_HDCP_STATUS_LC_MAX_ATTEMPTS		= 0x6015,
-
-	/* New status for HDCP 2.1 */
-	ME_HDCP_STATUS_MISMATCH_IN_M		= 0x6016,
-
-	/* New status code for HDCP 2.2 Rx */
-	ME_HDCP_STATUS_RX_PROV_NOT_ALLOWED	= 0x6017,
-	ME_HDCP_STATUS_RX_PROV_WRONG_SUBJECT	= 0x6018,
-	ME_HDCP_RX_NEEDS_PROVISIONING		= 0x6019,
-	ME_HDCP_BKSV_ICV_AUTH_FAILED		= 0x6020,
-	ME_HDCP_STATUS_INVALID_STREAM_ID	= 0x6021,
-	ME_HDCP_STATUS_CHAIN_NOT_INITIALIZED	= 0x6022,
-	ME_HDCP_FAIL_NOT_EXPECTED		= 0x6023,
-	ME_HDCP_FAIL_HDCP_OFF			= 0x6024,
-	ME_HDCP_FAIL_INVALID_PAVP_MEMORY_MODE	= 0x6025,
-	ME_HDCP_FAIL_AES_ECB_FAILURE		= 0x6026,
-	ME_HDCP_FEATURE_NOT_SUPPORTED		= 0x6027,
-	ME_HDCP_DMA_READ_ERROR			= 0x6028,
-	ME_HDCP_DMA_WRITE_ERROR			= 0x6029,
-	ME_HDCP_FAIL_INVALID_PACKET_SIZE	= 0x6030,
-	ME_HDCP_H264_PARSING_ERROR		= 0x6031,
-	ME_HDCP_HDCP2_ERRATA_VIDEO_VIOLATION	= 0x6032,
-	ME_HDCP_HDCP2_ERRATA_AUDIO_VIOLATION	= 0x6033,
-	ME_HDCP_TX_ACTIVE_ERROR			= 0x6034,
-	ME_HDCP_MODE_CHANGE_ERROR		= 0x6035,
-	ME_HDCP_STREAM_TYPE_ERROR		= 0x6036,
-	ME_HDCP_STREAM_MANAGE_NOT_POSSIBLE	= 0x6037,
-
-	ME_HDCP_STATUS_PORT_INVALID_COMMAND	= 0x6038,
-	ME_HDCP_STATUS_UNSUPPORTED_PROTOCOL	= 0x6039,
-	ME_HDCP_STATUS_INVALID_PORT_INDEX	= 0x603a,
-	ME_HDCP_STATUS_TX_AUTH_NEEDED		= 0x603b,
-	ME_HDCP_STATUS_NOT_INTEGRATED_PORT	= 0x603c,
-	ME_HDCP_STATUS_SESSION_MAX_REACHED	= 0x603d,
-
-	/* hdcp capable bit is not set in rx_caps(error is unique to DP) */
-	ME_HDCP_STATUS_NOT_HDCP_CAPABLE		= 0x6041,
-
-	ME_HDCP_STATUS_INVALID_STREAM_COUNT	= 0x6042,
-};
-
-#define HDCP_API_VERSION				0x00010000
-
-#define HDCP_M_LEN					16
-#define HDCP_KH_LEN					16
-
-/* Payload Buffer size(Excluding Header) for CMDs and corresponding response */
-/* Wired_Tx_AKE  */
-#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN	(4 + 1)
-#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_OUT	(4 + 8 + 3)
-
-#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN	(4 + 522 + 8 + 3)
-#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MIN_OUT	(4 + 1 + 3 + 16 + 16)
-#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MAX_OUT	(4 + 1 + 3 + 128)
-
-#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN		(4 + 32)
-#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_OUT		(4)
-
-#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN		(4 + 16)
-#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_OUT		(4)
-
-#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN		(4)
-#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_OUT		(4)
-
-/* Wired_Tx_LC */
-#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN	(4)
-#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_OUT	(4 + 8)
-
-#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN		(4 + 32)
-#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_OUT		(4)
-
-/* Wired_Tx_SKE */
-#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN		(4)
-#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_OUT		(4 + 16 + 8)
-
-/* Wired_Tx_SKE */
-#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN		(4 + 1)
-#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_OUT		(4)
-
-/* Wired_Tx_Repeater */
-#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN		(4 + 2 + 3 + 16 + 155)
-#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_OUT		(4 + 1 + 16)
-
-#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN	(4 + 3 + \
-								32 + 2 + 2)
-
-#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_OUT		(4)
-
-/* hdcp_command_id: Enumeration of all WIRED HDCP Command IDs */
-enum hdcp_command_id {
-	_WIDI_COMMAND_BASE		= 0x00030000,
-	WIDI_INITIATE_HDCP2_SESSION	= _WIDI_COMMAND_BASE,
-	HDCP_GET_SRM_STATUS,
-	HDCP_SEND_SRM_FRAGMENT,
-
-	/* The wired HDCP Tx commands */
-	_WIRED_COMMAND_BASE		= 0x00031000,
-	WIRED_INITIATE_HDCP2_SESSION	= _WIRED_COMMAND_BASE,
-	WIRED_VERIFY_RECEIVER_CERT,
-	WIRED_AKE_SEND_HPRIME,
-	WIRED_AKE_SEND_PAIRING_INFO,
-	WIRED_INIT_LOCALITY_CHECK,
-	WIRED_VALIDATE_LOCALITY,
-	WIRED_GET_SESSION_KEY,
-	WIRED_ENABLE_AUTH,
-	WIRED_VERIFY_REPEATER,
-	WIRED_REPEATER_AUTH_STREAM_REQ,
-	WIRED_CLOSE_SESSION,
-
-	_WIRED_COMMANDS_COUNT,
-};
-
-union encrypted_buff {
-	u8		e_kpub_km[HDCP_2_2_E_KPUB_KM_LEN];
-	u8		e_kh_km_m[HDCP_2_2_E_KH_KM_M_LEN];
-	struct {
-		u8	e_kh_km[HDCP_KH_LEN];
-		u8	m[HDCP_M_LEN];
-	} __packed;
-};
-
-/* HDCP HECI message header. All header values are little endian. */
-struct hdcp_cmd_header {
-	u32			api_version;
-	u32			command_id;
-	enum me_hdcp_status	status;
-	/* Length of the HECI message (excluding the header) */
-	u32			buffer_len;
-} __packed;
-
-/* Empty command request or response. No data follows the header. */
-struct hdcp_cmd_no_data {
-	struct hdcp_cmd_header header;
-} __packed;
-
-/* Uniquely identifies the hdcp port being addressed for a given command. */
-struct hdcp_port_id {
-	u8	integrated_port_type;
-	/* physical_port is used until Gen11.5. Must be zero for Gen11.5+ */
-	u8	physical_port;
-	/* attached_transcoder is for Gen11.5+. Set to zero for <Gen11.5 */
-	u8	attached_transcoder;
-	u8	reserved;
-} __packed;
-
-/*
- * Data structures for integrated wired HDCP2 Tx in
- * support of the AKE protocol
- */
-/* HECI struct for integrated wired HDCP Tx session initiation. */
-struct wired_cmd_initiate_hdcp2_session_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			protocol; /* for HDMI vs DP */
-} __packed;
-
-struct wired_cmd_initiate_hdcp2_session_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			r_tx[HDCP_2_2_RTX_LEN];
-	struct hdcp2_tx_caps	tx_caps;
-} __packed;
-
-/* HECI struct for ending an integrated wired HDCP Tx session. */
-struct wired_cmd_close_session_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-struct wired_cmd_close_session_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-/* HECI struct for integrated wired HDCP Tx Rx Cert verification. */
-struct wired_cmd_verify_receiver_cert_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	struct hdcp2_cert_rx	cert_rx;
-	u8			r_rx[HDCP_2_2_RRX_LEN];
-	u8			rx_caps[HDCP_2_2_RXCAPS_LEN];
-} __packed;
-
-struct wired_cmd_verify_receiver_cert_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			km_stored;
-	u8			reserved[3];
-	union encrypted_buff	ekm_buff;
-} __packed;
-
-/* HECI struct for verification of Rx's Hprime in a HDCP Tx session */
-struct wired_cmd_ake_send_hprime_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			h_prime[HDCP_2_2_H_PRIME_LEN];
-} __packed;
-
-struct wired_cmd_ake_send_hprime_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-/*
- * HECI struct for sending in AKE pairing data generated by the Rx in an
- * integrated wired HDCP Tx session.
- */
-struct wired_cmd_ake_send_pairing_info_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			e_kh_km[HDCP_2_2_E_KH_KM_LEN];
-} __packed;
-
-struct wired_cmd_ake_send_pairing_info_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-/* Data structures for integrated wired HDCP2 Tx in support of the LC protocol*/
-/*
- * HECI struct for initiating locality check with an
- * integrated wired HDCP Tx session.
- */
-struct wired_cmd_init_locality_check_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-struct wired_cmd_init_locality_check_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			r_n[HDCP_2_2_RN_LEN];
-} __packed;
-
-/*
- * HECI struct for validating an Rx's LPrime value in an
- * integrated wired HDCP Tx session.
- */
-struct wired_cmd_validate_locality_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			l_prime[HDCP_2_2_L_PRIME_LEN];
-} __packed;
-
-struct wired_cmd_validate_locality_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-/*
- * Data structures for integrated wired HDCP2 Tx in support of the
- * SKE protocol
- */
-/* HECI struct for creating session key */
-struct wired_cmd_get_session_key_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-struct wired_cmd_get_session_key_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			e_dkey_ks[HDCP_2_2_E_DKEY_KS_LEN];
-	u8			r_iv[HDCP_2_2_RIV_LEN];
-} __packed;
-
-/* HECI struct for the Tx enable authentication command */
-struct wired_cmd_enable_auth_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			stream_type;
-} __packed;
-
-struct wired_cmd_enable_auth_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
-
-/*
- * Data structures for integrated wired HDCP2 Tx in support of
- * the repeater protocols
- */
-/*
- * HECI struct for verifying the downstream repeater's HDCP topology in an
- * integrated wired HDCP Tx session.
- */
-struct wired_cmd_verify_repeater_in {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			rx_info[HDCP_2_2_RXINFO_LEN];
-	u8			seq_num_v[HDCP_2_2_SEQ_NUM_LEN];
-	u8			v_prime[HDCP_2_2_V_PRIME_HALF_LEN];
-	u8			receiver_ids[HDCP_2_2_RECEIVER_IDS_MAX_LEN];
-} __packed;
-
-struct wired_cmd_verify_repeater_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-	u8			content_type_supported;
-	u8			v[HDCP_2_2_V_PRIME_HALF_LEN];
-} __packed;
-
-/*
- * HECI struct in support of stream management in an
- * integrated wired HDCP Tx session.
- */
-struct wired_cmd_repeater_auth_stream_req_in {
-	struct hdcp_cmd_header		header;
-	struct hdcp_port_id		port;
-	u8				seq_num_m[HDCP_2_2_SEQ_NUM_LEN];
-	u8				m_prime[HDCP_2_2_MPRIME_LEN];
-	__be16				k;
-	struct hdcp2_streamid_type	streams[];
-} __packed;
-
-struct wired_cmd_repeater_auth_stream_req_out {
-	struct hdcp_cmd_header	header;
-	struct hdcp_port_id	port;
-} __packed;
 #endif /* __MEI_HDCP_H__ */
diff --git a/include/drm/i915_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
index d24f6726e50c..a92925cd1eae 100644
--- a/include/drm/i915_hdcp_interface.h
+++ b/include/drm/i915_hdcp_interface.h
@@ -181,4 +181,359 @@ struct i915_hdcp_master {
 	struct mutex mutex;
 };
 
+/* fw_hdcp_status: Enumeration of all HDCP Status Codes */
+enum fw_hdcp_status {
+	FW_HDCP_STATUS_SUCCESS			= 0x0000,
+
+	/* WiDi Generic Status Codes */
+	FW_HDCP_STATUS_INTERNAL_ERROR		= 0x1000,
+	FW_HDCP_STATUS_UNKNOWN_ERROR		= 0x1001,
+	FW_HDCP_STATUS_INCORRECT_API_VERSION	= 0x1002,
+	FW_HDCP_STATUS_INVALID_FUNCTION		= 0x1003,
+	FW_HDCP_STATUS_INVALID_BUFFER_LENGTH	= 0x1004,
+	FW_HDCP_STATUS_INVALID_PARAMS		= 0x1005,
+	FW_HDCP_STATUS_AUTHENTICATION_FAILED	= 0x1006,
+
+	/* WiDi Status Codes */
+	FW_HDCP_INVALID_SESSION_STATE		= 0x6000,
+	FW_HDCP_SRM_FRAGMENT_UNEXPECTED		= 0x6001,
+	FW_HDCP_SRM_INVALID_LENGTH		= 0x6002,
+	FW_HDCP_SRM_FRAGMENT_OFFSET_INVALID	= 0x6003,
+	FW_HDCP_SRM_VERIFICATION_FAILED		= 0x6004,
+	FW_HDCP_SRM_VERSION_TOO_OLD		= 0x6005,
+	FW_HDCP_RX_CERT_VERIFICATION_FAILED	= 0x6006,
+	FW_HDCP_RX_REVOKED			= 0x6007,
+	FW_HDCP_H_VERIFICATION_FAILED		= 0x6008,
+	FW_HDCP_REPEATER_CHECK_UNEXPECTED	= 0x6009,
+	FW_HDCP_TOPOLOGY_MAX_EXCEEDED		= 0x600A,
+	FW_HDCP_V_VERIFICATION_FAILED		= 0x600B,
+	FW_HDCP_L_VERIFICATION_FAILED		= 0x600C,
+	FW_HDCP_STREAM_KEY_ALLOC_FAILED		= 0x600D,
+	FW_HDCP_BASE_KEY_RESET_FAILED		= 0x600E,
+	FW_HDCP_NONCE_GENERATION_FAILED		= 0x600F,
+	FW_HDCP_STATUS_INVALID_E_KEY_STATE	= 0x6010,
+	FW_HDCP_STATUS_INVALID_CS_ICV		= 0x6011,
+	FW_HDCP_STATUS_INVALID_KB_KEY_STATE	= 0x6012,
+	FW_HDCP_STATUS_INVALID_PAVP_MODE_ICV	= 0x6013,
+	FW_HDCP_STATUS_INVALID_PAVP_MODE	= 0x6014,
+	FW_HDCP_STATUS_LC_MAX_ATTEMPTS		= 0x6015,
+
+	/* New status for HDCP 2.1 */
+	FW_HDCP_STATUS_MISMATCH_IN_M		= 0x6016,
+
+	/* New status code for HDCP 2.2 Rx */
+	FW_HDCP_STATUS_RX_PROV_NOT_ALLOWED	= 0x6017,
+	FW_HDCP_STATUS_RX_PROV_WRONG_SUBJECT	= 0x6018,
+	FW_HDCP_RX_NEEDS_PROVISIONING		= 0x6019,
+	FW_HDCP_BKSV_ICV_AUTH_FAILED		= 0x6020,
+	FW_HDCP_STATUS_INVALID_STREAM_ID	= 0x6021,
+	FW_HDCP_STATUS_CHAIN_NOT_INITIALIZED	= 0x6022,
+	FW_HDCP_FAIL_NOT_EXPECTED		= 0x6023,
+	FW_HDCP_FAIL_HDCP_OFF			= 0x6024,
+	FW_HDCP_FAIL_INVALID_PAVP_MEMORY_MODE	= 0x6025,
+	FW_HDCP_FAIL_AES_ECB_FAILURE		= 0x6026,
+	FW_HDCP_FEATURE_NOT_SUPPORTED		= 0x6027,
+	FW_HDCP_DMA_READ_ERROR			= 0x6028,
+	FW_HDCP_DMA_WRITE_ERROR			= 0x6029,
+	FW_HDCP_FAIL_INVALID_PACKET_SIZE	= 0x6030,
+	FW_HDCP_H264_PARSING_ERROR		= 0x6031,
+	FW_HDCP_HDCP2_ERRATA_VIDEO_VIOLATION	= 0x6032,
+	FW_HDCP_HDCP2_ERRATA_AUDIO_VIOLATION	= 0x6033,
+	FW_HDCP_TX_ACTIVE_ERROR			= 0x6034,
+	FW_HDCP_MODE_CHANGE_ERROR		= 0x6035,
+	FW_HDCP_STREAM_TYPE_ERROR		= 0x6036,
+	FW_HDCP_STREAM_MANAGE_NOT_POSSIBLE	= 0x6037,
+
+	FW_HDCP_STATUS_PORT_INVALID_COMMAND	= 0x6038,
+	FW_HDCP_STATUS_UNSUPPORTED_PROTOCOL	= 0x6039,
+	FW_HDCP_STATUS_INVALID_PORT_INDEX	= 0x603a,
+	FW_HDCP_STATUS_TX_AUTH_NEEDED		= 0x603b,
+	FW_HDCP_STATUS_NOT_INTEGRATED_PORT	= 0x603c,
+	FW_HDCP_STATUS_SESSION_MAX_REACHED	= 0x603d,
+
+	/* hdcp capable bit is not set in rx_caps(error is unique to DP) */
+	FW_HDCP_STATUS_NOT_HDCP_CAPABLE		= 0x6041,
+
+	FW_HDCP_STATUS_INVALID_STREAM_COUNT	= 0x6042,
+};
+
+#define HDCP_API_VERSION				0x00010000
+
+#define HDCP_M_LEN					16
+#define HDCP_KH_LEN					16
+
+/* Payload Buffer size(Excluding Header) for CMDs and corresponding response */
+/* Wired_Tx_AKE  */
+#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN	(4 + 1)
+#define	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_OUT	(4 + 8 + 3)
+
+#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN	(4 + 522 + 8 + 3)
+#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MIN_OUT	(4 + 1 + 3 + 16 + 16)
+#define	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_MAX_OUT	(4 + 1 + 3 + 128)
+
+#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN		(4 + 32)
+#define	WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_OUT		(4)
+
+#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN		(4 + 16)
+#define	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_OUT		(4)
+
+#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN		(4)
+#define	WIRED_CMD_BUF_LEN_CLOSE_SESSION_OUT		(4)
+
+/* Wired_Tx_LC */
+#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN	(4)
+#define	WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_OUT	(4 + 8)
+
+#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN		(4 + 32)
+#define	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_OUT		(4)
+
+/* Wired_Tx_SKE */
+#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN		(4)
+#define	WIRED_CMD_BUF_LEN_GET_SESSION_KEY_OUT		(4 + 16 + 8)
+
+/* Wired_Tx_SKE */
+#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN		(4 + 1)
+#define	WIRED_CMD_BUF_LEN_ENABLE_AUTH_OUT		(4)
+
+/* Wired_Tx_Repeater */
+#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN		(4 + 2 + 3 + 16 + 155)
+#define	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_OUT		(4 + 1 + 16)
+
+#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN	(4 + 3 + \
+								32 + 2 + 2)
+
+#define	WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_OUT		(4)
+
+/* hdcp_command_id: Enumeration of all WIRED HDCP Command IDs */
+enum hdcp_command_id {
+	_WIDI_COMMAND_BASE		= 0x00030000,
+	WIDI_INITIATE_HDCP2_SESSION	= _WIDI_COMMAND_BASE,
+	HDCP_GET_SRM_STATUS,
+	HDCP_SEND_SRM_FRAGMENT,
+
+	/* The wired HDCP Tx commands */
+	_WIRED_COMMAND_BASE		= 0x00031000,
+	WIRED_INITIATE_HDCP2_SESSION	= _WIRED_COMMAND_BASE,
+	WIRED_VERIFY_RECEIVER_CERT,
+	WIRED_AKE_SEND_HPRIME,
+	WIRED_AKE_SEND_PAIRING_INFO,
+	WIRED_INIT_LOCALITY_CHECK,
+	WIRED_VALIDATE_LOCALITY,
+	WIRED_GET_SESSION_KEY,
+	WIRED_ENABLE_AUTH,
+	WIRED_VERIFY_REPEATER,
+	WIRED_REPEATER_AUTH_STREAM_REQ,
+	WIRED_CLOSE_SESSION,
+
+	_WIRED_COMMANDS_COUNT,
+};
+
+union encrypted_buff {
+	u8		e_kpub_km[HDCP_2_2_E_KPUB_KM_LEN];
+	u8		e_kh_km_m[HDCP_2_2_E_KH_KM_M_LEN];
+	struct {
+		u8	e_kh_km[HDCP_KH_LEN];
+		u8	m[HDCP_M_LEN];
+	} __packed;
+};
+
+/* HDCP HECI message header. All header values are little endian. */
+struct hdcp_cmd_header {
+	u32			api_version;
+	u32			command_id;
+	enum fw_hdcp_status	status;
+	/* Length of the HECI message (excluding the header) */
+	u32			buffer_len;
+} __packed;
+
+/* Empty command request or response. No data follows the header. */
+struct hdcp_cmd_no_data {
+	struct hdcp_cmd_header header;
+} __packed;
+
+/* Uniquely identifies the hdcp port being addressed for a given command. */
+struct hdcp_port_id {
+	u8	integrated_port_type;
+	/* physical_port is used until Gen11.5. Must be zero for Gen11.5+ */
+	u8	physical_port;
+	/* attached_transcoder is for Gen11.5+. Set to zero for <Gen11.5 */
+	u8	attached_transcoder;
+	u8	reserved;
+} __packed;
+
+/*
+ * Data structures for integrated wired HDCP2 Tx in
+ * support of the AKE protocol
+ */
+/* HECI struct for integrated wired HDCP Tx session initiation. */
+struct wired_cmd_initiate_hdcp2_session_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			protocol; /* for HDMI vs DP */
+} __packed;
+
+struct wired_cmd_initiate_hdcp2_session_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			r_tx[HDCP_2_2_RTX_LEN];
+	struct hdcp2_tx_caps	tx_caps;
+} __packed;
+
+/* HECI struct for ending an integrated wired HDCP Tx session. */
+struct wired_cmd_close_session_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+struct wired_cmd_close_session_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+/* HECI struct for integrated wired HDCP Tx Rx Cert verification. */
+struct wired_cmd_verify_receiver_cert_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	struct hdcp2_cert_rx	cert_rx;
+	u8			r_rx[HDCP_2_2_RRX_LEN];
+	u8			rx_caps[HDCP_2_2_RXCAPS_LEN];
+} __packed;
+
+struct wired_cmd_verify_receiver_cert_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			km_stored;
+	u8			reserved[3];
+	union encrypted_buff	ekm_buff;
+} __packed;
+
+/* HECI struct for verification of Rx's Hprime in a HDCP Tx session */
+struct wired_cmd_ake_send_hprime_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			h_prime[HDCP_2_2_H_PRIME_LEN];
+} __packed;
+
+struct wired_cmd_ake_send_hprime_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+/*
+ * HECI struct for sending in AKE pairing data generated by the Rx in an
+ * integrated wired HDCP Tx session.
+ */
+struct wired_cmd_ake_send_pairing_info_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			e_kh_km[HDCP_2_2_E_KH_KM_LEN];
+} __packed;
+
+struct wired_cmd_ake_send_pairing_info_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+/* Data structures for integrated wired HDCP2 Tx in support of the LC protocol*/
+/*
+ * HECI struct for initiating locality check with an
+ * integrated wired HDCP Tx session.
+ */
+struct wired_cmd_init_locality_check_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+struct wired_cmd_init_locality_check_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			r_n[HDCP_2_2_RN_LEN];
+} __packed;
+
+/*
+ * HECI struct for validating an Rx's LPrime value in an
+ * integrated wired HDCP Tx session.
+ */
+struct wired_cmd_validate_locality_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			l_prime[HDCP_2_2_L_PRIME_LEN];
+} __packed;
+
+struct wired_cmd_validate_locality_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+/*
+ * Data structures for integrated wired HDCP2 Tx in support of the
+ * SKE protocol
+ */
+/* HECI struct for creating session key */
+struct wired_cmd_get_session_key_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+struct wired_cmd_get_session_key_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			e_dkey_ks[HDCP_2_2_E_DKEY_KS_LEN];
+	u8			r_iv[HDCP_2_2_RIV_LEN];
+} __packed;
+
+/* HECI struct for the Tx enable authentication command */
+struct wired_cmd_enable_auth_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			stream_type;
+} __packed;
+
+struct wired_cmd_enable_auth_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
+/*
+ * Data structures for integrated wired HDCP2 Tx in support of
+ * the repeater protocols
+ */
+/*
+ * HECI struct for verifying the downstream repeater's HDCP topology in an
+ * integrated wired HDCP Tx session.
+ */
+struct wired_cmd_verify_repeater_in {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			rx_info[HDCP_2_2_RXINFO_LEN];
+	u8			seq_num_v[HDCP_2_2_SEQ_NUM_LEN];
+	u8			v_prime[HDCP_2_2_V_PRIME_HALF_LEN];
+	u8			receiver_ids[HDCP_2_2_RECEIVER_IDS_MAX_LEN];
+} __packed;
+
+struct wired_cmd_verify_repeater_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+	u8			content_type_supported;
+	u8			v[HDCP_2_2_V_PRIME_HALF_LEN];
+} __packed;
+
+/*
+ * HECI struct in support of stream management in an
+ * integrated wired HDCP Tx session.
+ */
+struct wired_cmd_repeater_auth_stream_req_in {
+	struct hdcp_cmd_header		header;
+	struct hdcp_port_id		port;
+	u8				seq_num_m[HDCP_2_2_SEQ_NUM_LEN];
+	u8				m_prime[HDCP_2_2_MPRIME_LEN];
+	__be16				k;
+	struct hdcp2_streamid_type	streams[];
+} __packed;
+
+struct wired_cmd_repeater_auth_stream_req_out {
+	struct hdcp_cmd_header	header;
+	struct hdcp_port_id	port;
+} __packed;
+
 #endif /* _I915_HDCP_INTERFACE_H_ */
-- 
2.25.1

