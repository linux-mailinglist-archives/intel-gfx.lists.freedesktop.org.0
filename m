Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702533ABA9F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 19:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A986E950;
	Thu, 17 Jun 2021 17:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D086E94E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 17:27:58 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 y13-20020a1c4b0d0000b02901c20173e165so4177148wma.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 10:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=0rYmV0YXtK4/nqaonlfBI2ZVrcL6ia1eSA0EQ16ruOQ=;
 b=It1GxSN3S5y9Trm6vYbJWhkBW5/YWLQUavNk7vMkhYNUT6SsH+RiOdGnBv0HZGMXhA
 FG25pKlLChS9R351yezpDLOhXooDNj3dMxYGSjH2DdulTvFjM7ZiQNfmm4PsuRlRQu1z
 yWRb0z9CT8imI7dfaDygeflKO2ToYyM9rDKaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=0rYmV0YXtK4/nqaonlfBI2ZVrcL6ia1eSA0EQ16ruOQ=;
 b=WIM0Qrxz7mTmF0z5QxiX3McxADKLmdtqXmCUHvk9xgS8VO2EAAVsAaHu/zGpB8eRs/
 KJCBQBhsXYz57OtCGmVV3Ev4xuz/PUAI5ofQkWEtqKyOrgprDW86DYzXeYTuATV9HP9H
 kFuDjhVIEPAgYhMT3OOvqqsb3iRZgbjBH5MKEUdIFOMoz2HuNZFWudgRmraiuu2++QyZ
 foFs1i4NWXODUTLCP/EPe+4/9bC3EOupwClzj8OTfxv/otngVL6WbeI3U8ay29B0HTjV
 2VA4qoT/mzn215Y7HKZXXkxg7N1osMwQq1heZpOf8c8FpUvdGv1uB0WhCd32/0wfp9Vf
 xU6A==
X-Gm-Message-State: AOAM533arlVTVMVGbZMRypBHqg1yrMfAXiyRFfiKsEZPZRwcc5qSo5ex
 KsZJ5ZBevJpQ30SNNRTMLft7nA==
X-Google-Smtp-Source: ABdhPJxsLrEArRcm6UbP0rGPkUBgJPQeD7XUjXHyScHm1ESkZ8AEEaliLgRWCmS0480Kuhv67+nQxg==
X-Received: by 2002:a05:600c:214c:: with SMTP id
 v12mr6358655wml.33.1623950877233; 
 Thu, 17 Jun 2021 10:27:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w23sm9180464wmi.0.2021.06.17.10.27.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 10:27:56 -0700 (PDT)
Date: Thu, 17 Jun 2021 19:27:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YMuGGqs4cDotxuKO@phenom.ffwll.local>
Mail-Followup-To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 Matthew Auld <matthew.william.auld@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Airlie <airlied@linux.ie>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <YMdPcWZi4x7vnCxI@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMdPcWZi4x7vnCxI@google.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] drm/i915: __GFP_RETRY_MAYFAIL allocations in stable
 kernels
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 14, 2021 at 09:45:37PM +0900, Sergey Senozhatsky wrote:
> Hi,
> 
> We are observing some user-space crashes (sigabort, segfaults etc.)
> under moderate memory pressure (pretty far from severe pressure) which
> have one thing in common - restrictive GFP mask in setup_scratch_page().
> 
> For instance, (stable 4.19) drivers/gpu/drm/i915/i915_gem_gtt.c
> 
> (trimmed down version)
> 
> static int gen8_init_scratch(struct i915_address_space *vm)
> {
>         setup_scratch_page(vm, __GFP_HIGHMEM);
> 
>         vm->scratch_pt = alloc_pt(vm);
>         vm->scratch_pd = alloc_pd(vm);
>         if (use_4lvl(vm)) {
>                 vm->scratch_pdp = alloc_pdp(vm);
>         }
> }
> 
> gen8_init_scratch() function puts a rather inconsistent restrictions on mm.
> 
> Looking at it line by line:
> 
> setup_scratch_page() uses very restrictive gfp mask:
> 	__GFP_HIGHMEM | __GFP_ZERO | __GFP_RETRY_MAYFAIL
> 
> it doesn't try to reclaim anything and fails almost immediately.
> 
> alloc_pt() - uses more permissive gfp mask:
> 	GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN
> 
> alloc_pd() - likewise:
> 	GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN
> 
> alloc_pdp() - very permissive gfp mask:
> 	GFP_KERNEL
> 
> 
> So can all allocations in gen8_init_scratch() use
> 	GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN

