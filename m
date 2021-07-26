Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C194F3D5E55
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F97F6F564;
	Mon, 26 Jul 2021 15:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F146F450
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:47:55 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id a93so15621036ybi.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DYcPJl7p8ffDlxI3xtSs9pPrUmQwHKcGvH3qisYR8Bw=;
 b=EVtgV36cZcbbf7DkdeUlYrWvTsBMzK1KmSdu48wbD0rYZIcbr2sDkNrOsFPPTpu2tH
 w2QVnbtt8iR86uw0RB+0WG4MzTvrX8m5zjB0YgIhkHyqIMjGI5w3rEkQUa8aogChRqth
 2GQlxu3IrlrXGIZ3bUjzC7dOFUDobIP5DNdfx6gQ4FL/DDTO64C5FzqC7PpB0OLDBTM8
 Ywr8OxJaKHdK3UL7l2kKTw3czw//Ncv1g+mSiu9yMH+zZdB5wqei88KyutoMdPXwhnsz
 0IT4PmaAvh9r8soPPzvp2rjQs4jwzL3wpycguDV1Oo2Dqjoci4wb3X1oqEoRBZ6pZwwT
 ScPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DYcPJl7p8ffDlxI3xtSs9pPrUmQwHKcGvH3qisYR8Bw=;
 b=sBXDDJnth8p1T5uLwf4d8jktkhBAFqz06nF6fR5vOhYwnfosFfjWAHKbOmK3NB9hEl
 a/jNJgvgFGxfXC+pGL7GFrTucDcoWiEJAemec7ZL0lhW5w9Cjxy3YTSQEmX4XYQicng0
 gV6wEv8VZLBfsVHQHtILJpyy3O58usccYJKSUDrFpuDQVK4uOyrm/4cApRlDqA2Gyak6
 bWFBA7gDi2g8XGNZPmGW35is98DPD0xuN6BJUDv6S1z8pGUhpcwPNyo14RnF+6hk2Tnd
 xPJcIskILzqhyYu53CI9yAlO+QWMSefCdbHMhUkccPQbPKFmIgMtr+u+pNaC6ixG71ar
 8iDg==
X-Gm-Message-State: AOAM531HtaRm7ftknR4RU7atewO7fMbHx/6C9tMb4QUw9M4DLC1Qwmc0
 xDxt2qHe8G42vNYTQSr7qM3TWWV7AuPQLt/eXRLj0w==
X-Google-Smtp-Source: ABdhPJxJLIKuM0z09umLpHZ97DNGKUKUWoSKnoH2zQVmUZBFHMcUTv0RVW41r72T3edcR5nU2A0YjXRaA3XV8C871rQ=
X-Received: by 2002:a25:d841:: with SMTP id p62mr3032874ybg.180.1627314474790; 
 Mon, 26 Jul 2021 08:47:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210723192934.1004427-1-daniel.vetter@ffwll.ch>
 <20210723192934.1004427-8-daniel.vetter@ffwll.ch>
