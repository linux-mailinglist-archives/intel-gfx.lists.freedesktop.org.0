Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEA7908C9F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 15:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FCA10E04E;
	Fri, 14 Jun 2024 13:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxVb6/sY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B024410E027
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 13:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718372544; x=1749908544;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5Hxk5LNDTypeDT3fi16gj6HX7UexZJ59z1IABQvihpo=;
 b=nxVb6/sYisYJhgohcHuKjw2cJGSEtRLyQ+exgXDImQ82EsT8nPb7croG
 IZmqTD6hKoHWiE7Da/PhkuAlsOhgnsH0McpsN8fqDJrDV5wyGb9I0oxjc
 nCSyWuQIceL8kIBVfzsslOJhjBbSRbhiB8gd3zKPFBqXuoz9EwlKeZvAB
 nvGFLYRZB9+/dNxT7ZjHCchC/8dRGHwtVTqUy66syZEOQm2u3AzWqOqh5
 X6ohWUKEnHrWlr2AL0Q4SR2pjsOrCirCbqGOrG457Xi0JdmcHeR8IboRZ
 P3SXm++L9jXrtp9QrdXImJdqJYx8qyDe67eIWSU2fDS82A4wuCkdbvWe5 A==;
X-CSE-ConnectionGUID: Aa3C5OOLTZmuMWQ93bRKDQ==
X-CSE-MsgGUID: B+HZflSBSFy8VBIWnd710A==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="18177894"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="18177894"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 06:41:54 -0700
X-CSE-ConnectionGUID: K0w0OFb/TlypmosswSqHig==
X-CSE-MsgGUID: syLOzVHVROa5My9YS4EZkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40429992"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 06:41:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Manna, Animesh" <animesh.manna@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
In-Reply-To: <SN7PR11MB6750B964412CEAA41264C6CBE3C62@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240606082926.1816416-2-suraj.kandpal@intel.com>
 <20240606082926.1816416-4-suraj.kandpal@intel.com>
 <8734pqba5u.fsf@intel.com>
 <SN7PR11MB6750B964412CEAA41264C6CBE3C62@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 14 Jun 2024 16:41:49 +0300
