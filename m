Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA6E2C4F95
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70ACB6E59F;
	Thu, 26 Nov 2020 07:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019816E59D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:37:25 +0000 (UTC)
IronPort-SDR: qMhPuwdK5u5sqWHh4NS1Cafd8j0GsW/rzuxqVr2xcRunmLxcPmk0y0NQ3gbYBsBp+kHmunondT
 cfKVHIOe09bQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172348247"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="172348247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:37:25 -0800
IronPort-SDR: NnCfnfg01iHsMEvxKWwhXnpGUhqE3PR1Fqg6qgy0lGUP9ZhCkOJK0/A3fLjSFtpkdmi5EkOBH/
 EpRNx3tL+aeA==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="343852093"
Received: from ryanjamx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.30.192])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:37:25 -0800
Date: Wed, 25 Nov 2020 23:37:24 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201126073724.3tb55cnixyk2lxr2@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201126070041.369530-1-aditya.swarup@intel.com>
 <20201126070041.369530-2-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126070041.369530-2-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add bound checks and
 simplify TGL REVID macros
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 11:00:41PM -0800, Aditya Swarup wrote:
>Add bound checks for TGL REV ID array. Since, there might
>be a possibility of using older kernels on latest platform
>revisions, resulting in out of bounds access for rev ID array.
>In this scenario, use the latest rev ID available and apply
>those WAs.
>
>Also, simplify GT macro for TGL rev ID to reuse tgl_revids_get().
>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c |  8 ++---
> drivers/gpu/drm/i915/i915_drv.h             | 36 +++++++++++++--------
> 2 files changed, 26 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index a82554baa6ac..5e2563529b5f 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1250,13 +1250,13 @@ tgl_gt_workarounds_init(struct drm_i915_private *i=
915, struct i915_wa_list *wal)
> 	gen12_gt_workarounds_init(i915, wal);
>
> 	/* Wa_1409420604:tgl */
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>+	if (IS_TGL_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))

not seeing what's preventing this WA to be applied on !(U || Y) sku now.
See below.

> 		wa_write_or(wal,
> 			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
> 			    CPSSUNIT_CLKGATE_DIS);
>
> 	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>+	if (IS_TGL_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
> 		wa_write_or(wal,
> 			    SLICE_UNIT_LEVEL_CLKGATE,
> 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>@@ -1734,7 +1734,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)
> 	struct drm_i915_private *i915 =3D engine->i915;
>
> 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>-	    IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>+	    IS_TGL_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> 		/*
> 		 * Wa_1607138336:tgl[a0],dg1[a0]
> 		 * Wa_1607063988:tgl[a0],dg1[a0]
>@@ -1744,7 +1744,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, s=
truct i915_wa_list *wal)
> 			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> 	}
>
>-	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>+	if (IS_TGL_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> 		/*
> 		 * Wa_1606679103:tgl
> 		 * (see also Wa_1606682166:icl)
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 0a3ee4f9dc0a..3d0ef6b60337 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1572,16 +1572,30 @@ enum {
> 	TGL_REVID_D0,
> };
>
>-extern const struct i915_rev_steppings tgl_uy_revids[];
>-extern const struct i915_rev_steppings tgl_revids[];
>+#define TGL_UY_REVIDS_SIZE	4
>+#define TGL_REVIDS_SIZE		2
>+
>+extern const struct i915_rev_steppings tgl_uy_revids[TGL_UY_REVIDS_SIZE];
>+extern const struct i915_rev_steppings tgl_revids[TGL_REVIDS_SIZE];
>
> static inline const struct i915_rev_steppings *
> tgl_revids_get(struct drm_i915_private *dev_priv)
> {
>-	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>-		return &tgl_uy_revids[INTEL_REVID(dev_priv)];
>-	else
>-		return &tgl_revids[INTEL_REVID(dev_priv)];
>+	u8 revid =3D INTEL_REVID(dev_priv);
>+	u8 size;
>+	const struct i915_rev_steppings *tgl_revid_tbl;
>+
>+	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>+		tgl_revid_tbl =3D tgl_uy_revids;
>+		size =3D ARRAY_SIZE(tgl_uy_revids);
>+	} else {
>+		tgl_revid_tbl =3D tgl_revids;
>+		size =3D ARRAY_SIZE(tgl_revids);
>+	}
>+
>+	revid =3D min_t(u8, revid, size - 1);
>+
>+	return &tgl_revid_tbl[revid];
> }
>
> #define IS_TGL_DISP_REVID(p, since, until) \
>@@ -1589,16 +1603,10 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
> 	 tgl_revids_get(p)->disp_stepping >=3D (since) && \
> 	 tgl_revids_get(p)->disp_stepping <=3D (until))
>
>-#define IS_TGL_UY_GT_REVID(p, since, until) \
>-	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>-	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>-	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>-
> #define IS_TGL_GT_REVID(p, since, until) \
> 	(IS_TIGERLAKE(p) && \
>-	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \

so, previously this check would prevent the WA to be applied if it's not
U or Y sku. Now, in that case you are going to simply apply it. =

See comment in intel_workarounds.c:

/* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the sam=
e HW */
const struct i915_rev_steppings tgl_revids[] =3D {

Lucas De Marchi

>-	 tgl_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>-	 tgl_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>+	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>+	 tgl_revids_get(p)->gt_stepping <=3D (until))
>
> #define RKL_REVID_A0		0x0
> #define RKL_REVID_B0		0x1
>-- =

>2.27.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
