Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9290241BAB0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 01:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91AA06E9D4;
	Tue, 28 Sep 2021 23:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F6B6E9D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 23:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="222929513"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="222929513"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 16:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="437408024"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 16:00:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:58:03 +0300
Message-Id: <0414a27317de3f335a8453a29486b746aa6862e7.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/24] drm/i915: constify the dpll clock vtable
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

Most the dpll vtable into read-only memory.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll.c    | 48 ++++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 3 files changed, 44 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 37d40ab4049c..d6c051dbfaf3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6834,10 +6834,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed && crtc_state->hw.enable &&
-	    dev_priv->dpll_funcs.crtc_compute_clock &&
+	    dev_priv->dpll_funcs &&
 	    !crtc_state->bigjoiner_slave &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-		ret = dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
+		ret = dev_priv->dpll_funcs->crtc_compute_clock(crtc_state);
 		if (ret)
 			return ret;
 	}
@@ -8864,7 +8864,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	int i;
 
-	if (!dev_priv->dpll_funcs.crtc_compute_clock)
+	if (!dev_priv->dpll_funcs)
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7811f19acb6a..784e3ee658b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1365,25 +1365,57 @@ static int i8xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static const struct intel_dpll_funcs hsw_dpll_funcs = {
+	.crtc_compute_clock = hsw_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs ilk_dpll_funcs = {
+	.crtc_compute_clock = ilk_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs chv_dpll_funcs = {
+	.crtc_compute_clock = chv_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs vlv_dpll_funcs = {
+	.crtc_compute_clock = vlv_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs g4x_dpll_funcs = {
+	.crtc_compute_clock = g4x_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs pnv_dpll_funcs = {
+	.crtc_compute_clock = pnv_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs i9xx_dpll_funcs = {
+	.crtc_compute_clock = i9xx_crtc_compute_clock,
+};
+
+static const struct intel_dpll_funcs i8xx_dpll_funcs = {
+	.crtc_compute_clock = i8xx_crtc_compute_clock,
+};
+
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = hsw_crtc_compute_clock;
+		dev_priv->dpll_funcs = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = ilk_crtc_compute_clock;
+		dev_priv->dpll_funcs = &ilk_dpll_funcs;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = chv_crtc_compute_clock;
+		dev_priv->dpll_funcs = &chv_dpll_funcs;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = vlv_crtc_compute_clock;
+		dev_priv->dpll_funcs = &vlv_dpll_funcs;
 	else if (IS_G4X(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = g4x_crtc_compute_clock;
+		dev_priv->dpll_funcs = &g4x_dpll_funcs;
 	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->dpll_funcs.crtc_compute_clock = pnv_crtc_compute_clock;
+		dev_priv->dpll_funcs = &pnv_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) != 2)
-		dev_priv->dpll_funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
+		dev_priv->dpll_funcs = &i9xx_dpll_funcs;
 	else
-		dev_priv->dpll_funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
+		dev_priv->dpll_funcs = &i8xx_dpll_funcs;
 }
 
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 25d79e9df783..0ae643362e15 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -994,7 +994,7 @@ struct drm_i915_private {
 	const struct intel_fdi_funcs *fdi_funcs;
 
 	/* display pll funcs */
-	struct intel_dpll_funcs dpll_funcs;
+	const struct intel_dpll_funcs *dpll_funcs;
 
 	/* Display functions */
 	struct drm_i915_display_funcs display;
-- 
2.30.2

