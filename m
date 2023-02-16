Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9F86994BA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 13:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC5D10E16F;
	Thu, 16 Feb 2023 12:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F0410E175
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 12:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676551680; x=1708087680;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=gO8A6QfMzDO+bWPE0Wpt1/tlczWUD+ev7uvOIO+EtyU=;
 b=k+gH5ubLha0fadJoDZFNWzxqrNSldlw72XMBN89s7syzWJ8at96OUqxD
 mxcUPfkFNxcKN2Cn2sGrr1vgkfPE38tcvLfeCSx5n2b/n9ENB7Qc7But2
 7xv1Z6+n8PolTtUfn+LuUSo8ZQzejae6yM6s2ygT33L0Tzvdp77KF7EL2
 k9nxsEjaLi5QC4HiO9EINHf36yorsfXBW/EqGcJQGKkO56iwshCTLWR0a
 iFhWLytTQYIN4i4NI49WPubf9DEVBWGpzZHrgQ14IPlRqGU0xW8DYdLo5
 QujnujOUPJsqJQrlHRbAdstknrYehmc/gmz6dpypM14zvQV6ozv8lId+F A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="417929140"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="417929140"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 04:48:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="794012140"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="794012140"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 04:47:59 -0800
Date: Thu, 16 Feb 2023 14:47:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+4l/NMQSxO5xTXj@ideak-desk.fi.intel.com>
References: <cover.1675370801.git.jani.nikula@intel.com>
 <2bff992c6db17dabe4470d3babf1fc1144ad4d83.1675370801.git.jani.nikula@intel.com>
 <Y91n9NfNyV9F0dWw@ideak-desk.fi.intel.com>
 <87cz6mzrwo.fsf@intel.com>
 <Y+Exp5Gk+JEVFvcq@ideak-desk.fi.intel.com>
 <87ttzxyemg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ttzxyemg.fsf@intel.com>
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

On Tue, Feb 07, 2023 at 12:05:43PM +0200, Jani Nikula wrote:
> [...]
> >> > I agree with making struct intel_dmc internal to intel_dmc.c. Since DC
> >> > state is a functionality provided by the firmware (except of DC9), an
> >> > alternative would be to move/add get/set/assert etc. DC state functions
> >> > to intel_dmc.c instead and call these from intel_display_power*.c.
> >> 
> >> That was actually the first patch I wrote but didn't send. There were a
> >> few reasons I switched to this one:
> >> 
> >> First, it adds a dependency between power well and dmc initialization.
> >
> > Do you mean the dependency that is there already?: taking some power ref
> > and keeping the whole runtime PM functionality disabled until the
> > firmware load completes. This is based on an earlier decision not to
> > support runtime PM w/o DMC.
> 
> intel_power_domains_init() is called very early. It adjusts
> allowed_dc_mask and target_dc_state.
> 
> intel_dmc_ucode_init() is called later, and depends on
> intel_power_domains_init() in the way you describe above.
> 
> If intel_dmc_ucode_init() starts allocating intel_dmc dynamically, it
> needs to exist before intel_power_domains_init() modifies
> allowed_dc_mask and target_dc_state.

Ok, I missed all the above.

> It's an interdependency that would need to be broken up somehow.
> 
> >> Second, it's a bunch of boilerplate, six get/set functions altogether,
> >> and all of them checking for dmc init in patch 3.
> >> 
> >> Third, it still seems funny to have these members stored in intel_dmc,
> >> accessed via intel_dmc.c, but intel_dmc.c not actually using them for
> >> anything internally. It's only the power well code that uses
> >> them. Should more of the DC state handling be moved to intel_dmc.c then?
> >
> > I thought that any functions accessing the DC_STATE_EN register would be
> > moved as well (besides the state checkers you refer to). I wasn't sure
> > if my suggestion makes sense without actually seeing the end result; I
> > think we can also regard the DC_STATE_EN register as a more general
> > display PM HW interface leaving that in intel_display_power* (since DC9
> > which isn't a DMC thing is also toggled via it) and leave only the
> > firmware loading/initialization in intel_dmc.c as in your RFC.
> 
> Yeah, I don't know. *lots of shrugging* :)

In the end I think it was wrong on my side to regard the DC_STATE_EN HW
i/f as a DMC internal thing. Rather it is for a display wide runtime PM
control. So yes, moving the DC state fields to intel_display_power.c
makes sense, as well as making the DMC FW internals local to
intel_dmc.c.

Could you follow up with the actual patches?

> >> BR,
> >> Jani.
> >> 
> >> >>  	gen9_set_dc_state_debugmask(dev_priv);
> >> >>  
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> >> >> index 88eae74dbcf2..da8ba246013e 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> >> >> @@ -40,9 +40,6 @@ struct intel_dmc {
> >> >>  		bool present;
> >> >>  	} dmc_info[DMC_FW_MAX];
> >> >>  
> >> >> -	u32 dc_state;
> >> >> -	u32 target_dc_state;
> >> >> -	u32 allowed_dc_mask;
> >> >>  	intel_wakeref_t wakeref;
> >> >>  };
> >> >>  
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> >> index 2954759e9d12..cf13580af34a 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> >> @@ -702,6 +702,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> >> >>  {
> >> >>  	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
> >> >>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> >> >> +	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> >> >>  	u32 exit_scanlines;
> >> >>  
> >> >>  	/*
> >> >> @@ -718,7 +719,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> >> >>  	if (crtc_state->enable_psr2_sel_fetch)
> >> >>  		return;
> >> >>  
> >> >> -	if (!(dev_priv->display.dmc.allowed_dc_mask & DC_STATE_EN_DC3CO))
> >> >> +	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
> >> >>  		return;
> >> >>  
> >> >>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
> >> >> -- 
> >> >> 2.34.1
> >> >> 
> >> 
> >> -- 
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
