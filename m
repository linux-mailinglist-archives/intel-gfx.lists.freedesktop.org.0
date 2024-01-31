Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C369B84480D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 20:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0E410FC96;
	Wed, 31 Jan 2024 19:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A4A10FC90
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 19:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706729712; x=1738265712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCI8ne1teGuZMRKCQwE3x6luc3eGcL50lFleLntDkQs=;
 b=arQH0gXbRNPOcDPczNEynhBuCoohwXsuEX/i2WySVj+A7wzoWg4aR2Pr
 7KjiVq4eIw13nAPFD0ICAtqT+lnnrtwq8wtNKMTFjPVPGbbYYs4bqxO9G
 gKit72BWnjZE9nnovngJxbYJA2ztAGSBPDc0PkttFDfsYcvrKtVHobYZN
 SO1YcS8ZVq6U0dsIqS2ZSFQLS/uEJZ1JY/AGlnrCOdtAdqemX/o8AJ1j6
 lROgvbp+pEfr2OvytD4rxESTnEenkKq2sXrBFpahY/orjlCkk9lMTWLaX
 4J3Fz05copUoR+fSo/bubpzGm6pyIoxBHUuaSzLdFfpe1lnAjoxXyoCMH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="467936220"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="467936220"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 11:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822686289"
X-IronPort-AV: E=Sophos;i="6.05,233,1701158400"; d="scan'208";a="822686289"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2024 11:34:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/10] drm/i915/hdcp: Allocate stream id after HDCP AKE stage
Date: Thu,  1 Feb 2024 01:02:40 +0530
Message-Id: <20240131193240.938405-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240131193240.938405-1-suraj.kandpal@intel.com>
References: <20240131193240.938405-1-suraj.kandpal@intel.com>
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
index 7e7a370a3b30..d7b2af07b499 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -545,6 +545,7 @@ struct intel_hdcp {
 	u64 value;
 	struct delayed_work check_work;
 	struct work_struct prop_work;
+	struct drm_modeset_acquire_ctx *acquire_ctx;
 
 	/* HDCP1.4 Encryption status */
 	bool hdcp_encrypted;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2b739249b60c..5c9da7b9756f 100644
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
 
@@ -1910,7 +1948,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
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
@@ -2314,52 +2358,6 @@ int intel_hdcp_init(struct intel_connector *connector,
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
@@ -2400,22 +2398,16 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		dig_port->hdcp_port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
+	hdcp->acquire_ctx = state->base.acquire_ctx;
 	/*
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
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

