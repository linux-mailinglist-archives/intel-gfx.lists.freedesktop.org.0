Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DD963659F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 17:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0800610E5A9;
	Wed, 23 Nov 2022 16:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E3710E5A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 16:23:04 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id e13so25543282edj.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 08:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=iTqTgZZVPcHur4ir72Zm6jriTBFysIHApeXSgPETKzY=;
 b=MdK7M0VzmZomTsVbTF5VbNsJh1nEKpsEXsHKhmrxjl/ibRYPHUUU639yOwXeAFFKE/
 d5+Yx24UTr8EuPay2xBO2QkSphdbrLFPSkqmd351ooGBqm+1CnMAD8DdMkfb7NerISxP
 7mkvjLZxrCmbInMgkOvRsf1/xXov6LDHvpROg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iTqTgZZVPcHur4ir72Zm6jriTBFysIHApeXSgPETKzY=;
 b=GRJxIdat28KDbCRXemu4CI6PxPRD713vKMdPGKSyEuy8f+APKhwR7bmtmKkpw6NLjq
 j6ARo5Bm/r8tD7IKB9VSAx0SDp5gKaPUm6801zZC4w90RgeN7dI6XlEpt7ZY0DcST67q
 LjiYiQY03d6zZHWQlrxc6M3ZOdp4IK4Le9KaaqMF3HyUPK4ZuYgMu/b/PnprQkmwkRie
 4Z9y1kQAH1U+Vhq3HT4ZI3aK5cVd5semB4NiHJq9gf3Vs7fX+vZaAq2jPa8mUoJjtgkW
 NCrm39W3u8JXVJjP+VkBEAkE6LO/bmt71JY8ldPe5Ztba7mpk0me+9cjzr6GcXoYhXoe
 YfVg==
X-Gm-Message-State: ANoB5pkZ9seZmhtb+A1BJE+ZGWAfjxm2XsTKEZSl5GKMxTLjRmCn8lxT
 GzoknMPylCduPIzag/j6t97P4Dl7CbgjKX7/PfeZAg==
X-Google-Smtp-Source: AA0mqf4uJK6xmmkcy0DbmopiWQIfYRWzSsGguvQ75ijiLZdjrbFVHaDuEpUfzy2ywAK59n9HUhAbmq2ai7zD1+42AAU=
X-Received: by 2002:a05:6402:d69:b0:46a:392b:2440 with SMTP id
 ec41-20020a0564020d6900b0046a392b2440mr2475553edb.341.1669220582842; Wed, 23
 Nov 2022 08:23:02 -0800 (PST)
MIME-Version: 1.0
References: <3d8607b4-973d-945d-c184-260157ade7c3@amd.com>
 <CAKMK7uHVGgGHTiXYOfseXXda2Ug992nYvhPsL+4z18ssqeHXHQ@mail.gmail.com>
 <b05e6091-4e07-1e32-773d-f603ac9ac98b@gmail.com>
 <CAKMK7uFjmzewqv3r4hL9hvLADwV536n2n6xbAWaUvmAcStr5KQ@mail.gmail.com>
 <Y34WI9SZdiH/p1tA@ziepe.ca> <f8f844a5-0910-d19a-5aea-df7a1d83b1d3@gmail.com>
 <Y34XvmtHfb4ZwopN@ziepe.ca> <dc2a9d7f-192b-e9d8-b1d1-3b868cb1fd44@gmail.com>
 <Y34gBUl0m+j1JdFk@ziepe.ca>
 <CAKMK7uHWyOcZ77-+GY7hxFUA65uQYFe0fw2rww6Y-rLXvHFAYw@mail.gmail.com>
 <Y342emkzKHXLQvsN@ziepe.ca>
In-Reply-To: <Y342emkzKHXLQvsN@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 17:22:50 +0100
Message-ID: <CAKMK7uEXybD3iV7dDjcaP=joY-kE8aZZ5odCsjUBpatJe=Sd=Q@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [Linaro-mm-sig] Re: [PATCH] dma-buf: Require
 VM_PFNMAP vma for mmap
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 John Stultz <john.stultz@linaro.org>, Matthew Wilcox <willy@infradead.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Nov 2022 at 16:04, Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Nov 23, 2022 at 03:28:27PM +0100, Daniel Vetter wrote:
>
> > > This patch is known to be broken in so many ways. It also has a major
> > > security hole that it ignores the PTE flags making the page
> > > RO. Ignoring the special bit is somehow not surprising :(
> > >
> > > This probably doesn't work, but is the general idea of what KVM needs
> > > to do:
> >
> > Oh dear, when I dug around in there I entirely missed that
> > kvm_try_get_pfn exists, and it's very broken indeed. kvm really needs
> > to grow a proper mmu notifier.
> >
> > Another thing I'm wondering right now, the follow_pte();
> > fixup_user_fault(); follow_pte(); approach does not make any
> > guarantees of actually being right. If you're sufficiently unlucky you
> > might race against an immediate pte invalidate between the fixup and
> > the 2nd follow_pte(). But you can also not loop, because that would
> > fail to catch permanent faults.
>
> Yes, it is pretty broken.
>
> kvm already has support for mmu notifiers and uses it for other
> stuff. I can't remember what exactly this code path was for, IIRC
> Paolo talked about having a big rework/fix for it when we last talked
> about the missing write protect. I also vauagely recall he had some
> explanation why this might be safe.
>
> > I think the iommu fault drivers have a similar pattern.
>
> Where? It shouldn't
>
> The common code for SVA just calls handle_mm_fault() and restarts the
> PRI. Since the page table is physically shared there is no issue with
> a stale copy.
>
> > What am I missing here? Or is that also just broken. gup works around
> > this with the slow path that takes the mmap sem and walking the vma
> > tree, follow_pte/fixup_user_fautl users dont.
>
> follow_pte() is just fundamentally broken, things must not use it.
>
> > Maybe mmu notifier based restarting would help with this too, if
> > done properly.
>
> That is called hmm_range_fault()

Ah right I mixed that up on a quick grep, thanks for pointing me in
the right direction. Worries appeased.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
