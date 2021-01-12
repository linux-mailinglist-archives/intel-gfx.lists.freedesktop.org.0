Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700252F2601
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 03:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AF689C05;
	Tue, 12 Jan 2021 02:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F14189BF1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 02:04:17 +0000 (UTC)
IronPort-SDR: 8D5iRHjx8tkZypsq/PBQ3B7XAAf6TsuQpEhw+/K1OugREhgKD8KlqPs2SPAeBGKECfgQp1z0Ns
 xpR9CHBUtJiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174458282"
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="174458282"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 18:04:16 -0800
IronPort-SDR: wVxjqLHr//dnYR6PGfeoKpcWb4qQnKvy8B6899EpIGTr9OyGjX67S0QTN8FPr+gJEbmM8S+e0H
 bu3MkGT5ViCw==
X-IronPort-AV: E=Sophos;i="5.79,340,1602572400"; d="scan'208";a="404309437"
Received: from ajgalle-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.168.200])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 18:04:13 -0800
Date: Mon, 11 Jan 2021 18:04:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210112020409.ev7hs4rngooeyorp@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878s8zw7tw.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 11, 2021 at 10:13:15PM +0200, Jani Nikula wrote:
>On Fri, 08 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Fri, Jan 08, 2021 at 03:18:52PM -0800, Aditya Swarup wrote:
>>> TGL adds another level of indirection for applying WA based on stepping
>>> information rather than PCI REVID. So change TGL_REVID enum into
>>> stepping enum and use PCI REVID as index into revid to stepping table to
>>> fetch correct display and GT stepping for application of WAs as
>>> suggested by Matt Roper.
>>
>> So to clarify the goal is to rename "revid" -> "stepping" because the
>> values like "A1," "C0," etc. are't the actual PCI revision ID, but
>> rather descriptions of the stepping of a given IP block; the enum values
>> we use to represent those are arbitrary and don't matter as long as
>> they're monotonically increasing for comparisons.  The PCI revision ID
>> is just the input we use today to deduce what the IP steppings are, and
>> there's talk that we could determine the IP steppings in a different way
>> at some point in the future.
>>
>> Furthermore, since the same scheme will be used at least for ADL-S, we
>> should drop the "TGL" prefix since there's no need to name these general
>> enum values in a platform-specific manner.
>>
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>
>> We should probably make the same kind of change to KBL (and use the same
>> stepping enum) too since it has the same kind of extra indirection as
>> TGL/ADL-S, but we can do that as a followup patch.
>
>FWIW I have a wip series changing the whole thing to abstract steppings
>enums that are shared between platforms, but it's in a bit of limbo
>because the previous revid changes were applied to drm-intel-gt-next,
>and it's fallen pretty far out of sync with drm-intel-next. All of this
>really belongs to drm-intel-next, but can't do that until the branches
>sync up again.

in the end both sides will need that (even if it was a mistake to merge
it in drm-intel-gt-next).  I got an ack from Rodrigo to actually
cherry-pick the single patch we are missing so this can unblock both
merging this patch (after rebasing) and you can continue your series.

>
>My series also completely hides the arrays into a separate .c file,
>because the externs with direct array access are turning into
>nightmare. The ARRAY_SIZE() checks rely on the extern declaration and
>the actual array definition to have the sizes in sync, but the compiler
>does not check that. Really.

not following what the ARRAY_SIZE is not checking. It actually is, since
the declaration is explicitly telling the size of the array. If the
definition had more items, you'd get a compilation error.

>
>IDK, feels like this merging this series is going to be extra churn.

I'm not against the refactor you're talking about, but this seems an
improvement to unblock the ADL-S patches that are pending. The patches
could also be split to remove this dependency, but I'm not sure it's
worth it.

Lucas De Marchi

