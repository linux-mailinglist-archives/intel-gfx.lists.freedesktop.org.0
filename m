Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D885975B81
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CF310EA8E;
	Wed, 11 Sep 2024 20:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLSJy3Bp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9010610EA8E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726085673; x=1757621673;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R30ZTUpy8Vt1FKYMGI+IJlbWkkk3keDYqvB+LYnmiF4=;
 b=dLSJy3BpxQpSNpOVK/EqrcLNljpHl4+CPz0ADzg0S9m0bZMCLpR4+gql
 a5ba4xup5PLiERo2bvzLlX0NJFEJ9F4ozIkUdlK2xFOy0jzGIaG1CUA5e
 bClJI1f1NyFbE1aFEAvP1pj62DxFceLf9nFt/9cuZYzonpSHJ4hQP6cwq
 8znhpTbgHa5JM57KMsis9fUUjZBKBJGr7noplEx9E2Za2liyfh4qT9oga
 0hu4eoucq3XFRtfwsR+KmuhhEsHNr5GUaCN8qdEb4CLXXVHcESkYuI0YA
 GZ+zSjH2+Pa/BAiF7sB/8tSqbaxQD3qDIBVXTcvg6dC9kaHvd16BLhPy1 g==;
X-CSE-ConnectionGUID: VCf/0FZRShGa0JlSVqqFBQ==
X-CSE-MsgGUID: cOPqWs1OQWyI04DM1KQx5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42428231"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="42428231"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:14:32 -0700
X-CSE-ConnectionGUID: 4OYSAvXhT3ORX4Z2nnQpZg==
X-CSE-MsgGUID: PRKFjC8cRZKMNpNQFdeFjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67539524"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:14:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:14:28 +0300
Date: Wed, 11 Sep 2024 23:14:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 06/19] drm/i915/display: Simplify intel_joiner_num_pipes
 and its usage
Message-ID: <ZuH6JJf0K7tyKUzm@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-7-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:36PM +0530, Ankit Nautiyal wrote:
> Currently intel_joiner_num_pipes is used to get num of pipes wrt num of
> pipes joined. Simplify this by returning 1 when no joiner is used and
> update the checks for no joiner case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 486bade9e927..4751ee20216d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -280,7 +280,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
>  
>  static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
>  {
> -	return hweight8(crtc_state->joiner_pipes);
> +	return hweight8(crtc_state->joiner_pipes) ?: 1;

If we want to deal with this here, then the function probably needs
to be renamed to something like intel_crtc_num_joined_pipes().

In fact we could implement it using the already exising
intel_crtc_joined_pipe_mask() and avoid the ?:1 stuff.

>  }
>  
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
> @@ -2347,7 +2347,7 @@ static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_stat
>  {
>  	int num_pipes = intel_joiner_num_pipes(crtc_state);
>  
> -	if (num_pipes < 2)
> +	if (num_pipes == 1)
>  		return;
>  
>  	mode->crtc_clock /= num_pipes;
> @@ -2409,7 +2409,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>  	drm_mode_copy(mode, pipe_mode);
>  	intel_mode_from_crtc_timings(mode, mode);
>  	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
> -		(intel_joiner_num_pipes(crtc_state) ?: 1);
> +		intel_joiner_num_pipes(crtc_state);
>  	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
>  
>  	/* Derive per-pipe timings in case joiner is used */
> @@ -2432,7 +2432,7 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
>  	int num_pipes = intel_joiner_num_pipes(crtc_state);
>  	int width, height;
>  
> -	if (num_pipes < 2)
> +	if (num_pipes == 1)
>  		return;
>  
>  	width = drm_rect_width(&crtc_state->pipe_src);
> @@ -2893,7 +2893,7 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
>  	enum pipe primary_pipe, pipe = crtc->pipe;
>  	int width;
>  
> -	if (num_pipes < 2)
> +	if (num_pipes == 1)
>  		return;
>  
>  	primary_pipe = joiner_primary_pipe(crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
