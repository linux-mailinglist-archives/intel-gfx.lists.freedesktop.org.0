Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF4364C595
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C4A10E39A;
	Wed, 14 Dec 2022 09:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB3510E391
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671008954; x=1702544954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3rci4Ax5pd6uJBiEcZuaLYYFHqR7Pjs/egwKxUfntQs=;
 b=fRTwvOUDgzN62kviiKSor54i9EelOnesFhKrMRxvoGANxdyvNUDLFSaH
 /uBnbKbqfiO01tnkF65QMg3Qd0qVQ4xq6kingvbtuLB/0IhfXRUvArf3g
 XzdkfVHYc/vFMFm1Fehso+tE3YhNSKNg/32AoHenNoGDyFcaujbTar0qC
 TjA2SdHvjS6UeiqrVttCny0mfuuWMmzZ/afuafnEgKBlbvll25FMa9Mex
 vBxn4GHL/rGPB5BPS2yhP+QZ/dvsLni1tqJNfJXGj3z6LeQ0KCkx8Gkvz
 fYeAHVRwAGUWf8ike83S3JzfN3Czh8Hj29qNQeXGg8SHcQ0Jt9PZXg74U w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317054710"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317054710"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:09:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681458473"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681458473"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 01:09:11 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 14:37:56 +0530
Message-Id: <20221214090758.3040356-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214090758.3040356-1-suraj.kandpal@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Need to fill wired cmd in structures at a single place as they remain
same for both gsc and mei.

--v3
-remove inline function from header [Jani]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/i915_hdcp_interface.c | 216 +++++++++++++++++++++
 drivers/misc/mei/hdcp/mei_hdcp.c           | 153 ++-------------
 include/drm/i915_hdcp_interface.h          |  39 ++++
 4 files changed, 270 insertions(+), 139 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dfa211451a1d..f64a8bc73c89 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -36,6 +36,7 @@ i915-y += i915_driver.o \
 	  i915_drm_client.o \
 	  i915_config.o \
 	  i915_getparam.o \
+	  i915_hdcp_interface.o\
 	  i915_ioctl.o \
 	  i915_irq.o \
 	  i915_mitigations.o \
