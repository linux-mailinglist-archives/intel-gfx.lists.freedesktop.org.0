Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC3F5A6BEC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 20:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41C510E33D;
	Tue, 30 Aug 2022 18:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B1010E334;
 Tue, 30 Aug 2022 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661883562; x=1693419562;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=irj7/37/9zfVPiRGKjFFo/tJKLj2B+Ot+UiCkz3KDu8=;
 b=nmxvOQunTiU7mqalMIpunDwFhSZD//C/whJ4dxMyI2rxlYnHkMD4bsY0
 opawOh7hPD81VGoqToGTnxZFRgtNMDlwg3UrZeDnNBKtuXdMtWlEfcsc7
 v50Re9g+sdP0pafULvgTjb4keBdd/X5A4x1XMLeJjiI58ZHzlmtCf3cAr
 90QQjkAW7/gDMZ6nHOwHkO93alZW+lQltbWnRXMHJa4wpprlWW3I25wmT
 d1bCrwfQ7DgTOgAFd43vaVgk4VDleOrRKCSdVr8OYrn4GznNHuXo9DruH
 Aq2zsdvnQpozZnT3GtZQqaL4Hy/7MZZbjA2CtnrjY0MPGnQySoYAG/AVf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275667595"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="275667595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 11:19:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="754145072"
Received: from akidokox-mobl.ger.corp.intel.com (HELO [10.213.233.249])
 ([10.213.233.249])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 11:19:19 -0700
