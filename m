Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D644B91C0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 20:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C11B10E220;
	Wed, 16 Feb 2022 19:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90B010E220
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645041011; x=1676577011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cPHHOk3fiYYADqg5gWSwkLVA4UArhsHjq463s//56VA=;
 b=ExXKpkEKPLcObVxidM/A4yqm+tVg6j4i+TtHp5/8kt8boruKtedrCmBJ
 Wgu5XT7eaheMXACfQq4l6doQAIJCyVBmJCySd/Tpv9pbhUx/NkiVFKKxp
 w8chvauFv92NWfRfez4zJNw09l4aUFoNEWFfGYl05BzSfYPNj/WhtlOTN
 sbRab+CMEUqXLItdP5Cf8HyAf1KYtM3/M5bCaI3cRS069KXn3kUVDL1Fl
 XBIoCoNZQvrTtaBf15yjbvH6/etFpw/8rKpctcOj4f84cLbnJsG5mIpav
 qttTxSHpktsCxoH9z1NlrsXdIgC4nFhFAY5s1J2GwO6n9nUKUdkIO+Rk6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250909229"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250909229"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:50:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="704449049"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:50:11 -0800
Date: Wed, 16 Feb 2022 11:50:30 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216195024.GF27285@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Fix MSO vs. bigjoiner
 timings confusion
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

On Tue, Feb 15, 2022 at 08:32:04PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> When calculating pipe_mode and when doing readout we need
> to order our steps correctly.
> 
> 1. We start with adjusted_mode crtc timings being populated
>    with the transcoder timings (either via readout or
>    compute_config(). These will be per-segment for MSO.
> 2. For all other uses we want the full crtc timings so
>    we ask intel_splitter_adjust_timings() to expand
>    the per-segment numbers to their full glory
> 3. If bigjoiner is used we the divide the full numbers
>    down to per-pipe numbers using intel_bigjoiner_adjust_timings()
> 
> During readout we also have to reconstruct the adjusted_mode
> normal timings (ie. not the crtc_ stuff). These are supposed
> to reflect the full timings of the display. So we grab these
> between steps 2 and 3.
> 
> The "user" mode readout (mainly done for fastboot purposes)
> should be whatever mode the user would have used had they
> asked us to do a modeset. We want the full timings for this
> as the per-segment timings are not suppoesed to be user visible.
> Also the user mode normal timings hdisplay/vdisplay need to
> match PIPESRC (that is where we get our PIPESRC size
> we doing a modeset with a user supplied mode).
> 
> And we end up with
> - adjusted_mode normal timigns == full timings
> - adjusted_mode crtc timings == transcoder timings
>   (per-segment timings for MSO, full timings otherwise)
> - pipe_mode normal/crtc timings == pipe timings
>   (full timings divided by the number of bigjoiner pipes, if any)
> - user mode normal timings == full timings with
>   hdisplay/vdisplay replaced with PIPESRC size
> - user mode crtc timings == full timings
> 
> Yes, that is a lot of timings. One day we'll try to remove
> some of the ones we don't actually need to keep around...
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 50 +++++++++++++-------
>  1 file changed, 32 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6ff58164929c..131be3bb8026 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2769,25 +2769,33 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
> +	/*
> +	 * Start with the adjusted_mode crtc timings, which
> +	 * have been filled with the transcoder timings.
> +	 */
>  	drm_mode_copy(pipe_mode, adjusted_mode);
>  
> -	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
> -
> -	if (crtc_state->splitter.enable) {
> -		intel_splitter_adjust_timings(crtc_state, pipe_mode);
> -
> -		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> -		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
> -	} else {
> -		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> -		intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> -	}
> -
> -	intel_crtc_compute_pixel_rate(crtc_state);
> -
> -	drm_mode_copy(mode, adjusted_mode);
> +	/* Expand MSO per-segment transcoder timings to full */
> +	intel_splitter_adjust_timings(crtc_state, pipe_mode);
> +
> +	/*
> +	 * We want the full numbers in adjusted_mode normal timings,
> +	 * adjusted_mode crtc timings are left with the raw transcoder
> +	 * timings.
> +	 */
> +	intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
> +
> +	/* Populate the "user" mode with full numbers */
> +	drm_mode_copy(mode, pipe_mode);
> +	intel_mode_from_crtc_timings(mode, mode);
>  	mode->hdisplay = crtc_state->pipe_src_w << crtc_state->bigjoiner;
>  	mode->vdisplay = crtc_state->pipe_src_h;
> +
> +	/* Derive per-pipe timings in case bigjoiner is used */
> +	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
> +	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
> +
> +	intel_crtc_compute_pixel_rate(crtc_state);
>  }
>  
>  static void intel_encoder_get_config(struct intel_encoder *encoder,
> @@ -2836,15 +2844,21 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
>  	int clock_limit = i915->max_dotclk_freq;
>  
> -	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
> -
> -	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
> +	/*
> +	 * Start with the adjusted_mode crtc timings, which
> +	 * have been filled with the transcoder timings.
> +	 */
> +	drm_mode_copy(pipe_mode, adjusted_mode);
>  
> +	/* Expand MSO per-segment transcoder timings to full */
>  	intel_splitter_adjust_timings(crtc_state, pipe_mode);
>  
> +	/* Derive per-pipe timings in case bigjoiner is used */
> +	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
>  	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
>  
>  	if (DISPLAY_VER(i915) < 4) {
> -- 
> 2.34.1
> 
