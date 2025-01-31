Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2574FA23FB8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 16:37:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D2E10E384;
	Fri, 31 Jan 2025 15:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQ30qg/2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9033410E384;
 Fri, 31 Jan 2025 15:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738337865; x=1769873865;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=yJ+e6YC3zVsxaBeOY3kWA9xlGIb0JHmDQxZcbmBSL1A=;
 b=ZQ30qg/2S3u/GstQZv0iFipiqWNaA5r+BhvqYcCyIuDe1RHI7l4Sqgww
 DskdeI2tCnr8U7v1s6j0uLhKWPwLINgIqqQzxoHOT73cAe5ajEjkB7Klf
 hBnmfiAd+Xhid63S04MMV0/HhkACu1snN4m1KZMCTIiL+sa2IllH7R2ZN
 v/GuycMPAhJ7Ywr+5s+BRrRxc8nX5rnqnCH7oknTD0de7J5n3MfFenGEp
 ceIFY4B+gXtjsmJj2BD138jNx3zb1RMvq3Mq46mO7mAoEnJDbdmtLWsHE
 pLHrCEdJ5vwmji2ZUzODrsphh0Qw/TnL1fzhxbqJ18hQJmQVhhhshxSsx g==;
X-CSE-ConnectionGUID: yvfpP4nyQuC7x8nkf6/cvw==
X-CSE-MsgGUID: tOhjuEYLQ0eJDf3Cv3IEvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38791670"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38791670"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:37:45 -0800
X-CSE-ConnectionGUID: sutVXC8DQtez+5SthyG2eg==
X-CSE-MsgGUID: I8NmRdtSSs6hCIYKrlrFGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114808669"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:37:44 -0800
Date: Fri, 31 Jan 2025 17:38:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/14] drm/i915/dp: Pass connector state all the way to
 dsc_compute_link_config()
Message-ID: <Z5zugLQsw9GApnjj@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <645d950a80df5fd4441d69aba4893ab263b3e555.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <645d950a80df5fd4441d69aba4893ab263b3e555.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:50:06PM +0200, Jani Nikula wrote:
> Going forward, we'll need the connector state in
> dsc_compute_link_config(). Pass it along through the chain. Maintain the
> same parameter order where relevant.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0f1fa4afb808..25160a5d12eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1941,6 +1941,7 @@ static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
>  
>  static int dsc_compute_link_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *pipe_config,
> +				   struct drm_connector_state *conn_state,

This patchset doesn't seem to use conn_state here, this change could've
been left for later to see how it's actually used.

>  				   const struct link_config_limits *limits,
>  				   int dsc_bpp_x16,
>  				   int timeslots)
> @@ -2098,13 +2099,14 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
>   * try depend on the source (platform) and sink.
>   */
>  static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> -				      const struct intel_connector *connector,
>  				      struct intel_crtc_state *pipe_config,
> +				      struct drm_connector_state *conn_state,

Could this be const?

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  				      const struct link_config_limits *limits,
>  				      int pipe_bpp,
>  				      int timeslots)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>  	int output_bpp;
>  	int dsc_min_bpp;
> @@ -2138,6 +2140,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  
>  		ret = dsc_compute_link_config(intel_dp,
>  					      pipe_config,
> +					      conn_state,
>  					      limits,
>  					      bpp_x16,
>  					      timeslots);
> @@ -2209,7 +2212,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>  
>  	if (forced_bpp) {
> -		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
> +		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
>  						 limits, forced_bpp, timeslots);
>  		if (ret == 0) {
>  			pipe_config->pipe_bpp = forced_bpp;
> @@ -2227,7 +2230,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
>  			continue;
>  
> -		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
> +		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
>  						 limits, pipe_bpp, timeslots);
>  		if (ret == 0) {
>  			pipe_config->pipe_bpp = pipe_bpp;
> -- 
> 2.39.5
> 
