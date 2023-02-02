Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68202688509
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:04:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571B110E4CE;
	Thu,  2 Feb 2023 17:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A48110E1E9;
 Thu,  2 Feb 2023 17:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675357454; x=1706893454;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=37CR2bdMWICuR8i1PMjOOyvoSdvQR4CZfmlP3pRmp6E=;
 b=nURfiPe4A0FKyAzmiKEE3XIIzISwEMYgZ1qvRi0kY23TJDlb+W1fRyFW
 xkSg8iCbtQ7uIGciBnyzGUA1ASOU3wnxFj2jK5o0c5fsUaDcodxI8RfzP
 FEkaF7r1pnM05X+K9bwsL2X/SJvru9sq9LnBORHDaygeEZomdhNJR2kCv
 81QZZupma3CuczVM+ihsblZwWvgO8rhbboo/SgvWcq5H48wGGs9sItBCg
 5Nl5xRcqHPcpEbJktcb/dfsm0KFYeNHKcJvRdSiQnWS5PDnSLnGH8wdPd
 8pjqdlhwJrUyczZi4M1PCWhJNy9o+q9zJoZOIyYnmHU3ZZwgka4dTf4hn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="328519321"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="328519321"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:03:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="789355926"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="789355926"
Received: from mrogowsx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.12])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:03:52 -0800
Date: Thu, 2 Feb 2023 18:03:49 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Message-ID: <Y9vs9Xi7NCLq9CHg@ashyti-mobl2.lan>
References: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
 <20230118071609.17572-24-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230118071609.17572-24-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 23/23] drm/i915/vm_bind: Support capture
 of persistent mappings
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 thomas.hellstrom@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Niranjana,

On Tue, Jan 17, 2023 at 11:16:09PM -0800, Niranjana Vishwanathapura wrote:
> Support dump capture of persistent mappings upon user request.
> 
> Capture of a mapping is requested with the VM_BIND ioctl and
> processed during the GPU error handling. They are synchronously
> unbound during eviction so that no additional vma resource
> reference taking is required in the submission path. Thus, a
> list of persistent vmas requiring capture is maintained instead
> of a list of vma resources.
> 
> v2: enable with CONFIG_DRM_I915_CAPTURE_ERROR, remove gfp
>     overwrite, add kernel-doc and expand commit message
> v3: Ensure vma->resource is valid during capture
> 
> Signed-off-by: Brian Welty <brian.welty@intel.com>
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>  .../drm/i915/gem/i915_gem_vm_bind_object.c    | 13 +++++
>  drivers/gpu/drm/i915/gt/intel_gtt.c           |  5 ++
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |  7 +++
>  drivers/gpu/drm/i915/i915_gem.c               | 14 ++++-
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 52 ++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_vma.c               |  4 ++
>  drivers/gpu/drm/i915/i915_vma_types.h         |  4 ++
>  include/uapi/drm/i915_drm.h                   |  9 +++-
>  8 files changed, 104 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> index 78e7c0642c5f..562a67a988f2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> @@ -88,6 +88,12 @@ static void i915_gem_vm_bind_remove(struct i915_vma *vma, bool release_obj)
>  {
>  	lockdep_assert_held(&vma->vm->vm_bind_lock);
>  
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> +	mutex_lock(&vma->vm->vm_capture_lock);
> +	if (!list_empty(&vma->vm_capture_link))
> +		list_del_init(&vma->vm_capture_link);
> +	mutex_unlock(&vma->vm->vm_capture_lock);
> +#endif
>  	spin_lock(&vma->vm->vm_rebind_lock);
>  	if (!list_empty(&vma->vm_rebind_link))
>  		list_del_init(&vma->vm_rebind_link);
> @@ -357,6 +363,13 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
>  				continue;
>  		}
>  
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> +		if (va->flags & I915_GEM_VM_BIND_CAPTURE) {
> +			mutex_lock(&vm->vm_capture_lock);
> +			list_add_tail(&vma->vm_capture_link, &vm->vm_capture_list);
> +			mutex_unlock(&vm->vm_capture_lock);
> +		}
> +#endif
>  		list_add_tail(&vma->vm_bind_link, &vm->vm_bound_list);
>  		i915_vm_bind_it_insert(vma, &vm->va);
>  		if (!obj->priv_root)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 2e4c9fabf3b8..103ca55222be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -297,6 +297,11 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
>  	spin_lock_init(&vm->vm_rebind_lock);
>  	spin_lock_init(&vm->userptr_invalidated_lock);
>  	INIT_LIST_HEAD(&vm->userptr_invalidated_list);
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> +	INIT_LIST_HEAD(&vm->vm_capture_list);
> +	mutex_init(&vm->vm_capture_lock);
> +#endif