Yeah that looks all fairly broken tbh. The only thing I didn't know was
that GFP_DMA32 wasn't a full gfp mask with reclaim bits set as needed. I
guess it would be clearer if we use GFP_KERNEL | __GFP_DMA32 for these.

The commit that introduced a lot of this, including I915_GFP_ALLOW_FAIL
seems to be

commit 1abb70f5955d1a9021f96359a2c6502ca569b68d
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Tue May 22 09:36:43 2018 +0100

    drm/i915/gtt: Allow pagedirectory allocations to fail

which used a selftest as justification, not real world workloads, so looks
rather dubious.

Adding Matt Auld to this thread, maybe he has ideas.

Thanks, Daniel

> ?
> 
> E.g.
> 
> ---
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index a12430187108..e862680b9c93 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -792,7 +792,7 @@ alloc_pdp(struct i915_address_space *vm)
>  
>         GEM_BUG_ON(!use_4lvl(vm));
>  
> -       pdp = kzalloc(sizeof(*pdp), GFP_KERNEL);
> +       pdp = kzalloc(sizeof(*pdp), I915_GFP_ALLOW_FAIL);
>         if (!pdp)
>                 return ERR_PTR(-ENOMEM);
>  
> @@ -1262,7 +1262,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>  {
>         int ret;
>  
> -       ret = setup_scratch_page(vm, __GFP_HIGHMEM);
> +       ret = setup_scratch_page(vm, GFP_KERNEL | __GFP_HIGHMEM);
>         if (ret)
>                 return ret;
>  
> @@ -1972,7 +1972,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_hw_ppgtt *ppgtt)
>         u32 pde;
>         int ret;
>  
> -       ret = setup_scratch_page(vm, __GFP_HIGHMEM);
> +       ret = setup_scratch_page(vm, GFP_KERNEL | __GFP_HIGHMEM);
>         if (ret)
>                 return ret;
>  
> @@ -3078,7 +3078,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>                 return -ENOMEM;
>         }
>  
> -       ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
> +       ret = setup_scratch_page(&ggtt->vm, GFP_KERNEL | GFP_DMA32);
>         if (ret) {
>                 DRM_ERROR("Scratch setup failed\n");
>                 /* iounmap will also get called at remove, but meh */
> ---
> 
> 
> 
> It's quite similar on stable 5.4 - setup_scratch_page() uses restrictive
> gfp mask again.
> 
> ---
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index f614646ed3f9..99d78b1052df 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -1378,7 +1378,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>                 return 0;
>         }
>  
> -       ret = setup_scratch_page(vm, __GFP_HIGHMEM);
> +       ret = setup_scratch_page(vm, GFP_KERNEL | __GFP_HIGHMEM);
>         if (ret)
>                 return ret;
>  
> @@ -1753,7 +1753,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
>         struct i915_page_directory * const pd = ppgtt->base.pd;
>         int ret;
>  
> -       ret = setup_scratch_page(vm, __GFP_HIGHMEM);
> +       ret = setup_scratch_page(vm, GFP_KERNEL | __GFP_HIGHMEM);
>         if (ret)
>                 return ret;
>  
> @@ -2860,7 +2860,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>                 return -ENOMEM;
>         }
>  
> -       ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
> +       ret = setup_scratch_page(&ggtt->vm, GFP_KERNEL | GFP_DMA32);
>         if (ret) {
>                 DRM_ERROR("Scratch setup failed\n");
>                 /* iounmap will also get called at remove, but meh */
> ---

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
