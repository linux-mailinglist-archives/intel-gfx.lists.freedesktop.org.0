Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C91B83BE63B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 12:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641766E0AB;
	Wed,  7 Jul 2021 10:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9E36E0AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 10:15:14 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id i4so277446qvq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Jul 2021 03:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3uMSL2BOVPlqz85+PZQHu62TQhKYOqogBbYTp4Fq4I=;
 b=NIDkJA/+T3R6y/9BjuKpRcxewlIklj9AWKRWONHGZ5cUpbBI2lB/KDjuG8/tJ8nvQ+
 MaAbKApNX1FKz4qhvyboxc1IDJItYdjjxgZDikbRujxvuIpJ/mHekEww/PyMk6uI6bRZ
 Adk3tY8vBhjZ0rNHPxpapChnzN1ep7AMp3jqWTGi8Lqp+CMAQ/knVUIo+ALJVyV51bOQ
 uTARMefKbjTPoz1lkWNYxV389uUIesHXUBQJot/RWU+p2I+ZCWA13i/ldGFjqAcX+PpE
 wVJqENahlBeHewI5jBNpNptfJXx7dHVJW14pFUCOyp+2RAoufJ24tuOcFrRilD1DA3U0
 2Kmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3uMSL2BOVPlqz85+PZQHu62TQhKYOqogBbYTp4Fq4I=;
 b=pljiKBmdpR3EBPpRvYHTzGv4cUKYYHlYcnhAlzz8rDKYiir9ZpcZmOLH3HAAJmHfHP
 J1gJ+HVl2CzNowCMplgVP8VOwCtE6Rd6dZQI0UWf/ZgfpiEroiJQFF4Hl+QxYCM+XtNN
 7nXt/bskvZUiCCSmcGdl8Rc1m2a0fdCjK2/R2ezJDGN2hTtmmvN9XRyP0/N5djgZUWdT
 Vy5Iwd8F8HZIPgPwOi3hvyMkUURdPplaHstxk22uiOumg8DAFykg7C2kBPrMYq9nj6g+
 qTKS3nZQ8/fMZyYpaNXXHUN0F4as7FCZcqjSPtA8JhOpBBDxfWB0x9q496wnFN08/70H
 mBfg==
X-Gm-Message-State: AOAM530qCFm3Nts9WNsRRgIaYGj8fimmBsMC8k8mup9l+YVvKeHSFq20
 JzVqFVBkcea+lrNwJn83jighJAwn4zuTYa9I9jE=
X-Google-Smtp-Source: ABdhPJwz0DO3r0oD2bHxKAxPRTeiRILwm+dBqUBqJpxLewQH7nt29xDOQMfP13Xd3H5moWyVqvjTEKde1in9Hs+HnHU=
X-Received: by 2002:a0c:c986:: with SMTP id b6mr22792940qvk.48.1625652913239; 
 Wed, 07 Jul 2021 03:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210707082226.945948-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210707082226.945948-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 7 Jul 2021 11:14:46 +0100
Message-ID: <CAM0jSHNQkGF9OGEJVg5ZTYv1vnr4uYMVgR908pDS=Ap7HPS_hA@mail.gmail.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: Fix dma_mask_size to 39 bit
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

On Wed, 7 Jul 2021 at 09:31, Tejas Upadhyay
<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>
> 46 bit addressing enables you to use 4 bits  to support some
> MKTME features, and 3 more bits for Optane support that uses
> a subset of MTKME for persistent memory.
>
> But display sticking to 39 bit addressing, thus setting dma_mask_size

What is meant by "display" here? Is this limited to the display part
of the HW? Or just in general any HW access via GGTT or ppGTT?

Also do you know if this is documented somewhere in the Bspec? If so,
adding Bspec: link would be good.

> to 39 fixes below tests :
> igt@i915_selftest@live@mman
> kms_big_fb --r linear-32bpp-rotate-0

This looks promising. From chatting with Chris it looks like this is
https://gitlab.freedesktop.org/drm/intel/-/issues/3142 ?

If so, it might be good to add a References: tag and add the following
example to the commit message:

DMAR: DRHD: handling fault status reg 2
DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr
7effff9000 [fault reason 05] PTE Write access is not set

Also maybe highlight that the address 0x7effff9000 is suspiciously
exactly 39 bits, so it seems likely that the HW just ends up masking
off those extra bits or something when doing the access, hence why we
might see strange DMAR errors?

Nice find,
Acked-by: Matthew Auld <matthew.auld@intel.com>

>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a7bfdd827bc8..0fea4c0c6d48 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -934,7 +934,7 @@ static const struct intel_device_info adl_s_info = {
>         .display.has_psr_hw_tracking = 0,
>         .platform_engine_mask =
>                 BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> -       .dma_mask_size = 46,
> +       .dma_mask_size = 39,
>  };
>
>  #define XE_LPD_CURSOR_OFFSETS \
> --
> 2.31.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
