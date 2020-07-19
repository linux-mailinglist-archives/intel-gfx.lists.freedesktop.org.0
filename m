Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F699225452
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jul 2020 23:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB8689F2E;
	Sun, 19 Jul 2020 21:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com
 [IPv6:2a00:1450:4864:20::643])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5066B89F2E
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jul 2020 21:52:32 +0000 (UTC)
Received: by mail-ej1-x643.google.com with SMTP id ga4so16110139ejb.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Jul 2020 14:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TK6UZWqV3v9AsE0nLBHTNz04/TlgDJqoZSAoxS2zCfE=;
 b=XXlSK2V4/sVm66sKxGO+i7cb1CmK4qf/5GbzUqyy9Glfjkl1JbtfU941Jk490xs2K0
 bLd00kqKsDO6gT2/Ev8woRgYLpsWh5qZUPEsf5Nh9KLafne81UgUUJWg3sJLhvbVUV5d
 r0p1wZnMagv8TASZf4ClnQCfbnOcLRj2lSyzscsd5rLLtfzaQnDVHQC63n5isOT1IgEW
 iZrNhfPVI5ixfoMlf8GLYAKfHHbsSCrNm5m0k2rvXwe6EGX1n7zmqXg0Ihu1IBjREgU5
 alHFJkc4+yuhIS0tWxVO6AfDoOmhqlooHXbd0sLYXzQr8fHtM1v4PuOcAeBQ6VYtseYW
 Z8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TK6UZWqV3v9AsE0nLBHTNz04/TlgDJqoZSAoxS2zCfE=;
 b=i7n0vHZEaLVz9OwYOVjJQ5E6fHYUh1Ptdb/nxSYKj83BO4f95Eq+0anZbUwgmSQcbN
 1Xdf3SFAmvdC/3GCEwkcs2rKNEZte/DOXDXC3o+JRsZ5no/6Nf93ZUvNlc19LnnBGl7e
 QrKXMxOcgx8nFkPfh2rRtei717TqRMvFFe1+VbLExUlu8rLr+yGzNH/CwMQ+zY3gk2Bt
 v7JWDaTWEAPUu3CipAueSH8uepSoEMpHJx4AxYrZotJkk+wkxtLnnORZGTul/BFeO95P
 dg6mw8wZZoD8dAxo3rs3K4rOlaluFAZrvKftpbqPy390YM7RKBKHq1RxmsMLvbFaqyIs
 mrEw==
X-Gm-Message-State: AOAM530uSD1QdKs8dnJB9fyFgcIHUMAxETRzx3iRosetseceAN0c0Cww
 Pik+RTC0mfKHo5RpWPdJCO77tXoNfWND1Hg7cwg=
X-Google-Smtp-Source: ABdhPJx7r+Sa0yh91AORHNc/rBKySVEeM+5wS+xrjmgLY7kN6tu+bIyD8zRzX5iUDCnsbUosJ1fvePfZy4zP7vr+oVg=
X-Received: by 2002:a17:906:4158:: with SMTP id
 l24mr15545350ejk.101.1595195550578; 
 Sun, 19 Jul 2020 14:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
 <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
 <CAPM=9txaksu8brsPTHsLkQudpNLd6O1MOzG8APGTrMaoXMioqw@mail.gmail.com>
 <d7e7b910-81d0-d7b2-b426-51b0714836eb@intel.com>
In-Reply-To: <d7e7b910-81d0-d7b2-b426-51b0714836eb@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 20 Jul 2020 07:52:19 +1000
Message-ID: <CAPM=9tx0TW1ooPb89ifN6=OAYEt8f71=cMnZJzFf_p3xOmWFfw@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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

On Thu, 16 Jul 2020 at 20:11, Matthew Auld <matthew.auld@intel.com> wrote:
>
> On 16/07/2020 01:43, Dave Airlie wrote:
> > On Wed, 15 Jul 2020 at 00:35, Matthew Auld <matthew.auld@intel.com> wrote:
> >>
> >> On 13/07/2020 06:09, Dave Airlie wrote:
> >>> On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
> >>>>
> >>>> We need to add support for pwrite'ing an LMEM object.
> >>>
> >>> why? DG1 is a discrete GPU, these interfaces we already gross and
> >>> overly hacky for integrated, I'd prefer not to drag them across into
> >>> discrete land.
> >>>
> >>> same goes for pread.
> >>>
> >>> You have no legacy userspace here, userspace needs change to support
> >>> LMEM, it can be fixed to avoid legacy ioctls paths.
> >>
> >> Ok, there have also been similar discussions internally in the past. I
> >> think one of the reasons was around IGT, and how keeping the
> >> pread/pwrite interface meant slightly less pain, also it's not much
> >> effort to implement for LMEM. If this is a NACK, then I guess the other
> >> idea was to somehow fallback to mmap and update IGT accordingly.
> >
> > I just don't think we should have internal kernel interfaces for
> > mapping ram in the kernel address space, seems pointless, makes less
> > sense with a discrete GPU in the mix, so yes I think NAK for
> > pread/pwrite at least at this time.
>
> Ok.
>
> >
> > I'd also like to see a hard no relocs policy for DG1 enforced in the kernel.
>
> Ok, just checking, is that the case even if we don't require extra code
> to support it? We recently dropped the CPU reloc path completely, in
> favour of single GPU reloc path, and so no special code is required to
> support LMEM, it should just work. IGT of course makes heavy use of
> relocs, so that would need an overhaul.

The GPU reloc path is optimising a path that we simply shouldn't need
or be using.

IGT tests relocs, ripping out relocs should reduce the amount of
testing IGT has to do and reduce CI run times. Why carry the techincal
debt deliberately.

I expect the kernel team to be a bit more authorative inside Intel on
why uAPI gets exposed and why, it seems like everytime there is an
attempt to limit the tech debt of carrying forward unnecessary uAPIs
there is some push back for media driver or IGT. Fix stuff and be
harder in pushing back on carrying unneeded interfaces forward so we
future products are less mired in pointless debt. DG1 uAPI should
really be a chance to full review the legacy of integrated graphics +
pre-48-bit VM interfaces and they should all be turned off for DG1 so
that future discrete GPUs can move forward cleaner. I really shouldn't
be the one enforcing this, the i915 team needs to be a bit
authoritative on what is necessary to support.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