can we have all these, init/add/remove inside a single
CONFIG_RM_I915_CAPTURE_ERROR?

>  }
>  
>  void *__px_vaddr(struct drm_i915_gem_object *p)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 620b4e020a9f..7f69e1d4fb5e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -281,6 +281,13 @@ struct i915_address_space {
>  	/** @root_obj: root object for dma-resv sharing by private objects */
>  	struct drm_i915_gem_object *root_obj;
>  
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> +	/* @vm_capture_list: list of vm captures */
> +	struct list_head vm_capture_list;
> +	/* @vm_capture_lock: protects vm_capture_list */
> +	struct mutex vm_capture_lock;
> +#endif
> +
>  	/* Global GTT */
>  	bool is_ggtt:1;
>  
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 969581e7106f..d97822f203fc 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -143,6 +143,8 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
>  	while (!ret && (vma = list_first_entry_or_null(&obj->vma.list,
>  						       struct i915_vma,
>  						       obj_link))) {
> +		bool sync_unbind = true;
> +
>  		list_move_tail(&vma->obj_link, &still_in_list);
>  		if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
>  			continue;
> @@ -171,8 +173,18 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
>  		 * and destroy the vma from under us.
>  		 */
>  
> +		/*
> +		 * Synchronously unbind persistent mappings with capture
> +		 * request so that vma->resource is valid in the error capture
> +		 * path without needing extra reference taking in execbuf path.
> +		 */
> +		if (!mutex_lock_interruptible(&vma->vm->vm_capture_lock)) {
> +			sync_unbind = !list_empty(&vma->vm_capture_link);
> +			mutex_unlock(&vma->vm->vm_capture_lock);
> +		}

this, as well?

> +
>  		ret = -EBUSY;
> -		if (flags & I915_GEM_OBJECT_UNBIND_ASYNC) {
> +		if (!sync_unbind && (flags & I915_GEM_OBJECT_UNBIND_ASYNC)) {
>  			assert_object_held(vma->obj);
>  			ret = i915_vma_unbind_async(vma, vm_trylock);
>  		}
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 9d5d5a397b64..5ccd1eaea2a5 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1460,6 +1460,49 @@ capture_vma(struct intel_engine_capture_vma *next,
>  	return next;
>  }
>  
> +static struct intel_engine_capture_vma *
> +capture_user_vm(struct intel_engine_capture_vma *capture,
> +		struct i915_address_space *vm, gfp_t gfp)
> +{
> +	struct list_head vm_capture_list;
> +	struct i915_vma *vma, *vn;
> +	int err;
> +
> +	INIT_LIST_HEAD(&vm_capture_list);
> +
> +	err = mutex_lock_interruptible(&vm->vm_capture_lock);
> +	if (err)
> +		return capture;
> +
> +	/* vma->resource should be checked with vm->mutex held */
> +	err = mutex_lock_interruptible(&vm->mutex);
> +	if (err)
> +		goto skip_user_vm_capture;
> +
> +	list_for_each_entry_safe(vma, vn, &vm->vm_capture_list,
> +				 vm_capture_link) {
> +		if (drm_WARN_ONCE(&vm->i915->drm, !vma->resource,
> +				  "vma->resource expected!\n"))
> +			continue;
> +
> +		i915_vma_resource_get(vma->resource);
> +		list_move_tail(&vma->vm_capture_link, &vm_capture_list);
> +	}
> +	mutex_unlock(&vm->mutex);
> +
> +	list_for_each_entry(vma, &vm_capture_list, vm_capture_link) {
> +		capture = capture_vma_snapshot(capture, vma->resource,
> +					       gfp, "user");
> +		i915_vma_resource_put(vma->resource);
> +	}
> +	list_splice_tail(&vm_capture_list, &vm->vm_capture_list);
> +
> +skip_user_vm_capture:
> +	mutex_unlock(&vm->vm_capture_lock);
> +
> +	return capture;
> +}

By any chance we want to have them all here in i915_gpu_error.c?
Does it look ugly?

Andi

> +
>  static struct intel_engine_capture_vma *
>  capture_user(struct intel_engine_capture_vma *capture,
>  	     const struct i915_request *rq,
