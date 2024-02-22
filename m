Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC885F215
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 08:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2313C10E895;
	Thu, 22 Feb 2024 07:46:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZ0SzXza";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D5910E899
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708587985; x=1740123985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sgJinMku3Hb2BIZ4QsffxHnL0TLpf/nZUEtvQF4Iqb8=;
 b=EZ0SzXzailkGJlzK7KLw7Tj4Hpf8mnOR1sws7ZZ8JGP8ObgkHTDD/ZHR
 zi/7iFN6hVlQdrbOwKaUaXPpMQk0HW84RGGUPLthsd8Y0ZgyCfh2wC1Sh
 322r0aj1Nn0wZa2Jl3XoQGtg1VKGJame7cE1RV2XjbJK5RBm2UVkk55aP
 fRLliQTXN0U4k9vE0MYx0nYWl6dAxyJRcQgrclnGu26JNzID0nZMfKVDX
 +tQ08/L8KDjDEcE4I6qlCFaz7ipwky6DhqpGdZtJUPHdmqqexxbjfGKHB
 0Fz97L0VPi+PWUglQSsX23snsV33R+kYv1PbfqihhOSWhc0EUPCKnuUcY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2906066"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2906066"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 23:46:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5354180"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Feb 2024 23:46:15 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 12/13] drm/i915/hdcp: Allocate stream id after HDCP AKE stage
Date: Thu, 22 Feb 2024 13:13:53 +0530
Message-ID: <20240222074353.1568904-14-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222074353.1568904-2-suraj.kandpal@intel.com>
References: <20240222074353.1568904-2-suraj.kandpal@intel.com>
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

--v2
-no need for else block in prepare_streams function [Ankit]

--v3
-remove intel_hdcp argument from required_content_stream function
[Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 137 ++++++++++------------
 1 file changed, 65 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ad05ab899706..ea9b26b0f06b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,7 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct drm_atomic_state *state,
+static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 			      struct intel_connector *connector)
 {
 	struct drm_dp_mst_topology_mgr *mgr;
@@ -43,7 +43,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
+	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -68,19 +68,51 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
  * DP MST topology. Though it is not compulsory, security fw should change its
  * policy to mark different content_types for different streams.
  */
-static void
-intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
+static int
+intel_hdcp_required_content_stream(struct intel_atomic_state *state,
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
+			intel_conn_to_vcpi(state, connector);
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
@@ -88,19 +120,25 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	for (k = 0; k < data->k; k++)
 		data->streams[k].stream_type =
 			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
+
+	return 0;
 }
 
-static void intel_hdcp_prepare_streams(struct intel_connector *connector)
+static int intel_hdcp_prepare_streams(struct intel_atomic_state *state,
+				      struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
-	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
-		data->streams[0].stream_type = hdcp->content_type;
-	} else {
-		intel_hdcp_required_content_stream(dig_port);
-	}
+	if (intel_encoder_is_mst(intel_attached_encoder(connector)))
+		return intel_hdcp_required_content_stream(state, dig_port);
+
+	data->k = 1;
+	data->streams[0].stream_id = 0;
+	data->streams[0].stream_type = hdcp->content_type;
+
+	return 0;
 }
 
 static
@@ -1895,7 +1933,8 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	return ret;
 }
 
-static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
+static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
+					  struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -1904,7 +1943,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
 		ret = hdcp2_authenticate_sink(connector);
 		if (!ret) {
-			intel_hdcp_prepare_streams(connector);
+			ret = intel_hdcp_prepare_streams(state, connector);
+			if (ret) {
+				drm_dbg_kms(&i915->drm,
+					    "Prepare stream failed.(%d)\n",
+					    ret);
+				break;
+			}
 
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
@@ -1949,7 +1994,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 	return ret;
 }
 
-static int _intel_hdcp2_enable(struct intel_connector *connector)
+static int _intel_hdcp2_enable(struct intel_atomic_state *state,
+			       struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
@@ -1959,7 +2005,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
-	ret = hdcp2_authenticate_and_encrypt(connector);
+	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
 			    hdcp->content_type, ret);
@@ -2287,52 +2333,6 @@ int intel_hdcp_init(struct intel_connector *connector,
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
@@ -2378,17 +2378,10 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_get_capability(connector)) {
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
+		ret = _intel_hdcp2_enable(state, connector);
+		if (!ret)
+			check_link_interval =
+				DRM_HDCP2_CHECK_PERIOD_MS;
 	}
 
 	/*
-- 
2.43.2

