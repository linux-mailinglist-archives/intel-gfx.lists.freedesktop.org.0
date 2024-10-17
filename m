Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4F9A2209
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 14:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5BB10E327;
	Thu, 17 Oct 2024 12:19:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9xIpIHJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AFF10E327;
 Thu, 17 Oct 2024 12:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729167576; x=1760703576;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=0Uu/qpZSnAEFT8JY2nB1u0Lq2VZCjsdlh91dFitK2ok=;
 b=k9xIpIHJwySeZAgh+5wHp07G6RsizGFnsJlrWzUCDZyCDinrimx29FVm
 bfu6mnH4SQlGkIYFBv2oEfwydOTV1J1lDpqe1m61CyR+dyUg4KaXjzkaO
 JssI4zmYXq4MUyhx/XE/Lzab8D6C+LbaI5LAtaKFpif7sqwSjulDwD5dQ
 lXPObuueFzFCJs0eFt8CCanqs/XUkyo5QouzQ2xUodpy7t3BHJCWgd64Z
 zj2qYayxtmrgZMVLij2BNcKC0VlZ9v7Vi5XDZJb5oCzIJSgBcTKU8SnKk
 vXk4/XNsp73Jv8kutY6m0wf7zUdFipMn0exZpra9Otjstkb9zZbI1v7rc w==;
X-CSE-ConnectionGUID: j2UvV+oxTCWQD1XPgmwkcQ==
X-CSE-MsgGUID: IOVjK9C+RMK22zn0rNBc3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="39285510"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="39285510"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 05:19:36 -0700
X-CSE-ConnectionGUID: n+xm9u1/RHakWXG4eP9ZuQ==
X-CSE-MsgGUID: UWgHYA/pQOy00dio+vrm2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78569320"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 05:19:34 -0700
Date: Thu, 17 Oct 2024 15:20:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com, jani.nikula@linux.intel.com
Subject: Re: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
Message-ID: <ZxEA9KDEWys913p5@ideak-desk.fi.intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 03, 2024 at 04:13:41PM +0530, Ankit Nautiyal wrote:
> With DSC there are additional limits for pipe_bpp. Currently these are
> scattered in different places.
> Instead set the limits->pipe.max/min_bpp in one place and use them
> wherever required.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 43 ++++++++++---------------
>  1 file changed, 17 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 46f3b680afe9..55ee438a4fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2166,21 +2166,11 @@ int intel_dp_dsc_min_src_input_bpc(struct intel_display *display)
>  }
>  
>  static
> -bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
> -				struct link_config_limits *limits,
> +bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
> -	struct intel_display *display = to_intel_display(&i915->drm);
> -	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
> -
> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
> -
> -	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> -
> -	return pipe_bpp >= dsc_min_pipe_bpp &&
> -	       pipe_bpp <= dsc_max_pipe_bpp;
> +	return pipe_bpp >= limits->pipe.min_bpp &&
> +	       pipe_bpp <= limits->pipe.max_bpp;
>  }
>  
>  static
> @@ -2195,7 +2185,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
>  
>  	forced_bpp = intel_dp->force_dsc_bpc * 3;
>  
> -	if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
> +	if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
>  		drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", intel_dp->force_dsc_bpc);
>  		return forced_bpp;
>  	}
> @@ -2212,11 +2202,10 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					 struct link_config_limits *limits,
>  					 int timeslots)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
>  	const struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	int dsc_max_bpc, dsc_max_bpp;
> -	int dsc_min_bpc, dsc_min_bpp;
> +	int dsc_max_bpp;
> +	int dsc_min_bpp;
>  	u8 dsc_bpc[3] = {};
>  	int forced_bpp, pipe_bpp;
>  	int num_bpc, i, ret;
> @@ -2232,14 +2221,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> -	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> -	if (!dsc_max_bpc)
> -		return -EINVAL;
> -
> -	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
> -
> -	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
> -	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
> +	dsc_max_bpp = limits->pipe.max_bpp;
> +	dsc_min_bpp = limits->pipe.min_bpp;
>  
>  	/*
>  	 * Get the maximum DSC bpc that will be supported by any valid
> @@ -2284,7 +2267,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  
>  		/* For eDP use max bpp that can be supported with DSC. */
>  		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
> -		if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
> +		if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "Computed BPC is not in DSC BPC limits\n");
>  			return -EINVAL;
> @@ -2502,6 +2485,14 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>  	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>  						     respect_downstream_limits);
> +	if (dsc) {
> +		struct intel_display *display = to_intel_display(intel_dp);
> +		int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
> +		int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> +
> +		limits->pipe.max_bpp = min(limits->pipe.max_bpp, dsc_max_bpc * 3);
> +		limits->pipe.min_bpp = max(limits->pipe.min_bpp, dsc_min_bpc * 3);
> +	}

Then intel_dp_mst_compute_config_limits() would also need to do the
same.

>  
>  	if (intel_dp->use_max_params) {
>  		/*
> -- 
> 2.45.2
> 
