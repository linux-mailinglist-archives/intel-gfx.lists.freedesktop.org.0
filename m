Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1B7513B2F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 20:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455F310E956;
	Thu, 28 Apr 2022 18:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4ED510E964
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 18:04:59 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id t16so4060699qtr.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 11:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GZa5PC2lzKZ7J7CFJJrKeGGahYlWOCJU0iuzE5VFx1I=;
 b=CZz60VgP2rwZw01s64+3c/7eJhCYG4pZyqPet1DMFIXIGh7WvL9S3UkYgoHc9RJvcJ
 1GEIBR11DD4WWaT79Dj/wHW/el1ZhQLlqDG5BNxt/ApkIB52q1SxceSDaAfhk8X1oKtM
 04UTYuI4botJBIxqg9UmLornuOQKDXhkvkVt1fq01xEg+YUruk/YnWEHfNUqbpiNjyQ0
 RTphF49mL6yMeY9+SrmNuLt2fW3wksWmlcZCrHp2522L1rc41YIRlGqx5eWLnXQwgfRR
 VM3ODnoxJxdec/+MoB48+5NTRIBw3CK+Ch3GzPucy2TFvhMf6TjE7Vs/7Xc5Vt50+eeM
 tSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GZa5PC2lzKZ7J7CFJJrKeGGahYlWOCJU0iuzE5VFx1I=;
 b=8GoHhXSfFnkRnzF9NIUl3t5D1PYpd/shqsXwzd11Dm0adkND7NrDt2NPQYyxcS0R78
 Icm3ql7JqJ8IWN1f8mQ4/ws9ndOlNpQ/uhOolJtywEoHl6K35XlA8+2KmEAgXND7Aq+7
 CnBlVlKf4nthrqZaKUkim5tR+9/77JZb7O44hGutS0IC2XEiP5HOm3ZOa3aZtfgJ+LLQ
 L2BME5rGdg+t7bP6lJk72uwChDYI1UbdSwnqpo/KPqw/omMgs8R+xib1fsU9wLkeIB+T
 k3FgfXPfwWAxScUYLWKpzNxSRdUNJSYVNK/YfPkGFUPNchvO+n5aC+cKrCCW/UXksW6K
 eP0g==
X-Gm-Message-State: AOAM533utZtGSPmtTcUV74OcFJ5IIP6PQRkAwOA7ngN5Dv2KAXO3FNUt
 4fjxRaFzM1+pyn69hG7RUFeleXbmDAL8NJj40AvN9WcVfLY=
X-Google-Smtp-Source: ABdhPJxxV8Gx+RU1iaVgrdg6qefXZhCM7xXLr+p6puiy+TxtZq6lAWZh5SjoGAX/8HyrMPk/HwFptPc+FKEq/N4tEoE=
X-Received: by 2002:a05:622a:6115:b0:2f1:d8fa:84aa with SMTP id
 hg21-20020a05622a611500b002f1d8fa84aamr24843016qtb.689.1651169098477; Thu, 28
 Apr 2022 11:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220427113404.401741-1-adrian.larumbe@collabora.com>
 <20220427113404.401741-2-adrian.larumbe@collabora.com>
