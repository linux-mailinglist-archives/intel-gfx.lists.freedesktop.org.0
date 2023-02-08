Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BBC68EC0A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA2D10E72F;
	Wed,  8 Feb 2023 09:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E5A10E72E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849747; x=1707385747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0aU/xKSyuIS7krbi0B2BsuUSmvUNX1Byse5M5AxUSEM=;
 b=I+IPkJTcFrdBhiAmI5OlkugZV/TgUQEz4z04R3hzEkdqXXgDSJg3k30M
 NPuxEug0qJ8oZCp6bOXkuUe48M4dUGTc6EaBL+4VKqIe6pvNIMKPcG5Jk
 mKM19yaYMDpYNToszXM/VwmmVt5IlVXB74ufqoQYbXKob2V0+79Alrktu
 JymKpCrepjxBiRf1+LpTk4BlhhybAMKRtGinZaHytUJSGphMzbAhiPBvn
 v1OZ9RXsKyMOAv4MYOv/wuCcYu9bpnzd39APx+gzMOwqqY0Tj/r/PWFQA
 w0U3zwv+Wr4jOGrJwDSq38yi7nX5qQq5+0Qdw1hQwR4UIiOo90EmsdWPy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357146016"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357146016"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="755990512"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="755990512"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:41 +0200
Message-Id: <bb24d46ea90ea10fd3e082594bd8d352ac524cfa.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/wm: move functions to call
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
index bb837ef951a0..6225db029d2a 100644
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
index aa2bc06c8927..15e004bf7eba 100644
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
index f73cfc249104..916302a0077a 100644
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