>
>
>BR,
>Jani.
>
>
>>
>>
>> Matt
>>
>>>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>>> ---
>>>  .../drm/i915/display/intel_display_power.c    |  2 +-
>>>  drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
>>>  drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
>>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++-----
>>>  drivers/gpu/drm/i915/i915_drv.h               | 50 +++++++++----------
>>>  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
>>>  6 files changed, 43 insertions(+), 43 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
>>> index d52374f01316..bb04b502a442 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> @@ -5340,7 +5340,7 @@ static void tgl_bw_buddy_init(struct drm_i915_pri=
vate *dev_priv)
>>>  	int config, i;
>>>
>>>  	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>>> +	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
>>>  		/* Wa_1409767108:tgl,dg1 */
>>>  		table =3D wa_1409767108_buddy_page_masks;
>>>  	else
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm=
/i915/display/intel_psr.c
>>> index c24ae69426cf..a93717178957 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -550,7 +550,7 @@ static void hsw_activate_psr2(struct intel_dp *inte=
l_dp)
>>>
>>>  	if (dev_priv->psr.psr2_sel_fetch_enabled) {
>>>  		/* WA 1408330847 */
>>> -		if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>>> +		if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
>>>  		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
>>>  			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>>>  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>>> @@ -1102,7 +1102,7 @@ static void intel_psr_disable_locked(struct intel=
_dp *intel_dp)
>>>
>>>  	/* WA 1408330847 */
>>>  	if (dev_priv->psr.psr2_sel_fetch_enabled &&
>>> -	    (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>>> +	    (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0) ||
>>>  	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
>>>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>>>  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
>>> index cf3589fd0ddb..4ce32df3855f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>>> @@ -3033,7 +3033,7 @@ static bool gen12_plane_supports_mc_ccs(struct dr=
m_i915_private *dev_priv,
>>>  {
>>>  	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
>>>  	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
>>> +	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_C0))
>>>  		return false;
>>>
>>>  	return plane_id < PLANE_SPRITE4;
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/=
drm/i915/gt/intel_workarounds.c
>>> index c21a9726326a..111d01e2f81e 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -71,17 +71,17 @@ const struct i915_rev_steppings kbl_revids[] =3D {
>>>  	[7] =3D { .gt_stepping =3D KBL_REVID_G0, .disp_stepping =3D KBL_REVID=
_C0 },
>>>  };
>>>
>>> -const struct i915_rev_steppings tgl_uy_revids[] =3D {
>>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID=
_A0 },
>>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID=
_C0 },
>>> -	[2] =3D { .gt_stepping =3D TGL_REVID_B1, .disp_stepping =3D TGL_REVID=
_C0 },
>>> -	[3] =3D { .gt_stepping =3D TGL_REVID_C0, .disp_stepping =3D TGL_REVID=
_D0 },
>>> +const struct i915_rev_steppings tgl_uy_revid_step_tbl[] =3D {
>>> +	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>>> +	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_C0 },
>>> +	[2] =3D { .gt_stepping =3D STEP_B1, .disp_stepping =3D STEP_C0 },
>>> +	[3] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_D0 },
>>>  };
>>>
>>>  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean th=
e same HW */
>>> -const struct i915_rev_steppings tgl_revids[] =3D {
>>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID=
_B0 },
>>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID=
_D0 },
>>> +const struct i915_rev_steppings tgl_revid_step_tbl[] =3D {
>>> +	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_B0 },
>>> +	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
>>>  };
>>>
>>>  static void wa_init_start(struct i915_wa_list *wal, const char *name, =
const char *engine_name)
>>> @@ -1211,19 +1211,19 @@ tgl_gt_workarounds_init(struct drm_i915_private=
 *i915, struct i915_wa_list *wal)
