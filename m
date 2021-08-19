Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1BF3F2024
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 20:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF0A6E9C6;
	Thu, 19 Aug 2021 18:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911F96E8FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 18:48:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="277645072"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="277645072"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 11:48:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="506197264"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga001.jf.intel.com with ESMTP; 19 Aug 2021 11:48:50 -0700
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: seanpaul@chromium.org, anshuman.gupta@intel.com, ramalingam.c@intel.com,
 rodrigo.vivi@intel.com, Juston Li <juston.li@intel.com>
Date: Thu, 19 Aug 2021 11:48:35 -0700
Message-Id: <20210819184835.1181323-4-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210819184835.1181323-1-juston.li@intel.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915/hdcp: reuse rx_info for mst
 stream type1 capability check
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On some MST docking stations, rx_info can only be read after
RepeaterAuth_Send_ReceiverID_List and the RxStatus READY bit is set
otherwise the read will return -EIO.

This behavior causes the mst stream type1 capability test to fail to
read rx_info and determine if the topology supports type1 and fallback
to type0.

To fix this, check for type1 capability when we receive rx_info within
the AKE flow when we read RepeaterAuth_Send_ReceiverID_List instead
of an explicit read just for type1 capability checking.

This does require moving where we set stream_types to after
hdcp2_authenticate_sink() when we get rx_info but this occurs before we
do hdcp2_propagate_stream_management_info.

Also, legacy HDCP 2.0/2.1 are not type 1 capable either so check for
that as well.

Changes since v5:
 - rename intel_set_stream_types() to intel_hdcp_prepare_streams()
   (Anshuman)

Changes since v4:
 - move topology_type1_capable to intel_digital_port and rename it as
   hdcp_mst_type1_capable (Anshuman)
 - make a helper function intel_set_stream_types() to set stream types
   in hdcp2_authenticate_and_encrypt() (Anshuman)
 - break on failure to set stream types and retry instead of returning
 - remove no longer used declaration for streams_type1_capable()

Changes since v2:
 - Remove no longer used variables in _intel_hdcp2_enable()

Signed-off-by: Juston Li <juston.li@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 -----------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 64 +++++++++++--------
 3 files changed, 38 insertions(+), 71 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6beeeeba1bed..34e90a841280 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -428,10 +428,6 @@ struct intel_hdcp_shim {
 	int (*hdcp_2_2_capable)(struct intel_digital_port *dig_port,
 				bool *capable);
 
-	/* Detects whether a HDCP 1.4 sink connected in MST topology */
-	int (*streams_type1_capable)(struct intel_connector *connector,
-				     bool *capable);
-
 	/* Write HDCP2.2 messages */
 	int (*write_2_2_msg)(struct intel_digital_port *dig_port,
 			     void *buf, size_t size);
@@ -1684,6 +1680,8 @@ struct intel_digital_port {
 	bool hdcp_auth_status;
 	/* HDCP port data need to pass to security f/w */
 	struct hdcp_port_data hdcp_port_data;
+	/* Whether the MST topology supports HDCP Type 1 Content */
+	bool hdcp_mst_type1_capable;
 
 	void (*write_infoframe)(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index fbfb3c4d16bb..540a669e01dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -478,23 +478,6 @@ int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
 	return size;
 }
 
-static int
-get_rxinfo_hdcp_1_dev_downstream(struct intel_digital_port *dig_port, bool *hdcp_1_x)
-{
-	u8 rx_info[HDCP_2_2_RXINFO_LEN];
-	int ret;
-
-	ret = drm_dp_dpcd_read(&dig_port->dp.aux,
-			       DP_HDCP_2_2_REG_RXINFO_OFFSET,
-			       (void *)rx_info, HDCP_2_2_RXINFO_LEN);
-
-	if (ret != HDCP_2_2_RXINFO_LEN)
-		return ret >= 0 ? -EIO : ret;
-
-	*hdcp_1_x = HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) ? true : false;
-	return 0;
-}
-
 static
 ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, u32 *dev_cnt, u8 *byte)
 {
@@ -665,27 +648,6 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
 	return 0;
 }
 
-static
-int intel_dp_mst_streams_type1_capable(struct intel_connector *connector,
-				       bool *capable)
-{
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	int ret;
-	bool hdcp_1_x;
-
-	ret = get_rxinfo_hdcp_1_dev_downstream(dig_port, &hdcp_1_x);
-	if (ret) {
-		drm_dbg_kms(&i915->drm,
-			    "[%s:%d] failed to read RxInfo ret=%d\n",
-			    connector->base.name, connector->base.base.id, ret);
-		return ret;
-	}
-
-	*capable = !hdcp_1_x;
-	return 0;
-}
-
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
@@ -834,7 +796,6 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
 	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
 	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
-	.streams_type1_capable = intel_dp_mst_streams_type1_capable,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ebc2e32aec0b..9b9fd9d13043 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -33,21 +33,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 	return connector->port	? connector->port->vcpi.vcpi : 0;
 }
 
-static bool
-intel_streams_type1_capable(struct intel_connector *connector)
-{
-	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
-	bool capable = false;
-
-	if (!shim)
-		return capable;
-
-	if (shim->streams_type1_capable)
-		shim->streams_type1_capable(connector, &capable);
-
-	return capable;
-}
-
 /*
  * intel_hdcp_required_content_stream selects the most highest common possible HDCP
  * content_type for all streams in DP MST topology because security f/w doesn't
@@ -86,7 +71,7 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (conn_dig_port != dig_port)
 			continue;
 
-		if (!enforce_type0 && !intel_streams_type1_capable(connector))
+		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
 			enforce_type0 = true;
 
 		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
@@ -112,6 +97,25 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	return 0;
 }
 
+static int intel_hdcp_prepare_streams(struct intel_connector *connector)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	int ret;
+
+	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
+		data->k = 1;
+		data->streams[0].stream_type = hdcp->content_type;
+	} else {
+		ret = intel_hdcp_required_content_stream(dig_port);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static
 bool intel_hdcp_is_ksv_valid(u8 *ksv)
 {
@@ -1632,6 +1636,14 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		return -EINVAL;
 	}
 
+	/*
+	 * MST topology is not Type 1 capable if it contains a downstream
+	 * device that is only HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.
+	 */
+	dig_port->hdcp_mst_type1_capable =
+		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
+		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
+
 	/* Converting and Storing the seq_num_v to local variable as DWORD */
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
@@ -1876,6 +1888,14 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
+			ret = intel_hdcp_prepare_streams(connector);
+			if (ret) {
+				drm_dbg_kms(&i915->drm,
+					    "Prepare streams failed.(%d)\n",
+					    ret);
+				break;
+			}
+
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
 				drm_dbg_kms(&i915->drm,
@@ -1921,9 +1941,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 
 static int _intel_hdcp2_enable(struct intel_connector *connector)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -1931,16 +1949,6 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		    connector->base.name, connector->base.base.id,
 		    hdcp->content_type);
 
-	/* Stream which requires encryption */
-	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
-		data->k = 1;
-		data->streams[0].stream_type = hdcp->content_type;
-	} else {
-		ret = intel_hdcp_required_content_stream(dig_port);
-		if (ret)
-			return ret;
-	}
-
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
-- 
2.31.1

