Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E7D215F2D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 21:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBF689E36;
	Mon,  6 Jul 2020 19:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71DB89E36
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 19:07:04 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x205so979353vsc.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 12:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2VLU2NuOM2KFAtDE2YpOzO7VH5NK7KOuaFbC73TvQ5w=;
 b=E+1AKUzw0kzNK+57gxGnRpjPuqfqvAR1q0byEUxXDdsAblPZsze/8fCxBASMrnET7i
 r0SfJVRSMZ4amvxQcZgjWRGYhDJa27BwIZlT2zYEP90qfmdR5PDDCtVgwFla1jfwuf6E
 Y5FEXJaxiDHyFYkfmC8R6hMdWc6oXSpdZD1h5qRpTpzP0Er2t015epIUWdfzKmoG1SDh
 GvN+GW1NvPSlF2192ewGbOoYJ1HD3XdhIIjfytHFi21FverPIMs9PPvqE5WaZpfuPSes
 Trj2bQP1oQ+47Z1Q6k0fT/vZwbmPkq45u0bl61wlqN84mnAALOOGEtYB51oYk2ImBSpV
 LArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2VLU2NuOM2KFAtDE2YpOzO7VH5NK7KOuaFbC73TvQ5w=;
 b=kMSMypZMqV4gk20mAc8Us3eMuLncOAjIGE12qKktelV4zGnG1Vx4KXFh4aC+o6Q2K4
 AZkuyCx8oPGkSiuCegDG+kqY6eudaHUpywav+BP2jzmXZoIRNiW8LllzIzn7IYtvzDuZ
 rgoo7DFIAWE2rPLQMkLT5cm9I8Ea58A6eM+IYPCY2pYHjkzz58GH3utm7TaqiIQW0m2f
 YbsNpotjO5HDcqQMe7jfPihuKYXAo/anyv6Q/dHBq5ZM75Fad8pV3CLx0zugT2ZoOnRx
 7V1NOEjNGi/U33SxkWL+GRsmRspxdQwgsh9qQPLdhkeozazpoJp1DHJcdU4PKLzzNyTR
 x2Ew==
X-Gm-Message-State: AOAM532a/n4wh2o/n/mL2vatMkxUD02pIxK7LprHsmRrqQNsRz95KvuV
 SUsvO/YhIfdT7iPXId1CTyVsp4BdoBicOzpjI3EiPM1E
X-Google-Smtp-Source: ABdhPJx9tYGn9OjT8qQRnSmeuIeNizGoHfzfaq/0nFgTaGVcivvl/amfEAogMQRoQZ2eSkhH8n0uLrAo8Dk5sz8LIk4=
X-Received: by 2002:a67:69c1:: with SMTP id e184mr5341632vsc.119.1594062423953; 
 Mon, 06 Jul 2020 12:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200706061926.6687-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 6 Jul 2020 20:06:38 +0100
Message-ID: <CAM0jSHOuEq_zTC1JF5nPPp_tvWo4tOqk5=pZcGhpwJGEReb5pw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915: Switch to object
 allocations for page directories
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 6 Jul 2020 at 07:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The GEM object is grossly overweight for the practicality of tracking
> large numbers of individual pages, yet it is currently our only
> abstraction for tracking DMA allocations. Since those allocations need
> to be reserved upfront before an operation, and that we need to break
> away from simple system memory, we need to ditch using plain struct page
> wrappers.
>
> In the process, we drop the WC mapping as we ended up clflushing
> everything anyway due to various issues across a wider range of
> platforms. Though in a future step, we need to drop the kmap_atomic
> approach which suggests we need to pre-map all the pages and keep them
> mapped.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<snip>

>
> -int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
> +int setup_scratch_page(struct i915_address_space *vm)
>  {
>         unsigned long size;
>
> @@ -338,21 +174,22 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>          */
>         size = I915_GTT_PAGE_SIZE_4K;
>         if (i915_vm_is_4lvl(vm) &&
> -           HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K)) {
> +           HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K))
>                 size = I915_GTT_PAGE_SIZE_64K;
> -               gfp |= __GFP_NOWARN;
> -       }
> -       gfp |= __GFP_ZERO | __GFP_RETRY_MAYFAIL;
>
>         do {
> -               unsigned int order = get_order(size);
> -               struct page *page;
> -               dma_addr_t addr;
> +               struct drm_i915_gem_object *obj;
>
> -               page = alloc_pages(gfp, order);
> -               if (unlikely(!page))
> +               obj = vm->alloc_pt_dma(vm, size);
> +               if (IS_ERR(obj))
>                         goto skip;
>
> +               if (pin_pt_dma(vm, obj))
> +                       goto skip_obj;
> +
> +               if (obj->mm.page_sizes.sg < size)
> +                       goto skip_obj;
> +

We should still check the alignment of the final dma address
somewhere, in the case of 64K. I have for sure seen dma misalignment
here before.

>                 /*
>                  * Use a non-zero scratch page for debugging.
>                  *
> @@ -362,61 +199,28 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>                  * should it ever be accidentally used, the effect should be
>                  * fairly benign.
>                  */
> -               poison_scratch_page(page, size);
> -
> -               addr = dma_map_page_attrs(vm->dma,
> -                                         page, 0, size,
> -                                         PCI_DMA_BIDIRECTIONAL,
> -                                         DMA_ATTR_SKIP_CPU_SYNC |
> -                                         DMA_ATTR_NO_WARN);
> -               if (unlikely(dma_mapping_error(vm->dma, addr)))
> -                       goto free_page;
> -
> -               if (unlikely(!IS_ALIGNED(addr, size)))
> -                       goto unmap_page;
> -
> -               vm->scratch[0].base.page = page;
> -               vm->scratch[0].base.daddr = addr;
> -               vm->scratch_order = order;
> +               poison_scratch_page(obj);

Since this is now an internal object, which lacks proper clearing, do
we need to nuke the page(s) somewhere, since it is visible to
userspace? The posion_scratch seems to only be for debug builds.

> +
> +               vm->scratch[0] = obj;
> +               vm->scratch_order = get_order(size);
>                 return 0;
>
> -unmap_page:
> -               dma_unmap_page(vm->dma, addr, size, PCI_DMA_BIDIRECTIONAL);
> -free_page:
> -               __free_pages(page, order);
> +skip_obj:
> +               i915_gem_object_put(obj);
>  skip:
>                 if (size == I915_GTT_PAGE_SIZE_4K)
>                         return -ENOMEM;
>
>                 size = I915_GTT_PAGE_SIZE_4K;
> -               gfp &= ~__GFP_NOWARN;
>         } while (1);
>  }
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
