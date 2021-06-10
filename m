Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F823A34CB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 22:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC316EDD7;
	Thu, 10 Jun 2021 20:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC366EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 20:26:34 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id g38so1080108ybi.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 13:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NvORuV7skKhdxfsWvNOps9GtT+VFGohWSjUuO0cZcHI=;
 b=O/aVKVtz4Q9zacbkZaXZpMtcCLsFqWNDj1U9Pis+s435q0WYB7X0vzqh5jXFIHkg7q
 DAL5CqN9J8TxGz6nQxtW2uLQpsWAoaSRJwWL0VcxELHb4M9cyEui7VbDuHmwwKgzBPM9
 e0qtzyQfVuldz2WNLzh7KPIXUhgoQyYfQr93sMEyRlZeJPbSUQngqKNUU/8v+0d+TpK2
 KVf5ZxZzHfKFgT5Z+rOKtFA7MAvO+c7brG5bpqC4Hqv6JTa5PnxJ4egdrEbsoqSKXqAL
 0ziJv/ZhWwdsEJlhC3nZ1YqOCW7P2dgNN1R0iGxJ645VF2sEJLLyhE3FpJXY8J4bH2JT
 h3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NvORuV7skKhdxfsWvNOps9GtT+VFGohWSjUuO0cZcHI=;
 b=t0/421rZEfWhOdzK+4NR80+f23M+f6APrmVX0eGDKS584oPTsEW5h54VZfNRLDJKox
 vPpVmTmcvZtKAAY3sQOdhj6xpuMsBJf4u2UCMo2DAi6qgQjvjc9ixdsHCRTJK+xgpKxV
 KK7Y65YaAAK26HkXELXMj5eMCgKaKkFCcpysQ9KgkMYR9rAE2W12hiWeqE+H4IbbDUoB
 EQyE20HBDnc/OoGhFYLSCGkJPhsFs2iFPWmaT+g90jWyT+/r3ok8CD9cPq5Kn8DJFpc/
 OOoUZBvUmDgSPYhSU2r2udFWL9jC1ckYY2ud/4GJNPFEZFd/7J5ShpWuBtwSWoBXzyak
 GfvQ==
X-Gm-Message-State: AOAM532BT+HYrhpvT8/3B610NXqCa3/EE8qPc/MUAmS2jxEpv+6T1L6r
 p6lL+1lmNyqg8tcdkFJFFCyPDrBjZ/BmJiK3k3Nycw==
X-Google-Smtp-Source: ABdhPJypNPw97GfpzsLSvMjettq8SdTAFfp3yeOW9Zt6v8Hl11llbVaDJd1jKnOiQt6whUQDIoGOr02xvHMTy0UBSRw=
X-Received: by 2002:a25:8804:: with SMTP id c4mr783707ybl.469.1623356793410;
 Thu, 10 Jun 2021 13:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210525211753.1086069-1-jason@jlekstrand.net>
 <CAPaKu7Ssizz2_A8cy12G544_uCGxWuMw8v54vSusF77SwD_yiw@mail.gmail.com>
In-Reply-To: <CAPaKu7Ssizz2_A8cy12G544_uCGxWuMw8v54vSusF77SwD_yiw@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 10 Jun 2021 15:26:21 -0500
Message-ID: <CAOFGe94ObDCHSo1MybrLbhoXmYvDqUMUC_jOMnnDo-J=YUAVXA@mail.gmail.com>
To: Chia-I Wu <olvaffe@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 0/7] dma-buf: Add an API for exporting sync
 files (v11)
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
Cc: Daniel Stone <daniels@collabora.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Dave Airlie <airlied@redhat.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 3:11 PM Chia-I Wu <olvaffe@gmail.com> wrote:
>
> On Tue, May 25, 2021 at 2:18 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> > Modern userspace APIs like Vulkan are built on an explicit
> > synchronization model.  This doesn't always play nicely with the
> > implicit synchronization used in the kernel and assumed by X11 and
> > Wayland.  The client -> compositor half of the synchronization isn't too
> > bad, at least on intel, because we can control whether or not i915
> > synchronizes on the buffer and whether or not it's considered written.
> We might have an important use case for this half, for virtio-gpu and Chrome OS.
>
> When the guest compositor acts as a proxy to connect guest apps to the
> host compositor, implicit fencing requires the guest compositor to do
> a wait before forwarding the buffer to the host compositor.  With this
> patch, the guest compositor can extract the dma-fence from the buffer,
> and if the fence is a virtio-gpu fence, forward both the fence and the
> buffer to the host compositor.  It will allow us to convert a
> guest-side wait into a host-side wait.

Yeah, I think the first half solves a lot of problems.  I'm rebasing
it now and will send a v12 series shortly.  I don't think there's a
lot standing between the first few patches and merging.  I've got IGT
tests and I'm pretty sure the code is good.  The last review cycle got
distracted with some renaming fun.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
