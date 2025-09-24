Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 332EDB99C80
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 14:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9DA10E71F;
	Wed, 24 Sep 2025 12:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ae0p8qpx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436CB10E71D;
 Wed, 24 Sep 2025 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758715997; x=1790251997;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FFvxl19W3zDjIoKyApB0H0eeSQs2lOJ4BoywNFfU59M=;
 b=Ae0p8qpxlzAyAPVBMa75BwtFU0XEsjz3CExq0pnJcr1LOb/UfOcISw4o
 BCkG4M+sY9TmueJ6iE65hB91QSvfmJ7ZaRH/DBd3A5GKNDyh0K3NQ5130
 3+R1PpKYOmmnkcA63HgiIwpNP2d++FQ/vPrRa9HjW0kl5mgf+MlcSHiFC
 xVdLqK8VE3OfMMsxjtGFxmkcqt8GC7Ol3BMFCrwMKMe8oCZ/7J4QnDHY5
 x9CHfWM0MVlS7OpZ+7uUKbAk1RAFoNakofioAeVvFG18y4jMHATKHlD8q
 Q53bfQp5F4cFyyLkZqdTxfkak2UcJirB1Jk1Sqew8mzyrVyE/J0W6limv A==;
X-CSE-ConnectionGUID: UnxU3t27QH2xBQ4ad0klHw==
X-CSE-MsgGUID: IQsp0yE9T+2bzIzrakcnGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78645195"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="78645195"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:13:17 -0700
X-CSE-ConnectionGUID: 9aI6QZFvRny0AQWX5Fsv0Q==
X-CSE-MsgGUID: Lw2LnN2KROK2A+ltWiEtDw==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 05:13:15 -0700
Date: Wed, 24 Sep 2025 15:13:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 9/9] drm/i915/display: Drop intel_vrr_vblank_delay and
 use set_context_latency
Message-ID: <aNPgWeXReSa7ZRQd@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250924105129.2771196-10-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 24, 2025 at 04:21:29PM +0530, Ankit Nautiyal wrote:
> The helper intel_vrr_vblank_delay() was used to keep track of the SCL
> lines + the extra vblank delay required for ICL/TGL.
> This was used to wait for sufficient lines for:
> -push send bit to clear for VRR case
> -evasion to delay the commit.
> 
> For first case we are using safe window scanline wait and with that we
> just need to wait for SCL lines, we do not need to wait for the extra
> vblank delay required for ICL/TGL. For the second case, we actually
> do not need to wait for extra lines before the undelayed vblank, if we
> are already in the safe window.
> 
> To sum up, SCL lines is sufficient for both cases.
> 
> So drop the helper intel_vrr_vblank_delay and just use
> crtc_state->set_context_latency instead.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 8 --------
>  drivers/gpu/drm/i915/display/intel_vrr.h    | 1 -
>  4 files changed, 3 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 3cb4c9be146f..c183209d7663 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>  		 * scanline until the delayed vblank occurs after
>  		 * TRANS_PUSH has been written.
>  		 */
> -		return intel_vrr_vblank_delay(crtc_state) + 1;
> +		return crtc_state->set_context_latency + 1;
>  	else
>  		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>  }
> @@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>  		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>  
>  	if (pre_commit_is_vrr_active(state, crtc)) {
> -		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +		int vblank_delay = crtc_state->set_context_latency;
>  
>  		end = intel_vrr_vmin_vblank_start(crtc_state);
>  		start = end - vblank_delay - latency;
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index c15234c1d96e..0b7fcc05e64c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  		else
>  			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
>  
> -		vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +		vblank_delay = crtc_state->set_context_latency;
>  	} else {
>  		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index e29b4050a9df..6d3f9e3de1f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -92,14 +92,6 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>  	return DISPLAY_VER(display) < 13 ? 1 : 0;
>  }
>  
> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
> -	return crtc_state->set_context_latency +
> -		intel_vrr_extra_vblank_delay(display);
> -}
> -
>  static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
>  {
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 239e4f94725c..cfd027118b60 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -35,7 +35,6 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
