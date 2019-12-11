Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B7C11A78D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 10:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 731C789B9E;
	Wed, 11 Dec 2019 09:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA918919D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 09:39:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19537958-1500050 for multiple; Wed, 11 Dec 2019 09:39:40 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211055907.8398-1-abdiel.janulgue@linux.intel.com>
References: <20191211055907.8398-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157605718013.24612.5893630610106657830@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 09:39:40 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add lmem fault handler
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Abdiel Janulgue (2019-12-11 05:59:07)
> Fault handler to handle missing pages for lmem objects.
> 
> v2: Handle ENXIO in fault error, account for offset in region start
>     for fake lmem (Matt).
>     Add selftest (Chris).
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |  44 ++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |   6 +
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  16 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   1 +
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 105 ++++++++++++++----
>  5 files changed, 147 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> index 0e2bf6b7e143..7e6d8d1546e3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> @@ -6,8 +6,40 @@
>  #include "intel_memory_region.h"
>  #include "gem/i915_gem_region.h"
>  #include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_mman.h"
>  #include "i915_drv.h"
>  
> +vm_fault_t vm_fault_lmem(struct vm_fault *vmf)
> +{
> +       struct vm_area_struct *area = vmf->vma;
> +       struct i915_mmap_offset *priv = area->vm_private_data;
> +       struct drm_i915_gem_object *obj = priv->obj;
> +       unsigned long size = area->vm_end - area->vm_start;
> +       bool write = area->vm_flags & VM_WRITE;
> +       vm_fault_t vmf_ret;
> +       int i, ret;
> +
> +       /* Sanity check that we allow writing into this object */
> +       if (i915_gem_object_is_readonly(obj) && write)
> +               return VM_FAULT_SIGBUS;
> +
> +       ret = i915_gem_object_pin_pages(obj);
> +       if (ret)
> +               return i915_error_to_vmf_fault(ret);
> +
> +       for (i = 0; i < size >> PAGE_SHIFT; i++) {
> +               vmf_ret = vmf_insert_pfn(area,
> +                                        (unsigned long)area->vm_start + i * PAGE_SIZE,
> +                                        i915_gem_object_lmem_io_pfn(obj, i));
> +               if (vmf_ret != VM_FAULT_NOPAGE)
> +                       break;
> +       }
> +
> +       i915_gem_object_unpin_pages(obj);
> +
> +       return vmf_ret;
> +}
> +
>  const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
>         .flags = I915_GEM_OBJECT_HAS_IOMEM,
>  
> @@ -56,6 +88,18 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
>         return io_mapping_map_wc(&obj->mm.region->iomap, offset, size);
>  }
>  
> +unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
> +                                         unsigned long n)
> +{
> +       struct intel_memory_region *mem = obj->mm.region;
> +       resource_size_t offset;
> +
> +       offset = i915_gem_object_get_dma_address(obj, n);
> +       offset -= mem->region.start;
> +
> +       return (mem->io_start + offset) >> PAGE_SHIFT;
> +}
> +
>  bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
>  {
>         return obj->ops == &i915_gem_lmem_obj_ops;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> index 7c176b8b7d2f..917ebef1529f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
> @@ -7,6 +7,7 @@
>  #define __I915_GEM_LMEM_H
>  
>  #include <linux/types.h>
> +#include <linux/mman.h>
>  
>  struct drm_i915_private;
>  struct drm_i915_gem_object;
> @@ -22,8 +23,13 @@ void __iomem *
>  i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
>                                         unsigned long n);
>  
> +unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
> +                                         unsigned long n);
> +
>  bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
>  
> +vm_fault_t vm_fault_lmem(struct vm_fault *vmf);
> +
>  struct drm_i915_gem_object *
>  i915_gem_object_create_lmem(struct drm_i915_private *i915,
>                             resource_size_t size,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 879fff8adc48..c67c07905df5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -11,6 +11,7 @@
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_requests.h"
>  
> +#include "i915_gem_lmem.h"
>  #include "i915_drv.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gem_ioctls.h"
> @@ -203,7 +204,7 @@ compute_partial_view(const struct drm_i915_gem_object *obj,
>         return view;
>  }
>  
> -static vm_fault_t i915_error_to_vmf_fault(int err)
> +vm_fault_t i915_error_to_vmf_fault(int err)
>  {
>         switch (err) {
>         default:
> @@ -216,6 +217,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
>  
>         case -ENOSPC: /* shmemfs allocation failure */
>         case -ENOMEM: /* our allocation failure */
> +       case -ENXIO:
>                 return VM_FAULT_OOM;
>  
>         case 0:
> @@ -560,7 +562,8 @@ __assign_mmap_offset(struct drm_file *file,
>         }
>  
>         if (mmap_type != I915_MMAP_TYPE_GTT &&
> -           !i915_gem_object_has_struct_page(obj)) {
> +           !i915_gem_object_has_struct_page(obj) &&
> +           !i915_gem_object_is_lmem(obj)) {

!i915_gem_object_type_has(STRUCT_PAGE | IOMEM)

>                 err = -ENODEV;
>                 goto out;
>         }
> @@ -694,6 +697,12 @@ static const struct vm_operations_struct vm_ops_cpu = {
>         .close = vm_close,
>  };
>  
> +static const struct vm_operations_struct vm_ops_lmem = {
> +       .fault = vm_fault_lmem,
> +       .open = vm_open,
> +       .close = vm_close,
> +};
> +
>  /*
>   * This overcomes the limitation in drm_gem_mmap's assignment of a
>   * drm_gem_object as the vma->vm_private_data. Since we need to
> @@ -784,6 +793,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>         }
>         vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
>  
> +       if (i915_gem_object_is_lmem(mmo->obj))
> +               vma->vm_ops = &vm_ops_lmem;

lmem or iomem?

vm_ops = get_vm_cpu_ops(obj);

	if (i915_gem_object_type_has(STRUCT_PAGE))
		return &vm_ops_cpu;

	if (i915_gem_object_type_has(IOMEM))
		return &vm_ops_iomem;

	GEM_BUG_ON(1);
	return NULL;

?

> +
>         return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> index 862e01b7cb69..aded4d0564c9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> @@ -23,6 +23,7 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma);
>  int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
>                               struct drm_device *dev,
>                               u32 handle, u64 *offset);
> +vm_fault_t i915_error_to_vmf_fault(int err);
>  
>  void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>  void i915_gem_object_release_mmap(struct drm_i915_gem_object *obj);
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 591435c5f368..d1335a586b7e 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -9,6 +9,8 @@
>  #include "gt/intel_engine_pm.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_pm.h"
> +#include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_region.h"
>  #include "huge_gem_object.h"
>  #include "i915_selftest.h"
>  #include "selftests/i915_random.h"
> @@ -726,24 +728,23 @@ static int igt_mmap_offset_exhaustion(void *arg)
>  }
>  
>  #define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))
> -static int igt_mmap(void *arg, enum i915_mmap_type type)
> +static int igt_mmap(struct drm_i915_private *i915, struct drm_i915_gem_object *obj,
> +                   enum i915_mmap_type type)
>  {
> -       struct drm_i915_private *i915 = arg;
> -       struct drm_i915_gem_object *obj;
>         struct i915_mmap_offset *mmo;
>         struct vm_area_struct *area;
>         unsigned long addr;
>         void *vaddr;
>         int err = 0, i;
>  
> -       if (!i915_ggtt_has_aperture(&i915->ggtt))
> -               return 0;
> -
> -       obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
> -       if (IS_ERR(obj))
> -               return PTR_ERR(obj);
> +       if (!i915_ggtt_has_aperture(&i915->ggtt) &&
> +           type == I915_MMAP_TYPE_GTT) {
> +               err = 0;
> +               goto out;
> +       }
>  
> -       vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
> +       vaddr = i915_gem_object_pin_map(obj, i915_gem_object_is_lmem(obj) ?
> +                                       I915_MAP_WC : I915_MAP_WB);
>         if (IS_ERR(vaddr)) {
>                 err = PTR_ERR(vaddr);
>                 goto out;
> @@ -827,12 +828,41 @@ static int igt_mmap(void *arg, enum i915_mmap_type type)
>  
>  static int igt_mmap_gtt(void *arg)
>  {
> -       return igt_mmap(arg, I915_MMAP_TYPE_GTT);
> +       struct drm_i915_private *i915 = arg;
> +       struct drm_i915_gem_object *obj =
> +               i915_gem_object_create_internal(i915, PAGE_SIZE);
> +       if (IS_ERR(obj))
> +               return PTR_ERR(obj);
> +
> +       return igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
>  }
>  
>  static int igt_mmap_cpu(void *arg)
>  {
> -       return igt_mmap(arg, I915_MMAP_TYPE_WC);
> +       struct drm_i915_private *i915 = arg;
> +       struct drm_i915_gem_object *obj =
> +               i915_gem_object_create_internal(i915, PAGE_SIZE);
> +       if (IS_ERR(obj))
> +               return PTR_ERR(obj);
> +
> +       return igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
> +}
> +
> +static int igt_mmap_lmem(void *arg)
> +{
> +       struct drm_i915_private *i915 = arg;
> +       struct drm_i915_gem_object *obj;
> +
> +       if (!HAS_LMEM(i915)) {
> +               pr_info("device lacks LMEM support, skipping\n");
> +               return 0;
> +       }
> +
> +       obj = i915_gem_object_create_lmem(i915, PAGE_SIZE, I915_BO_ALLOC_CONTIGUOUS);
> +       if (IS_ERR(obj))
> +               return PTR_ERR(obj);
> +
> +       return igt_mmap(i915, obj, I915_MMAP_TYPE_WC);

Could we not generalise these to iterate over all memory regions?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
