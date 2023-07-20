Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE10C75AAE5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1D510E58B;
	Thu, 20 Jul 2023 09:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2D010E0AE;
 Thu, 20 Jul 2023 09:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689845503; x=1721381503;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wgUSvff4NmBwoNBd/M7NZYL0Kz0CtKkLQBEvtyolgmo=;
 b=JTHyHYQCfo0Lx//ycrW3MMfew26QLZ6Tz7SMFhNGXYNU70kJSuvMUvHy
 ADwUZm4o7edTKFgRUqklHrP56zAck/IbmoDeyoYEMeZEqZfpy02rDRg7t
 10hXjQbBu8eedGdKUr811KTlp8NDwnbmZjWzYfNxQOiM/afK15r/nDUmB
 I/YSFZw2Fuz8TRdAxjRV4Gte+z5MRJilQntiGedoUSRkz/eO1Sx72IG6s
 xTzbVmKyau+K5n6yMPzknqYDQKCkDYnegU/DMUnvkAzM0hkjEP+LDcWt6
 GJRLAWxBUMmOMBK6a46UKGzP3KosQdob8td5OcqRf16owZqr3O/yaZJAi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="369338427"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="369338427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:31:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="754012830"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="754012830"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:31:40 -0700
Date: Thu, 20 Jul 2023 12:31:37 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZLj++Xx5VQqQdov1@intel.com>
References: <20230713103346.1163315-1-ankit.k.nautiyal@intel.com>
 <20230713103346.1163315-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230713103346.1163315-14-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/19] drm/i915/dp: Avoid left shift of DSC
 output bpp by 4
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 13, 2023 at 04:03:40PM +0530, Ankit Nautiyal wrote:
> To make way for fractional bpp support, avoid left shifting the
> output_bpp by 4 in helper intel_dp_dsc_get_output_bpp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 10 +++-------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  2 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9d2d05da594b..a7d58eb914c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -812,11 +812,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  
>  	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
>  
> -	/*
> -	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
> -	 * fractional part is 0
> -	 */
> -	return bits_per_pixel << 4;
> +	return bits_per_pixel;
>  }
>  
>  u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> @@ -1206,7 +1202,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  								    mode->hdisplay,
>  								    bigjoiner,
>  								    output_format,
> -								    pipe_bpp, 64) >> 4;
> +								    pipe_bpp, 64);
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> @@ -1812,7 +1808,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  							     pipe_config->pipe_bpp);
>  
>  			pipe_config->dsc.compressed_bpp = min_t(u16,
> -								dsc_max_compressed_bpp >> 4,
> +								dsc_max_compressed_bpp,
>  								output_bpp);
>  		}
>  		pipe_config->dsc.slice_count = dsc_dp_slice_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index dff4717edbd0..4895d6242915 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -982,7 +982,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  								    mode->hdisplay,
>  								    bigjoiner,
>  								    INTEL_OUTPUT_FORMAT_RGB,
> -								    pipe_bpp, 64) >> 4;
> +								    pipe_bpp, 64);

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> -- 
> 2.40.1
> 
