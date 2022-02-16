Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEC24B9134
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 20:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD73210E442;
	Wed, 16 Feb 2022 19:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A357F10E442
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 19:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645039938; x=1676575938;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=motEbanc4EibxCDDaBiwOcsdq06SZvH+4g0OQeHOiMI=;
 b=QKgcwL9R2u2K2uTeekb+xFh4m0buPa+s0Q3ynlVz34HCu0zFQPkCB/ft
 PVlPIGUIuo6RAJnywpYA2N9qw4lP4kdpY04l+bmruV118T7m1eBoRJ4Ln
 IcUIIRFONOvWVuC9xozBfWjyxdNg8FTTZ9qpxOLpbG+iVZR95AbEBrjST
 F+77j5/htcDQC477Mdxrf4cDr4embN2YpIt9sFmprbub4j5Zx9s0nhGpu
 zjmJ2YhGClU6INb5NBf0snD8FIi3O+Cz7ZXl1/zz6gYq+24Dtwljeu8jj
 GlfrpIBQJsS+aE807Elg6tuYjCv0SpJDYAUuQcyRCHKSCbdRa/fA3y6YV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230669491"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="230669491"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:32:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="604520457"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 11:32:18 -0800
Date: Wed, 16 Feb 2022 11:32:37 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216193237.GC27285@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Extract
 intel_bigjoiner_adjust_timings()
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

On Tue, Feb 15, 2022 at 08:32:01PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Deduplicate the code to convert the full timings to
> per-pipe timings for bigjoiner usage.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Makes sense to have a helper to do this:

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++-----------
>  1 file changed, 18 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 70017526fa81..19417ff975c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2724,6 +2724,21 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>  			ilk_pipe_pixel_rate(crtc_state);
>  }
>  
> +static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
> +					   struct drm_display_mode *mode)
> +{
> +	if (!crtc_state->bigjoiner)
> +		return;
> +
> +	mode->crtc_clock /= 2;
> +	mode->crtc_hdisplay /= 2;
> +	mode->crtc_hblank_start /= 2;
> +	mode->crtc_hblank_end /= 2;
> +	mode->crtc_hsync_start /= 2;
> +	mode->crtc_hsync_end /= 2;
> +	mode->crtc_htotal /= 2;
> +}
> +
>  static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
>  					  struct drm_display_mode *mode)
>  {
> @@ -2756,19 +2771,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>  
>  	drm_mode_copy(pipe_mode, adjusted_mode);
>  
> -	if (crtc_state->bigjoiner) {
> -		/*
> -		 * transcoder is programmed to the full mode,
> -		 * but pipe timings are half of the transcoder mode
> -		 */
> -		pipe_mode->crtc_hdisplay /= 2;
> -		pipe_mode->crtc_hblank_start /= 2;
> -		pipe_mode->crtc_hblank_end /= 2;
> -		pipe_mode->crtc_hsync_start /= 2;
> -		pipe_mode->crtc_hsync_end /= 2;
> -		pipe_mode->crtc_htotal /= 2;
> -		pipe_mode->crtc_clock /= 2;
> -	}
> +	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
>  
>  	if (crtc_state->splitter.enable) {
>  		intel_splitter_adjust_timings(crtc_state, pipe_mode);
> @@ -2804,17 +2807,9 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
>  
>  	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
>  
> -	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
> -	if (crtc_state->bigjoiner) {
> -		pipe_mode->crtc_clock /= 2;
> -		pipe_mode->crtc_hdisplay /= 2;
> -		pipe_mode->crtc_hblank_start /= 2;
> -		pipe_mode->crtc_hblank_end /= 2;
> -		pipe_mode->crtc_hsync_start /= 2;
> -		pipe_mode->crtc_hsync_end /= 2;
> -		pipe_mode->crtc_htotal /= 2;
> +	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
> +	if (crtc_state->bigjoiner)
>  		crtc_state->pipe_src_w /= 2;
> -	}
>  
>  	intel_splitter_adjust_timings(crtc_state, pipe_mode);
>  
> -- 
> 2.34.1
> 
