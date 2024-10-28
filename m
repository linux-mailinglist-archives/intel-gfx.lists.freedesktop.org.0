Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A089B3B14
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A6310E566;
	Mon, 28 Oct 2024 20:08:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FpNqeerc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E3110E566;
 Mon, 28 Oct 2024 20:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146082; x=1761682082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=veOY2f2pHcaI3AjkpbIja3dgE/PStYy0W+E+u8tAVtA=;
 b=FpNqeercpJPcKEJ7pKuBU+tobm0vqJv0lO4NasUtqYVIlfZSXDL3TSzp
 o+WQVUzcn8zOLcHkXWX6JTOAC8o4D9o7rhi4w4l9yXNcsqWaRrIdZ1bCZ
 lzYrG0gfR8I4oqFcshtcFFom8HezGmKqrmG7LDtlukP9EpHNzrjPa7dmg
 93j1SlQDeM4MBil+F+V6TgYPYPJFllJG287SqyMocmnBfRBY0eprt+yM1
 r+d0SljsltPVHZLuMtL6eImvStbQCki1ar/ygdQN2JA0269kfm3VbhvBZ
 r9A04bxrRW1qE65QsSTMZT+VrGgLhpvGH3XHAy+3c9yIFOMoPpTPtQoCn g==;
X-CSE-ConnectionGUID: MRLke188QHS6DaCt9LMB8A==
X-CSE-MsgGUID: /JLAyV8wTpq8TuuKnxrH4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33681184"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33681184"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:02 -0700
X-CSE-ConnectionGUID: amrOLcy0QaOzDSdZnkL2/A==
X-CSE-MsgGUID: 3pyujZ1ETKCtpqN20FO+XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82055141"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 05/12] drm/i915/hdcp: further conversion to struct
 intel_display
Date: Mon, 28 Oct 2024 22:07:23 +0200
Message-Id: <9680cc9e5ed7798a736fa73ad9ea0eb9c88e64bb.1730146000.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
References: <cover.1730146000.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There are some unconverted stragglers left in the HDCP API still using
struct drm_i915_private. Convert to struct intel_display.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  7 +++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  5 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     | 10 +++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  4 ++-
 7 files changed, 30 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ae5470078173..3b37a8a69201 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -485,7 +485,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	return 0;
 
 err_hdcp:
-	intel_hdcp_component_fini(i915);
+	intel_hdcp_component_fini(display);
 err_mode_config:
 	intel_mode_config_cleanup(i915);
 
@@ -495,6 +495,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 /* part #3: call after gem init */
 int intel_display_driver_probe(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int ret;
 
 	if (!HAS_DISPLAY(i915))
@@ -505,7 +506,7 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
 	 * the BIOS fb takeover and whatever else magic ggtt reservations
 	 * happen during gem/ggtt init.
 	 */
-	intel_hdcp_component_init(i915);
+	intel_hdcp_component_init(display);
 
 	/*
 	 * Force all active planes to recompute their states. So that on
@@ -600,7 +601,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 	/* flush any delayed tasks or pending work */
 	flush_workqueue(i915->unordered_wq);
 
-	intel_hdcp_component_fini(i915);
+	intel_hdcp_component_fini(display);
 
 	intel_mode_config_cleanup(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e29619ba040..2c8db21e8612 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6416,6 +6416,7 @@ bool
 intel_dp_init_connector(struct intel_digital_port *dig_port,
 			struct intel_connector *intel_connector)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_encoder *intel_encoder = &dig_port->base;
@@ -6505,7 +6506,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_dp_add_properties(intel_dp, connector);
 
-	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
+	if (is_hdcp_supported(display, port) && !intel_dp_is_edp(intel_dp)) {
 		int ret = intel_dp_hdcp_init(dig_port, intel_connector);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index dce645a07cdb..5d77adaaf566 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -873,13 +873,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
 int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
 		       struct intel_connector *intel_connector)
 {
-	struct drm_device *dev = intel_connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_encoder *intel_encoder = &dig_port->base;
 	enum port port = intel_encoder->port;
 	struct intel_dp *intel_dp = &dig_port->dp;
 
-	if (!is_hdcp_supported(dev_priv, port))
+	if (!is_hdcp_supported(display, port))
 		return 0;
 
 	if (intel_connector->mst_port)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ed6aa87403e2..870084af92d0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1192,10 +1192,10 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 	drm_connector_put(&connector->base);
 }
 
-bool is_hdcp_supported(struct drm_i915_private *i915, enum port port)
+bool is_hdcp_supported(struct intel_display *display, enum port port)
 {
-	return DISPLAY_RUNTIME_INFO(i915)->has_hdcp &&
-		(DISPLAY_VER(i915) >= 12 || port < PORT_E);
+	return DISPLAY_RUNTIME_INFO(display)->has_hdcp &&
+		(DISPLAY_VER(display) >= 12 || port < PORT_E);
 }
 
 static int
@@ -2301,9 +2301,9 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	return 0;
 }
 
-static bool is_hdcp2_supported(struct drm_i915_private *i915)
+static bool is_hdcp2_supported(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (intel_hdcp_gsc_cs_required(display))
 		return true;
@@ -2317,12 +2317,11 @@ static bool is_hdcp2_supported(struct drm_i915_private *i915)
 		IS_COMETLAKE(i915));
 }
 
