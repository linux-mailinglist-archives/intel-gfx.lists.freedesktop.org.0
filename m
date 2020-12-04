Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D80F2CF178
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A49AC89D7B;
	Fri,  4 Dec 2020 16:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CF489E05
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 16:05:07 +0000 (UTC)
IronPort-SDR: +re+qc6ZguzSGOziYX2bxIvz9orcgqNM7p7gwN8PdXHfTFAZQ/aUTo5i3i5wDEfV1WLLAvvH6h
 nNEBuHyvfaGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="235001574"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="235001574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 08:05:06 -0800
IronPort-SDR: X+NoKo1QugeVrBMgw7pJWvCsfg1PJrSs+ULxdNu73Ly5U6/0rzxW0uRVlkZ83gEX1fjYMmRAhd
 pvIZzvQDizRw==
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="540754477"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 08:05:05 -0800
Date: Fri, 4 Dec 2020 08:05:04 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20201204160504.GH1563847@iweiny-DESK2.sc.intel.com>
References: <20201124060755.1405602-1-ira.weiny@intel.com>
 <20201124060755.1405602-4-ira.weiny@intel.com>
 <160648211578.10416.3269409785516897908@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160648211578.10416.3269409785516897908@jlahtine-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
Subject: Re: [Intel-gfx] [PATCH 03/17] drivers/gpu: Convert to mem*_page()
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
Cc: Chao Yu <yuchao0@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>,
 intel-gfx@lists.freedesktop.org, Josef Bacik <josef@toxicpanda.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Brian King <brking@us.ibm.com>, Al Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 27, 2020 at 03:01:56PM +0200, Joonas Lahtinen wrote:
> + intel-gfx mailing list
> 
> Quoting ira.weiny@intel.com (2020-11-24 08:07:41)
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > The pattern of kmap/mem*/kunmap is repeated.  Use the new mem*_page()
> > calls instead.
> > 
> > Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> > ---
> >  drivers/gpu/drm/gma500/gma_display.c      | 7 +++----
> >  drivers/gpu/drm/gma500/mmu.c              | 4 ++--
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 ++----
> >  drivers/gpu/drm/i915/gt/intel_gtt.c       | 9 ++-------
> >  drivers/gpu/drm/i915/gt/shmem_utils.c     | 8 +++-----
> 
> Are you looking to merge all these from the same tree, or first merge
> the first patch and then trickle the rest through their own trees?

I was thinking that they would go through Andrew's tree in bulk.  But as I go
through all the 'variants' including adding any kmap_atomic() variants it is
getting to be a pretty big change.  I'm trying to use Coccinelle but I'm not
100% confident in it working, more precisely in my skill to make it work.

So I think I'm going to submit the base patch to Andrew today (with some
cleanups per the comments in this thread).

