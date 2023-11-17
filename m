Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA57EF6D2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBE810E2F8;
	Fri, 17 Nov 2023 17:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D036E10E2F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 17:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241227; x=1731777227;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fAM8n8y1i203LaTFPflKm4ffo/gDPIrMLs11vGu4jwQ=;
 b=iT2HbJOEIJktVpp1FcuBQz3o/Gr11CMB4S9f5ngN2Z2g+46nKrMI7BXT
 11eXIXg7S4JEfh+U8Sqh2gzs29TnKhzkvOpTSgrV5VTHFKDXXXGNHV0VF
 T/Q9CW9aF2siedrJlU5zZArAssJWUONWVhyWtYfI1wX4Sw0ONmS5zGSgx
 zM8YN39bQ4d1mWnWeQuvybmUTrOYX1YIrn4cqzBUunZvuNfg2pP6SInzV
 mEuCwjZulTg/h22L+eMx++hI0FQH9Wh6c9Rp66bPvNAB22Xj/nMWPUpXk
 e+vxsk2q3vCDp7XLZQZYcVxWT5SLi38L9j0pZHcBmHSbYpKXtEj2oFeA6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="422427641"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="422427641"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:10:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759224804"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759224804"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 09:10:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 19:10:50 +0200
Date: Fri, 17 Nov 2023 19:10:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZVeemgslQIdZnsvT@intel.com>
References: <20231116131841.1588781-1-imre.deak@intel.com>
 <20231116131841.1588781-11-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231116131841.1588781-11-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/i915/dp: Simplify
 intel_dp_max_data_rate()
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

On Thu, Nov 16, 2023 at 03:18:40PM +0200, Imre Deak wrote:
> Simplify intel_dp_max_data_rate() using
> drm_dp_bw_channel_coding_efficiency() to calculate the max data rate for
> both DP1.4 and UHBR link rates. This trades a redundant multiply/divide
> for readability.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 209c27167e057..a93e8f6429d85 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -405,29 +405,27 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>  int
>  intel_dp_max_data_rate(int max_link_rate, int max_lanes)
>  {
> -	if (max_link_rate >= 1000000) {
> -		/*
> -		 * UHBR rates always use 128b/132b channel encoding, and have
> -		 * 97.71% data bandwidth efficiency. Consider max_link_rate the
> -		 * link bit rate in units of 10000 bps.
> -		 */
> -		int max_link_rate_kbps = max_link_rate * 10;
> -
> -		max_link_rate_kbps = DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps, 9671), 10000);
> -		max_link_rate = max_link_rate_kbps / 8;
> -	}
> +	int ch_coding_efficiency =
> +		drm_dp_bw_channel_coding_efficiency(drm_dp_is_uhbr_rate(max_link_rate));
> +	int max_link_rate_kbps = max_link_rate * 10;
>  
> +	/*
> +	 * UHBR rates always use 128b/132b channel encoding, and have
> +	 * 97.71% data bandwidth efficiency. Consider max_link_rate the
> +	 * link bit rate in units of 10000 bps.
> +	 */
>  	/*
>  	 * Lower than UHBR rates always use 8b/10b channel encoding, and have
>  	 * 80% data bandwidth efficiency for SST non-FEC. However, this turns
> -	 * out to be a nop by coincidence, and can be skipped:
> +	 * out to be a nop by coincidence:
>  	 *
>  	 *	int max_link_rate_kbps = max_link_rate * 10;
>  	 *	max_link_rate_kbps = DIV_ROUND_DOWN_ULL(max_link_rate_kbps * 8, 10);
>  	 *	max_link_rate = max_link_rate_kbps / 8;
>  	 */
> -
> -	return max_link_rate * max_lanes;
> +	return DIV_ROUND_DOWN_ULL(mul_u32_u32(max_link_rate_kbps * max_lanes,
> +					      ch_coding_efficiency),
> +				  1000000 * 8);
>  }
>  
>  bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
