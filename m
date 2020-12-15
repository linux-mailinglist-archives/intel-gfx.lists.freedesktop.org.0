Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645182DA83C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 07:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C9E6E160;
	Tue, 15 Dec 2020 06:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84B76E160
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 06:53:56 +0000 (UTC)
IronPort-SDR: 9XLntn8ItTMbMEpJbd3iKkR9RDpn2gLIelrf4aGIsLof5jOBsF63MLhf+eoDh29alZkgOqJK4c
 ad4D8aE37aOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="172268825"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="172268825"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 22:53:56 -0800
IronPort-SDR: p0055pNiIe/nQ8+IDK2qGYUNg7OOvVPd6/0LxSZGAwlTZgJ56jICVTq2T6F7KtKtkcgpLPxAZE
 fouHr6l9gLVA==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="556171314"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 22:53:55 -0800
Date: Tue, 15 Dec 2020 12:10:37 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201215064034.GI9309@intel.com>
References: <20201204081845.26528-1-anshuman.gupta@intel.com>
 <20201204081845.26528-2-anshuman.gupta@intel.com>
 <87h7os77mj.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7os77mj.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dp: optimize pps_lock wherever
 required
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-11 at 16:13:56 +0200, Jani Nikula wrote:
> On Fri, 04 Dec 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > Reading backlight status from PPS register doesn't require
> > AUX power on the platform which has South Display Engine on PCH.
> > It invokes a unnecessary power well enable/disable noise.
> > optimize it wherever is possible.
> 
> Three aspects here:
Thanks Jani for comments.
> 
> 1. What's the root cause for the glitches, really? AFAICT this is still
> an open question, judging from the discussion in previous versions.
Yes it is still open, but it can be concluded from the experiments (*)
that this issue is not due to race in driver between flips update and
brightness update.
> 
> 2. See why we end up here in the first place for brightness
> updates. It's a long story (*), but maybe the fix isn't to optimize this
> path, but to avoid calling this function for regular brightness updates
> to begin with?
Agree with you, may be this is the correct time to pursue for a correct fix.
> 
> 3. The implementation here seems like a hack, to be honest. Considering
> the points above, it really has a bad vibe of papering over something
> else.
Could you please provide your inputs to improve this patch so chrome-os
can use this patch for their consumption. 
Meanwhile in parallel we can work to fix this brightness interface.

(*) Experiments:
1. Get/Put POWER_DOMAIN_MODESET power domain always in atomic_commit_tail (suggested by Ville).
   Not helping to fix the glitch.
2. 200us delay in starts of atomic_commit_tail to serialze the flips against DC3CO exit delay(200us).
   Not helping to fix the glitch.
> 
> BR,
> Jani.
> 
> 
> 
> (*)
> It was a Chrome OS requirement originally to be able to quickly switch
> off backlight through the backlight sysfs interface, without switching
> off the display through the KMS API. For whatever reason. We can't just
> set the PWM to 0, because that may an invalid thing to do on some boards
> out there. (On some device it ended up pulling other lanes on the eDP
> connector to 0 V, but I digress.)
For my curiosity i am interested to know, how did other linux distribution 
like ubuntu handled the brightness update by dedicated brightness key before
this original requirement from chrome-os?
Thanks,
Anshuman Gupta.
> 
> So the hack is we have a way to switch the eDP power sequencer backlight
> bit off/on, as a substate of enabled backlight, through using the
> backlight sysfs to set the brightness to 0 or using bl_power.
> 
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++--
> >  1 file changed, 45 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2d4d5e95af84..7e18e4ff50f4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -892,6 +892,47 @@ pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
> >  	return 0;
> >  }
> >  
> > +/*
> > + * Platform with PCH based SDE doesn't require to enable AUX power
> > + * for simple PPS register access like whether backlight is enabled.
> > + * use pch_pps_lock()/pch_pps_unlock() wherever we don't require
> > + * aux power to avoid unnecessary power well enable/disable back
> > + * and forth.
> > + */
> > +static intel_wakeref_t
> > +pch_pps_lock(struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > +	intel_wakeref_t wakeref;
> > +
> > +	if (!HAS_PCH_SPLIT(dev_priv))
> > +		wakeref = intel_display_power_get(dev_priv,
> > +						  intel_aux_power_domain(dp_to_dig_port(intel_dp)));
> > +	else
> > +		wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> > +
> > +	mutex_lock(&dev_priv->pps_mutex);
> > +
> > +	return wakeref;
> > +}
> > +
> > +static intel_wakeref_t
> > +pch_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wakeref)
> > +{
> > +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > +
> > +	mutex_unlock(&dev_priv->pps_mutex);
> > +
> > +	if (!HAS_PCH_SPLIT(dev_priv))
> > +		intel_display_power_put(dev_priv,
> > +					intel_aux_power_domain(dp_to_dig_port(intel_dp)),
> > +					wakeref);
> > +	else
> > +		intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> > +
> > +	return 0;
> > +}
> > +
> >  #define with_pps_lock(dp, wf) \
> >  	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))
> >  
> > @@ -3453,8 +3494,10 @@ static void intel_edp_backlight_power(struct intel_connector *connector,
> >  	bool is_enabled;
> >  
> >  	is_enabled = false;
> > -	with_pps_lock(intel_dp, wakeref)
> > -		is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
> > +	wakeref = pch_pps_lock(intel_dp);
> > +	is_enabled = ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
> > +	pch_pps_unlock(intel_dp, wakeref);
> > +
> >  	if (is_enabled == enable)
> >  		return;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
