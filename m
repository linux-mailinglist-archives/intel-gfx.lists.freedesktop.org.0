Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16852B6E9D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 20:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21FC8932E;
	Tue, 17 Nov 2020 19:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABCF8932E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 19:29:02 +0000 (UTC)
IronPort-SDR: CXeD95NvMZF+7l5AdV54USFJ0JUmXSxH38Kd+aLAaW7+dEIs28y6O0DIoo0SoEALUNzHXa8PkO
 elaEJV9lbfIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="171092119"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="171092119"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:28:59 -0800
IronPort-SDR: 06akxmZ1XmZFNTJuytHLcdqWrSABLTxINWR7jIOTlXR3WiEwE0V5ju3Ctr6HtWw2Ig4BoFhPh0
 KEn1c8uod4pA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="362614801"
Received: from dshaukar-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.56.95])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 11:28:55 -0800
Date: Tue, 17 Nov 2020 11:28:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201117192854.57tki3vges6zdenp@ldmartin-desk1>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-3-aditya.swarup@intel.com>
 <02ea7d2b7eb151787abe8cf42771db40a7f0ef7d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02ea7d2b7eb151787abe8cf42771db40a7f0ef7d.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915/tgl: Fix macros for TGL SOC
 based WA
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 07:03:05PM +0000, Jose Souza wrote:
>On Tue, 2020-11-17 at 10:50 -0800, Aditya Swarup wrote:
>> Fix macros for applying TGL SOC WAs by using INTEL_REVID()
>> as index to fetch correct revision offset in TGL GT/DISP stepping
>> table.
>
>Please explain what exactly is the issue you are fixing, the change you di=
d in tgl_revids_get() + IS_TGL_GT_REVID looks a improvement but not a fix.

otherwise it always gets the first entry from the table, regardless
what' s the revid we are running on... so it does look like a very
important fix.

>
>>
>> Also, remove redundant macros and simplify it to use GT and DISP
>> macros for getting applicable stepping for TGL.

As a fix, this should not be mixed with the noisy s/TGL_REVID/REVID/, as
it makes it much more difficult for backports and to review. Please
split it in another patch (I actually don' t see a reason to do it
actually... I'd rather try to move away from these tables if possible).

Lucas De Marchi

>>
>> Fixes: ("drm/i915/tgl: Fix stepping WA matching")
>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>> ---
>> =A0.../drm/i915/display/intel_display_power.c    |  2 +-
>> =A0drivers/gpu/drm/i915/display/intel_psr.c      |  4 ++--
>> =A0drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
>> =A0drivers/gpu/drm/i915/gt/intel_workarounds.c   | 20 ++++++++--------
>> =A0drivers/gpu/drm/i915/i915_drv.h               | 24 +++++++------------
>> =A0drivers/gpu/drm/i915/intel_pm.c               |  2 +-
>> =A06 files changed, 24 insertions(+), 30 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index fe2d90bba536..06c036e2092c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -5283,7 +5283,7 @@ static void tgl_bw_buddy_init(struct drm_i915_priv=
ate *dev_priv)
>> =A0	int config, i;
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>> +	    IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_B0))
>> =A0		/* Wa_1409767108:tgl,dg1 */
>> =A0		table =3D wa_1409767108_buddy_page_masks;
>> =A0	else
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index b3631b722de3..c057a03b2ed4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -550,7 +550,7 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	if (dev_priv->psr.psr2_sel_fetch_enabled) {
>> =A0		/* WA 1408330847 */
>> -		if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>> +		if (IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_A0) ||
>> =A0		    IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0))
>> =A0			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>> =A0				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>> @@ -1102,7 +1102,7 @@ static void intel_psr_disable_locked(struct intel_=
dp *intel_dp)
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	/* WA 1408330847 */
>> =A0	if (dev_priv->psr.psr2_sel_fetch_enabled &&
>> -	    (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0) ||
>> +	    (IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_A0) ||
>> =A0	     IS_RKL_REVID(dev_priv, RKL_REVID_A0, RKL_REVID_A0)))
>> =A0		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>> =A0			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/d=
rm/i915/display/intel_sprite.c
>> index a3ab44694118..f7da4a56054e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>> @@ -3022,7 +3022,7 @@ static bool gen12_plane_supports_mc_ccs(struct drm=
_i915_private *dev_priv,
>> =A0{
>> =A0	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
>> =A0	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>> -	    IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
>> +	    IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_C0))
>> =A0		return false;
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	return plane_id < PLANE_SPRITE4;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/d=
rm/i915/gt/intel_workarounds.c
>> index a82554baa6ac..d756155d82ea 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -71,16 +71,16 @@ const struct i915_rev_steppings kbl_revids[] =3D {
>> =A0};
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0const struct i915_rev_steppings tgl_uy_revids[] =3D {
>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID_=
A0 },
>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID_=
C0 },
>> -	[2] =3D { .gt_stepping =3D TGL_REVID_B1, .disp_stepping =3D TGL_REVID_=
C0 },
>> -	[3] =3D { .gt_stepping =3D TGL_REVID_C0, .disp_stepping =3D TGL_REVID_=
D0 },
>> +	[0] =3D { .gt_stepping =3D REVID_A0, .disp_stepping =3D REVID_A0 },
>> +	[1] =3D { .gt_stepping =3D REVID_B0, .disp_stepping =3D REVID_C0 },
>> +	[2] =3D { .gt_stepping =3D REVID_B1, .disp_stepping =3D REVID_C0 },
>> +	[3] =3D { .gt_stepping =3D REVID_C0, .disp_stepping =3D REVID_D0 },
>> =A0};
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0/* Same GT stepping between tgl_uy_revids and tgl_revids don't mean t=
he same HW */
>> =A0const struct i915_rev_steppings tgl_revids[] =3D {
>> -	[0] =3D { .gt_stepping =3D TGL_REVID_A0, .disp_stepping =3D TGL_REVID_=
B0 },
>> -	[1] =3D { .gt_stepping =3D TGL_REVID_B0, .disp_stepping =3D TGL_REVID_=
D0 },
>> +	[0] =3D { .gt_stepping =3D REVID_A0, .disp_stepping =3D REVID_B0 },
>> +	[1] =3D { .gt_stepping =3D REVID_B0, .disp_stepping =3D REVID_D0 },
>> =A0};
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0static void wa_init_start(struct i915_wa_list *wal, const char *name,=
 const char *engine_name)
