Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B87D611662
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E60710E866;
	Fri, 28 Oct 2022 15:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0821410E866
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:53:48 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id a15so8889980ljb.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 08:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AuwGKiAcgk6EjAd3bYJmHsa9NZhOoOdLLFJQmc88ejE=;
 b=P85eflGx7xPkWRxhu/TlIhcuRFvywHBreLlObeK3sKGw6oPRQd97bRBcmSklBrkdIf
 OjbIxY5YEwxyD6AOen84kGIdmIyqQFpm3EqYVP8iDDcBkNqbtNXeVID26cFglk9n/B2o
 oX/OAQ47wDxcZE8er2RAo+SoZq8BJa4i887Uxnmg1DU870obuH+fN+nYZ33StkjEfxSg
 cpmHQ0UziNE9kkv/5zUq6YjbkKdIEfzw1/lzNBMpIYNeuuDMjFi5S9UzE2LXm+77fBGA
 8+WQf01tFRMhMG3+9dCZAImeh8qUHKfCzQSNS9JdDUHTXVX9fc7MqcB0U/efsIkjbFDP
 MhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AuwGKiAcgk6EjAd3bYJmHsa9NZhOoOdLLFJQmc88ejE=;
 b=ubRmEjw5ABVU1OJvgHYwMfU7S/irdiOcbTxYHsyaDhBPnUhMg3p+lrKtEA7OXERh6j
 c9bgktspWCsVPspoXwrj52zdAzdrhbgxrQj0oY/Rhp+lUgEHP87iyK021bOIO0NhCMZ5
 VtRf9vgOTt44Wcmolk+JQjVS6dbP7lmRCZ7NTTqRgbom5FkoTVZbFytOChSlz5X5HMhJ
 pqDYZpFUKRaU6FZ7944egG/QjRee1ZVYhnfIM9XZckhlXFojQ0is/MDSCN2t/tBuaNYG
 q6/1dOvZ3/6jnR6GhllDJpzVrOSMgYDsYaQa7B3nOFn7wAORbmatxqxofvEAh5IYzqNB
 2UzQ==
X-Gm-Message-State: ACrzQf2QUYZpSzt9m1uw06JEk2ufllZDrwaU9b4OnBAwPE0xY/zFD9Vn
 WWyjeSmt7899iQxegNKHeZrJkUHsT2GhdA1onhyXWHfY7+4=
X-Google-Smtp-Source: AMsMyM7lrNvb03ZiaO65AoXwBrgWTWJL3VR+78jK5TZdt4lFyrBI/IsnvaV/fKZcAyZvP2Vx/VynwTBTBpLZrn1E8oA=
X-Received: by 2002:a2e:1648:0:b0:277:87d:2ffc with SMTP id
 8-20020a2e1648000000b00277087d2ffcmr78022ljw.231.1666972427171; Fri, 28 Oct
 2022 08:53:47 -0700 (PDT)
MIME-Version: 1.0
References: <20221028155029.494736-1-matthew.auld@intel.com>
 <20221028155029.494736-3-matthew.auld@intel.com>
