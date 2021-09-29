Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DCB41C049
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 10:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5601B6E193;
	Wed, 29 Sep 2021 08:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A256B6E9E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 08:08:20 +0000 (UTC)
Received: by mail-qv1-xf35.google.com with SMTP id r18so971770qvy.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 01:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aSeDJk4HUhcD/FwQx27gMq8FSufRQ2f7052YqfxwQk=;
 b=Qn6yk7hivObTESFyFiOJqz0hUiNs5xy/arpH/Kg3lMCTc/vCyUluBIkjWQq8XUTLEY
 CXaqlf6mOmNJdQdTVZlOjX01Ks/vGgwK9BAS9yOKtkHP0Xp+p4Oo40mcDFfKSOo3qz4C
 8VwlIZ85lJsBhjz2Wz4K6+xJ5sitWFfgo5AupdQm3uSYmBgb5xp5LuFUFO5Tbt1/4yBO
 HoXxh3fWDClHcDgERU/n9PLLjQdK/d2OjXKXkBQCqbel6FHp4m+hORVveJM8z5IA5yyl
 DRu6h3mYvb1K33Nt1A1YKFcF8EQ2IGmRdHmrVt4UlWflsuE8I29Q9HPiSSibGrGJ/v1A
 euEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aSeDJk4HUhcD/FwQx27gMq8FSufRQ2f7052YqfxwQk=;
 b=VNHK5wuhBdofLpH8YPa5InHhCVhEO0t3UKhsCuQz9eqF2jE2iIzkCTFRDqN2rY1pLj
 EkM1VTmuPqX3kbOaWFiWtkL5COq6LosO91xHSc2lm7rnYxQUJc5pru0igRlCd7cYqXfO
 2y8rgpOrN98IgPlF88hNEcdKuzpFq3UWEaxI2tXVLPI24MuvjP2vkIM6DM7XB2bk9waW
 Bm00Qi/5aDqzqkNjUWnvTF9owfOR2LGzEG68gzvot7nPeLsSzznN8YqcQuwnN8NLaWmZ
 I++fO142CJoZ66fkgTe+6LHWjECn0goAxyyQpq1E1EYEFr20b6vgTCyaw0x0tIwMC1LI
 SZPQ==
X-Gm-Message-State: AOAM532zcCx6Pjr5ayjREgDp3KiPopTZQo0XEA7BdZdAtl0Z2gbO35NV
 Ry/L4ASMVtPX9d36GpxaTcjvoSBa4Qtj4uZ/MY8=
X-Google-Smtp-Source: ABdhPJwrbN2OHxOeKVdXKeBFmQFYxYYw8H1aPrLo0/N1qlOVwMusSTIOND3oIIBqNxlEE4KwNVX/jpkmgRLmLMlpNeA=
X-Received: by 2002:a0c:cb10:: with SMTP id o16mr10045524qvk.57.1632902899643; 
 Wed, 29 Sep 2021 01:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-5-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210830121006.2978297-5-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 29 Sep 2021 09:07:51 +0100
Message-ID: <CAM0jSHO1AyUhpiL1A_Jo7JQcPN7+6gDV=MQLi6WuOBRrYUmXNQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915: Remove gen6_ppgtt_unpin_all
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Aug 2021 at 13:09, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> gen6_ppgtt_unpin_all is unused, kill it.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 11 -----------
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.h |  1 -
>  2 files changed, 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index 1aee5e6b1b23..efc243f40d0f 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -405,17 +405,6 @@ void gen6_ppgtt_unpin(struct i915_ppgtt *base)
>                 i915_vma_unpin(ppgtt->vma);
>  }
>
> -void gen6_ppgtt_unpin_all(struct i915_ppgtt *base)
> -{
> -       struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
> -
> -       if (!atomic_read(&ppgtt->pin_count))
> -               return;
> -
> -       i915_vma_unpin(ppgtt->vma);
> -       atomic_set(&ppgtt->pin_count, 0);
> -}
> -
>  struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
>  {
>         struct i915_ggtt * const ggtt = gt->ggtt;
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
> index 6a61a5c3a85a..ab0eecb086dd 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
> @@ -71,7 +71,6 @@ static inline struct gen6_ppgtt *to_gen6_ppgtt(struct i915_ppgtt *base)
>
>  int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww);
>  void gen6_ppgtt_unpin(struct i915_ppgtt *base);
> -void gen6_ppgtt_unpin_all(struct i915_ppgtt *base);
>  void gen6_ppgtt_enable(struct intel_gt *gt);
>  void gen7_ppgtt_enable(struct intel_gt *gt);
>  struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt);
> --
> 2.32.0
>
