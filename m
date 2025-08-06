Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A02DB1CA21
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A0F10E7C8;
	Wed,  6 Aug 2025 16:56:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BSKBVNDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4494C10E7C7;
 Wed,  6 Aug 2025 16:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499388; x=1786035388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FxTFplndw3S2Uvsn7dsv/cLTazTT0VVu2dIpTHCDDDc=;
 b=BSKBVNDbZXaWkTb2KcizD00A+hNejyCl4FlhiEIY4AM6dPCA0AoQiPdQ
 aM9xWlyOsRuGkSPqL/PG2Qf04Dfu8t8Fesk6PFMDeBRV25x4ZMunR+tV5
 gQXnnRqlQJp28lLTYYR23qDCMNtBiq114GD7TNBkC95Gfca3AnU5oxrDL
 kXS6H5k5GyxSn7DzAugByd2TyzkjpVkGrS+TcfhQtZ3bhHWbPzuOo/g3u
 3ixOYwmyUuBk74YdEU7bWXKnI0hvZItJppqrjQc1y+eI2irkj17JV+iA9
 khgrEPSfsMPY9AVNT8Tyo2R8aEr1SK1zFR+wcEI8V+LbZ/vlZhY1FmFiP w==;
X-CSE-ConnectionGUID: Ekzek/uyTtuuQrFOD3zc4A==
X-CSE-MsgGUID: xJyawtm1SfadDC3eRRxtSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56691605"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56691605"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:28 -0700
X-CSE-ConnectionGUID: ntQUb8mdTT2XgYpxtJECiQ==
X-CSE-MsgGUID: gbNsXkcYRtq6yMLHDnHwGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168999930"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/15] drm/i915/reg: separate VLV_DSPCLK_GATE_D from
 DSPCLK_GATE_D
Date: Wed,  6 Aug 2025 19:55:15 +0300
Message-Id: <ac16d9d5192595944bf9bcf70aa721b504bc90c0.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
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

All the places that use DSPCLK_GATE_D are specific to certain platforms,
and the parametrization of it to support VLV/CHV MMIO display base isn't
really buying us anything. Add a separate macro for VLV_DSPCLK_GATE_D
and use it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c            | 5 ++---
 drivers/gpu/drm/i915/display/vlv_dsi.c                  | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h                         | 3 ++-
 drivers/gpu/drm/i915/intel_clock_gating.c               | 4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6efe5524cbbf..31c2a07bb188 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1209,7 +1209,7 @@ static void vlv_init_display_clock_gating(struct intel_display *display)
 	 * (and never recovering) in this case. intel_dsi_post_disable() will
 	 * clear it when we turn off the display.
 	 */
-	intel_de_rmw(display, DSPCLK_GATE_D(display),
+	intel_de_rmw(display, VLV_DSPCLK_GATE_D,
 		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 6a74805570e1..063335053d13 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -219,7 +219,7 @@ static void pnv_gmbus_clock_gating(struct intel_display *display,
 				   bool enable)
 {
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	intel_de_rmw(display, DSPCLK_GATE_D(display),
+	intel_de_rmw(display, DSPCLK_GATE_D,
 		     PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
 		     !enable ? PNV_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 159a5f998ea0..272f9e7af4d4 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -217,10 +217,9 @@ static void i830_overlay_clock_gating(struct intel_display *display,
 
 	/* WA_OVERLAY_CLKGATE:alm */
 	if (enable)
-		intel_de_write(display, DSPCLK_GATE_D(display), 0);
+		intel_de_write(display, DSPCLK_GATE_D, 0);
 	else
-		intel_de_write(display, DSPCLK_GATE_D(display),
-			       OVRUNIT_CLOCK_GATE_DISABLE);
+		intel_de_write(display, DSPCLK_GATE_D, OVRUNIT_CLOCK_GATE_DISABLE);
 
 	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
 	pci_bus_read_config_byte(pdev->bus,
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 6d9f3312de7e..c9a53fde79c4 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -761,7 +761,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 
 	if (display->platform.valleyview || display->platform.cherryview) {
 		/* Disable DPOunit clock gating, can stall pipe */
-		intel_de_rmw(display, DSPCLK_GATE_D(display),
+		intel_de_rmw(display, VLV_DSPCLK_GATE_D,
 			     0, DPOUNIT_CLOCK_GATE_DISABLE);
 	}
 
@@ -918,7 +918,7 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 	} else {
 		vlv_dsi_pll_disable(encoder);
 
-		intel_de_rmw(display, DSPCLK_GATE_D(display),
+		intel_de_rmw(display, VLV_DSPCLK_GATE_D,
 			     DPOUNIT_CLOCK_GATE_DISABLE, 0);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 03b895897f60..b283b25d8368 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -613,7 +613,8 @@
 #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
 #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
 
-#define DSPCLK_GATE_D(__i915)		_MMIO(DISPLAY_MMIO_BASE(__i915) + 0x6200)
+#define DSPCLK_GATE_D			_MMIO(0x6200)
+#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
 # define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
 # define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
 # define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index e501f4937510..467740969431 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -620,7 +620,7 @@ static void g4x_init_clock_gating(struct drm_i915_private *i915)
 		OVCUNIT_CLOCK_GATE_DISABLE;
 	if (IS_GM45(i915))
 		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
-	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D(i915), dspclk_gate);
+	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, dspclk_gate);
 
 	g4x_disable_trickle_feed(i915);
 }
@@ -631,7 +631,7 @@ static void i965gm_init_clock_gating(struct drm_i915_private *i915)
 
 	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(uncore, DSPCLK_GATE_D(i915), 0);
+	intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
 	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
-- 
2.39.5

