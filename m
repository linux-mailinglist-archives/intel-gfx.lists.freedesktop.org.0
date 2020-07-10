Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C2E21BE3A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 22:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436526E175;
	Fri, 10 Jul 2020 20:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9EC36ED02
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 20:02:32 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id r8so5773550oij.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 13:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hlzdQKgtPmO74k0pNR7vHuIZBrt/Pc63RtVTndWe5dA=;
 b=SqNPnTQbjsymEOAYWvf7HTkD0FI+HW6j/e6KRe6XGJh3lSuGZ0C7kP/iBUFjVJ03M5
 t8w6HTmvlfEqaW7ZR4/WDh2zFfGdT+tuiUcDAyD+AEP04wFuCMGfRQQM26yq17Soms89
 nnpW0b1zmvAznK5+R6nx5wurVKlahUyCP/oLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hlzdQKgtPmO74k0pNR7vHuIZBrt/Pc63RtVTndWe5dA=;
 b=b/tKGO5zmSTSznhMPbw2UOpyxm3N++JZPATE9ingrdVoQrvZX+ktzivr9BH+z4Kb0+
 PGsn0uh+RJCon4jD8CQiTUFnpE8qkfOpPWz7Gh+v8RBkOUExM/7n9NjFoxhUpYie5lJV
 SPQZXNa4GeSJ0bqXq+eDv/WayPnFiR6l1nHOXmoLs6q7g63XIhFfG8OGaNia9VH4e7OK
 aME1zNJOeTIUFq68qjggzn5UGmIzAo5vUyf38M45mdKnBRNH40hc/kk0O13R2m8UfdYT
 N1AhneBUBJj51RVrbcYHCY1UhlcLNLt9VgXxyp4IbqAo73X0fQ/m59HK3cg5KfZSTpU/
 6OYQ==
X-Gm-Message-State: AOAM530QJCasAOEgG7uCLNqIXvs3SGcy9pQ1CIsP34FUFa1T10lQX95a
 M/SplywZw/FzgBkV3MqHcTZEGcNfMOxWuo/FyyLtwA==
X-Google-Smtp-Source: ABdhPJyXe/UuJLRx5f5TlPpv/BPhnkWHORX2InNLi0AlJObIla3gh+GkiBljOI27Z+bfXCvGSQK4tsearkrRp5oifn8=
X-Received: by 2002:aca:da03:: with SMTP id r3mr5553679oig.14.1594411351996;
 Fri, 10 Jul 2020 13:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-3-daniel.vetter@ffwll.ch>
 <20200709080911.GP3278063@phenom.ffwll.local>
 <20200710124357.GB23821@mellanox.com>
 <5c163d74-4a28-1d74-be86-099b4729a2e0@amd.com>
 <20200710125453.GC23821@mellanox.com>
 <4f4a2cf7-f505-8494-1461-bd467870481e@amd.com>
 <20200710134826.GD23821@mellanox.com>
 <CAKMK7uGSUULTmL=bDXty6U4e37dzLHzu7wgUyOxo2CvR9KvXGg@mail.gmail.com>
 <20200710142347.GE23821@mellanox.com>
In-Reply-To: <20200710142347.GE23821@mellanox.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 10 Jul 2020 22:02:20 +0200
Message-ID: <CAKMK7uFK6Os5ALHEBr7tqCMtmHS1FpuDeOvqs40GVMv2kqJ90g@mail.gmail.com>
To: Jason Gunthorpe <jgg@mellanox.com>
Subject: Re: [Intel-gfx] [PATCH 02/25] dma-fence: prime lockdep annotations
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 10, 2020 at 4:23 PM Jason Gunthorpe <jgg@mellanox.com> wrote:
>
> On Fri, Jul 10, 2020 at 04:02:35PM +0200, Daniel Vetter wrote:
>
> > > dma_fence only possibly makes some sense if you intend to expose the
> > > completion outside a single driver.
> > >
> > > The prefered kernel design pattern for this is to connect things with
> > > a function callback.
> > >
> > > So the actual use case of dma_fence is quite narrow and tightly linked
> > > to DRM.
> > >
> > > I don't think we should spread this beyond DRM, I can't see a reason.
> >
> > Yeah v4l has a legit reason to use dma_fence, android wants that
> > there.
>
> 'legit' in the sense the v4l is supposed to trigger stuff in DRM when
> V4L DMA completes? I would still see that as part of DRM

Yes, and also the other way around. But thus far it didn't land.
-Daniel

> Or is it building a parallel DRM like DMA completion graph?
>
> > > Trying to improve performance of limited HW by using sketchy
> > > techniques at the cost of general system stability should be a NAK.
> >
> > Well that's pretty much gpu drivers, all the horrors for a bit more speed :-)
> >
> > On the text itself, should I upgrade to "must not" instead of "should
> > not"? Or more needed?
>
> Fundamentally having some unknowable graph of dependencies where parts
> of the graph can be placed in critical regions like notifiers is a
> complete maintenance nightmare.
>
> I think building systems like this should be discouraged :\

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
