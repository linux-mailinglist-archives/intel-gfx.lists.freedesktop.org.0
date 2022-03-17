Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A171A4DC519
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 12:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571D310E724;
	Thu, 17 Mar 2022 11:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A108C10E7F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 11:56:08 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id h196so4080176qke.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 04:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cajqGc8ao5kFBrtr5tzJMJzqIR2SMf24r7vqQMCx23c=;
 b=ngI6F27i8wm4l0XbxsJQA6YOTLd+trdn0TALWzMrKWYEFuEp8T+fBaSLDhCnBIa+I0
 MyuCci0nuk5FGVkG9Hy97+YkR/ia7oM2D0WyeCMR0C26/y0XhmglFysoZUM9zLOnY04K
 rA1K5fxo8wHm640zHAC9si/stTbL2ghbWABoV7QFhNp7+0wkBzmafel7a/leTrAkGX9S
 wwjHo+FQUGOueDvpkGbwK1jXtytn3ECshs/DyVRc4lgLaE+OKZFDB0yi8V41uzFXDjw5
 UK1kXq1roOVZR4SVFDVPJjFE6uzvQBUqsUs9KLSX12Obq/R+G6CHHVAGQNT7/Rj+DMpm
 5unw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cajqGc8ao5kFBrtr5tzJMJzqIR2SMf24r7vqQMCx23c=;
 b=j0rEUvsmTBuqttn87prTua5lSeimGxNMbnesQ8hxdkR68ZfFbxTLvtrKg31xEohmp1
 mWJn2lTdRQw60PQfCX4Vohar/TLTTJdxk9tUGsgb05wrUq1rauBYDfNXZPNOxFZEAUeD
 MmqnD8bDd64+o3s6avzaLJKig9LKN2wBymH/auZcmfq5HdXSMKGxhBxFBgnCUZXxkUkx
 PU4dbI3bmQAKZDClBG6jZnt3qtbOWHs+3Vb0tvwZqGMxfDdQ93DGWFMiq+K+oHqRKPUQ
 Sj94fjBpuOotacr0AJSK9UBvZ0SdDFDF83JwH1/yxgWPIpmw2u8vJefRW8XdtntTeVD0
 o17w==
X-Gm-Message-State: AOAM532E+JU3624Se2zefEPyVtQDrqPxQPozSxUd+pXrtgcj5esel+jU
 I4rCSMAFHr/rSiEY3Jq+2htw4C53L4AfMeK8fLU=
X-Google-Smtp-Source: ABdhPJzP3Ox4j7WX90rNL7LwZZSjnECiv64YtvdmyI/PCfRReAhfO6pnQuyGwMNEQJoPlgWahWWKG3lLlW1KCGsLuEU=
X-Received: by 2002:a37:4cf:0:b0:67b:1821:f89a with SMTP id
 198-20020a3704cf000000b0067b1821f89amr2472442qke.7.1647518167674; Thu, 17 Mar
 2022 04:56:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 17 Mar 2022 11:55:41 +0000
Message-ID: <CAM0jSHMC76EyN-HeKFeON4ODeGPd2Ez=dF8eTNkA8Yp3eAu-JA@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add smem fallback
 allocation for dpt
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

On Wed, 16 Mar 2022 at 22:23, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> Add fallback smem allocation for dpt if stolen memory
> allocation failed.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index fb0e7e79e0cd..c8b66433d4db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -10,6 +10,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> +#include "gem/i915_gem_internal.h"

Nit: these should be kept sorted

>
>  struct i915_dpt {
>         struct i915_address_space vm;
> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>         void __iomem *iomem;
>         struct i915_gem_ww_ctx ww;
>         int err;
> +       u64 pin_flags = 0;
> +
> +       if (i915_gem_object_is_stolen(dpt->obj))
> +               pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
>
>         wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>         atomic_inc(&i915->gpu_error.pending_fb_pin);
> @@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>                         continue;
>
>                 vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
> -                                                 HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
> +                                                 pin_flags);
>                 if (IS_ERR(vma)) {
>                         err = PTR_ERR(vma);
>                         continue;
> @@ -248,10 +253,15 @@ intel_dpt_create(struct intel_framebuffer *fb)
>
>         size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>
> -       if (HAS_LMEM(i915))
> -               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> -       else
> +       dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
> +       if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
>                 dpt_obj = i915_gem_object_create_stolen(i915, size);
> +       if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
> +               drm_dbg_kms(&i915->drm, "fb: [FB:%d] Allocating dpt from smem\n",
> +                           fb->base.base.id);
> +
> +               dpt_obj = i915_gem_object_create_internal(i915, size);

Looks like we are missing some prerequisite patch to be able to
directly map such memory in vma_pin_iomap?

> +       }
>         if (IS_ERR(dpt_obj))
>                 return ERR_CAST(dpt_obj);
>
> --
> 2.28.0
>
