Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E972D617A0F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 10:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B713810E5C1;
	Thu,  3 Nov 2022 09:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323B310E5C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 09:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667468249; x=1699004249;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=+Wrfr24dx6eIG2hGMJlkbcWNocSfkWNiGVWAhvGDyy4=;
 b=UBDETnBKcwqLoCBzC0/+k10PKU5eLz7SNVcvqBnVgztDokXU/kshIBth
 AcGGvZx8EgyjboY4lbm620DcaDyVkdPbyog6PkcPlABrUwtvx3MSP2zr5
 50aSNZOlTA3uBsUzngynIwhFhu1tGvQxfRHlljZ0ZCzcsE+gPp8/Cx3qR
 Sn5mdV9h2pIBgHV5gcMNN2O6F/RldZpO++OHA9eLHrFazpyosN/giMTtP
 8PRf9jEwiGr4ltvOi9f8jAcKgEDGgvtvaSJYQUYpvuu0C56A2cEY0Q1hS
 wQDFdURSvs0wRqo8ucQyoY9zoDDEibfzOTKG1wDo+t9xFtqVojfVxWa3F Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289349024"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="289349024"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 02:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="629281367"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="629281367"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Nov 2022 02:37:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Nov 2022 11:37:25 +0200
Date: Thu, 3 Nov 2022 11:37:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y2OL1V4yc0Mitids@intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221026113906.10551-7-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Deconfuse the ilk+ 12.4 LUT
 entry functions
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

On Wed, Oct 26, 2022 at 02:39:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> s/icl_lut_multi_seg_pack/ilk_lut_12p4_pack/ since that's what it is
> and group the corresponding "unpack" functions next to it.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 38 +++++++++++-----------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 3b78b882e0c0..e881c95ee451 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -482,14 +482,28 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
>  	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MASK, val), 10);
>  }
>  
> -static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
> +/* ilk+ "12.4" interpolated format (high 10 bits) */
> +static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> +{
> +	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
> +		(color->blue >> 6);
> +}
> +
> +/* ilk+ "12.4" interpolated format (low 6 bits) */
> +static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
> +{
> +	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
> +		(color->blue & 0x3f) << 4;
> +}
> +
> +static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
>  {
>  	entry->red = REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6 |
> -				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
>  	entry->green = REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) << 6 |
> -				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
>  	entry->blue = REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) << 6 |
> -				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);

I just realized I had a patch somewhere to fix up the bit names as well.
But I can send that out in the next batch, assuming I can still find
it...

>  }
>  
>  static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
> @@ -917,20 +931,6 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> -/* ilk+ "12.4" interpolated format (high 10 bits) */
> -static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> -{
> -	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
> -		(color->blue >> 6);
> -}
> -
> -/* ilk+ "12.4" interpolated format (low 6 bits) */
> -static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
> -{
> -	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
> -		(color->blue & 0x3f) << 4;
> -}
> -
>  static void
>  ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
>  		 const struct drm_color_lut *color)
> @@ -2151,7 +2151,7 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>  		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
>  		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
>  
> -		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
> +		ilk_lut_12p4_pack(&lut[i], ldw, udw);
>  	}
>  
>  	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
> -- 
> 2.37.4

-- 
Ville Syrjälä
Intel