In-Reply-To: <20221028155029.494736-3-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 28 Oct 2022 16:53:19 +0100
Message-ID: <CAM0jSHPER0F8U+ALtCRXJ7ht5c5XYq+VwaBcyHE=0_Z3KC=yVg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/dmabuf: dmabuf cleanup
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Oct 2022 at 16:51, Matthew Auld <matthew.auld@intel.com> wrote:
>
> From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
>
> Some minor cleanup of some variables for consistency.
>
> Normalize struct sg_table to sgt.
> Normalize struct dma_buf_attachment to attach.
> checkpatch issues sizeof(), !NULL updates.
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 47 ++++++++++++----------
>  1 file changed, 25 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 05ebbdfd3b3b..8342e01a0d27 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -25,43 +25,46 @@ static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
>         return to_intel_bo(buf->priv);
>  }
>
> -static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachment,
> +static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
>                                              enum dma_data_direction dir)
>  {
> -       struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
> -       struct sg_table *st;
> +       struct drm_i915_gem_object *obj = dma_buf_to_obj(attach->dmabuf);
> +       struct sg_table *sgt;
>         struct scatterlist *src, *dst;
>         int ret, i;
>
> -       /* Copy sg so that we make an independent mapping */
> -       st = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
> -       if (st == NULL) {
> +       /*
> +        * Make a copy of the object's sgt, so that we can make an independent
> +        * mapping
> +        */
> +       sgt = kmalloc(sizeof(*sgt), GFP_KERNEL);
> +       if (!sgt) {
>                 ret = -ENOMEM;
>                 goto err;
>         }
>
> -       ret = sg_alloc_table(st, obj->mm.pages->orig_nents, GFP_KERNEL);
> +       ret = sg_alloc_table(sgt, obj->mm.pages->orig_nents, GFP_KERNEL);
>         if (ret)
>                 goto err_free;
>
>         src = obj->mm.pages->sgl;
> -       dst = st->sgl;
> +       dst = sgt->sgl;
>         for (i = 0; i < obj->mm.pages->orig_nents; i++) {
>                 sg_set_page(dst, sg_page(src), src->length, 0);
>                 dst = sg_next(dst);
>                 src = sg_next(src);
>         }
>
> -       ret = dma_map_sgtable(attachment->dev, st, dir, DMA_ATTR_SKIP_CPU_SYNC);
> +       ret = dma_map_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
>         if (ret)
>                 goto err_free_sg;
>
> -       return st;
> +       return sgt;
>
>  err_free_sg:
> -       sg_free_table(st);
> +       sg_free_table(sgt);
>  err_free:
> -       kfree(st);
> +       kfree(sgt);
>  err:
>         return ERR_PTR(ret);
>  }
> @@ -236,15 +239,15 @@ struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags)
>  static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
>  {
>         struct drm_i915_private *i915 = to_i915(obj->base.dev);
> -       struct sg_table *pages;
> +       struct sg_table *sgt;
>         unsigned int sg_page_sizes;
>
>         assert_object_held(obj);
>
> -       pages = dma_buf_map_attachment(obj->base.import_attach,
> -                                      DMA_BIDIRECTIONAL);
> -       if (IS_ERR(pages))
> -               return PTR_ERR(pages);
> +       sgt = dma_buf_map_attachment(obj->base.import_attach,
> +                                    DMA_BIDIRECTIONAL);
> +       if (IS_ERR(sgt))
> +               return PTR_ERR(sgt);
>
>         /*
>          * DG1 is special here since it still snoops transactions even with
> @@ -261,16 +264,16 @@ static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
>             (!HAS_LLC(i915) && !IS_DG1(i915)))
>                 wbinvd_on_all_cpus();
>
> -       sg_page_sizes = i915_sg_dma_sizes(pages->sgl);
> -       __i915_gem_object_set_pages(obj, pages, sg_page_sizes);
> +       sg_page_sizes = i915_sg_dma_sizes(sgt->sgl);
> +       __i915_gem_object_set_pages(obj, sgt, sg_page_sizes);
>
>         return 0;
>  }
>
>  static void i915_gem_object_put_pages_dmabuf(struct drm_i915_gem_object *obj,
> -                                            struct sg_table *pages)
> +                                            struct sg_table *sgt)
>  {
> -       dma_buf_unmap_attachment(obj->base.import_attach, pages,
> +       dma_buf_unmap_attachment(obj->base.import_attach, sgt,
>                                  DMA_BIDIRECTIONAL);
>  }
>
> @@ -313,7 +316,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
>         get_dma_buf(dma_buf);
>
>         obj = i915_gem_object_alloc();
> -       if (obj == NULL) {
> +       if (!obj) {
>                 ret = -ENOMEM;
>                 goto fail_detach;
>         }
> --
> 2.37.3
>
