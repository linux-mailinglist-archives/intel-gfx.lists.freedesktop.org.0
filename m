Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D550F7D9C1D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 16:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E9E10E9CF;
	Fri, 27 Oct 2023 14:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D6310E9CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 14:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698418174; x=1729954174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RA9zykf93U/VJ6ppP8svdSAAmRAba2jLiTQYK+AIbBc=;
 b=Sd1aShu6MSrWEy0dXkAZELoMA4nkW3G+vREX0pJI8GeMhda/nGMHoLT9
 fSCNmotctZVzsm8DZF35/6ZGyA+sZwNwX+SDoodqqnNfjjz5II8p7mZO9
 kvEhX2OZ+SaZJPBIw2Rl9L6ttHKas8mdFpijLEF/+ukcAqBagUv35FVHl
 qw1EFwTV0uwLNifFWbAIfo+tC6dMv8IYJlCcQp9oVcPZom0OxI2x0hAWm
 0EAMxqUumhdvtbvsGc4EjOpW/zGJLkdnhSSPKQLPffbTAc2cOw+UJf0xX
 hLW9accx19yrFIWq21kMeb57c5upN3HNXfwLXBZcLjs++g4aPG8WFigDl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="384990426"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="384990426"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="825350927"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="825350927"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:49:32 -0700
Date: Fri, 27 Oct 2023 17:49:29 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTvN+WYnxzRSbeOZ@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-11-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-11-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/29] drm/i915/dp: Specify the FEC overhead
 as an increment vs. a remainder
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

On Tue, Oct 24, 2023 at 04:09:06AM +0300, Imre Deak wrote:
> A follow-up patch will add up all the overheads on a DP link, where it
> makes more sense to specify each overhead factor in terms of the added
> overhead amount vs. the reciprocal remainder (of usable BW remaining
> after deducting the overhead). Prepare for that here, keeping the
> existing behavior.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2048649b420b2..0c0f026fb3161 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -85,8 +85,8 @@
>  #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
>  #define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
>  
> -/* DP DSC FEC Overhead factor = 1/(0.972261) */
> -#define DP_DSC_FEC_OVERHEAD_FACTOR		972261
> +/* DP DSC FEC Overhead factor = 1/(0.972261) = 1.028530 ppm */
> +#define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
>  
>  /* Compliance test status bits  */
>  #define INTEL_DP_RESOLUTION_SHIFT_MASK	0
> @@ -680,8 +680,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  
>  u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
>  {
> -	return div_u64(mul_u32_u32(mode_clock, 1000000U),
> -		       DP_DSC_FEC_OVERHEAD_FACTOR);
> +	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
> +		       1000000U);
>  }
>  
>  static int
> -- 
> 2.39.2
> 
