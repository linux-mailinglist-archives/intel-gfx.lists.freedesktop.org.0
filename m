Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B21DB11CF9A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:20:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A2789FC3;
	Thu, 12 Dec 2019 14:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E68B089F0B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:20:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19555891-1500050 for multiple; Thu, 12 Dec 2019 14:19:08 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
References: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157616034917.4546.15052864218216216334@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Dec 2019 14:19:09 +0000
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

Quoting Abdiel Janulgue (2019-12-12 11:34:38)
> Fault handler to handle missing pages for lmem objects.
> 
> v3: Add get_vm_cpu_ops, iterate over all memory regions in the
>     lmem selftest, use remap_io_mapping.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |  40 +++++
>  drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |   6 +
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  32 +++-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   1 +
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 137 +++++++++++++++---
>  5 files changed, 188 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> index 0e2bf6b7e143..bbe625935005 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
> @@ -6,8 +6,36 @@
>  #include "intel_memory_region.h"
>  #include "gem/i915_gem_region.h"
>  #include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_mman.h"
>  #include "i915_drv.h"
>  
> +vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
> +{
> +       struct vm_area_struct *area = vmf->vma;
> +       struct i915_mmap_offset *priv = area->vm_private_data;
> +       struct drm_i915_gem_object *obj = priv->obj;
> +       struct intel_memory_region *mem = obj->mm.region;
> +       unsigned long size = area->vm_end - area->vm_start;
> +       bool write = area->vm_flags & VM_WRITE;
> +       int ret;
> +
> +       /* Sanity check that we allow writing into this object */
> +       if (i915_gem_object_is_readonly(obj) && write)
> +               return VM_FAULT_SIGBUS;
> +
> +       ret = i915_gem_object_pin_pages(obj);
> +       if (ret)
> +               return i915_error_to_vmf_fault(ret);
> +
> +       ret = remap_io_mapping(area, area->vm_start,
> +                              i915_gem_object_lmem_io_pfn(obj, 0), size,
> +                              &mem->iomap);

So this implementation only works with contiguous objects, right?

if (GEM_WARN_ON(obj_noncontiguous(obj)))
	return VM_FAULT_SIGBUS;

I think for future awareness.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
