Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBF47EF6D3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DF610E2FC;
	Fri, 17 Nov 2023 17:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E0310E2FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 17:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241241; x=1731777241;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VG/yWDzkOMXFmDKVhfZPhcYL2+wORH5QS4NovYRyLn4=;
 b=OkChh5bpW2yv4ZM/5n9EtxM6AFCuetnvhTuoGU18UNn4hVGxNcV2eu9U
 XIwFjrgaBSSfQSR91wTqQFCbasBAuiv5nS4wTwz4Nw7TtiAc+2pRZJFIi
 fUaYdtXtprUx/qN0IrVprtTD3EVz225eGEF+kacBQOnDFIOdapJEGYTAl
 B/q8ndPCeSkPqzTfk33Qect1xVwfD8EvqL8pyzZHRb5bBBQzO4WAtZyW2
 hN7QZ+FkbAXXs6TX7YoULi1zSr5REVsZaOw5vwFIelp+vwCnG8w5p77JT
 BeksgrsR1pDP6tvLGA1onBrxcMXI5/D4dscHT3OkiuddEgG2JSA8bHtKE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="422427717"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="422427717"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759224975"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759224975"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 09:11:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 19:11:42 +0200
Date: Fri, 17 Nov 2023 19:11:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZVeezrlkQxzKh2Fs@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231116131841.1588781-12-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915/dp: Reuse intel_dp_{max,
 effective}_data_rate in intel_link_compute_m_n()
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

On Thu, Nov 16, 2023 at 03:18:41PM +0200, Imre Deak wrote:
> Reuse intel_dp_max_data_rate() and intel_dp_effective_data_rate() in
> intel_link_compute_m_n(), instead of open-coding the equivalent. Note
> the kbit/sec -> kByte/sec unit change in the M/N values, but this not
> reducing the precision, as the link rate value is based anyway on a less
> precise 10 kbit/sec value.
> 
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 +++-----------------
>  1 file changed, 3 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 744c321792fcf..199ecd8879461 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2389,36 +2389,17 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
>  	intel_reduce_m_n_ratio(ret_m, ret_n);
>  }
>  
> -static void
> -add_bw_alloc_overhead(int link_clock, int bw_overhead,
> -		      int pixel_data_rate, int link_data_rate,
> -		      u32 *data_m, u32 *data_n)
> -{
> -	bool is_uhbr = drm_dp_is_uhbr_rate(link_clock);
> -	int ch_coding_efficiency =
> -		drm_dp_bw_channel_coding_efficiency(is_uhbr);
> -
> -	*data_m = DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate, bw_overhead),
> -				   1000000);
> -	*data_n = DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate, ch_coding_efficiency),
> -				     1000000);
> -}
> -
>  void
>  intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
>  		       int pixel_clock, int link_clock,
>  		       int bw_overhead,
>  		       struct intel_link_m_n *m_n)
>  {
> -	u32 data_clock = DIV_ROUND_UP(bits_per_pixel_x16 * pixel_clock, 16);
>  	u32 link_symbol_clock = intel_dp_link_symbol_clock(link_clock);
> -	u32 data_m;
> -	u32 data_n;
> +	u32 data_m = intel_dp_effective_data_rate(pixel_clock, bits_per_pixel_x16,
> +						  bw_overhead);
> +	u32 data_n = intel_dp_max_data_rate(link_clock, nlanes);
>  
> -	add_bw_alloc_overhead(link_clock, bw_overhead,
> -			      data_clock,
> -			      link_clock * 10 * nlanes,
> -			      &data_m, &data_n);
>  	/*
>  	 * Windows/BIOS uses fixed M/N values always. Follow suit.
>  	 *
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
