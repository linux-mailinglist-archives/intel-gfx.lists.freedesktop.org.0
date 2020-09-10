Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F2626476C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD926E940;
	Thu, 10 Sep 2020 13:49:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6AE6E057
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:31:41 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id y13so7067052iow.4
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 06:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rqo0kj5mzJRo0skHc2h2qOtoduVFNCp46fktvVaBQ7I=;
 b=A6RMHr1nxbMLLx9/KgUbuLxN2sEjtNbWaUvyiTUWgiqypPTXGg3QYZ9Y8/pS9Cupup
 kCa2h5a1pP2ZGW2lW/xGhcXWcGbxdAPTF/X+Ou3tVm6xDRWiilWi3pT0AIWOaD/41m3D
 MxAQJKFvuNFazcr5GteViV8tZlJtyc+z3jWEGa1SfloYzr7OjZdBXMYXC8RmqKaVQvW6
 8j5HuPlwEnN0O6omU7/av0RLBXaeMMf6kWD2LvQyqB1Qs4ZtgGjmFclQP6dDhkFUpidr
 V5kzDPmAHCq0/H+YyEmkzbT/uFWgFUM2Z6Ht7e9MUyHu2PGjo4SC+3Zcqr/muq5LUZv/
 sTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rqo0kj5mzJRo0skHc2h2qOtoduVFNCp46fktvVaBQ7I=;
 b=YSQyKaraQqQV7JzTg4yJ9wUkyeTLp+zbq6RUtDxWC4qAU1AJCuHoJIUdK/wbS5iSaU
 5+CvhnK67fivY7FixWLwyW2vdyWZ/8S321hDIUhuF2BGv3L6tVbbVQdJSbBXnwJR6UeG
 rMOQF4wpKQdauV4Y0RNZLxcK0yHoaiIs2Ub3CaFlcTtvoXvb2AE5Md1c5gk7I4+J/Dpe
 ZVtmojLjrRtNaxyp7wnztV5NnW6va3z6W57RVFybhYihexlQNLv3vNzBWKJ1Mu/uMh2J
 hvTfJSc9uuXgrbas7XCaFte99rxfTYP8j6vY97WA8lk+CuLnURThgWKhGCF0ulVPKepW
 hkkw==
X-Gm-Message-State: AOAM533xfAxTpI4P5V0pptXv/9v8JveedjETMZzaNiZ40EwvLcd9Bok+
 2YO6hDODpjasglLylsoEij6PkY9+PUHPGEZu7xQLUA==
X-Google-Smtp-Source: ABdhPJyyoLufcLLi5ant1tOCef7IRdyxUI6H4BylWrmEFCFJiXbhgv/HCzXP+l1KpQrv4LPMqS71wtBzV4LjCfITUGQ=
X-Received: by 2002:a05:6638:24d1:: with SMTP id
 y17mr8517484jat.3.1599744700960; 
 Thu, 10 Sep 2020 06:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200910115900.407686-1-tvrtko.ursulin@linux.intel.com>
 <20200910115900.407686-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200910115900.407686-3-tvrtko.ursulin@linux.intel.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Thu, 10 Sep 2020 14:31:30 +0100
