Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DB119B60D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A762F6E98C;
	Wed,  1 Apr 2020 18:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645486E98C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:56:50 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id a63so599160vsa.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 11:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pw698GgiTl+WknOYndZoaXLsDmouxaY3uJHJeAeASWY=;
 b=U7Qzebre+Z0Qdc0IQMGygJYjzP1q3oaqhWy+YNq1TZuFeyv2HyV1WL17JOGmjll2NX
 zZqT+9e3u9qGy72xC7ECTL8dFoFcneEYzBViElIHYPOb4+Mn+WH4eUmQQPc8Fg3dLmTA
 HWslcrO2JfNrk6UrY/WfvBd/RrksHdsTuhP3SzYVrq0eKxyl//Cg4790A6IQwXqZw1uO
 LsInVmCzgbjPWQIy4YWmYtaW1pzd8d5TlC7yUhCFPi9MkcShn8q6PuABvMfhU60C6Rsg
 wfo/H6DNRXxs8hQKdit2NVlFYTq3QFtXgJpoh8pVyeWsgaFrJctbMBNhlX9hIogs4JW9
 b6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pw698GgiTl+WknOYndZoaXLsDmouxaY3uJHJeAeASWY=;
 b=RvtcwPkRDHCMSDM0vhhsAsbHOhniikPuJOTljvKwyh/9CAXshZ9Odh8tqvstAtE6YB
 W7PhoHPaaFloCm6J4T3SNDVYAy2J7L8mN+QhivSxVoJzXNAcpzBcQlF3xDSjIAaOHrcT
 MXXQWUn4zf+XN44Y0ZghzqEzVCKXZVqFw/8uIAZGAQfSk4z2SkM3u55VOzlG5M8wEv95
 Sn7Nl4SEi23fve9UogRlLFZcLOeW7ehp0RHaixJl0wtQg25YZEzS8VOPZwTpNhjtaqCk
 z3ZCZD17HJc55jx3y326piABrfOc9EHFFluVTfh2FRh58qR0FMMTHlUg9SAnStmcSN+e
 6wyQ==
X-Gm-Message-State: AGi0PuYeLbGrb8BJWiM+Xz2v+Qtso2DbagUPelXApTKtrav/AzYXUibb
 hqEYvPHqCpOJPCQe2jzxJrwDF2Y8cre4xz+YnFzXsY6y
X-Google-Smtp-Source: APiQypJEGNsrsQHhKFpKkdzaq4aLP9lF6/Jxzl4ll6jvjUUyr5Ljr6nSUDbw4AuwbOkvVEl8Jei7CyMVxtM3Q+imibE=
X-Received: by 2002:a67:f9c6:: with SMTP id c6mr238071vsq.119.1585767409411;
 Wed, 01 Apr 2020 11:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-8-chris@chris-wilson.co.uk>
In-Reply-To: <20200331213108.11340-8-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 19:56:23 +0100
Message-ID: <CAM0jSHNPFgEwensdSNvVj_twgyXp15-xtyumT3Jdw7p+EUNMzA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/gt: Only wait for GPU
 activity before unbinding a GGTT fence
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

On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Only GPU activity via the GGTT fence is asynchronous, we know that we
> control the CPU access directly, so we only need to wait for the GPU to
> stop using the fence before we relinquish it.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 12 ++++++++----
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h |  3 +++
>  drivers/gpu/drm/i915/i915_vma.c              |  4 ++++
>  3 files changed, 15 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 225970f4a4ef..74f8201486b2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -239,15 +239,18 @@ static int fence_update(struct i915_fence_reg *fence,
>                 if (!i915_vma_is_map_and_fenceable(vma))
>                         return -EINVAL;
>
> -               ret = i915_vma_sync(vma);
> -               if (ret)
> -                       return ret;
> +               if (INTEL_GEN(fence_to_i915(fence)) < 4) {
> +                       /* implicit 'unfenced' GPU blits */
> +                       ret = i915_vma_sync(vma);

What was the strangeness with gen < 4 again?

> +                       if (ret)
> +                               return ret;
> +               }
>         }
>
>         old = xchg(&fence->vma, NULL);
>         if (old) {
>                 /* XXX Ideally we would move the waiting to outside the mutex */
> -               ret = i915_vma_sync(old);
> +               ret = i915_active_wait(&fence->active);
>                 if (ret) {
>                         fence->vma = old;
>                         return ret;
> @@ -869,6 +872,7 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
>         for (i = 0; i < num_fences; i++) {
>                 struct i915_fence_reg *fence = &ggtt->fence_regs[i];
>
> +               i915_active_init(&fence->active, NULL, NULL);

Some active_fini?

>                 fence->ggtt = ggtt;
>                 fence->id = i;
>                 list_add_tail(&fence->link, &ggtt->fence_list);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> index 9850f6a85d2a..08c6bb667581 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> @@ -28,6 +28,8 @@
>  #include <linux/list.h>
>  #include <linux/types.h>
>
> +#include "i915_active.h"
> +
>  struct drm_i915_gem_object;
>  struct i915_ggtt;
>  struct i915_vma;
> @@ -41,6 +43,7 @@ struct i915_fence_reg {
>         struct i915_ggtt *ggtt;
>         struct i915_vma *vma;
>         atomic_t pin_count;
> +       struct i915_active active;
>         int id;
>         /**
>          * Whether the tiling parameters for the currently
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 18069df2a9e5..616ca5a7c875 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1232,6 +1232,10 @@ int i915_vma_move_to_active(struct i915_vma *vma,
>                 dma_resv_add_shared_fence(vma->resv, &rq->fence);
>                 obj->write_domain = 0;
>         }
> +
> +       if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
> +               i915_active_add_request(&vma->fence->active, rq);
> +
>         obj->read_domains |= I915_GEM_GPU_DOMAINS;
>         obj->mm.dirty = true;
>
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
