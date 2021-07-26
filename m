Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0BC3D5CF2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE046FE36;
	Mon, 26 Jul 2021 15:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0146FE59
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:26:47 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id g76so15459589ybf.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H6wl93W1xfyR4eqzH50U7OL/RM+7q9Jr9sdrZMFnByQ=;
 b=CFCr+uUEcZWea2gJN5y0nIAu9O73tmRG7J/h1OFEYLhXskZ3+wAMcJiuZ+ygGbGCND
 xJQd9zNthTg/YI/7MCVN10IQGX6iKiTuJVFG5WX9NMWdI7mKnpA8EtygtgDzspjcKsuC
 o3xXMgQp8eOzR4BQjlIM29Q/KGD4rzGiSvaDhk/YOczd9FnYytNQiQd2lXVix7Njtrpt
 XMEDJP3OPLOHagxfuvq3nUA8h+p3I1I/ExV2AlpwuLuBayNhlA+HSzcDwtyMGt/rZ4b1
 Bweo2qpLMZ0GhAvRtDMSuPNIg91ZRaKR8RLZfonUAS3NHFijMR1VJ5LiW8bszpVuajTR
 PA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H6wl93W1xfyR4eqzH50U7OL/RM+7q9Jr9sdrZMFnByQ=;
 b=dw/XOSyzu+ivdwVVG2r1R8wmI/qEx+WvEPDtq73zlQTPhPowSozH+tY90uTT83OTv+
 11HuOsdFSij2wO4aum0tcEE2eu25YaV5pFjQDAjO61fpE2EE5gwhRBqYVuFwdt3ZJE6y
 SPYuRgJLb9oh4TVNLk49fcFjRUN9UCDwuFfxup3bGZlcWaHt36ig4XV3EAxq/7JsKWWK
 +mLweSWF/87ep63urCBAEXiCapv7k6KimGXaVT4DM/VMR6GPVcsIZJz87mMeY+akT9hH
 rofYpepDyRJYKl7cC+5OJ+F1AnnnmlDVK3Ek3Fpfi7UiiOJkxSxo0b7IWVCMzBHC2WeH
 8gTA==
X-Gm-Message-State: AOAM531PhhUGeQK9KG/tf73s5mCRHs9NJonAaInPfXlWX78jhsPYE1Ts
 q8PGWtRLbbogzIsd2EBn5w7Ge+ZqkErU1tGvZacrAA==
X-Google-Smtp-Source: ABdhPJxcsN6RdKYlG/qbjX1RJALedx1OHbE2hmkX6K0QX7kOsnfFHaMcGhGicyFuZxHW335APlAIdbnyB0qn6eVBYxA=
X-Received: by 2002:a25:680b:: with SMTP id d11mr6356282ybc.241.1627313206304; 
 Mon, 26 Jul 2021 08:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
 <20210723192934.1004427-3-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-3-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:26:34 -0500
Message-ID: <CAOFGe973=WchP_GK76rewxK8RDMeVjNEqsHF235n=7hGAZX77Q@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: move i915_buddy slab to
 direct module init/exit
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 2:29 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> With the global kmem_cache shrink infrastructure gone there's nothing
> special and we can convert them over.
>
> I'm doing this split up into each patch because there's quite a bit of
> noise with removing the static global.slab_blocks to just a
> slab_blocks.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_buddy.c   | 25 ++++++++-----------------
>  drivers/gpu/drm/i915/i915_buddy.h   |  3 ++-
>  drivers/gpu/drm/i915/i915_globals.c |  2 --
>  drivers/gpu/drm/i915/i915_pci.c     |  2 ++
>  4 files changed, 12 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i915_buddy.c
> index caabcaea3be7..045d00c43b4c 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.c
> +++ b/drivers/gpu/drm/i915/i915_buddy.c
> @@ -8,13 +8,9 @@
>  #include "i915_buddy.h"
>
>  #include "i915_gem.h"
> -#include "i915_globals.h"
>  #include "i915_utils.h"
>
> -static struct i915_global_buddy {
> -       struct i915_global base;
> -       struct kmem_cache *slab_blocks;
> -} global;
> +struct kmem_cache *slab_blocks;