In-Reply-To: <20220427113404.401741-2-adrian.larumbe@collabora.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 28 Apr 2022 19:04:31 +0100
Message-ID: <CAM0jSHNoB9NYf35Ke3cSLaJ4hRQX-z94VtxwPjcmxh8HS016rg@mail.gmail.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Replace shmem memory region
 and object backend with TTM
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 28 Apr 2022 at 09:39, Adrian Larumbe
<adrian.larumbe@collabora.com> wrote:
>
> Remove shmem region and object backend code as they are now unnecessary.
> In the case of objects placed in SMEM and backed by kernel shmem files, the
> file pointer has to be retrieved from the ttm_tt structure, so change this
> as well. This means accessing an shmem-backed BO's file pointer requires
> getting its pages beforehand, unlike in the old shmem backend.
>
> Expand TTM BO creation by handling devices with no LLC so that their
> caching and coherency properties are set accordingly.
>
> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h   |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c     |   5 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 397 +------------------
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 212 +++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  11 +-
>  drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
>  drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
>  10 files changed, 333 insertions(+), 412 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index f5062d0c6333..de04ce4210b3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -12,6 +12,7 @@
>  #include <asm/smp.h>
>
>  #include "gem/i915_gem_dmabuf.h"
> +#include "gem/i915_gem_ttm.h"
>  #include "i915_drv.h"
>  #include "i915_gem_object.h"
>  #include "i915_scatterlist.h"
> @@ -94,22 +95,25 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
>  {
>         struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
>         struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +       struct file *filp = i915_gem_ttm_get_filep(obj);
>         int ret;
>
> +       GEM_BUG_ON(obj->base.import_attach != NULL);
> +
>         if (obj->base.size < vma->vm_end - vma->vm_start)
>                 return -EINVAL;
>
>         if (HAS_LMEM(i915))
>                 return drm_gem_prime_mmap(&obj->base, vma);
>
> -       if (!obj->base.filp)
> +       if (!filp)
>                 return -ENODEV;
>
> -       ret = call_mmap(obj->base.filp, vma);
> +       ret = call_mmap(filp, vma);
>         if (ret)
>                 return ret;
>
> -       vma_set_file(vma, obj->base.filp);
> +       vma_set_file(vma, filp);
>
>         return 0;
>  }
> @@ -224,6 +228,8 @@ struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags)
>         exp_info.priv = gem_obj;
>         exp_info.resv = obj->base.resv;
>
> +       GEM_BUG_ON(obj->base.import_attach != NULL);
> +
>         if (obj->ops->dmabuf_export) {
>                 int ret = obj->ops->dmabuf_export(obj);
>                 if (ret)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 0c5c43852e24..d963cf35fdc9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -64,7 +64,9 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
>         struct drm_i915_private *i915 = to_i915(dev);
>         struct drm_i915_gem_mmap *args = data;
>         struct drm_i915_gem_object *obj;
> +       struct file *filp;
>         unsigned long addr;
> +       int ret;
>
>         /*
>          * mmap ioctl is disallowed for all discrete platforms,
> @@ -83,12 +85,20 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
>         if (!obj)
>                 return -ENOENT;
>
> -       /* prime objects have no backing filp to GEM mmap
> -        * pages from.
> -        */
> -       if (!obj->base.filp) {
> -               addr = -ENXIO;
> -               goto err;
> +       if (obj->base.import_attach)
> +               filp = obj->base.filp;
> +       else {
> +               ret = i915_gem_object_pin_pages_unlocked(obj);
> +               if (ret) {
> +                       addr = ret;
> +                       goto err_pin;
> +               }
> +
> +               filp = i915_gem_ttm_get_filep(obj);
> +               if (!filp) {
> +                       addr = -ENXIO;
> +                       goto err;
> +               }
>         }
>
>         if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
> @@ -96,7 +106,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
>                 goto err;
>         }
>
> -       addr = vm_mmap(obj->base.filp, 0, args->size,
> +       addr = vm_mmap(filp, 0, args->size,
>                        PROT_READ | PROT_WRITE, MAP_SHARED,
>                        args->offset);
>         if (IS_ERR_VALUE(addr))
> @@ -111,7 +121,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
>                         goto err;
>                 }
>                 vma = find_vma(mm, addr);
> -               if (vma && __vma_matches(vma, obj->base.filp, addr, args->size))
> +               if (vma && __vma_matches(vma, filp, addr, args->size))
>                         vma->vm_page_prot =
>                                 pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
>                 else
> @@ -120,12 +130,18 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
>                 if (IS_ERR_VALUE(addr))
>                         goto err;
>         }
> +       if (!obj->base.import_attach)
> +               i915_gem_object_unpin_pages(obj);
> +
>         i915_gem_object_put(obj);
>
>         args->addr_ptr = (u64)addr;
>         return 0;
>
>  err:
> +       if (!obj->base.import_attach)
> +               i915_gem_object_unpin_pages(obj);
> +err_pin:
>         i915_gem_object_put(obj);
>         return addr;
>  }
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index e11d82a9f7c3..a12f2733075a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -592,7 +592,7 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>
>  int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size);
>
> -bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
> +bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj);
>
>  void __i915_gem_free_object_rcu(struct rcu_head *head);
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index 0d0e46dae559..af3c1c43000c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -11,6 +11,7 @@
>  #include <drm/drm_cache.h>
>
>  #include "gt/intel_gt.h"
> +#include "gem/i915_gem_ttm.h"
>  #include "i915_drv.h"
>  #include "i915_gem_object.h"
>  #include "i915_gem_region.h"
> @@ -19,7 +20,7 @@
>
>  static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>  {
> -       struct address_space *mapping = obj->base.filp->f_mapping;
> +       struct address_space *mapping = i915_gem_ttm_get_filep(obj)->f_mapping;
>         struct drm_i915_private *i915 = to_i915(obj->base.dev);
>         struct scatterlist *sg;
>         struct sg_table *st;
> @@ -28,6 +29,8 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>         void *dst;
>         int i;
>
> +       GEM_BUG_ON(obj->base.import_attach != NULL);
> +
>         if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
>                 return -EINVAL;
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index c2a3e388fcb4..343eb5897a36 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -11,12 +11,14 @@
>  #include <drm/drm_cache.h>
>
>  #include "gem/i915_gem_region.h"
> +#include "gem/i915_gem_ttm.h"
>  #include "i915_drv.h"
>  #include "i915_gem_object.h"
>  #include "i915_gem_tiling.h"
>  #include "i915_gemfs.h"
>  #include "i915_scatterlist.h"
>  #include "i915_trace.h"
> +#include "i915_gem_clflush.h"
>
>  /*
>   * Move pages to appropriate lru and release the pagevec, decrementing the
> @@ -188,105 +190,6 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>         return ret;
>  }
>
> -static int shmem_get_pages(struct drm_i915_gem_object *obj)
> -{
> -       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> -       struct intel_memory_region *mem = obj->mm.region;
> -       struct address_space *mapping = obj->base.filp->f_mapping;
> -       const unsigned long page_count = obj->base.size / PAGE_SIZE;
> -       unsigned int max_segment = i915_sg_segment_size();
> -       struct sg_table *st;
> -       struct sgt_iter sgt_iter;
> -       struct page *page;
> -       int ret;
> -
> -       /*
> -        * Assert that the object is not currently in any GPU domain. As it
> -        * wasn't in the GTT, there shouldn't be any way it could have been in
> -        * a GPU cache
> -        */
> -       GEM_BUG_ON(obj->read_domains & I915_GEM_GPU_DOMAINS);
> -       GEM_BUG_ON(obj->write_domain & I915_GEM_GPU_DOMAINS);
> -
> -rebuild_st:
> -       st = kmalloc(sizeof(*st), GFP_KERNEL);
> -       if (!st)
> -               return -ENOMEM;
> -
> -       ret = shmem_sg_alloc_table(i915, st, obj->base.size, mem, mapping,
> -                                  max_segment);
> -       if (ret)
> -               goto err_st;
> -
> -       ret = i915_gem_gtt_prepare_pages(obj, st);
> -       if (ret) {
> -               /*
> -                * DMA remapping failed? One possible cause is that
> -                * it could not reserve enough large entries, asking
> -                * for PAGE_SIZE chunks instead may be helpful.
> -                */
> -               if (max_segment > PAGE_SIZE) {
> -                       for_each_sgt_page(page, sgt_iter, st)
> -                               put_page(page);
> -                       sg_free_table(st);
> -                       kfree(st);
> -
> -                       max_segment = PAGE_SIZE;
> -                       goto rebuild_st;
> -               } else {
> -                       dev_warn(i915->drm.dev,
> -                                "Failed to DMA remap %lu pages\n",
> -                                page_count);
> -                       goto err_pages;
> -               }
> -       }
> -
> -       if (i915_gem_object_needs_bit17_swizzle(obj))
> -               i915_gem_object_do_bit_17_swizzle(obj, st);
> -
> -       if (i915_gem_object_can_bypass_llc(obj))
> -               obj->cache_dirty = true;
> -
> -       __i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
> -
> -       return 0;
> -
> -err_pages:
> -       shmem_sg_free_table(st, mapping, false, false);
> -       /*
> -        * shmemfs first checks if there is enough memory to allocate the page
> -        * and reports ENOSPC should there be insufficient, along with the usual
> -        * ENOMEM for a genuine allocation failure.
> -        *
> -        * We use ENOSPC in our driver to mean that we have run out of aperture
> -        * space and so want to translate the error from shmemfs back to our
> -        * usual understanding of ENOMEM.
> -        */
> -err_st:
> -       if (ret == -ENOSPC)
> -               ret = -ENOMEM;
> -
> -       kfree(st);
> -
> -       return ret;
> -}
> -
> -static int
> -shmem_truncate(struct drm_i915_gem_object *obj)
> -{
> -       /*
> -        * Our goal here is to return as much of the memory as
> -        * is possible back to the system as we are called from OOM.
> -        * To do this we must instruct the shmfs to drop all of its
> -        * backing pages, *now*.
> -        */
> -       shmem_truncate_range(file_inode(obj->base.filp), 0, (loff_t)-1);
> -       obj->mm.madv = __I915_MADV_PURGED;
> -       obj->mm.pages = ERR_PTR(-EFAULT);
> -
> -       return 0;
> -}
> -
>  void __shmem_writeback(size_t size, struct address_space *mapping)
>  {
>         struct writeback_control wbc = {
> @@ -329,27 +232,6 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
>         }
>  }
>
> -static void
> -shmem_writeback(struct drm_i915_gem_object *obj)
> -{
> -       __shmem_writeback(obj->base.size, obj->base.filp->f_mapping);
> -}
> -
> -static int shmem_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
> -{
> -       switch (obj->mm.madv) {
> -       case I915_MADV_DONTNEED:
> -               return i915_gem_object_truncate(obj);
> -       case __I915_MADV_PURGED:
> -               return 0;
> -       }
> -
> -       if (flags & I915_GEM_OBJECT_SHRINK_WRITEBACK)
> -               shmem_writeback(obj);
> -
> -       return 0;
> -}
> -
>  void
>  __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>                                 struct sg_table *pages,
> @@ -395,220 +277,6 @@ void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_
>         obj->mm.dirty = false;
>  }
>
> -static void
> -shmem_put_pages(struct drm_i915_gem_object *obj, struct sg_table *pages)
> -{
> -       if (likely(i915_gem_object_has_struct_page(obj)))
> -               i915_gem_object_put_pages_shmem(obj, pages);
> -       else
> -               i915_gem_object_put_pages_phys(obj, pages);
> -}
> -
> -static int
> -shmem_pwrite(struct drm_i915_gem_object *obj,
> -            const struct drm_i915_gem_pwrite *arg)
> -{
> -       struct address_space *mapping = obj->base.filp->f_mapping;
> -       char __user *user_data = u64_to_user_ptr(arg->data_ptr);
> -       u64 remain, offset;
> -       unsigned int pg;
> -
> -       /* Caller already validated user args */
> -       GEM_BUG_ON(!access_ok(user_data, arg->size));
> -
> -       if (!i915_gem_object_has_struct_page(obj))
> -               return i915_gem_object_pwrite_phys(obj, arg);
> -
> -       /*
> -        * Before we instantiate/pin the backing store for our use, we
> -        * can prepopulate the shmemfs filp efficiently using a write into
> -        * the pagecache. We avoid the penalty of instantiating all the
> -        * pages, important if the user is just writing to a few and never
> -        * uses the object on the GPU, and using a direct write into shmemfs
> -        * allows it to avoid the cost of retrieving a page (either swapin
> -        * or clearing-before-use) before it is overwritten.
> -        */
> -       if (i915_gem_object_has_pages(obj))
> -               return -ENODEV;
> -
> -       if (obj->mm.madv != I915_MADV_WILLNEED)
> -               return -EFAULT;
> -
> -       /*
> -        * Before the pages are instantiated the object is treated as being
> -        * in the CPU domain. The pages will be clflushed as required before
> -        * use, and we can freely write into the pages directly. If userspace
> -        * races pwrite with any other operation; corruption will ensue -
> -        * that is userspace's prerogative!
> -        */
> -
> -       remain = arg->size;
> -       offset = arg->offset;
> -       pg = offset_in_page(offset);
> -
> -       do {
> -               unsigned int len, unwritten;
> -               struct page *page;
> -               void *data, *vaddr;
> -               int err;
> -               char c;
> -
> -               len = PAGE_SIZE - pg;
> -               if (len > remain)
> -                       len = remain;
> -
> -               /* Prefault the user page to reduce potential recursion */
> -               err = __get_user(c, user_data);
> -               if (err)
> -                       return err;
> -
> -               err = __get_user(c, user_data + len - 1);
> -               if (err)
> -                       return err;
> -
> -               err = pagecache_write_begin(obj->base.filp, mapping,
> -                                           offset, len, 0,
> -                                           &page, &data);
> -               if (err < 0)
> -                       return err;
> -
> -               vaddr = kmap_atomic(page);
> -               unwritten = __copy_from_user_inatomic(vaddr + pg,
> -                                                     user_data,
> -                                                     len);
> -               kunmap_atomic(vaddr);
> -
> -               err = pagecache_write_end(obj->base.filp, mapping,
> -                                         offset, len, len - unwritten,
> -                                         page, data);
> -               if (err < 0)
> -                       return err;
> -
> -               /* We don't handle -EFAULT, leave it to the caller to check */
> -               if (unwritten)
> -                       return -ENODEV;
> -
> -               remain -= len;
> -               user_data += len;
> -               offset += len;
> -               pg = 0;
> -       } while (remain);
> -
> -       return 0;
> -}
> -
> -static int
> -shmem_pread(struct drm_i915_gem_object *obj,
> -           const struct drm_i915_gem_pread *arg)
> -{
> -       if (!i915_gem_object_has_struct_page(obj))
> -               return i915_gem_object_pread_phys(obj, arg);
> -
> -       return -ENODEV;
> -}
> -
> -static void shmem_release(struct drm_i915_gem_object *obj)
> -{
> -       if (i915_gem_object_has_struct_page(obj))
> -               i915_gem_object_release_memory_region(obj);
> -
> -       fput(obj->base.filp);
> -}
> -
> -const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
> -       .name = "i915_gem_object_shmem",
> -       .flags = I915_GEM_OBJECT_IS_SHRINKABLE,
> -
> -       .get_pages = shmem_get_pages,
> -       .put_pages = shmem_put_pages,
> -       .truncate = shmem_truncate,
> -       .shrink = shmem_shrink,
> -
> -       .pwrite = shmem_pwrite,
> -       .pread = shmem_pread,
> -
> -       .release = shmem_release,
> -};
> -
> -static int __create_shmem(struct drm_i915_private *i915,
> -                         struct drm_gem_object *obj,
> -                         resource_size_t size)
> -{
> -       unsigned long flags = VM_NORESERVE;
> -       struct file *filp;
> -
> -       drm_gem_private_object_init(&i915->drm, obj, size);
> -
> -       if (i915->mm.gemfs)
> -               filp = shmem_file_setup_with_mnt(i915->mm.gemfs, "i915", size,
> -                                                flags);
> -       else
> -               filp = shmem_file_setup("i915", size, flags);
> -       if (IS_ERR(filp))
> -               return PTR_ERR(filp);
> -
> -       obj->filp = filp;
> -       return 0;
> -}
> -
> -static int shmem_object_init(struct intel_memory_region *mem,
> -                            struct drm_i915_gem_object *obj,
> -                            resource_size_t offset,
> -                            resource_size_t size,
> -                            resource_size_t page_size,
> -                            unsigned int flags)
> -{
> -       static struct lock_class_key lock_class;
> -       struct drm_i915_private *i915 = mem->i915;
> -       struct address_space *mapping;
> -       unsigned int cache_level;
> -       gfp_t mask;
> -       int ret;
> -
> -       ret = __create_shmem(i915, &obj->base, size);
> -       if (ret)
> -               return ret;
> -
> -       mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
> -       if (IS_I965GM(i915) || IS_I965G(i915)) {
> -               /* 965gm cannot relocate objects above 4GiB. */
> -               mask &= ~__GFP_HIGHMEM;
> -               mask |= __GFP_DMA32;
> -       }
> -
> -       mapping = obj->base.filp->f_mapping;
> -       mapping_set_gfp_mask(mapping, mask);
> -       GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
> -
> -       i915_gem_object_init(obj, &i915_gem_shmem_ops, &lock_class, 0);
> -       obj->mem_flags |= I915_BO_FLAG_STRUCT_PAGE;
> -       obj->write_domain = I915_GEM_DOMAIN_CPU;
> -       obj->read_domains = I915_GEM_DOMAIN_CPU;
> -
> -       if (HAS_LLC(i915))
> -               /* On some devices, we can have the GPU use the LLC (the CPU
> -                * cache) for about a 10% performance improvement
> -                * compared to uncached.  Graphics requests other than
> -                * display scanout are coherent with the CPU in
> -                * accessing this cache.  This means in this mode we
> -                * don't need to clflush on the CPU side, and on the
> -                * GPU side we only need to flush internal caches to
> -                * get data visible to the CPU.
> -                *
> -                * However, we maintain the display planes as UC, and so
> -                * need to rebind when first used as such.
> -                */
> -               cache_level = I915_CACHE_LLC;
> -       else
> -               cache_level = I915_CACHE_NONE;
> -
> -       i915_gem_object_set_cache_coherency(obj, cache_level);
> -
> -       i915_gem_object_init_memory_region(obj, mem);
> -
> -       return 0;
> -}
> -
>  struct drm_i915_gem_object *
>  i915_gem_object_create_shmem(struct drm_i915_private *i915,
>                              resource_size_t size)
> @@ -634,7 +302,19 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
>
>         GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
>
> -       file = obj->base.filp;
> +       /*
> +        *  When using TTM as the main GEM backend, we need to pin the pages
> +        *  after creating the object to access the file pointer
> +        */
> +       err = i915_gem_object_pin_pages_unlocked(obj);
> +       if (err) {
> +               drm_dbg(&dev_priv->drm, "%s pin-pages err=%d\n", __func__, err);
> +               goto fail_pin;
> +       }
> +
> +       file = i915_gem_ttm_get_filep(obj);
> +       GEM_WARN_ON(file == NULL);
> +
>         offset = 0;
>         do {
>                 unsigned int len = min_t(typeof(size), size, PAGE_SIZE);
> @@ -662,51 +342,14 @@ i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
>                 offset += len;
>         } while (size);
>
> +       i915_gem_clflush_object(obj, I915_CLFLUSH_SYNC);
> +       i915_gem_object_unpin_pages(obj);
> +
>         return obj;
>
>  fail:
> +       i915_gem_object_unpin_pages(obj);
> +fail_pin:
>         i915_gem_object_put(obj);
>         return ERR_PTR(err);
>  }
> -
> -static int init_shmem(struct intel_memory_region *mem)
> -{
> -       int err;
> -
> -       err = i915_gemfs_init(mem->i915);
> -       if (err) {
> -               DRM_NOTE("Unable to create a private tmpfs mount, hugepage support will be disabled(%d).\n",
> -                        err);
> -       }
> -
> -       intel_memory_region_set_name(mem, "system");
> -
> -       return 0; /* Don't error, we can simply fallback to the kernel mnt */
> -}
> -
> -static int release_shmem(struct intel_memory_region *mem)
> -{
> -       i915_gemfs_fini(mem->i915);
> -       return 0;
> -}
> -
> -static const struct intel_memory_region_ops shmem_region_ops = {
> -       .init = init_shmem,
> -       .release = release_shmem,
> -       .init_object = shmem_object_init,
> -};
> -
> -struct intel_memory_region *i915_gem_shmem_setup(struct drm_i915_private *i915,
> -                                                u16 type, u16 instance)
> -{
> -       return intel_memory_region_create(i915, 0,
> -                                         totalram_pages() << PAGE_SHIFT,
> -                                         PAGE_SIZE, 0, 0,
> -                                         type, instance,
> -                                         &shmem_region_ops);
> -}
> -
> -bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj)
> -{
> -       return obj->ops == &i915_gem_shmem_ops;
> -}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 4c25d9b2f138..e4f3a467abd8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -21,6 +21,7 @@
>  #include "gem/i915_gem_ttm_move.h"
>  #include "gem/i915_gem_ttm_pm.h"
>  #include "gt/intel_gpu_commands.h"
> +#include "gem/i915_gem_tiling.h"
>
>  #define I915_TTM_PRIO_PURGE     0
>  #define I915_TTM_PRIO_NO_PAGES  1
> @@ -37,6 +38,7 @@
>   * @ttm: The base TTM page vector.
>   * @dev: The struct device used for dma mapping and unmapping.
>   * @cached_rsgt: The cached scatter-gather table.
> + * @bo: TTM buffer object this ttm_tt structure is bound to.
>   * @is_shmem: Set if using shmem.
>   * @filp: The shmem file, if using shmem backend.
>   *
> @@ -50,6 +52,7 @@ struct i915_ttm_tt {
>         struct ttm_tt ttm;
>         struct device *dev;
>         struct i915_refct_sgt cached_rsgt;
> +       struct ttm_buffer_object *bo;
>
>         bool is_shmem;
>         struct file *filp;
> @@ -113,6 +116,10 @@ static int i915_ttm_err_to_gem(int err)
>  static enum ttm_caching
>  i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
>  {
> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +
> +       if (GRAPHICS_VER(i915) <= 5)
> +               return ttm_uncached;
>         /*
>          * Objects only allowed in system get cached cpu-mappings, or when
>          * evicting lmem-only buffers to system for swapping. Other objects get
> @@ -207,6 +214,11 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
>                         return PTR_ERR(filp);
>
>                 mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
> +               if (IS_I965GM(i915) || IS_I965G(i915)) {
> +                       /* 965gm cannot relocate objects above 4GiB. */
> +                       mask &= ~__GFP_HIGHMEM;
> +                       mask |= __GFP_DMA32;
> +               }
>
>                 mapping = filp->f_mapping;
>                 mapping_set_gfp_mask(mapping, mask);
> @@ -304,12 +316,14 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
>         if (!i915_tt)
>                 return NULL;
>
> +       i915_tt->bo = bo;
> +
>         if (obj->flags & I915_BO_ALLOC_CPU_CLEAR &&
>             man->use_tt)
>                 page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
>
>         caching = i915_ttm_select_tt_caching(obj);
> -       if (i915_gem_object_is_shrinkable(obj) && caching == ttm_cached) {
> +       if (i915_gem_object_is_shrinkable(obj) && (caching != ttm_write_combined)) {
>                 page_flags |= TTM_TT_FLAG_EXTERNAL |
>                               TTM_TT_FLAG_EXTERNAL_MAPPABLE;
>                 i915_tt->is_shmem = true;
> @@ -352,11 +366,19 @@ static void i915_ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm)
>  {
>         struct i915_ttm_tt *i915_tt = container_of(ttm, typeof(*i915_tt), ttm);
>         struct sg_table *st = &i915_tt->cached_rsgt.table;
> +       struct ttm_buffer_object *bo = i915_tt->bo;
> +       struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> +
> +       if (i915_tt->is_shmem)
> +               __i915_gem_object_release_shmem(obj, st, true);
>
>         if (st->sgl)
>                 dma_unmap_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL, 0);
>
>         if (i915_tt->is_shmem) {
> +               if (i915_gem_object_needs_bit17_swizzle(obj))
> +                       i915_gem_object_save_bit_17_swizzle(obj, st);
> +
>                 i915_ttm_tt_shmem_unpopulate(ttm);
>         } else {
>                 sg_free_table(st);
> @@ -798,6 +820,12 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
>                 obj->mm.rsgt = rsgt;
>                 __i915_gem_object_set_pages(obj, &rsgt->table,
>                                             i915_sg_dma_sizes(rsgt->table.sgl));
> +
> +               if (i915_gem_object_needs_bit17_swizzle(obj))
> +                       i915_gem_object_save_bit_17_swizzle(obj, &rsgt->table);
> +
> +               if (i915_gem_object_can_bypass_llc(obj))
> +                       obj->cache_dirty = true;

This needs to happen before the set_pages(), otherwise we are skipping
the flush-on-acquire.

>         }
>
>         GEM_BUG_ON(bo->ttm && ((obj->base.size >> PAGE_SHIFT) < bo->ttm->num_pages));
> @@ -979,6 +1007,119 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
>         spin_unlock(&bo->bdev->lru_lock);
>  }
>
> +static int
> +i915_ttm_pwrite(struct drm_i915_gem_object *obj,
> +               const struct drm_i915_gem_pwrite *arg)
> +{
> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +       char __user *user_data = u64_to_user_ptr(arg->data_ptr);
> +       struct address_space *mapping;
> +       u64 remain, offset;
> +       struct file *filp;
> +       unsigned int pg;
> +       int err;
> +
> +       /* Caller already validated user args */
> +       GEM_BUG_ON(!access_ok(user_data, arg->size));
> +
> +       if (!i915_gem_object_has_struct_page(obj))
> +               return i915_gem_object_pwrite_phys(obj, arg);
> +
> +       /*
> +        * We need to pin the pages in order to have access to the filp
> +        * given by shmem, quite unlike in the legacy GEM shmem backend
> +        * where it would be available upon object creation
> +        */
> +       err = i915_gem_object_pin_pages_unlocked(obj);
> +       if (err) {
> +               drm_dbg(&i915->drm, "%s pin-pages err=%d\n", __func__, err);
> +               return err;
> +       }
> +
> +       filp = i915_gem_ttm_get_filep(obj);
> +       if (!filp) {
> +               err = -ENXIO;
> +               goto error;
> +       }
> +
> +       mapping = filp->f_mapping;
> +
> +       if (obj->mm.madv != I915_MADV_WILLNEED) {
> +               err = -EFAULT;
> +               goto error;
> +       }
> +
> +       /*
> +        * Before the pages are instantiated the object is treated as being
> +        * in the CPU domain. The pages will be clflushed as required before
> +        * use, and we can freely write into the pages directly. If userspace
> +        * races pwrite with any other operation; corruption will ensue -
> +        * that is userspace's prerogative!
> +        */
> +
> +       remain = arg->size;
> +       offset = arg->offset;
> +       pg = offset_in_page(offset);
> +
> +       do {
> +               unsigned int len, unwritten;
> +               struct page *page;
> +               void *data, *vaddr;
> +               int err;
> +               char c;
> +
> +               len = PAGE_SIZE - pg;
> +               if (len > remain)
> +                       len = remain;
> +
> +               /* Prefault the user page to reduce potential recursion */
> +               err = __get_user(c, user_data);
> +               if (err)
> +                       goto error;
> +
> +               err = __get_user(c, user_data + len - 1);
> +               if (err)
> +                       goto error;
> +
> +               err = pagecache_write_begin(obj->base.filp, mapping,
> +                                           offset, len, 0,
> +                                           &page, &data);
> +               if (err < 0)
> +                       goto error;
> +
> +               vaddr = kmap_atomic(page);
> +               unwritten = __copy_from_user_inatomic(vaddr + pg,
> +                                                     user_data,
> +                                                     len);
> +               kunmap_atomic(vaddr);
> +
> +               err = pagecache_write_end(obj->base.filp, mapping,
> +                                         offset, len, len - unwritten,
> +                                         page, data);
> +               if (err < 0)
> +                       goto error;
> +
> +               /* We don't handle -EFAULT, leave it to the caller to check */
> +               if (unwritten) {
> +                       err = -ENODEV;
> +                       goto error;
> +               }
> +
> +               remain -= len;
> +               user_data += len;
> +               offset += len;
> +               pg = 0;
> +       } while (remain);
> +
> +       i915_gem_object_unpin_pages(obj);
> +
> +       return 0;
> +
> +error:
> +       i915_gem_object_unpin_pages(obj);
> +       return err;
> +}
> +
>  /*
>   * TTM-backed gem object destruction requires some clarification.
>   * Basically we have two possibilities here. We can either rely on the
> @@ -1120,7 +1261,7 @@ static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
>         ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
>  }
>
> -static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
> +static const struct drm_i915_gem_object_ops i915_gem_ttm_discrete_ops = {
>         .name = "i915_gem_object_ttm",
>         .flags = I915_GEM_OBJECT_IS_SHRINKABLE |
>                  I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
> @@ -1139,6 +1280,22 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
>         .mmap_ops = &vm_ops_ttm,
>  };
>
> +static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_integrated_ops = {
> +       .name = "i915_gem_object_ttm",
> +       .flags = I915_GEM_OBJECT_IS_SHRINKABLE |
> +                I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
> +
> +       .get_pages = i915_ttm_get_pages,
> +       .put_pages = i915_ttm_put_pages,
> +       .truncate = i915_ttm_truncate,
> +       .shrink = i915_ttm_shrink,
> +
> +       .pwrite = i915_ttm_pwrite,
> +
> +       .adjust_lru = i915_ttm_adjust_lru,
> +       .delayed_free = i915_ttm_delayed_free,
> +};
> +
>  void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
>  {
>         struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
> @@ -1196,7 +1353,12 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
>         int ret;
>
>         drm_gem_private_object_init(&i915->drm, &obj->base, size);
> -       i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class, flags);
> +
> +       if (IS_DGFX(i915))
> +               i915_gem_object_init(obj, &i915_gem_ttm_discrete_ops, &lock_class, flags);
> +       else
> +               i915_gem_object_init(obj, &i915_gem_ttm_obj_integrated_ops, &lock_class,
> +                                    flags);
>
>         obj->bo_offset = offset;
>
> @@ -1206,8 +1368,8 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
>
>         INIT_RADIX_TREE(&obj->ttm.get_io_page.radix, GFP_KERNEL | __GFP_NOWARN);
>         mutex_init(&obj->ttm.get_io_page.lock);
> -       bo_type = (obj->flags & I915_BO_ALLOC_USER) ? ttm_bo_type_device :
> -               ttm_bo_type_kernel;
> +       bo_type = (obj->ops->mmap_offset && (obj->flags & I915_BO_ALLOC_USER)) ?
> +               ttm_bo_type_device : ttm_bo_type_kernel;
>
>         obj->base.vma_node.driver_private = i915_gem_to_ttm(obj);
>
> @@ -1251,6 +1413,27 @@ static const struct intel_memory_region_ops ttm_system_region_ops = {
>         .release = intel_region_ttm_fini,
>  };
>
> +/**
> + * Return: filp.
> + */
> +struct file *
> +i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj)
> +{
> +       struct drm_device *dev = obj->base.dev;
> +       struct ttm_buffer_object *bo;
> +       struct i915_ttm_tt *i915_tt;
> +
> +       bo = i915_gem_to_ttm(obj);
> +       if (!bo->ttm) {
> +               drm_dbg(dev, "ttm has not been allocated for bo\n");
> +               return NULL;
> +       }
> +
> +       i915_tt = container_of(bo->ttm, typeof(*i915_tt), ttm);
> +
> +       return i915_tt->filp;
> +}
> +
>  struct intel_memory_region *
>  i915_gem_ttm_system_setup(struct drm_i915_private *i915,
>                           u16 type, u16 instance)
> @@ -1268,3 +1451,22 @@ i915_gem_ttm_system_setup(struct drm_i915_private *i915,
>         intel_memory_region_set_name(mr, "system-ttm");
>         return mr;
>  }
> +
> +bool i915_gem_object_is_shmem(struct drm_i915_gem_object *obj)
> +{
> +       struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
> +
> +#ifdef CONFIG_LOCKDEP
> +       if (i915_gem_object_migratable(obj) &&
> +           i915_gem_object_evictable(obj))
> +               assert_object_held(obj);
> +#endif
> +
> +       /* Review list of placements to make sure object isn't migratable */
> +       if (i915_gem_object_placement_possible(obj, INTEL_MEMORY_LOCAL))
> +               return false;
> +
> +       return mr && (mr->type == INTEL_MEMORY_SYSTEM &&
> +                     (obj->ops == &i915_gem_ttm_obj_integrated_ops ||
> +                      obj->ops == &i915_gem_ttm_discrete_ops));
> +}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> index 73e371aa3850..f00f18db5a8b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
> @@ -92,4 +92,7 @@ static inline bool i915_ttm_cpu_maps_iomem(struct ttm_resource *mem)
>         /* Once / if we support GGTT, this is also false for cached ttm_tts */
>         return mem->mem_type != I915_PL_SYSTEM;
>  }
> +
> +struct file *i915_gem_ttm_get_filep(struct drm_i915_gem_object *obj);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index a10716f4e717..c588e31aa479 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -46,6 +46,10 @@ static enum i915_cache_level
>  i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
>                      struct ttm_tt *ttm)
>  {
> +
> +       if (GRAPHICS_VER(i915) <= 5)
> +               return I915_CACHE_NONE;

IIUC we are no longer using CACHE_NONE by default on snooping
platforms gen > 5? That's a pretty big change, AFAIK there are power
and perf considerations when enabling CACHE_LLC/L3 on snooping
platforms, which is why it was disabled by default.

We also need to be careful to ensure we always set cache_dirty = true,
before first populating the pages on all HAS_SNOOP()
platforms(ignoring discrete) to ensure we always do the
flush-on-acquire. The CACHE_NONE thing was basically ensuring that
previously.

Can we keep the previous default behaviour with using CACHE_NONE on
all platforms that don't have HAS_LLC(), where it is not also
discrete?

We also need to ensure we never trample the cache_level etc for the
object after creation, since userspace(and some in-kernel users) needs
to be to able control it.

> +
>         return ((HAS_LLC(i915) || HAS_SNOOP(i915)) &&
>                 !i915_ttm_gtt_binds_lmem(res) &&
>                 ttm->caching == ttm_cached) ? I915_CACHE_LLC :
> @@ -77,7 +81,12 @@ void i915_ttm_adjust_domains_after_move(struct drm_i915_gem_object *obj)
>  {
>         struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
>
> -       if (i915_ttm_cpu_maps_iomem(bo->resource) || bo->ttm->caching != ttm_cached) {
> +       if (!i915_ttm_cpu_maps_iomem(bo->resource) &&
> +           bo->ttm->caching == ttm_uncached) {
> +               obj->write_domain = I915_GEM_DOMAIN_CPU;
> +               obj->read_domains = I915_GEM_DOMAIN_CPU;
> +       } else if (i915_ttm_cpu_maps_iomem(bo->resource) ||
> +                bo->ttm->caching != ttm_cached) {
>                 obj->write_domain = I915_GEM_DOMAIN_WC;
>                 obj->read_domains = I915_GEM_DOMAIN_WC;
>         } else {
> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
> index 402f085f3a02..4f842094e484 100644
> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
> @@ -10,6 +10,9 @@
>
>  #include "gem/i915_gem_object.h"
>  #include "gem/i915_gem_lmem.h"
> +#include "gem/i915_gem_ttm.h"
> +
> +#include "i915_drv.h"
>  #include "shmem_utils.h"
>
>  struct file *shmem_create_from_data(const char *name, void *data, size_t len)
> @@ -30,24 +33,65 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
>         return file;
>  }
>
> +static int shmem_flush_object(struct file *file, unsigned long num_pages)
> +{
> +       struct page *page;
> +       unsigned long pfn;
> +
> +       for (pfn = 0; pfn < num_pages; pfn++) {
> +               page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
> +                                                  GFP_KERNEL);
> +               if (IS_ERR(page))
> +                       return PTR_ERR(page);
> +
> +               set_page_dirty(page);
> +               mark_page_accessed(page);
> +               kunmap(page);
> +               put_page(page);
> +       }
> +
> +       return 0;
> +}
> +
>  struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>  {
> +       struct drm_i915_private *i915 = to_i915(obj->base.dev);
>         struct file *file;
>         void *ptr;
> +       int err;
>
>         if (i915_gem_object_is_shmem(obj)) {
> -               file = obj->base.filp;
> -               atomic_long_inc(&file->f_count);
> -               return file;
> -       }
>
> -       ptr = i915_gem_object_pin_map_unlocked(obj, i915_gem_object_is_lmem(obj) ?
> -                                               I915_MAP_WC : I915_MAP_WB);
> -       if (IS_ERR(ptr))
> -               return ERR_CAST(ptr);
> +               GEM_BUG_ON(!i915_gem_object_has_pages(obj));
>
> -       file = shmem_create_from_data("", ptr, obj->base.size);
> -       i915_gem_object_unpin_map(obj);
> +               err = i915_gem_object_pin_pages_unlocked(obj);
> +               if (err) {
> +                       drm_dbg(&i915->drm, "%s pin-pages err=%d\n", __func__,
> +                               err);
> +                       return ERR_PTR(err);
> +               }
> +
> +               file = i915_gem_ttm_get_filep(obj);
> +               GEM_BUG_ON(!file);
> +
> +               err = shmem_flush_object(file, obj->base.size >> PAGE_SHIFT);
> +               if (err) {
> +                       drm_dbg(&i915->drm, "shmem_flush_object failed\n");
> +                       i915_gem_object_unpin_pages(obj);
> +                       return ERR_PTR(err);
> +               }
> +
> +               atomic_long_inc(&file->f_count);
> +               i915_gem_object_unpin_pages(obj);
> +       } else {
> +               ptr = i915_gem_object_pin_map_unlocked(obj, i915_gem_object_is_lmem(obj) ?
> +                                                      I915_MAP_WC : I915_MAP_WB);
> +               if (IS_ERR(ptr))
> +                       return ERR_CAST(ptr);
> +
> +               file = shmem_create_from_data("", ptr, obj->base.size);
> +               i915_gem_object_unpin_map(obj);
> +       }
>
>         return file;
>  }
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index e38d2db1c3e3..82b6684d7e60 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -309,12 +309,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>                 instance = intel_region_map[i].instance;
>                 switch (type) {
>                 case INTEL_MEMORY_SYSTEM:
> -                       if (IS_DGFX(i915))
> -                               mem = i915_gem_ttm_system_setup(i915, type,
> -                                                               instance);
> -                       else
> -                               mem = i915_gem_shmem_setup(i915, type,
> -                                                          instance);
> +                       mem = i915_gem_ttm_system_setup(i915, type, instance);
>                         break;
>                 case INTEL_MEMORY_STOLEN_LOCAL:
>                         mem = i915_gem_stolen_lmem_setup(i915, type, instance);
> --
> 2.35.1
>
