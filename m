Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BE323ADD7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 21:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9696E31C;
	Mon,  3 Aug 2020 19:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5DE6E31C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 19:59:19 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id t14so739183wmi.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Aug 2020 12:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gaB9+UUE4Ygk8wxs5rnEZIEpZSnrnb4UTT+tmtOuWHI=;
 b=IScmReNi71xW57GbEf++9gYLzyJRuPv1CWTrrwE6kdw4G/o1FYX6MYY89w87DRFku+
 g3mJezEdcvG3vHUSITe+wRqZ/22rA4anDtGr6f0lwmWMG9tMW4kBO5+X4CGLuWq180pz
 wDdxujbLtgk+PpZ7F0wY8lgMroKicWh9bTqM7JDfBzWN8pPb/2QyTWQGnQ2z+lzg4PSM
 hgDLDl4pOHMFjNOXChVHF5fuXP72CWJRkuDusp0/fJ2a5s6w5e65QvaLLD5FkoyaJXjm
 hYhzED7WF68XMrIF9o097LNtajWjmEA9dPGLbCyCwbd44EqYk4fud7LZxiltnouj3Aav
 /68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gaB9+UUE4Ygk8wxs5rnEZIEpZSnrnb4UTT+tmtOuWHI=;
 b=itMiBOGk39tIKDFmm73ZC5vgBA3H6R/M+1uLc/sKZ/GeT4VQXqghG4/a+ykcrfq2YR
 3mNwCa+r1NOA1CF+YSLpDZeODyYV411iYvQe8ktaC0GSqJZPOf3x4J9AzpC1JNkNRuUE
 B73iIOhXq+CJFznDxZbLM/nsLnYlaO0DsdX0NykvA48HvTQemRwc+vtLfMtlrIRleBGK
 m1J4Q4obXLsrZzvxAeLvt/3bWgv4y3k8pl2FFPwzF+udljR6Vmih9pKtp9D+fdNZ+6rp
 8y7C4C4HHr8yM7WyYxrL9ZORPKgqm+vxc2gBw1K2KgpMq5iMUQmDUFnDUxwjtfPSXr5E
 7BCw==
X-Gm-Message-State: AOAM530fMswe35ATWhY9mx98TQGMDqY/KwJtGb1jLfoMWIkTvl/fEMU1
 GklBxkyqIAkzbde3sKOQpOrbBzoGk52DiCt0rEA=
X-Google-Smtp-Source: ABdhPJzvUWfYeW65Fh1S4rX5ZLCbn7N7SrovTBwbPsD46AF40Dna3/leDkvdoqS93l+6MQD9U0sad5mLuiY99bYc4EE=
X-Received: by 2002:a1c:32c3:: with SMTP id y186mr705902wmy.15.1596484758140; 
 Mon, 03 Aug 2020 12:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-35-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-35-matthew.auld@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 3 Aug 2020 12:59:06 -0700
Message-ID: <CAKi4VAJORkqgs=6EaxiHe2nmXVaYT-1EqMCXKGkbc0aH1VYbCQ@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC 34/60] drm/i915: introduce kernel
 blitter_context
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 10, 2020 at 5:00 AM Matthew Auld <matthew.auld@intel.com> wrote:
>
> We may be without a context to perform various internal blitter
> operations, for example when performing object migration. Piggybacking
> off the kernel_context is probably a bad idea, since it has other uses.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 30 +++++++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 +
>  2 files changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index dd1a42c4d344..1df94e82550f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -792,6 +792,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>         int err;
>
>         ce = intel_context_create(engine);
> +
>         if (IS_ERR(ce))
>                 return ce;
>
> @@ -845,16 +846,32 @@ static int engine_init_common(struct intel_engine_cs *engine)
>                 return PTR_ERR(ce);
>
>         ret = measure_breadcrumb_dw(ce);
> -       if (ret < 0)
> -               goto err_context;
> +       if (ret < 0) {
> +               intel_context_put(ce);

I think it's easier to follow the code if the error handling is in one
place. Since you have to put the context.
And since create_kernel_context() pins it, don't we have to
intel_context_unpin() like we are doing
in intel_engine_cleanup_common()?  Which would also mean to probably
factor out a `destroy_kernel_context()`
to always do it, and call from here and from intel_engine_cleanup_common().

Lucas De Marchi

> +               return ret;
> +       }
>
>         engine->emit_fini_breadcrumb_dw = ret;
>         engine->kernel_context = ce;
>
> +       /*
> +        * The blitter context is used to quickly memset or migrate objects
> +        * in local memory, so it has to always be available.
> +        */
> +       if (engine->class == COPY_ENGINE_CLASS) {
> +               ce = create_kernel_context(engine);
> +               if (IS_ERR(ce)) {
> +                       ret = PTR_ERR(ce);
> +                       goto err_kernel_context;
> +               }
> +
> +               engine->blitter_context = ce;
> +       }
> +
>         return 0;
>
> -err_context:
> -       intel_context_put(ce);
> +err_kernel_context:
> +       intel_context_put(engine->kernel_context);
>         return ret;
>  }
>
> @@ -910,6 +927,11 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>         if (engine->default_state)
>                 fput(engine->default_state);
>
> +       if (engine->blitter_context) {
> +               intel_context_unpin(engine->blitter_context);
> +               intel_context_put(engine->blitter_context);
> +       }
> +
>         if (engine->kernel_context) {
>                 intel_context_unpin(engine->kernel_context);
>                 intel_context_put(engine->kernel_context);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 490af81bd6f3..3b2d9ed7670f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -342,6 +342,7 @@ struct intel_engine_cs {
>         struct llist_head barrier_tasks;
>
>         struct intel_context *kernel_context; /* pinned */
> +       struct intel_context *blitter_context; /* pinned; exists for BCS only */
>
>         intel_engine_mask_t saturated; /* submitting semaphores too late? */
>
> --
> 2.26.2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
