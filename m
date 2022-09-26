Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CBD5EABD3
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 17:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C32910E706;
	Mon, 26 Sep 2022 15:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA3710E712
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 15:59:24 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id i26so11554048lfp.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 08:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=V3Exk0IZF+GK5cnc9yvzbt5OMcrSN0+7tAh07TPwTz4=;
 b=dVMJ/9GuTVURhwa6HeHSEVORwP3gxOtoKlUSAkwqZJDwF7PeU/6eF3KKfbzVpwzx4d
 9GUGXDAvt95r8EPh9gAK9jSIl0c/hN1R2laL7bSPZ7Pc4trwfAi2A6rqs6eMgejBK9c/
 SZYpl8Gsd/zZR2s7eN5nxobBjRIz+SgzrsjLLIHJhWiyBYUklpRw4nF2RDIxdKu9yrZu
 DU9f4It+G2aOr31HQuL3k2tmNWStKZXFakIDtxbDf6gzQs9etGY6uIK72aHvRb7len2N
 dj75aAI+0GUD2KZJ0KEdMNlna4SSroKrZrssJ1uacx/P70MFYiS6by9SQ6iPv0y+s0NF
 IY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=V3Exk0IZF+GK5cnc9yvzbt5OMcrSN0+7tAh07TPwTz4=;
 b=CmjQpUo03nY3A4c7nRzsfH8aGsGo4qLzR/LgoJmbajQf1R5MV34wHah3B3rNN4OSpf
 1IX/Cr9mK5wWq36VevSymWHAOs0FE+20Ki7kKapZX4677zVv8+zPHfy+4+/+D45gwOMj
 BtFmKZ/PE/rn/mwzHhqcDBgVRwEmieyHfaGXYERE/vgQfSAIJCGYDPvYo/x8606ghn79
 UN5MYraP1ccpLqaoLHl2L0A8pDrrl05YNTZbmgQiZwiMXiVTweyPMYSBF7obRDbMV2FZ
 p1COCRH9D8N+FIFgxVHFnbBpPo6yZs952n+AWs+2MQnZn0xDrybxlEA+14n6AyLFUL3o
 2hXw==
X-Gm-Message-State: ACrzQf3fFDvhST4swzkLZHyE6qSV2zX8DneF1ubRDVdvGjdgAJicRxbh
 TAI1xPqln6fMt/dAi91dUXX2KizZ7YSB7/RyqFT/neQzyPU=
X-Google-Smtp-Source: AMsMyM62Iz4E8sE9QY/iq1nlYHLZeZKqISVquvZNefi6W/ANSGmwIbxIQ2Tl8c2r1rY+PirAjF3ck8gObrRLfAf839w=
X-Received: by 2002:a05:6512:613:b0:497:a8a6:464e with SMTP id
 b19-20020a056512061300b00497a8a6464emr8840950lfe.604.1664207962601; Mon, 26
 Sep 2022 08:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220926155018.109678-1-matthew.auld@intel.com>
In-Reply-To: <20220926155018.109678-1-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 26 Sep 2022 16:58:55 +0100
Message-ID: <CAM0jSHN1aSuj5-td0DVtth7Ybdf2jzAgpeN0XotmEx_HP_+vMg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move scratch page into system
 memory on all platforms
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 26 Sept 2022 at 16:50, Matthew Auld <matthew.auld@intel.com> wrote:
>
> From: Chris Wilson <chris.p.wilson@intel.com>
>
> The scratch page should never be accessed, and is only assigned as a
> filler page to redirection invalid userspace access. It is not of a
> performance concern and so we prefer to have a single consistent
> configuration across all platforms, reducing the pressure on device
> memory and avoiding the direct device access that would be required to
> initialise the scratch page.
>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>

Makes total sense to me. I was playing around with the ps64 stuff, and
remembered this patch,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 43 ++++++++++++++--------------
>  1 file changed, 22 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index c7bd5d71b03e..9604edf7d7c2 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -922,29 +922,30 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>          */
>         ppgtt->vm.has_read_only = !IS_GRAPHICS_VER(gt->i915, 11, 12);
>
> -       if (HAS_LMEM(gt->i915)) {
> +       if (HAS_LMEM(gt->i915))
>                 ppgtt->vm.alloc_pt_dma = alloc_pt_lmem;
> -
> -               /*
> -                * On some platforms the hw has dropped support for 4K GTT pages
> -                * when dealing with LMEM, and due to the design of 64K GTT
> -                * pages in the hw, we can only mark the *entire* page-table as
> -                * operating in 64K GTT mode, since the enable bit is still on
> -                * the pde, and not the pte. And since we still need to allow
> -                * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
> -                * page-table with scratch pointing to LMEM, since that's
> -                * undefined from the hw pov. The simplest solution is to just
> -                * move the 64K scratch page to SMEM on such platforms and call
> -                * it a day, since that should work for all configurations.
> -                */
> -               if (HAS_64K_PAGES(gt->i915))
> -                       ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
> -               else
> -                       ppgtt->vm.alloc_scratch_dma = alloc_pt_lmem;
> -       } else {
> +       else
>                 ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
> -               ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
> -       }
> +
> +       /*
> +        * On some platforms the hw has dropped support for 4K GTT pages
> +        * when dealing with LMEM, and due to the design of 64K GTT
> +        * pages in the hw, we can only mark the *entire* page-table as
> +        * operating in 64K GTT mode, since the enable bit is still on
> +        * the pde, and not the pte. And since we still need to allow
> +        * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
> +        * page-table with scratch pointing to LMEM, since that's
> +        * undefined from the hw pov. The simplest solution is to just
> +        * move the 64K scratch page to SMEM on all platforms and call
> +        * it a day, since that should work for all configurations.
> +        *
> +        * Using SMEM instead of LMEM has the additional advantage of
> +        * not reserving high performance memory for a "never" used
> +        * filler page. It also removes the device access that would
> +        * be required to initialise the scratch page, reducing pressure
> +        * on an even scarcer resource.
> +        */
> +       ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>
>         err = gen8_init_scratch(&ppgtt->vm);
>         if (err)
> --
> 2.37.3
>
