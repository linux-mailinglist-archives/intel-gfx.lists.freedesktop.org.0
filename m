Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000A3475C58
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 16:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C6410EB3C;
	Wed, 15 Dec 2021 15:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9D410EB39;
 Wed, 15 Dec 2021 15:55:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="302629631"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="302629631"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 07:55:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="682546537"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.212.98])
 ([10.213.212.98])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 07:55:10 -0800
Message-ID: <47715429-7e03-8fc8-4d30-0dae1d38c4b1@linux.intel.com>
Date: Wed, 15 Dec 2021 15:55:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211215110746.865-1-matthew.auld@intel.com>
 <20211215110746.865-2-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211215110746.865-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: clean up
 shrinker_release_pages
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/12/2021 11:07, Matthew Auld wrote:
> Add some proper flags for the different modes, and shorten the name to
> something more snappy.

Looks good to me - but since it touches TTM I leave for Thomas to approve.

Regards,

Tvrtko

P.S. I hope writing the patch means you thought it is an improvement as 
well, rather than feeling I was asking for it to be done.

> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 23 ++++++++++++++++---
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  8 +++----
>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 16 +++++++++----
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 10 ++++----
>   4 files changed, 39 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 00c844caeabd..6f446cca4322 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -57,9 +57,26 @@ struct drm_i915_gem_object_ops {
>   	void (*put_pages)(struct drm_i915_gem_object *obj,
>   			  struct sg_table *pages);
>   	int (*truncate)(struct drm_i915_gem_object *obj);
> -	int (*shrinker_release_pages)(struct drm_i915_gem_object *obj,
> -				      bool no_gpu_wait,
> -				      bool should_writeback);
> +	/**
> +	 * shrink - Perform further backend specific actions to facilate
> +	 * shrinking.
> +	 * @obj: The gem object
> +	 * @flags: Extra flags to control shrinking behaviour in the backend
> +	 *
> +	 * Possible values for @flags:
> +	 *
> +	 * I915_GEM_OBJECT_SHRINK_WRITEBACK - Try to perform writeback of the
> +	 * backing pages, if supported.
> +	 *
> +	 * I915_GEM_OBJECT_SHRINK_NO_GPU_WAIT - Don't wait for the object to
> +	 * idle.  Active objects can be considered later. The TTM backend for
> +	 * example might have aync migrations going on, which don't use any
> +	 * i915_vma to track the active GTT binding, and hence having an unbound
> +	 * object might not be enough.
> +	 */
> +#define I915_GEM_OBJECT_SHRINK_WRITEBACK   BIT(0)
> +#define I915_GEM_OBJECT_SHRINK_NO_GPU_WAIT BIT(1)
> +	int (*shrink)(struct drm_i915_gem_object *obj, unsigned int flags);
>   
>   	int (*pread)(struct drm_i915_gem_object *obj,
>   		     const struct drm_i915_gem_pread *arg);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 7fdf4fa10b0e..6c57b0a79c8a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -331,9 +331,7 @@ shmem_writeback(struct drm_i915_gem_object *obj)
>   	__shmem_writeback(obj->base.size, obj->base.filp->f_mapping);
>   }
>   
> -static int shmem_shrinker_release_pages(struct drm_i915_gem_object *obj,
> -					bool no_gpu_wait,
> -					bool writeback)
> +static int shmem_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
>   {
>   	switch (obj->mm.madv) {
>   	case I915_MADV_DONTNEED:
> @@ -342,7 +340,7 @@ static int shmem_shrinker_release_pages(struct drm_i915_gem_object *obj,
>   		return 0;
>   	}
>   
> -	if (writeback)
> +	if (flags & I915_GEM_OBJECT_SHRINK_WRITEBACK)
>   		shmem_writeback(obj);
>   
>   	return 0;
> @@ -520,7 +518,7 @@ const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
>   	.get_pages = shmem_get_pages,
>   	.put_pages = shmem_put_pages,
>   	.truncate = shmem_truncate,
> -	.shrinker_release_pages = shmem_shrinker_release_pages,
> +	.shrink = shmem_shrink,
>   
>   	.pwrite = shmem_pwrite,
>   	.pread = shmem_pread,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index fd54e05521f6..968ca0fdd57b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -57,10 +57,18 @@ static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
>   
>   static int try_to_writeback(struct drm_i915_gem_object *obj, unsigned int flags)
>   {
> -	if (obj->ops->shrinker_release_pages)
> -		return obj->ops->shrinker_release_pages(obj,
> -							!(flags & I915_SHRINK_ACTIVE),
> -							flags & I915_SHRINK_WRITEBACK);
> +	if (obj->ops->shrink) {
> +		unsigned int shrink_flags = 0;
> +
> +		if (!(flags & I915_SHRINK_ACTIVE))
> +			shrink_flags |= I915_GEM_OBJECT_SHRINK_NO_GPU_WAIT;
> +
> +		if (flags & I915_SHRINK_WRITEBACK)
> +			shrink_flags |= I915_GEM_OBJECT_SHRINK_WRITEBACK;
> +
> +		return obj->ops->shrink(obj, shrink_flags);
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 923cc7ad8d70..21277f3c64e7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -424,16 +424,14 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
>   	return 0;
>   }
>   
> -static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
> -					   bool no_wait_gpu,
> -					   bool should_writeback)
> +static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
>   {
>   	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
>   	struct i915_ttm_tt *i915_tt =
>   		container_of(bo->ttm, typeof(*i915_tt), ttm);
>   	struct ttm_operation_ctx ctx = {
>   		.interruptible = true,
> -		.no_wait_gpu = no_wait_gpu,
> +		.no_wait_gpu = flags & I915_GEM_OBJECT_SHRINK_NO_GPU_WAIT,
>   	};
>   	struct ttm_placement place = {};
>   	int ret;
> @@ -467,7 +465,7 @@ static int i915_ttm_shrinker_release_pages(struct drm_i915_gem_object *obj,
>   		return ret;
>   	}
>   
> -	if (should_writeback)
> +	if (flags & I915_GEM_OBJECT_SHRINK_WRITEBACK)
>   		__shmem_writeback(obj->base.size, i915_tt->filp->f_mapping);
>   
>   	return 0;
> @@ -953,7 +951,7 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
>   	.get_pages = i915_ttm_get_pages,
>   	.put_pages = i915_ttm_put_pages,
>   	.truncate = i915_ttm_purge,
> -	.shrinker_release_pages = i915_ttm_shrinker_release_pages,
> +	.shrink = i915_ttm_shrink,
>   
>   	.adjust_lru = i915_ttm_adjust_lru,
>   	.delayed_free = i915_ttm_delayed_free,
> 
