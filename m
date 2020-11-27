Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9231F2C6626
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 14:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739A889B06;
	Fri, 27 Nov 2020 13:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EA889B06
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 13:02:09 +0000 (UTC)
IronPort-SDR: /1J33CGd6fDu7pYLJKd88Uap6FFKOoSkWAMXm2Wk2SoLS1G7fi13K2y4+TGczy9D46pZSPpCFw
 bsj+6mWtniCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172488236"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172488236"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 05:02:08 -0800
IronPort-SDR: N+rdNr6VIZxGU1FsvqoC+RrAts/w1gg4ljh1g4qMCACpx2ZRkyHQP1W6yEB2MTAQ/iqfr+Pu4U
 C9zGqsmuSpLA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="363157270"
Received: from jmikkola-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.161])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 05:02:00 -0800
MIME-Version: 1.0
In-Reply-To: <20201124060755.1405602-4-ira.weiny@intel.com>
References: <20201124060755.1405602-1-ira.weiny@intel.com>
 <20201124060755.1405602-4-ira.weiny@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Andrew Morton <akpm@linux-foundation.org>, ira.weiny@intel.com
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160648211578.10416.3269409785516897908@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 27 Nov 2020 15:01:56 +0200
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
Cc: Chao Yu <yuchao0@huawei.com>, Alexei Starovoitov <ast@kernel.org>, David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>, Kirti Wankhede <kwankhede@nvidia.com>, Ira Weiny <ira.weiny@intel.com>, Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@infradead.org>, Daniel Borkmann <daniel@iogearbox.net>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, intel-gfx@lists.freedesktop.org, Josef Bacik <josef@toxicpanda.com>, Jérôme Glisse <jglisse@redhat.com>, Brian King <brking@us.ibm.com>, Al Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, "Martin K. Petersen" <martin.petersen@oracle.com>, Nicolas Pitre <nico@fluxnic.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Hansen <dave.hansen@intel.com>, linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>, Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ intel-gfx mailing list

Quoting ira.weiny@intel.com (2020-11-24 08:07:41)
> From: Ira Weiny <ira.weiny@intel.com>
> 
> The pattern of kmap/mem*/kunmap is repeated.  Use the new mem*_page()
> calls instead.
> 
> Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> ---
>  drivers/gpu/drm/gma500/gma_display.c      | 7 +++----
>  drivers/gpu/drm/gma500/mmu.c              | 4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 ++----
>  drivers/gpu/drm/i915/gt/intel_gtt.c       | 9 ++-------
>  drivers/gpu/drm/i915/gt/shmem_utils.c     | 8 +++-----

Are you looking to merge all these from the same tree, or first merge
the first patch and then trickle the rest through their own trees?
Our last -next PR was already sent for i915, so I would queue this
only for 5.12.

In any case, if you could split the i915 changes to a separate patch
(we have multiple sub-trees in drm), those are:

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

The gma500 changes also appear correct, so feel free to apply the
R-b for those, too.

Regards, Joonas