diff --git a/drivers/gpu/drm/i915/i915_hdcp_interface.c b/drivers/gpu/drm/i915/i915_hdcp_interface.c
new file mode 100644
index 000000000000..e6b787c2fa50
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hdcp_interface.c
@@ -0,0 +1,216 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2022, Intel Corporation.
+ */
+
+#include <drm/i915_hdcp_interface.h>
+
+void
+i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in *session_init_in,
+			  struct hdcp_port_data *data)
+{
+	session_init_in->header.api_version = HDCP_API_VERSION;
+	session_init_in->header.command_id = WIRED_INITIATE_HDCP2_SESSION;
+	session_init_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	session_init_in->header.buffer_len =
+				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
+
+	session_init_in->port.integrated_port_type = data->port_type;
+	session_init_in->port.physical_port = (u8)data->hdcp_ddi;
+	session_init_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+	session_init_in->protocol = data->protocol;
+}
+EXPORT_SYMBOL(i915_hdcp_fill_session_in);
+
+void
+i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in *verify_rxcert_in,
+			 struct hdcp2_ake_send_cert *rx_cert,
+			 struct hdcp_port_data *data)
+{
+	verify_rxcert_in->header.api_version = HDCP_API_VERSION;
+	verify_rxcert_in->header.command_id = WIRED_VERIFY_RECEIVER_CERT;
+	verify_rxcert_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_rxcert_in->header.buffer_len =
+				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
+
+	verify_rxcert_in->port.integrated_port_type = data->port_type;
+	verify_rxcert_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_rxcert_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	verify_rxcert_in->cert_rx = rx_cert->cert_rx;
+	memcpy(verify_rxcert_in->r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
+	memcpy(verify_rxcert_in->rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_rxcert_in);
+
+void
+i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in *send_hprime_in,
+			 struct hdcp2_ake_send_hprime *rx_hprime,
+			 struct hdcp_port_data *data)
+{
+	send_hprime_in->header.api_version = HDCP_API_VERSION;
+	send_hprime_in->header.command_id = WIRED_AKE_SEND_HPRIME;
+	send_hprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	send_hprime_in->header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
+
+	send_hprime_in->port.integrated_port_type = data->port_type;
+	send_hprime_in->port.physical_port = (u8)data->hdcp_ddi;
+	send_hprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(send_hprime_in->h_prime, rx_hprime->h_prime,
+	       HDCP_2_2_H_PRIME_LEN);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_hprime_in);
+
+void
+i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_in *pairing_info_in,
+			       struct hdcp2_ake_send_pairing_info *pairing_info,
+			       struct hdcp_port_data *data)
+{
+	pairing_info_in->header.api_version = HDCP_API_VERSION;
+	pairing_info_in->header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
+	pairing_info_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	pairing_info_in->header.buffer_len =
+				WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
+
+	pairing_info_in->port.integrated_port_type = data->port_type;
+	pairing_info_in->port.physical_port = (u8)data->hdcp_ddi;
+	pairing_info_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(pairing_info_in->e_kh_km, pairing_info->e_kh_km,
+	       HDCP_2_2_E_KH_KM_LEN);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_pairing_info_in);
+
+void
+i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_in *lc_init_in,
+				 struct hdcp_port_data *data)
+{
+	lc_init_in->header.api_version = HDCP_API_VERSION;
+	lc_init_in->header.command_id = WIRED_INIT_LOCALITY_CHECK;
+	lc_init_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	lc_init_in->header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
+
+	lc_init_in->port.integrated_port_type = data->port_type;
+	lc_init_in->port.physical_port = (u8)data->hdcp_ddi;
+	lc_init_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+}
+EXPORT_SYMBOL(i915_hdcp_fill_locality_check_in);
+
+void
+i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality_in *verify_lprime_in,
+				    struct hdcp2_lc_send_lprime *rx_lprime,
+				    struct hdcp_port_data *data)
+{
+	verify_lprime_in->header.api_version = HDCP_API_VERSION;
+	verify_lprime_in->header.command_id = WIRED_VALIDATE_LOCALITY;
+	verify_lprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_lprime_in->header.buffer_len =
+					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
+
+	verify_lprime_in->port.integrated_port_type = data->port_type;
+	verify_lprime_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_lprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_lprime_in->l_prime, rx_lprime->l_prime,
+	       HDCP_2_2_L_PRIME_LEN);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_validate_locality_in);
+
+void
+i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in *get_skey_in,
+			      struct hdcp_port_data *data)
+{
+	get_skey_in->header.api_version = HDCP_API_VERSION;
+	get_skey_in->header.command_id = WIRED_GET_SESSION_KEY;
+	get_skey_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	get_skey_in->header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
+
+	get_skey_in->port.integrated_port_type = data->port_type;
+	get_skey_in->port.physical_port = (u8)data->hdcp_ddi;
+	get_skey_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+}
+EXPORT_SYMBOL(i915_hdcp_fill_session_key_in);
+
+void
+i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in *verify_repeater_in,
+			   struct hdcp2_rep_send_receiverid_list *rep_topology,
+			   struct hdcp_port_data *data)
+{
+	verify_repeater_in->header.api_version = HDCP_API_VERSION;
+	verify_repeater_in->header.command_id = WIRED_VERIFY_REPEATER;
+	verify_repeater_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_repeater_in->header.buffer_len =
+				WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
+
+	verify_repeater_in->port.integrated_port_type = data->port_type;
+	verify_repeater_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_repeater_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_repeater_in->rx_info, rep_topology->rx_info,
+	       HDCP_2_2_RXINFO_LEN);
+	memcpy(verify_repeater_in->seq_num_v, rep_topology->seq_num_v,
+	       HDCP_2_2_SEQ_NUM_LEN);
+	memcpy(verify_repeater_in->v_prime, rep_topology->v_prime,
+	       HDCP_2_2_V_PRIME_HALF_LEN);
+	memcpy(verify_repeater_in->receiver_ids, rep_topology->receiver_ids,
+	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_repeater_in);
+
+void
+i915_hdcp_fill_auth_stream_req_in(struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
+				  struct hdcp2_rep_stream_ready *stream_ready, ssize_t cmd_size,
+				  struct hdcp_port_data *data)
+{
+	verify_mprime_in->header.api_version = HDCP_API_VERSION;
+	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
+	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
+
+	verify_mprime_in->port.integrated_port_type = data->port_type;
+	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
+	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+
+	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
+	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
+
+	memcpy(verify_mprime_in->streams, data->streams,
+	       array_size(data->k, sizeof(*data->streams)));
+
+	verify_mprime_in->k = cpu_to_be16(data->k);
+}
+EXPORT_SYMBOL(i915_hdcp_fill_auth_stream_req_in);
+
+void
+i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in *enable_auth_in,
+			      struct hdcp_port_data *data)
+{
+	enable_auth_in->header.api_version = HDCP_API_VERSION;
+	enable_auth_in->header.command_id = WIRED_ENABLE_AUTH;
+	enable_auth_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	enable_auth_in->header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
+
+	enable_auth_in->port.integrated_port_type = data->port_type;
+	enable_auth_in->port.physical_port = (u8)data->hdcp_ddi;
+	enable_auth_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+	enable_auth_in->stream_type = data->streams[0].stream_type;
+}
+EXPORT_SYMBOL(i915_hdcp_fill_enable_auth_in);
+
+void
+i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in *session_close_in,
+				struct hdcp_port_data *data)
+{
+	session_close_in->header.api_version = HDCP_API_VERSION;
+	session_close_in->header.command_id = WIRED_CLOSE_SESSION;
+	session_close_in->header.status = FW_HDCP_STATUS_SUCCESS;
+	session_close_in->header.buffer_len =
+				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
+
+	session_close_in->port.integrated_port_type = data->port_type;
+	session_close_in->port.physical_port = (u8)data->hdcp_ddi;
+	session_close_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
+}
+EXPORT_SYMBOL(i915_hdcp_fill_close_session_in);
+
diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
index d4faecbbbe76..2cf42e98dfae 100644
--- a/drivers/misc/mei/hdcp/mei_hdcp.c
+++ b/drivers/misc/mei/hdcp/mei_hdcp.c
@@ -50,17 +50,7 @@ mei_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
 
 	cldev = to_mei_cl_device(dev);
 
