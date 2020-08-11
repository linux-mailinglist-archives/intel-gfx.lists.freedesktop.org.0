Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8E82418F3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 11:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D2066E4D2;
	Tue, 11 Aug 2020 09:33:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90276E4D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 09:33:51 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id 9so1953020wmj.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 02:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A/UnRFTfiTwJoR8nlQ4MKcne4JsDgDTB0knp0XegIUc=;
 b=Q+CxdmKV6QNvxdtAX1Cvb616HVB9+8KT+wld2eKW1LrBjGPfMCpOyFGh8g54oIdJoU
 QKHKrDORalxJ1MY/HbLAf733gru9dYfotP6QJYguqFnaGn3RmE5lTWCWpJ52/+asH3OC
 3GkrFtKfZfkGRXgJpOeRpQ1IdesPv8BXMUkjw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A/UnRFTfiTwJoR8nlQ4MKcne4JsDgDTB0knp0XegIUc=;
 b=QNzCCgq3TJ21zhM70j0TpSWJbevkqaQ7aFN5BhJjDnk+5gFf5VQjwX5bH9DwJDbc5K
 hbeIMqv9ea/YCG5N0x71K45Gc3NNhb7mo6NmPWuMeOL+VHEZcJjgDhpxPV0k+E8m5/qH
 LTxSYpY6EaVoL8UyOKqN8uQKpdQLQ2BkuLKU2NoILdjAOIvc7Ki6NM7eEYJuE4L0hypZ
 odNlfUfCQISzjWNS7jrGkGFvP0jJOYwziCSx8oXEWXfMJui3tnQ1uw+bi5LHlkVXMN6l
 WCePfzFtXvUylc6XGL6HMOj7wo/01BSRUMS3fVM2SDgegL6qHoI8xGhE4Vg3huPDowvW
 JYuA==
X-Gm-Message-State: AOAM530FL+1WffgcPcRO5hXp9tnaWFHcCfzh4xzdTlUKVRllDzLUdce4
 kAz2B/CBhJBJ17o7ij4PLEb8nQ==
X-Google-Smtp-Source: ABdhPJwOh5n0kfiTHNQfdhXrwhFx+QbRssMScT1TcD4zVQNnePD6CVCMyT9HzHpkzx4OwdqO7wl8ig==
X-Received: by 2002:a1c:678b:: with SMTP id b133mr3412655wmc.117.1597138430220; 
 Tue, 11 Aug 2020 02:33:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o30sm25797277wra.67.2020.08.11.02.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Aug 2020 02:33:49 -0700 (PDT)
Date: Tue, 11 Aug 2020 11:33:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20200811093347.GA2352366@phenom.ffwll.local>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-2-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810103103.303818-2-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 01/24] Revert "drm/i915/gem: Async GPU
 relocations only"
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

On Mon, Aug 10, 2020 at 12:30:40PM +0200, Maarten Lankhorst wrote:
> This reverts commit 9e0f9464e2ab36b864359a59b0e9058fdef0ce47,
> and related commit 7ac2d2536dfa7 ("drm/i915/gem: Delete unused code").
> 
> Async GPU relocations are not the path forward, we want to remove
> GPU accelerated relocation support eventually when userspace is fixed
> to use VM_BIND, and this is the first step towards that. We will keep
> async gpu relocations around for now, until userspace is fixed.
> 
> Relocation support will be disabled completely on platforms where there
> was never any userspace that depends on it, as the hardware doesn't
> require it from at least gen9+ onward. For older platforms, the plan
> is to use cpu relocations only.

