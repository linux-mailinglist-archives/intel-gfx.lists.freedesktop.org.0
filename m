Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C601432357D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 02:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB8B6E128;
	Wed, 24 Feb 2021 01:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF03E6E128
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 01:54:56 +0000 (UTC)
IronPort-SDR: KUnuvW9bzFDqcWFleSsdj5Z5QA8XNe4F6ZTEvVcsCmTZS5lMrB057yfnxAJkg6h3o/Kg0ZoSJe
 zr9Qm8jO0vMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="185126887"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="185126887"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 17:54:55 -0800
IronPort-SDR: C42uJdsCv4uoTM8GGx9p2NJrXddGWENlNZVo0Z2sqZKBelpuV7wvO9wXooxEau2qSsQ9MrkKcH
 2Bmbx4zhQ9uA==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="423858340"
Received: from mdweiler-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.95.214])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 17:54:55 -0800
Date: Tue, 23 Feb 2021 17:54:55 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210224015455.4z2mhbtmeofzelxj@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <cover.1614094093.git.jani.nikula@intel.com>
 <51d718e2b6f0543c87d19994e55acc41d4fe8c48.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51d718e2b6f0543c87d19994e55acc41d4fe8c48.1614094093.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915: rename
 DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 23, 2021 at 05:35:11PM +0200, Jani Nikula wrote:
>Matter of taste. STEP matches the enums.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
> drivers/gpu/drm/i915/display/intel_psr.c           |  4 ++--
> drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
> drivers/gpu/drm/i915/gt/intel_workarounds.c        | 10 +++++-----
> drivers/gpu/drm/i915/i915_drv.h                    | 10 +++++-----
> drivers/gpu/drm/i915/intel_device_info.c           |  2 +-
> drivers/gpu/drm/i915/intel_pm.c                    |  2 +-
> 7 files changed, 16 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index f00c1750febd..1f7b2700947a 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -5349,7 +5349,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
>
> 	if (IS_ALDERLAKE_S(dev_priv) ||
> 	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>-	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
>+	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> 		/* Wa_1409767108:tgl,dg1,adl-s */
> 		table = wa_1409767108_buddy_page_masks;
> 	else
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>index 7c6e561f86c1..da5084b54eb6 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -548,7 +548,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>
> 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> 		/* WA 1408330847 */
>-		if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
>+		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||

I always hated the DISP vs DISPLAY. It should be in the commit message.

But if you are doing the s/STEPPING/STEP/, shouldn't the filename also use
step and all the functions/structs?

Lucas De Marchi

> 		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
> 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>@@ -1103,7 +1103,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>
> 	/* WA 1408330847 */
> 	if (intel_dp->psr.psr2_sel_fetch_enabled &&
>-	    (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
>+	    (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
> 	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
> 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>index 1f335cb09149..c4edfc673d47 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -1858,7 +1858,7 @@ static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_priv,
> {
> 	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> 	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>-	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
>+	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> 		return false;
>
> 	return plane_id < PLANE_SPRITE4;
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index 0c502a733779..4f8f9fbf6619 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1091,19 +1091,19 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> 	gen12_gt_workarounds_init(i915, wal);
>
> 	/* Wa_1409420604:tgl */
>-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal,
> 			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
> 			    CPSSUNIT_CLKGATE_DIS);
>
> 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal,
> 			    SLICE_UNIT_LEVEL_CLKGATE,
> 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>
> 	/* Wa_1408615072:tgl[a0] */
>-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> 			    VSUNIT_CLKGATE_DIS_TGL);
> }
>@@ -1581,7 +1581,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 	struct drm_i915_private *i915 = engine->i915;
>
> 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>-	    IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
>+	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
> 		/*
> 		 * Wa_1607138336:tgl[a0],dg1[a0]
> 		 * Wa_1607063988:tgl[a0],dg1[a0]
>@@ -1591,7 +1591,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> 	}
>
>-	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
>+	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
> 		/*
> 		 * Wa_1606679103:tgl
> 		 * (see also Wa_1606682166:icl)
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 2d2ebf284e64..927a32427197 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1510,15 +1510,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_JSL_EHL_REVID(p, since, until) \
> 	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
>
>-#define IS_TGL_DISP_STEPPING(__i915, since, until) \
>+#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
> 	(IS_TIGERLAKE(__i915) && \
> 	 IS_DISPLAY_STEP(__i915, since, until))
>
>-#define IS_TGL_UY_GT_STEPPING(__i915, since, until) \
>+#define IS_TGL_UY_GT_STEP(__i915, since, until) \
> 	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> 	 IS_GT_STEP(__i915, since, until))
>
>-#define IS_TGL_GT_STEPPING(__i915, since, until) \
>+#define IS_TGL_GT_STEP(__i915, since, until) \
> 	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> 	 IS_GT_STEP(__i915, since, until))
>
>@@ -1535,11 +1535,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_DG1_REVID(p, since, until) \
> 	(IS_DG1(p) && IS_REVID(p, since, until))
>
>-#define IS_ADLS_DISP_STEPPING(__i915, since, until) \
>+#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> 	(IS_ALDERLAKE_S(__i915) && \
> 	 IS_DISPLAY_STEP(__i915, since, until))
>
>-#define IS_ADLS_GT_STEPPING(__i915, since, until) \
>+#define IS_ADLS_GT_STEP(__i915, since, until) \
> 	(IS_ALDERLAKE_S(__i915) && \
> 	 IS_GT_STEP(__i915, since, until))
>
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index aeb28d589b2b..de02207f6ec6 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -251,7 +251,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> 	enum pipe pipe;
>
> 	/* Wa_14011765242: adl-s A0 */
>-	if (IS_ADLS_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0))
>+	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
> 		for_each_pipe(dev_priv, pipe)
> 			runtime->num_scalers[pipe] = 0;
> 	else if (INTEL_GEN(dev_priv) >= 10) {
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>index dbf87892193a..e16f5e498a86 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -7070,7 +7070,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> 			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>
> 	/* Wa_1409825376:tgl (pre-prod)*/
>-	if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
>+	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1))
> 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> 			   TGL_VRH_GATING_DIS);
>
>-- 
>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