>>>  	gen12_gt_workarounds_init(i915, wal);
>>>
>>>  	/* Wa_1409420604:tgl */
>>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>>>  		wa_write_or(wal,
>>>  			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
>>>  			    CPSSUNIT_CLKGATE_DIS);
>>>
>>>  	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>>>  		wa_write_or(wal,
>>>  			    SLICE_UNIT_LEVEL_CLKGATE,
>>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>>>
>>>  	/* Wa_1408615072:tgl[a0] */
>>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0))
>>>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>>  			    VSUNIT_CLKGATE_DIS_TGL);
>>>  }
>>> @@ -1700,7 +1700,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>>>  	struct drm_i915_private *i915 =3D engine->i915;
>>>
>>>  	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>>> -	    IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>>> +	    IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
>>>  		/*
>>>  		 * Wa_1607138336:tgl[a0],dg1[a0]
>>>  		 * Wa_1607063988:tgl[a0],dg1[a0]
>>> @@ -1710,7 +1710,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>>>  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
>>>  	}
>>>
>>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>>> +	if (IS_TGL_UY_GT_STEPPING(i915, STEP_A0, STEP_A0)) {
>>>  		/*
>>>  		 * Wa_1606679103:tgl
>>>  		 * (see also Wa_1606682166:icl)
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
>>> index 5e5bcef20e33..11d6e8abde46 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -1559,54 +1559,54 @@ extern const struct i915_rev_steppings kbl_revi=
ds[];
>>>  	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
>>>
>>>  enum {
>>> -	TGL_REVID_A0,
>>> -	TGL_REVID_B0,
>>> -	TGL_REVID_B1,
>>> -	TGL_REVID_C0,
>>> -	TGL_REVID_D0,
>>> +	STEP_A0,
>>> +	STEP_B0,
>>> +	STEP_B1,
>>> +	STEP_C0,
>>> +	STEP_D0,
>>>  };
>>>
>>> -#define TGL_UY_REVIDS_SIZE	4
>>> -#define TGL_REVIDS_SIZE		2
>>> +#define TGL_UY_REVID_STEP_TBL_SIZE	4
>>> +#define TGL_REVID_STEP_TBL_SIZE		2
>>>
>>> -extern const struct i915_rev_steppings tgl_uy_revids[TGL_UY_REVIDS_SIZ=
E];
>>> -extern const struct i915_rev_steppings tgl_revids[TGL_REVIDS_SIZE];
>>> +extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_RE=
VID_STEP_TBL_SIZE];
>>> +extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_ST=
EP_TBL_SIZE];
>>>
>>>  static inline const struct i915_rev_steppings *
>>> -tgl_revids_get(struct drm_i915_private *dev_priv)
>>> +tgl_stepping_get(struct drm_i915_private *dev_priv)
>>>  {
>>>  	u8 revid =3D INTEL_REVID(dev_priv);
>>>  	u8 size;
>>> -	const struct i915_rev_steppings *tgl_revid_tbl;
>>> +	const struct i915_rev_steppings *revid_step_tbl;
>>>
>>>  	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>>> -		tgl_revid_tbl =3D tgl_uy_revids;
>>> -		size =3D ARRAY_SIZE(tgl_uy_revids);
>>> +		revid_step_tbl =3D tgl_uy_revid_step_tbl;
>>> +		size =3D ARRAY_SIZE(tgl_uy_revid_step_tbl);
>>>  	} else {
>>> -		tgl_revid_tbl =3D tgl_revids;
>>> -		size =3D ARRAY_SIZE(tgl_revids);
>>> +		revid_step_tbl =3D tgl_revid_step_tbl;
>>> +		size =3D ARRAY_SIZE(tgl_revid_step_tbl);
>>>  	}
>>>
>>>  	revid =3D min_t(u8, revid, size - 1);
>>>
>>> -	return &tgl_revid_tbl[revid];
>>> +	return &revid_step_tbl[revid];
>>>  }
>>>
>>> -#define IS_TGL_DISP_REVID(p, since, until) \
>>> +#define IS_TGL_DISP_STEPPING(p, since, until) \
>>>  	(IS_TIGERLAKE(p) && \
>>> -	 tgl_revids_get(p)->disp_stepping >=3D (since) && \
>>> -	 tgl_revids_get(p)->disp_stepping <=3D (until))
>>> +	 tgl_stepping_get(p)->disp_stepping >=3D (since) && \
>>> +	 tgl_stepping_get(p)->disp_stepping <=3D (until))
>>>
>>> -#define IS_TGL_UY_GT_REVID(p, since, until) \
>>> +#define IS_TGL_UY_GT_STEPPING(p, since, until) \
>>>  	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>>> -	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>>> -	 tgl_revids_get(p)->gt_stepping <=3D (until))
>>> +	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
>>> +	 tgl_stepping_get(p)->gt_stepping <=3D (until))
>>>
>>> -#define IS_TGL_GT_REVID(p, since, until) \
>>> +#define IS_TGL_GT_STEPPING(p, since, until) \
>>>  	(IS_TIGERLAKE(p) && \
>>>  	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
>>> -	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>>> -	 tgl_revids_get(p)->gt_stepping <=3D (until))
>>> +	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
>>> +	 tgl_stepping_get(p)->gt_stepping <=3D (until))
>>>
>>>  #define RKL_REVID_A0		0x0
>>>  #define RKL_REVID_B0		0x1
>>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
>>> index bbc73df7f753..319acca2630b 100644
>>> --- a/drivers/gpu/drm/i915/intel_pm.c
>>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>>> @@ -7110,7 +7110,7 @@ static void tgl_init_clock_gating(struct drm_i915=
_private *dev_priv)
>>>  		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>>>
>>>  	/* Wa_1409825376:tgl (pre-prod)*/
>>> -	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
>>> +	if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
>>>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_unco=
re_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>>>  			   TGL_VRH_GATING_DIS);
>>>
>>> --
>>> 2.27.0
>>>
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
