Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FFD41C0BE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 10:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3812F6E9E0;
	Wed, 29 Sep 2021 08:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F72E6E9E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 08:37:40 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id a13so1009907qvo.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 01:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dYyhu7SayifwtqMeTzYYtfbiyEuhQ6T8Y9SGLU4A5Nc=;
 b=U31tR/KWl/dnWROJ8Zg2Seol6Mty8uMwlVOD5n0wLzlshmq+Jy8ZxrMo67+ouXDIx0
 Bdbr9G6/ihIiSqyBDzBfcvanqNIGHuVz4ML3zMo65vEGSa4coIpoAkcr2zeJ5ydDFdlh
 8HLoGZFXRPDeWBzESt6w1tNI0l9vE+XLwMVPaslxCXizPzlc6oHrxt/vtG/rE0w9eU6H
 Dv3OcSQoUbX1tfOk3e0mXjEDp0xoS5WJ7iyOnYEekAKG8ApJuxzK4s1qYDwh/ehXb6uC
 xAwZsivkb55V/D5F3adUntrPvutctw+GsXuMH3BCRd0ZyCkaHyu9Zr5esPwCGmI8WvdD
 rBNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dYyhu7SayifwtqMeTzYYtfbiyEuhQ6T8Y9SGLU4A5Nc=;
 b=cm6yCt3QVzX/PJVU1o1hYzKf/Y7fhvdIBXBUmCcmYAW/nUNHXqL1VbZbJ3H7dKAXGl
 0IExhs4SrL1qxq8j7rS2ehnnlditG4hg1il/zFruhGrX/m0g7Ab0j1dWwvD3p3biDONH
 TPxCmADS66rQmzjAPUp9E6uHsNUMFC/pGZ7ETGd+6WyaXZv9F/oTYGWw7lDGNks7BBF2
 yp/LuO9Fe0g1AhIpalkX2KuNTlgPuirrYa/vrp6vOWe2Pe6/YilVuGqZfYCIdJ4ZWQcL
 cyvCtUXbFYekHu9gOaQcv5AnZ9SEFnidvop6ZkZVs6+claCVCper8YoaOOcrQWi8zOzd
 qNQQ==
X-Gm-Message-State: AOAM530yKfHAWDnsmhuXke2OSaiYvY4qi3GRTfLvZnn36H8wG/DKodqs
 KEOXCslu7kinYEeWJfx+TLyb0h+YUCltoZaI1IocLC5cei/fzg==
X-Google-Smtp-Source: ABdhPJxFkU3JcuTposD/iSAMEIgey4I4d9VP2majh7yx3s9EctO/UO4fM7JW6Bg+C6x1Elfe2Qdthni0rueUUrUdnq0=
X-Received: by 2002:a0c:8cc3:: with SMTP id q3mr9813126qvb.19.1632904659591;
 Wed, 29 Sep 2021 01:37:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-9-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210830121006.2978297-9-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 29 Sep 2021 09:37:11 +0100
Message-ID: <CAM0jSHP7GtkRoDV+avUKyOe6SOce0ZO_2Tzg9p8O7KR9nWk_VQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915: Fix runtime pm handling in
 i915_gem_shrink
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

On Mon, 30 Aug 2021 at 13:10, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> We forgot to call intel_runtime_pm_put on error, fix it!
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Fixes: cf41a8f1dc1e ("drm/i915: Finally remove obj->mm.lock.")
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v5.13+

How does the err handling work? gem_shrink is meant to return the
number of pages reclaimed which is an unsigned long, and yet we are
also just returning the err here? Fortunately it looks like nothing is
calling gem_shrinker with an actual ww context, so nothing will hit
this yet? I think the interface needs to be reworked or something.

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/d=
rm/i915/gem/i915_gem_shrinker.c
> index e382b7f2353b..5ab136ffdeb2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -118,7 +118,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
>         intel_wakeref_t wakeref =3D 0;
>         unsigned long count =3D 0;
>         unsigned long scanned =3D 0;
> -       int err;
> +       int err =3D 0;
>
>         /* CHV + VTD workaround use stop_machine(); need to trylock vm->m=
utex */
>         bool trylock_vm =3D !ww && intel_vm_no_concurrent_access_wa(i915)=
;
> @@ -242,12 +242,15 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
>                 list_splice_tail(&still_in_list, phase->list);
>                 spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>                 if (err)
> -                       return err;
> +                       break;
>         }
>
>         if (shrink & I915_SHRINK_BOUND)
>                 intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>
> +       if (err)
> +               return err;
> +
>         if (nr_scanned)
>                 *nr_scanned +=3D scanned;
>         return count;
> --
> 2.32.0
>
