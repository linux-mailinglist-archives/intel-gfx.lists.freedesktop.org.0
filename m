Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0041C7F9CC8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 10:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6288310E214;
	Mon, 27 Nov 2023 09:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D6410E215
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 09:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701077877; x=1732613877;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gFrJnyr3dRIK8CddsxOEzMo8LLtniA7BceMwXYLt87I=;
 b=KKtSENyFSeGlCGG1lNEJwE0igYGrKMz362LAgSChUGjcKbAc+DC6ncFH
 AIJTS6h7dHbLC83uq5+OxZhjYyOvTSRCqIWgvr+LM3pjUr+qJTVS/q8tw
 G+WOhmxx04C+jyHngTDmNmeNgVtyjuuilUOmQR/s6OxZKV4NmdacD0tXt
 wo3OfwndeWnwx1HEIzB9ScTperW4TnensvXnRqjWxURPVrNxqhK6iqoV2
 vVUS2BcGQmJTZ5KfzABOgDXtQ6DltyTXAFZZkHfh8USQ3xl0sl1+ZMn5Q
 uNWkriZ+KHD3sqD8GMTZu1UNPlsMlnkkwOJlosT3PtLMw1liZUz//dnv8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="5917968"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; 
   d="scan'208";a="5917968"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 01:37:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="1015488996"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="1015488996"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.43.74])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 01:37:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127063926.1630925-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231123042733.1027046-4-ankit.k.nautiyal@intel.com>
 <20231127063926.1630925-1-ankit.k.nautiyal@intel.com>
Date: Mon, 27 Nov 2023 11:37:51 +0200
Message-ID: <875y1na64w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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

On Mon, 27 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Use helpers for source min/max input bpc with DSC.
> While at it, make them return int instead of u8.
>
> v2: Make the helpers return int instead of u8. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  6 ++----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
>  3 files changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1f68d4819282..74000b65829e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1622,8 +1622,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  	return -EINVAL;
>  }
>  
> -static
> -u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
> +int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>  {
>  	if (!HAS_DSC(i915))
>  		return 0;
> @@ -2022,8 +2021,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
>  }
>  
> -static
> -u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
> +int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
>  	return HAS_DSC(i915) ? 8 : 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 05db46b111f2..f613ced9eda6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -184,5 +184,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>  					struct link_config_limits *limits);
>  
>  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
> +int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
> +int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 63364c9602ef..01e9d6fb9548 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -293,17 +293,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] = {};
>  	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	u8 dsc_max_bpc;
> +	u8 dsc_max_bpc, dsc_min_bpc;
>  	int min_compressed_bpp, max_compressed_bpp;
>  
> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >= 12)
> -		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
> -	else
> -		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>  
>  	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> -	min_bpp = limits->pipe.min_bpp;
> +	min_bpp = max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);

I thought it would be obvious you'd also need to change these to ints
and drop the forced u8 etc.

BR,
Jani.

>  
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>  						       dsc_bpc);

-- 
Jani Nikula, Intel
