Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD753E85CD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 23:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C660189E1B;
	Tue, 10 Aug 2021 21:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C68F89E06;
 Tue, 10 Aug 2021 21:59:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="211894682"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="211894682"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 14:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="638953841"
Received: from jhli-desk1.jf.intel.com ([10.54.74.156])
 by orsmga005.jf.intel.com with ESMTP; 10 Aug 2021 14:59:25 -0700
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: seanpaul@chromium.org, anshuman.gupta@intel.com, ramalingam.c@intel.com,
 rodrigo.vivi@intel.com, Juston Li <juston.li@intel.com>
Date: Tue, 10 Aug 2021 14:58:45 -0700
Message-Id: <20210810215845.136304-4-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810215845.136304-1-juston.li@intel.com>
References: <20210810215845.136304-1-juston.li@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
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

From: Juston Li <juston.li@intel.com>
Date: Mon, 9 Aug 2021 12:55:06 -0700
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: reuse rx_info for mst stream
 type1 capability check

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

Signed-off-by: Juston Li <juston.li@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 39 ---------------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 47 +++++++++----------
 3 files changed, 23 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dbdfe54d0340..c8b687ff0374 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -516,6 +516,8 @@ struct intel_hdcp {
 	enum transcoder cpu_transcoder;
 	/* Only used for DP MST stream encryption */
 	enum transcoder stream_transcoder;
+
+	bool topology_type1_capable;
 };
 
 struct intel_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 526fd58b9b51..2d39af63ec9b 100644
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
@@ -664,27 +647,6 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *dig_port,
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
@@ -833,7 +795,6 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
 	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
 	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
-	.streams_type1_capable = intel_dp_mst_streams_type1_capable,
 	.protocol = HDCP_PROTOCOL_DP,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ebc2e32aec0b..fa6a60faa6a7 100644
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
+		if (!enforce_type0 && !connector->hdcp.topology_type1_capable)
 			enforce_type0 = true;
 
 		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
@@ -1632,6 +1617,14 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		return -EINVAL;
 	}
 
+	/*
+	 * A topology is not Type 1 capable if it contains a downstream device
+	 * that is HDCP 1.x or Legacy HDCP 2.0/2.1 compliant.
+	 */
+	hdcp->topology_type1_capable =
+		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
+		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
+
 	/* Converting and Storing the seq_num_v to local variable as DWORD */
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
@@ -1871,11 +1864,23 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret = 0, i, tries = 3;
 
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
+			/* Stream which requires encryption */
+			if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
+				data->k = 1;
+				data->streams[0].stream_type = hdcp->content_type;
+			} else {
+				ret = intel_hdcp_required_content_stream(dig_port);
+				if (ret)
+					return ret;
+			}
+
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
 				drm_dbg_kms(&i915->drm,
@@ -1931,16 +1936,6 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
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

