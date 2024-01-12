Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432D882BBEE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD27C10EA85;
	Fri, 12 Jan 2024 07:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B1010EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045419; x=1736581419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4jsWUXVpmAORdy6inE0MCgqp7kJScH43sUF3oU0PTdE=;
 b=eFLXhvu232kIO9OiPIRkbmcsBENNadDqJ5YY8JBnyJlc0z6YnxDrDhhu
 16W8fnUFmaUscJ4fI/IfyL42vfK79I2DS3v3vnZZs3/guyzhzZjfIP4lQ
 286eg7Nhg14AIaafW+VSJEyP6DFPTCBiT0FxMz1EnoIkztwx2DnDkRPIj
 xjZbLOudM8LTZt31Pc6vG6RnbG8MaOBlNjuA2wFzE++geUj1bFVhfNphD
 J2beutzy1fWoE7h+YcYukrtm4ETt5Ef91I8QKyTN2AOFev9Mj+Qtr1jw2
 73I9oaNemrpaBX/UBkNVLAdPf5mXTnjmIfY2pvyLc6yx4HafM6lz5UOm+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867040"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5867040"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317593"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915/hdcp: Allocate stream id after HDCP AKE stage
Date: Fri, 12 Jan 2024 13:11:18 +0530
Message-Id: <20240112074120.159797-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Allocate stream id after HDCP AKE stage and not before so that it
can also be done during link integrity check.
Right now for MST scenarios LIC fails after hdcp enablement for this
reason.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 124 ++++++++----------
 2 files changed, 59 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index aa559598f049..d627cedc11a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -541,6 +541,7 @@ struct intel_hdcp {
 	u64 value;
 	struct delayed_work check_work;
 	struct work_struct prop_work;
+	struct drm_modeset_acquire_ctx *acquire_ctx;
 
 	/* HDCP1.4 Encryption status */
 	bool hdcp_encrypted;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b88a4713e6a8..1ba9ebe67a29 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,8 +30,9 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct drm_atomic_state *state,
-			      struct intel_connector *connector)
+static int
+intel_conn_to_vcpi(struct drm_modeset_acquire_ctx *acquire_ctx,
+		   struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
 	struct drm_dp_mst_atomic_payload *payload;
@@ -43,7 +44,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
+	drm_modeset_lock(&mgr->base.lock, acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -68,19 +69,51 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
  * DP MST topology. Though it is not compulsory, security fw should change its
  * policy to mark different content_types for different streams.
  */
-static void
-intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
+static int
+intel_hdcp_required_content_stream(struct intel_hdcp *hdcp,
+				   struct intel_digital_port *dig_port)
 {
+	struct drm_connector_list_iter conn_iter;
+	struct intel_digital_port *conn_dig_port;
+	struct intel_connector *connector;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	bool enforce_type0 = false;
 	int k;
 
 	if (dig_port->hdcp_auth_status)
-		return;
+		return 0;
+
+	data->k = 0;
 
 	if (!dig_port->hdcp_mst_type1_capable)
 		enforce_type0 = true;
 
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
+			intel_conn_to_vcpi(hdcp->acquire_ctx, connector);
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
 	/*
 	 * Apply common protection level across all streams in DP MST Topology.
 	 * Use highest supported content type for all streams in DP MST Topology.
@@ -88,18 +121,23 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	for (k = 0; k < data->k; k++)
 		data->streams[k].stream_type =
 			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
+
+	return 0;
 }
 
-static void intel_hdcp_prepare_streams(struct intel_connector *connector)
+static int intel_hdcp_prepare_streams(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
+		data->k = 1;
+		data->streams[0].stream_id = 0;
 		data->streams[0].stream_type = hdcp->content_type;
+		return 0;
 	} else {
-		intel_hdcp_required_content_stream(dig_port);
+		return intel_hdcp_required_content_stream(hdcp, dig_port);
 	}
 }
 
@@ -1880,7 +1918,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
-			intel_hdcp_prepare_streams(connector);
+			ret = intel_hdcp_prepare_streams(connector);
+			if (ret) {
+				drm_dbg_kms(&i915->drm,
+					    "Prepare stream failed.(%d)\n",
+					    ret);
+				break;
+			}
 
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
@@ -2284,52 +2328,6 @@ int intel_hdcp_init(struct intel_connector *connector,
 	return 0;
 }
 
-static int
-intel_hdcp_set_streams(struct intel_digital_port *dig_port,
-		       struct intel_atomic_state *state)
-{
-	struct drm_connector_list_iter conn_iter;
-	struct intel_digital_port *conn_dig_port;
-	struct intel_connector *connector;
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-
-	if (!intel_encoder_is_mst(&dig_port->base)) {
-		data->k = 1;
-		data->streams[0].stream_id = 0;
-		return 0;
-	}
-
-	data->k = 0;
-
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
-		data->streams[data->k].stream_id =
-			intel_conn_to_vcpi(&state->base, connector);
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
-	return 0;
-}
-
 static int _intel_hdcp_enable(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config,
@@ -2370,22 +2368,16 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		dig_port->hdcp_port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
+	hdcp->acquire_ctx = state->base.acquire_ctx;
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector, false)) {
-		ret = intel_hdcp_set_streams(dig_port, state);
-		if (!ret) {
-			ret = _intel_hdcp2_enable(connector);
-			if (!ret)
-				check_link_interval =
-					DRM_HDCP2_CHECK_PERIOD_MS;
-		} else {
-			drm_dbg_kms(&i915->drm,
-				    "Set content streams failed: (%d)\n",
-				    ret);
-		}
+		ret = _intel_hdcp2_enable(connector);
+		if (!ret)
+			check_link_interval =
+				DRM_HDCP2_CHECK_PERIOD_MS;
 	}
 
 	/*
-- 
2.25.1

