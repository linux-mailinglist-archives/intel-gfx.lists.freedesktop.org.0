Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91C4AE614B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 11:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1909C10E4FD;
	Tue, 24 Jun 2025 09:50:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajM+LpSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6943810E0BC;
 Tue, 24 Jun 2025 09:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750758605; x=1782294605;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mjVq0NTnNDLtgXqCWF7Fs5kCfGyrtZTZtXGA7i5pilY=;
 b=ajM+LpSd+ow+EtQBZhdXn1Wbl017ajPVqGpf3eNXU7HcgfcFbB56K9Fl
 B3y5PLstwH4g+2KE3BZv2VcfHhYGbSFKe7+fMOnL10U71oDS3eaqKJqGX
 biYZBT8Sfr7yzCtk1rsgopNI8Vm81SuYBwu/YZoUcjg6xZX7keEJHmVcw
 Q5RlDhUX3iErqHLlSMv6UanKzRm0Uh/ZN6cY/friunySwx/msIpOGb4gI
 i6VrFCHa3NFTGP/tRWyauup9Hcfqswk5/Gt6HxgunwXWj6/DTBFOyUx4Z
 JSoxThekdOylwQCWjKDkh/p44La0Kfwt1s28Y1OKxnKJzyjuU2iZb+Sjo w==;
X-CSE-ConnectionGUID: eKbqOXY/ROCjHtwXoQcz4g==
X-CSE-MsgGUID: DxVB/DvqSqavofHXd6UMmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="53061762"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="53061762"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 02:50:05 -0700
X-CSE-ConnectionGUID: PFoNtoWbR6CpWyl/3dgQgw==
X-CSE-MsgGUID: GqBqzqXCQ3604kG6BH11UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="151463784"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 02:50:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/display/dp: Use static values for min_hblank
In-Reply-To: <20250624-min_hblank-v1-1-5c100e4a8b05@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250624-min_hblank-v1-1-5c100e4a8b05@intel.com>
Date: Tue, 24 Jun 2025 12:50:00 +0300
Message-ID: <6ab7f75032c91ba507603aed48f8f924e7bb172b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 24 Jun 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Use recommended static values as per wa_14021694213 for min_hblank to
> avoid underruns.

Subject prefix should be "drm/i915/dp".

> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 68 +++++----------------------------
>  1 file changed, 10 insertions(+), 58 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df7fd26c9d089e8f1bd096bfc8df95..feac034d1789c05994b210aabbb53d4b407cecf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3115,68 +3115,20 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  				const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode =
> -					&crtc_state->hw.adjusted_mode;
> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> -	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> -	/*
> -	 * min symbol cycles is 3(BS,VBID, BE) for 128b/132b and
> -	 * 5(BS, VBID, MVID, MAUD, BE) for 8b/10b
> -	 */
> -	int min_sym_cycles = intel_dp_is_uhbr(crtc_state) ? 3 : 5;
> -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
> -	int min_hblank;
> -	int max_lane_count = 4;
> -	int hactive_sym_cycles, htotal_sym_cycles;
> -	int dsc_slices = 0;
> -	int link_bpp_x16;
>  
>  	if (DISPLAY_VER(display) < 30)
>  		return 0;
>  
> -	/* MIN_HBLANK should be set only for 8b/10b MST or for 128b/132b SST/MST */

Has this changed?

> -	if (!is_mst && !intel_dp_is_uhbr(crtc_state))
> -		return 0;
> -
> -	if (crtc_state->dsc.compression_enable) {
> -		dsc_slices = intel_dp_dsc_get_slice_count(connector,
> -							  adjusted_mode->crtc_clock,
> -							  adjusted_mode->crtc_hdisplay,
> -							  num_joined_pipes);
> -		if (!dsc_slices) {
> -			drm_dbg(display->drm, "failed to calculate dsc slice count\n");
> -			return -EINVAL;
> -		}
> -	}
> -
> -	if (crtc_state->dsc.compression_enable)
> -		link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;
> -	else
> -		link_bpp_x16 = fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
> -								   crtc_state->pipe_bpp));
> -
> -	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
> -	hactive_sym_cycles = drm_dp_link_symbol_cycles(max_lane_count,
> -						       adjusted_mode->hdisplay,
> -						       dsc_slices,
> -						       link_bpp_x16,
> -						       symbol_size, is_mst);
> -	htotal_sym_cycles = adjusted_mode->htotal * hactive_sym_cycles /
> -			     adjusted_mode->hdisplay;
> -
> -	min_hblank = htotal_sym_cycles - hactive_sym_cycles;
> -	/* minimum Hblank calculation: https://groups.vesa.org/wg/DP/document/20494 */
> -	min_hblank = max(min_hblank, min_sym_cycles);
> -
> -	/*
> -	 * adjust the BlankingStart/BlankingEnd framing control from
> -	 * the calculated value
> -	 */
> -	min_hblank = min_hblank - 2;
> -
> -	min_hblank = min(10, min_hblank);
> -	crtc_state->min_hblank = min_hblank;
> +	/* min_hblank formula is undergoing a change and the recomendation is to use static value */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		if (crtc_state->dsc.compression_enable &&
> +		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +		    crtc_state->pipe_bpp == 18)
> +			crtc_state->min_hblank = 2;
> +		else
> +			crtc_state->min_hblank = 3;
> +	} else
> +		crtc_state->min_hblank = 10;

Per coding style, the else also needs braces. Checkpatch will tell you
this, please run it before posting.

This is not new stuff, and it's a waste of both your time and mine to
accummulate versions on this.
>  
>  	return 0;
>  }
>
> ---
> base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
> change-id: 20250624-min_hblank-8af8d2626ff8
>
> Best regards,

-- 
Jani Nikula, Intel
