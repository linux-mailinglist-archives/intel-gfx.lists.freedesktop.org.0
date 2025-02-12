Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494E1A3203C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:46:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F1710E7D2;
	Wed, 12 Feb 2025 07:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="grCvRJxn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58DC10E7CF;
 Wed, 12 Feb 2025 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739346366; x=1770882366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K1i5ThCdsztjx9kZUj6xRf9kM3WFSf7IGRPZ+UTClQ0=;
 b=grCvRJxnSCK4FJxDBX8i/Kkg2rnbFr4MnvW78EQPmzDGqRiW7ptydUmw
 hKGtygC8WFwcTT0HXAYmacu1OfM8oeDshdw5zKj5p6+Hqlg59txjv8cCh
 ngtpx+jQRGIHDaRQLqPlgIYScFLOao//SBOTg+3FRZXxQVTeVEq8QQu4N
 2F+D2Z6nXB7aSlhS061rkbckQ1wX2CLVgVEhCRLsHB0TuSfTKap5/QpTS
 rbRal+hgafKdGI+b1HeLJOp6vaCBHfvtuhsnnWMigkI7mi1CEZIPSzTYS
 btapnZ1IowNsKWIv3NFZ4M4kGcPHxZkE0GwLkLWkrf+92hqj26gT1XqgI g==;
X-CSE-ConnectionGUID: CMvrlGZgSvyF6kPGgaLhtA==
X-CSE-MsgGUID: ZnQxgmJ1SxuWwKO68vFPDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39906747"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39906747"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:46:06 -0800
X-CSE-ConnectionGUID: 0gKRWyecRES5JtcJNO6dLQ==
X-CSE-MsgGUID: 66ntTagJRx6jYvHwj+wdGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112601136"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2025 23:46:04 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 6/8] drm/i915/dpll: Use intel_display for update_refclk hook
Date: Wed, 12 Feb 2025 13:15:40 +0530
Message-Id: <20250212074542.3569452-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250212074542.3569452-1-suraj.kandpal@intel.com>
References: <20250212074542.3569452-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Use intel_display instead of drm_i915_private for update_refclk hook.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 32 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index d448672fdfa4..978f530c810e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -453,7 +453,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_update_czclk(i915);
 	intel_display_driver_init_hw(display);
-	intel_dpll_update_ref_clks(i915);
+	intel_dpll_update_ref_clks(display);
 
 	if (display->cdclk.max_cdclk_freq == 0)
 		intel_update_max_cdclk(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2d909e6c0137..124f590a15c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -109,7 +109,7 @@ struct intel_dpll_mgr {
 	void (*update_active_dpll)(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_encoder *encoder);
-	void (*update_ref_clks)(struct drm_i915_private *i915);
+	void (*update_ref_clks)(struct intel_display *display);
 	void (*dump_hw_state)(struct drm_printer *p,
 			      const struct intel_dpll_hw_state *dpll_hw_state);
 	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
@@ -1242,14 +1242,14 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
+static void hsw_update_dpll_ref_clks(struct intel_display *display)
 {
-	i915->display.dpll.ref_clks.ssc = 135000;
+	display->dpll.ref_clks.ssc = 135000;
 	/* Non-SSC is only used on non-ULT HSW. */
-	if (intel_de_read(i915, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
-		i915->display.dpll.ref_clks.nssc = 24000;
+	if (intel_de_read(display, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
+		display->dpll.ref_clks.nssc = 24000;
 	else
-		i915->display.dpll.ref_clks.nssc = 135000;
+		display->dpll.ref_clks.nssc = 135000;
 }
 
 static void hsw_dump_hw_state(struct drm_printer *p,
@@ -1979,10 +1979,10 @@ static int skl_ddi_pll_get_freq(struct intel_display *display,
 		return skl_ddi_lcpll_get_freq(display, pll, dpll_hw_state);
 }
 
-static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
+static void skl_update_dpll_ref_clks(struct intel_display *display)
 {
 	/* No SSC ref */
-	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
+	display->dpll.ref_clks.nssc = display->cdclk.hw.ref;
 }
 
 static void skl_dump_hw_state(struct drm_printer *p,
@@ -2448,10 +2448,10 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
+static void bxt_update_dpll_ref_clks(struct intel_display *display)
 {
-	i915->display.dpll.ref_clks.ssc = 100000;
-	i915->display.dpll.ref_clks.nssc = 100000;
+	display->dpll.ref_clks.ssc = 100000;
+	display->dpll.ref_clks.nssc = 100000;
 	/* DSI non-SSC ref 19.2MHz */
 }
 
@@ -4080,10 +4080,10 @@ static void mg_pll_disable(struct intel_display *display,
 	icl_pll_disable(display, pll, enable_reg);
 }
 
-static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
+static void icl_update_dpll_ref_clks(struct intel_display *display)
 {
 	/* No SSC ref */
-	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
+	display->dpll.ref_clks.nssc = display->cdclk.hw.ref;
 }
 
 static void icl_dump_hw_state(struct drm_printer *p,
@@ -4534,10 +4534,10 @@ static void readout_dpll_hw_state(struct intel_display *display,
 		    pll->info->name, pll->state.pipe_mask, pll->on);
 }
 
-void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
+void intel_dpll_update_ref_clks(struct intel_display *display)
 {
-	if (i915->display.dpll.mgr && i915->display.dpll.mgr->update_ref_clks)
-		i915->display.dpll.mgr->update_ref_clks(i915);
+	if (display->dpll.mgr && display->dpll.mgr->update_ref_clks)
+		display->dpll.mgr->update_ref_clks(display);
 }
 
 void intel_dpll_readout_hw_state(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index b6f2cbce13e4..3d988f17f31d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -423,7 +423,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
 void intel_shared_dpll_init(struct drm_i915_private *i915);
-void intel_dpll_update_ref_clks(struct drm_i915_private *i915);
+void intel_dpll_update_ref_clks(struct intel_display *display);
 void intel_dpll_readout_hw_state(struct intel_display *display);
 void intel_dpll_sanitize_state(struct intel_display *display);
 
-- 
2.34.1

