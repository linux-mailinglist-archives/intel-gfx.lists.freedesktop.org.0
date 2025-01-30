Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B49CA22ED6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:15:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7461C10E98F;
	Thu, 30 Jan 2025 14:15:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYTWTz7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBEC10E98C;
 Thu, 30 Jan 2025 14:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738246543; x=1769782543;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=P3WUP/mSxOAzKYsP4PVcBeFmY3Xjw/p+LdyTiORydkE=;
 b=aYTWTz7G+ABhgfotnpbz1laLuPKRF+g8+OzlXSL3UqZdjVIgh+7RPHn2
 N4rS85PWCQPUrxHPW6paI4RHI2ilGKbh77uGvZGs7Xnu87LHofI664UeN
 QyvTIpuIYPr50sAaVDIU1Golx3qURWawyyqqPXHvZuXeiGcZrnVdCj7yD
 +BzJP1/uIBRtzJpmwkkFhByYjNHDbjDt+0p5DYBW2SnglcvA5bkA0zBrd
 ejsflYdfWM15GNnvJ4ShzKsnNCT72fDIqelXa4nvKxglry1CDnSJgHSe0
 29gbqUJfc/R758OprzDas/8zvbKBP9ForBqQPeSJ0hvEZy1DQvkd+NTRn A==;
X-CSE-ConnectionGUID: HtyHhIezS2yE/uOVgjnpHg==
X-CSE-MsgGUID: VPtGqq2vRN634kFYclYnKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38953467"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38953467"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:15:43 -0800
X-CSE-ConnectionGUID: fQeJ7JNMSDWd2ffxDFrwug==
X-CSE-MsgGUID: v+k3QfumSDKzdme3Owu3Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109192629"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:15:41 -0800
Date: Thu, 30 Jan 2025 16:16:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/mst: change where lane_count and port_clock
 are set
Message-ID: <Z5uJxfe9GlyBfv89@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <101ce3fc6afff55d966336f3ab72090317750f82.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <101ce3fc6afff55d966336f3ab72090317750f82.1738161945.git.jani.nikula@intel.com>
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

On Wed, Jan 29, 2025 at 04:46:35PM +0200, Jani Nikula wrote:
> Semantically mst_stream_find_vcpi_slots_for_bpp() does not seem like the
> place to make decisions about lane_count and port_clock. Move them to
> the callers, and remove the limits parameter that becomes unused.
> 
> This leads to slight duplication, but a) this makes further refactoring
> easier, and b) also the SST code sets link parameters in different
> places for uncompressed and compressed paths.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 98d7cdddfead..ea1b05224c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -362,7 +362,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  					      struct intel_crtc_state *crtc_state,
>  					      int max_bpp, int min_bpp,
> -					      const struct link_config_limits *limits,
>  					      struct drm_connector_state *conn_state,
>  					      int step, bool dsc)
>  {
> @@ -373,9 +372,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  	if (IS_ERR(mst_state))
>  		return PTR_ERR(mst_state);
>  
> -	crtc_state->lane_count = limits->max_lane_count;
> -	crtc_state->port_clock = limits->max_rate;
> -
>  	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>  						      crtc_state->lane_count);
>  
> @@ -388,6 +384,9 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  					  struct drm_connector_state *conn_state,
>  					  const struct link_config_limits *limits)
>  {
> +	crtc_state->lane_count = limits->max_lane_count;
> +	crtc_state->port_clock = limits->max_rate;
> +
>  	/*
>  	 * FIXME: allocate the BW according to link_bpp, which in the case of
>  	 * YUV420 is only half of the pipe bpp value.
> @@ -395,7 +394,6 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
>  						  fxp_q4_to_int(limits->link.max_bpp_x16),
>  						  fxp_q4_to_int(limits->link.min_bpp_x16),
> -						  limits,
>  						  conn_state, 2 * 3, false);
>  }
>  
> @@ -453,8 +451,11 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
>  							    crtc_state->pipe_bpp);
>  
> +	crtc_state->lane_count = limits->max_lane_count;
> +	crtc_state->port_clock = limits->max_rate;
> +
>  	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
> -						  min_compressed_bpp, limits,
> +						  min_compressed_bpp,
>  						  conn_state, 1, true);
>  }
>  
> -- 
> 2.39.5
> 
