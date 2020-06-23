Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 733AB204B5D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 09:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0126E950;
	Tue, 23 Jun 2020 07:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2F66E950
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 07:39:29 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id u23so15620648otq.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 00:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+92MYnF3Gh08MmStig+tCn2Q/L2yjmneEHZzzW7GGvs=;
 b=PwrvE5jS1kTu+fi0Cr9QUPwDbx3xz+X3B7OgQDwGyTKoe9mBLoNsF4PcRQZYhzKOnV
 CkL4lja+OqOY0gBbJB+pER0fYFWMEmKIpSKjbJhfHshefh7JCoDF0Ko4gDHaNPu08gpL
 UTuHeptkXd8ej8TjPFULXiSQ/JHJc7+5RujUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+92MYnF3Gh08MmStig+tCn2Q/L2yjmneEHZzzW7GGvs=;
 b=qRjBqrTny6GhWvXQklTA/i+8eT89qoYRiyZQNy2rv8iyIgzjJmZbj663g1slsxbdgz
 PDmzRqs3IiufauDgkPXgRD/ATxeanMTdTFqizD4qBKI7AKn3arvtobhfcIqmRwCilhY/
 9YcBkLILgo53PqTLMUS3muFUr7eA/5U8gik4gxcVUen62r71e0QkVA4iyKJF8gYsPwWm
 /IIH3665DozR/AjRU3b6X1KLlOZ5GVfbqwnwtteSPXttl1gkQLiu30194ItUQVvw3a7+
 9Tg1quRHlb5gG0bWKbKd0UCjZiRuJ92QNXwxrerTTUEcfW3Hgdityt2NdUrHkLVO3tEt
 Wwmw==
X-Gm-Message-State: AOAM531QryEEdmmh0cK0wejVKu/dFJ0/I03chsQzts2PX3eBOvTNaxku
 RJwyhEjXB9QRetzngJL/elsNHyJ8Q3/3QvW1dfHRqw==
X-Google-Smtp-Source: ABdhPJyuTPn8gHto3Zj0qvtBWFEZww/Nxosv6E4e67PZOhsc7GOGHkoFk1BcCVm2dLP+f9GAnXbuSF6PpstaZHEQELA=
X-Received: by 2002:a4a:d415:: with SMTP id n21mr17485719oos.89.1592897968519; 
 Tue, 23 Jun 2020 00:39:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
In-Reply-To: <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 23 Jun 2020 09:39:17 +0200
Message-ID: <CAKMK7uHBKrpDWu+DvtYncDK=LOdGJyMK7t6fpOaGovnYFiBUZw@mail.gmail.com>
To: Felix Kuehling <felix.kuehling@amd.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime
 lockdep annotations
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 1:35 AM Felix Kuehling <felix.kuehling@amd.com> wrote:
>
> Am 2020-06-11 um 10:15 a.m. schrieb Jason Gunthorpe:
> > On Thu, Jun 11, 2020 at 10:34:30AM +0200, Daniel Vetter wrote:
> >>> I still have my doubts about allowing fence waiting from within shrinkers.
> >>> IMO ideally they should use a trywait approach, in order to allow memory
> >>> allocation during command submission for drivers that
> >>> publish fences before command submission. (Since early reservation object
> >>> release requires that).
> >> Yeah it is a bit annoying, e.g. for drm/scheduler I think we'll end up
> >> with a mempool to make sure it can handle it's allocations.
> >>
> >>> But since drivers are already waiting from within shrinkers and I take your
> >>> word for HMM requiring this,
> >> Yeah the big trouble is HMM and mmu notifiers. That's the really awkward
> >> one, the shrinker one is a lot less established.
> > I really question if HW that needs something like DMA fence should
> > even be using mmu notifiers - the best use is HW that can fence the
> > DMA directly without having to get involved with some command stream
> > processing.
> >
> > Or at the very least it should not be a generic DMA fence but a
> > narrowed completion tied only into the same GPU driver's command
> > completion processing which should be able to progress without
> > blocking.
> >
> > The intent of notifiers was never to endlessly block while vast
> > amounts of SW does work.
> >
> > Going around and switching everything in a GPU to GFP_ATOMIC seems
> > like bad idea.
> >
> >> I've pinged a bunch of armsoc gpu driver people and ask them how much this
> >> hurts, so that we have a clear answer. On x86 I don't think we have much
> >> of a choice on this, with userptr in amd and i915 and hmm work in nouveau
> >> (but nouveau I think doesn't use dma_fence in there).
>
> Soon nouveau will get company. We're working on a recoverable page fault
> implementation for HMM in amdgpu where we'll need to update page tables
> using the GPUs SDMA engine and wait for corresponding fences in MMU
> notifiers.

Can you pls cc these patches to dri-devel when they show up? Depending
upon how your hw works there's and endless amount of bad things that
can happen.

Also I think (again depending upon how the hw exactly works) this
stuff would be a perfect example for the dma_fence annotations.

The worst case is if your hw cannot preempt while a hw page fault is
pending. That means none of the dma_fence will ever signal (the amdkfd
preempt ctx fences wont, and the classic fences from amdgpu might be
also stall). At least when you're unlucky and the fence you're waiting
on somehow (anywhere in its dependency chain really) need the engine
that's currently blocked waiting for the hw page fault.

That in turn means anything you do in your hw page fault handler is in
the critical section for dma fence signalling, which has far reaching
implications.
-Daniel

>
> Regards,
>   Felix
>
>
> > Right, nor will RDMA ODP.
> >
> > Jason
> > _______________________________________________
> > amd-gfx mailing list
> > amd-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/amd-gfx
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
