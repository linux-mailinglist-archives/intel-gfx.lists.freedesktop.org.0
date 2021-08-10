Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8918B3E5A8B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 14:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071F089D79;
	Tue, 10 Aug 2021 12:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02BD289D79
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 12:58:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214922384"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214922384"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 05:58:14 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="515834773"
Received: from aktiwary-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.249.40.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 05:58:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>, "Roper\,
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <6a62ddcf2da96624ee2b7a475576d1d2c4e3b6f6.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
 <20210717051426.4120328-8-matthew.d.roper@intel.com>
 <6a62ddcf2da96624ee2b7a475576d1d2c4e3b6f6.camel@intel.com>
Date: Tue, 10 Aug 2021 15:58:08 +0300
Message-ID: <87h7fxo3rz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Make workaround upper bounds
 exclusive
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

On Mon, 19 Jul 2021, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Fri, 2021-07-16 at 22:14 -0700, Matt Roper wrote:
>> Workarounds are documented in the bspec with an exclusive upper bound
>> (i.e., a "fixed" stepping that no longer needs the workaround).  This
>> makes our driver's use of an inclusive upper bound for stepping ranges
>> confusing; the differing notation between code and bspec makes it very
>> easy for mistakes to creep in.
>>=20
>> Let's switch the upper bound of our IS_{GT,DISP}_STEP macros over to use
>> an exclusive upper bound like the bspec does.  This also has the benefit
>> of helping make sure workarounds are properly handled for new minor
>> steppings that show up (e.g., an A1 between the A0 and B0 we already
>> knew about) --- if the new intermediate stepping pulls in hardware fixes
>> early, there will be an update to the workaround definition which lets
>> us know we need to change our code.  If the new stepping does not pull a
>> hardware fix earlier, then the new stepping will already be captured
>> properly by the "[begin, fix)" range in the code.
>>=20
>> We'll probably need to be extra vigilant in code review of new
>> workarounds for the near future to make sure developers notice the new
>> semantics of workaround bounds.  But we just migrated a bunch of our
>> platforms from the IS_REVID bounds over to IS_{GT,DISP}_STEP, so people
>> are already adjusting to the new macros and now is a good time to make
>> this change too.
>>=20
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

It's been merged already, but I think this is a good example of a patch
where simple review is just not enough. Needs maintainers in Cc and acks
on top.

BR,
Jani.