-void intel_hdcp_component_init(struct drm_i915_private *i915)
+void intel_hdcp_component_init(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	int ret;
 
-	if (!is_hdcp2_supported(i915))
+	if (!is_hdcp2_supported(display))
 		return;
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
@@ -2367,19 +2366,18 @@ int intel_hdcp_init(struct intel_connector *connector,
 		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *shim)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
 	if (!shim)
 		return -EINVAL;
 
-	if (is_hdcp2_supported(i915))
+	if (is_hdcp2_supported(display))
 		intel_hdcp2_init(connector, dig_port, shim);
 
-	ret =
-	drm_connector_attach_content_protection_property(&connector->base,
-							 hdcp->hdcp2_supported);
+	ret = drm_connector_attach_content_protection_property(&connector->base,
+							       hdcp->hdcp2_supported);
 	if (ret) {
 		hdcp->hdcp2_supported = false;
 		kfree(dig_port->hdcp_port_data.streams);
@@ -2432,7 +2430,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		hdcp->stream_transcoder = INVALID_TRANSCODER;
 	}
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		dig_port->hdcp_port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
@@ -2583,10 +2581,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
-void intel_hdcp_component_fini(struct drm_i915_private *i915)
+void intel_hdcp_component_fini(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
-
 	mutex_lock(&display->hdcp.hdcp_mutex);
 	if (!display->hdcp.comp_added) {
 		mutex_unlock(&display->hdcp.hdcp_mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 477f2d2bb120..d99830cfb798 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -12,13 +12,13 @@
 
 struct drm_connector;
 struct drm_connector_state;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_digital_port;
+struct intel_display;
 struct intel_encoder;
 struct intel_hdcp_shim;
-struct intel_digital_port;
 enum port;
 enum transcoder;
 
@@ -37,14 +37,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
-bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
+bool is_hdcp_supported(struct intel_display *display, enum port port);
 bool intel_hdcp_get_capability(struct intel_connector *connector);
 bool intel_hdcp2_get_capability(struct intel_connector *connector);
 void intel_hdcp_get_remote_capability(struct intel_connector *connector,
 				      bool *hdcp_capable,
 				      bool *hdcp2_capable);
-void intel_hdcp_component_init(struct drm_i915_private *i915);
-void intel_hdcp_component_fini(struct drm_i915_private *i915);
+void intel_hdcp_component_init(struct intel_display *display);
+void intel_hdcp_component_fini(struct intel_display *display);
 void intel_hdcp_cleanup(struct intel_connector *connector);
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 37b61f05bd73..e1a1351bc94f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3026,7 +3026,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct intel_encoder *intel_encoder = &dig_port->base;
 	struct drm_device *dev = intel_encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum port port = intel_encoder->port;
 	struct cec_connector_info conn_info;
 	u8 ddc_pin;
@@ -3076,7 +3075,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	intel_connector_attach_encoder(intel_connector, intel_encoder);
 	intel_hdmi->attached_connector = intel_connector;
 
-	if (is_hdcp_supported(dev_priv, port)) {
+	if (is_hdcp_supported(display, port)) {
 		int ret = intel_hdcp_init(intel_connector, dig_port,
 					  &intel_hdmi_hdcp_shim);
 		if (ret)
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 695c27ac6b0f..b5502f335f53 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -202,12 +202,14 @@ int xe_display_init(struct xe_device *xe)
 
 void xe_display_fini(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	intel_hpd_poll_fini(xe);
 
-	intel_hdcp_component_fini(xe);
+	intel_hdcp_component_fini(display);
 	intel_audio_deinit(xe);
 }
 
-- 
2.39.5

