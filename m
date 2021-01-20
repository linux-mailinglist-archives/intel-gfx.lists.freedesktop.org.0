Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791BD2FD677
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 18:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1306E0C2;
	Wed, 20 Jan 2021 17:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 831526E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 17:07:50 +0000 (UTC)
IronPort-SDR: sx9Y0ysF6FN/SqIWVklVBPTto5qTV6ogLwvKvyfXUbgwKS78QWrWTDmn4hRvY0pe5RO2m0WsvM
 vMJqALBgF5Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="158321026"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="158321026"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:06:24 -0800
IronPort-SDR: Clcv+X7f7hwvkxUR0DATvvU6Q2vDF6vhQCmSFTsiq4PZ6vE82A7GY23LSPGjJ4XW1DSmdHfzaA
 Y64szs4Hd59w==
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="356117951"
Received: from ichakrab-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.176.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 09:06:22 -0800
Date: Wed, 20 Jan 2021 09:06:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210120170617.nhfusl5e3srbulim@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210119192931.1116500-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119192931.1116500-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both patches applied to topic/adl-s-enabling branch.

Lucas De Marchi

On Tue, Jan 19, 2021 at 11:29:30AM -0800, Lucas De Marchi wrote:
>From: Aditya Swarup <aditya.swarup@intel.com>
>
>TGL adds another level of indirection for applying WA based on stepping
>information rather than PCI REVID. So change TGL_REVID enum into
>stepping enum and use PCI REVID as index into revid to stepping table to
>fetch correct display and GT stepping for application of WAs as
>suggested by Matt Roper.
>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> .../drm/i915/display/intel_display_power.c    |  2 +-
> drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
> drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
> drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++-----
> drivers/gpu/drm/i915/i915_drv.h               | 50 +++++++++----------
> drivers/gpu/drm/i915/intel_pm.c               |  2 +-
> 6 files changed, 43 insertions(+), 43 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index c11c37c65d86..708f0b7e0990 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -5340,7 +5340,7 @@ static void tgl_bw_buddy_init(struct drm_i915_privat=
e *dev_priv)
> 	int config, i;
>
> 	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>-	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>+	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
> 		/* Wa_1409767108:tgl,dg1 */
> 		table =3D wa_1409767108_buddy_page_masks;
> 	else
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 1e6c1fa59d4a..909bdd7ff4ff 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -550,7 +550,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_d=
p)
>
> 	if (dev_priv->psr.psr2_sel_fetch_enabled) {
> 		/* WA 1408330847 */
>-		if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>+		if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
> 		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
> 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>@@ -1102,7 +1102,7 @@ static void intel_psr_disable_locked(struct intel_dp=
 *intel_dp)
>
> 	/* WA 1408330847 */
> 	if (dev_priv->psr.psr2_sel_fetch_enabled &&
>-	    (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>+	    (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
> 	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
> 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm=
/i915/display/intel_sprite.c
>index adc5f088d458..ff7c6203eaf9 100644
>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>@@ -3059,7 +3059,7 @@ static bool gen12_plane_supports_mc_ccs(struct drm_i=
915_private *dev_priv,
> {
> 	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> 	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>-	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
>+	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
> 		return false;
>
> 	return plane_id < PLANE_SPRITE4;
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 3fdcd5ff71dd..c7420a2d2ca3 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -71,17 +71,17 @@ const struct i915_rev_steppings kbl_revids[] =3D {
> 	[7] =3D { .gt_stepping =3D KBL_REVID_G0, .disp_stepping =3D KBL_REVID_C0=
 },
> };
>
>-const struct i915_rev_steppings tgl_uy_revids[] =3D {
>-	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID_A0=
 },
>-	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID_C0=
 },
>-	[2] =3D { .gt_stepping =3D TGL_REVID_B1, .disp_stepping =3D TGL_REVID_C0=
 },
>-	[3] =3D { .gt_stepping =3D TGL_REVID_C0, .disp_stepping =3D TGL_REVID_D0=
 },
>+const struct i915_rev_steppings tgl_uy_revid_step_tbl[] =3D {
>+	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>+	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_C0 },
>+	[2] =3D { .gt_stepping =3D STEP_B1, .disp_stepping =3D STEP_C0 },
>+	[3] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_D0 },
> };
>
> /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the s=
ame HW */
>-const struct i915_rev_steppings tgl_revids[] =3D {
>-	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID_B0=
 },
>-	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID_D0=
 },
>+const struct i915_rev_steppings tgl_revid_step_tbl[] =3D {
>+	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_B0 },
>+	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
> };
>
> static void wa_init_start(struct i915_wa_list *wal, const char *name, con=
st char *engine_name)
>@@ -1123,19 +1123,19 @@ tgl_gt_workarounds_init(struct drm_i915_private *i=
915, struct i915_wa_list *wal)
> 	gen12_gt_workarounds_init(i915, wal);
>
> 	/* Wa_1409420604:tgl */
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>+	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal,
> 			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
> 			    CPSSUNIT_CLKGATE_DIS);
>
> 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>+	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal,
> 			    SLICE_UNIT_LEVEL_CLKGATE,
> 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>
> 	/* Wa_1408615072:tgl[a0] */
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>+	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> 			    VSUNIT_CLKGATE_DIS_TGL);
> }
>@@ -1613,7 +1613,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)
> 	struct drm_i915_private *i915 =3D engine->i915;
>
> 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>-	    IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>+	    IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
> 		/*
> 		 * Wa_1607138336:tgl[a0],dg1[a0]
> 		 * Wa_1607063988:tgl[a0],dg1[a0]
>@@ -1623,7 +1623,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)
> 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> 	}
>
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>+	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
> 		/*
> 		 * Wa_1606679103:tgl
> 		 * (see also Wa_1606682166:icl)
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 8376cff5ba86..496a3eda25fb 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1559,54 +1559,54 @@ extern const struct i915_rev_steppings kbl_revids[=
];
> 	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
>
> enum {
>-	TGL_REVID_A0,
>-	TGL_REVID_B0,
>-	TGL_REVID_B1,
>-	TGL_REVID_C0,
>-	TGL_REVID_D0,
>+	STEP_A0,
>+	STEP_B0,
>+	STEP_B1,
>+	STEP_C0,
>+	STEP_D0,
> };
>
>-#define TGL_UY_REVIDS_SIZE	4
>-#define TGL_REVIDS_SIZE		2
>+#define TGL_UY_REVID_STEP_TBL_SIZE	4
>+#define TGL_REVID_STEP_TBL_SIZE		2
>
>-extern const struct i915_rev_steppings tgl_uy_revids[TGL_UY_REVIDS_SIZE];
>-extern const struct i915_rev_steppings tgl_revids[TGL_REVIDS_SIZE];
>+extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID=
_STEP_TBL_SIZE];
>+extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_=
TBL_SIZE];
>
> static inline const struct i915_rev_steppings *
>-tgl_revids_get(struct drm_i915_private *dev_priv)
>+tgl_stepping_get(struct drm_i915_private *dev_priv)
> {
> 	u8 revid =3D INTEL_REVID(dev_priv);
> 	u8 size;
>-	const struct i915_rev_steppings *tgl_revid_tbl;
>+	const struct i915_rev_steppings *revid_step_tbl;
>
> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>-		tgl_revid_tbl =3D tgl_uy_revids;
>-		size =3D ARRAY_SIZE(tgl_uy_revids);
>+		revid_step_tbl =3D tgl_uy_revid_step_tbl;
>+		size =3D ARRAY_SIZE(tgl_uy_revid_step_tbl);
> 	} else {
>-		tgl_revid_tbl =3D tgl_revids;
>-		size =3D ARRAY_SIZE(tgl_revids);
>+		revid_step_tbl =3D tgl_revid_step_tbl;
>+		size =3D ARRAY_SIZE(tgl_revid_step_tbl);
> 	}
>
> 	revid =3D min_t(u8, revid, size - 1);
>
>-	return &tgl_revid_tbl[revid];
>+	return &revid_step_tbl[revid];
> }
>
>-#define IS_TGL_DISP_REVID(p, since, until) \
>+#define IS_TGL_DISP_STEPPING(p, since, until) \
> 	(IS_TIGERLAKE(p) && \
>-	 tgl_revids_get(p)->disp_stepping >=3D (since) && \
>-	 tgl_revids_get(p)->disp_stepping <=3D (until))
>+	 tgl_stepping_get(p)->disp_stepping >=3D (since) && \
>+	 tgl_stepping_get(p)->disp_stepping <=3D (until))
>
>-#define IS_TGL_UY_GT_REVID(p, since, until) \
>+#define IS_TGL_UY_GT_STEPPING(p, since, until) \
> 	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>-	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>-	 tgl_revids_get(p)->gt_stepping <=3D (until))
>+	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
>+	 tgl_stepping_get(p)->gt_stepping <=3D (until))
>
>-#define IS_TGL_GT_REVID(p, since, until) \
>+#define IS_TGL_GT_STEPPING(p, since, until) \
> 	(IS_TIGERLAKE(p) && \
> 	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
>-	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>-	 tgl_revids_get(p)->gt_stepping <=3D (until))
>+	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
>+	 tgl_stepping_get(p)->gt_stepping <=3D (until))
>
> #define RKL_REVID_A0		0x0
> #define RKL_REVID_B0		0x1
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_=
pm.c
>index 992fce8b8d13..9180db1bfda7 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -7110,7 +7110,7 @@ static void gen12lp_init_clock_gating(struct drm_i91=
5_private *dev_priv)
> 			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>
> 	/* Wa_1409825376:tgl (pre-prod)*/
>-	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
>+	if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
> 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_=
read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> 			   TGL_VRH_GATING_DIS);
>
>-- =

>2.29.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
