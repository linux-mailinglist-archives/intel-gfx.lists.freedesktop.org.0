Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1615965E64
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F37B10E9F5;
	Fri, 30 Aug 2024 10:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b82j/nBY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C1010E9D7;
 Fri, 30 Aug 2024 10:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012988; x=1756548988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZzVgKxXodfQkSAgfEqaCn5/dloD9jPLB5reVWx4xKE=;
 b=b82j/nBYuxNZe8Sva/yJhBA3TH93E8ndQQGYLfBX/wEjm1uir+Hl1U4l
 9GMQPobSkPYKBCiHkReuDQlTVv7fCf9RShJWQb2Hg3+zm8B/jSzONlf/C
 ESadGN1+1euQ5Et3OLVRW8doq9F/CEQJN+1RbPZq7qBH2KmSYJqurp0Ef
 BTwmifErLFXk2NRn7aKvJ0ANqMCVhOffWE12ko41uXVgiR+fywhE8ANVh
 IGynY8cd7ZqGY5cVRzqVE0VE3NgvI+gG0sjqebTrejmWtNZaUwNPKpi5z
 PE1vFeNaxnIbdi/jt8r3tp+bBIupTZWd0u3w+V2jF/J86uX0inRDdUgpW w==;
X-CSE-ConnectionGUID: m0iKpmxAQlO0U2a9y981GQ==
X-CSE-MsgGUID: XzXhqHeIRHava1WVB3cWgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164451"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164451"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:16 -0700
X-CSE-ConnectionGUID: 9MN2T3OtT5mszHA6Fcd2Ug==
X-CSE-MsgGUID: eRrovBH7TwCvDFxoYSPthQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252486"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/11] drm/i915/dp: convert intel_dp_tunnel.[ch] to struct
 intel_display
Date: Fri, 30 Aug 2024 13:15:41 +0300
Message-Id: <2c83fe739ab8de05361d6eaae0249e58878a3c06.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_dp_tunnel.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  6 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 77 ++++++++++---------
 .../gpu/drm/i915/display/intel_dp_tunnel.h    | 11 ++-
 3 files changed, 49 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index eced20d2ce6e..98ad2eb8db72 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -459,7 +459,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_vga_disable(i915);
 	intel_setup_outputs(i915);
 
-	ret = intel_dp_tunnel_mgr_init(i915);
+	ret = intel_dp_tunnel_mgr_init(display);
 	if (ret)
 		goto err_hdcp;
 
@@ -580,6 +580,8 @@ void intel_display_driver_remove(struct drm_i915_private *i915)
 /* part #2: call after irq uninstall */
 void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (!HAS_DISPLAY(i915))
 		return;
 
@@ -600,7 +602,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_mode_config_cleanup(i915);
 
