Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1283F3924B1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 04:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7976F6E0C9;
	Thu, 27 May 2021 02:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505F56E0C9;
 Thu, 27 May 2021 02:03:39 +0000 (UTC)
IronPort-SDR: zoJUde6D1dFy3jLezZyh2HF+L6ejBreiaM6Zg5yg5G43Dg1TjOGsSvKtUMdH0NQhV08PeQLxV6
 RfskMJuspY3w==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202391936"
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="202391936"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 19:03:33 -0700
IronPort-SDR: xk03quwnBs5YqnXbgRWqO1gR2Q4t0wLRWbShAi+mTnIi3K1B0UcmxOxxmYJGgM+nWpbZOHUCU0
 m5Bno2Zzs5gA==
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="398032883"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.89.65])
 ([10.212.89.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 19:03:32 -0700
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
 <20210525054803.7387-15-daniele.ceraolospurio@intel.com>
 <YKz8dqneCXUnPAkp@phenom.ffwll.local>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e28816a5-596a-b223-9a33-1f0134a8afbe@intel.com>
Date: Wed, 26 May 2021 19:03:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YKz8dqneCXUnPAkp@phenom.ffwll.local>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/17] drm/i915/pxp: User interface for
 Protected buffer
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
Cc: intel-gfx@lists.freedesktop.org, Huang Sean Z <sean.z.huang@intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 5/25/2021 6:32 AM, Daniel Vetter wrote:
> On Mon, May 24, 2021 at 10:48:00PM -0700, Daniele Ceraolo Spurio wrote:
>> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>>
>> This api allow user mode to create Protected buffers. Only contexts
>> marked as protected are allowed to operate on protected buffers.
>>
>> We only allow setting the flags at creation time.
>>
>> All protected objects that have backing storage will be considered
>> invalid when the session is destroyed and they won't be usable anymore.
>>
>> Given that the PXP HW supports multiple modes (but we currently only
>> care about one), a flag variable has been reserved in the structure
>> used in the create_ext ioctl for possible future updates.
>>
>> This is a rework of the original code by Bommu Krishnaiah. I've kept
>> authorship unchanged since significant chunks have not been modified.
>>
>> v2: split context changes, fix defines and improve documentation (Chris),
>>      add object invalidation logic
>> v3: fix spinlock definition and usage, only validate objects when
>>      they're first added to a context lut, only remove them once (Chris),
>>      make protected context flag not mandatory in protected object execbuf
>>      to avoid abuse (Lionel)
>> v4: rebase to new gem_create_ext
>>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
>> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
>> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
>> Cc: Huang Sean Z <sean.z.huang@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>> Cc: Daniel Vetter <daniel.vetter@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 26 ++++++++++++
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 +++++++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  6 +++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 ++++++
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 13 ++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 41 +++++++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          | 13 ++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  5 +++
>>   include/uapi/drm/i915_drm.h                   | 33 ++++++++++++++-
>>   9 files changed, 163 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> index 548ddf39d853..c14be3882c35 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> @@ -6,6 +6,7 @@
>>   #include "gem/i915_gem_ioctls.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>> +#include "pxp/intel_pxp.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_trace.h"
>> @@ -99,7 +100,11 @@ i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
>>   
>>   	GEM_BUG_ON(size != obj->base.size);
>>   
>> +	if (obj->user_flags & I915_GEM_OBJECT_PROTECTED)
>> +		intel_pxp_object_add(obj);
>> +
>>   	trace_i915_gem_object_create(obj);
>> +
>>   	return 0;
>>   }
>>   
>> @@ -344,8 +349,29 @@ static int ext_set_placements(struct i915_user_extension __user *base,
>>   	return set_placements(&ext, data);
>>   }
>>   
>> +static int ext_set_protected(struct i915_user_extension __user *base, void *data)
>> +{
>> +	struct drm_i915_gem_create_ext_protected_content ext;
>> +	struct create_ext *ext_data = data;
>> +
>> +	if (copy_from_user(&ext, base, sizeof(ext)))
>> +		return -EFAULT;
>> +
>> +	if (ext.flags)
>> +		return -EINVAL;
>> +
>> +	if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
>> +		return -ENODEV;
>> +
>> +	ext_data->vanilla_object->user_flags |= I915_GEM_OBJECT_PROTECTED;
>> +
>> +	return 0;
>> +}
>> +
>> +
>>   static const i915_user_extension_fn create_extensions[] = {
>>   	[I915_GEM_CREATE_EXT_MEMORY_REGIONS] = ext_set_placements,
>> +	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
>>   };
>>   
>>   /**
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index c08e28847064..5dd813d04a9f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -839,6 +839,21 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>>   		if (unlikely(!obj))
>>   			return ERR_PTR(-ENOENT);
>>   
>> +		/*
>> +		 * If the user has opted-in for protected-object tracking, make
>> +		 * sure the object encryption can be used.
>> +		 * We only need to do this when the object is first used with
>> +		 * this context, because the context itself will be banned when
>> +		 * the protected objects become invalid.
>> +		 */
>> +		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>> +		    i915_gem_object_is_protected(obj)) {
>> +			if (!intel_pxp_is_active(&vm->gt->pxp))
>> +				return ERR_PTR(-ENODEV);
>> +			if (!i915_gem_object_has_valid_protection(obj))
>> +				return ERR_PTR(-ENOEXEC);
>> +		}
>> +
>>   		vma = i915_vma_instance(obj, vm, NULL);
>>   		if (IS_ERR(vma)) {
>>   			i915_gem_object_put(obj);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 28144410df86..b47fa0a7b25a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -25,6 +25,7 @@
>>   #include <linux/sched/mm.h>
>>   
>>   #include "display/intel_frontbuffer.h"
>> +#include "pxp/intel_pxp.h"
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> @@ -70,6 +71,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>>   	INIT_LIST_HEAD(&obj->lut_list);
>>   	spin_lock_init(&obj->lut_lock);
>>   
>> +	INIT_LIST_HEAD(&obj->pxp_link);
>> +
>>   	spin_lock_init(&obj->mmo.lock);
>>   	obj->mmo.offsets = RB_ROOT;
>>   
>> @@ -232,6 +235,9 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>>   			spin_unlock(&obj->vma.lock);
>>   		}
>>   
>> +		if (i915_gem_object_has_valid_protection(obj))
>> +			intel_pxp_object_remove(obj);
>> +
>>   		__i915_gem_object_free_mmaps(obj);
>>   
>>   		GEM_BUG_ON(!list_empty(&obj->lut_list));
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index 2ebd79537aea..61b101560352 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -288,6 +288,18 @@ i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
>>   	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_NO_MMAP);
>>   }
>>   
>> +static inline bool
>> +i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
>> +{
>> +	return obj->user_flags & I915_GEM_OBJECT_PROTECTED;
>> +}
>> +
>> +static inline bool
>> +i915_gem_object_has_valid_protection(const struct drm_i915_gem_object *obj)
>> +{
>> +	return i915_gem_object_is_protected(obj) && !list_empty(&obj->pxp_link);
>> +}
>> +
>>   static inline bool
>>   i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
>>   {
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 0727d0c76aa0..a698ad0ef7f6 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
>>   	} mmo;
>>   
>>   	I915_SELFTEST_DECLARE(struct list_head st_link);
>> +	/**
>> +	 * @user_flags: small set of booleans set by the user
>> +	 */
>> +	unsigned long user_flags;
>> +#define I915_GEM_OBJECT_PROTECTED BIT(0)
>>   
>>   	unsigned long flags;
>>   #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
>> @@ -294,6 +299,14 @@ struct drm_i915_gem_object {
>>   		bool dirty:1;
>>   	} mm;
>>   
>> +	/*
>> +	 * When the PXP session is invalidated, we need to mark all protected
>> +	 * objects as invalid. To easily do so we add them all to a list. The
>> +	 * presence on the list is used to check if the encryption is valid or
>> +	 * not.
>> +	 */
>> +	struct list_head pxp_link;
>> +
>>   	/** Record of address bit 17 of each page at last unbind. */
>>   	unsigned long *bit_17;
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> index 2291c68fd3a0..e6a59eb05eae 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -69,6 +69,9 @@ void intel_pxp_init(struct intel_pxp *pxp)
>>   	if (!HAS_PXP(gt->i915))
>>   		return;
>>   
>> +	spin_lock_init(&pxp->lock);
>> +	INIT_LIST_HEAD(&pxp->protected_objects);
>> +
>>   	/*
>>   	 * we'll use the completion to check if there is a termination pending,
>>   	 * so we start it as completed and we reinit it when a termination
>> @@ -177,11 +180,49 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>>   	intel_pxp_irq_disable(pxp);
>>   }
>>   
>> +int intel_pxp_object_add(struct drm_i915_gem_object *obj)
>> +{
>> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
>> +
>> +	if (!intel_pxp_is_enabled(pxp))
>> +		return -ENODEV;
>> +
>> +	if (!list_empty(&obj->pxp_link))
>> +		return -EEXIST;
>> +
>> +	spin_lock_irq(&pxp->lock);
>> +	list_add(&obj->pxp_link, &pxp->protected_objects);
>> +	spin_unlock_irq(&pxp->lock);
>> +
>> +	return 0;
>> +}
>> +
>> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
>> +{
>> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
>> +
>> +	if (!intel_pxp_is_enabled(pxp))
>> +		return;
>> +
>> +	spin_lock_irq(&pxp->lock);
>> +	list_del_init(&obj->pxp_link);
>> +	spin_unlock_irq(&pxp->lock);
>> +}
>> +
>>   void intel_pxp_invalidate(struct intel_pxp *pxp)
>>   {
>>   	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
>> +	struct drm_i915_gem_object *obj, *tmp;
>>   	struct i915_gem_context *ctx, *cn;
>>   
>> +	/* delete objects that have been used with the invalidated session */
>> +	spin_lock_irq(&pxp->lock);
>> +	list_for_each_entry_safe(obj, tmp, &pxp->protected_objects, pxp_link) {
>> +		if (i915_gem_object_has_pages(obj))
>> +			list_del_init(&obj->pxp_link);
>> +	}
>> +	spin_unlock_irq(&pxp->lock);
>> +
>>   	/* ban all contexts marked as protected */
>>   	spin_lock_irq(&i915->gem.contexts.lock);
>>   	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> index 1f9871e64096..3500d7896058 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> @@ -9,6 +9,8 @@
>>   #include "gt/intel_gt_types.h"
>>   #include "intel_pxp_types.h"
>>   
>> +struct drm_i915_gem_object;
>> +
>>   static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>   {
>>   	return container_of(pxp, struct intel_gt, pxp);
>> @@ -33,6 +35,9 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>>   
>>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>>   int intel_pxp_start(struct intel_pxp *pxp);
>> +
>> +int intel_pxp_object_add(struct drm_i915_gem_object *obj);
>> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj);
>>   void intel_pxp_invalidate(struct intel_pxp *pxp);
>>   #else
>>   static inline void intel_pxp_init(struct intel_pxp *pxp)
>> @@ -47,6 +52,14 @@ static inline int intel_pxp_start(struct intel_pxp *pxp)
>>   {
>>   	return 0;
>>   }
>> +
>> +static inline int intel_pxp_object_add(struct drm_i915_gem_object *obj)
>> +{
>> +	return 0;
>> +}
>> +static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
>> +{
>> +}
>>   #endif
>>   
>>   #endif /* __INTEL_PXP_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> index b3ae49dd73a8..cc510416eac6 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> @@ -7,7 +7,9 @@
>>   #define __INTEL_PXP_TYPES_H__
>>   
>>   #include <linux/completion.h>
>> +#include <linux/list.h>
>>   #include <linux/mutex.h>
>> +#include <linux/spinlock.h>
>>   #include <linux/types.h>
>>   #include <linux/workqueue.h>
>>   
>> @@ -43,6 +45,9 @@ struct intel_pxp {
>>   #define PXP_TERMINATION_REQUEST  BIT(0)
>>   #define PXP_TERMINATION_COMPLETE BIT(1)
>>   #define PXP_INVAL_REQUIRED       BIT(2)
>> +
>> +	spinlock_t lock; /* protects the objects list */
>> +	struct list_head protected_objects;
>>   };
>>   
>>   #endif /* __INTEL_PXP_TYPES_H__ */
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 3cc33fcbf520..d39b8cb4bfc5 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
> For easier review it would be nice to have all the uapi and its kerneldoc
> in one patch. I feel like I've missed parts.

