Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A562A2ECB8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 13:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F53310E50C;
	Mon, 10 Feb 2025 12:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EUGlQevd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8398210E517;
 Mon, 10 Feb 2025 12:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739191221; x=1770727221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6oal4HQnGn0oRAfIXcRVgX+sBfwoLh10vsGI6l4e4s4=;
 b=EUGlQevd8BiSKEMRblwRP4yzwVeXwG37h0o59UYyPAFDtWqdKNhRFeGu
 2A3TCWUW3+CAvMMlkwlmEdlr0b9TSFsq1Ieo2slIF8z96Xb4+omFL5o1D
 Tob7V/jJaenubUvXqorCty/7PabSHV3zObCJLRISLgXTgPX//kKY8Imk+
 fgCqGJErI4JEGSXcTqRe0rBSvorpITtblR3SCn7vezbMXZ/0dVvmzYeyk
 dXy1/j7tlzEsuDPLDA+2grHRph2VVTmG3YRzn8/CAtXD8zM8A410a5OgS
 tDldcErmXJvzGe0WfsOHUy4Sd/DZJIVtaARAPS3mIoUFI7JA87r0rQdpv A==;
X-CSE-ConnectionGUID: csMT7N+MSaGly/ZPdc3uNg==
X-CSE-MsgGUID: /pRbOHa4QMuy71YGtyxIWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40038352"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="40038352"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:40:21 -0800
X-CSE-ConnectionGUID: MR/ELUw+T4SLB+m9XW2Vcg==
X-CSE-MsgGUID: Vfs6JDawQyuluPZZK5Wgdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113063697"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 10 Feb 2025 04:40:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
Date: Mon, 10 Feb 2025 18:09:49 +0530
Message-Id: <20250210123950.3476620-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250210123950.3476620-1-suraj.kandpal@intel.com>
References: <20250210123950.3476620-1-suraj.kandpal@intel.com>
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

Use intel_display as an argument for intel_shared_dpll_init() and
replace drm_i915_private in function wherever possible.
While at it prefer using display->platform.xx over IS_PLATFORM.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 49 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +-
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 75b865bde1b9..fb8d24599061 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -448,7 +448,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	}
 
 	intel_plane_possible_crtcs_init(display);
-	intel_shared_dpll_init(i915);
+	intel_shared_dpll_init(display);
 	intel_fdi_pll_freq_update(i915);
 
 	intel_update_czclk(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1d69fa8b2ad0..42cb614855db 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2051,8 +2051,8 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 {
 	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
-	enum dpio_phy phy;
-	enum dpio_channel ch;
+	enum dpio_phy phy = DPIO_PHY0;
+	enum dpio_channel ch = DPIO_CH0;
 	u32 temp;
 
 	bxt_port_to_phy_channel(display, port, &phy, &ch);
@@ -4315,40 +4315,41 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
- * @i915: i915 device
+ * @display: intel_display device
  *
- * Initialize shared DPLLs for @i915.
+ * Initialize shared DPLLs for @display.
  */
-void intel_shared_dpll_init(struct drm_i915_private *i915)
+void intel_shared_dpll_init(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_dpll_mgr *dpll_mgr = NULL;
 	const struct dpll_info *dpll_info;
 	int i;
 
-	mutex_init(&i915->display.dpll.lock);
+	mutex_init(&display->dpll.lock);
 
-	if (DISPLAY_VER(i915) >= 14 || IS_DG2(i915))
+	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
-	else if (IS_ALDERLAKE_P(i915))
+	else if (display->platform.alderlake_p)
 		dpll_mgr = &adlp_pll_mgr;
-	else if (IS_ALDERLAKE_S(i915))
+	else if (display->platform.alderlake_s)
 		dpll_mgr = &adls_pll_mgr;
-	else if (IS_DG1(i915))
+	else if (display->platform.dg1)
 		dpll_mgr = &dg1_pll_mgr;
-	else if (IS_ROCKETLAKE(i915))
+	else if (display->platform.rocketlake)
 		dpll_mgr = &rkl_pll_mgr;
-	else if (DISPLAY_VER(i915) >= 12)
+	else if (DISPLAY_VER(display) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
-	else if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915))
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
 		dpll_mgr = &ehl_pll_mgr;
-	else if (DISPLAY_VER(i915) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		dpll_mgr = &icl_pll_mgr;
-	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	else if (display->platform.geminilake || display->platform.broxton)
 		dpll_mgr = &bxt_pll_mgr;
-	else if (DISPLAY_VER(i915) == 9)
+	else if (DISPLAY_VER(display) == 9)
 		dpll_mgr = &skl_pll_mgr;
-	else if (HAS_DDI(i915))
+	else if (HAS_DDI(display))
 		dpll_mgr = &hsw_pll_mgr;
 	else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
 		dpll_mgr = &pch_pll_mgr;
@@ -4359,20 +4360,20 @@ void intel_shared_dpll_init(struct drm_i915_private *i915)
 	dpll_info = dpll_mgr->dpll_info;
 
 	for (i = 0; dpll_info[i].name; i++) {
-		if (drm_WARN_ON(&i915->drm,
-				i >= ARRAY_SIZE(i915->display.dpll.shared_dplls)))
+		if (drm_WARN_ON(display->drm,
+				i >= ARRAY_SIZE(display->dpll.shared_dplls)))
 			break;
 
 		/* must fit into unsigned long bitmask on 32bit */
-		if (drm_WARN_ON(&i915->drm, dpll_info[i].id >= 32))
+		if (drm_WARN_ON(display->drm, dpll_info[i].id >= 32))
 			break;
 
-		i915->display.dpll.shared_dplls[i].info = &dpll_info[i];
-		i915->display.dpll.shared_dplls[i].index = i;
+		display->dpll.shared_dplls[i].info = &dpll_info[i];
+		display->dpll.shared_dplls[i].index = i;
 	}
 
-	i915->display.dpll.mgr = dpll_mgr;
-	i915->display.dpll.num_shared_dpll = i;
+	display->dpll.mgr = dpll_mgr;
+	display->dpll.num_shared_dpll = i;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3d988f17f31d..caffb084830c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -35,7 +35,6 @@
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
 
 enum tc_port;
-struct drm_i915_private;
 struct drm_printer;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -422,7 +421,7 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
-void intel_shared_dpll_init(struct drm_i915_private *i915);
+void intel_shared_dpll_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
 void intel_dpll_readout_hw_state(struct intel_display *display);
 void intel_dpll_sanitize_state(struct intel_display *display);
-- 
2.34.1

