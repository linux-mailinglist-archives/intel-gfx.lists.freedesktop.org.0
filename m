Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5A778A5CB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574F810E217;
	Mon, 28 Aug 2023 06:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F5310E216
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204535; x=1724740535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YLZJZGRsRZMiBrpQg4PK+lFkxr81/8ny6AGnNCa7F1I=;
 b=C8Lb2WicIbqBdGNCC5pUpaeMom15Hmb6xSJTjbf+dDDMHiTzfCfSVcrk
 y437OGAu1rE8p1kuASUHSPlboZjqzziGROsRtxJ7TAozo8hVQEG+cK2AX
 X0LFO0UxlzUPbHXnN9KE/gBsSaXs/HX2C6ZBotsf/8JwXKSTfy8ebSsSN
 Vp28dXDqqXtFCXHfS8VzQJGdGlK79MPXola/o8VViM2zp4IdDLe8+D+NK
 WkYLeBSpR6A21sF7iK51xtm/DswW1Zqo3oqkuo2HpBTBBxrwBWfbgKFRr
 G44sOEY/WJjSI6znA/3vXpqGq9HPaJneaQHVbT0RtVrON0ildx11DneGy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="461395925"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="461395925"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="911930495"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="911930495"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2023 23:35:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:03:58 +0530
Message-Id: <20230828063401.600414-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230828063401.600414-1-suraj.kandpal@intel.com>
References: <20230828063401.600414-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/hdcp: Use intel_connector
 argument in intel_hdcp_shim
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
Cc: uma.shakar@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update intel_hdcp_shim funcs specifically read_2_2_message,
write_2_2_message and config_stream_type to use intel_connector
argument instead of intel_digital_port as this will help in getting
correct aux later for dp mst scenarios also already hdcp funcs
derive digital_port from connector and then many funcs again get back
the connector from dig_port which doesn't seem right.
Connector specific hdcp functions can derive dig_port on need basis.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 ++--
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 10 ++++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 ++--
 4 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..c62f4ec315e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -504,11 +504,11 @@ struct intel_hdcp_shim {
 				bool *capable);
 
 	/* Write HDCP2.2 messages */
-	int (*write_2_2_msg)(struct intel_digital_port *dig_port,
+	int (*write_2_2_msg)(struct intel_connector *connector,
 			     void *buf, size_t size);
 
 	/* Read HDCP2.2 messages */
-	int (*read_2_2_msg)(struct intel_digital_port *dig_port,
+	int (*read_2_2_msg)(struct intel_connector *connector,
 			    u8 msg_id, void *buf, size_t size);
 
 	/*
@@ -516,7 +516,7 @@ struct intel_hdcp_shim {
 	 * type to Receivers. In DP HDCP2.2 Stream type is one of the input to
 	 * the HDCP2.2 Cipher for En/De-Cryption. Not applicable for HDMI.
 	 */
-	int (*config_stream_type)(struct intel_digital_port *dig_port,
+	int (*config_stream_type)(struct intel_connector *connector,
 				  bool is_repeater, u8 type);
 
 	/* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport Link */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index e0c177161407..6cd42363837a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -437,9 +437,10 @@ static const struct hdcp2_dp_msg_data *get_hdcp2_dp_msg_data(u8 msg_id)
 }
 
 static
-int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
 			     void *buf, size_t size)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_write, len;
@@ -494,9 +495,10 @@ ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *d
 }
 
 static
