Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35AD69513E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:00:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4089B10E702;
	Mon, 13 Feb 2023 20:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B39AE10E701
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676318442; x=1707854442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qgpwyuqz8kPVfUao8z9MxsgQloZ5UCdguhJpLMAvq6c=;
 b=nM4k7ySya4v64PGuJXRZ5dW/ttFuGc3cPF2OtdKG2zmUYY9ybn2XpaUM
 mqN43Fx3eQVPzVuTDBYKh3atihgF66Y6zhOIdyR8QjTs3xMblIuBp+fND
 ajX2Cqqs3c+C0lOreV84XlaJwnyvXoNBUlO/5FOBk2X8s5in9OWC7Qj69
 A8xnsGm1LpP9xcsKIj1a2nT5r/ipL4fUyI3QRB5M9lObcpcQ3BnZFsX3y
 4KsJyGpfeZ+3xMM0wi37kapy/tOnWZGNXzfMZxP2NKXP9suneyzSuOHNo
 1cP16LEftutN99WaIRn99S4JhRFq/7p7m0TZkHoU+9qEbqt51Jq38b2kJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393385826"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393385826"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699272986"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="699272986"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 22:00:00 +0200
Message-Id: <77c30bfdd258c4e0cf143c93514f94c92f371484.1676317696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915/wm: move watermark sanitization
 to intel_wm.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the generic sanitize_watermarks() to intel_wm.[ch] and rename as
intel_wm_sanitize(). The slightly unfortunate downside is having to
expose intel_atomic_check() from intel_display.c, but this declutters
intel_display.c nicely.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 124 +------------------
 drivers/gpu/drm/i915/display/intel_display.h |   2 +
 drivers/gpu/drm/i915/display/intel_wm.c      | 119 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h      |   1 +
 4 files changed, 125 insertions(+), 121 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 82efd96ace87..abb40112704b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6602,8 +6602,8 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
  * @dev: drm device
  * @_state: state to validate
  */
-static int intel_atomic_check(struct drm_device *dev,
-			      struct drm_atomic_state *_state)
+int intel_atomic_check(struct drm_device *dev,
+		       struct drm_atomic_state *_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
@@ -8263,124 +8263,6 @@ void intel_modeset_init_hw(struct drm_i915_private *i915)
 	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
 }
 
-static int sanitize_watermarks_add_affected(struct drm_atomic_state *state)
-{
-	struct drm_plane *plane;
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(state->dev, crtc) {
-		struct intel_crtc_state *crtc_state;
-
-		crtc_state = intel_atomic_get_crtc_state(state, crtc);
-		if (IS_ERR(crtc_state))
-			return PTR_ERR(crtc_state);
-
-		if (crtc_state->hw.active) {
-			/*
-			 * Preserve the inherited flag to avoid
-			 * taking the full modeset path.
-			 */
-			crtc_state->inherited = true;
-		}
-	}
-
-	drm_for_each_plane(plane, state->dev) {
-		struct drm_plane_state *plane_state;
-
-		plane_state = drm_atomic_get_plane_state(state, plane);
-		if (IS_ERR(plane_state))
-			return PTR_ERR(plane_state);
-	}
-
-	return 0;
-}
-
-/*
- * Calculate what we think the watermarks should be for the state we've read
- * out of the hardware and then immediately program those watermarks so that
- * we ensure the hardware settings match our internal state.
- *
- * We can calculate what we think WM's should be by creating a duplicate of the
- * current state (which was constructed during hardware readout) and running it
- * through the atomic check code to calculate new watermark values in the
- * state object.
- */
-static void sanitize_watermarks(struct drm_i915_private *dev_priv)
-{
-	struct drm_atomic_state *state;
-	struct intel_atomic_state *intel_state;
-	struct intel_crtc *crtc;
-	struct intel_crtc_state *crtc_state;
-	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-	int i;
-
-	/* Only supported on platforms that use atomic watermark design */
-	if (!dev_priv->display.funcs.wm->optimize_watermarks)
-		return;
-
-	state = drm_atomic_state_alloc(&dev_priv->drm);
-	if (drm_WARN_ON(&dev_priv->drm, !state))
-		return;
-
-	intel_state = to_intel_atomic_state(state);
-
-	drm_modeset_acquire_init(&ctx, 0);
-
-retry:
-	state->acquire_ctx = &ctx;
-
-	/*
-	 * Hardware readout is the only time we don't want to calculate
-	 * intermediate watermarks (since we don't trust the current
-	 * watermarks).
-	 */
-	if (!HAS_GMCH(dev_priv))
-		intel_state->skip_intermediate_wm = true;
-
-	ret = sanitize_watermarks_add_affected(state);
-	if (ret)
-		goto fail;
-
-	ret = intel_atomic_check(&dev_priv->drm, state);
-	if (ret)
-		goto fail;
-
-	/* Write calculated watermark values back */
-	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
-		crtc_state->wm.need_postvbl_update = true;
-		intel_optimize_watermarks(intel_state, crtc);
-
-		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
-	}
-
-fail:
-	if (ret == -EDEADLK) {
-		drm_atomic_state_clear(state);
-		drm_modeset_backoff(&ctx);
-		goto retry;
-	}
-
-	/*
-	 * If we fail here, it means that the hardware appears to be
-	 * programmed in a way that shouldn't be possible, given our
-	 * understanding of watermark requirements.  This might mean a
-	 * mistake in the hardware readout code or a mistake in the
-	 * watermark calculations for a given platform.  Raise a WARN
-	 * so that this is noticeable.
-	 *
-	 * If this actually happens, we'll have to just leave the
-	 * BIOS-programmed watermarks untouched and hope for the best.
-	 */
-	drm_WARN(&dev_priv->drm, ret,
-		 "Could not determine valid watermarks for inherited state\n");
-
-	drm_atomic_state_put(state);
-
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-}
-
 static int intel_initial_commit(struct drm_device *dev)
 {
 	struct drm_atomic_state *state = NULL;
@@ -8657,7 +8539,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	 * since the watermark calculation done here will use pstate->fb.
 	 */
 	if (!HAS_GMCH(i915))
-		sanitize_watermarks(i915);
+		intel_wm_sanitize(i915);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index cb6f520cc575..ed852f62721d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -32,6 +32,7 @@
 
 enum drm_scaling_filter;
 struct dpll;
+struct drm_atomic_state;
 struct drm_connector;
 struct drm_device;
 struct drm_display_mode;
@@ -394,6 +395,7 @@ enum phy_fia {
 			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
+int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index c4d14a51869b..15fda0829c2f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i9xx_wm.h"
+#include "intel_atomic.h"
 #include "intel_display_types.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
@@ -173,6 +174,124 @@ void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 	}
 }
 
