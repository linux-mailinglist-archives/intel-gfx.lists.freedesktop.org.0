Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CBEBFCEB9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBB310E7F2;
	Wed, 22 Oct 2025 15:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSE/TnE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C5310E16A;
 Wed, 22 Oct 2025 15:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761147441; x=1792683441;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ATB/1dNealDgozTL2yfvJqxSSapbSoA7dGYmKw4qhv8=;
 b=OSE/TnE1HiHasy7/zH4xMpawTyMWBhLBUr00Mb/eaWYugQ2xAk8RT2Ly
 arcqAacHI3lqomP49Bx8wjyoC6qM/EklYM+Jt9M8+eh7jV/4bGlLdcRqD
 o9+fedH3pkGwJcjqV8wwNpbDFeEE/G3YjIGOGEplqh4E0RXsT5lDBs1NK
 vtp0Kv1Lrm04fenp6Cf1/NItxldFOqmyKs4FOSbDmRGgpvHL7x48hQXeM
 hOMIp7TpDuiec14llOuAN9R6eb+7/LdmoxiC0QWE70wruaG9um03twwrj
 dMlpD0RjM4sdKU8wxW6Dfv+UQl9vAuZcyAkTtdKBQi4WUbw9EbZ+Aim6u g==;
X-CSE-ConnectionGUID: XPvtqW4ERMulCrqXRjtitQ==
X-CSE-MsgGUID: qxeWPP5wT/yTH0pahWpyCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62329657"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="62329657"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:37:21 -0700
X-CSE-ConnectionGUID: y+ro+eP1TqWSLzR9JZK9vA==
X-CSE-MsgGUID: YYFI5/UgR+mB8PbKkv3xbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188187724"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:37:19 -0700
Date: Wed, 22 Oct 2025 18:37:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Message-ID: <aPj6LCMluIBg5J1W@intel.com>
References: <20251022122552.890090-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251022122552.890090-1-jouni.hogander@intel.com>
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

On Wed, Oct 22, 2025 at 03:25:52PM +0300, Jouni Högander wrote:
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
> Bspec: 71197
> 
> Fixes: 52ecd48b8d3f ("drm/i915/dp: Add helper to get min sdp guardband")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b0aeb6c2de86c..54b5e060be82a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7026,7 +7026,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  }
>  
>  static
> -int intel_dp_get_lines_for_sdp(u32 type)
> +int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 type)
>  {
>  	switch (type) {
>  	case DP_SDP_VSC_EXT_VESA:
> @@ -7036,6 +7036,8 @@ int intel_dp_get_lines_for_sdp(u32 type)
>  		return 8;
>  	case DP_SDP_PPS:
>  		return 7;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return crtc_state->vrr.vsync_start + 1;

Is the +1 actually needed? I get the impression the bspec page isn't
being very accurate with the '<' usage.

Hmm, there is an extra note in the EMP_AS_SDP_TL register:
"For DP/eDP, if there is a set context latency (SCL) window, then it
 cannot be the first line of SCL
 For DP/eDP, if there is no SCL window, then it cannot be the first line 
 of the Delayed V. Blank"
So I guess there might be a real reason for that extra line.

Though I'm pretty sure no one has even confirmed that we don't have any
off by one errors in EMP_AS_SDP_TL/etc. Should do that at some point...

>  	default:
>  		break;
>  	}
> @@ -7052,11 +7054,18 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
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
> +	if (assume_all_enabled ||

assume_all_enable && HAS_AS_SDP() ?

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
