Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1EC3514B3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 14:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C886E02A;
	Thu,  1 Apr 2021 12:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A75C6E02A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 12:05:25 +0000 (UTC)
IronPort-SDR: 7FEzHRcjw7pmlxnzhdTJnbLMihAnbfQMTZOnTpxe2NjzFznm6ZAhP/Dgp76Yf07v5o6wsp+5TY
 eHld8ySBjLng==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="191709616"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="191709616"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:05:24 -0700
IronPort-SDR: 2HPxiF/pt27/5H2+CBUwTpWzSAM+db0cQuhxi/fPtMXSlaFaIhNq/IQD2xXRDX2qNO4PDo1qV1
 g+9IaCtJrBVg==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419178674"
Received: from schulke-mobl1.ger.corp.intel.com (HELO [10.252.58.105])
 ([10.252.58.105])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:05:21 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-14-daniele.ceraolospurio@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a7392f80-039a-940f-5d06-11a4acf6a750@intel.com>
Date: Thu, 1 Apr 2021 15:05:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210328225709.18541-14-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 13/16] drm/i915/pxp: User interface for
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
Cc: Huang Sean Z <sean.z.huang@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Kondapally Kalyan <kalyan.kondapally@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/03/2021 01:57, Daniele Ceraolo Spurio wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>
> This api allow user mode to create Protected buffers. Only contexts
> marked as protected are allowed to operate on protected buffers.
>
> We only allow setting the flags at creation time.
>
> All protected objects that have backing storage will be considered
> invalid when the session is destroyed and they won't be usable anymore.
>
> This is a rework of the original code by Bommu Krishnaiah. I've
> authorship unchanged since significant chunks have not been modified.
>
> v2: split context changes, fix defines and improve documentation (Chris),
>      add object invalidation logic
> v3: fix spinlock definition and usage, only validate objects when
>      they're first added to a context lut, only remove them once (Chris),
>      make protected context flag not mandatory in protected object execbuf
>      to avoid abuse (Lionel)
>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Cc: Kondapally Kalyan <kalyan.kondapally@intel.com>
> Cc: Gupta Anshuman <Anshuman.Gupta@intel.com>
> Cc: Huang Sean Z <sean.z.huang@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 27 ++++++++++--
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 16 ++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  6 +++
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 12 ++++++
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 13 ++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 41 +++++++++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp.h          | 13 ++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  5 +++
>   include/uapi/drm/i915_drm.h                   | 20 +++++++++
>   9 files changed, 150 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 3ad3413c459f..d02e5938afbe 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -5,6 +5,7 @@
>   
>   #include "gem/i915_gem_ioctls.h"
>   #include "gem/i915_gem_region.h"
> +#include "pxp/intel_pxp.h"
>   
>   #include "i915_drv.h"
>   #include "i915_user_extensions.h"
> @@ -13,7 +14,8 @@ static int
>   i915_gem_create(struct drm_file *file,
>   		struct intel_memory_region *mr,
>   		u64 *size_p,
> -		u32 *handle_p)
> +		u32 *handle_p,
> +		u64 user_flags)
>   {
>   	struct drm_i915_gem_object *obj;
>   	u32 handle;
> @@ -35,12 +37,17 @@ i915_gem_create(struct drm_file *file,
>   
>   	GEM_BUG_ON(size != obj->base.size);
>   
> +	obj->user_flags = user_flags;
> +
>   	ret = drm_gem_handle_create(file, &obj->base, &handle);
>   	/* drop reference from allocate - handle holds it now */
>   	i915_gem_object_put(obj);
>   	if (ret)
>   		return ret;
>   
> +	if (user_flags & I915_GEM_OBJECT_PROTECTED)
> +		intel_pxp_object_add(obj);
> +
>   	*handle_p = handle;
>   	*size_p = size;
>   	return 0;
> @@ -89,11 +96,12 @@ i915_gem_dumb_create(struct drm_file *file,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(to_i915(dev),
>   							   mem_type),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, 0);
>   }
>   
>   struct create_ext {
>   	struct drm_i915_private *i915;
> +	unsigned long user_flags;
>   };
>   
>   static int __create_setparam(struct drm_i915_gem_object_param *args,
> @@ -104,6 +112,19 @@ static int __create_setparam(struct drm_i915_gem_object_param *args,
>   		return -EINVAL;
>   	}
>   
> +	switch (lower_32_bits(args->param)) {
> +	case I915_OBJECT_PARAM_PROTECTED_CONTENT:
> +		if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
> +			return -ENODEV;
> +		if (args->size) {
> +			return -EINVAL;
> +		} else if (args->data) {
> +			ext_data->user_flags |= I915_GEM_OBJECT_PROTECTED;
> +			return 0;
> +		}
> +	break;
> +	}
> +
>   	return -EINVAL;
>   }
>   
> @@ -148,5 +169,5 @@ i915_gem_create_ioctl(struct drm_device *dev, void *data,
>   	return i915_gem_create(file,
>   			       intel_memory_region_by_type(i915,
>   							   INTEL_MEMORY_SYSTEM),
> -			       &args->size, &args->handle);
> +			       &args->size, &args->handle, ext_data.user_flags);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 72c2470fcfe6..2fb6579ad301 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -20,6 +20,7 @@
>   #include "gt/intel_gt_buffer_pool.h"
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_ring.h"
> +#include "pxp/intel_pxp.h"
>   
>   #include "pxp/intel_pxp.h"
>   
> @@ -839,6 +840,21 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   		if (unlikely(!obj))
>   			return ERR_PTR(-ENOENT);
>   
> +		/*
> +		 * If the user has opted-in for protected-object tracking, make
> +		 * sure the object encryption can be used.
> +		 * We only need to do this when the object is first used with
> +		 * this context, because the context itself will be banned when
> +		 * the protected objects become invalid.
> +		 */
> +		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
> +		    i915_gem_object_is_protected(obj)) {
> +			if (!intel_pxp_is_active(&vm->gt->pxp))
> +				return ERR_PTR(-ENODEV);
> +			if (!i915_gem_object_has_valid_protection(obj))
> +				return ERR_PTR(-EIO);
> +		}
> +
>   		vma = i915_vma_instance(obj, vm, NULL);
>   		if (IS_ERR(vma)) {
>   			i915_gem_object_put(obj);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index ea74cbca95be..80ccefd641e8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -25,6 +25,7 @@
>   #include <linux/sched/mm.h>
>   
>   #include "display/intel_frontbuffer.h"
> +#include "pxp/intel_pxp.h"
>   #include "i915_drv.h"
>   #include "i915_gem_clflush.h"
>   #include "i915_gem_context.h"
> @@ -70,6 +71,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>   	INIT_LIST_HEAD(&obj->lut_list);
>   	spin_lock_init(&obj->lut_lock);
>   
> +	INIT_LIST_HEAD(&obj->pxp_link);
> +
>   	spin_lock_init(&obj->mmo.lock);
>   	obj->mmo.offsets = RB_ROOT;
>   
> @@ -232,6 +235,9 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>   			spin_unlock(&obj->vma.lock);
>   		}
>   
> +		if (i915_gem_object_has_valid_protection(obj))
> +			intel_pxp_object_remove(obj);
> +
>   		__i915_gem_object_free_mmaps(obj);
>   
>   		GEM_BUG_ON(!list_empty(&obj->lut_list));
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 2ebd79537aea..61b101560352 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -288,6 +288,18 @@ i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
>   	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_NO_MMAP);
>   }
>   
> +static inline bool
> +i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
> +{
> +	return obj->user_flags & I915_GEM_OBJECT_PROTECTED;
> +}
> +
> +static inline bool
> +i915_gem_object_has_valid_protection(const struct drm_i915_gem_object *obj)
> +{
> +	return i915_gem_object_is_protected(obj) && !list_empty(&obj->pxp_link);
> +}
> +
>   static inline bool
>   i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
>   {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 8e485cb3343c..0d4bd2747375 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -167,6 +167,11 @@ struct drm_i915_gem_object {
>   	} mmo;
>   
>   	I915_SELFTEST_DECLARE(struct list_head st_link);
> +	/**
> +	 * @user_flags: small set of booleans set by the user
> +	 */
> +	unsigned long user_flags;
> +#define I915_GEM_OBJECT_PROTECTED BIT(0)
>   
>   	unsigned long flags;
>   #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
> @@ -286,6 +291,14 @@ struct drm_i915_gem_object {
>   		bool dirty:1;
>   	} mm;
>   
> +	/*
> +	 * When the PXP session is invalidated, we need to mark all protected
> +	 * objects as invalid. To easily do so we add them all to a list. The
> +	 * presence on the list is used to check if the encryption is valid or
> +	 * not.
> +	 */
> +	struct list_head pxp_link;
> +
>   	/** Record of address bit 17 of each page at last unbind. */
>   	unsigned long *bit_17;
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index cbc5249a1bf9..7f9902eac7ec 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -69,6 +69,9 @@ void intel_pxp_init(struct intel_pxp *pxp)
>   	if (!HAS_PXP(gt->i915))
>   		return;
>   
> +	spin_lock_init(&pxp->lock);
> +	INIT_LIST_HEAD(&pxp->protected_objects);
> +
>   	/*
>   	 * we'll use the completion to check if there is a termination pending,
>   	 * so we start it as completed and we reinit it when a termination
> @@ -173,11 +176,49 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>   	intel_pxp_irq_disable(pxp);
>   }
>   
> +int intel_pxp_object_add(struct drm_i915_gem_object *obj)
> +{
> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
> +
> +	if (!intel_pxp_is_enabled(pxp))
> +		return -ENODEV;
> +
> +	if (!list_empty(&obj->pxp_link))
> +		return -EEXIST;
> +
> +	spin_lock_irq(&pxp->lock);
> +	list_add(&obj->pxp_link, &pxp->protected_objects);
> +	spin_unlock_irq(&pxp->lock);
> +
> +	return 0;
> +}
> +
> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
> +{
> +	struct intel_pxp *pxp = &to_i915(obj->base.dev)->gt.pxp;
> +
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +
> +	spin_lock_irq(&pxp->lock);
> +	list_del_init(&obj->pxp_link);
> +	spin_unlock_irq(&pxp->lock);
> +}
> +
>   void intel_pxp_invalidate(struct intel_pxp *pxp)
>   {
>   	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct drm_i915_gem_object *obj, *tmp;
>   	struct i915_gem_context *ctx, *cn;
>   
> +	/* delete objects that have been used with the invalidated session */
> +	spin_lock_irq(&pxp->lock);
> +	list_for_each_entry_safe(obj, tmp, &pxp->protected_objects, pxp_link) {
> +		if (i915_gem_object_has_pages(obj))
> +			list_del_init(&obj->pxp_link);
> +	}
> +	spin_unlock_irq(&pxp->lock);
> +
>   	/* ban all contexts marked as protected */
>   	spin_lock_irq(&i915->gem.contexts.lock);
>   	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 91c1a2056309..194b00149247 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -9,6 +9,8 @@
>   #include "gt/intel_gt_types.h"
>   #include "intel_pxp_types.h"
>   
> +struct drm_i915_gem_object;
> +
>   static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>   {
>   	return container_of(pxp, struct intel_gt, pxp);
> @@ -33,6 +35,9 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>   
>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>   int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp);
> +
> +int intel_pxp_object_add(struct drm_i915_gem_object *obj);
> +void intel_pxp_object_remove(struct drm_i915_gem_object *obj);
>   void intel_pxp_invalidate(struct intel_pxp *pxp);
>   #else
>   static inline void intel_pxp_init(struct intel_pxp *pxp)
> @@ -47,6 +52,14 @@ static inline int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp)
>   {
>   	return 0;
>   }
> +
> +static inline int intel_pxp_object_add(struct drm_i915_gem_object *obj)
> +{
> +	return 0;
> +}
> +static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)
> +{
> +}
>   #endif
>   
>   #endif /* __INTEL_PXP_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index 6c9265fb8e4b..665704d7793e 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -7,8 +7,10 @@
>   #define __INTEL_PXP_TYPES_H__
>   
>   #include <linux/completion.h>
> +#include <linux/list.h>
>   #include <linux/types.h>
>   #include <linux/mutex.h>
> +#include <linux/spinlock.h>
>   #include <linux/workqueue.h>
>   
>   struct intel_context;
> @@ -33,6 +35,9 @@ struct intel_pxp {
>   	u32 session_events; /* protected with gt->irq_lock */
>   #define PXP_TERMINATION_REQUEST  BIT(0)
>   #define PXP_TERMINATION_COMPLETE BIT(1)
> +
> +	spinlock_t lock; /* protects the objects list */
> +	struct list_head protected_objects;
>   };
>   
>   #endif /* __INTEL_PXP_TYPES_H__ */
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index d5e502269a55..420412c08745 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1756,6 +1756,26 @@ struct drm_i915_gem_object_param {
>    */
>   #define I915_OBJECT_PARAM  (1ull << 32)
>   
> +/*
> + * I915_OBJECT_PARAM_PROTECTED_CONTENT:
> + *
> + * If set to true, buffer contents is expected to be protected by PXP
> + * encryption and requires decryption for scan out and processing. This is
> + * only possible on platforms that have PXP enabled, on all other scenarios
> + * setting this flag will cause the ioctl to fail and return -ENODEV.
> + *
> + * The buffer contents are considered invalid after a PXP session teardown.
> + * It is recommended to use protected buffers only with contexts created
> + * using the I915_CONTEXT_PARAM_PROTECTED_CONTENT flag, as that will enable
> + * extra checks at submission time on the validity of the objects involved,
> + * which can lead to the following errors:
> + *
> + * -ENODEV: PXP session not currently active
> + * -EIO: buffer has become invalid after a teardown event


I was a bit confused on reading those comments. Maybe we should specify 
when they apply.

My understanding is that you can get -ENODEV on object creation, while 
-EIO happens at execbuffer time.

Did I get this right?


-Lionel


> + */
> +#define I915_OBJECT_PARAM_PROTECTED_CONTENT  0x0
> +/* Must be kept compact -- no holes and well documented */
> +
>   	__u64 param;
>   
>   	/* Data value or pointer */


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
