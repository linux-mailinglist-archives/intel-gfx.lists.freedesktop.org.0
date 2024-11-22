Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8436E9D64BF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 21:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C9810EC80;
	Fri, 22 Nov 2024 20:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mxHSWH7+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C6410EC7A;
 Fri, 22 Nov 2024 20:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732305718; x=1763841718;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z4nnEgc1upjhLRIcYMhTn/g7FjtMvewWbjNo8YP6z2g=;
 b=mxHSWH7+dHdE1lAkJnXmo8sMKWYkzC+KxcifD/5I2pe31ji+JYNsO98l
 g8P2LtQgIsO5tR8WI8HAbvzX79BN9wmxwkGZ9QEUwJZ55NPPmWqjrpDgZ
 QrhZ/ZemD+ksZdqLYd0PsoKDWMiJQWcpxWng1TImPOqz5K6OPaNfX/lR3
 vdSvv6nSk4wkUom8hFkuMtFEA1yoiYqMTvpRKu5peR1b0wEd+ca/20H9h
 UGIo3xcwRFm7d0IC9++eQPk48zs8F4CQGH58kL4r1TrkQ7qMQIPuHGRoR
 eEy4U2z9wJJjmdMRIH1oT9RNx8N9uXQAPH3fjv35aYFO3dnWakL+YhRdg A==;
X-CSE-ConnectionGUID: 7IDfW7b6TmyWNOjcvE31jQ==
X-CSE-MsgGUID: 78ApAC/HTa692tX4JseodQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="54979757"
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="54979757"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 12:01:57 -0800
X-CSE-ConnectionGUID: ZFvHrZ0VQW+sdAKVECCzbA==
X-CSE-MsgGUID: MrZfP9PDQbeeT884S1kKYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="90849411"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Nov 2024 12:01:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2024 22:01:54 +0200
Date: Fri, 22 Nov 2024 22:01:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: Replace adjusted mode with pipe mode
Message-ID: <Z0DjMj3ASirtQUD9@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
 <20241120053838.3794419-4-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241120053838.3794419-4-nemesa.garg@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Nov 20, 2024 at 11:08:35AM +0530, Nemesa Garg wrote:
> Replace adjusted_mode with pipe_mode in pch_panel_fitting
> so as to that final pipe src width and height is used after
> joiner calculation. De-couple the current intel_panel_fitting
> function, one pre-ilk and one post-ilk, as post-ilk
> pch_panel_fitting is called from pipe_config.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  7 +++
>  drivers/gpu/drm/i915/display/intel_pfit.c    | 59 +++++++++++++-------
>  2 files changed, 47 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9db255bb1230..6ad47cf0d419 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4865,6 +4865,13 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>  		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
>  				      &secondary_crtc_state->dp_tunnel_ref);
>  
> +	if (secondary_crtc_state->pch_pfit.enabled) {
> +		struct drm_rect *dst = &secondary_crtc_state->pch_pfit.dst;
> +		int y = dst->y1;
> +
> +		drm_rect_translate_to(dst, 0, y);
> +	}
> +
>  	copy_joiner_crtc_state_nomodeset(state, secondary_crtc);
>  
>  	secondary_crtc_state->uapi.mode_changed = primary_crtc_state->uapi.mode_changed;
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index fb6387b537b7..b2619e1c4021 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -181,18 +181,19 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
> +	const struct drm_display_mode *pipe_mode =
> +		&crtc_state->hw.pipe_mode;
>  	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
>  	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
> -	int ret, x, y, width, height;
> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
> +	int ret, x, y, width, height, hdisplay_full, src_w_full;
>  
>  	if (crtc_state->joiner_pipes)
>  		return 0;
>  
>  	/* Native modes don't need fitting */
> -	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
> -	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> +	if (pipe_mode->crtc_hdisplay == pipe_src_w &&
> +	    pipe_mode->crtc_vdisplay == pipe_src_h &&
>  	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return 0;
>  
> @@ -200,46 +201,66 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	case DRM_MODE_SCALE_CENTER:
>  		width = pipe_src_w;
>  		height = pipe_src_h;
> -		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
> -		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
> +		x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
> +		y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
> +		/*
> +		 * The x-coordinate for Primary should be calculated in such a way
> +		 * that it remains consistent whether the pipes are joined or not.
> +		 * This means we need to consider the full width of the display even
> +		 * when the pipes are joined. The x-coordinate for secondaries is 0
> +		 * because it starts at the leftmost point of its own display area,
> +		 * ensuring that the framebuffer is centered within Pipe B’s portion
> +		 * of the overall display.
> +		 */
> +		if (intel_crtc_is_joiner_primary(crtc_state)) {
> +			hdisplay_full = pipe_mode->crtc_hdisplay * num_pipes;
> +			src_w_full = width * num_pipes;
> +			x = (hdisplay_full - src_w_full + 1) / 2;
> +		}

Ugh. This stuff is getting quite nasty. I'm thinking it'll be a lot
cleaner if we in fact don't move the pch_panel_fitting() call from
its current location, and instead do something like this later:

joiner_adjust_pfit_dst()
{
	area = pipe_area();

	if (!pit.enable)
		return;

	rect_intersect(pfit.dst, area);
	rect_translate(pfit.dst, -area.x1, -area.y1);
}

where pipe_area() (or whatever we want to call it) gives you
per-pipe output area, relative to the origing of the full
joined output. It should look quite similar to a combination
of intel_joiner_adjust_pipe_src()+intel_joiner_adjust_pipe_src()
except using crtc_hdisplay/vdisplay instead of pipe_src.

I'm also wondering what would happed if we use mode=CENTER but
the pfit dst window doesn't extend into all of the joined
pipes? Dunno if there's any way to have a zero sized pipe_src 
for some of the pipes or not. If not I suppose we'll just have
to return an error...

-- 
Ville Syrjälä
Intel
