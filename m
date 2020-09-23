Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A554E2756BC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 12:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D8E6E954;
	Wed, 23 Sep 2020 10:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DC76E954
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 10:58:41 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id v20so24577649oiv.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 03:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wDiVGOW2BwVoj+byF8GmVc4hZoZxCN4FNEDgvLDpQ1k=;
 b=Qdl9ZA+ZTkR35bC8SLkZu9gmZz0yIkZzf7fKlMtexw60Ein4nPVkpSZdq9H4b/uQNE
 ym/7FKqm2OjdqPm5ssrHThHs7fQORtaSTkbYAoMJcXd6zsMkSRPtq+uCBJ7yDajwu2T7
 3POcxNH9Erym7dLnHVvozChqgrTpMfAQqddds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wDiVGOW2BwVoj+byF8GmVc4hZoZxCN4FNEDgvLDpQ1k=;
 b=VqIeIV+wlk/HXMuXaGw4hXpYLbPPCqKhJSN5hwrmmtMnwg4nSG1ApoBPXSpc12z3vQ
 eMUSmqeYUX4gz3FcHkfVOU5XVPFXddl/kpHhZBafx3T2OntNLudrVJLXk0zQVdc8BBAs
 PwCpqeIYHLANavTIEmbTP8RYKdOeW9gAW/tSKhvIQWxEVSXdCYLZIQ+ceVsa7DxUt/G7
 2/OiEtoqaPCVGewmFqBzTpt1mBKe/730Tij2/GQ2IO8wKGvZCVZMomQXTVFBLwOorY6A
 Mt5OKm1tRA6no26KeiPoq3Y7rr8Ul5UDICUz1qUb9ixNqs01vNnjBwWOTZw3NFAHvBZX
 z2qQ==
X-Gm-Message-State: AOAM533sf9zoK7kj4+Fvj5exCeGr/16XeK9ZLD1OyDJrhN0Z+WlIltMT
 cvRckesO054uxvpWvcLJ2taEaHccD/2BqOxvTi8HQzbGJou4wQ==
X-Google-Smtp-Source: ABdhPJxfxLPKhyX0sj8rLdjW3NuP47epv2iLZ1JCv3JNotaYE+HIg78XpuC6HN1WlipJCa2mmIVWRxwkFtnAzZPhCt0=
X-Received: by 2002:aca:49c2:: with SMTP id w185mr4818246oia.101.1600858720790; 
 Wed, 23 Sep 2020 03:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <20180705101043.4883-1-daniel.vetter@ffwll.ch>
 <20180705102121.5091-1-daniel.vetter@ffwll.ch>
 <CAPj87rN48S8+pLd0ksOX4pdCTqtO=bDgjhkPxpWr_AnpVvgaSQ@mail.gmail.com>
 <20200922133636.GA2369@xpredator>
In-Reply-To: <20200922133636.GA2369@xpredator>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Sep 2020 12:58:30 +0200
Message-ID: <CAKMK7uHr3dKu8o4e3hoSe3S5MfVtZ92nLk1VGZTqSuDsH6kphg@mail.gmail.com>
To: Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to
 nonblocking atomic modesets
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 3:36 PM Marius Vlad <marius.vlad@collabora.com> wrote:
>
> On Fri, Jan 31, 2020 at 07:34:00AM +0000, Daniel Stone wrote:
> > On Thu, 5 Jul 2018 at 11:21, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
> > > pull in arbitrary other resources, including CRTCs (e.g. when
> > > reconfiguring global resources).
> > >
> > > But in nonblocking mode userspace has then no idea this happened,
> > > which can lead to spurious EBUSY calls, both:
> > > - when that other CRTC is currently busy doing a page_flip the
> > >   ALLOW_MODESET commit can fail with an EBUSY
> > > - on the other CRTC a normal atomic flip can fail with EBUSY because
> > >   of the additional commit inserted by the kernel without userspace's
> > >   knowledge
> > >
> > > For blocking commits this isn't a problem, because everyone else will
> > > just block until all the CRTC are reconfigured. Only thing userspace
> > > can notice is the dropped frames without any reason for why frames got
> > > dropped.
> > >
> > > Consensus is that we need new uapi to handle this properly, but no one
> > > has any idea what exactly the new uapi should look like. As a stop-gap
> > > plug this problem by demoting nonblocking commits which might cause
> > > issues by including CRTCs not in the original request to blocking
> > > commits.
> Gentle ping. I've tried out Linus's master tree and, and like Pekka,
> I've noticed this isn't integrated/added.
>
> Noticed this is fixing (also) DPMS when multiple outputs are in use.
> Wondering if we can just use a _ONCE() variant instead of WARN_ON(). I'm seeing
> the warning quite often.

On which driver/chip does this happen?
-Daniel

>
> >
> > Thanks for writing this up Daniel, and for reminding me about it some
> > time later as well ...
> >
> > Reviewed-by: Daniel Stone <daniels@collabora.com>
> >
> > Cheers,
> > Daniel
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