In-Reply-To: <20210723192934.1004427-8-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:47:43 -0500
Message-ID: <CAOFGe97rLZAA00rDS778rd2MjuH=RHBYiMyuSwWS6eRLkwtwQg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: move scheduler slabs to
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
> noise with removing the static global.slab_dependencies|priorities to just a
> slab_dependencies|priorities.
>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_globals.c   |  2 --
>  drivers/gpu/drm/i915/i915_globals.h   |  2 --
>  drivers/gpu/drm/i915/i915_pci.c       |  2 ++
>  drivers/gpu/drm/i915/i915_scheduler.c | 39 +++++++++++----------------
>  drivers/gpu/drm/i915/i915_scheduler.h |  3 +++
>  5 files changed, 20 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
> index 8fffa8d93bc5..8923589057ab 100644
> --- a/drivers/gpu/drm/i915/i915_globals.c
> +++ b/drivers/gpu/drm/i915/i915_globals.c
> @@ -8,7 +8,6 @@
>  #include <linux/workqueue.h>
>
>  #include "i915_globals.h"
> -#include "i915_scheduler.h"
>  #include "i915_vma.h"
>
>  static LIST_HEAD(globals);
> @@ -29,7 +28,6 @@ static void __i915_globals_cleanup(void)
>  }
>
>  static __initconst int (* const initfn[])(void) = {
> -       i915_global_scheduler_init,
>         i915_global_vma_init,
>  };
>
> diff --git a/drivers/gpu/drm/i915/i915_globals.h b/drivers/gpu/drm/i915/i915_globals.h
> index 9734740708f4..7a57bce1da05 100644
> --- a/drivers/gpu/drm/i915/i915_globals.h
> +++ b/drivers/gpu/drm/i915/i915_globals.h
> @@ -23,8 +23,6 @@ int i915_globals_init(void);
>  void i915_globals_exit(void);
>
>  /* constructors */
> -int i915_global_request_init(void);
> -int i915_global_scheduler_init(void);
>  int i915_global_vma_init(void);
>
>  #endif /* _I915_GLOBALS_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index bb2bd12fb8c2..a44318519977 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -39,6 +39,7 @@
>  #include "i915_perf.h"
>  #include "i915_globals.h"
>  #include "i915_selftest.h"
> +#include "i915_scheduler.h"
>
>  #define PLATFORM(x) .platform = (x)
>  #define GEN(x) \
> @@ -1304,6 +1305,7 @@ static const struct {
>         { i915_gem_context_module_init, i915_gem_context_module_exit },
>         { i915_objects_module_init, i915_objects_module_exit },
>         { i915_request_module_init, i915_request_module_exit },
> +       { i915_scheduler_module_init, i915_scheduler_module_exit },
>         { i915_globals_init, i915_globals_exit },
>         { i915_mock_selftests, NULL },
>         { i915_pmu_init, i915_pmu_exit },
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 561c649e59f7..02d90d239ff5 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -7,15 +7,11 @@
>  #include <linux/mutex.h>
>
>  #include "i915_drv.h"
> -#include "i915_globals.h"
>  #include "i915_request.h"
>  #include "i915_scheduler.h"
>
> -static struct i915_global_scheduler {
> -       struct i915_global base;
> -       struct kmem_cache *slab_dependencies;
> -       struct kmem_cache *slab_priorities;
> -} global;
> +struct kmem_cache *slab_dependencies;

static

> +struct kmem_cache *slab_priorities;

static

>
>  static DEFINE_SPINLOCK(schedule_lock);
>
> @@ -93,7 +89,7 @@ i915_sched_lookup_priolist(struct i915_sched_engine *sched_engine, int prio)
>         if (prio == I915_PRIORITY_NORMAL) {
>                 p = &sched_engine->default_priolist;
>         } else {
> -               p = kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
> +               p = kmem_cache_alloc(slab_priorities, GFP_ATOMIC);
>                 /* Convert an allocation failure to a priority bump */
>                 if (unlikely(!p)) {
>                         prio = I915_PRIORITY_NORMAL; /* recurses just once */
> @@ -122,7 +118,7 @@ i915_sched_lookup_priolist(struct i915_sched_engine *sched_engine, int prio)
>
>  void __i915_priolist_free(struct i915_priolist *p)
>  {
> -       kmem_cache_free(global.slab_priorities, p);
> +       kmem_cache_free(slab_priorities, p);
>  }
>
>  struct sched_cache {
> @@ -313,13 +309,13 @@ void i915_sched_node_reinit(struct i915_sched_node *node)
>  static struct i915_dependency *
>  i915_dependency_alloc(void)
>  {
> -       return kmem_cache_alloc(global.slab_dependencies, GFP_KERNEL);
> +       return kmem_cache_alloc(slab_dependencies, GFP_KERNEL);
>  }
>
>  static void
>  i915_dependency_free(struct i915_dependency *dep)
>  {
> -       kmem_cache_free(global.slab_dependencies, dep);
> +       kmem_cache_free(slab_dependencies, dep);
>  }
>
>  bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
> @@ -475,32 +471,27 @@ i915_sched_engine_create(unsigned int subclass)
>         return sched_engine;
>  }
>
> -static void i915_global_scheduler_exit(void)
> +void i915_scheduler_module_exit(void)
>  {
> -       kmem_cache_destroy(global.slab_dependencies);
> -       kmem_cache_destroy(global.slab_priorities);
> +       kmem_cache_destroy(slab_dependencies);
> +       kmem_cache_destroy(slab_priorities);
>  }
>
> -static struct i915_global_scheduler global = { {
> -       .exit = i915_global_scheduler_exit,
> -} };
> -
> -int __init i915_global_scheduler_init(void)
> +int __init i915_scheduler_module_init(void)
>  {
> -       global.slab_dependencies = KMEM_CACHE(i915_dependency,
> +       slab_dependencies = KMEM_CACHE(i915_dependency,
>                                               SLAB_HWCACHE_ALIGN |
>                                               SLAB_TYPESAFE_BY_RCU);

Indentation

With the nits fixed,

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

> -       if (!global.slab_dependencies)
> +       if (!slab_dependencies)
>                 return -ENOMEM;
>
> -       global.slab_priorities = KMEM_CACHE(i915_priolist, 0);
> -       if (!global.slab_priorities)
> +       slab_priorities = KMEM_CACHE(i915_priolist, 0);
> +       if (!slab_priorities)
>                 goto err_priorities;
>
> -       i915_global_register(&global.base);
>         return 0;
>
>  err_priorities:
> -       kmem_cache_destroy(global.slab_priorities);
> +       kmem_cache_destroy(slab_priorities);
>         return -ENOMEM;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index 650ab8e0db9f..0a4f61fd0be0 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -98,4 +98,7 @@ void i915_request_show_with_schedule(struct drm_printer *m,
>                                      const char *prefix,
>                                      int indent);
>
> +void i915_scheduler_module_exit(void);
> +int i915_scheduler_module_init(void);
> +
>  #endif /* _I915_SCHEDULER_H_ */
> --
> 2.32.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
