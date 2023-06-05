Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF42722EAF
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 20:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0963610E151;
	Mon,  5 Jun 2023 18:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BFC10E151
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 18:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685989767; x=1717525767;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=d/Q+9pfBT/UNWGcPAidJvZR5ALnhaYUfrzHYOnE8iII=;
 b=Rbe2cI5X32yEFPn06s17E2ShCHAeAYxpyxtZPXwy2Yy5mvnzbwHyx4lP
 ANgaL4XHLwHodlzdblwgH1efAxIuLDu8fjADOiP5T0GJNDheFjpNYjflO
 Z35JmGIXVOktl+hoAWqE8VA1bMN8Ei7811Zy6E+7FlgcthzNIvCBUGeWB
 VZdFcbmXqk538ntfJLf0rMLDmR9ZKL8LJNLHZ6Oo5lUuEaztiYiG1Aps/
 hmKI8ejZbFCMS3vhSxwP3/YPBqZaQWdD9cP2VWvf6yH9QhaOlpBPLFZxf
 72266GxIxw7+MQK2EUFH40JA5WSQuXMDE1VRSVLUqDHZML7mspw/Y1V2I A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384755334"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="384755334"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 11:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="798531436"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="798531436"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 11:29:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ2PR11MB7715BC65288E5EA92B328868F84DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
 <20230530185529.3378520-2-anusha.srivatsa@intel.com>
 <87o7luaqmq.fsf@intel.com>
 <SJ2PR11MB7715BC65288E5EA92B328868F84DA@SJ2PR11MB7715.namprd11.prod.outlook.com>
Date: Mon, 05 Jun 2023 21:29:23 +0300
Message-ID: <87cz29bw58.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
 display and graphics step
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

On Mon, 05 Jun 2023, "Srivatsa, Anusha" <anusha.srivatsa@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, June 5, 2023 8:14 AM
>> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/adlp: s/ADLP/ALDERLAKE_P for
>> display and graphics step
>> 
>> On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
>> > Driver refers to the platfrom Alderlake P as ADLP in places and
>> > ALDERLAKE_P in some. Making the consistent change to avoid confusion
>> > of the right naming convention for the platform.
>> 
>> $ git grep "#define IS_.*_DISPLAY_STEP" -- drivers/gpu/drm/i915/i915_drv.h
>> drivers/gpu/drm/i915/i915_drv.h:#define IS_KBL_DISPLAY_STEP(i915, since,
>> until) \ drivers/gpu/drm/i915/i915_drv.h:#define IS_JSL_EHL_DISPLAY_STEP(p,
>> since, until) \ drivers/gpu/drm/i915/i915_drv.h:#define
>> IS_TGL_DISPLAY_STEP(__i915, since, until) \
>> drivers/gpu/drm/i915/i915_drv.h:#define IS_RKL_DISPLAY_STEP(p, since, until) \
>> drivers/gpu/drm/i915/i915_drv.h:#define IS_ADLS_DISPLAY_STEP(__i915, since,
>> until) \ drivers/gpu/drm/i915/i915_drv.h:#define
>> IS_ADLP_DISPLAY_STEP(__i915, since, until) \
>> drivers/gpu/drm/i915/i915_drv.h:#define IS_MTL_DISPLAY_STEP(__i915, since,
>> until) \ drivers/gpu/drm/i915/i915_drv.h:#define IS_DG2_DISPLAY_STEP(__i915,
>> since, until) \
>> 
>> They all use the acronym. Do you suggest to rename all of them, or just ADL-P?
>
> Got the idea after looking at subplatform defines in i915_drv.h:
>
> #define IS_METEORLAKE_M(i915) \
>         IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
> #define IS_METEORLAKE_P(i915) \
>         IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
> #define IS_DG2_G10(i915) \
>         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
> #define IS_DG2_G11(i915) \
>         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define IS_DG2_G12(i915) \
>         IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> #define IS_ADLS_RPLS(i915) \
>         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
> #define IS_ADLP_N(i915) \
>         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> #define IS_ADLP_RPLP(i915) \
>         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> #define IS_ADLP_RPLU(i915) \
>         IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
>
> We are using the same platform name for platform and sub-platform defines for Meteor Lake and DG2, but somehow for flavors of Alder Lake, the sub-platform has acronym. The idea was that developers should not think if the full name or acronym has to be used. And that resulted in the series. But now that you have pointed out the above other  such occurrences, I am leaning towards having them changed as well. That is for a platform defined as TIGERLAKE, All of its steppings etc should have TIGERLAKE_(TIGERLAKE_MEDIA_,TIGERLAKE_DISPLAY_, TIGERLAKE_GRAPHICS_ ) etc instead of having TIGERLAKE in some places and  TGL in its stepping or sub-platform defines.
>
> This was the naming is uniform and consistent.

