Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1AF68D388
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 11:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDE410E0AA;
	Tue,  7 Feb 2023 10:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A74510E0AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 10:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675764352; x=1707300352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R2r6L5vOhO9PhloQnvkW+F0TzZjczykvZ48hTMjXng0=;
 b=KTMPiLfzTXxqQiXXZp6870N//tZl6g2iYSELDVSBJDQXMwDpKFbLh7cT
 msahpBbJ6peEJjrcqA/B8HO7FCugGnTePYx1PjIyCxa5dfm6ZhFLoglGp
 ruYJKvQm1BNrp+onkI8sVasexUunbveo4XJaGKuTETPM1X+IIxljcIifl
 cgNIwF52NO78x7qongKIGot+IvYlQj2+Ybh7NZDVZm+//VaFpC3JizrF9
 umdotpWuXUGdPfaw9VcCI+m2vZVaeSMGymRnC/2oJ5BBaLDAVWSMTdIu9
 QZNW0OdddIbnM9s5iNDtCEA03WbkN2EjOTYivk0M71xkqXCnmf12MMErB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="313115667"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="313115667"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 02:05:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="735493857"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="735493857"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 02:05:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y+Exp5Gk+JEVFvcq@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675370801.git.jani.nikula@intel.com>
 <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
 <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com> <87cz6mzrwo.fsf@intel.com>
 <Y+Exp5Gk+JEVFvcq@ideak-desk.fi.intel.com>
Date: Tue, 07 Feb 2023 12:05:43 +0200
Message-ID: <87ttzxyemg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Feb 06, 2023 at 06:21:11PM +0200, Jani Nikula wrote:
>> On Fri, 03 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
>> > On Thu, Feb 02, 2023 at 10:47:46PM +0200, Jani Nikula wrote:
>> >> There's only one reference to the struct intel_dmc members dc_state,
>> >> target_dc_state, and allowed_dc_mask within intel_dmc.c, begging the
>> >> question why they are under struct intel_dmc to begin with.
>> >> 
>> >> Moreover, the only references to i915->display.dmc outside of
>> >> intel_dmc.c are to these members.
>> >> 
>> >> They don't belong. Move them from struct intel_dmc to struct
>> >> i915_power_domains, which seems like a more suitable place.
>> >> 
>> >> Cc: Imre Deak <imre.deak@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >> [...]
>> >>
>> >> @@ -481,7 +482,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>> >>  		}
>> >>  	}
>> >>  
>> >> -	dev_priv->display.dmc.dc_state = 0;
>> >> +	power_domains->dc_state = 0;
>> >
>> > This could be dropped as well, as it's already inited by the time the
>> > function is called.
>> 
>> The whole dc_state thing originates to 832dba889e27 ("drm/i915/gen9:
>> Check for DC state mismatch"), and it's all about detecting
>> mismatches. I'm not sure how that works and if it's still useful.
>
> On SKL writing the DC_STATE_EN register didn't take effect, so a
> workaround was added to reread/verify the write. Yes, on newer platforms
> we should probably revisit this and try to remove at least the part
> rereading the register 5 times.
>
>> > I agree with making struct intel_dmc internal to intel_dmc.c. Since DC
>> > state is a functionality provided by the firmware (except of DC9), an
>> > alternative would be to move/add get/set/assert etc. DC state functions
>> > to intel_dmc.c instead and call these from intel_display_power*.c.
>> 
>> That was actually the first patch I wrote but didn't send. There were a
>> few reasons I switched to this one:
>> 
>> First, it adds a dependency between power well and dmc initialization.
>
> Do you mean the dependency that is there already?: taking some power ref
> and keeping the whole runtime PM functionality disabled until the
> firmware load completes. This is based on an earlier decision not to
> support runtime PM w/o DMC.

intel_power_domains_init() is called very early. It adjusts
allowed_dc_mask and target_dc_state.

intel_dmc_ucode_init() is called later, and depends on
intel_power_domains_init() in the way you describe above.

If intel_dmc_ucode_init() starts allocating intel_dmc dynamically, it
needs to exist before intel_power_domains_init() modifies
allowed_dc_mask and target_dc_state.

It's an interdependency that would need to be broken up somehow.

>
>> Second, it's a bunch of boilerplate, six get/set functions altogether,
>> and all of them checking for dmc init in patch 3.
>> 
>> Third, it still seems funny to have these members stored in intel_dmc,
>> accessed via intel_dmc.c, but intel_dmc.c not actually using them for
>> anything internally. It's only the power well code that uses
>> them. Should more of the DC state handling be moved to intel_dmc.c then?
>
> I thought that any functions accessing the DC_STATE_EN register would be
> moved as well (besides the state checkers you refer to). I wasn't sure
> if my suggestion makes sense without actually seeing the end result; I
> think we can also regard the DC_STATE_EN register as a more general
> display PM HW interface leaving that in intel_display_power* (since DC9
> which isn't a DMC thing is also toggled via it) and leave only the
> firmware loading/initialization in intel_dmc.c as in your RFC.

Yeah, I don't know. *lots of shrugging* :)

>
>> BR,
>> Jani.
>> 
>> >>  	gen9_set_dc_state_debugmask(dev_priv);
>> >>  
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> index 88eae74dbcf2..da8ba246013e 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> >> @@ -40,9 +40,6 @@ struct intel_dmc {
>> >>  		bool present;
>> >>  	} dmc_info[DMC_FW_MAX];
>> >>  
>> >> -	u32 dc_state;
>> >> -	u32 target_dc_state;
>> >> -	u32 allowed_dc_mask;
>> >>  	intel_wakeref_t wakeref;
>> >>  };
>> >>  
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> >> index 2954759e9d12..cf13580af34a 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> >> @@ -702,6 +702,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>> >>  {
>> >>  	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
>> >>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> >> +	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>> >>  	u32 exit_scanlines;
>> >>  
>> >>  	/*
>> >> @@ -718,7 +719,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>> >>  	if (crtc_state->enable_psr2_sel_fetch)
>> >>  		return;
>> >>  
>> >> -	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
>> >> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
>> >>  		return;
>> >>  
>> >>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
>> >> -- 
>> >> 2.34.1
>> >> 
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
