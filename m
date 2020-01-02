Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADF812E612
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 13:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B316E0D8;
	Thu,  2 Jan 2020 12:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E57076E0D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 12:28:08 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id n27so25284940vsa.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 04:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rFOBCcc7Rrb5Y9YZbRS3+TahdpuyE52kNFwCCxe+FxA=;
 b=UL+idomWZltA8CssK69Jh/DoVx/z+TnKQmsCNC0l9YOplU9hg1tFC/U8/DpfaOxMm/
 h3o1Pow3Mqe+VpFB01ZOQtqJIpr56jEfhjjEwAMmaDi9uemhoKwgdK9IV7XqFRH30Kno
 n1MpnnAUH3mDW5Hl8OfKv96SfVPfUQxz+kQh1sse02OpHzQsZKHr9FxI3ZsWf1OUgAcK
 gm0K+KkoK8x7ESns0uUyfLeQpq0NNPEkj9rQLrLohmGwDyaRepDfKJHuDZH/skx6pnCG
 IZlwmrtS636kX08XXPrlrHjo7J6lnevoGTmZx2xT2n1m8u32gp8pT58kOf9oYlQ5zCKT
 qLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rFOBCcc7Rrb5Y9YZbRS3+TahdpuyE52kNFwCCxe+FxA=;
 b=de7BI2Opt1pe1MyDj82qeDruy60o0lzCLVVSpOr/5DXEcQweX0yWnPqS/z4+bpPzYB
 b0NnqQQTDkyeHKUZBpkK9fmalEGjqk7RGnBcjqs3jSoewMWnXB81yhiZ/20K79DOc6P0
 28LbruB/0gqsQYKO/wQ7lwvPU2h8eiIhjm5ZxHv0LmR/QaUUQSKXEGLJ361Eelv3Ae3R
 I0qX4Y8F71P9MHT3q3uRj30NUXfnHWGuYwlS56Qf5fPAJ3MkbuLBOoBOoij1w/+1gR9b
 u6gG00w1UPcRJPcUHSlOSAQ4+UXB+9qbjYBIhNaMIGppoe1s6vwM5H4pOriKdRByQS6+
 448A==
X-Gm-Message-State: APjAAAUwlP+SB/Rq570JDREN24Wz2t7Rf01QBF5FGXBf+d5jfnUfofUQ
 NXm5GqKn7kkOUSJTO0geyYme7KTKRHnNcM3YMHY=
X-Google-Smtp-Source: APXvYqxLkMojLCBBva17eHOzgyd9VoRZAJyMc2c3IAPBLmYO8WmG3erwlS3Qp887d1IejymBIOtnfFNy3TgV9IYfm2Y=
X-Received: by 2002:a67:c90d:: with SMTP id w13mr42977292vsk.164.1577968088109; 
 Thu, 02 Jan 2020 04:28:08 -0800 (PST)
MIME-Version: 1.0
References: <20200102103144.1320461-1-chris@chris-wilson.co.uk>
 <20200102103757.1344827-1-chris@chris-wilson.co.uk>
 <CAM0jSHPFgKBG5OPoRaWkG8mzFb=ztMxxR2WDxV=7h7nBELrD6A@mail.gmail.com>
 <157796546591.3681.18159145702540646394@skylake-alporthouse-com>
In-Reply-To: <157796546591.3681.18159145702540646394@skylake-alporthouse-com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 2 Jan 2020 12:27:42 +0000
Message-ID: <CAM0jSHPD97gstvOys=SqcSsRWSfYWHsD_aTEE4Zg8OpRChfu-Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support discontiguous lmem
 object maps
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

On Thu, 2 Jan 2020 at 11:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2020-01-02 11:39:41)
> > On Thu, 2 Jan 2020 at 10:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Create a vmap for discontinguous lmem objects to support
> > > i915_gem_object_pin_map().
> >
> > Yes, please.
> >
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > ---
> >
> > [snip]
> >
> > > @@ -288,12 +284,28 @@ static void *i915_gem_object_map(struct drm_i915_gem_object *obj,
> > >                 pgprot = pgprot_writecombine(PAGE_KERNEL_IO);
> > >                 break;
> > >         }
> > > -       addr = vmap(pages, n_pages, 0, pgprot);
> > >
> > > -       if (pages != stack_pages)
> > > -               kvfree(pages);
> > > +       if (i915_gem_object_has_struct_page(obj)) {
> > > +               struct sgt_iter iter;
> > > +               struct page *page;
> > > +               pte_t **ptes = mem;
> > > +
> > > +               for_each_sgt_page(page, iter, sgt)
> > > +                       **ptes++ = mk_pte(page, pgprot);
> > > +       } else {
> > > +               const resource_size_t iomap = obj->mm.region->iomap.base;
> > > +               struct sgt_iter iter;
> > > +               dma_addr_t addr;
> > > +               pte_t **ptes = mem;
> > > +
> > > +               for_each_sgt_daddr(addr, iter, sgt)
> >
> > addr -= region.start; for poor old fake local-memory.
>
> Positive? I wasn't sure since we are using the physical address and not
> a mapping within the mapping?

I think so. It's 1:1 mapped so:

fake_lmem_start = 4G;
iomap = mappable_aperture_start;

daddr = fake_lmem_start + n;
n = daddr - fake_lmem_start;

io_addr = iomap + n;

>
> It's hard to tell, since so long as the address exists we can read/write
> to it, and only later pay the consequences of corrupting someone else's
> memory.

BAT results should tell us, where we write from the gpu and then read
from the cpu.

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
