Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2B321A1C9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0640E6EA77;
	Thu,  9 Jul 2020 14:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDA26EA77
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:06:24 +0000 (UTC)
IronPort-SDR: SWlOlwbDauIMJu56clUWlysLjKhJ/8d6Br4zqCbIuG4/yXUmx9yn5qaZEcsXwe9cA75ZopzKoA
 w5Oc1keGJoxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="146083359"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="146083359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:06:24 -0700
IronPort-SDR: sRZXg+xN/zMnQVEymKCEEe3yoLOTo1L18ejCqgN8ctXE3W4ZA6E6cDlUWjHmQdM0w0to4+0VIk
 0fP1ElAnHecw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="284158784"
Received: from hpabst-mobl.ger.corp.intel.com (HELO [10.249.47.140])
 ([10.249.47.140])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2020 07:06:22 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-20-chris@chris-wilson.co.uk>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <700c285b-77dd-ca46-d951-0e0022a5e620@linux.intel.com>
Date: Thu, 9 Jul 2020 16:06:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200706061926.6687-20-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 19/20] drm/i915/gem: Replace
 i915_gem_object.mm.mutex with reservation_ww_class
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

Op 06-07-2020 om 08:19 schreef Chris Wilson:
> Our goal is to pull all memory reservations (next iteration
> obj->ops->get_pages()) under a ww_mutex, and to align those reservations
> with other drivers, i.e. control all such allocations with the
> reservation_ww_class. Currently, this is under the purview of the
> obj->mm.mutex, and while obj->mm remains an embedded struct we can
> "simply" switch to using the reservation_ww_class obj->base.resv->lock
>
> The major consequence is the impact on the shrinker paths as the
> reservation_ww_class is used to wrap allocations, and a ww_mutex does
> not support subclassing so we cannot do our usual trick of knowing that
> we never recurse inside the shrinker and instead have to finish the
> reclaim with a trylock. This may result in us failing to release the
> pages after having released the vma. This will have to do until a better
> idea comes along.
>
> However, this step only converts the mutex over and continues to treat
> everything as a single allocation and pinning the pages. With the
> ww_mutex in place we can remove the temporary pinning, as we can then
> reserve all storage en masse.
>
> One last thing to do: kill the implict page pinning for active vma.
> This will require us to invalidate the vma->pages when the backing store
> is removed (and we expect that while the vma is active, we mark the
> backing store as active so that it cannot be removed while the HW is
> busy.)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  20 +-
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  18 +-
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  65 ++---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  44 +++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |   8 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  37 +--
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 -
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 136 +++++------
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   8 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  13 +-
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   2 -
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  15 +-
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |  32 ++-
>  .../i915/gem/selftests/i915_gem_coherency.c   |  14 +-
>  .../drm/i915/gem/selftests/i915_gem_context.c |  10 +-
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |   2 +
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 -
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   1 -
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |   5 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 -
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   1 +
>  drivers/gpu/drm/i915/i915_gem.c               |  16 +-
>  drivers/gpu/drm/i915/i915_vma.c               | 225 +++++++-----------
>  drivers/gpu/drm/i915/i915_vma_types.h         |   6 -
>  drivers/gpu/drm/i915/mm/i915_acquire_ctx.c    |  11 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
>  .../drm/i915/selftests/intel_memory_region.c  |  17 +-
>  27 files changed, 319 insertions(+), 396 deletions(-)]

It's trivial to do a search and replace for obj->mm.lock, but that won't solve the locking issue we need to solve with actually using ww_mutex correctly.

We shouldn't return -EAGAIN in userptr if trylock fails, but it should use proper locking. That should be the entire goal of the removal, not just a quick search/replace job. :)

