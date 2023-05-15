Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0066702A95
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F020310E1AB;
	Mon, 15 May 2023 10:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4028810E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684146848; x=1715682848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8I1LKcu3Ke82fBjxooORYp/oSP5rhPY1uvDtxPgvQw=;
 b=Y/U2x5HfKuaL7OsDI8HhwR+Pt0nLyoMhb6FXjH4yP9EVeCy8hTl1nBRt
 CkJRrMzxW0z9Jf3NxuuB5LrbBH5vkvli+LGkymELya7QlQ2il/h26SKiu
 S6Rx56G90PhGiC8zfUPRu1LL02tmBOTofvjT8o43gQ2dS91cM7gsx+gaK
 XqmtNduzP34CIk5c/t5gAInI3lSpfsmKB4S2mVPf4l0BvAJWZEnue1mdr
 bt7ocsihEz0FBDdhE3jMJYQLTwoAtlVnJHmMmepTUT+CY6XGuFd4UgKPr
 hZLvFX35Adw8XBt5xsha2Uwik68+EGhrnbeGAcoJdSVG3GjZdpcr0RWkR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="414563008"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414563008"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845209499"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845209499"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 03:34:03 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:02:24 +0530
Message-Id: <20230515103225.688830-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515103225.688830-1-suraj.kandpal@intel.com>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/hdcp: Fix modeset locking issue
 in hdcp mst
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

Since topology state is being added to drm_atomic_state now all
drm_modeset_lock required are being taken from core. This raises
an issue when we try to loop over connector and assign vcpi id to
our streams as we did not have atomic state to derive acquire_ctx
from. We fill in stream info if dpmst encoder is found before
enabling hdcp. intel_hdcp_required_stream will be broken which
will only set the content type.

--v2
-move prepare streams to beginning of intel_hdcp_enable to avoid
checking of mst encoder twice [Ankit]

--v3
-break intel_required_content_stream to two part and set the stream_id
at the beginning [Ankit]

--v4
-change return types for intel_hdcp_prepare_stream and
intel_hdcp_required content_stream [Ankit]
-rename intel_hdcp_set_content_stream to
intel_hdcp_set_stream [Ankit]
-place intel_hdcp_set_streams above caller [Ankit]

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 116 ++++++++++++----------
 1 file changed, 62 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f2d258a72c59..6c3cd3b7db69 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,8 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct intel_connector *connector)
+static int intel_conn_to_vcpi(struct drm_atomic_state *state,
+			      struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
@@ -42,7 +43,7 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, NULL);
+	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -54,7 +55,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		goto out;
 	}
 out:
-	drm_modeset_unlock(&mgr->base.lock);
 	return vcpi;
 }
 
@@ -68,49 +68,19 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
  * DP MST topology. Though it is not compulsory, security fw should change its
  * policy to mark different content_types for different streams.
  */
-static int
+static void
 intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 {
-	struct drm_connector_list_iter conn_iter;
-	struct intel_digital_port *conn_dig_port;
-	struct intel_connector *connector;
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	bool enforce_type0 = false;
 	int k;
 
-	data->k = 0;
-
 	if (dig_port->hdcp_auth_status)
-		return 0;
+		return;
 
 	if (!dig_port->hdcp_mst_type1_capable)
 		enforce_type0 = true;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (connector->base.status == connector_status_disconnected)
-			continue;
-
-		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
-			continue;
-
-		conn_dig_port = intel_attached_dig_port(connector);
-		if (conn_dig_port != dig_port)
-			continue;
-
-		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
-		data->k++;
-
-		/* if there is only one active stream */
-		if (dig_port->dp.active_mst_links <= 1)
-			break;
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
-		return -EINVAL;
-
 	/*
 	 * Apply common protection level across all streams in DP MST Topology.
 	 * Use highest supported content type for all streams in DP MST Topology.
@@ -118,27 +88,20 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	for (k = 0; k < data->k; k++)
 		data->streams[k].stream_type =
 			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
-
-	return 0;
 }
 
-static int intel_hdcp_prepare_streams(struct intel_connector *connector)
+static void intel_hdcp_prepare_streams(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	int ret;
 
 	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
 		data->k = 1;
 		data->streams[0].stream_type = hdcp->content_type;
 	} else {
-		ret = intel_hdcp_required_content_stream(dig_port);
-		if (ret)
-			return ret;
+		intel_hdcp_required_content_stream(dig_port);
 	}
-
-	return 0;
 }
 
 static
@@ -1917,13 +1880,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
-			ret = intel_hdcp_prepare_streams(connector);
-			if (ret) {
-				drm_dbg_kms(&i915->drm,
-					    "Prepare streams failed.(%d)\n",
-					    ret);
-				break;
-			}
+			intel_hdcp_prepare_streams(connector);
 
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
@@ -2330,6 +2287,49 @@ int intel_hdcp_init(struct intel_connector *connector,
 	return 0;
 }
 
+static int
+intel_hdcp_set_streams(struct intel_digital_port *dig_port,
+		       struct intel_atomic_state *state)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct intel_digital_port *conn_dig_port;
+	struct intel_connector *connector;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
+
+	if (!intel_encoder_is_mst(&dig_port->base))
+		return 0;
+
+	data->k = 0;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		if (connector->base.status == connector_status_disconnected)
+			continue;
+
+		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
+			continue;
+
+		conn_dig_port = intel_attached_dig_port(connector);
+		if (conn_dig_port != dig_port)
+			continue;
+
+		data->streams[data->k].stream_id =
+			intel_conn_to_vcpi(&state->base, connector);
+		data->k++;
+
+		/* if there is only one active stream */
+		if (dig_port->dp.active_mst_links <= 1)
+			break;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
+		return -EINVAL;
+
+	return 0;
+}
+
 int intel_hdcp_enable(struct intel_atomic_state *state,
 		      struct intel_encoder *encoder,
 		      const struct intel_crtc_state *pipe_config,
@@ -2375,9 +2375,17 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
-		ret = _intel_hdcp2_enable(connector);
-		if (!ret)
-			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
+		ret = intel_hdcp_set_streams(dig_port, state);
+		if (!ret) {
+			ret = _intel_hdcp2_enable(connector);
+			if (!ret)
+				check_link_interval =
+					DRM_HDCP2_CHECK_PERIOD_MS;
+		} else {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Set content streams failed: (%d)\n",
+				    ret);
+		}
 	}
 
 	/*
-- 
2.25.1

