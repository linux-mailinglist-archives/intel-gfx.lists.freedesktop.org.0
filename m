Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C05D2FD9E6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 20:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934956E43C;
	Wed, 20 Jan 2021 19:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37606E43C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 19:43:54 +0000 (UTC)
IronPort-SDR: IJlcHhDsti/42+/7dSFTBaNE2mwYiA2woWeHflMQ57h5zQwZARbZP+aOhXULahkmlacBY82Z/9
 L2YZIxnYAh6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="175661435"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="175661435"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 11:43:54 -0800
IronPort-SDR: 1QMkRUiRBsUQ1SYVpsiIOfY2vgUOSJVW2e/n13Yd6yp1HUD4aOYf0nHy2TU9qkEag+WN2Pbboz
 FC1W7leOqNIA==
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="384986493"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 11:43:52 -0800
Date: Wed, 20 Jan 2021 21:43:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210120194349.GE1259803@ideak-desk.fi.intel.com>
References: <20210114201314.783648-3-imre.deak@intel.com>
 <20210115194101.1037430-1-imre.deak@intel.com>
 <161114416949.24677.9355507827845088518@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161114416949.24677.9355507827845088518@build.alporthouse.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 20, 2021 at 12:02:49PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2021-01-15 19:41:00)
> > Add a simple helper to read data with the CPU from the page of a GEM
> > object. Do the read either via a kmap if the object has struct pages
> > or an iomap otherwise. This is needed by the next patch, reading a u64
> > value from the object (w/o requiring the obj to be mapped to the GPU).
> > 
> > Suggested by Chris.
> > 
> > v2 (Chris):
> > - Sanitize the type and order of func params.
> > - Avoid consts requiring too many casts.
> > - Use BUG_ON instead of WARN_ON, simplify the conditions.
> > - Fix __iomem sparse errors.
> > - Leave locking/syncing/pinning up to the caller, require only that the
> >   caller has pinned the object pages.
> > - Check for iomem backing store before reading via an iomap.
> > 
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c | 64 ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h |  8 +++
> >  2 files changed, 72 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > index 00d24000b5e8..67956a5f5fe3 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> > @@ -32,6 +32,7 @@
> >  #include "i915_gem_mman.h"
> >  #include "i915_gem_object.h"
> >  #include "i915_globals.h"
> > +#include "i915_memcpy.h"
> >  #include "i915_trace.h"
> >  
> >  static struct i915_global_object {
> > @@ -383,6 +384,69 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
> >         }
> >  }
> >  
> > +static void
> > +i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> > +{
> > +       void *src_map;
> > +       void *src_ptr;
> > +
> > +       src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
> > +
> > +       src_ptr = src_map + offset_in_page(offset);
> > +       if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
> > +               drm_clflush_virt_range(src_ptr, size);
> > +       memcpy(dst, src_ptr, size);
> > +
> > +       kunmap_atomic(src_map);
> > +}
> > +
> > +static void
> > +i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> > +{
> > +       void __iomem *src_map;
> > +       void __iomem *src_ptr;
> > +
> > +       src_map = io_mapping_map_wc(&obj->mm.region->iomap,
> > +                                   i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT),
> 
> I've been corrected in that one needs to use
> 
> 	dma_addr_t dma =
> 		i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT);
> 
> 	src_map = io_mapping_map_wc(&obj->mm.region->iomap,
>        				    dma - obj->mm.region->region.start,

Thanks, will fix this. It happened to work on DG1, where region.start is
always 0.

> 
> > +                                   PAGE_SIZE);
> > +
> > +       src_ptr = src_map + offset_in_page(offset);
> > +       if (!i915_memcpy_from_wc(dst, (void __force *)src_ptr, size))
> > +               memcpy_fromio(dst, src_ptr, size);
> > +
> > +       io_mapping_unmap(src_map);
> > +}
> > +
> > +/**
> > + * i915_gem_object_read_from_page - read data from the page of a GEM object
> > + * @obj: GEM object to read from
> > + * @offset: offset within the object
> > + * @dst: buffer to store the read data
> > + * @size: size to read
> > + *
> > + * Reads data from @obj at the specified offset. The requested region to read
> > + * from can't cross a page boundary. The caller must ensure that @obj pages
> > + * are pinned and that @obj is synced wrt. any related writes.
> > + *
> > + * Returns 0 on sucess or -ENODEV if the type of @obj's backing store is
> > + * unsupported.
> > + */
> > +int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
> > +{
> > +       GEM_BUG_ON(offset >= obj->base.size);
> > +       GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
> > +       GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
> > +
> > +       if (i915_gem_object_has_struct_page(obj))
> > +               i915_gem_object_read_from_page_kmap(obj, offset, dst, size);
> > +       else if (i915_gem_object_has_iomem(obj))
> > +               i915_gem_object_read_from_page_iomap(obj, offset, dst, size);
> > +       else
> > +               return -ENODEV;
> 
> Otherwise, that looks to be as simple as possible (offloading the setup
> to the caller where it is already done), so
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> with the dma offset before Matthew corrects me, again.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
