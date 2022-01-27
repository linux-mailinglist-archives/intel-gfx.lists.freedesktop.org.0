Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB9C49DC6A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F009B10E319;
	Thu, 27 Jan 2022 08:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F177D10E319
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643271618; x=1674807618;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=ZyCoyFEjBdsaJz7fwopBBDUbLKiur6hE4bASyr4QBks=;
 b=KZwaEW4MNy2ZBh+GgSSgAgL+Uqzcz3/locw1+novXHtBWX8SgDOQtnNH
 GByU4z2ee2tTvLwWtnmZl+x49zEd0VJv6URFg4DtCvuQ+6J/jpDOodMU5
 L0j36N1am5afpX/wlRoQejaaTyF+mP8C1u0C8m+To34h3MghMb3OwxnyB
 JHPtr8xVyI6uEF+9BKmADGIIll9BKLbLFL+B7vwyd8VDaQdd4YD2wBJbq
 IpE1JBi339U8tTo1pcjVT16CNzkyhYm27lYWGFqxtLX+Fv0oiljdFtR/2
 3FgfwQh7RvvcndpYLrNOQpImF94r40dno6AObvNeVPLpmzm3kFzC4iECj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244384236"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="244384236"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:20:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="628604495"
Received: from grossi-mobl.ger.corp.intel.com (HELO [10.252.33.31])
 ([10.252.33.31])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:20:16 -0800
Message-ID: <4a4cedc4-7ebb-5075-3bd6-3a3b05b9ac6d@linux.intel.com>
Date: Thu, 27 Jan 2022 09:20:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220126130931.21882-1-jouni.hogander@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220126130931.21882-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Remove all frontbuffer
 tracking calls from the gem code
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 26-01-2022 om 14:09 schreef Jouni Högander:
> We should now rely on userspace doing dirtyfb. There is no
> need to have separate frontbuffer tracking hooks in gem code.
>
> This patch is removing all frontbuffer tracking calls from the gem
> code.
>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c |  2 --
>  drivers/gpu/drm/i915/gem/i915_gem_clflush.c  |  2 --
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c   |  5 ----
>  drivers/gpu/drm/i915/gem/i915_gem_object.c   | 24 --------------------
>  drivers/gpu/drm/i915/gem/i915_gem_object.h   | 16 -------------
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  7 ------
>  drivers/gpu/drm/i915/i915_gem.c              |  5 ----
>  7 files changed, 61 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 5358f03b52db..fc2691dac278 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -809,8 +809,6 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  		goto out_pin_section;
>  	}
>  
> -	i915_gem_object_flush_frontbuffer(new_bo, ORIGIN_DIRTYFB);
> -
>  	if (!overlay->active) {
>  		const struct intel_crtc_state *crtc_state =
>  			overlay->crtc->config;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> index 8a248003dfae..115e6d877e38 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> @@ -20,8 +20,6 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
>  {
>  	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
>  	drm_clflush_sg(obj->mm.pages);
> -
> -	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
>  }
>  
>  static void clflush_work(struct dma_fence_work *base)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 26532c07d467..ab1fc2d930e1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -63,7 +63,6 @@ flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
>  		}
>  		spin_unlock(&obj->vma.lock);
>  
> -		i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
>  		break;
>  
>  	case I915_GEM_DOMAIN_WC:
> @@ -615,9 +614,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
>  out_unlock:
>  	i915_gem_object_unlock(obj);
>  
> -	if (!err && write_domain)
> -		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
> -
>  out:
>  	i915_gem_object_put(obj);
>  	return err;
> @@ -728,7 +724,6 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
>  	}
>  
>  out:
> -	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
>  	obj->mm.dirty = true;
>  	/* return with the pages pinned */
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 1a9e1f940a7d..f7ba66deb923 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -394,30 +394,6 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
>  		queue_delayed_work(i915->wq, &i915->mm.free_work, 0);
>  }
>  
> -void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
> -					 enum fb_op_origin origin)
> -{
> -	struct intel_frontbuffer *front;
> -
> -	front = __intel_frontbuffer_get(obj);
> -	if (front) {
> -		intel_frontbuffer_flush(front, origin);
> -		intel_frontbuffer_put(front);
> -	}
> -}
> -
> -void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
> -					      enum fb_op_origin origin)
> -{
> -	struct intel_frontbuffer *front;
> -
> -	front = __intel_frontbuffer_get(obj);
> -	if (front) {
> -		intel_frontbuffer_invalidate(front, origin);
> -		intel_frontbuffer_put(front);
> -	}
> -}
> -
>  static void
>  i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
>  {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 02c37fe4a535..d7a08172b239 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -578,22 +578,6 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>  void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>  					      enum fb_op_origin origin);
>  
> -static inline void
> -i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
> -				  enum fb_op_origin origin)
> -{
> -	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
> -		__i915_gem_object_flush_frontbuffer(obj, origin);
> -}
> -
> -static inline void
> -i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
> -				       enum fb_op_origin origin)
> -{
> -	if (unlikely(rcu_access_pointer(obj->frontbuffer)))
> -		__i915_gem_object_invalidate_frontbuffer(obj, origin);
> -}
> -
>  int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);
>  
>  bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index ca6faffcc496..e98a9884cf5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -151,19 +151,12 @@ int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
>  	if (err)
>  		return err;
>  
> -	/*
> -	 * We manually control the domain here and pretend that it
> -	 * remains coherent i.e. in the GTT domain, like shmem_pwrite.
> -	 */
> -	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
> -
>  	if (copy_from_user(vaddr, user_data, args->size))
>  		return -EFAULT;
>  
>  	drm_clflush_virt_range(vaddr, args->size);
>  	intel_gt_chipset_flush(to_gt(i915));
>  
> -	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index e3a2c2a0e156..60838209f9cd 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -563,8 +563,6 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
>  		goto out_rpm;
>  	}
>  
> -	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
> -
>  	user_data = u64_to_user_ptr(args->data_ptr);
>  	offset = args->offset;
>  	remain = args->size;
> @@ -607,7 +605,6 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
>  	}
>  
>  	intel_gt_flush_ggtt_writes(ggtt->vm.gt);
> -	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
>  
>  	i915_gem_gtt_cleanup(obj, &node, vma);
>  out_rpm:
> @@ -694,8 +691,6 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
>  		offset = 0;
>  	}
>  
> -	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
> -
>  	i915_gem_object_unpin_pages(obj);
>  	return ret;
>  

We should get rid of frontbuffer tracking completely still, this should definitely happen. I've looked at it before, but at that the time we didn't do it yet. Mostly out of concerns of breaking old userspace.

The people you cc'd are not part of the cc here. I added them.

I see i915_pm_dc failing on dc5-psr, something to look into?

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

With the caveat that you wil need someone else to ack the changes, as the last time I proposed this, there was pushback out of fear of breaking userspace.

