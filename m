Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D212FCF3E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 13:02:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D3289A57;
	Wed, 20 Jan 2021 12:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A60789A5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 12:02:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23648883-1500050 for multiple; Wed, 20 Jan 2021 12:02:50 +0000
MIME-Version: 1.0
In-Reply-To: <20210115194101.1037430-1-imre.deak@intel.com>
References: <20210114201314.783648-3-imre.deak@intel.com>
 <20210115194101.1037430-1-imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 12:02:49 +0000
Message-ID: <161114416949.24677.9355507827845088518@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v8 2/3] drm/i915/gem: Add a helper to read
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

Quoting Imre Deak (2021-01-15 19:41:00)
> Add a simple helper to read data with the CPU from the page of a GEM
> object. Do the read either via a kmap if the object has struct pages
> or an iomap otherwise. This is needed by the next patch, reading a u64
> value from the object (w/o requiring the obj to be mapped to the GPU).
> 
> Suggested by Chris.
> 
> v2 (Chris):
> - Sanitize the type and order of func params.
> - Avoid consts requiring too many casts.
> - Use BUG_ON instead of WARN_ON, simplify the conditions.
> - Fix __iomem sparse errors.
> - Leave locking/syncing/pinning up to the caller, require only that the
>   caller has pinned the object pages.
> - Check for iomem backing store before reading via an iomap.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 64 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h |  8 +++
>  2 files changed, 72 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 00d24000b5e8..67956a5f5fe3 100644
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
> @@ -383,6 +384,69 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>         }
>  }
>  
> +static void
> +i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> +{
> +       void *src_map;
> +       void *src_ptr;
> +
> +       src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
> +
> +       src_ptr = src_map + offset_in_page(offset);
> +       if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
> +               drm_clflush_virt_range(src_ptr, size);
> +       memcpy(dst, src_ptr, size);
> +
> +       kunmap_atomic(src_map);
> +}
> +
> +static void
> +i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> +{
> +       void __iomem *src_map;
> +       void __iomem *src_ptr;
> +
> +       src_map = io_mapping_map_wc(&obj->mm.region->iomap,
> +                                   i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT),

I've been corrected in that one needs to use

	dma_addr_t dma =
		i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT);

	src_map = io_mapping_map_wc(&obj->mm.region->iomap,
       				    dma - obj->mm.region->region.start,

> +                                   PAGE_SIZE);
> +
> +       src_ptr = src_map + offset_in_page(offset);
> +       if (!i915_memcpy_from_wc(dst, (void __force *)src_ptr, size))
> +               memcpy_fromio(dst, src_ptr, size);
> +
> +       io_mapping_unmap(src_map);
> +}
> +
> +/**
> + * i915_gem_object_read_from_page - read data from the page of a GEM object
> + * @obj: GEM object to read from
> + * @offset: offset within the object
> + * @dst: buffer to store the read data
> + * @size: size to read
> + *
> + * Reads data from @obj at the specified offset. The requested region to read
> + * from can't cross a page boundary. The caller must ensure that @obj pages
> + * are pinned and that @obj is synced wrt. any related writes.
> + *
> + * Returns 0 on sucess or -ENODEV if the type of @obj's backing store is
> + * unsupported.
> + */
> +int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> +{
> +       GEM_BUG_ON(offset >= obj->base.size);
> +       GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
> +       GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
> +
> +       if (i915_gem_object_has_struct_page(obj))
> +               i915_gem_object_read_from_page_kmap(obj, offset, dst, size);
> +       else if (i915_gem_object_has_iomem(obj))
> +               i915_gem_object_read_from_page_iomap(obj, offset, dst, size);
> +       else
> +               return -ENODEV;

Otherwise, that looks to be as simple as possible (offloading the setup
to the caller where it is already done), so

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

with the dma offset before Matthew corrects me, again.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
