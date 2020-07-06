Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC85A215E15
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 20:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4282089FEC;
	Mon,  6 Jul 2020 18:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FE289FEC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 18:15:54 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id q15so10363085vso.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 11:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MFub758/kDh6W4Lep7MB7LH7Ck0toXkYkxmp6rPSAWI=;
 b=UJIgEA/d0RLjQChXwv9uGjC6i0K67bDvn9UpgwoRcwcckaoYA5dWg0L596aBfsNapM
 DB1I3JY5MoPG8zWs6ER/Yb2NQKM47IE3j5I/qXY0iIPiE0k8L9mg4H2xG77dmBlytZRk
 vF668QUq60CF4n3ScRMy8D75F1fI4TooR6O5tCyCFd7lDzj+bq76p3HPlhb5JGLe4BT+
 V28TaVng2X8kIekYHYaAkunW8saoHI3OpKAYsz7ZmwZX0vAXde97JOCdIg/K1Ze6eNKM
 cC3tCgPn1qhCpfMpatW2SGoFOqNlLclio3C9WYCGtalDmA3tzE9b6W0VuOcnOJ7mohmW
 xqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MFub758/kDh6W4Lep7MB7LH7Ck0toXkYkxmp6rPSAWI=;
 b=qH1V7vdxQxtcUpZ3mehNduUqCEhAYMYvex0VmkfmLtDR2uNqPlZk3i7bxgpkRt481T
 li+N8vTtlOBilioWxbX5ZwOYZs5gow7RMF88wSSAZEeFF7NsP11YONklu1AbdPKPG6kp
 lGzPEJdLPYK2gRZWNiJCIYv/yDSFJbtq5JbSCOB5OqnPr7+fiE/mKPX6q+DA6atObYC6
 R9sYoNXQkiaEmRwE+USrS7tZ30cHv4/olyMjjqqF/pnq4iqGKU7AXfCu9gDfVo1j3k0t
 gQsSbBM5XlVmu2DcRN6dzB1Ttb0Vy6Xhb91VhsfFqiPTIpUAvJTZWDqQ62VSY/f8H+KX
 g6CA==
X-Gm-Message-State: AOAM530bXdIkdzeC2/GEnKP6uIpkJKFwVpUCKhNXkXgJDhaWNA1njya5
 CE9SoolxIAJ1m2gOhw4bClBEzqJuMD+V54KON7NcbvWE
X-Google-Smtp-Source: ABdhPJzjHlowBDQFRwSb85s3pKITKyvrVFXc4FJEumKreKi3gNHQt5waFdOMRcLS1OwYCGJ3bWKrZofxtUbVuMnWuuk=
X-Received: by 2002:a67:ca03:: with SMTP id z3mr29923727vsk.34.1594059353730; 
 Mon, 06 Jul 2020 11:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200706061926.6687-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 6 Jul 2020 19:15:27 +0100
Message-ID: <CAM0jSHOHvMxtJWCzwkSc2egyL87pBnstyht302uFm=3s0_3xRg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915: Preallocate stashes for vma
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 6 Jul 2020 at 07:19, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We need to make the DMA allocations used for page directories to be
> performed up front so that we can include those allocations in our
> memory reservation pass. The downside is that we have to assume the
> worst case, even before we know the final layout, and always allocate
> enough page directories for this object, even when there will be overlap.
>
> It should be noted that the lifetime for the page directories DMA is
> more or less decoupled from individual fences as they will be shared
> across objects across timelines.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<snip>

> @@ -874,11 +873,21 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>                 return err;
>
>         if (flags & vma->vm->bind_async_flags) {
> +               u64 max_size;
> +
>                 work = i915_vma_work();
>                 if (!work) {
>                         err = -ENOMEM;
>                         goto err_pages;
>                 }
> +
> +               work->vm = i915_vm_get(vma->vm);
> +
> +               /* Allocate enough page directories to cover worst case */
> +               max_size = max(size, vma->size);
> +               if (flags & PIN_MAPPABLE)
> +                       max_size = max_t(u64, max_size, vma->fence_size);
> +               i915_vm_alloc_pt_stash(vma->vm, &work->stash, max_size);

Why do we need to take into account size when allocating the page
directories, and not just vma->size/fence_size, since the difference
is only really padding? It could be gigantic thanks to pad_to_size.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
