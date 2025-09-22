Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C23B92D82
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 21:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CC310E0F3;
	Mon, 22 Sep 2025 19:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJcve6Cj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC8F10E009;
 Mon, 22 Sep 2025 19:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758569686; x=1790105686;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=65eoLUyNHmlu+0UDaWl63pfDUkXf+JmZYgN9dzuzo4Y=;
 b=YJcve6CjSUueNuCFXutQezuQTEzUZBn9Z6eSw7pw1jOpz+++GLY82NMi
 nnTo3jAAmSkkAJfFSA+thStDiJxmk4FrTvqCvSfPAB8as6adMeTMxyY/1
 KaApt9YYkygbfodlmIE6CFYRqmTRHry1RbzXVwjfCpRtXQ4n4OV6cjZmv
 vIDfkRNAmk2izz8o1WsjmBn9EB0cf1XfSsBG/Zo55b5ET4G1/c3oGj++w
 8ckeCSzz2RrMFoY1Ef9GPuw7tB7B/HrnZkixKoW2nHBndWxQlWWGLjet4
 4+6DA/uHxUqg5MBY9lNtBUsFe40jYMZgaT5TDry6kWHjOMdFccBZGKOc0 Q==;
X-CSE-ConnectionGUID: WgWhQsIpTIa4vku2Mw4drA==
X-CSE-MsgGUID: fFbbVOAjRU+x3yZ3KRi+tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60895483"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60895483"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 12:34:45 -0700
X-CSE-ConnectionGUID: ckpaTA43QFOG32XNrEX+ew==
X-CSE-MsgGUID: KBSjFASKReaP9iz7oRcN0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176938019"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 12:34:43 -0700
Date: Mon, 22 Sep 2025 22:34:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/dp: Calculate DSC slice count based on
 per-slice peak throughput
Message-ID: <aNGk0M6Vix9CqLXt@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
 <20250918211223.209674-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250918211223.209674-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Sep 19, 2025 at 12:12:20AM +0300, Imre Deak wrote:
> Use the branch device's actual per-slice peak throughput to calculate
> the minimum number of required DSC slices, falling back to the
> hard-coded throughput values (as suggested by the DP Standard) if the
> device's reported throughput value is 0.
> 
> For now use the minimum of the two throughput values, which is ok,
> potentially resulting in a higher than required minimum slice count.
> This doesn't change the current way of using the same minimum throughput
> value regardless of the RGB/YUV output format used.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++----
>  1 file changed, 41 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2eab591a8ef56..a963a58c87372 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1011,6 +1011,26 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
>  	return bits_per_pixel;
>  }
>  
> +static int dsc_per_slice_throughput(struct intel_display *display, int mode_clock, int bw_code)

s/bw_code/throughput_mode/ or something maybe to make it match the spec
a bit better? "bw_code" is I think what we've been calling the
LINK_BW_SET value.

> +{
> +	switch (bw_code) {
> +	case 0:
> +		if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
> +			return DP_DSC_MAX_ENC_THROUGHPUT_0;
> +		else
> +			return DP_DSC_MAX_ENC_THROUGHPUT_1;

These look like some unhelpful single use defines. I'd get
rid of them and just stick the actual numbers here.

> +	case 1:
> +		return 340000;
> +	case 2 ... 14:
> +		return 400000 + 50000 * (bw_code - 2);
> +	case 15:
> +		return 170000;
> +	default:
> +		drm_err(display->drm, "Invalid DSC peak throughput code\n");

This whole thing looks like it belongs in some drm helper.
Probably best to pass in struct drm_device from the start
so that moving it over will later be easier.

> +		return 340000;
> +	}
> +}
> +
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				int num_joined_pipes)
> @@ -1018,13 +1038,28 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  	struct intel_display *display = to_intel_display(connector);
>  	u8 min_slice_count, i;
>  	int max_slice_width;
> +	int tp_rgb_yuv444;
> +	int tp_yuv422_420;
> +	u8 val;
>  
> -	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
> -		min_slice_count = DIV_ROUND_UP(mode_clock,
> -					       DP_DSC_MAX_ENC_THROUGHPUT_0);
> -	else
> -		min_slice_count = DIV_ROUND_UP(mode_clock,
> -					       DP_DSC_MAX_ENC_THROUGHPUT_1);
> +	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
> +	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
> +						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
> +								val));
> +	tp_yuv422_420 = dsc_per_slice_throughput(display, mode_clock,
> +						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_1_MASK,
> +								val));
> +
> +	/*
> +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> +	 * format of the output.
> +	 * For now use the smaller of these, which is ok, potentially
> +	 * resulting in a higher than required minimum slice count.
> +	 * The RGB/YUV444 throughput value should be always either equal
> +	 * or smaller than the YUV422/420 value, but let's not depend on
> +	 * this assumption.
> +	 */
> +	min_slice_count = DIV_ROUND_UP(mode_clock, min(tp_rgb_yuv444, tp_yuv422_420));
>  
>  	/*
>  	 * Due to some DSC engine BW limitations, we need to enable second
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
