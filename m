Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851057D70BB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77F710E5C3;
	Wed, 25 Oct 2023 15:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677ED10E6B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698247682; x=1729783682;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JZ7QFKKSLaCZDKTek0NfmNrW4RWB84SGlhfpb1td3P0=;
 b=k3gxQAXkfZ8nQoVQoA06R34U2eqVUYEOiOdwW8sk/ogbDJsc9o6ME3+9
 vN92LJlwuHMAYvEdCZtHGD5XAfhvGii5B3F/9MUdNTWPo/KijuhHwzMlX
 sO1xRgUui3gVgBJQgBI76kkeQQ6duvUHEvv5eAYTi0rDZCgeZtZ/hPBw9
 ZynWqeQOvF6kk/AUP+JpMPP1E18E4yGQxLuoG2mpUYFootgSbzsGifiQc
 7JkSjBntUjOeH0nUkbT9m9E9shv7rr6BgziZE1yI4crQDsQQXJ0xBYKbu
 5JdABgKt3Xa91cnDYhnepyl34CiXlU4MaylONBKcm8cc1yeO5bFbohzdd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372382918"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="372382918"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="902575988"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="902575988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga001.fm.intel.com with SMTP; 25 Oct 2023 08:25:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Oct 2023 18:27:58 +0300
Date: Wed, 25 Oct 2023 18:27:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTkz_lk_BfrJZTLY@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-11-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231024010925.3949910-11-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

Does anyone know where this magic number comes from?

AFAICS we should have 250 LL + 5 FEC_PARITY_PH + 1 CD_ADJ, which
gives us the 256/250 = 2.4% number. In addition there's the
extra parity marker symbol insterted every 128 FEC blocks,
which makes the total overhead 2.4015625%, which is still
not that magic number.

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

-- 
Ville Syrjälä
Intel
