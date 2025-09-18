Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A5CB85252
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 16:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB1210E8CB;
	Thu, 18 Sep 2025 14:18:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JyKu+JYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C792B10E8C8;
 Thu, 18 Sep 2025 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758205092; x=1789741092;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CMqnAe5W/JWllq8qKxLd9K7F/1enn8gLd0aQNSAjZZE=;
 b=JyKu+JYj10mFJM23sO2C7+QZXGZ2oyAabnaidfncPQ7NIacMYnrveIwc
 /xJisPTx7K8Hg8VgopyR8/Rd/+7bWpwiMJcBrgCNc/qXy4vjzYH7k/q1O
 p1xq7P/hysRzin4sGK7iLTDQFAVJOVjUteJsZML0gvLkUFmJ/z/wFLjIx
 vyKJfCKAiyRkyMgDxxfZo85bVswq0pINTXpiLTUwDqfJ8/4CoZ/o6GxwI
 V1TeCNln/B5Z18dgAw1XkrUPAXvqceN56QXvsELnUtRWnQlsaRAmyB74O
 fScwLt1KCSL2Ezn2r/c4CByr+viF6pqdmFmwtqi3u0u/24r0f/YCZ0fLT A==;
X-CSE-ConnectionGUID: OFU7D5PuSdq4pFZLLGk0HQ==
X-CSE-MsgGUID: Cx+njRwtSTi9LwYhjBG5cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64170550"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="64170550"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 07:18:12 -0700
X-CSE-ConnectionGUID: MOh+l+PMR1KIhC3xYKauhA==
X-CSE-MsgGUID: vLT9gZLDQNG0fsbhsiMcZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175995989"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 07:18:09 -0700
Date: Thu, 18 Sep 2025 17:18:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/vrr: Move the TGL SCL manging of
 vmin/vmax/flipline deeper
Message-ID: <aMwUnwBizmieJHB-@intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-6-ville.syrjala@linux.intel.com>
 <79e9f1d5-0e23-4f2a-8961-925e1adc2788@intel.com>
 <aMv3uG3NnKPSpJE4@intel.com>
 <b29061f7-230e-43be-8e2d-1c3d51752f63@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b29061f7-230e-43be-8e2d-1c3d51752f63@intel.com>
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

