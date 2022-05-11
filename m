Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1435230D9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 12:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E38310ED10;
	Wed, 11 May 2022 10:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8638110ED10
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 10:41:39 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id k2so1657752qtp.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 03:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UY+3lEzhf5BNK1DJ1tCyKQ4qNHUqh89TkLQ5UFkyCBo=;
 b=HlvOXPryn36FDvY62SI7wpg0q19hiFxy6QdLlvYphPuci3XtUBghu+YzyXLMdaEGko
 IP0bTIw99dCxWkFdZjGjs+o95yipFZbSDePBA21tnA6nzQJOm4JtnNifwyJFidjMYoip
 sP2nD+asS+5syyn78GJ7LpX350lP7D5/n7rBmxb8Ipilzpv07i1h7ScesCzNlJWtDtSY
 RldoiBgCEtIRLvryhwva3T7ZvnWlDqPquKnKVvRJJLQNKMOzMrLNL0Bg+Rk2NGNFGjs7
 siW3GOqUgkuLBpLYgIhNGscmvud2Tz8X18nc6FMaa6d2Z8EVSpZVut7ewOVNtmgBrVJT
 bScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UY+3lEzhf5BNK1DJ1tCyKQ4qNHUqh89TkLQ5UFkyCBo=;
 b=2X0GJQVFkcgxBFRRpiHJ937CKfjpBzHPGpk2DEZj0W5GyOi1sFvbWHTkq0mxi8sH3p
 K+iU01HfutJBKWH+iobck8U8oxv/nhqfnnd9XxTQEiQylVEu3uxfGhnYRSdoOxVgp8A/
 2sAm+nrmJdVR5it1zNwa37YUQ9ewYSIlcvNtpfoGweYYNQm53ZTUszSO/U7cRbHFgedC
 1ac1RR/i6tcuJK0jOssEPwCAB9QBYYZnJnbNyp9s+FsLjNkPzSolMxpCxPfnJAzHZPKz
 TgQWD11Z8z4LUEsBro1vhU6B1tdbrJVVOXl1bylXd50ZAIBpYsGqnoja2OKnH9N7UPbN
 bZNg==
X-Gm-Message-State: AOAM530hUnKUQcGTKlsroFSf6mx2K+A7xlR1SU8iECp3yhCRTR3jT3Ts
 O0BV1EvglEMXBQ2QReffnShxJewJuspP0YYXSfY=
X-Google-Smtp-Source: ABdhPJzYqwNmTVzPz7IWcR2IvozQvbUYlMh3aQKU3Z2rBjPBaeQH2Jfg7yyUj7GlmISHe+qpPTKrKfIvQv0veEB9cLw=
X-Received: by 2002:ac8:7d84:0:b0:2f3:f1d4:3811 with SMTP id
 c4-20020ac87d84000000b002f3f1d43811mr1495740qtd.645.1652265698445; Wed, 11
 May 2022 03:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220506131109.20942-1-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 11 May 2022 11:41:12 +0100
Message-ID: <CAM0jSHN4v2c7jFPbP25duzPDjj5hGZtSqBAGhs5caht5PwR5mA@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add smem fallback
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

On Fri, 6 May 2022 at 14:11, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> Add fallback smem allocation for dpt if stolen memory allocation failed.
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index fb0e7e79e0cd..10008699656e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -10,6 +10,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> +#include "gem/i915_gem_internal.h"

Nit: Keep these ordered.

>
>  struct i915_dpt {
>         struct i915_address_space vm;
> @@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
>         void __iomem *iomem;
>         struct i915_gem_ww_ctx ww;
>         int err;
> +       u64 pin_flags = 0;

Nit: Christmas tree-ish. Move this above the err.

> +
> +       if (!i915_gem_object_is_lmem(dpt->obj))
> +               pin_flags |= PIN_MAPPABLE;

If we do this then we don't need the second patch ;)

I guess the second patch was meant to make this is_stolen? Maybe just
move the second patch to be the first in the series?

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
> @@ -248,10 +253,13 @@ intel_dpt_create(struct intel_framebuffer *fb)
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
> +               drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");

Hopefully this is not too noisy?

With the s/is_lmem/is_stolen/, or however you want to deal with that,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> +               dpt_obj = i915_gem_object_create_internal(i915, size);
> +       }
>         if (IS_ERR(dpt_obj))
>                 return ERR_CAST(dpt_obj);
>
> --
> 2.25.1
>
