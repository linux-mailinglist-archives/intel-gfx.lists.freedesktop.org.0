Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 837F360E64F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E325110E4CD;
	Wed, 26 Oct 2022 17:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8867A10E4CD;
 Wed, 26 Oct 2022 17:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666804715; x=1698340715;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UdYA7FwSl2gU0ws6AZNeFqWx+Rucc2orI1rfrWJ+BBw=;
 b=OPB3R7iE6aQwq/ZRBt0leFGz2wZTs84y44ndaT8JEwaaYJZrAYja4kNs
 hfbn7ho14mTULb7X32mUkUDNXV2Jdc3Uaot8tv+KVcCdhcVfEf87YaEyI
 SQJyGo9K1bRYoorzusbxrQnJjauwR/VVP21OcWu6EGXesUnks7oZf2X2v
 W6m3SHMf+ete6iqgAtmIZ2mv4GdYsiytET8S3jrN61oRH4CwskOT1x+pj
 Ogf7VYeg9Y5DtTRiWQqBECB7K4/RNB6ETFjK1KzZL8ZGWSBgp1nlbwOlO
 zmEszVHaXh7JRemcDhli2LQGOApaF1waOUXPKRIoaaOJSNZ1PWkVJxUpH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="334631053"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="334631053"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:15:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="695459598"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="695459598"
Received: from tfigx-mobl1.ger.corp.intel.com (HELO [10.252.29.204])
 ([10.252.29.204])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:15:11 -0700
