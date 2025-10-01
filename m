Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865B6BB0EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 17:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A55810E725;
	Wed,  1 Oct 2025 15:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SSVQr2MD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5529A10E724;
 Wed,  1 Oct 2025 15:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759331104; x=1790867104;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LUM+wCBnUwlh2HzZ7yUIo03w38bm3QqyA8PZWO8EAd4=;
 b=SSVQr2MDtopisuR1RcksuMiaGWKjqsevuA/+yultcGqacV76nlUw7mv2
 RhGjySdC7WWQST3a0cozg4q+S0SNO+erQFPF+1eSWWl65W+qbiUcp572O
 9awr0bjubEvsUp8FsbRtJjUgpaiCUQ6iYOzLRppyVRQujBdQWFsNAY5Bq
 JD0Ls8+cg+BNdtgEwCAfwp/K5iNzw8kParOnU3ThWrVXcETXf3KvBSrOH
 BVxpF9Tshana0cCajJNfPuUYGGBLbDb8Xz/fYTdbTb4oNNmlyl0FABrJ/
 fXM4PKtJdcKs8A3OY/GJlx4A1CmlaCThQwQsCJ32jyigTqdwJ/v1gyFIq A==;
X-CSE-ConnectionGUID: 4bP5lA1zROa5+ED0DhN5+Q==
X-CSE-MsgGUID: tYX2JnwUQ3Kkjliti7coXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61771339"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61771339"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 08:05:03 -0700
X-CSE-ConnectionGUID: m7IO2QLBQg+ZGZVcXxcnFQ==
X-CSE-MsgGUID: diufDLE7TbqMgon9V7gf8g==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 08:05:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jocelyn Falempe <jfalempe@redhat.com>, Maarten Lankhorst
 <dev@lankhorst.se>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 6/8] drm/{i915,xe}/panic: move framebuffer allocation
 where it belongs
In-Reply-To: <d29f63e0118d002fc8edd368caea7e8185418e17.1756835342.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756835342.git.jani.nikula@intel.com>
 <d29f63e0118d002fc8edd368caea7e8185418e17.1756835342.git.jani.nikula@intel.com>
Date: Wed, 01 Oct 2025 18:04:58 +0300
Message-ID: <2224b0cc8934e4e7c89ed1fb80648c637669f188@intel.com>
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

