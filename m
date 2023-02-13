Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F048769513C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4809B10E6FC;
	Mon, 13 Feb 2023 20:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F229C10E6FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676318431; x=1707854431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X7WhGAOnzV+hCaJbByICqxHSmXbzeHojVR+A0PMKA7E=;
 b=ABQ8xEroJPft7NXjBTBZMYV48is+c4fjGLtMORfVK81qJr2gM+p6nWAv
 xfkyUsNLNsISCjvN8hMb86x3OzrLvV1oamKHdKJe4soKvLNf5+esOYbRW
 4Uc2dFZgj6lv5H+ddX7dtHBMvCLymT6YpOpLNYn2UsORhZ4yjBDjdGwNG
 AHqVf/LxkN6SDIqu4Qbc1WhriLY81uI5Q3j5ED3gc2M53MTv2VhGZgrT8
 ndnFbcC7kaa7zMxYtfLY0suzUG8P/mnc3xw5cSBmpYcEHOlFfKYZIm2xm
 jFOuFyYMG9MrBXJ0mFLUL9qeF9jlTgqOyS9SssXl/CNxsQDUNh1GxJjBa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="319012241"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="319012241"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="732611868"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="732611868"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 21:59:58 +0200
Message-Id: <2c8243c5c81b8cd8e34d51f55f3533373c305d0e.1676317696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/wm: move functions to call
 watermark hooks to intel_wm.[ch]
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

Move the wrappers to call watermark hooks into intel_wm.[ch]. This
declutters intel_display.c nicely.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  95 -----------------
 drivers/gpu/drm/i915/display/intel_wm.c      | 105 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h      |  14 +++
 3 files changed, 119 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f3bf6697896c..82efd96ace87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -133,101 +133,6 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 
