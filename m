Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87101F7352
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 07:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5896E11D;
	Fri, 12 Jun 2020 05:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CCBF6E22B
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 05:11:19 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id d67so7612732oig.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 22:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8V+bxbj5WCvzCnxozwhnhcY6TUJ/xexRHaQJ/PDvKQU=;
 b=cilwx1I8Xw8l4cOfCtUN5yHqBSWj+Ms0FUPp+RDFC2UUkvd9G/tKIonAgnCPmV7ju7
 ytE8iPnQdG6xCmbt2X4xyBjcOKSUmiTKGphnksjQ2SRiZLT5IbW006hcE7QfZHx6BSiX
 vrqTUkoSTB5lgrB2uyXPGdQVfa22TxwaFK1IQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8V+bxbj5WCvzCnxozwhnhcY6TUJ/xexRHaQJ/PDvKQU=;
 b=fnXRUWoBhomfqT64pq9Ojls/9R/TQno3ITAe7xIkBXQbsrwuut4jpxnhN/4hxiQmFk
 s3cwenNLgfKlRodKkFAH07+H20NKGfExzsTVtdeX7e8meT+4eWIp2MCty7jY11kdNMxc
 KXTqnUbOwwTJLVpVdD9LLb1R6HrFw+Ikbbn2mRPdS9fbr/4W1RgLZxkCDbTO/iyvEMFv
 HrTdSNA6feDxJmNgRp40LImYrgrxobMm2sfAdouW31tEakE8NFYAHwC6hgvAllVGytT0
 jTlhYuHzCwJ/OBXVe0hPMSfFWrCiXZ8YlSKKhPpex8bhdjC7XFAlM0EWnxZulxnY8Jaa
 yTEA==
X-Gm-Message-State: AOAM533sEBtkIZL0IsLjsEtXmqP6O4D2YtBAB94NiEOPxwJIwgmX7mxv
 K9flYWj2q7MDFNRAin6L2IvvR/uDo3CJiepwnsuBTA==
X-Google-Smtp-Source: ABdhPJzrYoClOB8B8OguvLlFrj2m7W+GxCU2S2r//wrUh7MPNfSE//K6chPjLrBcT0Xc1X5J0GrxFt1X3IqO0jmAaSg=
X-Received: by 2002:a05:6808:6d7:: with SMTP id
 m23mr980424oih.14.1591938678473; 
 Thu, 11 Jun 2020 22:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local> <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
In-Reply-To: <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 12 Jun 2020 07:11:07 +0200
Message-ID: <CAKMK7uFE0uc5GNU49dYYQLNWbMFmQPcz_dAHHQT-dNe+Zzva-A@mail.gmail.com>
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

Well amdgpu already has dma_fence waits in the hmm callbacks, so
nothing new. But since you start using these in amdkfd ... perfect
opportunity to annotate the amdkfd paths for fence signalling critical
sections? Especially the preempt-ctx fence should be an interesting
case to annotate and see whether lockdep finds anything. Not sure what
else there is.
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
