Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC95E7EF5F1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 17:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B75B10E067;
	Fri, 17 Nov 2023 16:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D0B10E067
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 16:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700237699; x=1731773699;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xX59uZckAbRA+zJi00LvcmnWRpcGHuj5cSAQGqbujDI=;
 b=cwcX2iWkCKWmBfLrejNA31Gx4N0d8ACOkOz7eB5QlFeFZuZKnYw/w7Ts
 Ub7KdTg1zST4f1FCiSrdd5t/m7R8/S294Jm+ah4N9IN7rBGmAtpu7dgtT
 RJu3HZ7JMEGV7h2A1FJqG1wb9eCini0LPx784hDIGz47FvuMnGnt+ffXm
 XBK5UIgkaOUPYvVgoehHhg4RWCLnaCe6qigWYAO+iD2Yir4suZyb+Ik2n
 6+d4ovUJb/FfaxKnNTaplJnnDcdbWW2X9Lm2E+v3kmWRp+TjJxDeLtESd
 38mJWNqM4phcLuJ+vl9i8vV1PcIk1pIzPLrA8r8V8Ok8x8Po2eZ2eV2Ip w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="477537863"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477537863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759218867"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759218867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 08:14:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 18:14:54 +0200
Date: Fri, 17 Nov 2023 18:14:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVeRfvYAubtZgyY6@intel.com>
References: <20231117100227.609261-1-jouni.hogander@intel.com>
 <20231117100227.609261-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231117100227.609261-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/psr: Add proper handling
 for disabling sel fetch for planes
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

On Fri, Nov 17, 2023 at 12:02:27PM +0200, Jouni Högander wrote:
> Currently we are enabling selective fetch for all planes that are visible.
> This is suboptimal as we might be fetching for memory for planes that are
> not part of selective update.
> 
> Fix this by adding proper handling for disabling plane selective fetch:
> If plane previously part of selective update is now not part of update:
> Add it into updated planes and let the plane configuration to disable
> selective fetch for it.
> 
> v2:
>   - Add setting sel_fetch_area->y1/y2 to -1
>   - Remove setting again local sel_fetch_area variable
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 22 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_psr.c      | 13 ++++++++++-
>  .../drm/i915/display/skl_universal_plane.c    |  8 +++++--
>  3 files changed, 31 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index c089dd6f9781..299d22708fa4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -485,22 +485,22 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
> -					     const struct intel_crtc_state *crtc_state,
> -					     const struct intel_plane_state *plane_state)
> +static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
> +					    const struct intel_crtc_state *crtc_state)

Some kind of weird reordering happening here making the diff have
spurious changes.

Apart from that this seems fine
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  {
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
>  
>  	if (!crtc_state->enable_psr2_sel_fetch)
>  		return;
>  
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> -			  plane_state->ctl);
> +
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>  }
>  
> -static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
> -					    const struct intel_crtc_state *crtc_state)
> +static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
> +					     const struct intel_crtc_state *crtc_state,
> +					     const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>  	enum pipe pipe = plane->pipe;
> @@ -508,7 +508,11 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
>  	if (!crtc_state->enable_psr2_sel_fetch)
>  		return;
>  
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
> +		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +				  plane_state->ctl);
> +	else
> +		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
>  }
>  
>  /* TODO: split into noarm+arm pair */
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 87eb1535ba98..239365c666e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2173,8 +2173,19 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  			continue;
>  
>  		inter = pipe_clip;
> -		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
> +		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
> +		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
> +			sel_fetch_area->y1 = -1;
> +			sel_fetch_area->y2 = -1;
> +			/*
> +			 * if plane sel fetch was previously enabled ->
> +			 * disable it
> +			 */
> +			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
> +				crtc_state->update_planes |= BIT(plane->id);
> +
>  			continue;
> +		}
>  
>  		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
>  			full_update = true;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 99d33ac5ceee..a969bb835baf 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1336,8 +1336,12 @@ static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
>  	if (!crtc_state->enable_psr2_sel_fetch)
>  		return;
>  
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> -			  PLANE_SEL_FETCH_CTL_ENABLE);
> +
> +	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
> +		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +				  PLANE_SEL_FETCH_CTL_ENABLE);
> +	else
> +		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
>  }
>  
>  static void
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