If Andrew could land that then I will can submit separate patches to each
subsystem which would get full testing...  :-(

That is best.

Thanks for making me think on this,
Ira

> Our last -next PR was already sent for i915, so I would queue this
> only for 5.12.
> 
> In any case, if you could split the i915 changes to a separate patch
> (we have multiple sub-trees in drm), those are:
> 
> Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> 
> The gma500 changes also appear correct, so feel free to apply the
> R-b for those, too.
> 
> Regards, Joonas
> 
> >  5 files changed, 12 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/gma500/gma_display.c b/drivers/gpu/drm/gma500/gma_display.c
> > index 3df6d6e850f5..f81114594211 100644
> > --- a/drivers/gpu/drm/gma500/gma_display.c
> > +++ b/drivers/gpu/drm/gma500/gma_display.c
> > @@ -9,6 +9,7 @@
> >  
> >  #include <linux/delay.h>
> >  #include <linux/highmem.h>
> > +#include <linux/pagemap.h>
> >  
> >  #include <drm/drm_crtc.h>
> >  #include <drm/drm_fourcc.h>
> > @@ -334,7 +335,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
> >         struct gtt_range *gt;
> >         struct gtt_range *cursor_gt = gma_crtc->cursor_gt;
> >         struct drm_gem_object *obj;
> > -       void *tmp_dst, *tmp_src;
> > +       void *tmp_dst;
> >         int ret = 0, i, cursor_pages;
> >  
> >         /* If we didn't get a handle then turn the cursor off */
> > @@ -400,9 +401,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
> >                 /* Copy the cursor to cursor mem */
> >                 tmp_dst = dev_priv->vram_addr + cursor_gt->offset;
> >                 for (i = 0; i < cursor_pages; i++) {
> > -                       tmp_src = kmap(gt->pages[i]);
> > -                       memcpy(tmp_dst, tmp_src, PAGE_SIZE);
> > -                       kunmap(gt->pages[i]);
> > +                       memcpy_from_page(tmp_dst, gt->pages[i], 0, PAGE_SIZE);
> >                         tmp_dst += PAGE_SIZE;
> >                 }
> >  
> > diff --git a/drivers/gpu/drm/gma500/mmu.c b/drivers/gpu/drm/gma500/mmu.c
> > index 505044c9a673..8a0856c7f439 100644
> > --- a/drivers/gpu/drm/gma500/mmu.c
> > +++ b/drivers/gpu/drm/gma500/mmu.c
> > @@ -5,6 +5,7 @@
> >   **************************************************************************/
> >  
> >  #include <linux/highmem.h>
> > +#include <linux/pagemap.h>
> >  
> >  #include "mmu.h"
> >  #include "psb_drv.h"
> > @@ -204,8 +205,7 @@ struct psb_mmu_pd *psb_mmu_alloc_pd(struct psb_mmu_driver *driver,
> >  
> >         kunmap(pd->p);
> >  
> > -       clear_page(kmap(pd->dummy_page));
> > -       kunmap(pd->dummy_page);
> > +       memzero_page(pd->dummy_page, 0, PAGE_SIZE);
> >  
> >         pd->tables = vmalloc_user(sizeof(struct psb_mmu_pt *) * 1024);
> >         if (!pd->tables)
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > index 75e8b71c18b9..8a25e08edd18 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > @@ -558,7 +558,7 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
> >         do {
> >                 unsigned int len = min_t(typeof(size), size, PAGE_SIZE);
> >                 struct page *page;
> > -               void *pgdata, *vaddr;
> > +               void *pgdata;
> >  
> >                 err = pagecache_write_begin(file, file->f_mapping,
> >                                             offset, len, 0,
> > @@ -566,9 +566,7 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
> >                 if (err < 0)
> >                         goto fail;
> >  
> > -               vaddr = kmap(page);
> > -               memcpy(vaddr, data, len);
> > -               kunmap(page);
> > +               memcpy_to_page(page, 0, data, len);
> >  
> >                 err = pagecache_write_end(file, file->f_mapping,
> >                                           offset, len, len,
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > index 3f1114b58b01..f3d7c601d362 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > @@ -153,13 +153,8 @@ static void poison_scratch_page(struct drm_i915_gem_object *scratch)
> >         if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> >                 val = POISON_FREE;
> >  
> > -       for_each_sgt_page(page, sgt, scratch->mm.pages) {
> > -               void *vaddr;
> > -
> > -               vaddr = kmap(page);
> > -               memset(vaddr, val, PAGE_SIZE);
> > -               kunmap(page);
> > -       }
> > +       for_each_sgt_page(page, sgt, scratch->mm.pages)
> > +               memset_page(page, val, 0, PAGE_SIZE);
> >  }
> >  
> >  int setup_scratch_page(struct i915_address_space *vm)
> > diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> > index f011ea42487e..2d5f1f2e803d 100644
> > --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> > +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> > @@ -95,19 +95,17 @@ static int __shmem_rw(struct file *file, loff_t off,
> >                 unsigned int this =
> >                         min_t(size_t, PAGE_SIZE - offset_in_page(off), len);
> >                 struct page *page;
> > -               void *vaddr;
> >  
> >                 page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
> >                                                    GFP_KERNEL);
> >                 if (IS_ERR(page))
> >                         return PTR_ERR(page);
> >  
> > -               vaddr = kmap(page);
> >                 if (write)
> > -                       memcpy(vaddr + offset_in_page(off), ptr, this);
> > +                       memcpy_to_page(page, offset_in_page(off), ptr, this);
> >                 else
> > -                       memcpy(ptr, vaddr + offset_in_page(off), this);
> > -               kunmap(page);
> > +                       memcpy_from_page(ptr, page, offset_in_page(off), this);
> > +
> >                 put_page(page);
> >  
> >                 len -= this;
> > -- 
> > 2.28.0.rc0.12.gb6a658bd00c9
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