static?  With that fixed,

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

>
>  static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_mm *mm,
>                                                  struct i915_buddy_block *parent,
> @@ -25,7 +21,7 @@ static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_mm *mm,
>
>         GEM_BUG_ON(order > I915_BUDDY_MAX_ORDER);
>
> -       block = kmem_cache_zalloc(global.slab_blocks, GFP_KERNEL);
> +       block = kmem_cache_zalloc(slab_blocks, GFP_KERNEL);
>         if (!block)
>                 return NULL;
>
> @@ -40,7 +36,7 @@ static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_mm *mm,
>  static void i915_block_free(struct i915_buddy_mm *mm,
>                             struct i915_buddy_block *block)
>  {
> -       kmem_cache_free(global.slab_blocks, block);
> +       kmem_cache_free(slab_blocks, block);
>  }
>
>  static void mark_allocated(struct i915_buddy_block *block)
> @@ -410,21 +406,16 @@ int i915_buddy_alloc_range(struct i915_buddy_mm *mm,
>  #include "selftests/i915_buddy.c"
>  #endif
>
> -static void i915_global_buddy_exit(void)
> +void i915_buddy_module_exit(void)
>  {
> -       kmem_cache_destroy(global.slab_blocks);
> +       kmem_cache_destroy(slab_blocks);
>  }
>
> -static struct i915_global_buddy global = { {
> -       .exit = i915_global_buddy_exit,
> -} };
> -
> -int __init i915_global_buddy_init(void)
> +int __init i915_buddy_module_init(void)
>  {
> -       global.slab_blocks = KMEM_CACHE(i915_buddy_block, 0);
> -       if (!global.slab_blocks)
> +       slab_blocks = KMEM_CACHE(i915_buddy_block, 0);
> +       if (!slab_blocks)
>                 return -ENOMEM;
>
> -       i915_global_register(&global.base);
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i915_buddy.h
> index d8f26706de52..3940d632f208 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.h
> +++ b/drivers/gpu/drm/i915/i915_buddy.h
> @@ -129,6 +129,7 @@ void i915_buddy_free(struct i915_buddy_mm *mm, struct i915_buddy_block *block);
>
>  void i915_buddy_free_list(struct i915_buddy_mm *mm, struct list_head *objects);
>
> -int i915_global_buddy_init(void);
> +void i915_buddy_module_exit(void);
> +int i915_buddy_module_init(void);
>
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index a53135ee831d..3de7cf22ec76 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -7,7 +7,6 @@
>  #include <linux/slab.h>
>  #include <linux/workqueue.h>
>
> -#include "i915_buddy.h"
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_object.h"
>  #include "i915_globals.h"
> @@ -33,7 +32,6 @@ static void __i915_globals_cleanup(void)
>  }
>
>  static __initconst int (* const initfn[])(void) = {
> -       i915_global_buddy_init,
>         i915_global_context_init,
>         i915_global_gem_context_init,
>         i915_global_objects_init,
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 6ee77a8f43d6..f9527269e30a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -31,6 +31,7 @@
>  #include "display/intel_fbdev.h"
>
>  #include "i915_active.h"
> +#include "i915_buddy.h"
>  #include "i915_drv.h"
>  #include "i915_perf.h"
>  #include "i915_globals.h"
> @@ -1295,6 +1296,7 @@ static const struct {
>  } init_funcs[] = {
>         { i915_check_nomodeset, NULL },
>         { i915_active_module_init, i915_active_module_exit },
> +       { i915_buddy_module_init, i915_buddy_module_exit },
>         { i915_globals_init, i915_globals_exit },
>         { i915_mock_selftests, NULL },
>         { i915_pmu_init, i915_pmu_exit },
> --
> 2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
