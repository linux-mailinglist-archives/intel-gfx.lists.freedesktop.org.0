Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A41782F2134
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 21:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0397D89D43;
	Mon, 11 Jan 2021 20:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A076489D43
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 20:57:54 +0000 (UTC)
IronPort-SDR: xsOmSrDs4xBof+rZ7rux+js8hxZXw9vxaEhcqC0Ec79MywJXKUJwyGoPPtyIRv66O8iD2Bys/t
 9ZRcdX27Y2Hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="165016797"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="165016797"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 12:57:45 -0800
IronPort-SDR: 5Wup33RVK6hV7Oqw3pIT06aH1ye8KchDQZXhi7knhldpfYvXGMaU7yRoxivlVOjINt2hLmSEoU
 /MNAX2drlflQ==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="423915830"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 12:57:45 -0800
Date: Mon, 11 Jan 2021 12:57:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210111205743.GC4758@mdroper-desk1.amr.corp.intel.com>
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <875z43w7kq.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875z43w7kq.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 11, 2021 at 10:18:45PM +0200, Jani Nikula wrote:
> On Mon, 11 Jan 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Fri, 08 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
> >> On Fri, Jan 08, 2021 at 03:18:52PM -0800, Aditya Swarup wrote:
> >>> TGL adds another level of indirection for applying WA based on steppi=
ng
> >>> information rather than PCI REVID. So change TGL_REVID enum into
> >>> stepping enum and use PCI REVID as index into revid to stepping table=
 to
> >>> fetch correct display and GT stepping for application of WAs as
> >>> suggested by Matt Roper.
> >>
> >> So to clarify the goal is to rename "revid" -> "stepping" because the
> >> values like "A1," "C0," etc. are't the actual PCI revision ID, but
> >> rather descriptions of the stepping of a given IP block; the enum valu=
es
> >> we use to represent those are arbitrary and don't matter as long as
> >> they're monotonically increasing for comparisons.  The PCI revision ID
> >> is just the input we use today to deduce what the IP steppings are, and
> >> there's talk that we could determine the IP steppings in a different w=
ay
> >> at some point in the future.
> >>
> >> Furthermore, since the same scheme will be used at least for ADL-S, we
> >> should drop the "TGL" prefix since there's no need to name these gener=
al
> >> enum values in a platform-specific manner.
> >>
> >> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> >>
> >> We should probably make the same kind of change to KBL (and use the sa=
me
> >> stepping enum) too since it has the same kind of extra indirection as
> >> TGL/ADL-S, but we can do that as a followup patch.
> >
> > FWIW I have a wip series changing the whole thing to abstract steppings
> > enums that are shared between platforms, but it's in a bit of limbo
> > because the previous revid changes were applied to drm-intel-gt-next,
> > and it's fallen pretty far out of sync with drm-intel-next. All of this
> > really belongs to drm-intel-next, but can't do that until the branches
> > sync up again.
> =

> Btw this series doesn't apply to drm-intel-next either, for the same
> reason, and the ADL-S platform definition and PCI IDs must *not* be
> applied to drm-intel-gt-next.

So to clarify, it looks like we have a bunch of revid changes to the
display code that got merged to the gt-next tree but not to the
intel-next tree?  Should we be going back and also merging /
cherry-picking those over to intel-next since that's where the display
changes are supposed to go, or is it too late to do that cleanly at this
point?

Going forward, what should the general strategy be for stuff like
platform definitions and such?  Merge such enablement patches to both
intel-next and gt-next at the same time so that the basic definitions
are available to both trees?  It seems like the whole split into two
trees really isn't working well and is just leading to more mistakes and
bottlenecks.  What benefit are we supposed to be getting from this
split?


Matt


> =

> BR,
> Jani.
> =

> >
> > My series also completely hides the arrays into a separate .c file,
> > because the externs with direct array access are turning into
> > nightmare. The ARRAY_SIZE() checks rely on the extern declaration and
> > the actual array definition to have the sizes in sync, but the compiler
> > does not check that. Really.
> >
> > IDK, feels like this merging this series is going to be extra churn.
> >
> >
> > BR,
> > Jani.
> >
> >
> >>
> >>
> >> Matt
> >>
> >>> =

> >>> Cc: Matt Roper <matthew.d.roper@intel.com>
> >>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> >>> ---
> >>>  .../drm/i915/display/intel_display_power.c    |  2 +-
> >>>  drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
> >>>  drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
> >>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++-----
> >>>  drivers/gpu/drm/i915/i915_drv.h               | 50 +++++++++--------=
--
> >>>  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
> >>>  6 files changed, 43 insertions(+), 43 deletions(-)
> >>> =

> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/dri=
vers/gpu/drm/i915/display/intel_display_power.c
> >>> index d52374f01316..bb04b502a442 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> >>> @@ -5340,7 +5340,7 @@ static void tgl_bw_buddy_init(struct drm_i915_p=
rivate *dev_priv)
> >>>  	int config, i;
> >>>  =

