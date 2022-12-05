Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B999A6423A8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6B510E0FA;
	Mon,  5 Dec 2022 07:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B294D10E0FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670225749; x=1701761749;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rYntsth/yLMXeeDKX8fGdI5YxGX0u19Jn+vAT7c8O8w=;
 b=lI+Du7C9y54pJW8Gb2Xj2Z26OjH/OBA/fuEyTHEMttcqZK9+5hpkcP/7
 1eZoKMPyPzTNqWtT98KSsag/V2fBmjlKwiMKF+zab1ntfbbvD5G5e6xFK
 Odn5SG1TGA+dl77RJOdo9v9FXwz4AuocSh2x4tjQuR9I4WsXC3CbzUXMH
 WggK56q+GBYo0nDN306QlBzrj16YXfXhr3c545Qa/suZlLE3dyifZ/wx1
 77K9ATHVZ1uCmLb+QOO/+mMVtqOIk0SFm6eXukFYXGq723pSMut3rIVL0
 CaeO3oXranUOG/BCVrngGB5/Sfk5amesls/wQaLs4vDQ5yoVG3gJDheo1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="402560812"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="402560812"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:35:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="820094588"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="820094588"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:35:34 -0800
Date: Mon, 5 Dec 2022 09:35:31 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y42fQ3LLtuILCzql@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
 <20221128101922.217217-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221128101922.217217-8-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
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

On Mon, Nov 28, 2022 at 03:49:18PM +0530, Ankit Nautiyal wrote:
> MTL+ supports fractional compressed bits_per_pixel, with precision of
> 1/16. This compressed bpp is stored in U6.4 format.
> Accommodate the precision during calculation of transfer unit data
> for hblank_early calculation.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index f63d5824aca2..4797040a6362 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -510,14 +510,14 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  	unsigned int link_clks_available, link_clks_required;
>  	unsigned int tu_data, tu_line, link_clks_active;
>  	unsigned int h_active, h_total, hblank_delta, pixel_clk;
> -	unsigned int fec_coeff, cdclk, vdsc_bpp;
> +	unsigned int fec_coeff, cdclk, vdsc_bppx16;
>  	unsigned int link_clk, lanes;
>  	unsigned int hblank_rise;
>  
>  	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
> +	vdsc_bppx16 = crtc_state->dsc.compressed_bpp;
>  	cdclk = i915->display.cdclk.hw.cdclk;
>  	/* fec= 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff = 972261;
> @@ -525,10 +525,10 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  	lanes = crtc_state->lane_count;
>  
>  	drm_dbg_kms(&i915->drm, "h_active = %u link_clk = %u :"
> -		    "lanes = %u vdsc_bpp = %u cdclk = %u\n",
> -		    h_active, link_clk, lanes, vdsc_bpp, cdclk);
> +		    "lanes = %u vdsc_bppx16 = %u cdclk = %u\n",
> +		    h_active, link_clk, lanes, vdsc_bppx16, cdclk);
>  
> -	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !cdclk))
> +	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 || !cdclk))
>  		return 0;
>  
>  	link_clks_available = (h_total - h_active) * link_clk / pixel_clk - 28;
> @@ -540,7 +540,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  		hblank_delta = DIV64_U64_ROUND_UP(mul_u32_u32(5 * (link_clk + cdclk), pixel_clk),
>  						  mul_u32_u32(link_clk, cdclk));
>  
> -	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8, 1000000),
> +	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8, 16 * 1000000),

I think it should be:

tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8, 1000000),
                    mul_u32_u32(link_clk * lanes * 16, fec_coeff));

i.e you need to divide by 16 but not multiply, because vdsc_bppx16 already
stores vdsc_bpp multiplied by 16, which is visible from the logs,
during testing it was for example 384 for bpp 24, so no point in multiplying
it once again.

Stan

>  			    mul_u32_u32(link_clk * lanes, fec_coeff));
>  	tu_line = div64_u64(h_active * mul_u32_u32(link_clk, fec_coeff),
>  			    mul_u32_u32(64 * pixel_clk, 1000000));
> -- 
> 2.25.1
> 
