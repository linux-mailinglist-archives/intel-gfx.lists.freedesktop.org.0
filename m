Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A24A335CF0E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 19:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBFF089CE1;
	Mon, 12 Apr 2021 17:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B0C89CE1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 17:01:10 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so13442434otk.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VJuys9DyerV3PBPTioHmwNBQGpvYT5J6kN0jeTDaRFM=;
 b=B2Iy/vsG7MV+bdINotSZiODSV3DfXIWuyvDrdp6d72Zr+3OuoMoszi+alaQOkGbABS
 Tw07JO2eB7GNDmioybuur6/W/zhqrX776oBevCn25eDokjYXkX5Miwh+KGqdLDlYBTtA
 OKmyvg0+BaR/7T6HPr23ZsGZWry+LzmU4USXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VJuys9DyerV3PBPTioHmwNBQGpvYT5J6kN0jeTDaRFM=;
 b=EVWOJWNgyQ98yDlatuJ8pgSo5jeQqKJj00vTJQutBKSQMChwdSC1JWKOBigLfo//ym
 ryTDuZKykN9/WA5b/WxcKPfNuEq561sAe2r7C2mhJrCtSO+MSz2KJaR35IC8mTtV4HRd
 qRelM70FG27ybZHzu+9vTkelbIWHxtmQAC5QQop6bS2XcbqmrnZSReDK2y3wlSp32CV5
 4ahzmcglMjbVgzfN2fEXTxyeVyQgD8aVyn20LNZ7vF/DdjE4rwGgcZAFxEnWP5JaVhR3
 nd705D2GHhOACXV1XwpEmgGiMkFk3iYZgmuMo3s1nmqGy3iNu0kJaQ3dFiHN7paX+XCc
 VOoA==
X-Gm-Message-State: AOAM531R7HqIbM/SKOL7u2y/TXa/U6/deVj5BAzKXDzFHRpKnBSjGEPc
 O/Vtls5PJsxpivMEpXxguthdNOCJswX7EWeW9M3YJA==
X-Google-Smtp-Source: ABdhPJzFhD9FEL0TCuYuZK+zL6+gT3TFDN6tV9A1NDwNSfHXCa9Q26pf7dD/GhiSpT36dEqIjnWlCZC4g5RmEhnT6n4=
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr25422440oto.281.1618246869563; 
 Mon, 12 Apr 2021 10:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210412090526.30547-1-matthew.auld@intel.com>
 <20210412090526.30547-19-matthew.auld@intel.com>
 <YHRkixaDBaf5cgkJ@phenom.ffwll.local>
 <CAM0jSHM_1V6OSZhuuaaAMmHi4BTiZ7Hbo99i2b=RzFFBMuYJ_A@mail.gmail.com>
In-Reply-To: <CAM0jSHM_1V6OSZhuuaaAMmHi4BTiZ7Hbo99i2b=RzFFBMuYJ_A@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 12 Apr 2021 19:00:58 +0200
Message-ID: <CAKMK7uFK5_4cbWeefjvXzfnHXsTh1OCtWSyLHUy5QhiFfwMf1A@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 18/19] drm/i915/gtt: map the PD up front
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
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 6:08 PM Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Mon, 12 Apr 2021 at 16:17, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Apr 12, 2021 at 10:05:25AM +0100, Matthew Auld wrote:
> > > We need to general our accessor for the page directories and tables from
> > > using the simple kmap_atomic to support local memory, and this setup
> > > must be done on acquisition of the backing storage prior to entering
> > > fence execution contexts. Here we replace the kmap with the object
> > > maping code that for simple single page shmemfs object will return a
> > > plain kmap, that is then kept for the lifetime of the page directory.
> > >
> > > v2: (Thomas) Rebase on dma_resv and obj->mm.lock removal.
> > >
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >
> > So I wanted to understand what px stands for as an abbreviation, and dug
> > all the way down to this:
> >
> > commit 567047be2a7ede082d29f45524c287b87bd75e53
> > Author: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Date:   Thu Jun 25 18:35:12 2015 +0300
> >
> >     drm/i915/gtt: Use macros to access dma mapped pages
> >
> > I still have no idea what it means, I guess px = page. But I also
> > committed this, so I guess can blame myself :-)
> >
> > But while digging I've stumbled over this here
> >
> > commit 6eebfe8a10a62139d681e2f1af1386252742278b
> > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > Date:   Fri Jul 12 08:58:18 2019 +0100
> >
> >     drm/i915/gtt: Use shallow dma pages for scratch
> >
> >
> > And that's some serious wtf. Yes we've done some compile-time type
> > casting automagic between i915_priv and dev in the past, and I think even
> > that was bad taste. But it was justified with that we have these
> > everywhere (especially in the mmio macros), and it would be a terrible
> > flag day.
> >
> > But I'm not seeing any need for auto-casting for these pages here, and I'm
> > not aware that we're doing this anywhere else in kernel code. There is
> > some macro-trickery in lockdep annotations, but that relies on the lockdep
> > map having the same struct member name in all lock types, and is not
> > exposed to drivers at all.
> >
> > Am I missing something, or why do we have this compile-time type casting
> > stuff going on in i915 page accessors?
>
> I think 'x' in the px family of macros/functions is meant in the
> variable/polymorphic sense, so it can potentially be a pt, pd, etc
> underneath. If you look at px_base() for example all it does is fish
> out the base GEM object from the structure, using the
> known-at-compile-time-type, which then lets us get at the dma address,
> vaddr etc.

Yeah, but that's not how things landed. px predates the magic
polymorphism. I think the px just stands for page, or at least
originally only stood for page. I'm not sure honestly. It seems to be
just used for page directory type of things, but I haven't found that
written down anywhere.

> It does seem pretty magical, but seems ok to me, if it means less typing?

That's the worst justification. Code is generally write once, read
many times. Optimizing for writing at the cost of magic indirection is
generally not the right tradeoff in the kernel, where any indirection
could hide a major gotcha. In huge userspace applications fancy
abstraction and polymorphism is often the right thing to do, but there
you also have a real compiler with a real typesystem (generally at
least) helping you out. Or it's yolo duct-taping with lots of tests,
where the speed at which you can hack up something matters more than
being able to read it quickly.

We're typing C here. It is generally rather verbose, with type casting
all done explicitly.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