Message-ID: <620182f7-847b-fcba-88d5-ae8d803d4bd1@intel.com>
Date: Tue, 30 Aug 2022 19:19:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.0
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20220827194403.6495-1-andi.shyti@linux.intel.com>
 <20220827194403.6495-5-andi.shyti@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220827194403.6495-5-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH v3 04/17] drm/i915: Implement bind and
 unbind of object
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
Cc: Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 27/08/2022 20:43, Andi Shyti wrote:
> From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> 
> Implement the bind and unbind of an object at the specified GPU virtual
> addresses.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h   |  21 ++
>   .../drm/i915/gem/i915_gem_vm_bind_object.c    | 322 ++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_gtt.c           |  10 +
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   9 +
>   drivers/gpu/drm/i915/i915_driver.c            |   1 +
>   drivers/gpu/drm/i915/i915_vma.c               |   3 +-
>   drivers/gpu/drm/i915/i915_vma.h               |   2 -
>   drivers/gpu/drm/i915/i915_vma_types.h         |  14 +
>   include/uapi/drm/i915_drm.h                   | 163 +++++++++
>   10 files changed, 543 insertions(+), 3 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
>   create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff32..4e1627e96c6e0 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -165,6 +165,7 @@ gem-y += \
>   	gem/i915_gem_ttm_move.o \
>   	gem/i915_gem_ttm_pm.o \
>   	gem/i915_gem_userptr.o \
> +	gem/i915_gem_vm_bind_object.o \
>   	gem/i915_gem_wait.o \
>   	gem/i915_gemfs.o
>   i915-y += \
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> new file mode 100644
> index 0000000000000..ebc493b7dafc1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_GEM_VM_BIND_H
> +#define __I915_GEM_VM_BIND_H
> +
> +#include "i915_drv.h"
> +
> +struct i915_vma *
> +i915_gem_vm_bind_lookup_vma(struct i915_address_space *vm, u64 va);
> +void i915_gem_vm_bind_remove(struct i915_vma *vma, bool release_obj);
> +
> +int i915_gem_vm_bind_ioctl(struct drm_device *dev, void *data,
> +			   struct drm_file *file);
> +int i915_gem_vm_unbind_ioctl(struct drm_device *dev, void *data,
> +			     struct drm_file *file);
> +
> +void i915_gem_vm_unbind_vma_all(struct i915_address_space *vm);
> +#endif /* __I915_GEM_VM_BIND_H */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> new file mode 100644
> index 0000000000000..dadd1d4b1761b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
> @@ -0,0 +1,322 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#include <linux/interval_tree_generic.h>
> +
> +#include "gem/i915_gem_vm_bind.h"
> +#include "gem/i915_gem_context.h"
> +#include "gt/gen8_engine_cs.h"
> +
> +#include "i915_drv.h"
> +#include "i915_gem_gtt.h"
> +
> +#define START(node) ((node)->start)
> +#define LAST(node) ((node)->last)
> +
> +INTERVAL_TREE_DEFINE(struct i915_vma, rb, u64, __subtree_last,
> +		     START, LAST, static inline, i915_vm_bind_it)
> +
> +#undef START
> +#undef LAST
> +
> +/**
> + * DOC: VM_BIND/UNBIND ioctls
> + *
> + * DRM_I915_GEM_VM_BIND/UNBIND ioctls allows UMD to bind/unbind GEM buffer
> + * objects (BOs) or sections of a BOs at specified GPU virtual addresses on a
> + * specified address space (VM). Multiple mappings can map to the same physical
> + * pages of an object (aliasing). These mappings (also referred to as persistent
> + * mappings) will be persistent across multiple GPU submissions (execbuf calls)
> + * issued by the UMD, without user having to provide a list of all required
> + * mappings during each submission (as required by older execbuf mode).
> + *
> + * The VM_BIND/UNBIND calls allow UMDs to request a timeline out fence for
> + * signaling the completion of bind/unbind operation.
> + *
> + * VM_BIND feature is advertised to user via I915_PARAM_VM_BIND_VERSION.
> + * User has to opt-in for VM_BIND mode of binding for an address space (VM)
> + * during VM creation time via I915_VM_CREATE_FLAGS_USE_VM_BIND extension.
> + *
> + * VM_BIND/UNBIND ioctl calls executed on different CPU threads concurrently
> + * are not ordered. Furthermore, parts of the VM_BIND/UNBIND operations can be
> + * done asynchronously, when valid out fence is specified.
> + *
> + * VM_BIND locking order is as below.
> + *
> + * 1) vm_bind_lock mutex will protect vm_bind lists. This lock is taken in
> + *    vm_bind/vm_unbind ioctl calls, in the execbuf path and while releasing the
> + *    mapping.
> + *
> + *    In future, when GPU page faults are supported, we can potentially use a
> + *    rwsem instead, so that multiple page fault handlers can take the read
> + *    side lock to lookup the mapping and hence can run in parallel.
> + *    The older execbuf mode of binding do not need this lock.
> + *
> + * 2) The object's dma-resv lock will protect i915_vma state and needs
> + *    to be held while binding/unbinding a vma in the async worker and while
> + *    updating dma-resv fence list of an object. Note that private BOs of a VM
> + *    will all share a dma-resv object.
> + *
> + * 3) Spinlock/s to protect some of the VM's lists like the list of
> + *    invalidated vmas (due to eviction and userptr invalidation) etc.
> + */
> +
> +/**
> + * i915_gem_vm_bind_lookup_vma() - lookup for the vma with a starting addr
> + * @vm: virtual address space in which vma needs to be looked for
> + * @va: starting addr of the vma
> + *
> + * retrieves the vma with a starting address from the vm's vma tree.
> + *
> + * Returns: returns vma on success, NULL on failure.
> + */
> +struct i915_vma *
> +i915_gem_vm_bind_lookup_vma(struct i915_address_space *vm, u64 va)
> +{
> +	lockdep_assert_held(&vm->vm_bind_lock);
> +
> +	return i915_vm_bind_it_iter_first(&vm->va, va, va);
> +}
> +
> +/**
> + * i915_gem_vm_bind_remove() - Remove vma from the vm bind list
> + * @vma: vma that needs to be removed
> + * @release_obj: object to be release or not
> + *
> + * Removes the vma from the vm's lists custom interval tree
> + */
> +void i915_gem_vm_bind_remove(struct i915_vma *vma, bool release_obj)
> +{
> +	lockdep_assert_held(&vma->vm->vm_bind_lock);
> +
> +	if (!list_empty(&vma->vm_bind_link)) {
> +		list_del_init(&vma->vm_bind_link);
> +		i915_vm_bind_it_remove(vma, &vma->vm->va);
> +
> +		/* Release object */
> +		if (release_obj)
> +			i915_gem_object_put(vma->obj);
> +	}
> +}
> +
> +static int i915_gem_vm_unbind_vma(struct i915_address_space *vm,
> +				  struct i915_vma *vma,
> +				  struct drm_i915_gem_vm_unbind *va)
> +{
> +	struct drm_i915_gem_object *obj;
> +	int ret;
> +
> +	if (vma) {
> +		obj = vma->obj;
> +		i915_vma_destroy(vma);
> +
> +		goto exit;
> +	}
> +
> +	if (!va)
> +		return -EINVAL;
> +
> +	ret = mutex_lock_interruptible(&vm->vm_bind_lock);
> +	if (ret)
> +		return ret;
> +
> +	va->start = gen8_noncanonical_addr(va->start);
> +	vma = i915_gem_vm_bind_lookup_vma(vm, va->start);
> +
> +	if (!vma)
> +		ret = -ENOENT;
> +	else if (vma->size != va->length)
> +		ret = -EINVAL;
> +
> +	if (ret) {
> +		mutex_unlock(&vm->vm_bind_lock);
> +		return ret;
> +	}
> +
> +	i915_gem_vm_bind_remove(vma, false);
> +
> +	mutex_unlock(&vm->vm_bind_lock);
> +
> +	/* Destroy vma and then release object */
> +	obj = vma->obj;
> +	ret = i915_gem_object_lock(obj, NULL);
> +	if (ret)
> +		return ret;
> +
> +	i915_vma_destroy(vma);
> +	i915_gem_object_unlock(obj);
> +
> +exit:
> +	i915_gem_object_put(obj);
> +
> +	return 0;
> +}
> +
> +/**
> + * i915_gem_vm_unbind_vma_all() - Unbind all vmas from an address space
> + * @vm: Address spece from which vma binding needs to be removed
> + *
> + * Unbind all userspace requested object binding
> + */
> +void i915_gem_vm_unbind_vma_all(struct i915_address_space *vm)
> +{
> +	struct i915_vma *vma, *t;
> +
> +	list_for_each_entry_safe(vma, t, &vm->vm_bound_list, vm_bind_link)
> +		WARN_ON(i915_gem_vm_unbind_vma(vm, vma, NULL));
> +}
> +
> +static struct i915_vma *vm_bind_get_vma(struct i915_address_space *vm,
> +					struct drm_i915_gem_object *obj,
> +					struct drm_i915_gem_vm_bind *va)
> +{
> +	struct i915_ggtt_view view;

Should that be renamed to i915_gtt_view? So all of this just works with 
ppgtt insertion, as-is? I'm impressed.

> +	struct i915_vma *vma;
> +
> +	va->start = gen8_noncanonical_addr(va->start);
> +	vma = i915_gem_vm_bind_lookup_vma(vm, va->start);
> +	if (vma)
> +		return ERR_PTR(-EEXIST);
> +
> +	view.type = I915_GGTT_VIEW_PARTIAL;
> +	view.partial.offset = va->offset >> PAGE_SHIFT;
> +	view.partial.size = va->length >> PAGE_SHIFT;
> +	vma = i915_vma_instance(obj, vm, &view);
> +	if (IS_ERR(vma))
> +		return vma;
> +
> +	vma->start = va->start;
> +	vma->last = va->start + va->length - 1;
> +
> +	return vma;
> +}
> +
> +static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
> +				struct drm_i915_gem_vm_bind *va,
> +				struct drm_file *file)
> +{
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma = NULL;
> +	struct i915_gem_ww_ctx ww;
> +	u64 pin_flags;
> +	int ret = 0;
> +
> +	if (!vm->vm_bind_mode)
> +		return -EOPNOTSUPP;
> +
> +	obj = i915_gem_object_lookup(file, va->handle);

AFAICT this doesn't have to be an object from gem_create/ext...

> +	if (!obj)
> +		return -ENOENT;
> +
> +	if (!va->length ||
> +	    !IS_ALIGNED(va->offset | va->length,
> +			i915_gem_object_max_page_size(obj->mm.placements,
> +						      obj->mm.n_placements)) ||

...and so here max_page_size() can BUG_ON() if n_placements = 0. Also 
what should this return in that case?