>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> index bc0223716906..a32fd0d5570b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
> @@ -27,16 +27,8 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
>  static int clflush_work(struct dma_fence_work *base)
>  {
>  	struct clflush *clflush = container_of(base, typeof(*clflush), base);
> -	struct drm_i915_gem_object *obj = clflush->obj;
> -	int err;
> -
> -	err = i915_gem_object_pin_pages(obj);
> -	if (err)
> -		return err;
> -
> -	__do_clflush(obj);
> -	i915_gem_object_unpin_pages(obj);
>  
> +	__do_clflush(clflush->obj);
>  	return 0;
>  }
>  
> @@ -44,7 +36,7 @@ static void clflush_release(struct dma_fence_work *base)
>  {
>  	struct clflush *clflush = container_of(base, typeof(*clflush), base);
>  
> -	i915_gem_object_put(clflush->obj);
> +	i915_gem_object_unpin_pages(clflush->obj);
>  }
>  
>  static const struct dma_fence_work_ops clflush_ops = {
> @@ -63,8 +55,14 @@ static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
>  	if (!clflush)
>  		return NULL;
>  
> +	if (__i915_gem_object_get_pages_locked(obj)) {
> +		kfree(clflush);
> +		return NULL;
> +	}
> +
>  	dma_fence_work_init(&clflush->base, &clflush_ops);
> -	clflush->obj = i915_gem_object_get(obj); /* obj <-> clflush cycle */
> +	__i915_gem_object_pin_pages(obj);
> +	clflush->obj = obj; /* Beware the obj.resv <-> clflush fence cycle */
>  
>  	return clflush;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 2679380159fc..049a15e6b496 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -124,19 +124,12 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
>  	bool write = (direction == DMA_BIDIRECTIONAL || direction == DMA_TO_DEVICE);
>  	int err;
>  
> -	err = i915_gem_object_pin_pages(obj);
> -	if (err)
> -		return err;
> -
>  	err = i915_gem_object_lock_interruptible(obj);
>  	if (err)
> -		goto out;
> +		return err;
>  
>  	err = i915_gem_object_set_to_cpu_domain(obj, write);
>  	i915_gem_object_unlock(obj);
> -
> -out:
> -	i915_gem_object_unpin_pages(obj);
>  	return err;
>  }
>  
> @@ -145,19 +138,12 @@ static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direct
>  	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
>  	int err;
>  
> -	err = i915_gem_object_pin_pages(obj);
> -	if (err)
> -		return err;
> -
>  	err = i915_gem_object_lock_interruptible(obj);
>  	if (err)
> -		goto out;
> +		return err;
>  
>  	err = i915_gem_object_set_to_gtt_domain(obj, false);
>  	i915_gem_object_unlock(obj);
> -
> -out:
> -	i915_gem_object_unpin_pages(obj);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 7f76fc68f498..30e4b163588b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -70,7 +70,7 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
>  	 * continue to assume that the obj remained out of the CPU cached
>  	 * domain.
>  	 */
> -	ret = i915_gem_object_pin_pages(obj);
> +	ret = __i915_gem_object_get_pages_locked(obj);
>  	if (ret)
>  		return ret;
>  
> @@ -94,7 +94,6 @@ i915_gem_object_set_to_wc_domain(struct drm_i915_gem_object *obj, bool write)
>  		obj->mm.dirty = true;
>  	}
>  
> -	i915_gem_object_unpin_pages(obj);
>  	return 0;
>  }
>  
> @@ -131,7 +130,7 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
>  	 * continue to assume that the obj remained out of the CPU cached
>  	 * domain.
>  	 */
> -	ret = i915_gem_object_pin_pages(obj);
> +	ret = __i915_gem_object_get_pages_locked(obj);
>  	if (ret)
>  		return ret;
>  
> @@ -163,7 +162,6 @@ i915_gem_object_set_to_gtt_domain(struct drm_i915_gem_object *obj, bool write)
>  		spin_unlock(&obj->vma.lock);
>  	}
>  
> -	i915_gem_object_unpin_pages(obj);
>  	return 0;
>  }
>  
> @@ -532,13 +530,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
>  	 * continue to assume that the obj remained out of the CPU cached
>  	 * domain.
>  	 */
> -	err = i915_gem_object_pin_pages(obj);
> -	if (err)
> -		goto out;
> -
>  	err = i915_gem_object_lock_interruptible(obj);
>  	if (err)
> -		goto out_unpin;
> +		goto out;
>  
>  	if (read_domains & I915_GEM_DOMAIN_WC)
>  		err = i915_gem_object_set_to_wc_domain(obj, write_domain);
> @@ -555,8 +549,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
>  	if (write_domain)
>  		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
>  
> -out_unpin:
> -	i915_gem_object_unpin_pages(obj);
>  out:
>  	i915_gem_object_put(obj);
>  	return err;
> @@ -572,11 +564,13 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
>  {
>  	int ret;
>  
> +	assert_object_held(obj);
> +
>  	*needs_clflush = 0;
>  	if (!i915_gem_object_has_struct_page(obj))
>  		return -ENODEV;
>  
> -	ret = i915_gem_object_lock_interruptible(obj);
> +	ret = __i915_gem_object_get_pages_locked(obj);
>  	if (ret)
>  		return ret;
>  
> @@ -584,19 +578,11 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
>  				   I915_WAIT_INTERRUPTIBLE,
>  				   MAX_SCHEDULE_TIMEOUT);
>  	if (ret)
> -		goto err_unlock;
> -
> -	ret = i915_gem_object_pin_pages(obj);
> -	if (ret)
> -		goto err_unlock;
> +		return ret;
>  
>  	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
>  	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
> -		ret = i915_gem_object_set_to_cpu_domain(obj, false);
> -		if (ret)
> -			goto err_unpin;
> -		else
> -			goto out;
> +		return i915_gem_object_set_to_cpu_domain(obj, false);
>  	}
>  
>  	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
> @@ -610,15 +596,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
>  	    !(obj->read_domains & I915_GEM_DOMAIN_CPU))
>  		*needs_clflush = CLFLUSH_BEFORE;
>  
> -out:
> -	/* return with the pages pinned */
>  	return 0;
> -
> -err_unpin:
> -	i915_gem_object_unpin_pages(obj);
> -err_unlock:
> -	i915_gem_object_unlock(obj);
> -	return ret;
>  }
>  
>  int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
> @@ -626,11 +604,13 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
>  {
>  	int ret;
>  
> +	assert_object_held(obj);
> +
>  	*needs_clflush = 0;
>  	if (!i915_gem_object_has_struct_page(obj))
>  		return -ENODEV;
>  
> -	ret = i915_gem_object_lock_interruptible(obj);
> +	ret = __i915_gem_object_get_pages_locked(obj);
>  	if (ret)
>  		return ret;
>  
> @@ -639,20 +619,11 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
>  				   I915_WAIT_ALL,
>  				   MAX_SCHEDULE_TIMEOUT);
>  	if (ret)
> -		goto err_unlock;
> -
> -	ret = i915_gem_object_pin_pages(obj);
> -	if (ret)
> -		goto err_unlock;
> +		return ret;
>  
>  	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
> -	    !static_cpu_has(X86_FEATURE_CLFLUSH)) {
> -		ret = i915_gem_object_set_to_cpu_domain(obj, true);
> -		if (ret)
> -			goto err_unpin;
> -		else
> -			goto out;
> -	}
> +	    !static_cpu_has(X86_FEATURE_CLFLUSH))
> +		return i915_gem_object_set_to_cpu_domain(obj, true);
>  
>  	i915_gem_object_flush_write_domain(obj, ~I915_GEM_DOMAIN_CPU);
>  
> @@ -672,15 +643,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
>  			*needs_clflush |= CLFLUSH_BEFORE;
>  	}
>  
> -out:
>  	i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
>  	obj->mm.dirty = true;
> -	/* return with the pages pinned */
>  	return 0;
> -
> -err_unpin:
> -	i915_gem_object_unpin_pages(obj);
> -err_unlock:
> -	i915_gem_object_unlock(obj);
> -	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bcd100f8a6c7..37c0d5058891 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -963,6 +963,13 @@ static int best_hole(struct drm_mm *mm, struct drm_mm_node *node,
>  	} while (1);
>  }
>  
> +static void eb_pin_vma_pages(struct i915_vma *vma, unsigned int count)
> +{
> +	count = hweight32(count);
> +	while (count--)
> +		__i915_gem_object_pin_pages(vma->obj);
> +}
> +
>  static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>  {
>  	struct drm_i915_gem_exec_object2 *entry = bind->ev->exec;
> @@ -1074,7 +1081,6 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>  		if (unlikely(err))
>  			return err;
>  
> -		atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
>  		atomic_or(bind_flags, &vma->flags);
>  
>  		if (i915_vma_is_ggtt(vma))
> @@ -1181,9 +1187,14 @@ static void __eb_bind_vma(struct eb_vm_work *work)
>  		GEM_BUG_ON(vma->vm != vm);
>  		GEM_BUG_ON(!i915_vma_is_active(vma));
>  
> +		if (!vma->pages)
> +			vma->ops->set_pages(vma); /* plain assignment */
> +
>  		vma->ops->bind_vma(vm, &work->stash, vma,
>  				   vma->obj->cache_level, bind->bind_flags);
>  
> +		eb_pin_vma_pages(vma, bind->bind_flags);
> +
>  		if (drm_mm_node_allocated(&bind->hole)) {
>  			mutex_lock(&vm->mutex);
>  			GEM_BUG_ON(bind->hole.mm != &vm->mm);
> @@ -1200,7 +1211,6 @@ static void __eb_bind_vma(struct eb_vm_work *work)
>  
>  put:
>  		GEM_BUG_ON(drm_mm_node_allocated(&bind->hole));
> -		i915_vma_put_pages(vma);
>  	}
>  	work->count = 0;
>  }
> @@ -1302,7 +1312,6 @@ static int eb_prepare_vma(struct eb_vm_work *work,
>  	struct eb_bind_vma *bind = &work->bind[idx];
>  	struct i915_vma *vma = ev->vma;
>  	u64 max_size;
> -	int err;
>  
>  	bind->ev = ev;
>  	bind->hole.flags = 0;
> @@ -1313,11 +1322,24 @@ static int eb_prepare_vma(struct eb_vm_work *work,
>  	if (ev->flags & __EXEC_OBJECT_NEEDS_MAP)
>  		max_size = max_t(u64, max_size, vma->fence_size);
>  
> -	err = i915_vm_alloc_pt_stash(work->vm, &work->stash, max_size);
> -	if (err)
> -		return err;
> +	return i915_vm_alloc_pt_stash(work->vm, &work->stash, max_size);
> +}
>  
> -	return i915_vma_get_pages(vma);
> +static int eb_lock_pt(struct i915_execbuffer *eb,
> +		      struct i915_vm_pt_stash *stash)
> +{
> +	struct i915_page_table *pt;
> +	int n, err;
> +
> +	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
> +		for (pt = stash->pt[n]; pt; pt = pt->stash) {
> +			err = i915_acquire_ctx_lock(&eb->acquire, pt->base);
> +			if (err)
> +				return err;
> +		}
> +	}
> +
> +	return 0;
>  }
>  
>  static int wait_for_unbinds(struct i915_execbuffer *eb,
> @@ -1440,11 +1462,11 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>  			}
>  		}
>  
> -		err = eb_acquire_mm(eb);
> +		err = eb_lock_pt(eb, &work->stash);
>  		if (err)
>  			return eb_vm_work_cancel(work, err);
>  
> -		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
> +		err = eb_acquire_mm(eb);
>  		if (err)
>  			return eb_vm_work_cancel(work, err);
>  
> @@ -2657,7 +2679,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>  	if (!pw)
>  		return -ENOMEM;
>  
> -	ptr = i915_gem_object_pin_map(shadow->obj, I915_MAP_FORCE_WB);
> +	ptr = __i915_gem_object_pin_map_locked(shadow->obj, I915_MAP_FORCE_WB);
>  	if (IS_ERR(ptr)) {
>  		err = PTR_ERR(ptr);
>  		goto err_free;
> @@ -2665,7 +2687,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>  
>  	if (!(batch->obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ) &&
>  	    i915_has_memcpy_from_wc()) {
> -		ptr = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +		ptr = __i915_gem_object_pin_map_locked(batch->obj, I915_MAP_WC);
>  		if (IS_ERR(ptr)) {
>  			err = PTR_ERR(ptr);
>  			goto err_dst;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index c8421fd9d2dc..799ad4e648aa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -53,8 +53,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>  			  const struct drm_i915_gem_object_ops *ops,
>  			  struct lock_class_key *key)
>  {
> -	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
> -
>  	spin_lock_init(&obj->vma.lock);
>  	INIT_LIST_HEAD(&obj->vma.list);
>  
> @@ -73,10 +71,6 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>  	obj->mm.madv = I915_MADV_WILLNEED;
>  	INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
>  	mutex_init(&obj->mm.get_page.lock);
> -
> -	if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
> -		i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
> -					       &obj->mm.lock);
>  }
>  
>  /**
> @@ -229,10 +223,12 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  
>  		GEM_BUG_ON(!list_empty(&obj->lut_list));
>  
> +		i915_gem_object_lock(obj);
>  		atomic_set(&obj->mm.pages_pin_count, 0);
>  		__i915_gem_object_put_pages(obj);
>  		GEM_BUG_ON(i915_gem_object_has_pages(obj));
>  		bitmap_free(obj->bit_17);
> +		i915_gem_object_unlock(obj);
>  
>  		if (obj->base.import_attach)
>  			drm_prime_gem_destroy(&obj->base, NULL);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 25714bf70b6a..8f1d20f6d42a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -275,36 +275,9 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>  				 struct sg_table *pages,
>  				 unsigned int sg_page_sizes);
>  
> -int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
> -int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
> -
> -enum i915_mm_subclass { /* lockdep subclass for obj->mm.lock/struct_mutex */
> -	I915_MM_NORMAL = 0,
> -	/*
> -	 * Only used by struct_mutex, when called "recursively" from
> -	 * direct-reclaim-esque. Safe because there is only every one
> -	 * struct_mutex in the entire system.
> -	 */
> -	I915_MM_SHRINKER = 1,
> -	/*
> -	 * Used for obj->mm.lock when allocating pages. Safe because the object
> -	 * isn't yet on any LRU, and therefore the shrinker can't deadlock on
> -	 * it. As soon as the object has pages, obj->mm.lock nests within
> -	 * fs_reclaim.
> -	 */
> -	I915_MM_GET_PAGES = 1,
> -};
> -
> -static inline int __must_check
> -i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
> -{
> -	might_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
> +int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj);
>  
> -	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
> -		return 0;
> -
> -	return __i915_gem_object_get_pages(obj);
> -}
> +int i915_gem_object_pin_pages(struct drm_i915_gem_object *obj);
>  
>  static inline bool
>  i915_gem_object_has_pages(struct drm_i915_gem_object *obj)
> @@ -372,6 +345,9 @@ enum i915_map_type {
>  void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>  					   enum i915_map_type type);
>  
> +void *__i915_gem_object_pin_map_locked(struct drm_i915_gem_object *obj,
> +				       enum i915_map_type type);
> +
>  static inline void *__i915_gem_object_mapping(struct drm_i915_gem_object *obj)
>  {
>  	return page_mask_bits(obj->mm.mapping);
> @@ -419,8 +395,7 @@ int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
>  static inline void
>  i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
>  {
> -	i915_gem_object_unpin_pages(obj);
> -	i915_gem_object_unlock(obj);
> +	assert_object_held(obj);
>  }
>  
>  static inline struct intel_engine_cs *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index d0847d7896f9..ae3303ba272c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -187,7 +187,6 @@ struct drm_i915_gem_object {
>  		 * Protects the pages and their use. Do not use directly, but
>  		 * instead go through the pin/unpin interfaces.
>  		 */
> -		struct mutex lock;
>  		atomic_t pages_pin_count;
>  		atomic_t shrink_pin;
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index af9e48ee4a33..7799f36b4b5d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -18,7 +18,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>  	unsigned long supported = INTEL_INFO(i915)->page_sizes;
>  	int i;
>  
> -	lockdep_assert_held(&obj->mm.lock);
> +	assert_object_held(obj);
>  
>  	if (i915_gem_object_is_volatile(obj))
>  		obj->mm.madv = I915_MADV_DONTNEED;
> @@ -81,13 +81,19 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>  	}
>  }
>  
> -int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
> +int __i915_gem_object_get_pages_locked(struct drm_i915_gem_object *obj)
>  {
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>  	int err;
>  
> +	assert_object_held(obj);
> +
> +	if (i915_gem_object_has_pages(obj))
> +		return 0;
> +
> +	GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
> +
>  	if (unlikely(obj->mm.madv != I915_MADV_WILLNEED)) {
> -		drm_dbg(&i915->drm,
> +		drm_dbg(obj->base.dev,
>  			"Attempting to obtain a purgeable object\n");
>  		return -EFAULT;
>  	}
> @@ -98,34 +104,33 @@ int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
>  	return err;
>  }
>  
> -/* Ensure that the associated pages are gathered from the backing storage
> +/*
> + * Ensure that the associated pages are gathered from the backing storage
>   * and pinned into our object. i915_gem_object_pin_pages() may be called
>   * multiple times before they are released by a single call to
>   * i915_gem_object_unpin_pages() - once the pages are no longer referenced
>   * either as a result of memory pressure (reaping pages under the shrinker)
>   * or as the object is itself released.
>   */
> -int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj)
> +int i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
>  {
>  	int err;
>  
> -	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
> +	might_lock(&obj->base.resv->lock.base);
> +
> +	if (atomic_inc_not_zero(&obj->mm.pages_pin_count))
> +		return 0;
> +
> +	err = i915_gem_object_lock_interruptible(obj);
>  	if (err)
>  		return err;
>  
> -	if (unlikely(!i915_gem_object_has_pages(obj))) {
> -		GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
> -
> -		err = ____i915_gem_object_get_pages(obj);
> -		if (err)
> -			goto unlock;
> +	err = __i915_gem_object_get_pages_locked(obj);
> +	if (err == 0)
> +		atomic_inc(&obj->mm.pages_pin_count);
>  
> -		smp_mb__before_atomic();
> -	}
> -	atomic_inc(&obj->mm.pages_pin_count);
> +	i915_gem_object_unlock(obj);
>  
> -unlock:
> -	mutex_unlock(&obj->mm.lock);
>  	return err;
>  }
>  
> @@ -140,7 +145,7 @@ void i915_gem_object_truncate(struct drm_i915_gem_object *obj)
>  /* Try to discard unwanted pages */
>  void i915_gem_object_writeback(struct drm_i915_gem_object *obj)
>  {
> -	lockdep_assert_held(&obj->mm.lock);
> +	assert_object_held(obj);
>  	GEM_BUG_ON(i915_gem_object_has_pages(obj));
>  
>  	if (obj->ops->writeback)
> @@ -194,17 +199,15 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
>  int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
>  {
>  	struct sg_table *pages;
> -	int err;
> +
> +	/* May be called by shrinker from within get_pages() (on another bo) */
> +	assert_object_held(obj);
>  
>  	if (i915_gem_object_has_pinned_pages(obj))
>  		return -EBUSY;
>  
> -	/* May be called by shrinker from within get_pages() (on another bo) */
> -	mutex_lock(&obj->mm.lock);
> -	if (unlikely(atomic_read(&obj->mm.pages_pin_count))) {
> -		err = -EBUSY;
> -		goto unlock;
> -	}
> +	if (unlikely(atomic_read(&obj->mm.pages_pin_count)))
> +		return -EBUSY;
>  
>  	i915_gem_object_release_mmap_offset(obj);
>  
> @@ -227,11 +230,7 @@ int __i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
>  	if (!IS_ERR(pages))
>  		obj->ops->put_pages(obj, pages);
>  
> -	err = 0;
> -unlock:
> -	mutex_unlock(&obj->mm.lock);
> -
> -	return err;
> +	return 0;
>  }
>  
>  static inline pte_t iomap_pte(resource_size_t base,
> @@ -311,48 +310,28 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
>  	return area->addr;
>  }
>  
> -/* get, pin, and map the pages of the object into kernel space */
> -void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
> -			      enum i915_map_type type)
> +void *__i915_gem_object_pin_map_locked(struct drm_i915_gem_object *obj,
> +				       enum i915_map_type type)
>  {
>  	enum i915_map_type has_type;
>  	unsigned int flags;
>  	bool pinned;
>  	void *ptr;
> -	int err;
> +
> +	assert_object_held(obj);
> +	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
>  
>  	flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE | I915_GEM_OBJECT_HAS_IOMEM;
>  	if (!i915_gem_object_type_has(obj, flags))
>  		return ERR_PTR(-ENXIO);
>  
> -	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
> -	if (err)
> -		return ERR_PTR(err);
> -
>  	pinned = !(type & I915_MAP_OVERRIDE);
>  	type &= ~I915_MAP_OVERRIDE;
>  
> -	if (!atomic_inc_not_zero(&obj->mm.pages_pin_count)) {
> -		if (unlikely(!i915_gem_object_has_pages(obj))) {
> -			GEM_BUG_ON(i915_gem_object_has_pinned_pages(obj));
> -
> -			err = ____i915_gem_object_get_pages(obj);
> -			if (err)
> -				goto err_unlock;
> -
> -			smp_mb__before_atomic();
> -		}
> -		atomic_inc(&obj->mm.pages_pin_count);
> -		pinned = false;
> -	}
> -	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
> -
>  	ptr = page_unpack_bits(obj->mm.mapping, &has_type);
>  	if (ptr && has_type != type) {
> -		if (pinned) {
> -			err = -EBUSY;
> -			goto err_unpin;
> -		}
> +		if (pinned)
> +			return ERR_PTR(-EBUSY);
>  
>  		unmap_object(obj, ptr);
>  
> @@ -361,23 +340,38 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>  
>  	if (!ptr) {
>  		ptr = i915_gem_object_map(obj, type);
> -		if (!ptr) {
> -			err = -ENOMEM;
> -			goto err_unpin;
> -		}
> +		if (!ptr)
> +			return ERR_PTR(-ENOMEM);
>  
>  		obj->mm.mapping = page_pack_bits(ptr, type);
>  	}
>  
> -out_unlock:
> -	mutex_unlock(&obj->mm.lock);
> +	__i915_gem_object_pin_pages(obj);
>  	return ptr;
> +}
> +
> +/* get, pin, and map the pages of the object into kernel space */
> +void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
> +			      enum i915_map_type type)
> +{
> +	void *ptr;
> +	int err;
> +
> +	err = i915_gem_object_lock_interruptible(obj);
> +	if (err)
> +		return ERR_PTR(err);
>  
> -err_unpin:
> -	atomic_dec(&obj->mm.pages_pin_count);
> -err_unlock:
> -	ptr = ERR_PTR(err);
> -	goto out_unlock;
> +	err = __i915_gem_object_get_pages_locked(obj);
> +	if (err) {
> +		ptr = ERR_PTR(err);
> +		goto out;
> +	}
> +
> +	ptr = __i915_gem_object_pin_map_locked(obj, type);
> +
> +out:
> +	i915_gem_object_unlock(obj);
> +	return ptr;
>  }
>  
>  void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
> @@ -419,7 +413,9 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>  
>  	might_sleep();
>  	GEM_BUG_ON(n >= obj->base.size >> PAGE_SHIFT);
> -	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
> +	GEM_BUG_ON(!i915_gem_object_has_pages(obj));
> +	GEM_BUG_ON(!mutex_is_locked(&obj->base.resv->lock.base) &&
> +		   !i915_gem_object_has_pinned_pages(obj));
>  
>  	/* As we iterate forward through the sg, we record each entry in a
>  	 * radixtree for quick repeated (backwards) lookups. If we have seen
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index 28147aab47b9..f7f93b68b7c1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -165,7 +165,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
>  	if (err)
>  		return err;
>  
> -	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
> +	i915_gem_object_lock(obj);
>  
>  	if (obj->mm.madv != I915_MADV_WILLNEED) {
>  		err = -EFAULT;
> @@ -186,7 +186,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
>  
>  	obj->ops = &i915_gem_phys_ops;
>  
> -	err = ____i915_gem_object_get_pages(obj);
> +	err = __i915_gem_object_get_pages_locked(obj);
>  	if (err)
>  		goto err_xfer;
>  
> @@ -198,7 +198,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
>  
>  	i915_gem_object_release_memory_region(obj);
>  
> -	mutex_unlock(&obj->mm.lock);
> +	i915_gem_object_unlock(obj);
>  	return 0;
>  
>  err_xfer:
> @@ -209,7 +209,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
>  		__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
>  	}
>  err_unlock:
> -	mutex_unlock(&obj->mm.lock);
> +	i915_gem_object_unlock(obj);
>  	return err;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index 1ced1e5d2ec0..a2713b251d70 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -45,10 +45,7 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
>  	if (!(shrink & I915_SHRINK_BOUND))
>  		flags = I915_GEM_OBJECT_UNBIND_TEST;
>  
> -	if (i915_gem_object_unbind(obj, flags) == 0)
> -		__i915_gem_object_put_pages(obj);
> -
> -	return !i915_gem_object_has_pages(obj);
> +	return i915_gem_object_unbind(obj, flags) == 0;
>  }
>  
>  static void try_to_writeback(struct drm_i915_gem_object *obj,
> @@ -192,14 +189,14 @@ i915_gem_shrink(struct drm_i915_private *i915,
>  
>  			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>  
> -			if (unsafe_drop_pages(obj, shrink)) {
> -				/* May arrive from get_pages on another bo */
> -				mutex_lock(&obj->mm.lock);
> +			if (unsafe_drop_pages(obj, shrink) &&
> +			    i915_gem_object_trylock(obj)) {
> +				__i915_gem_object_put_pages(obj);
>  				if (!i915_gem_object_has_pages(obj)) {
>  					try_to_writeback(obj, shrink);
>  					count += obj->base.size >> PAGE_SHIFT;
>  				}
> -				mutex_unlock(&obj->mm.lock);
> +				i915_gem_object_unlock(obj);
>  			}
>  
>  			scanned += obj->base.size >> PAGE_SHIFT;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index ff72ee2fd9cd..ac12e1c20e66 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -265,7 +265,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>  	 * pages to prevent them being swapped out and causing corruption
>  	 * due to the change in swizzling.
>  	 */
> -	mutex_lock(&obj->mm.lock);
>  	if (i915_gem_object_has_pages(obj) &&
>  	    obj->mm.madv == I915_MADV_WILLNEED &&
>  	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
> @@ -280,7 +279,6 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>  			obj->mm.quirked = true;
>  		}
>  	}
> -	mutex_unlock(&obj->mm.lock);
>  
>  	spin_lock(&obj->vma.lock);
>  	for_each_ggtt_vma(vma, obj) {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index e946032b13e4..80907c00c6fd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -129,8 +129,15 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
>  		ret = i915_gem_object_unbind(obj,
>  					     I915_GEM_OBJECT_UNBIND_ACTIVE |
>  					     I915_GEM_OBJECT_UNBIND_BARRIER);
> -		if (ret == 0)
> -			ret = __i915_gem_object_put_pages(obj);
> +		if (ret == 0) {
> +			/* ww_mutex and mmu_notifier is fs_reclaim tainted */
> +			if (i915_gem_object_trylock(obj)) {
> +				ret = __i915_gem_object_put_pages(obj);
> +				i915_gem_object_unlock(obj);
> +			} else {
> +				ret = -EAGAIN;
> +			}
> +		}
>  		i915_gem_object_put(obj);
>  		if (ret)
>  			return ret;

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
