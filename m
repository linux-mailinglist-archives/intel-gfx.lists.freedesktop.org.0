Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC1940B6ED
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 20:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80F389E43;
	Tue, 14 Sep 2021 18:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4158489E3F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 18:27:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="307648309"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="307648309"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470310784"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dave Airlie <airlied@gmail.com>,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 14 Sep 2021 21:25:17 +0300
Message-Id: <d6ade757eef202415c09e8633b9e7a2b7ebfd06a.1631643729.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
References: <cover.1631643729.git.jani.nikula@intel.com>
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
index 49d7f0468002..36810c5181b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6821,10 +6821,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
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
@@ -8851,7 +8851,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	int i;
 
-	if (!dev_priv->dpll_funcs.crtc_compute_clock)
+	if (!dev_priv->dpll_funcs)
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 9326c7cbb05c..231b337df166 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1363,25 +1363,57 @@ static int i8xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
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
index c2c127d979fe..cdab03818ecf 100644
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