On Thu, Sep 18, 2025 at 07:12:40PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/18/2025 5:44 PM, Ville Syrjälä wrote:
> > On Thu, Sep 18, 2025 at 03:03:02PM +0530, Nautiyal, Ankit K wrote:
> >> On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> >>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
> >>>
> >>> Currently our crtc_state->vrr.{vmin.vmax,flipline} are mangled on
> >>> TGL to account for the SCL delay (the hardware requires this mangling
> >>> or the actual vtotals will become incorrect).
> >> Please correct me if I am wrong:
> >>
> >> For display < 13  VRR hardware inserts one extra scanline just after
> >> vactive. So we need to have flipline, vmax, vmin vtotal shifted by 1.
> >> This is computed in intel_vrr_extra_vblank_delay()
> > vmin/vmax/flipline stay put, but we need to account for that extra
> > scanline when calculating the guadband/pipeline_full.
> >
> >> For display < 13 hardware expects flipline >= vmin (so we add flipline +
> >> 1, not related to vblank delay.
> >>
> >> For some platforms intel_psr_min_vblank_delay() of 1 is required so that
> >> moves the vblank start with this amount. we can account for this delay
> >> by intel_vrr_real_vblank_delay().
> > That 1 scaline is just the minimum size for SCL. And once we start
> > tracking the SCL explicitly then AFAICS pretty much all
> > intel_vrr_real_vblank_delay() calls can just be replaced with
> > crtc_state->set_context_latency.
> >
> >> So for the SCL delay mentioned here should'nt we
> >> use intel_vrr_extra_vblank_delay() in the computation below?
> > I think we should be able to get rid of intel_vrr_extra_vblank_delay()
> > for the most part. As state we just need to account for it when
> > calculating the guardband/pipeline_full.
> 
> Hmm do you mean something like below:
> 
> void intel_vrr_compute_scl(struct intel_crtc_state *crtc_state)

I'd probably s/scl/set_context_latency/ to use consistent spelling
everywhere.

> {
>          struct intel_display *display = to_intel_display(crtc_state);
>          int scl = 0; /*lines before delayed vblank */
> 
>          if (!HAS_DSB(display))
>                  return 0;
> 
>          /*Account for 1 scanline thing for ICL/TGL */
>          scl = intel_vrr_extra_vblank_delay(display);

We don't want to account for that here. It needs to be part
of the guardband calculation instead.

So basically the max guardband is actually
vblank_len-SCL-extra_vblank_delay.

> 
>          scl = max(scl, intel_psr_min_vblank_delay(crtc_state));

That PSR thing should probably also be renamed to ..._set_context_latency()

We might want to redesign that PSR part a bit at some point since
IIRC you don't actually need to use SCL here, and instead you can
just make sure the guardband doesn't take up the whole vblank,
when using the VRR timing generator. For the legacy timing generator
using SCL is the only option though. So I suppose we could avoid using
SCL here at least for the always_use_vrr_tg()==true cases. But we can
stick to SCL for now and revisit this later.

> 
>          crtc_state->vrr.set_context_latency = scl;
> }
> 
> And then in place of intel_vrr_real_vblank_delay() we can use the 
> crtc_state->vrr.set_context_latency.
> 
> Regards,
> 
> Ankit
> 
> 
> >
> >>
> >> Regards,
> >>
> >> Ankit
> >>
> >>
> >>
> >>> Unfortunately this
> >>> means that one can't simply use these values directly in many places,
> >>> and instead we always have to go through functions that undo the
> >>> damage first. This is all rather fragile.
> >>>
> >>> Simplify our lives a bit by hiding this mangling deeper inside
> >>> the low level VRR code, leaving the number stored in the crtc
> >>> state actually something that humans can use.
> >>>
> >>> This does introduce a dependdency as intel_vrr_get_config()
> >>> will now need to know the SCL value, which is read out in
> >>> intel_get_transcoder_timings(). I suppose we could simply
> >>> duplicate the SCL readout in both places should this become
> >>> a real hinderance. For now just leave a note around the
> >>> intel_get_transcoder_timings() call to remind us.
> >>>
> >>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/display/intel_display.c |  4 ++
> >>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
> >>>    2 files changed, 47 insertions(+), 33 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>> index f4124c79bc83..18b9baa96241 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>> @@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> >>>    		pipe_config->framestart_delay = 1;
> >>>    	}
> >>>    
> >>> +	/*
> >>> +	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
> >>> +	 * readout done by intel_get_transcoder_timings().
> >>> +	 */
> >>>    	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> >>>    	    DISPLAY_VER(display) >= 11)
> >>>    		intel_get_transcoder_timings(crtc, pipe_config);
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> index 71fb64c92165..71a985d00604 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> >>> @@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
> >>>    
> >>>    int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> >>>    {
> >>> -	struct intel_display *display = to_intel_display(crtc_state);
> >>> -
> >>>    	/* Min vblank actually determined by flipline */
> >>> -	if (DISPLAY_VER(display) >= 13)
> >>> -		return intel_vrr_vmin_flipline(crtc_state);
> >>> -	else
> >>> -		return intel_vrr_vmin_flipline(crtc_state) +
> >>> -			intel_vrr_real_vblank_delay(crtc_state);
> >>> +	return intel_vrr_vmin_flipline(crtc_state);
> >>>    }
> >>>    
> >>>    int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> >>>    {
> >>> -	struct intel_display *display = to_intel_display(crtc_state);
> >>> -
> >>> -	if (DISPLAY_VER(display) >= 13)
> >>> -		return crtc_state->vrr.vmax;
> >>> -	else
> >>> -		return crtc_state->vrr.vmax +
> >>> -			intel_vrr_real_vblank_delay(crtc_state);
> >>> +	return crtc_state->vrr.vmax;
> >>>    }
> >>>    
> >>>    int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> >>> @@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
> >>>    	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> >>>    }
> >>>    
> >>> +static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
> >>> +			      int value)
> >>> +{
> >>> +	struct intel_display *display = to_intel_display(crtc_state);
> >>> +
> >>> +	/*
> >>> +	 * On TGL vmin/vmax/flipline also need to be
> >>> +	 * adjusted by the SCL to maintain correct vtotals.
> >>> +	 */
> >>> +	if (DISPLAY_VER(display) >= 13)
> >>> +		return value;
> >>> +	else
> >>> +		return value - intel_vrr_real_vblank_delay(crtc_state);
> >>> +}
> >>> +
> >>>    /*
> >>>     * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
> >>>     * Vtotal value.
> >>> @@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
> >>>    static
> >>>    int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
> >>>    {
> >>> -	struct intel_display *display = to_intel_display(crtc_state);
> >>> -	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
> >>> -
> >>> -	if (DISPLAY_VER(display) >= 13)
> >>> -		return crtc_vtotal;
> >>> -	else
> >>> -		return crtc_vtotal -
> >>> -			intel_vrr_real_vblank_delay(crtc_state);
> >>> +	return intel_vrr_hw_value(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
> >>>    }
> >>>    
> >>>    static
> >>> @@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> >>>    		crtc_state->vrr.pipeline_full =
> >>>    			intel_vrr_guardband_to_pipeline_full(crtc_state,
> >>>    							     crtc_state->vrr.guardband);
> >>> -
> >>> -		/*
> >>> -		 * vmin/vmax/flipline also need to be adjusted by
> >>> -		 * the vblank delay to maintain correct vtotals.
> >>> -		 */
> >>> -		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
> >>> -		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
> >>> -		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
> >>>    	}
> >>>    }
> >>>    
> >>> @@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
> >>>    			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> >>>    }
> >>>    
> >>> +static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
> >>> +{
> >>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
> >>> +}
> >>> +
> >>> +static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
> >>> +{
> >>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmax);
> >>> +}
> >>> +
> >>> +static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
> >>> +{
> >>> +	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
> >>> +}
> >>> +
> >>>    void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> >>>    {
> >>>    	struct intel_display *display = to_intel_display(crtc_state);
> >>> @@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> >>>    		return;
> >>>    
> >>>    	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> >>> -		       crtc_state->vrr.vmin - 1);
> >>> +		       intel_vrr_hw_vmin(crtc_state) - 1);
> >>>    	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> >>> -		       crtc_state->vrr.vmax - 1);
> >>> +		       intel_vrr_hw_vmax(crtc_state) - 1);
> >>>    	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> >>> -		       crtc_state->vrr.flipline - 1);
> >>> +		       intel_vrr_hw_flipline(crtc_state) - 1);
> >>>    
> >>>    	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> >>>    		       TRANS_PUSH_EN);
> >>> @@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >>>    		crtc_state->vrr.vmin = intel_de_read(display,
> >>>    						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> >>>    
> >>> +		if (DISPLAY_VER(display) < 13) {
> >>> +			/* undo what intel_vrr_hw_value() does when writing the values */
> >>> +			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
> >>> +			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
> >>> +			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
> >>> +		}
> >>> +
> >>>    		/*
> >>>    		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> >>>    		 * bits are not filled. Since for these platforms TRAN_VMIN is always

-- 
Ville Syrjälä
Intel
