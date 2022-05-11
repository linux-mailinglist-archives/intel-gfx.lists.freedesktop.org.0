Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC94452311B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 13:06:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEC710E2C9;
	Wed, 11 May 2022 11:06:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDAEF10E2C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 11:06:28 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id k2so1695338qtp.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 04:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Ta6/EY5U9vftGsUZzUCWNMk+GO9FbVUfgNefYMithw=;
 b=Vg1OqHiqlgb9O5RqKREuDRywwzOAjY1F+kMIkBOGEla+6RmKIXSEITnGCNek0wFI7I
 W/UsDPTbb6xK9E9NUZ1x4OCfxFKHELdx0exCDvpkyFKQ7k4f46JaBcR0hCbAk8ENb0ob
 tfxve3EBHZg+GKSEi9sg+HUunAXqKq4bbOUI7nN7hdGI+CRLS1iOX+YxB+M8Tp6MOKIi
 cpKDpcJk1mxO8u2mZ2Vc9ARLPr5VyhXsw44X6HdddR6qPQ3sMlErm7d0/rEGphiLyrJX
 G5Bp0G6zhAflH2CevGXnDB7NsmH78eYobzAiAnHfvenXCR/5F5osIGFJOrbWe0gCvrzq
 GSnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Ta6/EY5U9vftGsUZzUCWNMk+GO9FbVUfgNefYMithw=;
 b=iAKJkZ63u7VbfDpMG/5mFGuMhG9FrSzHGV/cJAmwkQsJ/SoIluKlt6yan+H3jabImx
 pxh4/2koyWCgYHXRu5XZFCuR+ZmnMCNFnJV+rHul7S57qH1iyfAWlxUYukwdzGd94PFm
 2SiDfqgfpYM7YuFlPzv7GzOl7mCfqefqfXV+OGQ5hLIvmbcO6VSgaeTODFrCz+AkTk28
 ZrKWEp7+GopvMpin5x6b/OPMMVcvepwwGxszhLKRzltSua6LsbZISV4wvBKaeO2OSA3p
 d8orOotbaHctfGGJtjQXxebnNEY6tCQLKEv8jVMhi+GjAJ4Hs/37FlC4Gcu+n1ecBrKV
 mVBQ==
X-Gm-Message-State: AOAM531i6jVidPIss7XiCBvnhj+1BNZ6b69WT2J8Dr8/VojngSCkVBMV
 kB0rFAyQIx5CTia8VRDWE2YWUNb8FhZwa9g6/Br4mF+RbwM=
X-Google-Smtp-Source: ABdhPJzNyRE4AyNDnIiBe/CHoarH1V1lYwkitq+Txha3aC1JBbU4r+V4Om3rJY0p6F7qDnidXVvy5cuBbvHjrRuF8vA=
X-Received: by 2002:a05:622a:6115:b0:2f1:d8fa:84aa with SMTP id
 hg21-20020a05622a611500b002f1d8fa84aamr23520324qtb.689.1652267187980; Wed, 11
 May 2022 04:06:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
 <20220506131109.20942-2-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220506131109.20942-2-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 11 May 2022 12:06:01 +0100
Message-ID: <CAM0jSHNiNbYAdM1VKo98TcnzFOf6ZfQif4h+ak_mHYGk=iP4_A@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix i915_vma_pin_iomap()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 6 May 2022 at 14:11, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> From: CQ Tang <cq.tang@intel.com>
>
> Display might allocate a smem object and call
> i915_vma_pin_iomap(), the existing code will fail.
>
> This fix was suggested by Chris P Wilson, that we pin
> the smem with i915_gem_object_pin_map_unlocked().
>
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 34 ++++++++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 162e8d83691b..8ce016ef3dba 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -550,13 +550,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>         if (WARN_ON_ONCE(vma->obj->flags & I915_BO_ALLOC_GPU_ONLY))
>                 return IO_ERR_PTR(-EINVAL);
>
> -       if (!i915_gem_object_is_lmem(vma->obj)) {
> -               if (GEM_WARN_ON(!i915_vma_is_map_and_fenceable(vma))) {
> -                       err = -ENODEV;
> -                       goto err;
> -               }
> -       }
> -
>         GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>         GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND));
>         GEM_BUG_ON(i915_vma_verify_bind_complete(vma));
> @@ -572,17 +565,31 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>                 if (i915_gem_object_is_lmem(vma->obj))
>                         ptr = i915_gem_object_lmem_io_map(vma->obj, 0,
>                                                           vma->obj->base.size);
> -               else
> +               else if (i915_vma_is_map_and_fenceable(vma))
>                         ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
>                                                 vma->node.start,
>                                                 vma->node.size);
> +               else {
> +                       ptr = (void __iomem *)
> +                               i915_gem_object_pin_map_unlocked(vma->obj,
> +                                                               I915_MAP_WC);

Note that with this patch we could now also get rid of lmem_io_map()
and just use this path instead. We just need to ensure we always have
the object lock held when calling pin_iomap, and drop the _unlocked
here, or maybe add an pin_iomap_unlocked if that is easier. If we are
always holding the object lock, we can then also maybe drop the
lockless tricks below...

> +                       if (IS_ERR(ptr)) {
> +                               err = PTR_ERR(ptr);
> +                               goto err;
> +                       }
> +                       ptr = page_pack_bits(ptr, 1);

We should try to avoid pointer packing, but I guess here this is just
re-using the mm.mapping stuff.

> +               }
> +
>                 if (ptr == NULL) {
>                         err = -ENOMEM;
>                         goto err;
>                 }
>
>                 if (unlikely(cmpxchg(&vma->iomap, NULL, ptr))) {
> -                       io_mapping_unmap(ptr);
> +                       if (page_unmask_bits(ptr))
> +                               __i915_gem_object_release_map(vma->obj);
> +                       else
> +                               io_mapping_unmap(ptr);
>                         ptr = vma->iomap;
>                 }
>         }
> @@ -596,7 +603,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>         i915_vma_set_ggtt_write(vma);
>
>         /* NB Access through the GTT requires the device to be awake. */
> -       return ptr;
> +       return page_mask_bits(ptr);
>
>  err_unpin:
>         __i915_vma_unpin(vma);
> @@ -614,6 +621,8 @@ void i915_vma_unpin_iomap(struct i915_vma *vma)
>  {
>         GEM_BUG_ON(vma->iomap == NULL);
>
> +       /* XXX We keep the mapping until __i915_vma_unbind()/evict() */
> +
>         i915_vma_flush_writes(vma);
>
>         i915_vma_unpin_fence(vma);
> @@ -1761,7 +1770,10 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
>         if (vma->iomap == NULL)
>                 return;
>
> -       io_mapping_unmap(vma->iomap);
> +       if (page_unmask_bits(vma->iomap))
> +               __i915_gem_object_release_map(vma->obj);
> +       else
> +               io_mapping_unmap(vma->iomap);
>         vma->iomap = NULL;

I don't suppose you want to type a patch that also moves the
__i915_vma_iounmap() in vma_evict out from under the
is_map_and_fenceable check, since we are currently leaking that lmem
mapping, and now also that pin_map? I could have sworn that internal
fixed that somewhere...

With that "leak" fixed,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

>  }





>
> --
> 2.25.1
>