>> @@ -1250,13 +1250,13 @@ tgl_gt_workarounds_init(struct drm_i915_private =
*i915, struct i915_wa_list *wal)
>> =A0	gen12_gt_workarounds_init(i915, wal);
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	/* Wa_1409420604:tgl */
>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>> +	if (IS_TGL_GT_REVID(i915, REVID_A0, REVID_A0))
>> =A0		wa_write_or(wal,
>> =A0			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
>> =A0			    CPSSUNIT_CLKGATE_DIS);
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
>> +	if (IS_TGL_GT_REVID(i915, REVID_A0, REVID_A0))
>> =A0		wa_write_or(wal,
>> =A0			    SLICE_UNIT_LEVEL_CLKGATE,
>> =A0			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>> @@ -1734,7 +1734,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>> =A0	struct drm_i915_private *i915 =3D engine->i915;
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>> -	    IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>> +	    IS_TGL_GT_REVID(i915, REVID_A0, REVID_A0)) {
>> =A0		/*
>> =A0		 * Wa_1607138336:tgl[a0],dg1[a0]
>> =A0		 * Wa_1607063988:tgl[a0],dg1[a0]
>> @@ -1744,7 +1744,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>> =A0			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
>> =A0	}
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> -	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>> +	if (IS_TGL_GT_REVID(i915, REVID_A0, REVID_A0)) {
>> =A0		/*
>> =A0		 * Wa_1606679103:tgl
>> =A0		 * (see also Wa_1606682166:icl)
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 15be8debae54..437916aacaa6 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1565,11 +1565,11 @@ extern const struct i915_rev_steppings kbl_revid=
s[];
>> =A0	(IS_JSL_EHL(p) && IS_REVID(p, since, until))
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0enum {
>> -	TGL_REVID_A0,
>> -	TGL_REVID_B0,
>> -	TGL_REVID_B1,
>> -	TGL_REVID_C0,
>> -	TGL_REVID_D0,
>> +	REVID_A0,
>> +	REVID_B0,
>> +	REVID_B1,
>> +	REVID_C0,
>> +	REVID_D0,
>
>Better keep "TGL_" otherwise this could be used in other platforms that ha=
ve different values for each revision.
>
>> =A0};
>> =A0
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> =A0extern const struct i915_rev_steppings tgl_uy_revids[];
>> @@ -1579,9 +1579,9 @@ static inline const struct i915_rev_steppings *
>> =A0tgl_revids_get(struct drm_i915_private *dev_priv)
>> =A0{
>> =A0	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>> -		return tgl_uy_revids;
>> +		return tgl_uy_revids + INTEL_REVID(dev_priv);
>> =A0	else
>> -		return tgl_revids;
>> +		return tgl_revids + INTEL_REVID(dev_priv);
>
>better do tgl_revids[INTEL_REVID(dev_priv)] with a array size check first.
>
>> =A0}
>> =A0
>>
>>
>>
>>
>>
>>
>>
>> =A0#define IS_TGL_DISP_REVID(p, since, until) \
>> @@ -1589,16 +1589,10 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>> =A0	 tgl_revids_get(p)->disp_stepping >=3D (since) && \
>> =A0	 tgl_revids_get(p)->disp_stepping <=3D (until))
>> =A0
>>
>>
>>
>>
>>
>>
>>
>> -#define IS_TGL_UY_GT_REVID(p, since, until) \
>> -	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>> -	 tgl_uy_revids->gt_stepping >=3D (since) && \
>> -	 tgl_uy_revids->gt_stepping <=3D (until))
>> -
>> =A0#define IS_TGL_GT_REVID(p, since, until) \
>> =A0	(IS_TIGERLAKE(p) && \
>> -	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
>> -	 tgl_revids->gt_stepping >=3D (since) && \
>> -	 tgl_revids->gt_stepping <=3D (until))
>> +	 tgl_revids_get(p)->gt_stepping >=3D (since) && \
>> +	 tgl_revids_get(p)->gt_stepping <=3D (until))
>> =A0
>>
>>
>>
>>
>>
>>
>>
>> =A0#define RKL_REVID_A0		0x0
>> =A0#define RKL_REVID_B0		0x1
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index a20b5051f18c..69840aa0d4db 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -7110,7 +7110,7 @@ static void tgl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>> =A0		   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> =A0
>>
>>
>>
>>
>>
>>
>>
>> =A0	/* Wa_1409825376:tgl (pre-prod)*/
>> -	if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
>> +	if (IS_TGL_DISP_REVID(dev_priv, REVID_A0, REVID_B1))
>> =A0		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
>> =A0			   TGL_VRH_GATING_DIS);
>> =A0
>>
>>
>>
>>
>>
>>
>>
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
