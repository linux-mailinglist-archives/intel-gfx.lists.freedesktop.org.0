Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A76B44C1CB6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE31610E148;
	Wed, 23 Feb 2022 19:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C3310E148
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645646395; x=1677182395;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZEvXstwCJP35KmgbVgSHIQGNb9g+e9LXP2zn4XAamP8=;
 b=H4PE2qmGEkqcyOiBSfVcJcv4ZJgXDlG7yHWD7OssHsDXjA7wQe+BZuev
 RLUmZUeXvatxOba9JMu76O+BceHtbZt8DWw94KI1I2iLaGcPgUATSOwWu
 BdJrb1O0eZYwJSr4mW636zjYpbXE1qKDBXe7X5GtJSi+KZR9y1zarnef3
 XbSF9dye5PkPmA/NmNoHLGnR0Idtf1Y/BeSSdsbpUZDL7lAjTFSR+glCr
 WqTwZ9d8tea9kWVhku6BfZrs1BpRYO/JkXLPbmUwsfM1ZlfHjIGU+EFq0
 AWiL5lkP+6OcYuKsNPIUTkTh3zmyfTixOydCaCYpX1MvceFwIFXvtFGFJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252261987"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="252261987"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:59:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="639445482"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:59:54 -0800
Date: Wed, 23 Feb 2022 12:00:28 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220223200022.GC9839@labuser-Z97X-UD5H>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
 <20220223131315.18016-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223131315.18016-13-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 12/13] drm/i915: Use bigjoiner_pipes more
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

On Wed, Feb 23, 2022 at 03:13:14PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Replace the hardcoded 2 pipe assumptions when we're massaging
> pipe_mode and the pipe_src rect to be suitable for bigjoiner.
> Instead we can just count the number of pipes in the bitmask.
> 
> v2: Introduce intel_bigjoiner_num_pipes()
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++-------
>  1 file changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9b4013ed3d98..7a09bb33c1eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -368,6 +368,11 @@ bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
>  		crtc->pipe == bigjoiner_master_pipe(crtc_state);
>  }
>  
> +static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	return hweight8(crtc_state->bigjoiner_pipes);
> +}

Okay yes makes sense. Although bigjoiner will always be between just 2 pipes so why not hardcode to 2 and
use the  if (!crtc_state->bigjoiner_pipes) as the check instead of num_pipes < 2.
When we have a joiner for 4 pipes, in that case also bigjoiner will still be only between 2 pipes.
So in bigjoiner_pipe mask, it will always only have 2 pipes.

Manasi

> +
>  struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> @@ -2731,16 +2736,18 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>  static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
>  					   struct drm_display_mode *mode)
>  {
> -	if (!crtc_state->bigjoiner_pipes)
> +	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
> +
> +	if (num_pipes < 2)
>  		return;
>  
> -	mode->crtc_clock /= 2;
> -	mode->crtc_hdisplay /= 2;
> -	mode->crtc_hblank_start /= 2;
> -	mode->crtc_hblank_end /= 2;
> -	mode->crtc_hsync_start /= 2;
> -	mode->crtc_hsync_end /= 2;
> -	mode->crtc_htotal /= 2;
> +	mode->crtc_clock /= num_pipes;
> +	mode->crtc_hdisplay /= num_pipes;
> +	mode->crtc_hblank_start /= num_pipes;
> +	mode->crtc_hblank_end /= num_pipes;
> +	mode->crtc_hsync_start /= num_pipes;
> +	mode->crtc_hsync_end /= num_pipes;
> +	mode->crtc_htotal /= num_pipes;
>  }
>  
>  static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
> @@ -2792,7 +2799,8 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>  	/* Populate the "user" mode with full numbers */
>  	drm_mode_copy(mode, pipe_mode);
>  	intel_mode_from_crtc_timings(mode, mode);
> -	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) << !!crtc_state->bigjoiner_pipes;
> +	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
> +		(intel_bigjoiner_num_pipes(crtc_state) ?: 1);
>  	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
>  
>  	/* Derive per-pipe timings in case bigjoiner is used */
> @@ -2812,16 +2820,17 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
>  
>  static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
>  {
> +	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);
>  	int width, height;
>  
> -	if (!crtc_state->bigjoiner_pipes)
> +	if (num_pipes < 2)
>  		return;
>  
>  	width = drm_rect_width(&crtc_state->pipe_src);
>  	height = drm_rect_height(&crtc_state->pipe_src);
>  
>  	drm_rect_init(&crtc_state->pipe_src, 0, 0,
> -		      width / 2, height);
> +		      width / num_pipes, height);
>  }
>  
>  static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
> -- 
> 2.34.1
> 
