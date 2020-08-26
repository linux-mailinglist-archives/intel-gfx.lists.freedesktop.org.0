Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4484253508
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 18:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E3289FAD;
	Wed, 26 Aug 2020 16:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD60389FA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 16:37:21 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id o184so1288922vsc.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 09:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2BwSxF4f8bowMgT9lxB8NMmirWMV8Q/wY9YxNcvaRPQ=;
 b=PPsuGh2jGHNYmtZyKUqKEZTmkHxMQk9WqkLMvNH9bneMWF/WlCbL7IxlFiub6w0WBx
 K6qHja9Y9yuK+oP5++8fprMimEq0ihPjSA1Tk9HIcp/+2J5yIkcbUiGABH0PPrA6NWOp
 ZAzE6QwCGeRxYYzj8essreFZooN+UaQ8jBU0sqd0OU7nC5srrPA6YicAVhaXF5jlqp+t
 swwD8NXTOzdguVuLT6+pXvCytQ0/y3dKDl+yNgtPmyry5n3UK+0LUSHOSFokkwSswO46
 KxksTiN7lt7ISwuDa73arkd9pcQ4qQrdpvhiTsheST1CisZQAyMmuL10LjFB7Pwh2Uhk
 tApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2BwSxF4f8bowMgT9lxB8NMmirWMV8Q/wY9YxNcvaRPQ=;
 b=TpbZQKQrNw45NlFXhnkOKb/VLBhFt5+Fmy8QB+zMf5HKc9IgSpo0Zn0fq145BrqhSe
 bhcUMFNGeLtZ/Mo1kQtXC9se3YGTwsoGmfczugx9RHSpNCV1MqWdc4ADB3r3pAFs76mW
 ihgLVYQUpguSn3xuCTA3612lee3YDMt4oTwTB6QGZLrRfWljb5/wVsOnbcCkNfBm4laC
 Tzh1icWZFukm9MIivZpTFBvFKSnNDn3Q66oEMaHUiJsfLTSGrECrmFPhIE2+mIFj3xES
 c3hvEhPK9puJtxTin2rENGNndoz0oRDVjovRvpSgXqoSX6hM/2iXL8fpt0yDhLJpW3Yx
 FHHA==
X-Gm-Message-State: AOAM533VK2LItizzvew/Bnqj2IVcDjmWPN1sx7QcEtQ4XI+ncf9xR4mh
 MlFjxtfwBwV14Olfwd5uWuvfVlNsrGNMJgXbtHY=
X-Google-Smtp-Source: ABdhPJxfRltH/C51f15G7PDmb9/VDxHCXTrSfbaV6UTan3hCc3cXqeUJ7XpH4vroHEN8IRRsfc0wRZSVl9gLY4gIXjk=
X-Received: by 2002:a67:1702:: with SMTP id 2mr4834161vsx.6.1598459839709;
 Wed, 26 Aug 2020 09:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200826132811.17577-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 26 Aug 2020 17:36:52 +0100
Message-ID: <CAM0jSHNeuARGUXXQHoC5toqvpWFBv3fdpJrWB=R287xfezPYBg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915/gem: Use set_pte_at() for
 assigning the vmapped PTE
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Aug 2020 at 14:28, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Use set_pte_at() to assign the PTE pointer returned by alloc_vm_area(),
> rather than a direct assignment.

and crucially add the missing sync stuff for the mapping?

>
> Fixes: 6056e50033d9 ("drm/i915/gem: Support discontiguous lmem object maps")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c | 33 +++++++++++++++++++----
>  1 file changed, 28 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 51b63e05dbe4..0c3d0d6429ae 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -241,6 +241,17 @@ static inline pte_t iomap_pte(resource_size_t base,
>         return pte_mkspecial(pfn_pte((base + offset) >> PAGE_SHIFT, prot));
>  }
>
> +static void sync_vm_area(struct vm_struct *area)
> +{
> +       unsigned long start = (unsigned long)area->addr;
> +       unsigned long end = start + area->size;
> +
> +       if (ARCH_PAGE_TABLE_SYNC_MASK & PGTBL_PTE_MODIFIED)
> +               arch_sync_kernel_mappings(start, end); /* expected DCE */

What is DCE again?

> +
> +       flush_cache_vmap(start, end);
> +}
> +
>  /* The 'mapping' part of i915_gem_object_pin_map() below */
>  static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
>                                  enum i915_map_type type)
> @@ -308,24 +319,36 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
>         }
>
>         if (i915_gem_object_has_struct_page(obj)) {
> +               unsigned long addr = (unsigned long)area->addr;
>                 struct sgt_iter iter;
>                 struct page *page;
>                 pte_t **ptes = mem;
>
> -               for_each_sgt_page(page, iter, sgt)
> -                       **ptes++ = mk_pte(page, pgprot);
> +               for_each_sgt_page(page, iter, sgt) {
> +                       set_pte_at(&init_mm, addr, *ptes, mk_pte(page, pgprot));

init_mm needs to be exported?

> +                       addr += PAGE_SIZE;
> +                       ptes++;
> +               }
> +               GEM_BUG_ON(addr != (unsigned long)area->addr + obj->base.size);
>         } else {
> +               unsigned long addr = (unsigned long)area->addr;
>                 resource_size_t iomap;
>                 struct sgt_iter iter;
>                 pte_t **ptes = mem;
> -               dma_addr_t addr;
> +               dma_addr_t offset;
>
>                 iomap = obj->mm.region->iomap.base;
>                 iomap -= obj->mm.region->region.start;
>
> -               for_each_sgt_daddr(addr, iter, sgt)
> -                       **ptes++ = iomap_pte(iomap, addr, pgprot);
> +               for_each_sgt_daddr(offset, iter, sgt) {
> +                       set_pte_at(&init_mm, addr, *ptes,
> +                                  iomap_pte(iomap, offset, pgprot));
> +                       addr += PAGE_SIZE;
> +                       ptes++;
> +               }
> +               GEM_BUG_ON(addr != (unsigned long)area->addr + obj->base.size);
>         }
> +       sync_vm_area(area);
>
>         if (mem != stack)
>                 kvfree(mem);
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
