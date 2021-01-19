Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3702FBB2E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 16:31:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C136E3D3;
	Tue, 19 Jan 2021 15:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B0D6E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 15:31:08 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id e15so13916009qte.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yZSqAqobCV29aKAsbx9X3BdSe3WPk54P2mdAg4Ifaig=;
 b=sSOIaLg6W05UzEqXHbLZV+WGQvAv7Go/MQOI3s9K+93W5gF3msiPAF+9fvybL0Sn9K
 0BuX+YEQJ8GfR5KMwO2oWPo0oiCI42mCHXaS7vcwEESVuSwC2AspDeKemgZeFoGdCumi
 Qjm7R2F+z34B1BzqFkE2/btFUoLbkZ5SDP9CD2nsSA55IVssdf9XZ2QwHH6oDljfQtkP
 t3RMxjLxZgKfw+32cD4fgfzGV47JViADsM+Fwh7REBVjY7mGIvTJ98+XyRAf1eF0Itwu
 SMTBJnhxqKCErtlmIjz9AvUK+EkB+yp1H6/1hPVr4pjmGIJ7khqlMXH3XcVoTHd77i1u
 6n/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yZSqAqobCV29aKAsbx9X3BdSe3WPk54P2mdAg4Ifaig=;
 b=YJc6erHia1XRi2wPqdRBO10G7ZjtLrGLKttz/oA8Dhyg2C5ER8msIPff/sZSMRcojg
 /oxI9+Mt+NYh4sZ5fDPgIB/NN2yl+lalyUfmu7mz3RxncCBEQIpg5hSEXVlP9/1UBnBF
 8cNI9j6NyNfGPsX4SYksU+7ZFu9pDU/HMoP/xE8oZWURrZ3aypLui8mkp6/Uc+2E5ljG
 GXiJiN/gRtG/t13Sw2uD4aZvLXTuic/hNVAJ1zbRlHnleCWQ4T/KsWQY99PRCPYz9dyX
 A095LuzeO0APMokjJDm5mNr2zIrDMLW1dq7ZZQjF0NH3hjjPFXmxqogUZfbxtjl9h4lQ
 +CKg==
X-Gm-Message-State: AOAM5322Q2cinVr4jZUn8bADsRoxStx6YJKFyIsadgWphWx4C31+qMy9
 +PnAZksBMY0qyrLx8qJn08JFL/qOqhlAlyaU3Hw=
X-Google-Smtp-Source: ABdhPJwsd4S0TZXx1HxBBkGWArELo1yTDe/l5OmAfh6wUb+tIqg4hPh8haFEo+/lz5uh+EKRDGva3wtIBZwsUIlUQ7g=
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr4526899qti.339.1611070267444; 
 Tue, 19 Jan 2021 07:31:07 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 15:30:41 +0000
Message-ID: <CAM0jSHPcQVc7SEVBhkAd2aVa=g-EAeKZ-5LeMK=tSGriBB8vkw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gem: Almagamate clflushes on
 suspend
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

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When flushing objects larger than the CPU cache it is preferrable to use
> a single wbinvd() rather than overlapping clflush(). At runtime, we
> avoid wbinvd() due to its system-wide latencies, but during
> singlethreaded suspend, no one will observe the imposed latency and we
> can opt for the faster wbinvd to clear all objects in a single hit.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pm.c | 40 +++++++++-----------------
>  1 file changed, 13 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> index 40d3e40500fa..38c1298cb14b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> @@ -11,6 +11,12 @@
>
>  #include "i915_drv.h"
>
> +#if defined(CONFIG_X86)
> +#include <asm/smp.h>
> +#else
> +#define wbinvd_on_all_cpus()
> +#endif
> +
>  void i915_gem_suspend(struct drm_i915_private *i915)
>  {
>         GEM_TRACE("%s\n", dev_name(i915->drm.dev));
> @@ -32,13 +38,6 @@ void i915_gem_suspend(struct drm_i915_private *i915)
>         i915_gem_drain_freed_objects(i915);
>  }
>
> -static struct drm_i915_gem_object *first_mm_object(struct list_head *list)
> -{
> -       return list_first_entry_or_null(list,
> -                                       struct drm_i915_gem_object,
> -                                       mm.link);
> -}
> -
>  void i915_gem_suspend_late(struct drm_i915_private *i915)
>  {
>         struct drm_i915_gem_object *obj;
> @@ -48,6 +47,7 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
>                 NULL
>         }, **phase;
>         unsigned long flags;
> +       bool flush = false;
>
>         /*
>          * Neither the BIOS, ourselves or any other kernel
> @@ -73,29 +73,15 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
>
>         spin_lock_irqsave(&i915->mm.obj_lock, flags);
>         for (phase = phases; *phase; phase++) {
> -               LIST_HEAD(keep);
> -
> -               while ((obj = first_mm_object(*phase))) {
> -                       list_move_tail(&obj->mm.link, &keep);
> -
> -                       /* Beware the background _i915_gem_free_objects */
> -                       if (!kref_get_unless_zero(&obj->base.refcount))
> -                               continue;
> -
> -                       spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
> -
> -                       i915_gem_object_lock(obj, NULL);
> -                       drm_WARN_ON(&i915->drm,
> -                           i915_gem_object_set_to_gtt_domain(obj, false));
> -                       i915_gem_object_unlock(obj);
> -                       i915_gem_object_put(obj);
> -
> -                       spin_lock_irqsave(&i915->mm.obj_lock, flags);
> +               list_for_each_entry(obj, *phase, mm.link) {
> +                       if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
> +                               flush |= (obj->read_domains & I915_GEM_DOMAIN_CPU) == 0;
> +                       __start_cpu_write(obj); /* presume auto-hibernate */
>                 }
> -
> -               list_splice_tail(&keep, *phase);
>         }
>         spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
> +       if (flush)
> +               wbinvd_on_all_cpus();

Hmmm, this builds on !CONFIG_X86?

>  }
>
>  void i915_gem_resume(struct drm_i915_private *i915)
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
