Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019336F638E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 05:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D177E10E061;
	Thu,  4 May 2023 03:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4436910E061
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 03:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683171530; x=1714707530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vv4nojO8uAsImZgfCGzz3xzY/RgJg7w8Zhywm/N0Th8=;
 b=l109+T2EtINO4Yp5cxDcahxfgX9QdIzRWogRc+/KCHDIvF/24TWKrHxm
 wZSvzytCZsSVOnDBe0+jCcEvgQ/KRAQfxbZlPdrOQbtJyWgHXz582zSgh
 faBY/Kj65/cfuqIGJEQualbFdmS/ldgeeXmWbSRdGGPC7hGoH8eJg70gw
 Sp962X55Tzsxh3Lajh9fIvhaQhpcYrYGjFfv+ciAQ7lE7Ki38ghB/APqG
 8vjQp5WKEnP1e/NlvrY+yoabNr0/8pe4Wk12PBmZOfW3nwtezl7V7r9E8
 KukAzgif1lY1KW20H1VdG8vqdjqX0JbQX9JXBBO1INj+FH+XqY4zyFSE/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="350912423"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="350912423"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 20:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="699686290"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="699686290"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 03 May 2023 20:38:47 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 09:07:18 +0530
Message-Id: <20230504033718.581317-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: add intel_atomic_state argument
 to hdcp_enable function
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
drm_modeset_lock required are being taken from core this raises
an issue when we try to loop over connector and assign vcpi id to
our streams as we did not have atomic state to derive acquire_ctx
from hence we fill in stream info if dpmst encoder is found before
enabling hdcp.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 50 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hdcp.h   |  3 +-
 4 files changed, 49 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 29e4bfab4635..182b8815b20d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3264,9 +3264,10 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	/* Enable hdcp if it's desired */
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(to_intel_connector(conn_state->connector),
+		intel_hdcp_enable(state, to_intel_connector(conn_state->connector),
 				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
+
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2c49d9ab86a2..c92b00ceaae0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -800,7 +800,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	/* Enable hdcp if it's desired */
 	if (conn_state->content_protection ==
 	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
-		intel_hdcp_enable(to_intel_connector(conn_state->connector),
+		intel_hdcp_enable(state, to_intel_connector(conn_state->connector),
 				  pipe_config,
 				  (u8)conn_state->hdcp_content_type);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index e1dc3d96e708..c8cdf25914f7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -30,7 +30,8 @@
 #define KEY_LOAD_TRIES	5
 #define HDCP2_LC_RETRY_CNT			3
 
-static int intel_conn_to_vcpi(struct intel_connector *connector)
+static int intel_conn_to_vcpi(struct intel_connector *connector,
+			      struct drm_atomic_state *state)
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
 
@@ -99,7 +99,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
 			enforce_type0 = true;
 
-		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
 		data->k++;
 
 		/* if there is only one active stream */
@@ -122,6 +121,41 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	return 0;
 }
 
+static int
+intel_hdcp_get_content_stream_id(struct intel_digital_port *dig_port,
+				 struct intel_atomic_state *state)
+{
+	struct drm_connector_list_iter conn_iter;
+	struct intel_digital_port *conn_dig_port;
+	struct intel_connector *connector;
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
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
+		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector, &state->base);
+		data->k++;
+
+		/* if there is only one active stream */
+		if (dig_port->dp.active_mst_links <= 1)
+			break;
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return 0;
+}
 static int intel_hdcp_prepare_streams(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2333,7 +2367,8 @@ int intel_hdcp_init(struct intel_connector *connector,
 	return 0;
 }
 
-int intel_hdcp_enable(struct intel_connector *connector,
+int intel_hdcp_enable(struct intel_atomic_state *state,
+		      struct intel_connector *connector,
 		      const struct intel_crtc_state *pipe_config, u8 content_type)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -2374,6 +2409,9 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
 	if (intel_hdcp2_capable(connector)) {
+		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST))
+			intel_hdcp_get_content_stream_id(dig_port, state);
+
 		ret = _intel_hdcp2_enable(connector);
 		if (!ret)
 			check_link_interval = DRM_HDCP2_CHECK_PERIOD_MS;
@@ -2486,7 +2524,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	}
 
 	if (desired_and_not_enabled || content_protection_type_changed)
-		intel_hdcp_enable(connector,
+		intel_hdcp_enable(state, connector,
 				  crtc_state,
 				  (u8)conn_state->hdcp_content_type);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 8f53b0c7fe5c..a6f4bf93f9bf 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -28,7 +28,8 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 int intel_hdcp_init(struct intel_connector *connector,
 		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *hdcp_shim);
-int intel_hdcp_enable(struct intel_connector *connector,
+int intel_hdcp_enable(struct intel_atomic_state *state,
+		      struct intel_connector *connector,
 		      const struct intel_crtc_state *pipe_config, u8 content_type);
 int intel_hdcp_disable(struct intel_connector *connector);
 void intel_hdcp_update_pipe(struct intel_atomic_state *state,
-- 
2.25.1

