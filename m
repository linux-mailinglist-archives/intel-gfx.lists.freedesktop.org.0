Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8FE492768
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 14:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6491610E153;
	Tue, 18 Jan 2022 13:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC78510E153
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 13:45:37 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id d11so9565123qkj.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 05:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dN1R3ogv15XjUg1uC/Yr1PQWVm9lX1LSlSJ+3qUMRKo=;
 b=dqTdM5cDxsTfx+KikW+wnQ6ZdAWuHSJvMvlQPmZrV1jIf7rwfkM8RIU3U0RN1Mz/MH
 RZkVegqKR8Kwh0NQA/ivB5SKihHnWom1SdrtWiRgma7yD2dTrSbO3wTpoGIxYhiQQPIr
 WzPKeHJtLFjQSpBN/+JNJSkpEq41vkyuWlplkHOmy86kYkXcPBcaybZcZhKDNaccX8qT
 F9XCcPZvEbinP56dqqkfOHZ7fmVQ96xneoVqJIBdY2JmQ4yUoZNUqDQ+UzB4oYwux99R
 +/0okIXQIUKKlvDaLMRu6+FHOwP3FfuMaUc9SGTdV4Do2/c0LRi30SUE5WZfjDiwra03
 82UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dN1R3ogv15XjUg1uC/Yr1PQWVm9lX1LSlSJ+3qUMRKo=;
 b=qANIh+35bRKAzyyBKlAJMoqTdUTP3/9FhWkrZrppdiwZV14fCYshQYIfQ9pNdHejwV
 kZPDhh4ank4mJ0ZawGo0rTVrur+wT1ml608vq3ttUWY8tzMl8uXBHZJVSWt58wxZtgEV
 M3ivQtJq3MNRyclbQTDW9FHoAfFCMeq8Foaffjk6ZTU9GbfkmndyPYmClAJqotAmJNNz
 IgLUVFaPx2Eqsvg5DkpE2V6Pclt3/WBq66n5vPFYm4J4GJv4JbX/C5twdrlLYHecJO8w
 1kLDSytb2xmyJNLm84DARZ/olXet6b5n6eK6Kj4vGdBmLaEwkHVxeihOupl/fh/J1PiH
 c/uQ==
X-Gm-Message-State: AOAM532WqcbY8KA2yNn1mVHi+AFkK8zDPWiT+UmEM128KxrauotcXOEZ
 +bSnK8rs7ottObComCb3BF9N0h8gzlBeloIkass=
X-Google-Smtp-Source: ABdhPJx4VB2jzH1PrnsMc+uFsSPe1/zwb80SQOnIccLcAZeqtlZvx3f2UU5PdsTtMLvqLSRG3VhLtXXDm28yICOn7Iw=
X-Received: by 2002:a05:620a:4012:: with SMTP id
 h18mr2625392qko.82.1642513536996; 
 Tue, 18 Jan 2022 05:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220114082517.25551-1-stanislav.lisovskiy@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Jan 2022 13:45:10 +0000
Message-ID: <CAM0jSHPXSMQ83TRi2kygb5W7HGxvO1daB2GU9+CJUEJ4NtSewQ@mail.gmail.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use
 i915_gem_object_pin_map_unlocked function for lmem allocation
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
 Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Jan 2022 at 08:25, Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> Using i915_gem_object_pin_map_unlocked instead of
> i915_gem_object_lmem_io_map, would eliminate the need
> of using I915_BO_ALLOC_CONTIGUOUS, when calling
> i915_vma_pin_iomap, because it supports non-contiguous
> allocation as well.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 27 ++++++++++++++++++++-------
>  1 file changed, 20 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 1f15c3298112..194ad92013f6 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -547,10 +547,16 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>                  * of pages, that way we can also drop the
>                  * I915_BO_ALLOC_CONTIGUOUS when allocating the object.
>                  */

Remove the TODO above also?

> -               if (i915_gem_object_is_lmem(vma->obj))
> -                       ptr = i915_gem_object_lmem_io_map(vma->obj, 0,
> -                                                         vma->obj->base.size);
> -               else
> +               if (i915_gem_object_is_lmem(vma->obj)) {
> +                       ptr = (void __iomem *)
> +                              i915_gem_object_pin_map_unlocked(vma->obj,
> +                                                               I915_MAP_WC);

Do you know if we need some kind of sanity check here to ensure that
the vma->pages == obj->mm.pages, when dealing with LMEM? AFAIK the vma
could in theory remap the pages, and here pin_map only cares about the
obj->mm.pages? Maybe check if the vma is VIEW_NORMAL or something?

> +                       if (IS_ERR(ptr)) {
> +                               err = PTR_ERR(ptr);
> +                               goto err;
> +                       }
> +                       ptr = page_pack_bits(ptr, 1);

AFAIK, the guidance is to move away from pointer packing. Can we just
make the iounmap check for is_lmem()?

> +               } else
>                         ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
>                                                 vma->node.start,
>                                                 vma->node.size);
> @@ -560,7 +566,10 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
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
> @@ -574,7 +583,7 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>         i915_vma_set_ggtt_write(vma);
>
>         /* NB Access through the GTT requires the device to be awake. */
> -       return ptr;
> +       return page_mask_bits(ptr);
>
>  err_unpin:
>         __i915_vma_unpin(vma);
> @@ -1687,7 +1696,11 @@ static void __i915_vma_iounmap(struct i915_vma *vma)
>         if (vma->iomap == NULL)
>                 return;
>
> -       io_mapping_unmap(vma->iomap);
> +       if (page_unmask_bits(vma->iomap))
> +               __i915_gem_object_release_map(vma->obj);
> +       else
> +               io_mapping_unmap(vma->iomap);
> +
>         vma->iomap = NULL;
>  }
>
> --
> 2.24.1.485.gad05a3d8e5
>
