Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5692F6D1F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 22:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA9C6E154;
	Thu, 14 Jan 2021 21:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018356E154
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 21:23:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23600536-1500050 for multiple; Thu, 14 Jan 2021 21:23:53 +0000
MIME-Version: 1.0
In-Reply-To: <20210114201314.783648-3-imre.deak@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <20210114201314.783648-3-imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 21:23:51 +0000
Message-ID: <161065943192.19482.15482952281257910023@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v7 2/3] drm/i915/gem: Add a helper to read
 data from a GEM object page
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Imre Deak (2021-01-14 20:13:13)
> Add a simple helper to read data with the CPU from the page of a GEM
> object. Do the read either via a kmap if the object has struct pages
> or an iomap otherwise. This is needed by the next patch, reading a u64
> value from the object (w/o requiring the obj to be mapped to the GPU).
> 
> Suggested by Chris.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 75 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  2 +
>  2 files changed, 77 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 00d24000b5e8..010f8d735e40 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -32,6 +32,7 @@
>  #include "i915_gem_mman.h"
>  #include "i915_gem_object.h"
>  #include "i915_globals.h"
> +#include "i915_memcpy.h"
>  #include "i915_trace.h"
>  
>  static struct i915_global_object {
> @@ -383,6 +384,80 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>         }
>  }
>  
> +static void
> +i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
[noted later about parameter order + types]

> +{
> +       const void *src_map;
> +       const void *src_ptr;
> +
> +       src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
> +
> +       src_ptr = src_map + offset_in_page(offset);
> +       if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
> +               drm_clflush_virt_range((void *)src_ptr, size);
> +       memcpy(dst, src_ptr, size);
> +
> +       kunmap_atomic((void *)src_map);

Live without marking the src pointers as const*.

> +}
> +
> +static void
> +i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, unsigned long offset, int size, void *dst)
> +{
> +       const void __iomem *src_map;
> +       const void __iomem *src_ptr;
> +
> +       src_map = io_mapping_map_wc(&obj->mm.region->iomap,
> +                                   i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT),
> +                                   PAGE_SIZE);
> +
> +       src_ptr = src_map + offset_in_page(offset);
> +       if (!i915_memcpy_from_wc(dst, src_ptr, size))
> +               memcpy(dst, src_ptr, size);

Sparse will complain about the mixed __iomem/regular pointers. So you
might as well use memcpy_from_io() here. Unfortunately memcpy_from_wc
needs explicit casting. A task for rainy day is massaging
i915_memcpy_from_wc() to be sparse clean for iomem.

> +
> +       io_mapping_unmap((void __iomem *)src_map);
> +}
> +
> +/**
> + * i915_gem_object_read_from_page - read data from the page of a GEM object
> + * @obj: GEM object to read from
> + * @offset: offset within the object
> + * @size: size to read
> + * @dst: buffer to store the read data
> + *
> + * Reads data from @obj after syncing against any pending GPU writes on it.
> + * The requested region to read from can't cross a page boundary.
> + *
> + * Returns 0 on sucess, negative error code on failre.
> + */
> +int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, unsigned long offset, size_t size, void *dst)

offset -> u64
size_t size? meh, it must only be an int

We use the convention of 
read_from_page(obj, offset_into_obj,
	       dst, length_of_read_into_dst)
for parameter ordering.

> +{
> +       int ret;
> +
> +       WARN_ON(offset + size > obj->base.size ||
> +               offset_in_page(offset) + size > PAGE_SIZE);

This is only from internal users, so GEM_BUG_ON() (or you would use
if(GEM_WARN_ON) return -EINVAL).

GEM_BUG_ON(offset > obj->base.size);
GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
(since size is a multiple of pages)

> +
> +       i915_gem_object_lock(obj, NULL);
> +
> +       ret = i915_gem_object_wait(obj, 0, MAX_SCHEDULE_TIMEOUT);
> +       if (ret)
> +               goto unlock;

Is there an absolute requirement for this read to be serialised against
everything? If not, let the caller decide if they need some sort of
flush/wait before reading, and the lock can be removed.

In any case, always prefer interruptible waits and if there's a callpath
that absolutely must not be interruptible, pass that information along
the arguments.

> +       ret = i915_gem_object_pin_pages(obj);

So at present one would not need to lock the object for the pages.
And then we would not need to hold the lock across the read as we hold
the pages.

> +       if (ret)
> +               goto unlock;
> +
> +       if (i915_gem_object_has_struct_page(obj))
> +               i915_gem_object_read_from_page_kmap(obj, offset, size, dst);
> +       else
else if (i915_gem_object_is_iomem(obj))
> +               i915_gem_object_read_from_page_iomap(obj, offset, size, dst);
else
	ret = -ENODEV;

But on the whole, this works and is agnostic enough to handle current HW.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
