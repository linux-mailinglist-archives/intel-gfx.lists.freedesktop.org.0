Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1991B534F5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 16:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B50E10EB3F;
	Thu, 11 Sep 2025 14:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcYSW7RG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D7010EB3F;
 Thu, 11 Sep 2025 14:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757600082; x=1789136082;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cffi0eAD0NDcxEBgilziGHsSvGz6b2ygweJdUmfG++I=;
 b=OcYSW7RGoJeRVQicXyeIEQe6j2NdWAI1YdSKZFkp0ZQn2yazqdFbBgfK
 mtHCMHDt6s2c2h97NlrC9yFkIfM3gB7A0wSS2ef+pE6oZzkShDi//RJ+r
 ONs1/Spu3Mqv1oaERtDVSXpP29B64sOwMQCozfesc1Wq+QylF1oZqftIx
 IIcA52Vw50DGDKW0CecK+NEXElhrjtXLKvRmM0ClRw1vtfgXPOHFW0guk
 1EgXVrLYeyvW9Va9sPPHOoHJauXneJI9H5NqDdi6b8fknWjTvjGXgpnGZ
 0CRgpX+01P5A734P+ecvXYq/xaAFkvNuetbhhJb3ocMdBggmEXlnWgSjQ Q==;
X-CSE-ConnectionGUID: ys+FDi4vSHCyyc8mw8wcWg==
X-CSE-MsgGUID: TazSYgZ8QyysQb2xn5Jeag==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85374979"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="85374979"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:14:41 -0700
X-CSE-ConnectionGUID: ufs2NdLGQSaL3TbsOmeRZA==
X-CSE-MsgGUID: R8+KQ5qcQwyDVzpyPr5eHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="178017058"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.244.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 07:14:39 -0700
Date: Thu, 11 Sep 2025 17:14:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 06/15] drm/i915/dp: Add SDP latency computation helper
Message-ID: <aMLZTPfiC3__iUbY@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250911024554.692469-7-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 11, 2025 at 08:15:45AM +0530, Ankit Nautiyal wrote:
> Add a helper to compute vblank time needed for transmitting specific
> DisplayPort SDPs like PPS, GAMUT_METADATA, and VSC_EXT. Latency is
> based on line count per packet type and current line time.
> 
> Used to ensure adequate vblank when features like DSC/HDR are enabled.
> 
> Bspec: 70151
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
>  2 files changed, 49 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2eab591a8ef5..83c46e4680b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6857,3 +6857,50 @@ void intel_dp_mst_resume(struct intel_display *display)
>  		}
>  	}
>  }
> +
> +static
> +int intel_dp_get_sdp_latency(u32 type, int linetime_us)

The "get" in the name is redundant.

> +{
> +	int lines;
> +
> +	switch (type) {
> +	case DP_SDP_VSC_EXT_VESA:
> +	case DP_SDP_VSC_EXT_CEA:
> +		lines = 10;
> +		break;
> +	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> +		lines = 8;
> +		break;
> +	case DP_SDP_PPS:
> +		lines = 6;
> +		break;
> +	default:
> +		lines = 0;
> +		break;
> +	}

We should probably calculate these properly instead of
just hardcoding annoying magic numbers. But I suppose
these are supposed to be some kind of semi worst case
numbers so perhaps OK for now.

> +
> +	return lines * linetime_us;
> +}
> +
> +int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
> +				 bool assume_all_enabled)
> +{
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int sdp_latency = 0;
> +	int linetime_us;
> +
> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +	if (assume_all_enabled ||
> +	    crtc_state->infoframes.enable &
> +	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
> +		sdp_latency = max(sdp_latency,
> +				  intel_dp_get_sdp_latency(HDMI_PACKET_TYPE_GAMUT_METADATA,
> +							   linetime_us));
> +
> +	if (assume_all_enabled || crtc_state->dsc.compression_enable)
> +		sdp_latency = max(sdp_latency,
> +				  intel_dp_get_sdp_latency(DP_SDP_PPS, linetime_us));
> +
> +	return sdp_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index f90cfd1dbbd0..d222749b191c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -215,5 +215,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>  void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
>  bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
> +int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
> +				 bool assume_all_enabled);
>  
>  #endif /* __INTEL_DP_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
