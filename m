Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737ACBFF757
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8ACB10E1D7;
	Thu, 23 Oct 2025 07:07:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7dfSYnz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFDB10E1D7;
 Thu, 23 Oct 2025 07:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761203277; x=1792739277;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=65agkTNYyCGcvFip+NYS/5thQVTXHgZXVBj5R4NxNs8=;
 b=A7dfSYnzhDGlbkxDSPG56aOZvnrxhaA8pCKHSAph+ie55h8Uidckhdgn
 HwmHeXQtbeoGi/5PoESRL3PYor8kqI9l+JD0SS57xiHv/821Vbl4ZiytA
 b1Q4zKhLBNK9b36jYBdYvkoaN/f1aVwLtH63hSONDXYgQ6v/EYkV/3wID
 O5G75Zb5sgczGphUDI9JzK4p/8S09FMPv0TAVC2UEpBBb90qolmO89J87
 0ELq9wb5cdrZBPDPct6Iq3K1mLDsTYskriLNKGyLqNlEz5RzVtHPU3Ymk
 Ae+kRPcUXDYnmvfpNj0IkIPNA1S3dgmN9cepIH2Y37B/DHDImAHqzXbxH A==;
X-CSE-ConnectionGUID: qQpmQf9CQNi7X+c65pAeOg==
X-CSE-MsgGUID: VVw2ZZ9yQ8qOdQc4Ut+/CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63511297"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63511297"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:07:57 -0700
X-CSE-ConnectionGUID: hD9m4q5nSjmOPQkqM9w7BA==
X-CSE-MsgGUID: GgH88EAQQDy00Og+LnIopg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="189210640"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.153])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:07:54 -0700
Date: Thu, 23 Oct 2025 10:07:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Message-ID: <aPnUSIJ8d7WT1rkA@intel.com>
References: <20251023043140.961104-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251023043140.961104-1-jouni.hogander@intel.com>
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

On Thu, Oct 23, 2025 at 07:31:40AM +0300, Jouni Högander wrote:
> We started seeing "[drm] *ERROR* Timed out waiting PSR idle state" after
> taking optimized guardband into use. These are seen because VSC SDPs are
> sent on same line as AS SDPs when AS SDP is enabled. AS SDP is sent on line
> configured in EMP_AS_SDP_TL register. We are configuring
> crtc_state->vrr.vsync_start into that register.
> 
> Fix this by ensuring AS SDP is sent on line which is within
> guardband. From the bspec:
> 
> EMP_AS_SDP_TL < SCL + Guardband
> 
> v2: check HAS_AS_SDP
> 
> Bspec: 71197
> Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 475518b4048b7..a3391b17571cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7023,7 +7023,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  }
>  
>  static
> -int intel_dp_get_lines_for_sdp(u32 type)
> +int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
>  {
>  	switch (type) {
>  	case DP_SDP_VSC_EXT_VESA:
> @@ -7033,6 +7033,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
>  		return 8;
>  	case DP_SDP_PPS:
>  		return 7;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return crtc_state->vrr.vsync_start + 1;
>  	default:
>  		break;
>  	}
> @@ -7043,17 +7045,25 @@ int intel_dp_get_lines_for_sdp(u32 type)
>  int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  			       bool assume_all_enabled)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	int sdp_guardband = 0;
>  
>  	if (assume_all_enabled ||
>  	    crtc_state->infoframes.enable &
>  	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
>  		sdp_guardband = max(sdp_guardband,
> -				    intel_dp_get_lines_for_sdp(HDMI_PACKET_TYPE_GAMUT_METADATA));
> +				    intel_dp_get_lines_for_sdp(crtc_state,
> +							       HDMI_PACKET_TYPE_GAMUT_METADATA));
>  
>  	if (assume_all_enabled ||
>  	    crtc_state->dsc.compression_enable)
> -		sdp_guardband = max(sdp_guardband, intel_dp_get_lines_for_sdp(DP_SDP_PPS));
> +		sdp_guardband = max(sdp_guardband,
> +				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
> +
> +	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
> +	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
> +		sdp_guardband = max(sdp_guardband,
> +				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
>  
>  	return sdp_guardband;
>  }
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
