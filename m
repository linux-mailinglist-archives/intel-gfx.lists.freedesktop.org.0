Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DF056698E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:33:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B14D10E808;
	Tue,  5 Jul 2022 11:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA43B10E021;
 Tue,  5 Jul 2022 09:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657012709; x=1688548709;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZdY0W/Cw1LwOY22Aq7p7hSWGi6OOHeWXfkQCnKYiIH8=;
 b=JXbdKEtWysJy2Qn+NSq2SRzp7zZ1+h2J0M8mIlwSMSoCU+1MnXLaiP/7
 h0DBE1iY8/YeVl2F8HCtGhXY+XytFGfBHrZl0J/4ehAaRul1Bsk8tTRwk
 qzmih6OumRVhmh3vOS+XWnHjdrY8Ei2h1n8kVy564hWMn3Cinkx6tOTJs
 cWO+PDwPq+UgD3e7A82lG8eC4lYEhYdwfhqrz8mt0lNfL4LXVrHe+zdDB
 OTvtUqVffXbo3O18ELDIobTSbuphiozmaXX4q0mjnBdcQLiRI/DnxpPBZ
 BSWITQLRXFwmaqqSHuJhRYvmND2UTQ7sgk4gSgH6E8NZyr3D+/z4YCSSd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369624912"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369624912"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:18:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="769582281"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2022 02:18:25 -0700
Date: Tue, 5 Jul 2022 14:50:09 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: "Zeng, Oak" <oak.zeng@intel.com>
Message-ID: <20220705092008.GA19913@intel.com>
References: <20220701225055.8204-1-niranjana.vishwanathapura@intel.com>
 <20220701225055.8204-6-niranjana.vishwanathapura@intel.com>
 <BN6PR11MB1633C9D1751468194FAD212F92BE9@BN6PR11MB1633.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <BN6PR11MB1633C9D1751468194FAD212F92BE9@BN6PR11MB1633.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 05/10] drm/i915/vm_bind: Handle persistent vmas
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
Cc: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "Hellstrom, Thomas" <thomas.hellstrom@intel.com>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-07-04 at 17:05:38 +0000, Zeng, Oak wrote:
> 
> 
> Thanks,
> Oak
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Niranjana Vishwanathapura
> > Sent: July 1, 2022 6:51 PM
> > To: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org
> > Cc: Zanoni, Paulo R <paulo.r.zanoni@intel.com>; Hellstrom, Thomas
> > <thomas.hellstrom@intel.com>; Auld, Matthew <matthew.auld@intel.com>;
> > Vetter, Daniel <daniel.vetter@intel.com>; christian.koenig@amd.com
> > Subject: [Intel-gfx] [RFC 05/10] drm/i915/vm_bind: Handle persistent vmas
> > 
> > Treat VM_BIND vmas as persistent and handle them during the request
> > submission in the execbuff path.
> 
> Hi Niranjana,
> 
> Is the meaning of "persistent" above persistent across all the subsequent execbuf ioctls?

Yes oak. Thats correct. persistent across multiple execbuf ioctls.

