Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28577DB543
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 09:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3465B10E241;
	Mon, 30 Oct 2023 08:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5302910E241
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 08:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698655097; x=1730191097;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Ufx/+ZUWVX2+SuyBdRld2GRnhhIG82qzvYk7TaFB1tw=;
 b=O6H3IQhaNbDdValdoWX3a5zrRxR3aY5TzUNB6YXen5H1+GKXi6dLd7Tp
 K/7BJHsDJdzBcUrotB2eN41xscUo3dNgUUtIhc1ZMUTfinQU5CSs4Y0CF
 +JcptwqhCcGjisvGmyWjMHPPx6mXq1sapHORJi8QmTWFwt/buCTIQGcT8
 h8XkJ3CHS1654fpFYHQ7NQWFFpEFxYLI8kBsVMZBJ0gNAjzJI5YByuXJs
 G2BwXLGnUJnZ+pETHkFeSvPlBQlJfa+W6vOgC3PSDsulUtajsh7VyhEts
 z+GN/ivhg1LBLOFxWGKgZzROHT/FC0g9/vBK9qC6RrCJ1Kcea5bllCvg2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="387847810"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="387847810"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 01:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="1007351539"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="1007351539"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 01:38:15 -0700
Date: Mon, 30 Oct 2023 10:38:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZT9rldOURKx8gX2q@ideak-desk.fi.intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-10-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/29] drm/i915/dp_mst: Enable FEC early
 once it's known DSC is needed
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

On Tue, Oct 24, 2023 at 04:09:05AM +0300, Imre Deak wrote:
> Enable FEC in crtc_state, as soon as it's known it will be needed by
> DSC. This fixes the calculation of BW allocation overhead, in case DSC
> is enabled by falling back to it during the encoder compute config
> phase (vs. enabling FEC due to DSC being enabled on other streams).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.h     | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++++
>  3 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1891c0cc187d1..2048649b420b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1369,9 +1369,9 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>  	return false;
>  }
>  
> -static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> -				  const struct intel_connector *connector,
> -				  const struct intel_crtc_state *pipe_config)
> +bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
> +			   const struct intel_crtc_state *pipe_config)
>  {
>  	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
>  		drm_dp_sink_supports_fec(connector->dp.fec_capability);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 484aea215a251..0258580a6aadc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -137,6 +137,11 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  }
>  
>  u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
> +
> +bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
> +			   const struct intel_crtc_state *pipe_config);
> +
>  u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
>  
>  void intel_ddi_update_pipe(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 80b3df6d51fc8..98d775d862ac4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -338,6 +338,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
> +	const struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
>  	struct link_config_limits limits;
> @@ -380,6 +382,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  							&limits))
>  			return -EINVAL;
>  
> +		if (!intel_dp_supports_fec(intel_dp, connector, pipe_config))
> +			return -EINVAL;
> +
> +		pipe_config->fec_enable = !intel_dp_is_uhbr(pipe_config);

The above is bogus, since pipe_config->port_clock will be set only later
in intel_dp_mst_find_vcpi_slots_for_bpp(). I'll send an updated version
moving the above later to that function.

> +
>  		/*
>  		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
>  		 * WARN and ignore the debug flag force_dsc_bpc for now.
> -- 
> 2.39.2
> 
