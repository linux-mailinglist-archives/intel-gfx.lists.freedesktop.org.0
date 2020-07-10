Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF2521BC8F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 19:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A0F6E426;
	Fri, 10 Jul 2020 17:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01656E426
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 17:48:57 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id o25so2084811uar.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 10:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/WRTwrgmPpExmQQfa/2fMA7sx3qEzrLhe7A+h/bubTg=;
 b=C4orc/ssECoYdlGDGUz5+Y9/3btZ7OuUY4B4JvO8MqzN6WxcPIKdUUxlbRe9Tw4EUH
 OwTziup8RF1WoSZBBqFzhB/88HlEP4hGcYqJzmv/I6DzM9BG6IsbJmH/rQVqX18/+Del
 f6g6XbS/HsQUgjgU3I1C+CV8Md9t3ALes6VoX2IBj4jX5VrRcOLvmsESP3kQer2ZPgZh
 367ac4YDlDhW7f33EdQXQze163dZpVNh9KpFuS5ChUivxMssHZiosa1G9o1TM8mqTQJR
 HKMsRUnnGchBQQmrlEB/kFme0xf57YpUElOwZWb39rPOspQDlH3vLkivZ1XzzV2ZVUOY
 DQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/WRTwrgmPpExmQQfa/2fMA7sx3qEzrLhe7A+h/bubTg=;
 b=iIAHN534EpOgVt0ZasU1giQxun5HjpP/C9vKoxe4XwF/uH34Ho70oY0C5PGK6+vE6X
 kRI145sbxuraiSvhpI7SfjGlslxzldWIRrq/7I6aQylPGLNbl8U98ZiwiknaYLeSgHF5
 JyNsA4/oMBKdJaasEu6m289TozXR9rFf/qw5C92p4wZ3sgNw7Arigny3TPptzISdkmX7
 ia8dYTyzl1dgwps2jqeX2NuQs38ZR9R7sOpliAVM1PFO82N8vnkkNVVtXxTOfl98RC0r
 3X3Bp30YR79vrfcPaHIHTsnebGJVeXQANU4EggSrxzXB+OuRCkp9iMoWcYUBHQkzXNp5
 w5Nw==
X-Gm-Message-State: AOAM5323/yGhS87QLNPcpYuGKz09tBKPUEfocJsAeqCf6ZISWYJdbQFA
 hMkr1L0feGfdMVLLlIB7HYuEDZQXwGdb9ix+c6g=
X-Google-Smtp-Source: ABdhPJwnrRH7x89EbhBCtrH/0rBYDLqDmmFyDx4BWTIVgH67d7S2OWVyI8Z5DOHvZttwyfWbb1/nEOWKV7aVdAD6hX0=
X-Received: by 2002:a9f:386b:: with SMTP id q40mr49013234uad.2.1594403337072; 
 Fri, 10 Jul 2020 10:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-5-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jul 2020 18:48:31 +0100
Message-ID: <CAM0jSHMVVEgW1OeuDWhaVSMq-hZ0qrfS-cr_5C0eKdDBiai9qA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Preallocate stashes for vma
 page-directories
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We need to make the DMA allocations used for page directories to be
> performed up front so that we can include those allocations in our
> memory reservation pass. The downside is that we have to assume the
> worst case, even before we know the final layout, and always allocate
> enough page directories for this object, even when there will be overlap.
> This unfortunately can be quite expensive, especially as we have to
> clear/reset the page directories and DMA pages, but it should only be
> required during early phases of a workload when new objects are being
> discovered, or after memory/eviction pressure when we need to rebind.
> Once we reach steady state, the objects should not be moved and we no
> longer need to preallocating the pages tables.
>
> It should be noted that the lifetime for the page directories DMA is
> more or less decoupled from individual fences as they will be shared
> across objects across timelines.
>
> v2: Only allocate enough PD space for the PTE we may use, we do not need
> to allocate PD that will be left as scratch.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

<snip>

>
> +static unsigned long pd_count(u64 size, int shift)
> +{
> +       /* Beware later misalignment */
> +       return (size + 2 * (BIT_ULL(shift) - 1)) >> shift;
> +}
> +
> +int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
> +                          struct i915_vm_pt_stash *stash,
> +                          u64 size)
> +{
> +       unsigned long count;
> +       int shift = 21;
> +       int n;

if (gen >= 8)
    shift = 21;
else
    shift = 22;

?

Since pt=4M, pd=2G with the weird legacy ppgtt stuff?

> +
> +       count = pd_count(size, shift);
> +       while (count--) {
> +               struct i915_page_table *pt;
> +
> +               pt = alloc_pt(vm);
> +               if (IS_ERR(pt)) {
> +                       i915_vm_free_pt_stash(vm, stash);
> +                       return PTR_ERR(pt);
> +               }
> +
> +               pt->stash = stash->pt[0];
> +               stash->pt[0] = pt;
> +       }
> +
> +       for (n = 1; n < vm->top; n++) {
> +               shift += 9;
> +               count = pd_count(size, shift);
> +               while (count--) {
> +                       struct i915_page_directory *pd;
> +
> +                       pd = alloc_pd(vm);
> +                       if (IS_ERR(pd)) {
> +                               i915_vm_free_pt_stash(vm, stash);
> +                               return PTR_ERR(pd);
> +                       }
> +
> +                       pd->pt.stash = stash->pt[1];
> +                       stash->pt[1] = &pd->pt;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
