Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 962BA463BC2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 17:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B47E89DFA;
	Tue, 30 Nov 2021 16:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F9589DFA
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 16:30:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="297056996"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="297056996"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 08:30:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="477171701"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 30 Nov 2021 08:30:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Nov 2021 18:30:06 +0200
Date: Tue, 30 Nov 2021 18:30:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Message-ID: <YaZRjqK1YChsD4tN@intel.com>
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
 <20211130160534.7983-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211130160534.7983-1-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: Yashashvi Shantam <shantam.yashashvi@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 30, 2021 at 09:35:34PM +0530, Vidya Srinivas wrote:
> PLANE_CUS_CTL has a restriction of 4096 width even though
> PLANE_SIZE and scaler size registers supports max 5120.
> Take care of this restriction in max_width.
> 
> Without this patch, when 5k content is sent on HDR plane
> with NV12 content, FIFO underrun is seen and screen blanks
> out.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> Change-Id: If629c478ba044c8bde633de9f0fc638aa6c44233
> ---
>  .../gpu/drm/i915/display/intel_display_types.h  |  3 ++-
>  .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++----
>  2 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ea1e8a6e10b0..0455ea340329 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1358,7 +1358,8 @@ struct intel_plane {
>  	int (*min_width)(const struct drm_framebuffer *fb,
>  			 int color_plane,
>  			 unsigned int rotation);
> -	int (*max_width)(const struct drm_framebuffer *fb,
> +	int (*max_width)(struct intel_plane *plane,
> +			 const struct drm_framebuffer *fb,
>  			 int color_plane,
>  			 unsigned int rotation);
>  	int (*max_height)(const struct drm_framebuffer *fb,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 28890876bdeb..a49829c5a863 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -313,7 +313,8 @@ static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
>  	return DIV_ROUND_UP(pixel_rate * num, den);
>  }
>  
> -static int skl_plane_max_width(const struct drm_framebuffer *fb,
> +static int skl_plane_max_width(struct intel_plane *plane,
> +				const struct drm_framebuffer *fb,
>  			       int color_plane,
>  			       unsigned int rotation)
>  {
> @@ -352,7 +353,8 @@ static int skl_plane_max_width(const struct drm_framebuffer *fb,
>  	}
>  }
>  
> -static int glk_plane_max_width(const struct drm_framebuffer *fb,
> +static int glk_plane_max_width(struct intel_plane *plane,
> +				const struct drm_framebuffer *fb,
>  			       int color_plane,
>  			       unsigned int rotation)
>  {
> @@ -420,10 +422,17 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
>  	}
>  }
>  
> -static int icl_plane_max_width(const struct drm_framebuffer *fb,
> +static int icl_plane_max_width(struct intel_plane *plane,
> +				const struct drm_framebuffer *fb,
>  			       int color_plane,
>  			       unsigned int rotation)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +
> +	if (icl_is_hdr_plane(dev_priv, plane->id) &&

We could just have separate functions for hdr and sdr planes instead.

> +	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		return 4096;
> +
>  	return 5120;
>  }
>  
> @@ -1377,7 +1386,7 @@ static int intel_plane_max_width(struct intel_plane *plane,
>  				 unsigned int rotation)
>  {
>  	if (plane->max_width)
> -		return plane->max_width(fb, color_plane, rotation);
> +		return plane->max_width(plane, fb, color_plane, rotation);
>  	else
>  		return INT_MAX;
>  }
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
