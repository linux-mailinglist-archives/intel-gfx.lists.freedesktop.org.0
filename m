Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E83796DB3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 01:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8961310E73E;
	Wed,  6 Sep 2023 23:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA06B10E35B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 23:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694044062; x=1725580062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v86UjBE4S1XbcSVVFEikP/oaLZKZsvcOFuZQn+9I6TY=;
 b=ihjv9ACcBL7C40aEJOBRaz955viGCi+CTJ0E1r8lx2HiU0wjFqKbk8Pz
 sYYfs3CsZGeSoUG817mWZt33A8JN4DrIp+0MvDmA68/4CO4TGLE76RC9B
 lFrys6jFy49Fgehkmk5jpcq3aot0mWhK8jp92PMrAZREQl3mySgy60PKB
 PyYbc3Ngr2FBKcMo1ySUvPRKjiBtPcKOJXz2GwpG4PGI3Y+ftVGHpsV4r
 CA8ZvuI4Zp8NU0op9iKejqV+bliO6DgqIu2lSxx2kT8ifKTCbA4u3rGPe
 cSr/EElp4zmk87B0ZLrLoQn937Xdkesvkuphinkz501YqfYfIScfQHeUs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357526297"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357526297"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865363207"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865363207"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 16:47:36 -0700
Message-ID: <20230906234732.3728630-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906234732.3728630-6-matthew.d.roper@intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: Extract display
 workarounds from clock gating init
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Several of the register updates that are currently done in the clock
gating init functions are actually display workarounds that should move
into the display-specific part of the code.  Furthermore, some of the
registers being programmed don't even have anything to do with clock
gating at all.

Extract the display workarounds for gen11 and later platforms to a
dedicated display/intel_display_wa.c file to keep these separate from
the SOC / sgunit clock gating that we need on some platforms.  The gen11
cutoff here is selected somewhat arbitrarily; this is the point where
workarounds were first assigned dedicated lineage numbers that can be
easily looked up and confirmed in the modern workaround database.  It
also avoids any confusion on older platforms where the exact boundaries
between display/GT/other IP blocks wasn't as well-defined as it is
today.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../gpu/drm/i915/display/intel_display_wa.c   | 47 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   | 13 +++++
 drivers/gpu/drm/i915/intel_clock_gating.c     | 45 ++----------------
 4 files changed, 64 insertions(+), 42 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_wa.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_wa.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 79f65eff6bb2..1b2e02e9d92c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -248,6 +248,7 @@ i915-y += \
 	display/intel_display_power_well.o \
 	display/intel_display_reset.o \
 	display/intel_display_rps.o \
+	display/intel_display_wa.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
new file mode 100644
index 000000000000..f8ee02c72abe
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_de.h"
+
+static void gen11_display_wa_apply(struct drm_i915_private *i915)
+{
+	/* Wa_1409120013 */
+	intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+		       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+
+	/* Wa_14010594013 */
+	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
+}
+
+static void xe_d_display_wa_apply(struct drm_i915_private *i915)
+{
+	/* Wa_1409120013 */
+	intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
+		       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+
+	/* Wa_14013723622 */
+	intel_de_rmw(i915, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0);
+}
+
+static void adlp_display_wa_apply(struct drm_i915_private *i915)
+{
+	/* Wa_22011091694:adlp */
+	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
+
+	/* Bspec/49189 Initialize Sequence */
+	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
+}
+
+void intel_display_wa_apply(struct drm_i915_private *i915)
+{
+	if (IS_ALDERLAKE_P(i915))
+		adlp_display_wa_apply(i915);
+	else if (DISPLAY_VER(i915) == 12)
+		xe_d_display_wa_apply(i915);
+	else if (DISPLAY_VER(i915) == 11)
+		gen11_display_wa_apply(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
new file mode 100644
index 000000000000..63201d09852c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_WA_H__
+#define __INTEL_DISPLAY_WA_H__
+
+struct drm_i915_private;
+
+void intel_display_wa_apply(struct drm_i915_private *i915);
+
+#endif
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 2a4714c662b8..abfb6bdbd367 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -28,6 +28,7 @@
 #include "display/intel_de.h"
 #include "display/intel_display.h"
 #include "display/intel_display_trace.h"
+#include "display/intel_display_wa.h"
 #include "display/skl_watermark.h"
 
 #include "gt/intel_engine_regs.h"
@@ -349,39 +350,6 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *i915,
 	intel_uncore_write(&i915->uncore, GEN7_MISCCPCTL, misccpctl);
 }
 
-static void icl_init_clock_gating(struct drm_i915_private *i915)
-{
-	/* Wa_1409120013:icl,ehl */
-	intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
-
-	/*Wa_14010594013:icl, ehl */
-	intel_uncore_rmw(&i915->uncore, GEN8_CHICKEN_DCPR_1,
-			 0, ICL_DELAY_PMRSP);
-}
-
-static void gen12lp_init_clock_gating(struct drm_i915_private *i915)
-{
-	/* Wa_1409120013 */
-	if (DISPLAY_VER(i915) == 12)
-		intel_uncore_write(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
-
-	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
-	if (DISPLAY_VER(i915) == 12)
-		intel_uncore_rmw(&i915->uncore, CLKREQ_POLICY,
-				 CLKREQ_POLICY_MEM_UP_OVRD, 0);
-}
-
-static void adlp_init_clock_gating(struct drm_i915_private *i915)
-{
-	/* Wa_22011091694:adlp */
-	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
-
-	/* Bspec/49189 Initialize Sequence */
-	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
-}
-
 static void xehpsdv_init_clock_gating(struct drm_i915_private *i915)
 {
 	/* Wa_22010146351:xehpsdv */
@@ -782,6 +750,8 @@ static void i830_init_clock_gating(struct drm_i915_private *i915)
 void intel_clock_gating_init(struct drm_i915_private *i915)
 {
 	i915->clock_gating_funcs->init_clock_gating(i915);
+
+	intel_display_wa_apply(i915);
 }
 
 static void nop_init_clock_gating(struct drm_i915_private *i915)
@@ -798,9 +768,6 @@ static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs =
 CG_FUNCS(pvc);
 CG_FUNCS(dg2);
 CG_FUNCS(xehpsdv);
-CG_FUNCS(adlp);
-CG_FUNCS(gen12lp);
-CG_FUNCS(icl);
 CG_FUNCS(cfl);
 CG_FUNCS(skl);
 CG_FUNCS(kbl);
@@ -839,12 +806,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
 	else if (IS_XEHPSDV(i915))
 		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
-	else if (IS_ALDERLAKE_P(i915))
-		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
-	else if (DISPLAY_VER(i915) == 12)
-		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
-	else if (GRAPHICS_VER(i915) == 11)
-		i915->clock_gating_funcs = &icl_clock_gating_funcs;
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		i915->clock_gating_funcs = &cfl_clock_gating_funcs;
 	else if (IS_SKYLAKE(i915))
-- 
2.41.0

