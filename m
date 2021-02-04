Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DD030FD81
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC0A6E0C4;
	Thu,  4 Feb 2021 20:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8177D6E0CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:00:12 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id m7so4963952oiw.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Feb 2021 12:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=90M/71bjC9CGs3ogusHe7Lln0a+4v/EBmrZ9cb/rWvE=;
 b=D7GIO8jpHe/gkbaLe1baKOL9WZpSqRpl716zCmqa5VLl2L9Zpy3N8TgnimejTOU6HB
 XvrWwU+YnHtkmzTov45MWoarwGWvCOpuiwJo24Z4f6M7OODaT86zF01Vw7MhaQz3fqhe
 6d+LDr7ndJ1xlwpd8eVeUJz+/Ii+hqBbqeaUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=90M/71bjC9CGs3ogusHe7Lln0a+4v/EBmrZ9cb/rWvE=;
 b=Ludz8q66d+WXOqZ1tl+Fm510gAjl+zb81GjSEUL44Lzfp7jdZOebAAO11BoMOmNxAO
 d82a9jVAz3hnxvD1BiID3lLpMJRkfbKxyJMD/Qkefp7HA5gqEB0q8Yze6EgtTFkfMxhb
 TtDia2GFK4ee56PsaNEqVg22Rt2CsK2H/KZkoXvFl51+U/pB0IguM9tPLaAN4OhAfJfx
 frFL3pWfrNsYCt0HsDFoTlXHDTLWsGtDuvhdIj84zjxIX2jp9X20Q8R3IbtRsEHsIy1W
 XBBvGIrs0dmlHqC//2wv7dbLgiPKSbqK3NmujviJM1WK3g6LcaseIN9z7hZL/VXm2iK1
 qQsA==
X-Gm-Message-State: AOAM532GK1hbrA2/t3tfaH21ZPGrehaMjK77RUBVkUxqL9pOsapvcmpJ
 N39kizGOmNKk52CKrStcB9Blm6wCOg7Fg3abNUoXsg==
X-Google-Smtp-Source: ABdhPJwTuzNhAKxR0BkOyvj49dEx6Ja/iHwKoMWy60qW2EMYu8xTXD6u0yZN04biYADL17T3361IvWxlLPIJipMbnB4=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr794397oia.14.1612468811660; 
 Thu, 04 Feb 2021 12:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
 <20210204161339.GX4718@ziepe.ca>
 <CAKMK7uEZvEEQXQeM=t-7uZEvga2GMhctp=WQgeSetG0GKTRsHA@mail.gmail.com>
 <20210204183808.GY4718@ziepe.ca>
In-Reply-To: <20210204183808.GY4718@ziepe.ca>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 4 Feb 2021 20:59:59 +0100
Message-ID: <CAKMK7uFBzF00zTzAE5b7PJFUfmxp5ExbSQxfcOfd_P6dPm7k9A@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [Intel-gfx] [PATCH] RFC: dma-buf: Require VM_SPECIAL vma for
 mmap
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
 Matthew Wilcox <willy@infradead.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 4, 2021 at 7:38 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Thu, Feb 04, 2021 at 06:16:27PM +0100, Daniel Vetter wrote:
> > On Thu, Feb 4, 2021 at 5:13 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > On Wed, Feb 03, 2021 at 10:19:48PM +0100, Daniel Vetter wrote:
> > > > tldr; DMA buffers aren't normal memory, expecting that you can use
> > > > them like that (like calling get_user_pages works, or that they're
> > > > accounting like any other normal memory) cannot be guaranteed.
> > > >
> > > > Since some userspace only runs on integrated devices, where all
> > > > buffers are actually all resident system memory, there's a huge
> > > > temptation to assume that a struct page is always present and useable
> > > > like for any more pagecache backed mmap. This has the potential to
> > > > result in a uapi nightmare.
> > > >
> > > > To stop this gap require that DMA buffer mmaps are VM_SPECIAL, which
> > > > blocks get_user_pages and all the other struct page based
> > > > infrastructure for everyone. In spirit this is the uapi counterpart to
> > > > the kernel-internal CONFIG_DMABUF_DEBUG.
> > >
> > > Fast gup needs the special flag set on the PTE as well.. Feels weird
> > > to have a special VMA without also having special PTEs?
> >
> > There's kinda no convenient & cheap way to check for the pte_special
> > flag. This here should at least catch accidental misuse, people
> > building their own ptes we can't stop. Maybe we should exclude
> > VM_MIXEDMAP to catch vm_insert_page in one of these.
> >
> > Hm looking at code I think we need to require VM_PFNMAP here to stop
> > vm_insert_page. And looking at the various functions, that seems to be
> > required (and I guess VM_IO is more for really funky architectures
> > where io-space is somewhere else?). I guess I should check for
> > VM_PFNMAP instead of VM_SPECIAL?
>
> Well, you said the goal was to block GUP usage, that won't happen
> without the PTE special flag, at least on x86
>
> So, really, what you are saying is all dmabuf users should always use
> vmf_insert_pfn_prot() or something similar - and never insert_page/etc?
>
> It might make sense to check the vma flags in all the insert paths, eg
> vm_insert_page() can't work with VMAs that should not have struct
> pages in them (eg VM_SPECIAl, VM_PFNMAP, !VM_MIXEMAP if I understand
> it right)

Well that's what I've done, and it /looks/ like all the checks are
there already, as long as we use VM_PFNMAP. vm_insert_page tries to
auto-add VM_MIXEDMAP, but bails out with a BUG_ON if VM_PFNMAP is set.
And all the vm_insert_pfn_prot/remap_pfn_range functions require (or
set) VM_PFNMAP.

So I think just checking for VM_PFNMAP after the vma is set up should
be enough to guarantee we'll only have pte_special ptes in there,
ever. But I'm not sure, this stuff all isn't really documented much
and the code is sometimes a maze (to me at least).

> At least as some VM debug option

Seems to be there already unconditionally.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
