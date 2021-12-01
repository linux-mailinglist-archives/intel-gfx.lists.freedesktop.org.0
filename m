Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6A0465117
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5C26E4AD;
	Wed,  1 Dec 2021 15:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DA16E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223353358"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223353358"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:13:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="460063100"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 01 Dec 2021 07:13:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:13:10 +0200
Date: Wed, 1 Dec 2021 17:13:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeRBnL8SBMni2On@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <4aa89f113ce6d840d62f50c989e2a1415483557c.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4aa89f113ce6d840d62f50c989e2a1415483557c.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 06/10] drm/i915/fb: move
 intel_fb_uses_dpt to intel_fb.c and un-inline
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

On Wed, Dec 01, 2021 at 03:57:08PM +0200, Jani Nikula wrote:
> Move fb functions where they belong, and un-inline to avoid looking into
> struct drm_i915_private guts in header files.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 10 ----------
>  drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h            |  2 ++
>  3 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index eeaaa101a7b6..5f077e8cea33 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1990,16 +1990,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
>  	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
>  }
>  
> -static inline bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
> -{
> -	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
> -}
> -
> -static inline bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
> -{
> -	return fb && intel_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
> -}
> -
>  static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
>  {
>  	return i915_ggtt_offset(plane_state->ggtt_vma);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index c4a743d0913f..99769132c35b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -658,6 +658,16 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  	}
>  }
>  
> +static bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
> +{
> +	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
> +}
> +
> +bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
> +{
> +	return fb && intel_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
> +}
> +
>  unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
>  {
>  	if (IS_I830(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index b54997175d6d..ba9df8986c1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -90,4 +90,6 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  			      struct drm_file *filp,
>  			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
>  
> +bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
> +
>  #endif /* __INTEL_FB_H__ */
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
