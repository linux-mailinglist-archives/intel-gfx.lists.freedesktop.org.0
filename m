Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA39268C30E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217C010E9B9;
	Mon,  6 Feb 2023 16:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB30E10E9B9
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675700476; x=1707236476;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tX+KNCw9OExw8R9ceK57K57Nn8abGMtGqxzJS+GvOT0=;
 b=GAG98Gu9iIYMR2uUpXdfb1jWpwNpGE1F533eZuvMbl2dyc/qF9X28PAh
 odXolrL5o6L8ABWNcLgOEFRPqqGRT9/qWzArUTPHBR/cD+BT+H7qNWgpl
 j3jKk7mZHmlCoI1m2dRaGnGZU1ecFXEPPeNkp72jVjOrjsGPQiYy8oJrC
 OtZrxHMoA5I7GwHy4VUDj0bl5fnoGRCl5kW7RHLgMupCRNlC2Mr7n0HOC
 uuunkSGPAyUNfHbe9yiE5kItew1xDpkA+pbadqSbG5ByxU4je51AtWcVm
 riyem6tGo5egaxvQ0R+mTVSaDFVHeqVbC4iS10OBw9NxS7q0XQ8snbv1s Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="391639412"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="391639412"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:21:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="911986088"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="911986088"
Received: from hayatibx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.213])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:21:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675370801.git.jani.nikula@intel.com>
 <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
 <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com>
Date: Mon, 06 Feb 2023 18:21:11 +0200
Message-ID: <87cz6mzrwo.fsf@intel.com>
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

On Fri, 03 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Feb 02, 2023 at 10:47:46PM +0200, Jani Nikula wrote:
>> There's only one reference to the struct intel_dmc members dc_state,
>> target_dc_state, and allowed_dc_mask within intel_dmc.c, begging the
>> question why they are under struct intel_dmc to begin with.
>> 
>> Moreover, the only references to i915->display.dmc outside of
>> intel_dmc.c are to these members.
>> 
>> They don't belong. Move them from struct intel_dmc to struct
>> i915_power_domains, which seems like a more suitable place.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>> [...]
>>
>> @@ -481,7 +482,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>>  		}
>>  	}
>>  
>> -	dev_priv->display.dmc.dc_state = 0;
>> +	power_domains->dc_state = 0;
>
> This could be dropped as well, as it's already inited by the time the
> function is called.

The whole dc_state thing originates to 832dba889e27 ("drm/i915/gen9:
Check for DC state mismatch"), and it's all about detecting
mismatches. I'm not sure how that works and if it's still useful.

> I agree with making struct intel_dmc internal to intel_dmc.c. Since DC
> state is a functionality provided by the firmware (except of DC9), an
> alternative would be to move/add get/set/assert etc. DC state functions
> to intel_dmc.c instead and call these from intel_display_power*.c.

That was actually the first patch I wrote but didn't send. There were a
few reasons I switched to this one:

First, it adds a dependency between power well and dmc initialization.

Second, it's a bunch of boilerplate, six get/set functions altogether,
and all of them checking for dmc init in patch 3.

Third, it still seems funny to have these members stored in intel_dmc,
accessed via intel_dmc.c, but intel_dmc.c not actually using them for
anything internally. It's only the power well code that uses
them. Should more of the DC state handling be moved to intel_dmc.c then?


BR,
Jani.


>
>>  
>>  	gen9_set_dc_state_debugmask(dev_priv);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index 88eae74dbcf2..da8ba246013e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -40,9 +40,6 @@ struct intel_dmc {
>>  		bool present;
>>  	} dmc_info[DMC_FW_MAX];
>>  
>> -	u32 dc_state;
>> -	u32 target_dc_state;
>> -	u32 allowed_dc_mask;
>>  	intel_wakeref_t wakeref;
>>  };
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 2954759e9d12..cf13580af34a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -702,6 +702,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>>  {
>>  	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
>>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> +	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>>  	u32 exit_scanlines;
>>  
>>  	/*
>> @@ -718,7 +719,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>>  	if (crtc_state->enable_psr2_sel_fetch)
>>  		return;
>>  
>> -	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
>> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
>>  		return;
>>  
>>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