One could also make the case for switching all of them use the acronym
instead for brevity.

BR,
Jani.


>
> Anusha 
>> BR,	
>> Jani.
>> 
>> 
>> 
>> >
>> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
>> >  drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
>> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
>> >  drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
>> >  5 files changed, 10 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > index 6bed75f1541a..013678caaca8 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -3541,7 +3541,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private
>> *dev_priv)
>> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
>> >  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
>> >  		/* Wa_22011320316:adl-p[a0] */
>> > -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> > +		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0,
>> STEP_B0))
>> >  			dev_priv->display.cdclk.table =
>> adlp_a_step_cdclk_table;
>> >  		else if (IS_ADLP_RPLU(dev_priv))
>> >  			dev_priv->display.cdclk.table = rplu_cdclk_table; diff --
>> git
>> > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > index 6b2d8a1e2aa9..81f3ce5a0a1e 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > @@ -3781,7 +3781,7 @@ static void adlp_cmtg_clock_gating_wa(struct
>> > drm_i915_private *i915, struct inte  {
>> >  	u32 val;
>> >
>> > -	if (!IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
>> > +	if (!IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0) ||
>> >  	    pll->info->id != DPLL_ID_ICL_DPLL0)
>> >  		return;
>> >  	/*
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > index ea0389c5f656..c25457dae315 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -639,7 +639,7 @@ static void hsw_activate_psr2(struct intel_dp
>> *intel_dp)
>> >  	}
>> >
>> >  	/* Wa_22012278275:adl-p */
>> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>> >  		static const u8 map[] = {
>> >  			2, /* 5 lines */
>> >  			1, /* 6 lines */
>> > @@ -807,7 +807,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp
>> *intel_dp,
>> >  		return;
>> >
>> >  	/* Wa_16011303918:adl-p */
>> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> >  		return;
>> >
>> >  	/*
>> > @@ -975,7 +975,7 @@ static bool intel_psr2_config_valid(struct intel_dp
>> *intel_dp,
>> >  		return false;
>> >  	}
>> >
>> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>> >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely
>> functional in this stepping\n");
>> >  		return false;
>> >  	}
>> > @@ -1033,7 +1033,7 @@ static bool intel_psr2_config_valid(struct
>> > intel_dp *intel_dp,
>> >
>> >  	/* Wa_16011303918:adl-p */
>> >  	if (crtc_state->vrr.enable &&
>> > -	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>> > +	    IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
>> >  		drm_dbg_kms(&dev_priv->drm,
>> >  			    "PSR2 not enabled, not compatible with HW stepping
>> + VRR\n");
>> >  		return false;
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > index 36070d86550f..2019e0a87bd3 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -2174,7 +2174,7 @@ static bool skl_plane_has_rc_ccs(struct
>> drm_i915_private *i915,
>> >  		return false;
>> >
>> >  	/* Wa_22011186057 */
>> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> >  		return false;
>> >
>> >  	if (DISPLAY_VER(i915) >= 11)
>> > @@ -2200,7 +2200,7 @@ static bool gen12_plane_has_mc_ccs(struct
>> drm_i915_private *i915,
>> >  		return false;
>> >
>> >  	/* Wa_22011186057 */
>> > -	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> > +	if (IS_ALDERLAKE_P_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> >  		return false;
>> >
>> >  	/* Wa_14013215631 */
>> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
>> > b/drivers/gpu/drm/i915/i915_drv.h index f1205ed3ba71..1a50b8b2f00d
>> > 100644
>> > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > @@ -669,11 +669,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
>> *i915,
>> >  	(IS_ALDERLAKE_S(__i915) && \
>> >  	 IS_GRAPHICS_STEP(__i915, since, until))
>> >
>> > -#define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
>> > +#define IS_ALDERLAKE_P_DISPLAY_STEP(__i915, since, until) \
>> >  	(IS_ALDERLAKE_P(__i915) && \
>> >  	 IS_DISPLAY_STEP(__i915, since, until))
>> >
>> > -#define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
>> > +#define IS_ALDERLAKE_P_GRAPHICS_STEP(__i915, since, until) \
>> >  	(IS_ALDERLAKE_P(__i915) && \
>> >  	 IS_GRAPHICS_STEP(__i915, since, until))
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