Message-ID: <CALQxJuuF0i4NWvVfh1G0TZWS0oYiwSRLycMte6LZ5n6Oif3aFQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Approved-At: Thu, 10 Sep 2020 13:49:08 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix DMA mapped scatterlist
 lookup
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
Cc: Intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series fixes the issue I was having. I tested it with my
patch set ("[PATCH V2 0/5] Convert the intel iommu driver to the
dma-iommu api") applied, excluding the last patch in that series which
disables the coalescing.

So once your patch set is merged we should be good to convert the
intel iommu driver to the dma-iommu api

On Thu, 10 Sep 2020 at 12:59, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> As the previous patch fixed the places where we walk the whole scatterlist
> for DMA addresses, this patch fixes the random lookup functionality.
>
> To achieve this we have to add a second lookup iterator and add a
> i915_gem_object_get_sg_dma helper, to be used analoguous to existing
> i915_gem_object_get_sg_dma. Therefore two lookup caches are maintained per
> object and they are flushed at the same point for simplicity. (Strictly
> speaking the DMA cache should be flushed from i915_gem_gtt_finish_pages,
> but today this conincides with unsetting of the pages in general.)
>
> Partial VMA view is then fixed to use the new DMA lookup and properly
> query sg length.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Lu Baolu <baolu.lu@linux.intel.com>
> Cc: Tom Murphy <murphyt7@tcd.ie>
> Cc: Logan Gunthorpe <logang@deltatee.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    | 20 +++++++++++++++++-
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  | 17 ++++++++-------
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 21 ++++++++++++-------
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 ++--
>  drivers/gpu/drm/i915/i915_scatterlist.h       |  5 +++++
>  6 files changed, 51 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index c8421fd9d2dc..ffeaf1b9b1bb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -73,6 +73,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>         obj->mm.madv = I915_MADV_WILLNEED;
>         INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
>         mutex_init(&obj->mm.get_page.lock);
> +       INIT_RADIX_TREE(&obj->mm.get_dma_page.radix, GFP_KERNEL | __GFP_NOWARN);
> +       mutex_init(&obj->mm.get_dma_page.lock);
>
>         if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
>                 i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index d46db8d8f38e..7ba5e958a3d0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -275,8 +275,26 @@ int i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>                                unsigned int tiling, unsigned int stride);
>
>  struct scatterlist *
> +__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
> +                        struct i915_gem_object_page_iter *iter,
> +                        unsigned int n,
> +                        unsigned int *offset);
> +
> +static inline struct scatterlist *
>  i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
> -                      unsigned int n, unsigned int *offset);
> +                      unsigned int n,
> +                      unsigned int *offset)
> +{
> +       return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset);
> +}
> +
> +static inline struct scatterlist *
> +i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj,
> +                      unsigned int n,
> +                      unsigned int *offset)
> +{
> +       return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset);
> +}
>
>  struct page *
>  i915_gem_object_get_page(struct drm_i915_gem_object *obj,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index b5c15557cc87..fedfebf13344 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -80,6 +80,14 @@ struct i915_mmap_offset {
>         struct rb_node offset;
>  };
>
> +struct i915_gem_object_page_iter {
> +       struct scatterlist *sg_pos;
> +       unsigned int sg_idx; /* in pages, but 32bit eek! */
> +
> +       struct radix_tree_root radix;
> +       struct mutex lock; /* protects this cache */
> +};
> +
>  struct drm_i915_gem_object {
>         struct drm_gem_object base;
>
> @@ -246,13 +254,8 @@ struct drm_i915_gem_object {
>
>                 I915_SELFTEST_DECLARE(unsigned int page_mask);
>
> -               struct i915_gem_object_page_iter {
> -                       struct scatterlist *sg_pos;
> -                       unsigned int sg_idx; /* in pages, but 32bit eek! */
> -
> -                       struct radix_tree_root radix;
> -                       struct mutex lock; /* protects this cache */
> -               } get_page;
> +               struct i915_gem_object_page_iter get_page;
> +               struct i915_gem_object_page_iter get_dma_page;
>
>                 /**
>                  * Element within i915->mm.unbound_list or i915->mm.bound_list,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index e8a083743e09..04a3c1233f80 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -33,6 +33,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>
>         obj->mm.get_page.sg_pos = pages->sgl;
>         obj->mm.get_page.sg_idx = 0;
> +       obj->mm.get_dma_page.sg_pos = pages->sgl;
> +       obj->mm.get_dma_page.sg_idx = 0;
>
>         obj->mm.pages = pages;
>
> @@ -155,6 +157,8 @@ static void __i915_gem_object_reset_page_iter(struct drm_i915_gem_object *obj)
>         rcu_read_lock();
>         radix_tree_for_each_slot(slot, &obj->mm.get_page.radix, &iter, 0)
>                 radix_tree_delete(&obj->mm.get_page.radix, iter.index);
> +       radix_tree_for_each_slot(slot, &obj->mm.get_dma_page.radix, &iter, 0)
> +               radix_tree_delete(&obj->mm.get_dma_page.radix, iter.index);
>         rcu_read_unlock();
>  }
>
> @@ -424,11 +428,12 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
>  }
>
>  struct scatterlist *
> -i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
> -                      unsigned int n,
> -                      unsigned int *offset)
> +__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
> +                        struct i915_gem_object_page_iter *iter,
> +                        unsigned int n,
> +                        unsigned int *offset)
>  {
> -       struct i915_gem_object_page_iter *iter = &obj->mm.get_page;
> +       const bool dma = iter == &obj->mm.get_dma_page;
>         struct scatterlist *sg;
>         unsigned int idx, count;
>
> @@ -457,7 +462,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>
>         sg = iter->sg_pos;
>         idx = iter->sg_idx;
> -       count = __sg_page_count(sg);
> +       count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
>
>         while (idx + count <= n) {
>                 void *entry;
> @@ -485,7 +490,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>
>                 idx += count;
>                 sg = ____sg_next(sg);
> -               count = __sg_page_count(sg);
> +               count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
>         }
>
>  scan:
> @@ -503,7 +508,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>         while (idx + count <= n) {
>                 idx += count;
>                 sg = ____sg_next(sg);
> -               count = __sg_page_count(sg);
> +               count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
>         }
>
>         *offset = n - idx;
> @@ -570,7 +575,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
>         struct scatterlist *sg;
>         unsigned int offset;
>
> -       sg = i915_gem_object_get_sg(obj, n, &offset);
> +       sg = i915_gem_object_get_sg_dma(obj, n, &offset);
>
>         if (len)
>                 *len = sg_dma_len(sg) - (offset << PAGE_SHIFT);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 81c05f551b9c..95e77d56c1ce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1383,7 +1383,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
>         if (ret)
>                 goto err_sg_alloc;
>
> -       iter = i915_gem_object_get_sg(obj, view->partial.offset, &offset);
> +       iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
>         GEM_BUG_ON(!iter);
>
>         sg = st->sgl;
> @@ -1391,7 +1391,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
>         do {
>                 unsigned int len;
>
> -               len = min(iter->length - (offset << PAGE_SHIFT),
> +               len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
>                           count << PAGE_SHIFT);
>                 sg_set_page(sg, NULL, len, 0);
>                 sg_dma_address(sg) =
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
> index 510856887628..102d8d7007b6 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -48,6 +48,11 @@ static inline int __sg_page_count(const struct scatterlist *sg)
>         return sg->length >> PAGE_SHIFT;
>  }
>
> +static inline int __sg_dma_page_count(const struct scatterlist *sg)
> +{
> +       return sg_dma_len(sg) >> PAGE_SHIFT;
> +}
> +
>  static inline struct scatterlist *____sg_next(struct scatterlist *sg)
>  {
>         ++sg;
> --
> 2.25.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
