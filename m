Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A821241CF5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 17:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53AD6E51A;
	Tue, 11 Aug 2020 15:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4CB6E51A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 15:12:04 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id k20so3172665wmi.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 08:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=loQy9NlZk3cIS2WA63UjdLILs5VI4C5nd1LbvPHDir8=;
 b=gAOLm12SLIauL2rEyS75LdYVFYFwfXLzzeR1yaCEiB60tq6rGS6k/jN4OJZEoQl00L
 pIwQLnfAN7DXKt4bUx3rgwyUd81FUh4hSm436XSWtrwnj44YRqNxIwnSqwoQpjE4s242
 f06bP+hKbjG5e8rPL19WTQTvR1ROOLCUl6cH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=loQy9NlZk3cIS2WA63UjdLILs5VI4C5nd1LbvPHDir8=;
 b=n7/t8U+JpKyKNsIQjpg/IPAMOKWYLMOjvPqTjLsZGrauOypuCroWn4H+ZpcBGEzAg5
 PxrzYknh3Wl/1XM9eNqWynxYneAwyri+U03HeaVTwcKOc/vKrfbasbCfbLtGt26Lst3T
 3CxKoZNjZ/65Pqxqm7ifTV8Hd72K0NNFNl1wymFTzsf9vU9zziS5R/m2wWQJM72qfsi1
 MhPqEcYM9Cx130tj0ewdsWUQ7QFCAEc8dit8Lbao6mOjX+TBoecFV5v5Dr7a5Ci1qGS6
 NU5LGAJyhIjQG2eNtWNJ886Nhq0znA1/rqrlBXHewO22OwjuEQFC6gokEcKcT8RXBvpU
 x+mw==
X-Gm-Message-State: AOAM531HDGDeL4CNCvd6/YAp/Vngh0ivfvsi+Awp3QcQRPKizYzUGati
 2G7hKAjOU96WUK5S44spcQ0m1L4Cvjs=
X-Google-Smtp-Source: ABdhPJwOtwBzrr/1PftNxWQTqQiPd/+rdid5Q+vpFzoMWFvGpxJAbDXtrNYSFJ6xrK7z+k68t0fvFg==
X-Received: by 2002:a1c:9e06:: with SMTP id h6mr4104395wme.45.1597158722996;
 Tue, 11 Aug 2020 08:12:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v12sm27455386wri.47.2020.08.11.08.12.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Aug 2020 08:12:02 -0700 (PDT)
Date: Tue, 11 Aug 2020 17:12:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20200811151200.GE2352366@phenom.ffwll.local>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-5-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810103103.303818-5-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 04/24] Revert "drm/i915/gem: Split eb_vma
 into its own allocation"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 10, 2020 at 12:30:43PM +0200, Maarten Lankhorst wrote:
> This reverts commit 0f1dd02295f35dcdcbaafcbcbbec0753884ab974.

Needs some help with dim cite.

> With the WW locking, we will drop all references only at the
> end, so refcounting can be removed.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

The patch isn't a 1:1 revert, we've lost 3 lines in eb_move_to_gpu, but I
convinved myself that the cleanup path calling eb_release_vmas will take
care of that too, and hence this is a legit simplification. I guess maybe
wrongly squashed in change from one of the later patches, iirc. we've
discussed that there months ago.