>  5 files changed, 12 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/gma500/gma_display.c b/drivers/gpu/drm/gma500/gma_display.c
> index 3df6d6e850f5..f81114594211 100644
> --- a/drivers/gpu/drm/gma500/gma_display.c
> +++ b/drivers/gpu/drm/gma500/gma_display.c
> @@ -9,6 +9,7 @@
>  
>  #include <linux/delay.h>
>  #include <linux/highmem.h>
> +#include <linux/pagemap.h>
>  
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_fourcc.h>
> @@ -334,7 +335,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
>         struct gtt_range *gt;
>         struct gtt_range *cursor_gt = gma_crtc->cursor_gt;
>         struct drm_gem_object *obj;
> -       void *tmp_dst, *tmp_src;
> +       void *tmp_dst;
>         int ret = 0, i, cursor_pages;
>  
>         /* If we didn't get a handle then turn the cursor off */
> @@ -400,9 +401,7 @@ int gma_crtc_cursor_set(struct drm_crtc *crtc,
>                 /* Copy the cursor to cursor mem */
>                 tmp_dst = dev_priv->vram_addr + cursor_gt->offset;
>                 for (i = 0; i < cursor_pages; i++) {
> -                       tmp_src = kmap(gt->pages[i]);
> -                       memcpy(tmp_dst, tmp_src, PAGE_SIZE);
> -                       kunmap(gt->pages[i]);
> +                       memcpy_from_page(tmp_dst, gt->pages[i], 0, PAGE_SIZE);
>                         tmp_dst += PAGE_SIZE;
>                 }
>  
> diff --git a/drivers/gpu/drm/gma500/mmu.c b/drivers/gpu/drm/gma500/mmu.c
> index 505044c9a673..8a0856c7f439 100644
> --- a/drivers/gpu/drm/gma500/mmu.c
> +++ b/drivers/gpu/drm/gma500/mmu.c
> @@ -5,6 +5,7 @@
>   **************************************************************************/
>  
>  #include <linux/highmem.h>
> +#include <linux/pagemap.h>
>  
>  #include "mmu.h"
>  #include "psb_drv.h"
> @@ -204,8 +205,7 @@ struct psb_mmu_pd *psb_mmu_alloc_pd(struct psb_mmu_driver *driver,
>  
>         kunmap(pd->p);
>  
> -       clear_page(kmap(pd->dummy_page));
> -       kunmap(pd->dummy_page);
> +       memzero_page(pd->dummy_page, 0, PAGE_SIZE);
>  
>         pd->tables = vmalloc_user(sizeof(struct psb_mmu_pt *) * 1024);
>         if (!pd->tables)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 75e8b71c18b9..8a25e08edd18 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -558,7 +558,7 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
>         do {
>                 unsigned int len = min_t(typeof(size), size, PAGE_SIZE);
>                 struct page *page;
> -               void *pgdata, *vaddr;
> +               void *pgdata;
>  
>                 err = pagecache_write_begin(file, file->f_mapping,
>                                             offset, len, 0,
> @@ -566,9 +566,7 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
>                 if (err < 0)
>                         goto fail;
>  
> -               vaddr = kmap(page);
> -               memcpy(vaddr, data, len);
> -               kunmap(page);
> +               memcpy_to_page(page, 0, data, len);
>  
>                 err = pagecache_write_end(file, file->f_mapping,
>                                           offset, len, len,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 3f1114b58b01..f3d7c601d362 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -153,13 +153,8 @@ static void poison_scratch_page(struct drm_i915_gem_object *scratch)
>         if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>                 val = POISON_FREE;
>  
> -       for_each_sgt_page(page, sgt, scratch->mm.pages) {
> -               void *vaddr;
> -
> -               vaddr = kmap(page);
> -               memset(vaddr, val, PAGE_SIZE);
> -               kunmap(page);
> -       }
> +       for_each_sgt_page(page, sgt, scratch->mm.pages)
> +               memset_page(page, val, 0, PAGE_SIZE);
>  }
>  
>  int setup_scratch_page(struct i915_address_space *vm)
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index f011ea42487e..2d5f1f2e803d 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -95,19 +95,17 @@ static int __shmem_rw(struct file *file, loff_t off,
>                 unsigned int this =
>                         min_t(size_t, PAGE_SIZE - offset_in_page(off), len);
>                 struct page *page;
> -               void *vaddr;
>  
>                 page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
>                                                    GFP_KERNEL);
>                 if (IS_ERR(page))
>                         return PTR_ERR(page);
>  
> -               vaddr = kmap(page);
>                 if (write)
> -                       memcpy(vaddr + offset_in_page(off), ptr, this);
> +                       memcpy_to_page(page, offset_in_page(off), ptr, this);
>                 else
> -                       memcpy(ptr, vaddr + offset_in_page(off), this);
> -               kunmap(page);
> +                       memcpy_from_page(ptr, page, offset_in_page(off), this);
> +
>                 put_page(page);
>  
>                 len -= this;
> -- 
> 2.28.0.rc0.12.gb6a658bd00c9
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