> >>>  	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> >>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
> >>> +	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
> >>>  		/* Wa_1409767108:tgl,dg1 */
> >>>  		table =3D wa_1409767108_buddy_page_masks;
> >>>  	else
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/d=
rm/i915/display/intel_psr.c
> >>> index c24ae69426cf..a93717178957 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >>> @@ -550,7 +550,7 @@ static void hsw_activate_psr2(struct intel_dp *in=
tel_dp)
> >>>  =

> >>>  	if (dev_priv->psr.psr2_sel_fetch_enabled) {
> >>>  		/* WA 1408330847 */
> >>> -		if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
> >>> +		if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
> >>>  		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
> >>>  			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> >>>  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> >>> @@ -1102,7 +1102,7 @@ static void intel_psr_disable_locked(struct int=
el_dp *intel_dp)
> >>>  =

> >>>  	/* WA 1408330847 */
> >>>  	if (dev_priv->psr.psr2_sel_fetch_enabled &&
> >>> -	    (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
> >>> +	    (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
> >>>  	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
> >>>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> >>>  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gp=
u/drm/i915/display/intel_sprite.c
> >>> index cf3589fd0ddb..4ce32df3855f 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> >>> @@ -3033,7 +3033,7 @@ static bool gen12_plane_supports_mc_ccs(struct =
drm_i915_private *dev_priv,
> >>>  {
> >>>  	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> >>>  	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> >>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
> >>> +	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
> >>>  		return false;
> >>>  =

> >>>  	return plane_id < PLANE_SPRITE4;
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gp=
u/drm/i915/gt/intel_workarounds.c
> >>> index c21a9726326a..111d01e2f81e 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> >>> @@ -71,17 +71,17 @@ const struct i915_rev_steppings kbl_revids[] =3D {
> >>>  	[7] =3D { .gt_stepping =3D KBL_REVID_G0, .disp_stepping =3D KBL_REV=
ID_C0 },
> >>>  };
> >>>  =

> >>> -const struct i915_rev_steppings tgl_uy_revids[] =3D {
> >>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REV=
ID_A0 },
> >>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REV=
ID_C0 },
> >>> -	[2] =3D { .gt_stepping =3D TGL_REVID_B1, .disp_stepping =3D TGL_REV=
ID_C0 },
> >>> -	[3] =3D { .gt_stepping =3D TGL_REVID_C0, .disp_stepping =3D TGL_REV=
ID_D0 },
> >>> +const struct i915_rev_steppings tgl_uy_revid_step_tbl[] =3D {
> >>> +	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
> >>> +	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_C0 },
> >>> +	[2] =3D { .gt_stepping =3D STEP_B1, .disp_stepping =3D STEP_C0 },
> >>> +	[3] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_D0 },
> >>>  };
> >>>  =

> >>>  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean =
the same HW */
> >>> -const struct i915_rev_steppings tgl_revids[] =3D {
> >>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REV=
ID_B0 },
> >>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REV=
ID_D0 },
> >>> +const struct i915_rev_steppings tgl_revid_step_tbl[] =3D {
> >>> +	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_B0 },
> >>> +	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
> >>>  };
> >>>  =

> >>>  static void wa_init_start(struct i915_wa_list *wal, const char *name=
, const char *engine_name)
> >>> @@ -1211,19 +1211,19 @@ tgl_gt_workarounds_init(struct drm_i915_priva=
te *i915, struct i915_wa_list *wal)
> >>>  	gen12_gt_workarounds_init(i915, wal);
> >>>  =

> >>>  	/* Wa_1409420604:tgl */
> >>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
> >>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> >>>  		wa_write_or(wal,
> >>>  			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
> >>>  			    CPSSUNIT_CLKGATE_DIS);
> >>>  =

> >>>  	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> >>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
> >>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> >>>  		wa_write_or(wal,
> >>>  			    SLICE_UNIT_LEVEL_CLKGATE,
> >>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> >>>  =

> >>>  	/* Wa_1408615072:tgl[a0] */
> >>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
> >>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
> >>>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> >>>  			    VSUNIT_CLKGATE_DIS_TGL);
> >>>  }
> >>> @@ -1700,7 +1700,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engi=
ne, struct i915_wa_list *wal)
> >>>  	struct drm_i915_private *i915 =3D engine->i915;
> >>>  =

