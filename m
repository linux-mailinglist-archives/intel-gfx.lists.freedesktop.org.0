Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D59A23F71
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 16:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E48710EAE2;
	Fri, 31 Jan 2025 15:09:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zvp0hKyb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D076610EAD8;
 Fri, 31 Jan 2025 15:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738336169; x=1769872169;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=59IxOY+aLIDd4npHVK2CNZTWK+xyFzAXW1yR20EuJPc=;
 b=Zvp0hKybMDH3t7I7XyDJBjognBT8oyloULRzzeJuZLKCpNcgcfGNR3bV
 4PLGmTEkgXRIODQqRDtv8Zp0CdPk/dDYZPJa2lVH+/B71kBtBRHzJy9UD
 7qSK0u8ITJ/VaHjMxrRj9SmQd/SpHcs/Pl9uWr1jg5k8D2cK/XYT1RumE
 nYCmMmRit8hyGbr+V1sqaTUvUqxZoI+JVeiw+crVmMJVdTfFB4BVTlSB/
 eItzUb8gXYtHZ1y8jna5G9tprPfxuVE/EpG/6bbhLWDINHFTBiyO9g0m+
 PHDJwxwEzd5u7XyVf25g+eLz0NWAB2BWytTd0ek6HhPA2K2xVOO+9Chp9 Q==;
X-CSE-ConnectionGUID: u87nQJdWSN2+a39cvCvCVw==
X-CSE-MsgGUID: OyHPjAdHRU21qOErNXMfsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="49566746"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="49566746"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:09:28 -0800
X-CSE-ConnectionGUID: TjVlTirJRPqlVo95f0oE9w==
X-CSE-MsgGUID: IOqwmfedRqiJcDhu7JezFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140535778"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:09:27 -0800
Date: Fri, 31 Jan 2025 17:10:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/14] drm/i915/dp: Drop compute_pipe_bpp parameter from
 intel_dp_dsc_compute_config()
Message-ID: <Z5zn38avBDX6f4tt@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <82a4b84711b1416bb3382f5d8383fe65ab88159a.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82a4b84711b1416bb3382f5d8383fe65ab88159a.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:50:05PM +0200, Jani Nikula wrote:
> The parameter is basically just a proxy for whether the function is
> being called for DP SST or DP MST. We can figure this out from crtc
> state.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 14 ++++++--------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  3 files changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7c6d277729d0..0f1fa4afb808 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2307,8 +2307,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
>  				const struct link_config_limits *limits,
> -				int timeslots,
> -				bool compute_pipe_bpp)
> +				int timeslots)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	const struct intel_connector *connector =
> @@ -2316,6 +2315,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> +	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
>  	int ret;
>  
>  	intel_dp_fec_compute_config(intel_dp, pipe_config);
> @@ -2324,12 +2324,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		return -EINVAL;
>  
>  	/*
> -	 * compute pipe bpp is set to false for DP MST DSC case
> -	 * and compressed_bpp is calculated same time once
> -	 * vpci timeslots are allocated, because overall bpp
> -	 * calculation procedure is bit different for MST case.
> +	 * Link parameters, pipe bpp and compressed bpp have already been
> +	 * figured out for DP MST DSC.
>  	 */
> -	if (compute_pipe_bpp) {
> +	if (!is_mst) {
>  		if (intel_dp_is_edp(intel_dp))
>  			ret = intel_edp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
>  							     conn_state, limits);
> @@ -2640,7 +2638,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			return -EINVAL;
>  
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
> -						  conn_state, &limits, 64, true);
> +						  conn_state, &limits, 64);
>  		if (ret < 0)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ffc27f8ad226..9189db4c2594 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -76,8 +76,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
>  				const struct link_config_limits *limits,
> -				int timeslots,
> -				bool recompute_pipe_bpp);
> +				int timeslots);
>  void intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  				   struct intel_crtc_state *pipe_config,
>  				   struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 60b003bcd1ee..868d0948ca27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -657,7 +657,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits,
> -						  pipe_config->dp_m_n.tu, false);
> +						  pipe_config->dp_m_n.tu);
>  	}
>  
>  	if (ret)
> -- 
> 2.39.5
> 
