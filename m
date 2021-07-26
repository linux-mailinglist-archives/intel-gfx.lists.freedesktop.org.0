Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D07CB3D5CE4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F956FE2D;
	Mon, 26 Jul 2021 15:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497A56FE31
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:24:41 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id d73so15370511ybc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QjVHfBZpnPiFbBZ3/IdLKyMjn6HY43fO+ZkRJugVshQ=;
 b=blPKLoAyFM9V1YShrB8OktdTVrswX78lUpvECX+qOtZuBSpSnvsjb4E6vuan7nRDYG
 0gjZdgxxUAsWTEVVEZN6iBzdUIvI04UUMFCrNInyZhz6bM8+bau5AiL/1KwGnaBwzVFm
 77J1tXf5lBmG+UMEtaV+YaTOBOuISQMEod4BtOybbCLGecBeulKrgLpDw09VPDfayTPl
 zMgqd11I5c0NnXZs3XteG5446IKsQGlBvEEqRHKZy5kS4VDAt9s2h5HY6lAmeKWPvpe7
 2n3m3IF9HJIdmE+nfYRaUjL0yX0wp5FhcrbAdCucaKV5R+RPABlqC1EqYg1wPO2kf7tz
 EGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QjVHfBZpnPiFbBZ3/IdLKyMjn6HY43fO+ZkRJugVshQ=;
 b=nE4o91OrDWtYWo6QEEgRWFmLoPGETAKas+8MyylxZtN2NysQ5riQWJi9bnMvHVfHEO
 2XI9/UQzuZqFyacivKp1ii39yrepsR2Ji94KeDy44/VwXmm/w04/znNrL47THTrT2PYJ
 OtxKIeqy//X33nZOhcyIba6Mom1NAl6N346jVCzpPwMSyso64JD2++UL96wtExFykYtl
 OwCNnc65vb3LnamkMYsE1lnfUqTntfqR48N0Phl9GMFUtAu3Goy+0dtgBr5qSGIxwI5m
 bXbJIgB7TUa3JYgvJ5tcgeNTI+2+1BHHTcibXuHKGa1e49/TUDhd8kv/HzUhUEJliDvn
 yxNQ==
X-Gm-Message-State: AOAM532UzD/YYiBruso4JZ6iP/Ktd4eiUvfkNPyJRfwJ8W1GsgI03pd8
 TsoJv65xgCiQeUNzQK8En+O9ob79qDkWh2igpQy1Hg==
X-Google-Smtp-Source: ABdhPJwoHVf/tH8y2eonpzXub+xPJLHm2bg0llE4+No6fwlAGJDatZy6ITwYSO2fdmqaB8EioXkIVixJtWAKn1TJuDw=
X-Received: by 2002:a25:3750:: with SMTP id e77mr7168772yba.469.1627313080383; 
 Mon, 26 Jul 2021 08:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
 <20210723192934.1004427-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-2-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:24:28 -0500
Message-ID: <CAOFGe94pC9iMNSdeHBp+W+6ob8JCeAWWkZ+=R+0q3O5dX5D36w@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: move i915_active slab to
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
> noise with removing the static global.slab_cache to just a slab_cache.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_active.c  | 31 ++++++++++-------------------
>  drivers/gpu/drm/i915/i915_active.h  |  3 +++
>  drivers/gpu/drm/i915/i915_globals.c |  2 --
>  drivers/gpu/drm/i915/i915_globals.h |  1 -
>  drivers/gpu/drm/i915/i915_pci.c     |  2 ++
>  5 files changed, 16 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 91723123ae9f..9ffeb77eb5bb 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -13,7 +13,6 @@
>
>  #include "i915_drv.h"
>  #include "i915_active.h"
> -#include "i915_globals.h"
>
>  /*
>   * Active refs memory management
> @@ -22,10 +21,7 @@
>   * they idle (when we know the active requests are inactive) and allocate the
>   * nodes from a local slab cache to hopefully reduce the fragmentation.
>   */
> -static struct i915_global_active {
> -       struct i915_global base;
> -       struct kmem_cache *slab_cache;
> -} global;
> +struct kmem_cache *slab_cache;

static?  Or were you planning to expose it somehow?  With that fixed,

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

