Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5C57EBE8D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 09:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E263710E505;
	Wed, 15 Nov 2023 08:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2472A10E505
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 08:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700036809; x=1731572809;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8HhxJtishi4TQgjbAouio9z1ARbni/3Gw2CwqIWISZY=;
 b=TQ6dL5T0qfm/mfNVyIkdoztf7C6xOmvGtYG2b0hFjp6Gg7OYs6I1Lf6S
 2Xc3LkUuj4poO2ivnrL+fV7BH8E8VpDDeFgzXcduzR3jtZF80GzwZTA2A
 O7PAzIbz5UxGnVM/c0YJ0o76koU2oWScHmrb2BFaMyJ0x6948kdkcAV5W
 UQJIlaJYfWS8cKBvo/IzN2GYmYJoyy+IPJbyCssiX7ejqSQhr75twu+Wq
 6ZjIinaxn1WsnyWSaFexFjNu+oAIamp/3ZBsG3+RusOYCIk0S5LJxFfZX
 yY3H3W3p+HB4ROGMdLR+/i442uJ0Id8udFYU3UDyDrZFedTHXqNKSigZ4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="375873241"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="375873241"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:26:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758421848"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="758421848"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 00:26:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 10:26:45 +0200
Date: Wed, 15 Nov 2023 10:26:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZVSAxX5T6jQMB_kj@intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-11-ville.syrjala@linux.intel.com>
 <87leb1tzzn.fsf@intel.com> <ZVM2eebisBtZ_88k@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVM2eebisBtZ_88k@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Push audio_{enable,
 disable}() to the pre/post pane update stage
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

On Tue, Nov 14, 2023 at 10:57:29AM +0200, Ville Syrjälä wrote:
> On Mon, Nov 13, 2023 at 05:49:32PM +0200, Jani Nikula wrote:
> > On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Relocate the audio enable/disable from the full modeset hooks into
> > > the common pre/post plane update stage of the commit. Audio fastset
> > > is within easy reach now.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++-----
> > >  1 file changed, 24 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index d606befa007c..98d4fcd28073 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -990,6 +990,24 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
> > >  		  vrr_params_changed(old_crtc_state, new_crtc_state)));
> > >  }
> > >  
> > > +static bool audio_enabling(const struct intel_crtc_state *old_crtc_state,
> > > +			   const struct intel_crtc_state *new_crtc_state)
> > > +{
> > > +	if (!new_crtc_state->hw.active)
> > > +		return false;
> > 
> > Makes me wonder if these check should've been added to the
> > is_enabling/is_disabling macros instead. *shrug*
> 
> I had it like that originally, but then I decided against it for
> some reason that I seem to have forgotten already...
> 
> I *think* I was planning to use is_{enabling,disabling}() in some
> other context where that check doesn't make sense. But I think in
> the end I convinced myself that I can't actually do that due to
> other reasons. So yeah, putting these into is_{enabling,disabling}()
> would probably make sense. But I think I'll have to mull it over a
> bit more.

After further thought it won't work because we do stuff like
	is_enabling(...) || other_conditions

So we need the crtc_state->hw.active check to catch both sides
of the OR.

> 

> > 
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> Thanks.
> 
> > 
> > 
> > > +
> > > +	return is_enabling(has_audio, old_crtc_state, new_crtc_state);
> > > +}
> > > +
> > > +static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
> > > +			    const struct intel_crtc_state *new_crtc_state)
> > > +{
> > > +	if (!old_crtc_state->hw.active)
> > > +		return false;
> > > +
> > > +	return is_disabling(has_audio, old_crtc_state, new_crtc_state);
> > > +}
> > > +
> > >  #undef is_disabling
> > >  #undef is_enabling
> > >  
> > > @@ -1030,6 +1048,9 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
> > >  
> > >  	if (intel_crtc_needs_color_update(new_crtc_state))
> > >  		intel_color_post_update(new_crtc_state);
> > > +
> > > +	if (audio_enabling(old_crtc_state, new_crtc_state))
> > > +		intel_encoders_audio_enable(state, crtc);
> > >  }
> > >  
> > >  static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
> > > @@ -1113,6 +1134,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
> > >  		intel_crtc_update_active_timings(old_crtc_state, false);
> > >  	}
> > >  
> > > +	if (audio_disabling(old_crtc_state, new_crtc_state))
> > > +		intel_encoders_audio_disable(state, crtc);
> > > +
> > >  	intel_drrs_deactivate(old_crtc_state);
> > >  
> > >  	intel_psr_pre_plane_update(state, crtc);
> > > @@ -1503,7 +1527,6 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
> > >  	intel_crtc_vblank_on(new_crtc_state);
> > >  
> > >  	intel_encoders_enable(state, crtc);
> > > -	intel_encoders_audio_enable(state, crtc);
> > >  
> > >  	if (HAS_PCH_CPT(dev_priv))
> > >  		intel_wait_for_pipe_scanline_moving(crtc);
> > > @@ -1677,7 +1700,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> > >  		intel_crtc_vblank_on(new_crtc_state);
> > >  
> > >  	intel_encoders_enable(state, crtc);
> > > -	intel_encoders_audio_enable(state, crtc);
> > >  
> > >  	if (psl_clkgate_wa) {
> > >  		intel_crtc_wait_for_next_vblank(crtc);
> > > @@ -1729,7 +1751,6 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
> > >  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
> > >  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
> > >  
> > > -	intel_encoders_audio_disable(state, crtc);
> > >  	intel_encoders_disable(state, crtc);
> > >  
> > >  	intel_crtc_vblank_off(old_crtc_state);
> > > @@ -1764,7 +1785,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> > >  	 * Need care with mst->ddi interactions.
> > >  	 */
> > >  	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > > -		intel_encoders_audio_disable(state, crtc);
> > >  		intel_encoders_disable(state, crtc);
> > >  		intel_encoders_post_disable(state, crtc);
> > >  	}
> > > @@ -2034,7 +2054,6 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
> > >  	intel_crtc_vblank_on(new_crtc_state);
> > >  
> > >  	intel_encoders_enable(state, crtc);
> > > -	intel_encoders_audio_enable(state, crtc);
> > >  }
> > >  
> > >  static void i9xx_crtc_enable(struct intel_atomic_state *state,
> > > @@ -2076,7 +2095,6 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
> > >  	intel_crtc_vblank_on(new_crtc_state);
> > >  
> > >  	intel_encoders_enable(state, crtc);
> > > -	intel_encoders_audio_enable(state, crtc);
> > >  
> > >  	/* prevents spurious underruns */
> > >  	if (DISPLAY_VER(dev_priv) == 2)
> > > @@ -2113,7 +2131,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
> > >  	if (DISPLAY_VER(dev_priv) == 2)
> > >  		intel_crtc_wait_for_next_vblank(crtc);
> > >  
> > > -	intel_encoders_audio_disable(state, crtc);
> > >  	intel_encoders_disable(state, crtc);
> > >  
> > >  	intel_crtc_vblank_off(old_crtc_state);
> > 
> > -- 
> > Jani Nikula, Intel
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