On Tue, 02 Sep 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> The struct intel_framebuffer allocation naturally belongs in intel_fb.c,
> not hidden inside panic implementation. Separate the panic
> allocation. Drop the unnecessary struct i915_framebuffer and struct
> xe_framebuffer types.
>
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c    | 17 ++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_panic.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_panic.h |  3 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  5 +++--
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 17 ++++-------------
>  drivers/gpu/drm/xe/display/xe_panic.c      | 17 ++++-------------
>  6 files changed, 31 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 2a2ed0f0461f..22a4a1575d22 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2346,7 +2346,22 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  
>  struct intel_framebuffer *intel_framebuffer_alloc(void)
>  {
> -	return intel_bo_alloc_framebuffer();
> +	struct intel_framebuffer *intel_fb;
> +	struct intel_panic *panic;
> +
> +	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
> +	if (!intel_fb)
> +		return NULL;
> +
> +	panic = intel_panic_alloc();
> +	if (!panic) {
> +		kfree(intel_fb);
> +		return NULL;
> +	}
> +
> +	intel_fb->panic = panic;

So I screwed up here. There's no deallocation of fb->panic, and this
leaks. I don't know what I was thinking.

To make matters worse, struct intel_framebuffer is deallocated via
drm_framebuffer_put() i.e. there's no obvious place to plug the free in.

Any ideas before I start looking at reverting the changes, and get back
to the drawing board with abstracting the code between i915 and xe?

BR,
Jani.

> +
> +	return intel_fb;
>  }
>  
>  struct drm_framebuffer *
> diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/display/intel_panic.c
> index 20eecb0f168f..5431bd4d3a7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_panic.c
> +++ b/drivers/gpu/drm/i915/display/intel_panic.c
> @@ -4,9 +4,9 @@
>  #include "gem/i915_gem_object.h"
>  #include "intel_panic.h"
>  
> -struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
> +struct intel_panic *intel_panic_alloc(void)
>  {
> -	return i915_gem_object_alloc_framebuffer();
> +	return i915_gem_object_alloc_panic();
>  }
>  
>  int intel_panic_setup(struct drm_scanout_buffer *sb)
> diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
> index 67ce253fcdf5..45ce6104e6fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_panic.h
> +++ b/drivers/gpu/drm/i915/display/intel_panic.h
> @@ -6,8 +6,9 @@
>  
>  struct drm_scanout_buffer;
>  struct intel_framebuffer;
> +struct intel_panic;
>  
> -struct intel_framebuffer *intel_bo_alloc_framebuffer(void);
> +struct intel_panic *intel_panic_alloc(void);
>  int intel_panic_setup(struct drm_scanout_buffer *sb);
>  void intel_panic_finish(struct intel_framebuffer *fb);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 565f8fa330db..9b3f25cb48db 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -16,9 +16,10 @@
>  #include "i915_gem_ww.h"
>  #include "i915_vma_types.h"
>  
> -struct drm_scanout_buffer;
>  enum intel_region_id;
> +struct drm_scanout_buffer;
>  struct intel_framebuffer;
> +struct intel_panic;
>  
>  #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
>  
> @@ -693,7 +694,7 @@ i915_gem_object_unpin_pages(struct drm_i915_gem_object *obj)
>  int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj);
>  int i915_gem_object_truncate(struct drm_i915_gem_object *obj);
>  
> -struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void);
> +struct intel_panic *i915_gem_object_alloc_panic(void);
>  int i915_gem_object_panic_setup(struct drm_scanout_buffer *sb);
>  void i915_gem_object_panic_finish(struct intel_framebuffer *fb);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index e36d60b785b1..b219474aecc7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -363,11 +363,6 @@ struct intel_panic {
>  	void *vaddr;
>  };
>  
> -struct i915_framebuffer {
> -	struct intel_framebuffer base;
> -	struct intel_panic panic;
> -};
> -
>  static void i915_panic_kunmap(struct intel_panic *panic)
>  {
>  	if (panic->vaddr) {
> @@ -436,17 +431,13 @@ static void i915_gem_object_panic_page_set_pixel(struct drm_scanout_buffer *sb,
>  	}
>  }
>  
> -struct intel_framebuffer *i915_gem_object_alloc_framebuffer(void)
> +struct intel_panic *i915_gem_object_alloc_panic(void)
>  {
> -	struct i915_framebuffer *i915_fb;
> -
> -	i915_fb = kzalloc(sizeof(*i915_fb), GFP_KERNEL);
> -	if (!i915_fb)
> -		return NULL;
> +	struct intel_panic *panic;
>  
> -	i915_fb->base.panic = &i915_fb->panic;
> +	panic = kzalloc(sizeof(*panic), GFP_KERNEL);
>  
> -	return &i915_fb->base;
> +	return panic;
>  }
>  
>  /*
> diff --git a/drivers/gpu/drm/xe/display/xe_panic.c b/drivers/gpu/drm/xe/display/xe_panic.c
> index 3ef23a6795b3..b5a7615708a1 100644
> --- a/drivers/gpu/drm/xe/display/xe_panic.c
> +++ b/drivers/gpu/drm/xe/display/xe_panic.c
> @@ -15,11 +15,6 @@ struct intel_panic {
>  	void *vaddr;
>  };
>  
> -struct xe_framebuffer {
> -	struct intel_framebuffer base;
> -	struct intel_panic panic;
> -};
> -
>  static void xe_panic_kunmap(struct intel_panic *panic)
>  {
>  	if (panic->vaddr) {
> @@ -62,17 +57,13 @@ static void xe_panic_page_set_pixel(struct drm_scanout_buffer *sb, unsigned int
>  	}
>  }
>  
> -struct intel_framebuffer *intel_bo_alloc_framebuffer(void)
> +struct intel_panic *intel_panic_alloc(void)
>  {
> -	struct xe_framebuffer *xe_fb;
> -
> -	xe_fb = kzalloc(sizeof(*xe_fb), GFP_KERNEL);
> -	if (!xe_fb)
> -		return NULL;
> +	struct intel_panic *panic;
>  
> -	xe_fb->base.panic = &xe_fb->panic;
> +	panic = kzalloc(sizeof(*panic), GFP_KERNEL);
>  
> -	return &xe_fb->base;
> +	return panic;
>  }
>  
>  int intel_panic_setup(struct drm_scanout_buffer *sb)

-- 
Jani Nikula, Intel