Anyway, with the commit message ammended this is:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 124 +++++++-----------
>  1 file changed, 51 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 12a130f92e72..7051af5ad8d8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -41,11 +41,6 @@ struct eb_vma {
>  	u32 handle;
>  };
>  
> -struct eb_vma_array {
> -	struct kref kref;
> -	struct eb_vma vma[];
> -};
> -
>  enum {
>  	FORCE_CPU_RELOC = 1,
>  	FORCE_GTT_RELOC,
> @@ -58,6 +53,7 @@ enum {
>  #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
>  #define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
>  #define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
> +#define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
>  
>  #define __EXEC_HAS_RELOC	BIT(31)
>  #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
> @@ -295,7 +291,6 @@ struct i915_execbuffer {
>  	 */
>  	int lut_size;
>  	struct hlist_head *buckets; /** ht for relocation handles */
> -	struct eb_vma_array *array;
>  
>  	struct eb_fence *fences;
>  	unsigned long num_fences;
> @@ -308,62 +303,8 @@ static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
>  		 eb->args->batch_len);
>  }
>  
> -static struct eb_vma_array *eb_vma_array_create(unsigned int count)
> -{
> -	struct eb_vma_array *arr;
> -
> -	arr = kvmalloc(struct_size(arr, vma, count), GFP_KERNEL | __GFP_NOWARN);
> -	if (!arr)
> -		return NULL;
> -
> -	kref_init(&arr->kref);
> -	arr->vma[0].vma = NULL;
> -
> -	return arr;
> -}
> -
> -static inline void eb_unreserve_vma(struct eb_vma *ev)
> -{
> -	struct i915_vma *vma = ev->vma;
> -
> -	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
> -		__i915_vma_unpin_fence(vma);
> -
> -	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
> -		__i915_vma_unpin(vma);
> -
> -	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
> -		       __EXEC_OBJECT_HAS_FENCE);
> -}
> -
> -static void eb_vma_array_destroy(struct kref *kref)
> -{
> -	struct eb_vma_array *arr = container_of(kref, typeof(*arr), kref);
> -	struct eb_vma *ev = arr->vma;
> -
> -	while (ev->vma) {
> -		eb_unreserve_vma(ev);
> -		i915_vma_put(ev->vma);
> -		ev++;
> -	}
> -
> -	kvfree(arr);
> -}
> -
> -static void eb_vma_array_put(struct eb_vma_array *arr)
> -{
> -	kref_put(&arr->kref, eb_vma_array_destroy);
> -}
> -
>  static int eb_create(struct i915_execbuffer *eb)
>  {
> -	/* Allocate an extra slot for use by the command parser + sentinel */
> -	eb->array = eb_vma_array_create(eb->buffer_count + 2);
> -	if (!eb->array)
> -		return -ENOMEM;
> -
> -	eb->vma = eb->array->vma;
> -
>  	if (!(eb->args->flags & I915_EXEC_HANDLE_LUT)) {
>  		unsigned int size = 1 + ilog2(eb->buffer_count);
>  
> @@ -397,10 +338,8 @@ static int eb_create(struct i915_execbuffer *eb)
>  				break;
>  		} while (--size);
>  
> -		if (unlikely(!size)) {
> -			eb_vma_array_put(eb->array);
> +		if (unlikely(!size))
>  			return -ENOMEM;
> -		}
>  
>  		eb->lut_size = size;
>  	} else {
> @@ -511,6 +450,26 @@ eb_pin_vma(struct i915_execbuffer *eb,
>  	return !eb_vma_misplaced(entry, vma, ev->flags);
>  }
>  
> +static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
> +{
> +	GEM_BUG_ON(!(flags & __EXEC_OBJECT_HAS_PIN));
> +
> +	if (unlikely(flags & __EXEC_OBJECT_HAS_FENCE))
> +		__i915_vma_unpin_fence(vma);
> +
> +	__i915_vma_unpin(vma);
> +}
> +
> +static inline void
> +eb_unreserve_vma(struct eb_vma *ev)
> +{
> +	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
> +		return;
> +
> +	__eb_unreserve_vma(ev->vma, ev->flags);
> +	ev->flags &= ~__EXEC_OBJECT_RESERVED;
> +}
> +
>  static int
>  eb_validate_vma(struct i915_execbuffer *eb,
>  		struct drm_i915_gem_exec_object2 *entry,
> @@ -933,13 +892,31 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
>  	}
>  }
>  
> +static void eb_release_vmas(const struct i915_execbuffer *eb)
> +{
> +	const unsigned int count = eb->buffer_count;
> +	unsigned int i;
> +
> +	for (i = 0; i < count; i++) {
> +		struct eb_vma *ev = &eb->vma[i];
> +		struct i915_vma *vma = ev->vma;
> +
> +		if (!vma)
> +			break;
> +
> +		eb->vma[i].vma = NULL;
> +
> +		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
> +			__eb_unreserve_vma(vma, ev->flags);
> +
> +		i915_vma_put(vma);
> +	}
> +}
> +
>  static void eb_destroy(const struct i915_execbuffer *eb)
>  {
>  	GEM_BUG_ON(eb->reloc_cache.rq);
>  
> -	if (eb->array)
> -		eb_vma_array_put(eb->array);
> -
>  	if (eb->lut_size > 0)
>  		kfree(eb->buckets);
>  }
> @@ -2022,12 +1999,9 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  			err = i915_vma_move_to_active(vma, eb->request, flags);
>  
>  		i915_vma_unlock(vma);
> -		eb_unreserve_vma(ev);
>  	}
>  	ww_acquire_fini(&acquire);
>  
> -	eb_vma_array_put(fetch_and_zero(&eb->array));
> -
>  	if (unlikely(err))
>  		goto err_skip;
>  
> @@ -2324,7 +2298,6 @@ static int eb_parse(struct i915_execbuffer *eb)
>  	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
>  	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
>  	eb->batch = &eb->vma[eb->buffer_count++];
> -	eb->vma[eb->buffer_count].vma = NULL;
>  
>  	eb->trampoline = trampoline;
>  	eb->batch_start_offset = 0;
> @@ -2990,6 +2963,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  		args->flags |= __EXEC_HAS_RELOC;
>  
>  	eb.exec = exec;
> +	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
> +	eb.vma[0].vma = NULL;
>  
>  	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
>  	reloc_cache_init(&eb.reloc_cache, eb.i915);
> @@ -3199,6 +3174,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  	if (batch->private)
>  		intel_gt_buffer_pool_put(batch->private);
>  err_vma:
> +	if (eb.exec)
> +		eb_release_vmas(&eb);
>  	if (eb.trampoline)
>  		i915_vma_unpin(eb.trampoline);
>  	eb_unpin_engine(&eb);
> @@ -3218,7 +3195,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  
>  static size_t eb_element_size(void)
>  {
> -	return sizeof(struct drm_i915_gem_exec_object2);
> +	return sizeof(struct drm_i915_gem_exec_object2) + sizeof(struct eb_vma);
>  }
>  
>  static bool check_buffer_count(size_t count)
> @@ -3274,7 +3251,7 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
>  	/* Copy in the exec list from userland */
>  	exec_list = kvmalloc_array(count, sizeof(*exec_list),
>  				   __GFP_NOWARN | GFP_KERNEL);
> -	exec2_list = kvmalloc_array(count, eb_element_size(),
> +	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
>  				    __GFP_NOWARN | GFP_KERNEL);
>  	if (exec_list == NULL || exec2_list == NULL) {
>  		drm_dbg(&i915->drm,
> @@ -3351,7 +3328,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
>  	if (err)
>  		return err;
>  
> -	exec2_list = kvmalloc_array(count, eb_element_size(),
> +	/* Allocate an extra slot for use by the command parser */
> +	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
>  				    __GFP_NOWARN | GFP_KERNEL);
>  	if (exec2_list == NULL) {
>  		drm_dbg(&i915->drm, "Failed to allocate exec list for %zd buffers\n",
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