-int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 			    u8 msg_id, void *buf, size_t size)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
@@ -574,7 +576,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_config_stream_type(struct intel_connector *connector,
 				      bool is_repeater, u8 content_type)
 {
 	int ret;
@@ -593,7 +595,7 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
 	stream_type_msg.msg_id = HDCP_2_2_ERRATA_DP_STREAM_TYPE;
 	stream_type_msg.stream_type = content_type;
 
-	ret =  intel_dp_hdcp2_write_msg(dig_port, &stream_type_msg,
+	ret =  intel_dp_hdcp2_write_msg(connector, &stream_type_msg,
 					sizeof(stream_type_msg));
 
 	return ret < 0 ? ret : 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index a42549fa9691..cb45f21f71eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1415,7 +1415,6 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 /* Authentication flow starts from here */
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
@@ -1437,12 +1436,12 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(dig_port, &msgs.ake_init,
+	ret = shim->write_2_2_msg(connector, &msgs.ake_init,
 				  sizeof(msgs.ake_init));
 	if (ret < 0)
 		return ret;
 
-	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_CERT,
+	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
 				 &msgs.send_cert, sizeof(msgs.send_cert));
 	if (ret < 0)
 		return ret;
@@ -1471,11 +1470,11 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = shim->write_2_2_msg(dig_port, &msgs.no_stored_km, size);
+	ret = shim->write_2_2_msg(connector, &msgs.no_stored_km, size);
 	if (ret < 0)
 		return ret;
 
-	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_HPRIME,
+	ret = shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_HPRIME,
 				 &msgs.send_hprime, sizeof(msgs.send_hprime));
 	if (ret < 0)
 		return ret;
@@ -1486,7 +1485,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 
 	if (!hdcp->is_paired) {
 		/* Pairing is required */
-		ret = shim->read_2_2_msg(dig_port,
+		ret = shim->read_2_2_msg(connector,
 					 HDCP_2_2_AKE_SEND_PAIRING_INFO,
 					 &msgs.pairing_info,
 					 sizeof(msgs.pairing_info));
@@ -1504,7 +1503,6 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 
 static int hdcp2_locality_check(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_lc_init lc_init;
@@ -1518,12 +1516,12 @@ static int hdcp2_locality_check(struct intel_connector *connector)
 		if (ret < 0)
 			continue;
 
-		ret = shim->write_2_2_msg(dig_port, &msgs.lc_init,
+		ret = shim->write_2_2_msg(connector, &msgs.lc_init,
 				      sizeof(msgs.lc_init));
 		if (ret < 0)
 			continue;
 
-		ret = shim->read_2_2_msg(dig_port,
+		ret = shim->read_2_2_msg(connector,
 					 HDCP_2_2_LC_SEND_LPRIME,
 					 &msgs.send_lprime,
 					 sizeof(msgs.send_lprime));
@@ -1540,7 +1538,6 @@ static int hdcp2_locality_check(struct intel_connector *connector)
 
 static int hdcp2_session_key_exchange(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct hdcp2_ske_send_eks send_eks;
 	int ret;
@@ -1549,7 +1546,7 @@ static int hdcp2_session_key_exchange(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	ret = hdcp->shim->write_2_2_msg(dig_port, &send_eks,
+	ret = hdcp->shim->write_2_2_msg(connector, &send_eks,
 					sizeof(send_eks));
 	if (ret < 0)
 		return ret;
@@ -1587,12 +1584,12 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	streams_size_delta = (HDCP_2_2_MAX_CONTENT_STREAMS_CNT - data->k) *
 				sizeof(struct hdcp2_streamid_type);
 	/* Send it to Repeater */
-	ret = shim->write_2_2_msg(dig_port, &msgs.stream_manage,
+	ret = shim->write_2_2_msg(connector, &msgs.stream_manage,
 				  sizeof(msgs.stream_manage) - streams_size_delta);
 	if (ret < 0)
 		goto out;
 
-	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_REP_STREAM_READY,
+	ret = shim->read_2_2_msg(connector, HDCP_2_2_REP_STREAM_READY,
 				 &msgs.stream_ready, sizeof(msgs.stream_ready));
 	if (ret < 0)
 		goto out;
@@ -1622,7 +1619,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	u8 *rx_info;
 	int ret;
 
-	ret = shim->read_2_2_msg(dig_port, HDCP_2_2_REP_SEND_RECVID_LIST,
+	ret = shim->read_2_2_msg(connector, HDCP_2_2_REP_SEND_RECVID_LIST,
 				 &msgs.recvid_list, sizeof(msgs.recvid_list));
 	if (ret < 0)
 		return ret;
@@ -1675,7 +1672,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		return ret;
 
 	hdcp->seq_num_v = seq_num_v;
-	ret = shim->write_2_2_msg(dig_port, &msgs.rep_ack,
+	ret = shim->write_2_2_msg(connector, &msgs.rep_ack,
 				  sizeof(msgs.rep_ack));
 	if (ret < 0)
 		return ret;
@@ -1685,7 +1682,6 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
@@ -1711,7 +1707,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	}
 
 	if (shim->config_stream_type) {
-		ret = shim->config_stream_type(dig_port,
+		ret = shim->config_stream_type(connector,
 					       hdcp->is_repeater,
 					       hdcp->content_type);
 		if (ret < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9442bf43550e..116556d6352a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1665,9 +1665,10 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *dig_port,
+int intel_hdmi_hdcp2_write_msg(struct intel_connector *connector,
 			       void *buf, size_t size)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	unsigned int offset;
 
 	offset = HDCP_2_2_HDMI_REG_WR_MSG_OFFSET;
@@ -1675,9 +1676,10 @@ int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,
+int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,
 			      u8 msg_id, void *buf, size_t size)
 {
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
-- 
2.25.1