+static int sanitize_watermarks_add_affected(struct drm_atomic_state *state)
+{
+	struct drm_plane *plane;
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(state->dev, crtc) {
+		struct intel_crtc_state *crtc_state;
+
+		crtc_state = intel_atomic_get_crtc_state(state, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+
+		if (crtc_state->hw.active) {
+			/*
+			 * Preserve the inherited flag to avoid
+			 * taking the full modeset path.
+			 */
+			crtc_state->inherited = true;
+		}
+	}
+
+	drm_for_each_plane(plane, state->dev) {
+		struct drm_plane_state *plane_state;
+
+		plane_state = drm_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+	}
+
+	return 0;
+}
+
+/*
+ * Calculate what we think the watermarks should be for the state we've read
+ * out of the hardware and then immediately program those watermarks so that
+ * we ensure the hardware settings match our internal state.
+ *
+ * We can calculate what we think WM's should be by creating a duplicate of the
+ * current state (which was constructed during hardware readout) and running it
+ * through the atomic check code to calculate new watermark values in the
+ * state object.
+ */
+void intel_wm_sanitize(struct drm_i915_private *dev_priv)
+{
+	struct drm_atomic_state *state;
+	struct intel_atomic_state *intel_state;
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+	int i;
+
+	/* Only supported on platforms that use atomic watermark design */
+	if (!dev_priv->display.funcs.wm->optimize_watermarks)
+		return;
+
+	state = drm_atomic_state_alloc(&dev_priv->drm);
+	if (drm_WARN_ON(&dev_priv->drm, !state))
+		return;
+
+	intel_state = to_intel_atomic_state(state);
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+retry:
+	state->acquire_ctx = &ctx;
+
+	/*
+	 * Hardware readout is the only time we don't want to calculate
+	 * intermediate watermarks (since we don't trust the current
+	 * watermarks).
+	 */
+	if (!HAS_GMCH(dev_priv))
+		intel_state->skip_intermediate_wm = true;
+
+	ret = sanitize_watermarks_add_affected(state);
+	if (ret)
+		goto fail;
+
+	ret = intel_atomic_check(&dev_priv->drm, state);
+	if (ret)
+		goto fail;
+
+	/* Write calculated watermark values back */
+	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
+		crtc_state->wm.need_postvbl_update = true;
+		intel_optimize_watermarks(intel_state, crtc);
+
+		to_intel_crtc_state(crtc->base.state)->wm = crtc_state->wm;
+	}
+
+fail:
+	if (ret == -EDEADLK) {
+		drm_atomic_state_clear(state);
+		drm_modeset_backoff(&ctx);
+		goto retry;
+	}
+
+	/*
+	 * If we fail here, it means that the hardware appears to be
+	 * programmed in a way that shouldn't be possible, given our
+	 * understanding of watermark requirements.  This might mean a
+	 * mistake in the hardware readout code or a mistake in the
+	 * watermark calculations for a given platform.  Raise a WARN
+	 * so that this is noticeable.
+	 *
+	 * If this actually happens, we'll have to just leave the
+	 * BIOS-programmed watermarks untouched and hope for the best.
+	 */
+	drm_WARN(&dev_priv->drm, ret,
+		 "Could not determine valid watermarks for inherited state\n");
+
+	drm_atomic_state_put(state);
+
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+}
+
 void intel_wm_init(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 9)
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index dc582967a25e..a5233e7e5e8d 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -31,6 +31,7 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
 void intel_print_wm_latency(struct drm_i915_private *i915,
 			    const char *name, const u16 wm[]);
+void intel_wm_sanitize(struct drm_i915_private *i915);
 void intel_wm_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_WM_H__ */
-- 
2.34.1