>
>  struct active_node {
>         struct rb_node node;
> @@ -174,7 +170,7 @@ __active_retire(struct i915_active *ref)
>         /* Finally free the discarded timeline tree  */
>         rbtree_postorder_for_each_entry_safe(it, n, &root, node) {
>                 GEM_BUG_ON(i915_active_fence_isset(&it->base));
> -               kmem_cache_free(global.slab_cache, it);
> +               kmem_cache_free(slab_cache, it);
>         }
>  }
>
> @@ -322,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
>          * XXX: We should preallocate this before i915_active_ref() is ever
>          *  called, but we cannot call into fs_reclaim() anyway, so use GFP_ATOMIC.
>          */
> -       node = kmem_cache_alloc(global.slab_cache, GFP_ATOMIC);
> +       node = kmem_cache_alloc(slab_cache, GFP_ATOMIC);
>         if (!node)
>                 goto out;
>
> @@ -788,7 +784,7 @@ void i915_active_fini(struct i915_active *ref)
>         mutex_destroy(&ref->mutex);
>
>         if (ref->cache)
> -               kmem_cache_free(global.slab_cache, ref->cache);
> +               kmem_cache_free(slab_cache, ref->cache);
>  }
>
>  static inline bool is_idle_barrier(struct active_node *node, u64 idx)
> @@ -908,7 +904,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>                 node = reuse_idle_barrier(ref, idx);
>                 rcu_read_unlock();
>                 if (!node) {
> -                       node = kmem_cache_alloc(global.slab_cache, GFP_KERNEL);
> +                       node = kmem_cache_alloc(slab_cache, GFP_KERNEL);
>                         if (!node)
>                                 goto unwind;
>
> @@ -956,7 +952,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>                 atomic_dec(&ref->count);
>                 intel_engine_pm_put(barrier_to_engine(node));
>
> -               kmem_cache_free(global.slab_cache, node);
> +               kmem_cache_free(slab_cache, node);
>         }
>         return -ENOMEM;
>  }
> @@ -1176,21 +1172,16 @@ struct i915_active *i915_active_create(void)
>  #include "selftests/i915_active.c"
>  #endif
>
> -static void i915_global_active_exit(void)
> +void i915_active_module_exit(void)
>  {
> -       kmem_cache_destroy(global.slab_cache);
> +       kmem_cache_destroy(slab_cache);
>  }
>
> -static struct i915_global_active global = { {
> -       .exit = i915_global_active_exit,
> -} };
> -
> -int __init i915_global_active_init(void)
> +int __init i915_active_module_init(void)
>  {
> -       global.slab_cache = KMEM_CACHE(active_node, SLAB_HWCACHE_ALIGN);
> -       if (!global.slab_cache)
> +       slab_cache = KMEM_CACHE(active_node, SLAB_HWCACHE_ALIGN);
> +       if (!slab_cache)
>                 return -ENOMEM;
>
> -       i915_global_register(&global.base);
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index d0feda68b874..5fcdb0e2bc9e 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -247,4 +247,7 @@ static inline int __i915_request_await_exclusive(struct i915_request *rq,
>         return err;
>  }
>
> +void i915_active_module_exit(void);
> +int i915_active_module_init(void);
> +
>  #endif /* _I915_ACTIVE_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index 91198f5b0a06..a53135ee831d 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -7,7 +7,6 @@
>  #include <linux/slab.h>
>  #include <linux/workqueue.h>
>
> -#include "i915_active.h"
>  #include "i915_buddy.h"
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_object.h"
> @@ -34,7 +33,6 @@ static void __i915_globals_cleanup(void)
>  }
>
>  static __initconst int (* const initfn[])(void) = {
> -       i915_global_active_init,
>         i915_global_buddy_init,
>         i915_global_context_init,
>         i915_global_gem_context_init,
> diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
> index 9e6b4fd07528..d80901ba75e3 100644
> --- a/drivers/gpu/drm/i915/i915_globals.h
> +++ b/drivers/gpu/drm/i915/i915_globals.h
> @@ -23,7 +23,6 @@ int i915_globals_init(void);
>  void i915_globals_exit(void);
>
>  /* constructors */
> -int i915_global_active_init(void);
>  int i915_global_context_init(void);
>  int i915_global_gem_context_init(void);
>  int i915_global_objects_init(void);
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 0deaeeba2347..6ee77a8f43d6 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -30,6 +30,7 @@
>
>  #include "display/intel_fbdev.h"
>
> +#include "i915_active.h"
>  #include "i915_drv.h"
>  #include "i915_perf.h"
>  #include "i915_globals.h"
> @@ -1293,6 +1294,7 @@ static const struct {
>     void (*exit)(void);
>  } init_funcs[] = {
>         { i915_check_nomodeset, NULL },
> +       { i915_active_module_init, i915_active_module_exit },
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
