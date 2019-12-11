Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E294811B14F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 16:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348C86EB6E;
	Wed, 11 Dec 2019 15:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D48C6EB6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 15:30:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19542883-1500050 for multiple; Wed, 11 Dec 2019 15:29:41 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211055907.8398-1-abdiel.janulgue@linux.intel.com>
References: <20191211055907.8398-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157607818168.27099.15375241362963775525@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 15:29:41 +0000
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

So why aren't we using remap_io_mapping() ?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
