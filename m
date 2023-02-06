Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A3068C3F7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:58:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF4E10E9DF;
	Mon,  6 Feb 2023 16:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D1810E9DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675702700; x=1707238700;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=NrXo/mNlvD15TrIiqBEAoviJItP4v9FCUTgv1d6tRmY=;
 b=mxv4gFcsrGe1sJjoFYz5pRMs0j7Slpgv0vaMydQarc1CQItHlHw3XMQ1
 6FqjQVGVPuaWB6Q+gNnMMgj4m2CLxXRErmnano4qM8fUhbU+GIYnyzMBN
 Vp7y9gJSdgkjgFgfn3TggVhISFX5bpa5Jbvft6JwHMUFdiE81RpMYeEdX
 eYwDI2fRQ84k8vVpR+ThPlmRl+4lUHUkeJqr5krvdKY5oqhJ7VlI5wXy0
 31uuT3A+bKob/qTI9GFVZayHDQRRgbh2Q/cz+ziHLEZB4wEkOd5XCuZCJ
 pkNoUU4UwZPkwY1sJYJelGPOBd5DoWyDnUqK36+3M2fOcWfNalz/yXomR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="331386875"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="331386875"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:58:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="730067733"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="730067733"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:58:18 -0800
Date: Mon, 6 Feb 2023 18:58:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+Exp5Gk+JEVFvcq@ideak-desk.fi.intel.com>
References: <cover.1675370801.git.jani.nikula@intel.com>
 <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
 <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com>
 <87cz6mzrwo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cz6mzrwo.fsf@intel.com>
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915/power: move dc state members to
 struct i915_power_domains
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 06, 2023 at 06:21:11PM +0200, Jani Nikula wrote:
> On Fri, 03 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Feb 02, 2023 at 10:47:46PM +0200, Jani Nikula wrote:
> >> There's only one reference to the struct intel_dmc members dc_state,
> >> target_dc_state, and allowed_dc_mask within intel_dmc.c, begging the
> >> question why they are under struct intel_dmc to begin with.
> >> 
> >> Moreover, the only references to i915->display.dmc outside of
> >> intel_dmc.c are to these members.
> >> 
> >> They don't belong. Move them from struct intel_dmc to struct
> >> i915_power_domains, which seems like a more suitable place.
> >> 
> >> Cc: Imre Deak <imre.deak@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >> [...]
> >>
> >> @@ -481,7 +482,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> >>  		}
> >>  	}
> >>  
> >> -	dev_priv->display.dmc.dc_state = 0;
> >> +	power_domains->dc_state = 0;
> >
> > This could be dropped as well, as it's already inited by the time the
> > function is called.
> 
> The whole dc_state thing originates to 832dba889e27 ("drm/i915/gen9:
> Check for DC state mismatch"), and it's all about detecting
> mismatches. I'm not sure how that works and if it's still useful.

On SKL writing the DC_STATE_EN register didn't take effect, so a
workaround was added to reread/verify the write. Yes, on newer platforms
we should probably revisit this and try to remove at least the part
rereading the register 5 times.

> > I agree with making struct intel_dmc internal to intel_dmc.c. Since DC
> > state is a functionality provided by the firmware (except of DC9), an
> > alternative would be to move/add get/set/assert etc. DC state functions
> > to intel_dmc.c instead and call these from intel_display_power*.c.
> 
> That was actually the first patch I wrote but didn't send. There were a
> few reasons I switched to this one:
> 
> First, it adds a dependency between power well and dmc initialization.

Do you mean the dependency that is there already?: taking some power ref
and keeping the whole runtime PM functionality disabled until the
firmware load completes. This is based on an earlier decision not to
support runtime PM w/o DMC.

> Second, it's a bunch of boilerplate, six get/set functions altogether,
> and all of them checking for dmc init in patch 3.
> 
> Third, it still seems funny to have these members stored in intel_dmc,
> accessed via intel_dmc.c, but intel_dmc.c not actually using them for
> anything internally. It's only the power well code that uses
> them. Should more of the DC state handling be moved to intel_dmc.c then?

I thought that any functions accessing the DC_STATE_EN register would be
moved as well (besides the state checkers you refer to). I wasn't sure
if my suggestion makes sense without actually seeing the end result; I
think we can also regard the DC_STATE_EN register as a more general
display PM HW interface leaving that in intel_display_power* (since DC9
which isn't a DMC thing is also toggled via it) and leave only the
firmware loading/initialization in intel_dmc.c as in your RFC.

> BR,
> Jani.
> 
> >>  	gen9_set_dc_state_debugmask(dev_priv);
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> >> index 88eae74dbcf2..da8ba246013e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> >> @@ -40,9 +40,6 @@ struct intel_dmc {
> >>  		bool present;
> >>  	} dmc_info[DMC_FW_MAX];
> >>  
> >> -	u32 dc_state;
> >> -	u32 target_dc_state;
> >> -	u32 allowed_dc_mask;
> >>  	intel_wakeref_t wakeref;
> >>  };
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> index 2954759e9d12..cf13580af34a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> @@ -702,6 +702,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> >>  {
> >>  	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
> >>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >> +	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> >>  	u32 exit_scanlines;
> >>  
> >>  	/*
> >> @@ -718,7 +719,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> >>  	if (crtc_state->enable_psr2_sel_fetch)
> >>  		return;
> >>  
> >> -	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
> >> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
> >>  		return;
> >>  
> >>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
> >> -- 
> >> 2.34.1
> >> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
