Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC51464B2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C91F6F9D4;
	Thu, 23 Jan 2020 09:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDBB6F9D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 09:38:31 +0000 (UTC)
Received: by mail-vs1-xe2c.google.com with SMTP id g23so1309177vsr.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 01:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iFaz0DP9teLLlV5/JRlmCbme2tg42bKUE8EzucRSScQ=;
 b=p7hYe0otaMOerYj56yrTmPJfebh13eZnrfi8hKNiANt+bMdedqEg2kCkiqEER0O1Xy
 MDQTUv//nfpuKnEGv0ohioLkiFE/4Hh/O1Hm4BBcADitlDuY5jmvie/7XPc3tqk3Lwcw
 MkihEyhdG9hhEhDKvW9QCm/mNXI18deey8SeSJNH0t2o7lV2js2aQ5WcDIKvDrvOfFyj
 SipPbmnveBt94THwXKFwU1csY3TWD7zDhbEDWCsrJsfas0u5ZR2sUkzbZaJqKcdsiolz
 QsEHxGudKZIfUXa8edUCoTnJeA8P0le6Ptb1iclYJymUO7NDwUlR6U7uo40IvkVOtGoN
 rCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iFaz0DP9teLLlV5/JRlmCbme2tg42bKUE8EzucRSScQ=;
 b=lO+iP56XjiNRmUL81XAf/6zvKy7aLUZss9Mo7wzHw5huSjtPUos2lWKDZKWILzO7WA
 i6A2CJADZaRv2ydAQ/f05F7wWiwTmEQYJS6r5xtdNLXKywJzT5daDrPdiXSBRl7YUTFP
 uWihsFsh6k8Lqxo7G/KCpFdh9pxdRuU5oOW2uFF5I5VVcFsfauksyTfj1v2NsUSZ4qLZ
 Oe97o82VszVHoptZH/g67Yy8Nk2ZB6Pc2SSI7j3zSdsAT9DkRjcfW/KAg+Bvqn5/tEQl
 EctHuLyN2URXwxNtaWT79VofwTmfq//oGK/6QWNJlcp6ZCSRgPoaQ1tVGpu0XVFshV7N
 3YYA==
X-Gm-Message-State: APjAAAVwe0xbdxprWs5+OHENM5M/8kgeFZ7/CVkTtSzXl/F7oXwkcAS8
 wDjkkheQtGUHIpmPdSVZYFOUuV75aM24DHOk3jI=
X-Google-Smtp-Source: APXvYqyMCPZjywx1HBBHZPDoc5v9jXSElyQjcYUbE7WOCjaLhfQmmE3HvCNmPSZ0G729zxaJjdxifNgJA2vHZUKXYf0=
X-Received: by 2002:a67:d39a:: with SMTP id b26mr6244675vsj.119.1579772310977; 
 Thu, 23 Jan 2020 01:38:30 -0800 (PST)
MIME-Version: 1.0
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
 <20200123085124.1256919-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200123085124.1256919-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 23 Jan 2020 09:38:02 +0000
Message-ID: <CAM0jSHPGiEgUSJK9NuAML6yZBE5sHph=JAgxCkv5g-Qb6tn48Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Poison GTT scratch pages
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

On Thu, 23 Jan 2020 at 08:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Using a clear page for scratch means that we have relatively benign
> errors in case it is accidentally used, but that can be rather too
> benign for debugging. If we poison the scratch, ideally it quickly
> results in an obvious error.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

[snip]

>
> +static void poison_scratch_page(struct page *page, unsigned long size)
> +{
> +       if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +               return;
> +
> +       kunmap_atomic(memset(kmap_atomic(page), POISON_FREE, size));

kmap works for !order-zero?

> +}
> +
>  int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>  {
>         unsigned long size;
> @@ -331,6 +339,17 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>                 if (unlikely(!page))
>                         goto skip;
>
> +               /*
> +                * Use a non-zero scratch page for debugging.
> +                *
> +                * We want a value that should be reasonably obvious
> +                * to spot in the error state, while also causing a GPU hang
> +                * if executed. We prefer using a clear page in production, so
> +                * should it ever be accidentally used, the effect should be
> +                * fairly benign.
> +                */
> +               poison_scratch_page(page, size);
> +
>                 addr = dma_map_page_attrs(vm->dma,
>                                           page, 0, size,
>                                           PCI_DMA_BIDIRECTIONAL,
> --
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