Message-ID: <874j9viqua.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 10 Jun 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: Re: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
>> 
>> On Thu, 06 Jun 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > To reach PC10 when PKG_C_LATENCY is configure we must do the following
>> > things
>> > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
>> > entered
>> > 2) Allow PSR2 deep sleep when DC5 can be entered
>> > 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
>> > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
>> > not happening.
>> >
>> > WA: 16023497226
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_psr.c | 75
>> > +++++++++++++++++++++++-
>> >  1 file changed, 73 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > index 6fc88f6c6b26..b22745c019df 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -811,12 +811,81 @@ static u8 psr_compute_idle_frames(struct
>> intel_dp *intel_dp)
>> >  	return idle_frames;
>> >  }
>> >
>> > +static bool intel_psr_check_delayed_vblank_limit(struct drm_i915_private
>> *i915,
>> > +						 enum transcoder
>> cpu_transcoder) {
>> > +	return intel_de_read(i915,
>> > +TRANS_SET_CONTEXT_LATENCY(cpu_transcoder)) >= 6;
>> 
> Hi Jani,
> Thanks for the reviews
>
>> Please don't use the hardware to preserve the state for you. It will get really
>> complicated to maintain.
>> 
>
> Yes wanted to calculate the delayed vblank using the following way
> Adjusted_mode->vblank_start - adjusted_mode->vblank_end
> But I'll need crtc_state for that and I don't see a way of deriving it
> Specially when this function is called from intel_psr_work
> One way could be to have this wa check function be called from 
> Intel_psr_enable_locked and save the corresponding Booleans in
> Intel_psr or make in  drm_i915_private
> structure and access that when intel_psr_activate is called from
> Intel_psr_resume and intel_psr_work.
> Do you think that could be feasible ?

You'll be able to figure out a lot of cases up front at compute config
time, and disable PSR beforehand.

You'll know LNL_PKG_C_LATENCY (we seem to always configure it). You'll
know TRANS_SET_CONTEXT_LATENCY. You'll know whether all transcoders have
PSR enabled.

I think you'll need to split the conditions, and disable PSR as early as
possible when it should not be enabled. Then at actual enabling time,
you'll know the conditions that already have to hold, and you can check
fewer things.

This workaround is a bummer because it's permanent. It also means we
need to do this properly. Can't just poke at random stuff, because it'll
be painful forever.

BR,
Jani.

>
>> > +}
>> > +
>> > +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private
>> > +*i915) {
>> > +	return intel_de_read(i915, LNL_PKG_C_LATENCY) == U32_MAX;
>> 
>> Ditto.
>> 
>
> Similar question as above only place that I can manage a state to see if it is configured or not
> would be in drm_i915_private.
>
>> > +}
>> > +
>> > +static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private
>> > +*i915) {
>> > +	struct intel_crtc *intel_crtc;
>> > +	bool ret = true;
>> > +
>> > +	for_each_intel_crtc(&i915->drm, intel_crtc) {
>> > +		struct intel_encoder *encoder;
>> > +		struct drm_crtc *crtc = &intel_crtc->base;
>> > +		enum pipe pipe = intel_crtc->pipe;
>> > +
>> > +		if (!crtc->active)
>> > +			continue;
>> > +
>> > +		if (!(i915->display.irq.de_irq_mask[pipe] &
>> GEN8_PIPE_VBLANK))
>> 
>> You have no business looking directly at that. It's for display irq code *only*.
>> 
>
> Is there another way I can ensure if the vblank interrupt for the particular pipe is disabled?
>
>> > +			ret = false;
>> > +
>> > +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
>> > +			struct intel_dp *intel_dp = enc_to_intel_dp(_encoder);
>> > +			struct intel_psr *psr = &intel_dp->psr;
>> > +
>> > +			if (!psr->enabled)
>> > +				ret = false;
>> > +		}
>> > +	}
>> > +
>> > +	return ret;
>> > +}
>> > +
>> > +static bool wa_16023497226_check(struct intel_dp *intel_dp, bool
>> > +psr1) {
>> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> > +	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>> > +
>> > +	if (DISPLAY_VER(i915) != 20)
>> > +		return true;
>> > +
>> > +	if (is_dpkg_c_configured(i915)) {
>> > +		if (psr1 &&
>> > +		    (intel_psr_check_delayed_vblank_limit(i915,
>> cpu_transcoder) ||
>> > +		     intel_psr_is_dc5_entry_possible(i915)))
>> > +			return true;
>> > +		else if (!psr1 && is_dc5_entry_possible(i915))
>> > +			return true;
>> > +		else
>> > +			return false;
>> > +	}
>> > +
>> > +	return true;
>> > +}
>> > +
>> >  static bool hsw_activate_psr1(struct intel_dp *intel_dp)  {
>> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>> >  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>> >  	u32 max_sleep_time = 0x1f;
>> > -	u32 val = EDP_PSR_ENABLE;
>> > +	u32 val = 0;
>> > +
>> > +	/* WA: 16023497226*/
>> > +	if (wa_16023497226_check(intel_dp, true)) {
>> > +		val = EDP_PSR_ENABLE;
>> > +	} else {
>> > +		drm_dbg_kms(&dev_priv->drm, "PSR1 was not activated\n");
>> 
>> Please add reason.
>> 
>> > +		return false;
>> > +	}
>> 
>> Switch the condition around and use early return.
>> 
>
> Sure will do.
>
> Regards,
> Suraj Kandpal
>> >
>> >  	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>> >
>> > @@ -910,7 +979,9 @@ static void hsw_activate_psr2(struct intel_dp
>> *intel_dp)
>> >  	u32 val = EDP_PSR2_ENABLE;
>> >  	u32 psr_val = 0;
>> >
>> > -	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>> > +	/* WA: 16023497226*/
>> > +	if (wa_16023497226_check(intel_dp, false))
>> > +		val |=
>> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>> >
>> >  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
>> >  		val |= EDP_SU_TRACK_ENABLE;
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