Message-ID: <fa3dfb7a-e69e-6f8d-bcf8-bb5471321f00@intel.com>
Date: Wed, 26 Oct 2022 18:15:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
 <20221025065905.13325-10-niranjana.vishwanathapura@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221025065905.13325-10-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 09/19] drm/i915/vm_bind: Add out fence
 support
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/10/2022 07:58, Niranjana Vishwanathapura wrote:
> Add support for handling out fence for vm_bind call.
> 
> v2: Reset vma->vm_bind_fence.syncobj to NULL at the end
>      of vm_bind call.
> v3: Remove vm_unbind out fence uapi which is not supported yet.
> v4: Return error if I915_TIMELINE_FENCE_WAIT fence flag is set.
>      Wait for bind to complete iff I915_TIMELINE_FENCE_SIGNAL is
>      not specified.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h   |  4 +
>   .../drm/i915/gem/i915_gem_vm_bind_object.c    | 93 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_vma.c               |  7 +-
>   drivers/gpu/drm/i915/i915_vma_types.h         |  7 ++
>   include/uapi/drm/i915_drm.h                   | 49 +++++++++-
>   5 files changed, 157 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> index 36262a6357b5..b70e900e35ab 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> @@ -8,6 +8,7 @@
>   
>   #include <linux/types.h>
>   
> +struct dma_fence;
>   struct drm_device;
>   struct drm_file;
>   struct i915_address_space;
> @@ -23,4 +24,7 @@ int i915_gem_vm_unbind_ioctl(struct drm_device *dev, void *data,
>   
>   void i915_gem_vm_unbind_all(struct i915_address_space *vm);
>   
> +void i915_vm_bind_signal_fence(struct i915_vma *vma,
> +			       struct dma_fence * const fence);
> +
>   #endif /* __I915_GEM_VM_BIND_H */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> index 863bd17c9253..fca6d6eb9ef8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> @@ -7,6 +7,8 @@
>   
>   #include <linux/interval_tree_generic.h>
>   
> +#include <drm/drm_syncobj.h>
> +
>   #include "gem/i915_gem_context.h"
>   #include "gem/i915_gem_vm_bind.h"
>   
> @@ -100,6 +102,76 @@ static void i915_gem_vm_bind_remove(struct i915_vma *vma, bool release_obj)
>   		i915_gem_object_put(vma->obj);
>   }
>   
> +static int i915_vm_bind_add_fence(struct drm_file *file, struct i915_vma *vma,
> +				  u32 handle, u64 point)
> +{
> +	struct drm_syncobj *syncobj;
> +
> +	syncobj = drm_syncobj_find(file, handle);
> +	if (!syncobj) {
> +		DRM_DEBUG("Invalid syncobj handle provided\n");

AFAIK drm_dbg() is preferred, if possible.

> +		return -ENOENT;
> +	}
> +
> +	/*
> +	 * For timeline syncobjs we need to preallocate chains for
> +	 * later signaling.
> +	 */
> +	if (point) {
> +		vma->vm_bind_fence.chain_fence = dma_fence_chain_alloc();
> +		if (!vma->vm_bind_fence.chain_fence) {
> +			drm_syncobj_put(syncobj);
> +			return -ENOMEM;
> +		}
> +	} else {
> +		vma->vm_bind_fence.chain_fence = NULL;
> +	}
> +	vma->vm_bind_fence.syncobj = syncobj;
> +	vma->vm_bind_fence.value = point;
> +
> +	return 0;
> +}
> +
> +static void i915_vm_bind_put_fence(struct i915_vma *vma)
> +{
> +	if (!vma->vm_bind_fence.syncobj)
> +		return;
> +
> +	drm_syncobj_put(vma->vm_bind_fence.syncobj);
> +	dma_fence_chain_free(vma->vm_bind_fence.chain_fence);
> +	vma->vm_bind_fence.syncobj = NULL;
> +}
> +
> +/**
> + * i915_vm_bind_signal_fence() - Add fence to vm_bind syncobj
> + * @vma: vma mapping requiring signaling
> + * @fence: fence to be added
> + *
> + * Associate specified @fence with the @vma's syncobj to be
> + * signaled after the @fence work completes.
> + */
> +void i915_vm_bind_signal_fence(struct i915_vma *vma,
> +			       struct dma_fence * const fence)
> +{
> +	struct drm_syncobj *syncobj = vma->vm_bind_fence.syncobj;
> +
> +	if (!syncobj)
> +		return;
> +
> +	if (vma->vm_bind_fence.chain_fence) {
> +		drm_syncobj_add_point(syncobj,
> +				      vma->vm_bind_fence.chain_fence,
> +				      fence, vma->vm_bind_fence.value);
> +		/*
> +		 * The chain's ownership is transferred to the
> +		 * timeline.
> +		 */
> +		vma->vm_bind_fence.chain_fence = NULL;
> +	} else {
> +		drm_syncobj_replace_fence(syncobj, fence);
> +	}
> +}
> +
>   static int i915_gem_vm_unbind_vma(struct i915_address_space *vm,
>   				  struct drm_i915_gem_vm_unbind *va)
>   {
> @@ -205,6 +277,10 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
>   	if (!va->length || !IS_ALIGNED(va->start, I915_GTT_PAGE_SIZE))
>   		ret = -EINVAL;
>   
> +	/* In fences are not supported */
> +	if (va->fence.flags & I915_TIMELINE_FENCE_WAIT)
> +		ret = -EINVAL;

I guess also:

if (flags & __I915_TIMELINE_FENCE_UNKNOWN_FLAGS)

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> +
>   	obj = i915_gem_object_lookup(file, va->handle);
>   	if (!obj)
>   		return -ENOENT;
> @@ -237,6 +313,13 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
>   		goto unlock_vm;
>   	}
>   
> +	if (va->fence.flags & I915_TIMELINE_FENCE_SIGNAL) {
> +		ret = i915_vm_bind_add_fence(file, vma, va->fence.handle,
> +					     va->fence.value);
> +		if (ret)
> +			goto put_vma;
> +	}
> +
>   	pin_flags = va->start | PIN_OFFSET_FIXED | PIN_USER |
>   		    PIN_VALIDATE | PIN_NOEVICT;
>   
> @@ -249,6 +332,13 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
>   		if (ret)
>   			continue;
>   
> +		/* If out fence is not requested, wait for bind to complete */
> +		if (!(va->fence.flags & I915_TIMELINE_FENCE_SIGNAL)) {
> +			ret = i915_vma_wait_for_bind(vma);
> +			if (ret)
> +				continue;
> +		}
> +
>   		list_add_tail(&vma->vm_bind_link, &vm->vm_bound_list);
>   		i915_vm_bind_it_insert(vma, &vm->va);
>   		if (!obj->priv_root)
> @@ -259,6 +349,9 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
>   		i915_gem_object_get(vma->obj);
>   	}
>   
> +	if (va->fence.flags & I915_TIMELINE_FENCE_SIGNAL)
> +		i915_vm_bind_put_fence(vma);
> +put_vma:
>   	if (ret)
>   		i915_vma_destroy(vma);
>   unlock_vm:
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 04abdb92c2b2..eaa13e9ba966 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -29,6 +29,7 @@
>   #include "display/intel_frontbuffer.h"
>   #include "gem/i915_gem_lmem.h"
>   #include "gem/i915_gem_tiling.h"
> +#include "gem/i915_gem_vm_bind.h"
>   #include "gt/intel_engine.h"
>   #include "gt/intel_engine_heartbeat.h"
>   #include "gt/intel_gt.h"
> @@ -1567,8 +1568,12 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   err_vma_res:
>   	i915_vma_resource_free(vma_res);
>   err_fence:
> -	if (work)
> +	if (work) {
> +		if (i915_vma_is_persistent(vma))
> +			i915_vm_bind_signal_fence(vma, &work->base.dma);
> +
>   		dma_fence_work_commit_imm(&work->base);
> +	}
>   err_rpm:
>   	if (wakeref)
>   		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> index 61d0ec1a4e18..7c8c293ddfcb 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -308,6 +308,13 @@ struct i915_vma {
>   	/** @vm_rebind_link: link to vm_rebind_list and protected by vm_rebind_lock */
>   	struct list_head vm_rebind_link; /* Link in vm_rebind_list */
>   
> +	/** Timeline fence for vm_bind completion notification */
> +	struct {
> +		struct dma_fence_chain *chain_fence;
> +		struct drm_syncobj *syncobj;
> +		u64 value;
> +	} vm_bind_fence;
> +
>   	/** Interval tree structures for persistent vma */
>   
>   	/** @rb: node for the interval tree of vm for persistent vmas */
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 4383ed85f10a..87f5c2a470f5 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1527,6 +1527,41 @@ struct drm_i915_gem_execbuffer2 {
>   #define i915_execbuffer2_get_context_id(eb2) \
>   	((eb2).rsvd1 & I915_EXEC_CONTEXT_ID_MASK)
>   
> +/**
> + * struct drm_i915_gem_timeline_fence - An input or output timeline fence.
> + *
> + * The operation will wait for input fence to signal.
> + *
> + * The returned output fence will be signaled after the completion of the
> + * operation.
> + */
> +struct drm_i915_gem_timeline_fence {
> +	/** @handle: User's handle for a drm_syncobj to wait on or signal. */
> +	__u32 handle;
> +
> +	/**
> +	 * @flags: Supported flags are:
> +	 *
> +	 * I915_TIMELINE_FENCE_WAIT:
> +	 * Wait for the input fence before the operation.
> +	 *
> +	 * I915_TIMELINE_FENCE_SIGNAL:
> +	 * Return operation completion fence as output.
> +	 */
> +	__u32 flags;
> +#define I915_TIMELINE_FENCE_WAIT            (1 << 0)
> +#define I915_TIMELINE_FENCE_SIGNAL          (1 << 1)
> +#define __I915_TIMELINE_FENCE_UNKNOWN_FLAGS (-(I915_TIMELINE_FENCE_SIGNAL << 1))
> +
> +	/**
> +	 * @value: A point in the timeline.
> +	 * Value must be 0 for a binary drm_syncobj. A Value of 0 for a
> +	 * timeline drm_syncobj is invalid as it turns a drm_syncobj into a
> +	 * binary one.
> +	 */
> +	__u64 value;
> +};
> +
>   struct drm_i915_gem_pin {
>   	/** Handle of the buffer to be pinned. */
>   	__u32 handle;
> @@ -3826,8 +3861,18 @@ struct drm_i915_gem_vm_bind {
>   	 */
>   	__u64 flags;
>   
> -	/** @rsvd: Reserved, MBZ */
> -	__u64 rsvd[2];
> +	/**
> +	 * @fence: Timeline fence for bind completion signaling.
> +	 *
> +	 * Timeline fence is of format struct drm_i915_gem_timeline_fence.
> +	 *
> +	 * It is an out fence, hence using I915_TIMELINE_FENCE_WAIT flag
> +	 * is invalid, and an error will be returned.
> +	 *
> +	 * If I915_TIMELINE_FENCE_SIGNAL flag is not set, then out fence
> +	 * is not requested and binding is completed synchronously.
> +	 */
> +	struct drm_i915_gem_timeline_fence fence;
>   
>   	/**
>   	 * @extensions: Zero-terminated chain of extensions.