-	intel_dp_tunnel_mgr_cleanup(i915);
+	intel_dp_tunnel_mgr_cleanup(display);
 
 	intel_overlay_cleanup(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 6503abdc2b98..94198bc04939 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -69,7 +69,7 @@ static int get_current_link_bw(struct intel_dp *intel_dp,
 
 static int update_tunnel_state(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool old_bw_below_dprx;
 	bool new_bw_below_dprx;
@@ -81,7 +81,7 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 
 	ret = drm_dp_tunnel_update_state(intel_dp->tunnel);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[DPTUN %s][ENCODER:%d:%s] State update failed (err %pe)\n",
 			    drm_dp_tunnel_name(intel_dp->tunnel),
 			    encoder->base.base.id, encoder->base.name,
@@ -103,7 +103,7 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
 	    !new_bw_below_dprx)
 		return 0;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][ENCODER:%d:%s] Notify users about BW change: %d -> %d\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    encoder->base.base.id, encoder->base.name,
@@ -121,20 +121,20 @@ static int update_tunnel_state(struct intel_dp *intel_dp)
  */
 static int allocate_initial_tunnel_bw_for_pipes(struct intel_dp *intel_dp, u8 pipe_mask)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_crtc *crtc;
 	int tunnel_bw = 0;
 	int err;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int stream_bw = intel_dp_config_required_rate(crtc_state);
 
 		tunnel_bw += stream_bw;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[DPTUN %s][ENCODER:%d:%s][CRTC:%d:%s] Initial BW for stream %d: %d/%d Mb/s\n",
 			    drm_dp_tunnel_name(intel_dp->tunnel),
 			    encoder->base.base.id, encoder->base.name,
@@ -145,7 +145,7 @@ static int allocate_initial_tunnel_bw_for_pipes(struct intel_dp *intel_dp, u8 pi
 
 	err = drm_dp_tunnel_alloc_bw(intel_dp->tunnel, tunnel_bw);
 	if (err) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[DPTUN %s][ENCODER:%d:%s] Initial BW allocation failed (err %pe)\n",
 			    drm_dp_tunnel_name(intel_dp->tunnel),
 			    encoder->base.base.id, encoder->base.name,
@@ -172,12 +172,12 @@ static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp,
 
 static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_dp_tunnel *tunnel;
 	int ret;
 
-	tunnel = drm_dp_tunnel_detect(i915->display.dp_tunnel_mgr,
+	tunnel = drm_dp_tunnel_detect(display->dp_tunnel_mgr,
 				      &intel_dp->aux);
 	if (IS_ERR(tunnel))
 		return PTR_ERR(tunnel);
@@ -189,7 +189,7 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct drm_modeset_acqui
 		if (ret == -EOPNOTSUPP)
 			return 0;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[DPTUN %s][ENCODER:%d:%s] Failed to enable BW allocation mode (ret %pe)\n",
 			    drm_dp_tunnel_name(intel_dp->tunnel),
 			    encoder->base.base.id, encoder->base.name,
@@ -266,14 +266,15 @@ bool intel_dp_tunnel_bw_alloc_is_enabled(struct intel_dp *intel_dp)
  */
 void intel_dp_tunnel_suspend(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
 		return;
 
-	drm_dbg_kms(&i915->drm, "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s] Suspend\n",
+	drm_dbg_kms(display->drm,
+		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s] Suspend\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
 		    encoder->base.base.id, encoder->base.name);
@@ -295,7 +296,7 @@ void intel_dp_tunnel_resume(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *crtc_state,
 			    bool dpcd_updated)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
@@ -307,7 +308,8 @@ void intel_dp_tunnel_resume(struct intel_dp *intel_dp,
 
 	intel_dp->tunnel_suspended = false;
 
-	drm_dbg_kms(&i915->drm, "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s] Resume\n",
+	drm_dbg_kms(display->drm,
+		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s] Resume\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
 		    encoder->base.base.id, encoder->base.name);
@@ -347,7 +349,7 @@ void intel_dp_tunnel_resume(struct intel_dp *intel_dp,
 	return;
 
 out_err:
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s] Tunnel can't be resumed, will drop and reject it (err %pe)\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
@@ -369,12 +371,12 @@ add_inherited_tunnel(struct intel_atomic_state *state,
 		     struct drm_dp_tunnel *tunnel,
 		     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct drm_dp_tunnel *old_tunnel;
 
 	old_tunnel = get_inherited_tunnel(state, crtc);
 	if (old_tunnel) {
-		drm_WARN_ON(&i915->drm, old_tunnel != tunnel);
+		drm_WARN_ON(display->drm, old_tunnel != tunnel);
 		return 0;
 	}
 
@@ -394,7 +396,7 @@ static int check_inherited_tunnel_state(struct intel_atomic_state *state,
 					struct intel_dp *intel_dp,
 					const struct intel_digital_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->base.connector);
@@ -422,7 +424,7 @@ static int check_inherited_tunnel_state(struct intel_atomic_state *state,
 	    old_crtc_state->dp_tunnel_ref.tunnel == intel_dp->tunnel)
 		return 0;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s][CRTC:%d:%s] Adding state for inherited tunnel %p\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
@@ -441,12 +443,13 @@ static int check_inherited_tunnel_state(struct intel_atomic_state *state,
  */
 void intel_dp_tunnel_atomic_cleanup_inherited_state(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	enum pipe pipe;
 
 	if (!state->inherited_dp_tunnels)
 		return;
 
-	for_each_pipe(to_i915(state->base.dev), pipe)
+	for_each_pipe(display, pipe)
 		if (state->inherited_dp_tunnels->ref[pipe].tunnel)
 			drm_dp_tunnel_ref_put(&state->inherited_dp_tunnels->ref[pipe]);
 
@@ -457,7 +460,7 @@ void intel_dp_tunnel_atomic_cleanup_inherited_state(struct intel_atomic_state *s
 static int intel_dp_tunnel_atomic_add_group_state(struct intel_atomic_state *state,
 						  struct drm_dp_tunnel *tunnel)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	u32 pipe_mask;
 	int err;
 
@@ -466,7 +469,7 @@ static int intel_dp_tunnel_atomic_add_group_state(struct intel_atomic_state *sta
 	if (err)
 		return err;
 
-	drm_WARN_ON(&i915->drm, pipe_mask & ~((1 << I915_MAX_PIPES) - 1));
+	drm_WARN_ON(display->drm, pipe_mask & ~((1 << I915_MAX_PIPES) - 1));
 
 	return intel_modeset_pipes_in_mask_early(state, "DPTUN", pipe_mask);
 }
@@ -504,7 +507,7 @@ static int check_group_state(struct intel_atomic_state *state,
 			     struct intel_connector *connector,
 			     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -512,7 +515,7 @@ static int check_group_state(struct intel_atomic_state *state,
 	if (!crtc_state->dp_tunnel_ref.tunnel)
 		return 0;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s][CRTC:%d:%s] Adding group state for tunnel %p\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
@@ -583,7 +586,7 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
 					     const struct intel_connector *connector,
 					     struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int required_rate = intel_dp_config_required_rate(crtc_state);
@@ -592,7 +595,7 @@ int intel_dp_tunnel_atomic_compute_stream_bw(struct intel_atomic_state *state,
 	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
 		return 0;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][CONNECTOR:%d:%s][ENCODER:%d:%s][CRTC:%d:%s] Stream %d required BW %d Mb/s\n",
 		    drm_dp_tunnel_name(intel_dp->tunnel),
 		    connector->base.base.id, connector->base.name,
@@ -708,7 +711,7 @@ static void queue_retry_work(struct intel_atomic_state *state,
 			     struct drm_dp_tunnel *tunnel,
 			     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_encoder *encoder;
 
 	encoder = intel_get_crtc_new_encoder(state, crtc_state);
@@ -716,7 +719,7 @@ static void queue_retry_work(struct intel_atomic_state *state,
 	if (!intel_digital_port_connected(encoder))
 		return;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[DPTUN %s][ENCODER:%d:%s] BW allocation failed on a connected sink\n",
 		    drm_dp_tunnel_name(tunnel),
 		    encoder->base.base.id,
@@ -765,7 +768,7 @@ void intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state)
 
 /**
  * intel_dp_tunnel_mgr_init - Initialize the DP tunnel manager
- * @i915: i915 device object
+ * @display: display device
  *
  * Initialize the DP tunnel manager. The tunnel manager will support the
  * detection/management of DP tunnels on all DP connectors, so the function
@@ -773,14 +776,14 @@ void intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state)
  *
  * Return 0 in case of success, a negative error code otherwise.
  */
-int intel_dp_tunnel_mgr_init(struct drm_i915_private *i915)
+int intel_dp_tunnel_mgr_init(struct intel_display *display)
 {
 	struct drm_dp_tunnel_mgr *tunnel_mgr;
 	struct drm_connector_list_iter connector_list_iter;
 	struct intel_connector *connector;
 	int dp_connectors = 0;
 
-	drm_connector_list_iter_begin(&i915->drm, &connector_list_iter);
+	drm_connector_list_iter_begin(display->drm, &connector_list_iter);
 	for_each_intel_connector_iter(connector, &connector_list_iter) {
 		if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
 			continue;
@@ -789,23 +792,23 @@ int intel_dp_tunnel_mgr_init(struct drm_i915_private *i915)
 	}
 	drm_connector_list_iter_end(&connector_list_iter);
 
-	tunnel_mgr = drm_dp_tunnel_mgr_create(&i915->drm, dp_connectors);
+	tunnel_mgr = drm_dp_tunnel_mgr_create(display->drm, dp_connectors);
 	if (IS_ERR(tunnel_mgr))
 		return PTR_ERR(tunnel_mgr);
 
-	i915->display.dp_tunnel_mgr = tunnel_mgr;
+	display->dp_tunnel_mgr = tunnel_mgr;
 
 	return 0;
 }
 
 /**
  * intel_dp_tunnel_mgr_cleanup - Clean up the DP tunnel manager state
- * @i915: i915 device object
+ * @display: display device
  *
  * Clean up the DP tunnel manager state.
  */
-void intel_dp_tunnel_mgr_cleanup(struct drm_i915_private *i915)
+void intel_dp_tunnel_mgr_cleanup(struct intel_display *display)
 {
-	drm_dp_tunnel_mgr_destroy(i915->display.dp_tunnel_mgr);
-	i915->display.dp_tunnel_mgr = NULL;
+	drm_dp_tunnel_mgr_destroy(display->dp_tunnel_mgr);
+	display->dp_tunnel_mgr = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index 08b2cba84af2..a0c00b7d3303 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -9,14 +9,13 @@
 #include <linux/errno.h>
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct drm_connector_state;
 struct drm_modeset_acquire_ctx;
-
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 struct intel_link_bw_limits;
@@ -53,8 +52,8 @@ int intel_dp_tunnel_atomic_check_state(struct intel_atomic_state *state,
 
 void intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state);
 
-int intel_dp_tunnel_mgr_init(struct drm_i915_private *i915);
-void intel_dp_tunnel_mgr_cleanup(struct drm_i915_private *i915);
+int intel_dp_tunnel_mgr_init(struct intel_display *display);
+void intel_dp_tunnel_mgr_cleanup(struct intel_display *display);
 
 #else
 
@@ -121,12 +120,12 @@ intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state)
 }
 
 static inline int
-intel_dp_tunnel_mgr_init(struct drm_i915_private *i915)
+intel_dp_tunnel_mgr_init(struct intel_display *display)
 {
 	return 0;
 }
 
-static inline void intel_dp_tunnel_mgr_cleanup(struct drm_i915_private *i915) {}
+static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
 
 #endif /* CONFIG_DRM_I915_DP_TUNNEL */
 
-- 
2.39.2