The previous part (protected context) in patch 11, I'll just squash them.

>
>> @@ -1768,7 +1768,7 @@ struct drm_i915_gem_context_param {
>>   	__u64 value;
>>   };
>>   
>> -/*
>> +/**
>>    * Context SSEU programming
>>    *
>>    * It may be necessary for either functional or performance reason to configure
>> @@ -2669,8 +2669,12 @@ struct drm_i915_gem_create_ext {
>>   	 *
>>   	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
>>   	 * struct drm_i915_gem_create_ext_memory_regions.
>> +	 *
>> +	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
>> +	 * struct drm_i915_gem_create_ext_protected_content.
>>   	 */
>>   #define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
>> +#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
>>   	__u64 extensions;
>>   };
>>   
>> @@ -2728,6 +2732,33 @@ struct drm_i915_gem_create_ext_memory_regions {
>>   	__u64 regions;
>>   };
>>   
>> +/**
>> + * struct drm_i915_gem_create_ext_protected_content - The
>> + * I915_OBJECT_PARAM_PROTECTED_CONTENT extension.
>> + *
>> + * If this extension is provided, buffer contents are expected to be
>> + * protected by PXP encryption and requires decryption for scan out
>> + * and processing. This is only possible on platforms that have PXP enabled,
>> + * on all other scenarios ysing this extension will cause the ioctl to fail
>> + * and return -ENODEV. The flags parameter is reserved for future expansion and
>> + * must currently be set to zero.
>> + *
>> + * The buffer contents are considered invalid after a PXP session teardown.
>> + *
>> + * The encryption is guaranteed to be processed correctly only if the object
>> + * is submitted with a context created using the
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT flag. This will also enable extra checks
> Not finding the kerneldoc for this. Also is this a CTX_CREATE_EXT flag, so
> guaranteed to be immutable, or is this another CTX_SETPARAM flag, which
> would be mutable and we really want to get away from that paradigm?

it's immutable. We definitely don't want users toggling protection at 
runtime.

>
>> + * at submission time on the validity of the objects involved, which can lead to
>> + * the following errors being returned from the execbuf ioctl:
> I think this also should be put into the execbuf ioctl structs. Plus I
> think RESET_STATS should also explain how this interacts and all that.
> Here we should just reference this other sections imo.

sure, will do.

Daniele

>
> Yes this means a bit more to type because not even the bare bones of these
> other ioctl kerneldocs exists, but we have to start somewhere.
>
> Cheers, Daniel
>
>> + *
>> + * -ENODEV: PXP session not currently active
>> + * -ENOEXEC: buffer has become invalid after a teardown event
>> + */
>> +struct drm_i915_gem_create_ext_protected_content {
>> +	struct i915_user_extension base;
>> +	__u32 flags;
>> +};
>> +
>>   /* ID of the protected content session managed by i915 when PXP is active */
>>   #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
>>   
>> -- 
>> 2.29.2
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
