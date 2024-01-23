Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923DE8389E5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EEF10E181;
	Tue, 23 Jan 2024 09:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA6610E68D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706000480; x=1737536480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sEsvgpnLqkz95MRJotMGh2g750ufbNoHLoE3dXocKN4=;
 b=Huza2/nmJ9OieeSRpFuuLDQqAlT2bIWzBX4ja+aMIsU6j98R3z11lv0t
 AGT+Oy/V3Y5UEgNVmVlbUjfFFI1uUGWcDU/DtRpRffOCx2CFMMuIt+4DF
 II7XdV5JxogSVPsfH8MmFk/deMeUXUgmIlMZD3mVerapnLW949BQUsfQS
 UVMLDvbkdorcOQzbhSyeq4BK2M5AmAoqz7yZ8caQLNy3IknnL9X/YaBi+
 IhJillcRP+2FzCboJInT/11xH9+CNuvQe484uUqZHhsb8VbtY7LkuYu69
 /RcNYFGqmx1FnvVGGXAM5JGBxB91NdTIiYZSVKNSn6DhMVZOIiDCsl6Lb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="391882504"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="391882504"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:00:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820019992"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820019992"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 01:00:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 11:00:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/fbc: Move DPFC_CHICKEN programming into
 intel_fbc_program_workarounds()
Date: Tue, 23 Jan 2024 11:00:51 +0200
Message-ID: <20240123090051.29818-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
References: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move all DPFC_CHICKEN programming into intel_fbc_program_workarounds().
We already have one thing programmed there, whereas the rest is strewn
about in intel_display_wa_apply() and init_clock_gating(). Since we have
a single place doing all the programming (and it's serialized by the
crtc commits) there should be no danger of rmw races.

Other FBC related workarounds also exist, but those require fiddling
with other registers that may also get programmed from other places,
so we'll need to think harder what to do with those.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c   |  8 -----
 drivers/gpu/drm/i915/display/intel_fbc.c      | 32 ++++++++++++++++--
 drivers/gpu/drm/i915/intel_clock_gating.c     | 33 -------------------
 3 files changed, 29 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index ac136fd992ba..e5a8022db664 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -10,20 +10,12 @@
 
 static void gen11_display_wa_apply(struct drm_i915_private *i915)
 {
-	/* Wa_1409120013 */
-	intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-		       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
-
 	/* Wa_14010594013 */
 	intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
 }
 
 static void xe_d_display_wa_apply(struct drm_i915_private *i915)
 {
-	/* Wa_1409120013 */
-	intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-		       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
-
 	/* Wa_14013723622 */
 	intel_de_rmw(i915, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f17a1afb4929..1a2d4d91a85f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -826,10 +826,36 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 
 static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
+
+	if (IS_SKYLAKE(i915) || IS_BROXTON(i915)) {
+		/*
+		 * WaFbcHighMemBwCorruptionAvoidance:skl,bxt
+		 * Display WA #0883: skl,bxt
+		 */
+		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
+			     0, DPFC_DISABLE_DUMMY0);
+	}
+
+	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) ||
+	    IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
+		/*
+		 * WaFbcNukeOnHostModify:skl,kbl,cfl
+		 * Display WA #0873: skl,kbl,cfl
+		 */
+		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
+			     0, DPFC_NUKE_ON_ANY_MODIFICATION);
+	}
+
+	/* Wa_1409120013:icl,jsl,tgl,dg1 */
+	if (IS_DISPLAY_VER(i915, 11, 12))
+		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
+			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
+
 	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
-	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
-		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
-			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
+	if (DISPLAY_VER(i915) >= 11 && !IS_DG2(i915))
+		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
+			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 }
 
 static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 9c21ce69bd98..39f23288e8a8 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -105,12 +105,6 @@ static void bxt_init_clock_gating(struct drm_i915_private *i915)
 	 * Display WA #0562: bxt
 	 */
 	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
-
-	/*
-	 * WaFbcHighMemBwCorruptionAvoidance:bxt
-	 * Display WA #0883: bxt
-	 */
-	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *i915)
@@ -396,13 +390,6 @@ static void cfl_init_clock_gating(struct drm_i915_private *i915)
 	 * Display WA #0562: cfl
 	 */
 	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
-
-	/*
-	 * WaFbcNukeOnHostModify:cfl
-	 * Display WA #0873: cfl
-	 */
-	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void kbl_init_clock_gating(struct drm_i915_private *i915)
@@ -427,13 +414,6 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
 	 * Display WA #0562: kbl
 	 */
 	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
-
-	/*
-	 * WaFbcNukeOnHostModify:kbl
-	 * Display WA #0873: kbl
-	 */
-	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *i915)
@@ -452,19 +432,6 @@ static void skl_init_clock_gating(struct drm_i915_private *i915)
 	 * Display WA #0562: skl
 	 */
 	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
-
-	/*
-	 * WaFbcNukeOnHostModify:skl
-	 * Display WA #0873: skl
-	 */
-	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
-			 0, DPFC_NUKE_ON_ANY_MODIFICATION);
-
-	/*
-	 * WaFbcHighMemBwCorruptionAvoidance:skl
-	 * Display WA #0883: skl
-	 */
-	intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0, DPFC_DISABLE_DUMMY0);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *i915)
-- 
2.43.0

