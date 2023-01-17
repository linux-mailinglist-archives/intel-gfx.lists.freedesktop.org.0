Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 015D966E0FE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 15:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FB710E558;
	Tue, 17 Jan 2023 14:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD3610E54E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 14:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673966399; x=1705502399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D8iWlQtfAACSbXNEQDpt7nOOHpHDcjC74VkczXx7p9s=;
 b=dfrxbqOFavD4ZVyJo1IKwHWqVMu63GtaY0bveMJvZhZ7VbfS/KWrdbYs
 jjtM6weH0WFaQnF1v31QW9YCLv83lMCA/7c4H0ZZTrJLmkAXnz67WSN1c
 BG9AGOCQj6ahVre6tr/U+TZKOwmYfOSd03dhSjzil74Ae8MIZBEnKrjXc
 xXVqOIM8hePFBgjj/sPODFFHdprHmK+OOJvTFhc6VRl3C2yawu/y4ssDV
 MW13Hv97f+LEIjd3cAScqvicUTYhAydmj1cbxZ+Y8g6lnizEajotHQ9Yq
 +rulyUubcBV1up0MJAi2TKt4ZeQGLaMJ/x9PMrWEB5aM6WDeDKxLZoq0j g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="410945205"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="410945205"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="748060082"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="748060082"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 06:39:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 16:39:46 +0200
Message-Id: <20230117143946.2426043-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117143946.2426043-1-jani.nikula@intel.com>
References: <20230117143946.2426043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move chv_dpll_md and bxt_phy_grc
 to display sub-struct under state
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

Move the display related members to the struct drm_i915_private display
sub-struct. Put them under "state", as they are related to storing
values that aren't readable from the hardware, to appease the state
checker.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.c     |  9 +++++----
 drivers/gpu/drm/i915/display/intel_dpll.c         |  2 +-
 drivers/gpu/drm/i915/i915_drv.h                   |  8 --------
 5 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 734e8e613f8e..419537a79255 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3291,7 +3291,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 4) {
 		/* No way to read it out on pipes B and C */
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
-			tmp = dev_priv->chv_dpll_md[crtc->pipe];
+			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
 		else
 			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
 		pipe_config->pixel_multiplier =
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index c0eb753112d5..24c792d44b8f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -441,6 +441,16 @@ struct intel_display {
 		u8 phy_failed_calibration;
 	} snps;
 
+	struct {
+		/*
+		 * Shadows for CHV DPLL_MD regs to keep the state
+		 * checker somewhat working in the presence hardware
+		 * crappiness (can't read out DPLL_MD for pipes B & C).
+		 */
+		u32 chv_dpll_md[I915_MAX_PIPES];
+		u32 bxt_phy_grc;
+	} state;
+
 	struct {
 		/* ordered wq for modesets */
 		struct workqueue_struct *modeset;
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 7eb7440b3180..565c06de2432 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -376,7 +376,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 	if (bxt_ddi_phy_is_enabled(dev_priv, phy)) {
 		/* Still read out the GRC value for state verification */
 		if (phy_info->rcomp_phy != -1)
-			dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv, phy);
+			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
 
 		if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
 			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
@@ -442,8 +442,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 		 * the corresponding calibrated value from PHY1, and disable
 		 * the automatic calibration on PHY0.
 		 */
-		val = dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv,
-							  phy_info->rcomp_phy);
+		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
+		dev_priv->display.state.bxt_phy_grc = val;
+
 		grc_code = val << GRC_CODE_FAST_SHIFT |
 			   val << GRC_CODE_SLOW_SHIFT |
 			   val;
@@ -568,7 +569,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 			   "BXT_PORT_CL2CM_DW6(%d)", phy);
 
 	if (phy_info->rcomp_phy != -1) {
-		u32 grc_code = dev_priv->bxt_phy_grc;
+		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
 
 		grc_code = grc_code << GRC_CODE_FAST_SHIFT |
 			   grc_code << GRC_CODE_SLOW_SHIFT |
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c236aafe9be0..4e9c18be7e1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1910,7 +1910,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
 			       crtc_state->dpll_hw_state.dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
-		dev_priv->chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
+		dev_priv->display.state.chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
 
 		/*
 		 * DPLLB VGA mode also seems to cause problems.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9ac80a45362f..e631373cc1dc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -300,14 +300,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	/*
-	 * Shadows for CHV DPLL_MD regs to keep the state
-	 * checker somewhat working in the presence hardware
-	 * crappiness (can't read out DPLL_MD for pipes B & C).
-	 */
-	u32 chv_dpll_md[I915_MAX_PIPES];
-	u32 bxt_phy_grc;
-
 	u32 suspend_count;
 	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
-- 
2.34.1