-	session_init_in.header.api_version = HDCP_API_VERSION;
-	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
-	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	session_init_in.header.buffer_len =
-				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
-
-	session_init_in.port.integrated_port_type = data->port_type;
-	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
-	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-	session_init_in.protocol = data->protocol;
-
+	i915_hdcp_fill_session_in(&session_init_in, data);
 	byte = mei_cldev_send(cldev, (u8 *)&session_init_in,
 			      sizeof(session_init_in));
 	if (byte < 0) {
@@ -119,21 +109,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
 		return -EINVAL;
 
 	cldev = to_mei_cl_device(dev);
-
-	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
-	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
-	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	verify_rxcert_in.header.buffer_len =
-				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
-
-	verify_rxcert_in.port.integrated_port_type = data->port_type;
-	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
-	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
-	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
-	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
-
+	i915_hdcp_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
 	byte = mei_cldev_send(cldev, (u8 *)&verify_rxcert_in,
 			      sizeof(verify_rxcert_in));
 	if (byte < 0) {
@@ -192,18 +168,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 
 	cldev = to_mei_cl_device(dev);
 
-	send_hprime_in.header.api_version = HDCP_API_VERSION;
-	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
-	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
-
-	send_hprime_in.port.integrated_port_type = data->port_type;
-	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
-	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
-	       HDCP_2_2_H_PRIME_LEN);
-
+	i915_hdcp_fill_hprime_in(&send_hprime_in, rx_hprime, data);
 	byte = mei_cldev_send(cldev, (u8 *)&send_hprime_in,
 			      sizeof(send_hprime_in));
 	if (byte < 0) {
@@ -248,20 +213,8 @@ mei_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 		return -EINVAL;
 
 	cldev = to_mei_cl_device(dev);
-
-	pairing_info_in.header.api_version = HDCP_API_VERSION;
-	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
-	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	pairing_info_in.header.buffer_len =
-					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
-
-	pairing_info_in.port.integrated_port_type = data->port_type;
-	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
-	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
-	       HDCP_2_2_E_KH_KM_LEN);
-
+	i915_hdcp_fill_pairing_info_in(&pairing_info_in, pairing_info,
+				       data);
 	byte = mei_cldev_send(cldev, (u8 *)&pairing_info_in,
 			      sizeof(pairing_info_in));
 	if (byte < 0) {
@@ -309,15 +262,7 @@ mei_hdcp_initiate_locality_check(struct device *dev,
 
 	cldev = to_mei_cl_device(dev);
 
-	lc_init_in.header.api_version = HDCP_API_VERSION;
-	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
-	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
-
-	lc_init_in.port.integrated_port_type = data->port_type;
-	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
-	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
+	i915_hdcp_fill_locality_check_in(&lc_init_in, data);
 	byte = mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in));
 	if (byte < 0) {
 		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
@@ -364,19 +309,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 
 	cldev = to_mei_cl_device(dev);
 
-	verify_lprime_in.header.api_version = HDCP_API_VERSION;
-	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
-	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	verify_lprime_in.header.buffer_len =
-					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
-
-	verify_lprime_in.port.integrated_port_type = data->port_type;
-	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
-	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
-	       HDCP_2_2_L_PRIME_LEN);
-
+	i915_hdcp_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
+					    data);
 	byte = mei_cldev_send(cldev, (u8 *)&verify_lprime_in,
 			      sizeof(verify_lprime_in));
 	if (byte < 0) {
@@ -423,15 +357,7 @@ static int mei_hdcp_get_session_key(struct device *dev,
 
 	cldev = to_mei_cl_device(dev);
 
-	get_skey_in.header.api_version = HDCP_API_VERSION;
-	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
-	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
-
-	get_skey_in.port.integrated_port_type = data->port_type;
-	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
-	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
+	i915_hdcp_fill_session_key_in(&get_skey_in, data);
 	byte = mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_skey_in));
 	if (byte < 0) {
 		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
@@ -487,25 +413,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
 
 	cldev = to_mei_cl_device(dev);
 
-	verify_repeater_in.header.api_version = HDCP_API_VERSION;
-	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
-	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	verify_repeater_in.header.buffer_len =
-					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
-
-	verify_repeater_in.port.integrated_port_type = data->port_type;
-	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
-	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
-	       HDCP_2_2_RXINFO_LEN);
-	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
-	       HDCP_2_2_SEQ_NUM_LEN);
-	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
-	       HDCP_2_2_V_PRIME_HALF_LEN);
-	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
-	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
-
+	i915_hdcp_fill_repeater_in(&verify_repeater_in, rep_topology, data);
 	byte = mei_cldev_send(cldev, (u8 *)&verify_repeater_in,
 			      sizeof(verify_repeater_in));
 	if (byte < 0) {
@@ -566,23 +474,8 @@ static int mei_hdcp_verify_mprime(struct device *dev,
 	if (!verify_mprime_in)
 		return -ENOMEM;
 
-	verify_mprime_in->header.api_version = HDCP_API_VERSION;
-	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
-	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
-	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
-
-	verify_mprime_in->port.integrated_port_type = data->port_type;
-	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
-	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
-
-	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
-	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
-
-	memcpy(verify_mprime_in->streams, data->streams,
-	       array_size(data->k, sizeof(*data->streams)));
-
-	verify_mprime_in->k = cpu_to_be16(data->k);
-
+	i915_hdcp_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
+					  cmd_size, data);
 	byte = mei_cldev_send(cldev, (u8 *)verify_mprime_in, cmd_size);
 	kfree(verify_mprime_in);
 	if (byte < 0) {
@@ -628,16 +521,7 @@ static int mei_hdcp_enable_authentication(struct device *dev,
 
 	cldev = to_mei_cl_device(dev);
 
-	enable_auth_in.header.api_version = HDCP_API_VERSION;
-	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
-	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
-
-	enable_auth_in.port.integrated_port_type = data->port_type;
-	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
-	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-	enable_auth_in.stream_type = data->streams[0].stream_type;
-
+	i915_hdcp_fill_enable_auth_in(&enable_auth_in, data);
 	byte = mei_cldev_send(cldev, (u8 *)&enable_auth_in,
 			      sizeof(enable_auth_in));
 	if (byte < 0) {
@@ -682,16 +566,7 @@ mei_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
 
 	cldev = to_mei_cl_device(dev);
 
-	session_close_in.header.api_version = HDCP_API_VERSION;
-	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
-	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
-	session_close_in.header.buffer_len =
-				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
-
-	session_close_in.port.integrated_port_type = data->port_type;
-	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
-	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
-
+	i915_hdcp_fill_close_session_in(&session_close_in, data);
 	byte = mei_cldev_send(cldev, (u8 *)&session_close_in,
 			      sizeof(session_close_in));
 	if (byte < 0) {
diff --git a/include/drm/i915_hdcp_interface.h b/include/drm/i915_hdcp_interface.h
index a92925cd1eae..9952bf78d4f7 100644
--- a/include/drm/i915_hdcp_interface.h
+++ b/include/drm/i915_hdcp_interface.h
@@ -536,4 +536,43 @@ struct wired_cmd_repeater_auth_stream_req_out {
 	struct hdcp_port_id	port;
 } __packed;
 
+void
+i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in *session_init_in,
+			  struct hdcp_port_data *data);
+void
+i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in *verify_rxcert_in,
+			 struct hdcp2_ake_send_cert *rx_cert,
+			 struct hdcp_port_data *data);
+void
+i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in *send_hprime_in,
+			 struct hdcp2_ake_send_hprime *rx_hprime,
+			 struct hdcp_port_data *data);
+void
+i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info_in *pairing_info_in,
+			       struct hdcp2_ake_send_pairing_info *pairing_info,
+			       struct hdcp_port_data *data);
+void
+i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_check_in *lc_init_in,
+				 struct hdcp_port_data *data);
+void
+i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_locality_in *verify_lprime_in,
+				    struct hdcp2_lc_send_lprime *rx_lprime,
+				    struct hdcp_port_data *data);
+void
+i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in *get_skey_in,
+			      struct hdcp_port_data *data);
+void
+i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in *verify_repeater_in,
+			   struct hdcp2_rep_send_receiverid_list *rep_topology,
+			   struct hdcp_port_data *data);
+void
+i915_hdcp_fill_auth_stream_req_in(struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
+				  struct hdcp2_rep_stream_ready *stream_ready, ssize_t cmd_size,
+				  struct hdcp_port_data *data);
+void
+i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in *enable_auth_in,
+			      struct hdcp_port_data *data);
+void
+i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in *session_close_in,
+				struct hdcp_port_data *data);
 #endif /* _I915_HDCP_INTERFACE_H_ */
-- 
2.25.1