-/**
- * intel_update_watermarks - update FIFO watermark values based on current modes
- * @dev_priv: i915 device
- *
- * Calculate watermark values for the various WM regs based on current mode
- * and plane configuration.
- *
- * There are several cases to deal with here:
- *   - normal (i.e. non-self-refresh)
- *   - self-refresh (SR) mode
- *   - lines are large relative to FIFO size (buffer can hold up to 2)
- *   - lines are small relative to FIFO size (buffer can hold more than 2
- *     lines), so need to account for TLB latency
- *
- *   The normal calculation is:
- *     watermark = dotclock * bytes per pixel * latency
- *   where latency is platform & configuration dependent (we assume pessimal
- *   values here).
- *
- *   The SR calculation is:
- *     watermark = (trunc(latency/line time)+1) * surface width *
- *       bytes per pixel
- *   where
- *     line time = htotal / dotclock
- *     surface width = hdisplay for normal plane and 64 for cursor
- *   and latency is assumed to be high, as above.
- *
- * The final value programmed to the register should always be rounded up,
- * and include an extra 2 entries to account for clock crossings.
- *
- * We don't use the sprite, so we can ignore that.  And on Crestline we have
- * to set the non-SR watermarks to 8.
- */
-void intel_update_watermarks(struct drm_i915_private *dev_priv)
-{
-	if (dev_priv->display.funcs.wm->update_wm)
-		dev_priv->display.funcs.wm->update_wm(dev_priv);
-}
-
-static int intel_compute_pipe_wm(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.funcs.wm->compute_pipe_wm)
-		return dev_priv->display.funcs.wm->compute_pipe_wm(state, crtc);
-	return 0;
-}
-
-static int intel_compute_intermediate_wm(struct intel_atomic_state *state,
-					 struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (!dev_priv->display.funcs.wm->compute_intermediate_wm)
-		return 0;
-	if (drm_WARN_ON(&dev_priv->drm,
-			!dev_priv->display.funcs.wm->compute_pipe_wm))
-		return 0;
-	return dev_priv->display.funcs.wm->compute_intermediate_wm(state, crtc);
-}
-
-static bool intel_initial_watermarks(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.funcs.wm->initial_watermarks) {
-		dev_priv->display.funcs.wm->initial_watermarks(state, crtc);
-		return true;
-	}
-	return false;
-}
-
-static void intel_atomic_update_watermarks(struct intel_atomic_state *state,
-					   struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.funcs.wm->atomic_update_watermarks)
-		dev_priv->display.funcs.wm->atomic_update_watermarks(state, crtc);
-}
-
-static void intel_optimize_watermarks(struct intel_atomic_state *state,
-				      struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.funcs.wm->optimize_watermarks)
-		dev_priv->display.funcs.wm->optimize_watermarks(state, crtc);
-}
-
-static int intel_compute_global_watermarks(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	if (dev_priv->display.funcs.wm->compute_global_watermarks)
-		return dev_priv->display.funcs.wm->compute_global_watermarks(state);
-	return 0;
-}
-
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 5178b871607f..bb146124a9ca 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -9,6 +9,111 @@
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
+/**
+ * intel_update_watermarks - update FIFO watermark values based on current modes
+ * @dev_priv: i915 device
+ *
+ * Calculate watermark values for the various WM regs based on current mode
+ * and plane configuration.
+ *
+ * There are several cases to deal with here:
+ *   - normal (i.e. non-self-refresh)
+ *   - self-refresh (SR) mode
+ *   - lines are large relative to FIFO size (buffer can hold up to 2)
+ *   - lines are small relative to FIFO size (buffer can hold more than 2
+ *     lines), so need to account for TLB latency
+ *
+ *   The normal calculation is:
+ *     watermark = dotclock * bytes per pixel * latency
+ *   where latency is platform & configuration dependent (we assume pessimal
+ *   values here).
+ *
+ *   The SR calculation is:
+ *     watermark = (trunc(latency/line time)+1) * surface width *
+ *       bytes per pixel
+ *   where
+ *     line time = htotal / dotclock
+ *     surface width = hdisplay for normal plane and 64 for cursor
+ *   and latency is assumed to be high, as above.
+ *
+ * The final value programmed to the register should always be rounded up,
+ * and include an extra 2 entries to account for clock crossings.
+ *
+ * We don't use the sprite, so we can ignore that.  And on Crestline we have
+ * to set the non-SR watermarks to 8.
+ */
+void intel_update_watermarks(struct drm_i915_private *i915)
+{
+	if (i915->display.funcs.wm->update_wm)
+		i915->display.funcs.wm->update_wm(i915);
+}
+
+int intel_compute_pipe_wm(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (i915->display.funcs.wm->compute_pipe_wm)
+		return i915->display.funcs.wm->compute_pipe_wm(state, crtc);
+
+	return 0;
+}
+
+int intel_compute_intermediate_wm(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (!i915->display.funcs.wm->compute_intermediate_wm)
+		return 0;
+
+	if (drm_WARN_ON(&i915->drm, !i915->display.funcs.wm->compute_pipe_wm))
+		return 0;
+
+	return i915->display.funcs.wm->compute_intermediate_wm(state, crtc);
+}
+
+bool intel_initial_watermarks(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (i915->display.funcs.wm->initial_watermarks) {
+		i915->display.funcs.wm->initial_watermarks(state, crtc);
+		return true;
+	}
+
+	return false;
+}
+
+void intel_atomic_update_watermarks(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (i915->display.funcs.wm->atomic_update_watermarks)
+		i915->display.funcs.wm->atomic_update_watermarks(state, crtc);
+}
+
+void intel_optimize_watermarks(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (i915->display.funcs.wm->optimize_watermarks)
+		i915->display.funcs.wm->optimize_watermarks(state, crtc);
+}
+
+int intel_compute_global_watermarks(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (i915->display.funcs.wm->compute_global_watermarks)
+		return i915->display.funcs.wm->compute_global_watermarks(state);
+
+	return 0;
+}
+
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index b7d24d5ab9d7..2b62f818099e 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -9,9 +9,23 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane_state;
 
+void intel_update_watermarks(struct drm_i915_private *i915);
+int intel_compute_pipe_wm(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc);
+int intel_compute_intermediate_wm(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
+bool intel_initial_watermarks(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc);
+void intel_atomic_update_watermarks(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
+void intel_optimize_watermarks(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc);
+int intel_compute_global_watermarks(struct intel_atomic_state *state);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
 void intel_print_wm_latency(struct drm_i915_private *i915,
-- 
2.34.1

