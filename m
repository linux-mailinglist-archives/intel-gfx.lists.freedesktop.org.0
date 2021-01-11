Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2AD2F2123
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 21:51:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC1289D30;
	Mon, 11 Jan 2021 20:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1602C89D30
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 20:51:05 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id k10so38079wmi.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 12:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y27XJpkhHyE0sWmoPKkkMbsE830iByKKaRUFcQQwiv8=;
 b=d8itslzIpUXnrVc8diF45u/zKGyIvOcg8KLQl3k04vj67hVnFl92obzZcMd3ASawq1
 65W+tFo/EwuQdFSEk5VUUlYRGcqyU0cYhro4lpRnSyoFebTojpzDDpGSOc0l0Ooqflts
 bozsPzpp8J8s0wwbz+dH2otgTgB/fURuH7Mnd7P6TwGDziMHVpD2OyoIQMLVsWBAsSuC
 Qo06SzXBOpkzCGOSBExnMbDI6hTAgRyrgMw9ma3A2orRjd7SyMA4pLPz5p+cP0gtdHoC
 hzOIsKl/wuwQetnus+dtkBA/6pg8Z8mk6eQ44777k95zd5wXyLCwhws1RwRN+W7elhH4
 vj2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y27XJpkhHyE0sWmoPKkkMbsE830iByKKaRUFcQQwiv8=;
 b=MBbrU4D0eDnHWVarbtvSB5BtfNV2voZkkKai2d6P6RFI/AOCCsfBdv9PXaODI6h8YJ
 S1ArywUNRNuzc9bQ3lcsPQ2/L/BEe+PenpDXzuVViRcRVTHEuEDIjEbLRDnEUngeVb26
 huu/Cbzo9k7IiY55BscbhB4tfh07hOpOQDO0tMiRVZtWhldytq/zcmBdRgpZ8wYck+PO
 AkgSfvRVaYr7pqcQhRXONqulHB3/um1h3rRYJfQffJJhLpGQ7d5NGu/iPnfjKC+K0tb4
 VSOa8BZWfaEmRxELbxJX/RIaQLev7KUC+Sat3Rwk4u2Yf7YvxSLSXB+87p3ZkheQzzaz
 OQmg==
X-Gm-Message-State: AOAM533zAH8fsrQ1M7Hi0TZLCaImmcsHZwmhgVqvEKu7FJeVl2B0c68W
 2XamWlT5GmOMfIGEb9ryW2sC6/aQv3gT0oK+RVs=
X-Google-Smtp-Source: ABdhPJzzNXDydmbj/uESdPjz+mWNIH13BUHQZ7rq7l7OM4EiE1ARhyh3D9VhBnr7pVEGnR8ni9LpiLUne0AfTGj4JbM=
X-Received: by 2002:a1c:cc14:: with SMTP id h20mr535901wmb.180.1610398263674; 
 Mon, 11 Jan 2021 12:51:03 -0800 (PST)
MIME-Version: 1.0
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-15-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210105153558.134272-15-maarten.lankhorst@linux.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 12 Jan 2021 06:50:51 +1000
Message-ID: <CAPM=9txPLzWbSd5KH_DG+P1V81mS_Ghc_4inOz9kKVUUhk1J_A@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 14/64] drm/i915: Reject UNSYNCHRONIZED
 for userptr, v2.
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

Acked-by: Dave Airlie <airlied@redhat.com>

burn with the fire.

Dave.

On Wed, 6 Jan 2021 at 01:46, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> We should not allow this any more, as it will break with the new userptr
> implementation, it could still be made to work, but there's no point in
> doing so.
>
> Inspection of the beignet opencl driver shows that it's only used
> when normal userptr is not available, which means for new kernels
> you will need CONFIG_I915_USERPTR.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 64a946d5f753..241f865077b9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -224,7 +224,7 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
>         struct i915_mmu_object *mo;
>
>         if (flags & I915_USERPTR_UNSYNCHRONIZED)
> -               return capable(CAP_SYS_ADMIN) ? 0 : -EPERM;
> +               return -ENODEV;
>
>         if (GEM_WARN_ON(!obj->userptr.mm))
>                 return -EINVAL;
> @@ -274,13 +274,7 @@ static int
>  i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
>                                     unsigned flags)
>  {
> -       if ((flags & I915_USERPTR_UNSYNCHRONIZED) == 0)
> -               return -ENODEV;
> -
> -       if (!capable(CAP_SYS_ADMIN))
> -               return -EPERM;
> -
> -       return 0;
> +       return -ENODEV;
>  }
>
>  static void
> --
> 2.30.0.rc1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
