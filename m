Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E30CA8B7FB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 13:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB47A10E060;
	Wed, 16 Apr 2025 11:59:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClNbDez3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D2E10E060
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 11:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744804744; x=1776340744;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L8h0mzi4PCqx6IEdqfxWePuLEDFUflBLm5G1N/MqSlc=;
 b=ClNbDez3QR8Z3CiHwKJrjaavnZ+htFq1Q+IR47StcBpI2q3CANuiQ6f7
 ceQx5P6BkKkar2FgenKTdXwPH72FQphoCQqo0ppfGWk5p4d+y8itFmDI1
 xrIuuR0flxoWdAJn/PNeF0kfv6+fSKaAh1X3N5X7i5e0koxT9//TSSEwA
 ETP3tsuqsNGSDtm8gWebXWRqoWQQCV11PpERoEedFo9AiRdW9NERGu9G3
 D0Ha5cCrQ+WhgVuyNUJKdqavoFZJgW5/Tmxst8MGCJ0vNM4x3azhVRYc8
 HQeN9De9+h31RKwqADqrFpbXSzjh/E/8w1LGBxKYRQmY6aAm8VudjEB/1 Q==;
X-CSE-ConnectionGUID: QKImb0uZTvuCNN3Url/sXA==
X-CSE-MsgGUID: 7g/fXNXTTqGVNjkkqKZeyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="50156294"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="50156294"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 04:58:09 -0700
X-CSE-ConnectionGUID: u9mDR2WzSDStdbliG9preQ==
X-CSE-MsgGUID: 0EMJRaAdQgehk7HOc2Xztg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="135621173"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 16 Apr 2025 04:58:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Apr 2025 14:58:00 +0300
Date: Wed, 16 Apr 2025 14:58:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gustavo.sousa@intel.com
Subject: Re: [PATCH] drm/i915/display: Avoid touching interlace mode registers
Message-ID: <Z_-bSKFiPyc8cDq3@intel.com>
References: <20250416045307.814825-1-shekhar.chauhan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250416045307.814825-1-shekhar.chauhan@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Apr 16, 2025 at 10:23:07AM +0530, Shekhar Chauhan wrote:
> Commit f71c9b7bc35f("drm/i915/display: Prune Interlace modes for Display >=12")
> defeatures interlace modes starting with display version 12. However,
> there are some paths in the driver that still touch interlace-related
> registers/fields for display version >= 12. So, avoid touching those
> registers/fields.

The registers are still there.

> 
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3afb85fe8536..73b1fdf0b0ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2686,7 +2686,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		crtc_vblank_start = 1;
>  	}
>  
> -	if (DISPLAY_VER(display) >= 4)
> +	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 12)
>  		intel_de_write(display,
>  			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
>  			       vsyncshift);
> @@ -2790,7 +2790,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (DISPLAY_VER(display) == 2)
> +	if (DISPLAY_VER(display) == 2 || DISPLAY_VER(display) >= 12)
>  		return false;
>  
>  	if (DISPLAY_VER(display) >= 9 ||
> @@ -3164,10 +3164,12 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
>  	if (display->platform.haswell && crtc_state->dither)
>  		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
>  
> -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
> -	else
> -		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
> +	if (DISPLAY_VER(display) < 12) {
> +		if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +			val |= TRANSCONF_INTERLACE_IF_ID_ILK;
> +		else
> +			val |= TRANSCONF_INTERLACE_PF_PD_ILK;
> +	}
>  
>  	if (display->platform.haswell &&
>  	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