>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
>>  .../drm/i915/display/intel_display_power.c    |  8 +++---
>>  drivers/gpu/drm/i915/display/intel_psr.c      | 18 ++++++------
>>  .../drm/i915/display/skl_universal_plane.c    |  8 +++---
>>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  2 +-
>>  drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  2 +-
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 28 +++++++++----------
>>  drivers/gpu/drm/i915/i915_drv.h               |  4 +--
>>  drivers/gpu/drm/i915/intel_device_info.c      |  2 +-
>>  drivers/gpu/drm/i915/intel_pm.c               |  8 +++---
>>  10 files changed, 41 insertions(+), 41 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 71067a62264d..944fb13b9d98 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2879,7 +2879,7 @@ void intel_init_cdclk_hooks(struct drm_i915_privat=
e *dev_priv)
>>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>>  		dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
>>  		/* Wa_22011320316:adl-p[a0] */
>> -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  			dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
>>  		else
>>  			dev_priv->cdclk.table =3D adlp_cdclk_table;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index e3aaf9678b07..bec380e58f40 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -5799,10 +5799,10 @@ static void tgl_bw_buddy_init(struct drm_i915_pr=
ivate *dev_priv)
>>  	int config, i;
>>=20=20
>>  	if (IS_ALDERLAKE_S(dev_priv) ||
>> -	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
>> -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
>> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> -		/* Wa_1409767108:tgl,rkl,dg1,adl-s */
>> +	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>> +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>> +	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
>> +		/* Wa_1409767108:tgl,dg1,adl-s */
>>  		table =3D wa_1409767108_buddy_page_masks;
>>  	else
>>  		table =3D tgl_buddy_page_masks;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index 0a3d42c8d47d..f0381edefded 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -546,7 +546,7 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>>  	val |=3D intel_psr2_get_tp_time(intel_dp);
>>=20=20
>>  	/* Wa_22012278275:adl-p */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_D1)) {
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>>  		static const u8 map[] =3D {
>>  			2, /* 5 lines */
>>  			1, /* 6 lines */
>> @@ -593,7 +593,7 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>>=20=20
>>  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
>>  		/* Wa_1408330847 */
>> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>>  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>>  				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
>> @@ -733,7 +733,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *i=
ntel_dp,
>>  		return;
>>=20=20
>>  	/* Wa_16011303918:adl-p */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  		return;
>>=20=20
>>  	/*
>> @@ -780,7 +780,7 @@ static bool intel_psr2_sel_fetch_config_valid(struct=
 intel_dp *intel_dp,
>>  	}
>>=20=20
>>  	/* Wa_14010254185 Wa_14010103792 */
>> -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1)) {
>> +	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n=
");
>>  		return false;
>> @@ -939,7 +939,7 @@ static bool intel_psr2_config_valid(struct intel_dp =
*intel_dp,
>>=20=20
>>  	/* Wa_2209313811 */
>>  	if (!crtc_state->enable_psr2_sel_fetch &&
>> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1)) {
>> +	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>>  		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this D=
isplay stepping\n");
>>  		return false;
>>  	}
>> @@ -966,7 +966,7 @@ static bool intel_psr2_config_valid(struct intel_dp =
*intel_dp,
>>=20=20
>>  	/* Wa_16011303918:adl-p */
>>  	if (crtc_state->vrr.enable &&
>> -	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0)) {
>> +	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
>>  		return false;
>> @@ -1160,7 +1160,7 @@ static void intel_psr_enable_source(struct intel_d=
p *intel_dp)
>>  			     IGNORE_PSR2_HW_TRACKING : 0);
>>=20=20
>>  	/* Wa_16011168373:adl-p */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) &&
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
>>  	    intel_dp->psr.psr2_enabled)
>>  		intel_de_rmw(dev_priv,
>>  			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>> @@ -1340,12 +1340,12 @@ static void intel_psr_disable_locked(struct inte=
l_dp *intel_dp)
>>=20=20
>>  	/* Wa_1408330847 */
>>  	if (intel_dp->psr.psr2_sel_fetch_enabled &&
>> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>>  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>>=20=20
>>  	/* Wa_16011168373:adl-p */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) &&
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
>>  	    intel_dp->psr.psr2_enabled)
>>  		intel_de_rmw(dev_priv,
>>  			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driver=
s/gpu/drm/i915/display/skl_universal_plane.c
>> index 628b678d9a71..3ad04bf2a0fd 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -1910,11 +1910,11 @@ static bool gen12_plane_supports_mc_ccs(struct d=
rm_i915_private *dev_priv,
>>  {
>>  	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
>>  	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
>> +	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_D0))
>>  		return false;
>>=20=20
>>  	/* Wa_22011186057 */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  		return false;
>>=20=20
>>  	return plane_id < PLANE_SPRITE4;
>> @@ -1938,7 +1938,7 @@ static bool gen12_plane_format_mod_supported(struc=
t drm_plane *_plane,
>>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>>  		/* Wa_22011186057 */
>> -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  			return false;
>>  		break;
>>  	default:
>> @@ -1995,7 +1995,7 @@ static const u64 *gen12_get_plane_modifiers(struct=
 drm_i915_private *dev_priv,
>>  					    enum plane_id plane_id)
>>  {
>>  	/* Wa_22011186057 */
>> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>>  		return adlp_step_a_plane_format_modifiers;
>>  	else if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
>>  		return gen12_plane_format_modifiers_mc_ccs;
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/=
i915/gt/gen8_engine_cs.c
>> index 87b06572fd2e..a69f5c438c72 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> @@ -42,7 +42,7 @@ int gen8_emit_flush_rcs(struct i915_request *rq, u32 m=
ode)
>>  			vf_flush_wa =3D true;
>>=20=20
>>  		/* WaForGAMHang:kbl */
>> -		if (IS_KBL_GT_STEP(rq->engine->i915, 0, STEP_B0))
>> +		if (IS_KBL_GT_STEP(rq->engine->i915, 0, STEP_C0))
>>  			dc_flush_wa =3D true;
>>  	}
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/d=
rm/i915/gt/intel_region_lmem.c
>> index 50d11a84e7a9..e3a2a2fa5f94 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> @@ -157,7 +157,7 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
>>  static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
>>  				     u64 *start, u32 *size)
>>  {
>> -	if (!IS_DG1_GT_STEP(uncore->i915, STEP_A0, STEP_B0))
>> +	if (!IS_DG1_GT_STEP(uncore->i915, STEP_A0, STEP_C0))
>>  		return false;
>>=20=20
>>  	*start =3D 0;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/d=
rm/i915/gt/intel_workarounds.c
>> index 685c6115d380..247f0331ebee 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -838,7 +838,7 @@ skl_gt_workarounds_init(struct drm_i915_private *i91=
5, struct i915_wa_list *wal)
>>  		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);
>>=20=20
>>  	/* WaInPlaceDecompressionHang:skl */
>> -	if (IS_SKL_GT_STEP(i915, STEP_A0, STEP_H0 - 1))
>> +	if (IS_SKL_GT_STEP(i915, STEP_A0, STEP_H0))
>>  		wa_write_or(wal,
>>  			    GEN9_GAMT_ECO_REG_RW_IA,
>>  			    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
>> @@ -850,7 +850,7 @@ kbl_gt_workarounds_init(struct drm_i915_private *i91=
5, struct i915_wa_list *wal)
>>  	gen9_gt_workarounds_init(i915, wal);
>>=20=20
>>  	/* WaDisableDynamicCreditSharing:kbl */
>> -	if (IS_KBL_GT_STEP(i915, 0, STEP_B0))
>> +	if (IS_KBL_GT_STEP(i915, 0, STEP_C0))
>>  		wa_write_or(wal,
>>  			    GAMT_CHKN_BIT_REG,
>>  			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);
>> @@ -961,7 +961,7 @@ icl_gt_workarounds_init(struct drm_i915_private *i91=
5, struct i915_wa_list *wal)
>>=20=20
>>  	/* Wa_1607087056:icl,ehl,jsl */
>>  	if (IS_ICELAKE(i915) ||
>> -	    IS_JSL_EHL_GT_STEP(i915, STEP_A0, STEP_A0))
>> +	    IS_JSL_EHL_GT_STEP(i915, STEP_A0, STEP_B0))
>>  		wa_write_or(wal,
>>  			    SLICE_UNIT_LEVEL_CLKGATE,
>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>> @@ -1015,19 +1015,19 @@ tgl_gt_workarounds_init(struct drm_i915_private =
*i915, struct i915_wa_list *wal)
>>  	gen12_gt_workarounds_init(i915, wal);
>>=20=20
>>  	/* Wa_1409420604:tgl */
>> -	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
>> +	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
>>  		wa_write_or(wal,
>>  			    SUBSLICE_UNIT_LEVEL_CLKGATE2,
>>  			    CPSSUNIT_CLKGATE_DIS);
>>=20=20
>>  	/* Wa_1607087056:tgl also know as BUG:1409180338 */
>> -	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
>> +	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
>>  		wa_write_or(wal,
>>  			    SLICE_UNIT_LEVEL_CLKGATE,
>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>>=20=20
>>  	/* Wa_1408615072:tgl[a0] */
>> -	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0))
>> +	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0))
>>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>>  			    VSUNIT_CLKGATE_DIS_TGL);
>>  }
>> @@ -1038,7 +1038,7 @@ dg1_gt_workarounds_init(struct drm_i915_private *i=
915, struct i915_wa_list *wal)
>>  	gen12_gt_workarounds_init(i915, wal);
>>=20=20
>>  	/* Wa_1607087056:dg1 */
>> -	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0))
>> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0))
>>  		wa_write_or(wal,
>>  			    SLICE_UNIT_LEVEL_CLKGATE,
>>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
>> @@ -1436,7 +1436,7 @@ static void dg1_whitelist_build(struct intel_engin=
e_cs *engine)
>>  	tgl_whitelist_build(engine);
>>=20=20
>>  	/* GEN:BUG:1409280441:dg1 */
>> -	if (IS_DG1_GT_STEP(engine->i915, STEP_A0, STEP_A0) &&
>> +	if (IS_DG1_GT_STEP(engine->i915, STEP_A0, STEP_B0) &&
>>  	    (engine->class =3D=3D RENDER_CLASS ||
>>  	     engine->class =3D=3D COPY_ENGINE_CLASS))
>>  		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
>> @@ -1504,8 +1504,8 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>>  {
>>  	struct drm_i915_private *i915 =3D engine->i915;
>>=20=20
>> -	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>> -	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
>> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
>> +	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0)) {
>>  		/*
>>  		 * Wa_1607138336:tgl[a0],dg1[a0]
>>  		 * Wa_1607063988:tgl[a0],dg1[a0]
>> @@ -1515,7 +1515,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>>  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
>>  	}
>>=20=20
>> -	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
>> +	if (IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_B0)) {
>>  		/*
>>  		 * Wa_1606679103:tgl
>>  		 * (see also Wa_1606682166:icl)
>> @@ -1550,7 +1550,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>>  	}
>>=20=20
>>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
>> -	    IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>> +	    IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
>>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>>  		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
>>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>> @@ -1564,7 +1564,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>>  	}
>>=20=20
>>=20=20
>> -	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_B0) ||
>>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>>  		/*
>>  		 * Wa_1607030317:tgl
>> @@ -1925,7 +1925,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>>  	struct drm_i915_private *i915 =3D engine->i915;
>>=20=20
>>  	/* WaKBLVECSSemaphoreWaitPoll:kbl */
>> -	if (IS_KBL_GT_STEP(i915, STEP_A0, STEP_E0)) {
>> +	if (IS_KBL_GT_STEP(i915, STEP_A0, STEP_F0)) {
>>  		wa_write(wal,
>>  			 RING_SEMA_WAIT_POLL(engine->mmio_base),
>>  			 1);
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index da5f230e2d4b..b42405afb28e 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1332,11 +1332,11 @@ static inline struct drm_i915_private *pdev_to_i=
915(struct pci_dev *pdev)
>>=20=20
>>  #define IS_DISPLAY_STEP(__i915, since, until) \
>>  	(drm_WARN_ON(&(__i915)->drm, INTEL_DISPLAY_STEP(__i915) =3D=3D STEP_NO=
NE), \
>> -	 INTEL_DISPLAY_STEP(__i915) >=3D (since) && INTEL_DISPLAY_STEP(__i915)=
 <=3D (until))
>> +	 INTEL_DISPLAY_STEP(__i915) >=3D (since) && INTEL_DISPLAY_STEP(__i915)=
 < (until))
>>=20=20
>>  #define IS_GT_STEP(__i915, since, until) \
>>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GT_STEP(__i915) =3D=3D STEP_NONE), \
>> -	 INTEL_GT_STEP(__i915) >=3D (since) && INTEL_GT_STEP(__i915) <=3D (unt=
il))
>> +	 INTEL_GT_STEP(__i915) >=3D (since) && INTEL_GT_STEP(__i915) < (until))
>
> Would be nice to have some comment about bound in here.
>
> Did not manually checked each workaround against bspec, only checked the =
old and new until values and it makes sense.
> With the comment requested above:
>
> Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>
>
>>=20=20
>>  static __always_inline unsigned int
>>  __platform_mask_index(const struct intel_runtime_info *info,
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
>> index dd63dd2c45ad..5c83b2ec69da 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -262,7 +262,7 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>>  	enum pipe pipe;
>>=20=20
>>  	/* Wa_14011765242: adl-s A0,A1 */
>> -	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A1))
>> +	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
>>  		for_each_pipe(dev_priv, pipe)
>>  			runtime->num_scalers[pipe] =3D 0;
>>  	else if (GRAPHICS_VER(dev_priv) >=3D 10) {
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index 8a84abfaa4b0..597383430ca6 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -7359,7 +7359,7 @@ static void gen12lp_init_clock_gating(struct drm_i=
915_private *dev_priv)
>>  				   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>>=20=20
>>  	/* Wa_1409825376:tgl (pre-prod)*/
>> -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1))
>> +	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
>>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncor=
e_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>>  			   TGL_VRH_GATING_DIS);
>>=20=20
>> @@ -7382,7 +7382,7 @@ static void dg1_init_clock_gating(struct drm_i915_=
private *dev_priv)
>>  	gen12lp_init_clock_gating(dev_priv);
>>=20=20
>>  	/* Wa_1409836686:dg1[a0] */
>> -	if (IS_DG1_GT_STEP(dev_priv, STEP_A0, STEP_A0))
>> +	if (IS_DG1_GT_STEP(dev_priv, STEP_A0, STEP_B0))
>>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncor=
e_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>>  			   DPT_GATING_DIS);
>>  }
>> @@ -7467,12 +7467,12 @@ static void kbl_init_clock_gating(struct drm_i91=
5_private *dev_priv)
>>  		   FBC_LLC_FULLY_OPEN);
>>=20=20
>>  	/* WaDisableSDEUnitClockGating:kbl */
>> -	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_B0))
>> +	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_C0))
>>  		intel_uncore_write(&dev_priv->uncore, GEN8_UCGCTL6, intel_uncore_read=
(&dev_priv->uncore, GEN8_UCGCTL6) |
>>  			   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);
>>=20=20
>>  	/* WaDisableGamClockGating:kbl */
>> -	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_B0))
>> +	if (IS_KBL_GT_STEP(dev_priv, 0, STEP_C0))
>>  		intel_uncore_write(&dev_priv->uncore, GEN6_UCGCTL1, intel_uncore_read=
(&dev_priv->uncore, GEN6_UCGCTL1) |
>>  			   GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
>>=20=20
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=20
Jani Nikula, Intel Open Source Graphics Center
