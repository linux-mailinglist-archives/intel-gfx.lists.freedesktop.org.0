Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA2B9003C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E718710E40E;
	Mon, 22 Sep 2025 10:32:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pc7H3f73";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D7210E40A;
 Mon, 22 Sep 2025 10:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758537166; x=1790073166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Jmux/3orzlFB9q6ykpnUVYCwlsICFNhh/mCyzTBnaPY=;
 b=Pc7H3f73mm6I6kCGx4PM2fPswJdV6733AcbNLz5E55IjwIHfNGdJj2rI
 UbEPkh0pb7Ad4drqPHU8Fd2XVE7nJFOX74N3L4sXNxNJEOloXEbHpNh8P
 tC1L20d90D3pKbEdUTbIO31TPcqtyCN+RdwcUJbpATMk5X9SP+iVbqlfI
 IKz8ry4PHkxOz55wXf1yujdNemwQBI3VfvsYr/gwXxYMORPSApjmoUwnw
 Tu1a2tnW4kQwurdORyX701xkFncSccNHSnvyCNjpWSZ2rAtrUMzAmVQqA
 O0fsZF6y4ZoSMM5kPGw7jFGJjf4YFvcEwb3NmquLs948h5YrKt3fAirrl w==;
X-CSE-ConnectionGUID: 3ovGsvldQI23xMbrrxA7CQ==
X-CSE-MsgGUID: hF3DjlByT4GA1tPXjLMrSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="60913974"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="60913974"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:32:45 -0700
X-CSE-ConnectionGUID: 1pbDowNMSeWQaYxy9+d/9A==
X-CSE-MsgGUID: ZyQjgTSgTSCCUn6CE7Uvyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="207184275"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:32:44 -0700
Date: Mon, 22 Sep 2025 13:32:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_scl_lines
Message-ID: <aNElyOcbD6F8h7It@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250921043535.2012978-8-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 21, 2025 at 10:05:33AM +0530, Ankit Nautiyal wrote:
> The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for SCL
> lines after the send push operation. Rename it to
> intel_dsb_wait_for_scl_lines() to align with the semantics.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_dsb.h     |  4 ++--
>  4 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 671db6926e4c..4defd2425837 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2013,7 +2013,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>  
>  	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
>  		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
> -		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
> +		intel_dsb_wait_for_scl_lines(state, crtc_state->dsb_color);
>  		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_interrupt(crtc_state->dsb_color);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 455bbebb50a5..bfeec3706f35 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7268,7 +7268,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>  
>  		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> -		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> +		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
>  		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>  					  new_crtc_state);
>  		intel_dsb_interrupt(new_crtc_state->dsb_commit);
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index dfe928aefdcd..400dcc87a992 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -115,8 +115,8 @@ static bool pre_commit_is_vrr_active(struct intel_atomic_state *state,
>  	return old_crtc_state->vrr.enable && !intel_crtc_vrr_disabling(state, crtc);
>  }
>  
> -static int dsb_vblank_delay(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> +static int dsb_scl_delay(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *crtc_state =
>  		intel_pre_commit_crtc_state(state, crtc);
> @@ -815,15 +815,14 @@ void intel_dsb_chain(struct intel_atomic_state *state,
>  			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
>  }
>  
> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
> -				 struct intel_dsb *dsb)
> +void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
> +				  struct intel_dsb *dsb)

I'd leave this name as is for now. Or perhaps we should call it
intel_dsb_wait_for_delayed_vblank().

The actual behaviour of this will need to be slightly different between
the different timings generators/refresh rate modes so it can't just
wait for SCL lines in all the cases.


>  {
>  	struct intel_crtc *crtc = dsb->crtc;
>  	const struct intel_crtc_state *crtc_state =
>  		intel_pre_commit_crtc_state(state, crtc);
>  	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
> -					     dsb_vblank_delay(state, crtc));
> -
> +					     dsb_scl_delay(state, crtc));
>  	intel_dsb_wait_usec(dsb, usecs);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index c8f4499916eb..1cb5ba1a0534 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -48,8 +48,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
>  void intel_dsb_interrupt(struct intel_dsb *dsb);
>  void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
>  void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
> -void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
> -				 struct intel_dsb *dsb);
> +void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
> +				  struct intel_dsb *dsb);
>  void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
>  				struct intel_dsb *dsb,
>  				int lower, int upper);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