Need to add the igt side here, either patchwork link or commit if it's
pushed already.

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 319 ++++++++++++++++--
>  .../i915/gem/selftests/i915_gem_execbuffer.c  |  21 +-
>  2 files changed, 313 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 24a1486d2dc5..c6a613d92a13 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -46,6 +46,13 @@ struct eb_vma_array {
>  	struct eb_vma vma[];
>  };
>  
> +enum {
> +	FORCE_CPU_RELOC = 1,
> +	FORCE_GTT_RELOC,
> +	FORCE_GPU_RELOC,
> +#define DBG_FORCE_RELOC 0 /* choose one of the above! */
> +};
> +
>  #define __EXEC_OBJECT_HAS_PIN		BIT(31)
>  #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
>  #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> @@ -261,6 +268,8 @@ struct i915_execbuffer {
>  	 */
>  	struct reloc_cache {
>  		struct drm_mm_node node; /** temporary GTT binding */
> +		unsigned long vaddr; /** Current kmap address */
> +		unsigned long page; /** Currently mapped page index */
>  		unsigned int gen; /** Cached value of INTEL_GEN */
>  		bool use_64bit_reloc : 1;
>  		bool has_llc : 1;
> @@ -607,6 +616,23 @@ eb_add_vma(struct i915_execbuffer *eb,
>  	}
>  }
>  
> +static inline int use_cpu_reloc(const struct reloc_cache *cache,
> +				const struct drm_i915_gem_object *obj)
> +{
> +	if (!i915_gem_object_has_struct_page(obj))
> +		return false;
> +
> +	if (DBG_FORCE_RELOC == FORCE_CPU_RELOC)
> +		return true;
> +
> +	if (DBG_FORCE_RELOC == FORCE_GTT_RELOC)
> +		return false;
> +
> +	return (cache->has_llc ||
> +		obj->cache_dirty ||
> +		obj->cache_level != I915_CACHE_NONE);
> +}
> +
>  static int eb_reserve_vma(const struct i915_execbuffer *eb,
>  			  struct eb_vma *ev,
>  			  u64 pin_flags)
> @@ -937,6 +963,8 @@ relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
>  static void reloc_cache_init(struct reloc_cache *cache,
>  			     struct drm_i915_private *i915)
>  {
> +	cache->page = -1;
> +	cache->vaddr = 0;
>  	/* Must be a variable in the struct to allow GCC to unroll. */
>  	cache->gen = INTEL_GEN(i915);
>  	cache->has_llc = HAS_LLC(i915);
> @@ -948,6 +976,25 @@ static void reloc_cache_init(struct reloc_cache *cache,
>  	cache->target = NULL;
>  }
>  
> +static inline void *unmask_page(unsigned long p)
> +{
> +	return (void *)(uintptr_t)(p & PAGE_MASK);
> +}
> +
> +static inline unsigned int unmask_flags(unsigned long p)
> +{
> +	return p & ~PAGE_MASK;
> +}
> +
> +#define KMAP 0x4 /* after CLFLUSH_FLAGS */
> +
> +static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
> +{
> +	struct drm_i915_private *i915 =
> +		container_of(cache, struct i915_execbuffer, reloc_cache)->i915;
> +	return &i915->ggtt;
> +}
> +
>  #define RELOC_TAIL 4
>  
>  static int reloc_gpu_chain(struct reloc_cache *cache)
> @@ -1060,6 +1107,186 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
>  	return err;
>  }
>  
> +static void reloc_cache_reset(struct reloc_cache *cache)
> +{
> +	void *vaddr;
> +
> +	if (!cache->vaddr)
> +		return;
> +
> +	vaddr = unmask_page(cache->vaddr);
> +	if (cache->vaddr & KMAP) {
> +		if (cache->vaddr & CLFLUSH_AFTER)
> +			mb();
> +
> +		kunmap_atomic(vaddr);
> +		i915_gem_object_finish_access((struct drm_i915_gem_object *)cache->node.mm);
> +	} else {
> +		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
> +
> +		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
> +		io_mapping_unmap_atomic((void __iomem *)vaddr);
> +
> +		if (drm_mm_node_allocated(&cache->node)) {
> +			ggtt->vm.clear_range(&ggtt->vm,
> +					     cache->node.start,
> +					     cache->node.size);
> +			mutex_lock(&ggtt->vm.mutex);
> +			drm_mm_remove_node(&cache->node);
> +			mutex_unlock(&ggtt->vm.mutex);
> +		} else {
> +			i915_vma_unpin((struct i915_vma *)cache->node.mm);
> +		}
> +	}
> +
> +	cache->vaddr = 0;
> +	cache->page = -1;
> +}
> +
> +static void *reloc_kmap(struct drm_i915_gem_object *obj,
> +			struct reloc_cache *cache,
> +			unsigned long pageno)
> +{
> +	void *vaddr;
> +	struct page *page;
> +
> +	if (cache->vaddr) {
> +		kunmap_atomic(unmask_page(cache->vaddr));
> +	} else {
> +		unsigned int flushes;
> +		int err;
> +
> +		err = i915_gem_object_prepare_write(obj, &flushes);
> +		if (err)
> +			return ERR_PTR(err);
> +
> +		BUILD_BUG_ON(KMAP & CLFLUSH_FLAGS);
> +		BUILD_BUG_ON((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);
> +
> +		cache->vaddr = flushes | KMAP;
> +		cache->node.mm = (void *)obj;
> +		if (flushes)
> +			mb();
> +	}
> +
> +	page = i915_gem_object_get_page(obj, pageno);
> +	if (!obj->mm.dirty)
> +		set_page_dirty(page);
> +
> +	vaddr = kmap_atomic(page);
> +	cache->vaddr = unmask_flags(cache->vaddr) | (unsigned long)vaddr;
> +	cache->page = pageno;
> +
> +	return vaddr;
> +}
> +
> +static void *reloc_iomap(struct drm_i915_gem_object *obj,
> +			 struct reloc_cache *cache,
> +			 unsigned long page)
> +{
> +	struct i915_ggtt *ggtt = cache_to_ggtt(cache);
> +	unsigned long offset;
> +	void *vaddr;
> +
> +	if (cache->vaddr) {
> +		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
> +		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));
> +	} else {
> +		struct i915_vma *vma;
> +		int err;
> +
> +		if (i915_gem_object_is_tiled(obj))
> +			return ERR_PTR(-EINVAL);
> +
> +		if (use_cpu_reloc(cache, obj))
> +			return NULL;
> +
> +		i915_gem_object_lock(obj);
> +		err = i915_gem_object_set_to_gtt_domain(obj, true);
> +		i915_gem_object_unlock(obj);
> +		if (err)
> +			return ERR_PTR(err);
> +
> +		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
> +					       PIN_MAPPABLE |
> +					       PIN_NONBLOCK /* NOWARN */ |
> +					       PIN_NOEVICT);
> +		if (IS_ERR(vma)) {
> +			memset(&cache->node, 0, sizeof(cache->node));
> +			mutex_lock(&ggtt->vm.mutex);
> +			err = drm_mm_insert_node_in_range
> +				(&ggtt->vm.mm, &cache->node,
> +				 PAGE_SIZE, 0, I915_COLOR_UNEVICTABLE,
> +				 0, ggtt->mappable_end,
> +				 DRM_MM_INSERT_LOW);
> +			mutex_unlock(&ggtt->vm.mutex);
> +			if (err) /* no inactive aperture space, use cpu reloc */
> +				return NULL;
> +		} else {
> +			cache->node.start = vma->node.start;
> +			cache->node.mm = (void *)vma;
> +		}
> +	}
> +
> +	offset = cache->node.start;
> +	if (drm_mm_node_allocated(&cache->node)) {
> +		ggtt->vm.insert_page(&ggtt->vm,
> +				     i915_gem_object_get_dma_address(obj, page),
> +				     offset, I915_CACHE_NONE, 0);
> +	} else {
> +		offset += page << PAGE_SHIFT;
> +	}
> +
> +	vaddr = (void __force *)io_mapping_map_atomic_wc(&ggtt->iomap,
> +							 offset);
> +	cache->page = page;
> +	cache->vaddr = (unsigned long)vaddr;
> +
> +	return vaddr;
> +}
> +
> +static void *reloc_vaddr(struct drm_i915_gem_object *obj,
> +			 struct reloc_cache *cache,
> +			 unsigned long page)
> +{
> +	void *vaddr;
> +
> +	if (cache->page == page) {
> +		vaddr = unmask_page(cache->vaddr);
> +	} else {
> +		vaddr = NULL;
> +		if ((cache->vaddr & KMAP) == 0)
> +			vaddr = reloc_iomap(obj, cache, page);
> +		if (!vaddr)
> +			vaddr = reloc_kmap(obj, cache, page);
> +	}
> +
> +	return vaddr;
> +}
> +
> +static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
> +{
> +	if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
> +		if (flushes & CLFLUSH_BEFORE) {
> +			clflushopt(addr);
> +			mb();
> +		}
> +
> +		*addr = value;
> +
> +		/*
> +		 * Writes to the same cacheline are serialised by the CPU
> +		 * (including clflush). On the write path, we only require
> +		 * that it hits memory in an orderly fashion and place
> +		 * mb barriers at the start and end of the relocation phase
> +		 * to ensure ordering of clflush wrt to the system.
> +		 */
> +		if (flushes & CLFLUSH_AFTER)
> +			clflushopt(addr);
> +	} else
> +		*addr = value;
> +}
> +
>  static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
>  {
>  	struct drm_i915_gem_object *obj = vma->obj;
> @@ -1225,6 +1452,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
>  	return cmd;
>  }
>  
> +static inline bool use_reloc_gpu(struct i915_vma *vma)
> +{
> +	if (DBG_FORCE_RELOC == FORCE_GPU_RELOC)
> +		return true;
> +
> +	if (DBG_FORCE_RELOC)
> +		return false;
> +
> +	return !dma_resv_test_signaled_rcu(vma->resv, true);
> +}
> +
>  static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
>  {
>  	struct page *page;
> @@ -1239,10 +1477,10 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
>  	return addr + offset_in_page(offset);
>  }
>  
> -static int __reloc_entry_gpu(struct i915_execbuffer *eb,
> -			     struct i915_vma *vma,
> -			     u64 offset,
> -			     u64 target_addr)
> +static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
> +			      struct i915_vma *vma,
> +			      u64 offset,
> +			      u64 target_addr)
>  {
>  	const unsigned int gen = eb->reloc_cache.gen;
>  	unsigned int len;
> @@ -1258,7 +1496,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
>  
>  	batch = reloc_gpu(eb, vma, len);
>  	if (IS_ERR(batch))
> -		return PTR_ERR(batch);
> +		return false;
>  
>  	addr = gen8_canonical_addr(vma->node.start + offset);
>  	if (gen >= 8) {
> @@ -1307,21 +1545,55 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
>  		*batch++ = target_addr;
>  	}
>  
> -	return 0;
> +	return true;
> +}
> +
> +static bool reloc_entry_gpu(struct i915_execbuffer *eb,
> +			    struct i915_vma *vma,
> +			    u64 offset,
> +			    u64 target_addr)
> +{
> +	if (eb->reloc_cache.vaddr)
> +		return false;
> +
> +	if (!use_reloc_gpu(vma))
> +		return false;
> +
> +	return __reloc_entry_gpu(eb, vma, offset, target_addr);
>  }
>  
>  static u64
> -relocate_entry(struct i915_execbuffer *eb,
> -	       struct i915_vma *vma,
> +relocate_entry(struct i915_vma *vma,
>  	       const struct drm_i915_gem_relocation_entry *reloc,
> +	       struct i915_execbuffer *eb,
>  	       const struct i915_vma *target)
>  {
>  	u64 target_addr = relocation_target(reloc, target);
> -	int err;
> -
> -	err = __reloc_entry_gpu(eb, vma, reloc->offset, target_addr);
> -	if (err)
> -		return err;
> +	u64 offset = reloc->offset;
> +
> +	if (!reloc_entry_gpu(eb, vma, offset, target_addr)) {
> +		bool wide = eb->reloc_cache.use_64bit_reloc;
> +		void *vaddr;
> +
> +repeat:
> +		vaddr = reloc_vaddr(vma->obj,
> +				    &eb->reloc_cache,
> +				    offset >> PAGE_SHIFT);
> +		if (IS_ERR(vaddr))
> +			return PTR_ERR(vaddr);
> +
> +		GEM_BUG_ON(!IS_ALIGNED(offset, sizeof(u32)));
> +		clflush_write32(vaddr + offset_in_page(offset),
> +				lower_32_bits(target_addr),
> +				eb->reloc_cache.vaddr);
> +
> +		if (wide) {
> +			offset += sizeof(u32);
> +			target_addr >>= 32;
> +			wide = false;
> +			goto repeat;
> +		}
> +	}
>  
>  	return target->node.start | UPDATE;
>  }
> @@ -1386,7 +1658,8 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>  	 * If the relocation already has the right value in it, no
>  	 * more work needs to be done.
>  	 */
> -	if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
> +	if (!DBG_FORCE_RELOC &&
> +	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
>  		return 0;
>  
>  	/* Check that the relocation address is valid... */
> @@ -1418,7 +1691,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>  	ev->flags &= ~EXEC_OBJECT_ASYNC;
>  
>  	/* and update the user's relocation entry */
> -	return relocate_entry(eb, ev->vma, reloc, target->vma);
> +	return relocate_entry(ev->vma, reloc, eb, target->vma);
>  }
>  
>  static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
> @@ -1456,8 +1729,10 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  		 * this is bad and so lockdep complains vehemently.
>  		 */
>  		copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
> -		if (unlikely(copied))
> -			return -EFAULT;
> +		if (unlikely(copied)) {
> +			remain = -EFAULT;
> +			goto out;
> +		}
>  
>  		remain -= count;
>  		do {
> @@ -1465,7 +1740,8 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  
>  			if (likely(offset == 0)) {
>  			} else if ((s64)offset < 0) {
> -				return (int)offset;
> +				remain = (int)offset;
> +				goto out;
>  			} else {
>  				/*
>  				 * Note that reporting an error now
> @@ -1495,8 +1771,9 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  		} while (r++, --count);
>  		urelocs += ARRAY_SIZE(stack);
>  	} while (remain);
> -
> -	return 0;
> +out:
> +	reloc_cache_reset(&eb->reloc_cache);
> +	return remain;
>  }
>  
>  static int eb_relocate(struct i915_execbuffer *eb)
> @@ -2573,7 +2850,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>  	eb.i915 = i915;
>  	eb.file = file;
>  	eb.args = args;
> -	if (!(args->flags & I915_EXEC_NO_RELOC))
> +	if (DBG_FORCE_RELOC || !(args->flags & I915_EXEC_NO_RELOC))
>  		args->flags |= __EXEC_HAS_RELOC;
>  
>  	eb.exec = exec;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
> index 57c14d3340cd..a49016f8ee0d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
> @@ -37,14 +37,20 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
>  		return err;
>  
>  	/* 8-Byte aligned */
> -	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
> -	if (err)
> +	if (!__reloc_entry_gpu(eb, vma,
> +			       offsets[0] * sizeof(u32),
> +			       0)) {
> +		err = -EIO;
>  		goto unpin_vma;
> +	}
>  
>  	/* !8-Byte aligned */
> -	err = __reloc_entry_gpu(eb, vma, offsets[1] * sizeof(u32), 1);
> -	if (err)
> +	if (!__reloc_entry_gpu(eb, vma,
> +			       offsets[1] * sizeof(u32),
> +			       1)) {
> +		err = -EIO;
>  		goto unpin_vma;
> +	}
>  
>  	/* Skip to the end of the cmd page */
>  	i = PAGE_SIZE / sizeof(u32) - RELOC_TAIL - 1;
> @@ -54,9 +60,12 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
>  	eb->reloc_cache.rq_size += i;
>  
>  	/* Force batch chaining */
> -	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
> -	if (err)
> +	if (!__reloc_entry_gpu(eb, vma,
> +			       offsets[2] * sizeof(u32),
> +			       2)) {
> +		err = -EIO;
>  		goto unpin_vma;
> +	}
>  
>  	GEM_BUG_ON(!eb->reloc_cache.rq);
>  	rq = i915_request_get(eb->reloc_cache.rq);
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

With the commit message ammended:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
