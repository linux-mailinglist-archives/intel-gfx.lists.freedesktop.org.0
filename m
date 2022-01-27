Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B109B49DC6B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC67F10E54F;
	Thu, 27 Jan 2022 08:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250E810E49B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643271661; x=1674807661;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D7iSzv2WCrXiD2GO4BnohfHNGEsENno2xLeXRGANnWI=;
 b=mmenmMiT+sDyVwZcKoVWvFIWoDhxoxUTMTe3v6bfDL1XB/qYc+hAuFun
 xeD/XOzR/PzAt5koHJqOWpjoh3/jGaT7zuqn6s5sN7SfL04GTbwZw+a+I
 vcWKoBTBfYoklHWfmiRv3NYB7tvh8kgT/7N0wzomWLdxsfmrSQzcINzy2
 t7XFEOUKkEhUYnHiwgAHRaFMbVg3xPvzrsGR0a/s4G2CWAqjuLLUMewDv
 YYBhj0sk7h2yokIxngeHxCXlJyhmwKutVtrjhkixKzfSZJ86gewnEFXQb
 P8koqjVuVyxcpclhYWMBC62502+IZKIAazfLxqrYuBkvYEY6TxY85jT+Y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333139833"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="333139833"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:21:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="477779199"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:20:58 -0800
Date: Thu, 27 Jan 2022 10:21:06 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220127082106.GC31846@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915: Fix plane
 relative_data_rate calculation
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

On Tue, Jan 18, 2022 at 11:23:42AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We are currently computing the relative data rates as
> src_size * scale_factor where scale_factor is src_size / dst_size.
> Thus relative data rate is src_size * src_size / dst_size,
> which is just utter nonsense. What we really seem to want is
> just a reasonable estimate on how much data will be fetched
> which is just src_size. So let's do that instead.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Omg, how could it stay like this all the time?

I actually had similar question, but thought that there just might
be again some magical/empirical heuristics behind this.
Need to challenge more anything, which can't be explained with
BSpec formulas or by common sense...

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 63 ++-------------------------------
>  1 file changed, 2 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 9a9d4acb2988..e8fb56f288b4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4373,55 +4373,6 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
>  
> -/*
> - * Determines the downscale amount of a plane for the purposes of watermark calculations.
> - * The bspec defines downscale amount as:
> - *
> - * """
> - * Horizontal down scale amount = maximum[1, Horizontal source size /
> - *                                           Horizontal destination size]
> - * Vertical down scale amount = maximum[1, Vertical source size /
> - *                                         Vertical destination size]
> - * Total down scale amount = Horizontal down scale amount *
> - *                           Vertical down scale amount
> - * """
> - *
> - * Return value is provided in 16.16 fixed point form to retain fractional part.
> - * Caller should take care of dividing & rounding off the value.
> - */
> -static uint_fixed_16_16_t
> -skl_plane_downscale_amount(const struct intel_crtc_state *crtc_state,
> -			   const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> -	u32 src_w, src_h, dst_w, dst_h;
> -	uint_fixed_16_16_t fp_w_ratio, fp_h_ratio;
> -	uint_fixed_16_16_t downscale_h, downscale_w;
> -
> -	if (drm_WARN_ON(&dev_priv->drm,
> -			!intel_wm_plane_visible(crtc_state, plane_state)))
> -		return u32_to_fixed16(0);
> -
> -	/*
> -	 * Src coordinates are already rotated by 270 degrees for
> -	 * the 90/270 degree plane rotation cases (to match the
> -	 * GTT mapping), hence no need to account for rotation here.
> -	 *
> -	 * n.b., src is 16.16 fixed point, dst is whole integer.
> -	 */
> -	src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> -	src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> -	dst_w = drm_rect_width(&plane_state->uapi.dst);
> -	dst_h = drm_rect_height(&plane_state->uapi.dst);
> -
> -	fp_w_ratio = div_fixed16(src_w, dst_w);
> -	fp_h_ratio = div_fixed16(src_h, dst_h);
> -	downscale_w = max_fixed16(fp_w_ratio, u32_to_fixed16(1));
> -	downscale_h = max_fixed16(fp_h_ratio, u32_to_fixed16(1));
> -
> -	return mul_fixed16(downscale_w, downscale_h);
> -}
> -
>  struct dbuf_slice_conf_entry {
>  	u8 active_pipes;
>  	u8 dbuf_mask[I915_MAX_PIPES];
> @@ -4932,10 +4883,7 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  {
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> -	u32 data_rate;
> -	u32 width = 0, height = 0;
> -	uint_fixed_16_16_t down_scale_amount;
> -	u64 rate;
> +	int width, height;
>  
>  	if (!plane_state->uapi.visible)
>  		return 0;
> @@ -4961,14 +4909,7 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  		height /= 2;
>  	}
>  
> -	data_rate = width * height;
> -
> -	down_scale_amount = skl_plane_downscale_amount(crtc_state, plane_state);
> -
> -	rate = mul_round_up_u32_fixed16(data_rate, down_scale_amount);
> -
> -	rate *= fb->format->cpp[color_plane];
> -	return rate;
> +	return width * height * fb->format->cpp[color_plane];
>  }
>  
>  static u64
> -- 
> 2.32.0
> 
