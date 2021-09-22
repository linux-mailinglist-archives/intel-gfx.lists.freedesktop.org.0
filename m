Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF98414BF8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DA06EC03;
	Wed, 22 Sep 2021 14:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3856EC01
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:31:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="221719253"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="221719253"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="557487614"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:38 +0300
Message-Id: <db46778f6e180897fac564f7083f71f84200f3be.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/24] drm/i915: split the dpll clock compute
 out from display vtable.
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

From: Dave Airlie <airlied@redhat.com>

this single function might be possible to merge later, but
for now it's simple to just split it out.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/i915_drv.h              |  8 +++++++-
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a32c9a4ac888..f3c8f8a4127e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6826,10 +6826,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed && crtc_state->hw.enable &&
-	    dev_priv->display.crtc_compute_clock &&
+	    dev_priv->dpll_funcs.crtc_compute_clock &&
 	    !crtc_state->bigjoiner_slave &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-		ret = dev_priv->display.crtc_compute_clock(crtc_state);
+		ret = dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
 		if (ret)
 			return ret;
 	}
@@ -8856,7 +8856,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	int i;
 
-	if (!dev_priv->display.crtc_compute_clock)
+	if (!dev_priv->dpll_funcs.crtc_compute_clock)
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 487d8721ecf8..7811f19acb6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1369,21 +1369,21 @@ void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
-		dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = hsw_crtc_compute_clock;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		dev_priv->display.crtc_compute_clock = ilk_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = ilk_crtc_compute_clock;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.crtc_compute_clock = chv_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = chv_crtc_compute_clock;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->display.crtc_compute_clock = vlv_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = vlv_crtc_compute_clock;
 	else if (IS_G4X(dev_priv))
-		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = g4x_crtc_compute_clock;
 	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = pnv_crtc_compute_clock;
 	else if (DISPLAY_VER(dev_priv) != 2)
-		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
 	else
-		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
+		dev_priv->dpll_funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
 }
 
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 62a7d67cbc2e..954b16ee857f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -393,6 +393,10 @@ struct intel_fdi_funcs {
 			       const struct intel_crtc_state *crtc_state);
 };
 
+struct intel_dpll_funcs {
+	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
@@ -400,7 +404,6 @@ struct drm_i915_display_funcs {
 				struct intel_crtc_state *);
 	void (*get_initial_plane_config)(struct intel_crtc *,
 					 struct intel_initial_plane_config *);
-	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
 	void (*crtc_enable)(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 	void (*crtc_disable)(struct intel_atomic_state *state,
@@ -990,6 +993,9 @@ struct drm_i915_private {
 	/* fdi display functions */
 	struct intel_fdi_funcs fdi_funcs;
 
+	/* display pll funcs */
+	struct intel_dpll_funcs dpll_funcs;
+
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
-- 
2.30.2

