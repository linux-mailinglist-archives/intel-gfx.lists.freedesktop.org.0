Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A314930243F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADB86E072;
	Mon, 25 Jan 2021 11:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com
 [IPv6:2607:f8b0:4864:20::f35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55356E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:28:43 +0000 (UTC)
Received: by mail-qv1-xf35.google.com with SMTP id 2so5983897qvd.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 03:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=redpMwYlLragpLwJ8VNlAH69N+/wz3/zWsoBgvu/LfU=;
 b=ArrOTBWaQ6RCtgLCAugbJZVRZONzek60AE/jMkRNT5/P6NDWEHqj+aHSkPLwUiyT5Q
 FbzrxuNZ4Msxp1/FXwq5SRBkkzMgJs2KdiDVm7++2LEnqGoBF4mQlhYmWNf546Xp70/9
 4PfK35AAnJ7J7kATDgiNfuQs5hbk5NOWmBCBsCSu9cnBVPZlJ9G/leXtRfYWnAY5bHav
 nCDcKGBYRh98tvJHhGikkzkXCbQviiyDsvPfgRnqFO3uxDexdP1Oybe5NUn5wNWB65F9
 0WFy8XF+rYFwCErJDNpgy8/95b/VqV3Qx16nHnpcOe5Iho/o3pr3IC3iEk0fggkK51hL
 SSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=redpMwYlLragpLwJ8VNlAH69N+/wz3/zWsoBgvu/LfU=;
 b=eSU6YaW0bcfAA4U2IE0T/7YqPxKdgwJz2BxQS2QoT9KGeXy9Y2d0W2V+UwXuVN2XJI
 fcoJftuOu2uj8p2cqiIXN0917VfFnGMs5KGruWcU/5DiqiGToO8wxkTFnsdTWfc63o87
 WXVctzkF1apbMEf5w0nPXkxjPAFZH2CuzXhhhoecItrEwT/Oqk/tBBAiyMnjbV7deZ0V
 q3o84IMBRs3wzLvm0YOdNgs+H7xIwouWGtlW2LwkmzKvOU+N9Qef5Z9EQkmVSuH+tt4p
 yu6Nrg1gVt/FH+fnQy/Rpzv3JxMKyyD1XLEMAcrILdbmImiYbXzLDRGa0gIwzayeDwAB
 cBFA==
X-Gm-Message-State: AOAM533Z9kPzIr9ai3drx4frRMU0Zg7GPj1iFC72//qnVbUWblNgovF6
 tiPQjFxaJVtuoS3w6bDL/PZNzH7ZWnlS25McA1KEkZ2dYHI=
X-Google-Smtp-Source: ABdhPJzFC2ldjpP3KYMHm0YPHWLvg2ZP87vZDGsirORNlndQ47hnPsNIc0O574dcw6fZKq/XI4yu5v2HLBvq4JBoPfE=
X-Received: by 2002:a0c:c30e:: with SMTP id f14mr251620qvi.48.1611574122859;
 Mon, 25 Jan 2021 03:28:42 -0800 (PST)
MIME-Version: 1.0
References: <20210124135406.28756-1-chris@chris-wilson.co.uk>
 <20210124135406.28756-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210124135406.28756-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 25 Jan 2021 11:28:16 +0000
Message-ID: <CAM0jSHN_+EQQbE-xU-hEkmAuBCnoaOYx8hbaXBXHTj4nZ-KKkA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Always try to reserve GGTT
 address 0x0
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

On Sun, 24 Jan 2021 at 13:54, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since writing to address 0 is a very common mistake, let's try to avoid
> putting anything sensitive there.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2989
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 40 +++++++++++++++++++---------
>  1 file changed, 28 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index dac07d66f658..3a737d4fbc3c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -535,16 +535,32 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>
>         mutex_init(&ggtt->error_mutex);
>         if (ggtt->mappable_end) {
> -               /* Reserve a mappable slot for our lockless error capture */
> -               ret = drm_mm_insert_node_in_range(&ggtt->vm.mm,
> -                                                 &ggtt->error_capture,
> -                                                 PAGE_SIZE, 0,
> -                                                 I915_COLOR_UNEVICTABLE,
> -                                                 0, ggtt->mappable_end,
> -                                                 DRM_MM_INSERT_LOW);
> -               if (ret)
> -                       return ret;
> +               /*
> +                * Reserve a mappable slot for our lockless error capture.
> +                *
> +                * We strongly prefer taking address 0x0 in order to protect
> +                * other critical buffers against accidental overwrites,
> +                * as writing to address 0 is a very common mistake.
> +                *
> +                * Since 0 may already be in use by the system (e.g. the BIOS
> +                * framebuffer), we let the reservation fail quietly and hope
> +                * 0 remains reserved always.
> +                */
> +               ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
> +               ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
> +               if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
> +                       drm_mm_insert_node_in_range(&ggtt->vm.mm,
> +                                                   &ggtt->error_capture,
> +                                                   ggtt->error_capture.size, 0,
> +                                                   ggtt->error_capture.color,
> +                                                   0, ggtt->mappable_end,
> +                                                   DRM_MM_INSERT_LOW);

We don't want to check the in_range for an error? It should be
impossible I guess?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

>         }
> +       if (drm_mm_node_allocated(&ggtt->error_capture))
> +               drm_dbg(&ggtt->vm.i915->drm,
> +                       "Reserved GGTT:[%llx, %llx] for use by error capture\n",
> +                       ggtt->error_capture.start,
> +                       ggtt->error_capture.start + ggtt->error_capture.size);
>
>         /*
>          * The upper portion of the GuC address space has a sizeable hole
> @@ -557,9 +573,9 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>
>         /* Clear any non-preallocated blocks */
>         drm_mm_for_each_hole(entry, &ggtt->vm.mm, hole_start, hole_end) {
> -               drm_dbg_kms(&ggtt->vm.i915->drm,
> -                           "clearing unused GTT space: [%lx, %lx]\n",
> -                           hole_start, hole_end);
> +               drm_dbg(&ggtt->vm.i915->drm,
> +                       "clearing unused GTT space: [%lx, %lx]\n",
> +                       hole_start, hole_end);
>                 ggtt->vm.clear_range(&ggtt->vm, hole_start,
>                                      hole_end - hole_start);
>         }
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