> >>>  	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> >>> -	    IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> >>> +	    IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
> >>>  		/*
> >>>  		 * Wa_1607138336:tgl[a0],dg1[a0]
> >>>  		 * Wa_1607063988:tgl[a0],dg1[a0]
> >>> @@ -1710,7 +1710,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engi=
ne, struct i915_wa_list *wal)
> >>>  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> >>>  	}
> >>>  =

> >>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
> >>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
> >>>  		/*
> >>>  		 * Wa_1606679103:tgl
> >>>  		 * (see also Wa_1606682166:icl)
> >>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i=
915_drv.h
> >>> index 5e5bcef20e33..11d6e8abde46 100644
> >>> --- a/drivers/gpu/drm/i915/i915_drv.h
> >>> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >>> @@ -1559,54 +1559,54 @@ extern const struct i915_rev_steppings kbl_re=
vids[];
> >>>  	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
> >>>  =

> >>>  enum {
> >>> -	TGL_REVID_A0,
> >>> -	TGL_REVID_B0,
> >>> -	TGL_REVID_B1,
> >>> -	TGL_REVID_C0,
> >>> -	TGL_REVID_D0,
> >>> +	STEP_A0,
> >>> +	STEP_B0,
> >>> +	STEP_B1,
> >>> +	STEP_C0,
> >>> +	STEP_D0,
> >>>  };
> >>>  =

> >>> -#define TGL_UY_REVIDS_SIZE	4
> >>> -#define TGL_REVIDS_SIZE		2
> >>> +#define TGL_UY_REVID_STEP_TBL_SIZE	4
> >>> +#define TGL_REVID_STEP_TBL_SIZE		2
> >>>  =

> >>> -extern const struct i915_rev_steppings tgl_uy_revids[TGL_UY_REVIDS_S=
IZE];
> >>> -extern const struct i915_rev_steppings tgl_revids[TGL_REVIDS_SIZE];
> >>> +extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_=
REVID_STEP_TBL_SIZE];
> >>> +extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_=
STEP_TBL_SIZE];
> >>>  =

> >>>  static inline const struct i915_rev_steppings *
> >>> -tgl_revids_get(struct drm_i915_private *dev_priv)
> >>> +tgl_stepping_get(struct drm_i915_private *dev_priv)
> >>>  {
> >>>  	u8 revid =3D INTEL_REVID(dev_priv);
> >>>  	u8 size;
> >>> -	const struct i915_rev_steppings *tgl_revid_tbl;
> >>> +	const struct i915_rev_steppings *revid_step_tbl;
> >>>  =

> >>>  	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> >>> -		tgl_revid_tbl =3D tgl_uy_revids;
> >>> -		size =3D ARRAY_SIZE(tgl_uy_revids);
> >>> +		revid_step_tbl =3D tgl_uy_revid_step_tbl;
> >>> +		size =3D ARRAY_SIZE(tgl_uy_revid_step_tbl);
> >>>  	} else {
> >>> -		tgl_revid_tbl =3D tgl_revids;
> >>> -		size =3D ARRAY_SIZE(tgl_revids);
> >>> +		revid_step_tbl =3D tgl_revid_step_tbl;
> >>> +		size =3D ARRAY_SIZE(tgl_revid_step_tbl);
> >>>  	}
> >>>  =

> >>>  	revid =3D min_t(u8, revid, size - 1);
> >>>  =

> >>> -	return &tgl_revid_tbl[revid];
> >>> +	return &revid_step_tbl[revid];
> >>>  }
> >>>  =

> >>> -#define IS_TGL_DISP_REVID(p, since, until) \
> >>> +#define IS_TGL_DISP_STEPPING(p, since, until) \
> >>>  	(IS_TIGERLAKE(p) && \
> >>> -	 tgl_revids_get(p)->disp_stepping >=3D (since) && \
> >>> -	 tgl_revids_get(p)->disp_stepping <=3D (until))
> >>> +	 tgl_stepping_get(p)->disp_stepping >=3D (since) && \
> >>> +	 tgl_stepping_get(p)->disp_stepping <=3D (until))
> >>>  =

> >>> -#define IS_TGL_UY_GT_REVID(p, since, until) \
> >>> +#define IS_TGL_UY_GT_STEPPING(p, since, until) \
> >>>  	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
> >>> -	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
> >>> -	 tgl_revids_get(p)->gt_stepping <=3D (until))
> >>> +	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
> >>> +	 tgl_stepping_get(p)->gt_stepping <=3D (until))
> >>>  =

> >>> -#define IS_TGL_GT_REVID(p, since, until) \
> >>> +#define IS_TGL_GT_STEPPING(p, since, until) \
> >>>  	(IS_TIGERLAKE(p) && \
> >>>  	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
> >>> -	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
> >>> -	 tgl_revids_get(p)->gt_stepping <=3D (until))
> >>> +	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
> >>> +	 tgl_stepping_get(p)->gt_stepping <=3D (until))
> >>>  =

> >>>  #define RKL_REVID_A0		0x0
> >>>  #define RKL_REVID_B0		0x1
> >>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> >>> index bbc73df7f753..319acca2630b 100644
> >>> --- a/drivers/gpu/drm/i915/intel_pm.c
> >>> +++ b/drivers/gpu/drm/i915/intel_pm.c
> >>> @@ -7110,7 +7110,7 @@ static void tgl_init_clock_gating(struct drm_i9=
15_private *dev_priv)
> >>>  		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> >>>  =

> >>>  	/* Wa_1409825376:tgl (pre-prod)*/
> >>> -	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
> >>> +	if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
> >>>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_un=
core_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
> >>>  			   TGL_VRH_GATING_DIS);
> >>>  =

> >>> -- =

> >>> 2.27.0
> >>> =

> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
