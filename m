Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD311424F9A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 10:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3137C6E836;
	Thu,  7 Oct 2021 08:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066DA6E836
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 08:58:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="289703618"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="289703618"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 01:58:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="488889694"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 01:58:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <20211007031318.3088987-3-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007031318.3088987-1-airlied@gmail.com>
 <20211007031318.3088987-3-airlied@gmail.com>
Date: Thu, 07 Oct 2021 11:58:18 +0300
Message-ID: <87v929yzx1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: move
 intel_plane_uses_fence to inline.
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

On Thu, 07 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> Make future refactoring simpler, but also this function is pretty
> trivial.

In general, I'm pretty much opposed to adding any new inline functions
without a clear performance rationale. I've been gradually moving such
inlines out of headers instead.

They make it harder to abstract stuff by requiring visibility to all the
guts they're accessing. I'm hoping to remove #include "i915_drv.h" from
this header too, reducing the header interdependencies and the
"everything needs everything" model.

BR,
Jani.

>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 10 ----------
>  drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
>  2 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d1fa17929b1f..b26e1989b8d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -851,16 +851,6 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
>  	return size;
>  }
>  
> -static bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -
> -	return DISPLAY_VER(dev_priv) < 4 ||
> -		(plane->has_fbc &&
> -		 plane_state->view.gtt.type == I915_GGTT_VIEW_NORMAL);
> -}
> -
>  static struct i915_vma *
>  intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  		     const struct i915_ggtt_view *view,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a811e13720bf..eebb46d0b0b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2030,6 +2030,16 @@ static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_
>  	return i915_ggtt_offset(plane_state->ggtt_vma);
>  }
>  
> +static inline bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +
> +	return DISPLAY_VER(dev_priv) < 4 ||
> +		(plane->has_fbc &&
> +		 plane_state->view.gtt.type == I915_GGTT_VIEW_NORMAL);
> +}
> +
>  static inline struct intel_frontbuffer *
>  to_intel_frontbuffer(struct drm_framebuffer *fb)
>  {

-- 
Jani Nikula, Intel Open Source Graphics Center
