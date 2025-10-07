Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84508BC1E3F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 17:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C865410E6D8;
	Tue,  7 Oct 2025 15:20:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLkqqejA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EECB410E6D5;
 Tue,  7 Oct 2025 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759850401; x=1791386401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9XBeOkS8X+v80NhFlpvfFpGs3SnIL8YpoNCzrRsMibE=;
 b=TLkqqejAiz2UQrSZfk0HQyfKGIRWNSuXq7Zr2Jgb1SAlzi3QLiMuJeRd
 wC/ZfhlT7Ks8WfxuHvHOdEovc4QCTrwjhEEtocXZ6S1nl4CDHVL+FefI8
 oer0tk90X6+Y5G1gmt5emHLcrEQnfdrMB4o6dWKQYlqJecjWjwPfJUbcW
 C3kDRivoo2egr86LEWOw1K7pjcqp6zNBZi/35SSVCCdOdQQQPHS8HtrRh
 CUK/xPZGb6M+I//VfY1yjT0hB78WVdoYwNtb6LX0sndCrPzVsub29pVnj
 zixY4Z62CbkOeJpgSIUi9ri6yh2MfyUqR328qnnOJwurCJXOo4ZZADGsC w==;
X-CSE-ConnectionGUID: jcXi/YZcTMGVfKVHeiwXpg==
X-CSE-MsgGUID: 5MWoDyTcRiepbVnhIIMtKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="62196223"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="62196223"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:20:01 -0700
X-CSE-ConnectionGUID: tuaiGqoTSJKEno17c6lRLw==
X-CSE-MsgGUID: QgplA5RDQ9ak7RDAjG5JWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184212686"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:19:59 -0700
Date: Tue, 7 Oct 2025 18:19:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/16] drm/i915/display: Add vblank_start adjustment
 logic for always-on VRR TG
Message-ID: <aOUvnFuMJuIq3kOy@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-14-ankit.k.nautiyal@intel.com>
 <aOQe8QaVZBLIquzM@intel.com>
 <3fbab09b-28c7-4984-87af-1055daaff252@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3fbab09b-28c7-4984-87af-1055daaff252@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Oct 07, 2025 at 12:00:34PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
> > On Mon, Oct 06, 2025 at 09:58:49AM +0530, Ankit Nautiyal wrote:
> >> As we move towards using a shorter, optimized guardband, we need to adjust
> >> how the delayed vblank start is computed.
> >>
> >> Introduce intel_crtc_compute_vrr_guardband() to handle guardband
> >> computation and apply vblank_start adjustment for platforms that always use
> >> the VRR timing generator.
> >>
> >> This function wraps the existing intel_vrr_compute_guardband() and adjusts
> >> crtc_vblank_start using (vblank_length - guardband) only when
> >> intel_vrr_always_use_vrr_tg() is true. Since the guardband is not yet
> >> optimized, the adjustment currently evaluates to zero, preserving existing
> >> behavior.
> >>
> >> This paves way for guardband optimization, by handling the movement of
> >> the crtc_vblank_start for platforms that have VRR TG always active.
> >>
> >> Also update allow_vblank_delay_fastset() to permit vblank delay adjustments
> >> during fastboot when VRR TG is always active, even without inherited state.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++++++--
> >>   1 file changed, 30 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index b2d4e24fd7c6..1964e41b5704 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -2403,6 +2403,27 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
> >>   	return 0;
> >>   }
> >>   
> >> +static void intel_crtc_compute_vrr_guardband(struct intel_atomic_state *state,
> >> +					     struct intel_crtc *crtc)
> > Why this wrapper? You could just stick the adjustemnt into
> > intel_vrr_compute_guardband().
> 
> 
> The idea was to prepare for the optimized guardband which needs 
> connector also.

You shouldn't need the connector there. Looks like you were just using
it to figure out the output type when you could have just grabbed that
from the crtc state.

> 
> In subsequent patch I am getting the connector here to use the optimized 
> guardband only for platforms with always_use_vrr_tg=true.
> And at last I am making changes in intel_vrr_compute_guardband() itself.
> 
> As for this patch I can just avoid the wrapper and just use the adjustment.
> 
> >
> >> +{
> >> +	struct intel_display *display = to_intel_display(state);
> >> +	struct intel_crtc_state *crtc_state =
> >> +		intel_atomic_get_new_crtc_state(state, crtc);
> >> +	struct drm_display_mode *adjusted_mode =
> >> +		&crtc_state->hw.adjusted_mode;
> >> +
> >> +	intel_vrr_compute_guardband(crtc_state);
> >> +
> >> +	if (intel_vrr_always_use_vrr_tg(display)) {
> >> +		int vblank_length = adjusted_mode->crtc_vtotal -
> >> +				    (crtc_state->set_context_latency +
> >> +				     adjusted_mode->crtc_vdisplay);
> >> +
> >> +		adjusted_mode->crtc_vblank_start +=
> >> +			vblank_length - crtc_state->vrr.guardband;
> > Why aren't you using the same 'vblank_start = vtotal-guardband' here as
> > during readout?
> 
> Hmm I was thinking this more as change in the vblank_start. In 
> compute_set_context_latency we move the vblank_start by SCL lines. Here 
> we move further as much amount as the change in guardband.

The SCL adjustment is for the legacy timing generator timings.
This should just overwrite the whole thing with what the VRR
timing generator will actually do.

> 
> 
> But I guess that is not very intuitive, so I will just set 
> crtc_vblank_start as vtotal - guardband here.
> 
> 
> >
> >> +	}
> >> +}
> >> +
> >>   static int intel_crtc_compute_config(struct intel_atomic_state *state,
> >>   				     struct intel_crtc *crtc)
> >>   {
> >> @@ -2414,7 +2435,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
> >>   	if (ret)
> >>   		return ret;
> >>   
> >> -	intel_vrr_compute_guardband(crtc_state);
> >> +	intel_crtc_compute_vrr_guardband(state, crtc);
> >>   
> >>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
> >>   	if (ret)
> >> @@ -5105,9 +5126,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
> >>   	 * Allow fastboot to fix up vblank delay (handled via LRR
> >>   	 * codepaths), a bit dodgy as the registers aren't
> >>   	 * double buffered but seems to be working more or less...
> >> +	 *
> >> +	 * Also allow this when the VRR timing generator is always on,
> >> +	 * which implies optimized guardband is used. In such cases,
> >> +	 * vblank delay may vary even without inherited state, but it's
> >> +	 * still safe as VRR guardband is still same.
> >>   	 */
> >> -	return HAS_LRR(display) && old_crtc_state->inherited &&
> >> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> >> +	return HAS_LRR(display) &&
> >> +	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
> >> +	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> > This part doesn't seem directly related to the making crtc_vblank_start
> > correct. We still use the non-optimzied guardband so crtc_vblank_start
> > should not be changing during normal runtime operation.
> 
> 
> Yes we do not need this at this time, but only when we really start 
> using optimized guardband.
> I can make it as a separate function.
> 
> Regards,
> 
> Ankit
> 
> 
> >>   }
> >>   
> >>   bool
> >> -- 
> >> 2.45.2

-- 
Ville Syrjälä
Intel
