Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F28DE7EF171
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 12:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670EB10E74C;
	Fri, 17 Nov 2023 11:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E78710E74D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700219370; x=1731755370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XC4fdSySuBO7/aYlPHrubWx0VisqL3huds8bWiP1K7E=;
 b=Lobiel82mu4M/5C1VG5ewAnJlG9H0QX2CD11NoKrCAmChNy4XJHiMHCC
 SyS4BfrtS2XB5FAxEZzDk7KT9MsEEUSEjtsf4zRlmV7v6SXVCLEQnCcjw
 yND8wuEjzKdt28HEXsR4bQBLUPou/H1iLaVw4+Np9jc1HIFh0heDhbLnI
 gHRPt6OdazMsCvUqC/anwUPHXXTlQSfvaJ+1g7NFVvyc8lPI90WsAWv3z
 wqCr0o7T9/g7r6wnTtojhWKjSqjmZpEDGcu1fd2V1QynBlCU+yJ/6lN9l
 VQD7SaQj8PFheJLXX35TBd3MXPHNXzMYupIw8cJL7r18LZINqkrGcmx2b Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="376329351"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="376329351"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 03:09:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759147862"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759147862"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 03:09:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 13:09:26 +0200
Date: Fri, 17 Nov 2023 13:09:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVdJ5v8ZfiKWn3-g@intel.com>
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

drm_rect_visible() is less magic.

> +		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +				  plane_state->ctl);

Does this even have anything besides the enable bit?

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

I tried to look at this code, but it just looks entirely confused
about things.

I had a quick stab at rewriting it all:
 https://github.com/vsyrjala/linux.git sel_fetch_redo_2
but I don't have a machine to test it, so can't guarantee that it's 100%
correct.

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