Regards,
Ram.
> 
> Thanks,
> Oak 
> 
> > 
> > Support eviction by maintaining a list of evicted persistent vmas for rebinding
> > during next submission.
> > 
> > Signed-off-by: Niranjana Vishwanathapura
> > <niranjana.vishwanathapura@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  1 +
> >  drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h   |  3 +
> >  .../drm/i915/gem/i915_gem_vm_bind_object.c    | 12 ++-
> >  drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +
> >  drivers/gpu/drm/i915/gt/intel_gtt.h           |  2 +
> >  drivers/gpu/drm/i915/i915_gem_gtt.h           | 22 ++++++
> >  drivers/gpu/drm/i915/i915_vma.c               | 32 +++++++-
> >  drivers/gpu/drm/i915/i915_vma.h               | 78 +++++++++++++++++--
> >  drivers/gpu/drm/i915/i915_vma_types.h         | 23 ++++++
> >  9 files changed, 163 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > index ccec4055fde3..5121f02ba95c 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > @@ -38,6 +38,7 @@
> >  #include "i915_gem_mman.h"
> >  #include "i915_gem_object.h"
> >  #include "i915_gem_ttm.h"
> > +#include "i915_gem_vm_bind.h"
> >  #include "i915_memcpy.h"
> >  #include "i915_trace.h"
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> > b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> > index 849bf3c1061e..eaadf5a6ab09 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> > @@ -6,6 +6,7 @@
> >  #ifndef __I915_GEM_VM_BIND_H
> >  #define __I915_GEM_VM_BIND_H
> > 
> > +#include <linux/dma-resv.h>
> >  #include "i915_drv.h"
> > 
> >  #define assert_vm_bind_held(vm)   lockdep_assert_held(&(vm)-
> > >vm_bind_lock)
> > @@ -26,6 +27,8 @@ static inline void i915_gem_vm_bind_unlock(struct
> > i915_address_space *vm)
> >  	mutex_unlock(&vm->vm_bind_lock);
> >  }
> > 
> > +#define assert_vm_priv_held(vm)   assert_object_held((vm)->root_obj)
> > +
> >  static inline int i915_gem_vm_priv_lock(struct i915_address_space *vm,
> >  					struct i915_gem_ww_ctx *ww)
> >  {
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> > b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> > index 96f139cc8060..1a8efa83547f 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> > @@ -85,6 +85,13 @@ void i915_gem_vm_bind_remove(struct i915_vma
> > *vma, bool release_obj)  {
> >  	assert_vm_bind_held(vma->vm);
> > 
> > +	spin_lock(&vma->vm->vm_rebind_lock);
> > +	if (!list_empty(&vma->vm_rebind_link))
> > +		list_del_init(&vma->vm_rebind_link);
> > +	i915_vma_set_purged(vma);
> > +	i915_vma_set_freed(vma);
> > +	spin_unlock(&vma->vm->vm_rebind_lock);
> > +
> >  	if (!list_empty(&vma->vm_bind_link)) {
> >  		list_del_init(&vma->vm_bind_link);
> >  		list_del_init(&vma->non_priv_vm_bind_link);
> > @@ -220,6 +227,7 @@ static struct i915_vma *vm_bind_get_vma(struct
> > i915_address_space *vm,
> > 
> >  	vma->start = va->start;
> >  	vma->last = va->start + va->length - 1;
> > +	i915_vma_set_persistent(vma);
> > 
> >  	return vma;
> >  }
> > @@ -304,8 +312,10 @@ int i915_gem_vm_bind_obj(struct
> > i915_address_space *vm,
> > 
> >  	i915_vm_bind_put_fence(vma);
> >  put_vma:
> > -	if (ret)
> > +	if (ret) {
> > +		i915_vma_set_freed(vma);
> >  		i915_vma_destroy(vma);
> > +	}
> > 
> >  	i915_gem_ww_ctx_fini(&ww);
> >  unlock_vm:
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > index df0a8459c3c6..55d5389b2c6c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > @@ -293,6 +293,8 @@ void i915_address_space_init(struct
> > i915_address_space *vm, int subclass)
> >  	INIT_LIST_HEAD(&vm->non_priv_vm_bind_list);
> >  	vm->root_obj = i915_gem_object_create_internal(vm->i915,
> > PAGE_SIZE);
> >  	GEM_BUG_ON(IS_ERR(vm->root_obj));
> > +	INIT_LIST_HEAD(&vm->vm_rebind_list);
> > +	spin_lock_init(&vm->vm_rebind_lock);
> >  }
> > 
> >  void *__px_vaddr(struct drm_i915_gem_object *p) diff --git
> > a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > index f538ce9115c9..fe5485c4a1cd 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > @@ -265,6 +265,8 @@ struct i915_address_space {
> >  	struct mutex vm_bind_lock;  /* Protects vm_bind lists */
> >  	struct list_head vm_bind_list;
> >  	struct list_head vm_bound_list;
> > +	struct list_head vm_rebind_list;
> > +	spinlock_t vm_rebind_lock;   /* Protects vm_rebind_list */
> >  	/* va tree of persistent vmas */
> >  	struct rb_root_cached va;
> >  	struct list_head non_priv_vm_bind_list; diff --git
> > a/drivers/gpu/drm/i915/i915_gem_gtt.h
> > b/drivers/gpu/drm/i915/i915_gem_gtt.h
> > index 8c2f57eb5dda..09b89d1913fc 100644
> > --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
> > +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
> > @@ -51,4 +51,26 @@ int i915_gem_gtt_insert(struct i915_address_space
> > *vm,
> > 
> >  #define PIN_OFFSET_MASK		I915_GTT_PAGE_MASK
> > 
> > +static inline int i915_vm_sync(struct i915_address_space *vm) {
> > +	int ret;
> > +
> > +	/* Wait for all requests under this vm to finish */
> > +	ret = dma_resv_wait_timeout(vm->root_obj->base.resv,
> > +				    DMA_RESV_USAGE_BOOKKEEP, false,
> > +				    MAX_SCHEDULE_TIMEOUT);
> > +	if (ret < 0)
> > +		return ret;
> > +	else if (ret > 0)
> > +		return 0;
> > +	else
> > +		return -ETIMEDOUT;
> > +}
> > +
> > +static inline bool i915_vm_is_active(const struct i915_address_space
> > +*vm) {
> > +	return !dma_resv_test_signaled(vm->root_obj->base.resv,
> > +				       DMA_RESV_USAGE_BOOKKEEP);
> > +}
> > +
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c
> > b/drivers/gpu/drm/i915/i915_vma.c index 6737236b7884..6adb013579be
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -237,6 +237,7 @@ vma_create(struct drm_i915_gem_object *obj,
> > 
> >  	INIT_LIST_HEAD(&vma->vm_bind_link);
> >  	INIT_LIST_HEAD(&vma->non_priv_vm_bind_link);
> > +	INIT_LIST_HEAD(&vma->vm_rebind_link);
> >  	return vma;
> > 
> >  err_unlock:
> > @@ -1622,7 +1623,8 @@ void i915_vma_close(struct i915_vma *vma)
> >  	if (atomic_dec_and_lock_irqsave(&vma->open_count,
> >  					&gt->closed_lock,
> >  					flags)) {
> > -		__vma_close(vma, gt);
> > +		if (!i915_vma_is_persistent(vma))
> > +			__vma_close(vma, gt);
> >  		spin_unlock_irqrestore(&gt->closed_lock, flags);
> >  	}
> >  }
> > @@ -1647,6 +1649,13 @@ static void force_unbind(struct i915_vma *vma)
> >  	if (!drm_mm_node_allocated(&vma->node))
> >  		return;
> > 
> > +	/*
> > +	 * Mark persistent vma as purged to avoid it waiting
> > +	 * for VM to be released.
> > +	 */
> > +	if (i915_vma_is_persistent(vma))
> > +		i915_vma_set_purged(vma);
> > +
> >  	atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
> >  	WARN_ON(__i915_vma_unbind(vma));
> >  	GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
> > @@ -1666,9 +1675,12 @@ static void release_references(struct i915_vma
> > *vma, bool vm_ddestroy)
> > 
> >  	spin_unlock(&obj->vma.lock);
> > 
> > -	i915_gem_vm_bind_lock(vma->vm);
> > -	i915_gem_vm_bind_remove(vma, true);
> > -	i915_gem_vm_bind_unlock(vma->vm);
> > +	if (i915_vma_is_persistent(vma) &&
> > +	    !i915_vma_is_freed(vma)) {
> > +		i915_gem_vm_bind_lock(vma->vm);
> > +		i915_gem_vm_bind_remove(vma, true);
> > +		i915_gem_vm_bind_unlock(vma->vm);
> > +	}
> > 
> >  	spin_lock_irq(&gt->closed_lock);
> >  	__i915_vma_remove_closed(vma);
> > @@ -1839,6 +1851,8 @@ int _i915_vma_move_to_active(struct i915_vma
> > *vma,
> >  	int err;
> > 
> >  	assert_object_held(obj);
> > +	if (i915_vma_is_persistent(vma))
> > +		return -EINVAL;
> > 
> >  	GEM_BUG_ON(!vma->pages);
> > 
> > @@ -1999,6 +2013,16 @@ int __i915_vma_unbind(struct i915_vma *vma)
> >  	__i915_vma_evict(vma, false);
> > 
> >  	drm_mm_remove_node(&vma->node); /* pairs with
> > i915_vma_release() */
> > +
> > +	if (i915_vma_is_persistent(vma)) {
> > +		spin_lock(&vma->vm->vm_rebind_lock);
> > +		if (list_empty(&vma->vm_rebind_link) &&
> > +		    !i915_vma_is_purged(vma))
> > +			list_add_tail(&vma->vm_rebind_link,
> > +				      &vma->vm->vm_rebind_list);
> > +		spin_unlock(&vma->vm->vm_rebind_lock);
> > +	}
> > +
> >  	return 0;
> >  }
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_vma.h
> > b/drivers/gpu/drm/i915/i915_vma.h index dcb49f79ff7e..6c1369a40e03
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.h
> > +++ b/drivers/gpu/drm/i915/i915_vma.h
> > @@ -47,12 +47,6 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
> > 
> >  void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int
> > flags);  #define I915_VMA_RELEASE_MAP BIT(0)
> > -
> > -static inline bool i915_vma_is_active(const struct i915_vma *vma) -{
> > -	return !i915_active_is_idle(&vma->active);
> > -}
> > -
> >  /* do not reserve memory to prevent deadlocks */  #define
> > __EXEC_OBJECT_NO_RESERVE BIT(31)
> > 
> > @@ -138,6 +132,48 @@ static inline u32 i915_ggtt_pin_bias(struct i915_vma
> > *vma)
> >  	return i915_vm_to_ggtt(vma->vm)->pin_bias;
> >  }
> > 
> > +static inline bool i915_vma_is_persistent(const struct i915_vma *vma) {
> > +	return test_bit(I915_VMA_PERSISTENT_BIT,
> > __i915_vma_flags(vma)); }
> > +
> > +static inline void i915_vma_set_persistent(struct i915_vma *vma) {
> > +	set_bit(I915_VMA_PERSISTENT_BIT, __i915_vma_flags(vma)); }
> > +
> > +static inline bool i915_vma_is_purged(const struct i915_vma *vma) {
> > +	return test_bit(I915_VMA_PURGED_BIT, __i915_vma_flags(vma)); }
> > +
> > +static inline void i915_vma_set_purged(struct i915_vma *vma) {
> > +	set_bit(I915_VMA_PURGED_BIT, __i915_vma_flags(vma)); }
> > +
> > +static inline bool i915_vma_is_freed(const struct i915_vma *vma) {
> > +	return test_bit(I915_VMA_FREED_BIT, __i915_vma_flags(vma)); }
> > +
> > +static inline void i915_vma_set_freed(struct i915_vma *vma) {
> > +	set_bit(I915_VMA_FREED_BIT, __i915_vma_flags(vma)); }
> > +
> > +static inline bool i915_vma_is_active(const struct i915_vma *vma) {
> > +	if (i915_vma_is_persistent(vma)) {
> > +		if (i915_vma_is_purged(vma))
> > +			return false;
> > +
> > +		return i915_vm_is_active(vma->vm);
> > +	}
> > +
> > +	return !i915_active_is_idle(&vma->active);
> > +}
> > +
> >  static inline struct i915_vma *i915_vma_get(struct i915_vma *vma)  {
> >  	i915_gem_object_get(vma->obj);
> > @@ -408,8 +444,36 @@ int i915_vma_wait_for_bind(struct i915_vma *vma);
> > 
> >  static inline int i915_vma_sync(struct i915_vma *vma)  {
> > +	int ret;
> > +
> >  	/* Wait for the asynchronous bindings and pending GPU reads */
> > -	return i915_active_wait(&vma->active);
> > +	ret = i915_active_wait(&vma->active);
> > +	if (ret || !i915_vma_is_persistent(vma) ||
> > i915_vma_is_purged(vma))
> > +		return ret;
> > +
> > +	return i915_vm_sync(vma->vm);
> > +}
> > +
> > +static inline bool i915_vma_is_bind_complete(struct i915_vma *vma) {
> > +	/* Ensure vma bind is initiated */
> > +	if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
> > +		return false;
> > +
> > +	/* Ensure any binding started is complete */
> > +	if (rcu_access_pointer(vma->active.excl.fence)) {
> > +		struct dma_fence *fence;
> > +
> > +		rcu_read_lock();
> > +		fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
> > +		rcu_read_unlock();
> > +		if (fence) {
> > +			dma_fence_put(fence);
> > +			return false;
> > +		}
> > +	}
> > +
> > +	return true;
> >  }
> > 
> >  /**
> > diff --git a/drivers/gpu/drm/i915/i915_vma_types.h
> > b/drivers/gpu/drm/i915/i915_vma_types.h
> > index 7d830a6a0b51..405c82e1bc30 100644
> > --- a/drivers/gpu/drm/i915/i915_vma_types.h
> > +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> > @@ -264,6 +264,28 @@ struct i915_vma {
> >  #define I915_VMA_SCANOUT_BIT	17
> >  #define I915_VMA_SCANOUT	((int)BIT(I915_VMA_SCANOUT_BIT))
> > 
> > +  /**
> > +   * I915_VMA_PERSISTENT_BIT:
> > +   * The vma is persistent (created with VM_BIND call).
> > +   *
> > +   * I915_VMA_PURGED_BIT:
> > +   * The persistent vma is force unbound either due to VM_UNBIND call
> > +   * from UMD or VM is released. Do not check/wait for VM activeness
> > +   * in i915_vma_is_active() and i915_vma_sync() calls.
> > +   *
> > +   * I915_VMA_FREED_BIT:
> > +   * The persistent vma is being released by UMD via VM_UNBIND call.
> > +   * While releasing the vma, do not take VM_BIND lock as VM_UNBIND call
> > +   * already holds the lock.
> > +   */
> > +#define I915_VMA_PERSISTENT_BIT	19
> > +#define I915_VMA_PURGED_BIT	20
> > +#define I915_VMA_FREED_BIT	21
> > +
> > +#define I915_VMA_PERSISTENT
> > 	((int)BIT(I915_VMA_PERSISTENT_BIT))
> > +#define I915_VMA_PURGED		((int)BIT(I915_VMA_PURGED_BIT))
> > +#define I915_VMA_FREED		((int)BIT(I915_VMA_FREED_BIT))
> > +
> >  	struct i915_active active;
> > 
> >  #define I915_VMA_PAGES_BIAS 24
> > @@ -292,6 +314,7 @@ struct i915_vma {
> >  	struct list_head vm_bind_link; /* Link in persistent VMA list */
> >  	/* Link in non-private persistent VMA list */
> >  	struct list_head non_priv_vm_bind_link;
> > +	struct list_head vm_rebind_link; /* Link in vm_rebind_list */
> > 
> >  	/** Timeline fence for vm_bind completion notification */
> >  	struct {
> > --
> > 2.21.0.rc0.32.g243a4c7e27
> 
