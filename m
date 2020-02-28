Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3953C1731F8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 08:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19EF6EE0C;
	Fri, 28 Feb 2020 07:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819BF6E12F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 07:45:00 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id j5so849956otn.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 23:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kf61Oc2Mm+EJmlvGuBiP3kaVR2kC8B2rZBEYbGPQudo=;
 b=FHVP1LaGA7l2CJFtXP2//tKLcBZhhyTM9YQVEz914rhNtP/Ic5uQ2xEHtt0tHMNiBH
 euSgA1pjK2UW/RzWk3h1Dkrx+rNCFbDz2OLHmyvDD3ouMX5SHI9AJr+0kydG6pFNDzRa
 CBke/xz8DIE3ejuHPsDgFnSMBhtCc7X+zZLf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kf61Oc2Mm+EJmlvGuBiP3kaVR2kC8B2rZBEYbGPQudo=;
 b=ax0UiaNmMDYQloX5/NVKdGXc9V3JURhHYFEHt1S9qXHT/bDZUiCAzKiKgKm9YPTPhw
 mVSNs8UuY0tD/kZ9ai2DtS5EOQRAESD3gB80oeTo4ZU6ZmQl4Ah0CX1zVNRWBqqUC/ZF
 D/nD0zr1VBf4qkhbr9Y4S0qBuk6Kdq/oh6h2OWOaCxSZ7evH3GwMbWrxDyVP4JyNVgTE
 fvnullB1FxGOwNMPlkEZ1tpc5iWvPHf4fmavmpt5RceWiHagGiA3ygOtzaC3VuTIo7Db
 t093AV2s2ECx01ltDALG0jX/lAwoeIeNW9eFbBbSbcjTm+iE/jJ4AnYC9qM8k6PglhPr
 fz3w==
X-Gm-Message-State: APjAAAWgJT5H1pgk52ELN4UcFv1T+5B8QZOKA9apllzHo89YIjgYV6BC
 uGMZc8LsXnoI05CX4YzGZ2/f/LefR7G6NXcIpALyIg==
X-Google-Smtp-Source: APXvYqxOBvaV1MvAFAljq/YMZus/S7fG3rxYAl5Ogj/YnG00VQwqO0s2+HZ8k60fPSPOk3r/hcCLQWMyFuKD3cXkHnk=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr2403211otq.281.1582875899756; 
 Thu, 27 Feb 2020 23:44:59 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
In-Reply-To: <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 28 Feb 2020 08:44:48 +0100
Message-ID: <CAKMK7uHJy0v0Bdi10hcKUOwWrez_3rFT_kEOUxfPje-ruYO8AQ@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] gitlab.fd.o financial situation and impact on
 services
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
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, gstreamer-devel@lists.freedesktop.org,
 Mesa Dev <mesa-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 4:38 AM Dave Airlie <airlied@gmail.com> wrote:
>
> On Fri, 28 Feb 2020 at 07:27, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > Hi all,
> >
> > You might have read the short take in the X.org board meeting minutes
> > already, here's the long version.
> >
> > The good news: gitlab.fd.o has become very popular with our
> > communities, and is used extensively. This especially includes all the
> > CI integration. Modern development process and tooling, yay!
> >
> > The bad news: The cost in growth has also been tremendous, and it's
> > breaking our bank account. With reasonable estimates for continued
> > growth we're expecting hosting expenses totalling 75k USD this year,
> > and 90k USD next year. With the current sponsors we've set up we can't
> > sustain that. We estimate that hosting expenses for gitlab.fd.o
> > without any of the CI features enabled would total 30k USD, which is
> > within X.org's ability to support through various sponsorships, mostly
> > through XDC.
> >
> > Note that X.org does no longer sponsor any CI runners themselves,
> > we've stopped that. The huge additional expenses are all just in
> > storing and serving build artifacts and images to outside CI runners
> > sponsored by various companies. A related topic is that with the
> > growth in fd.o it's becoming infeasible to maintain it all on
> > volunteer admin time. X.org is therefore also looking for admin
> > sponsorship, at least medium term.
> >
> > Assuming that we want cash flow reserves for one year of gitlab.fd.o
> > (without CI support) and a trimmed XDC and assuming no sponsor payment
> > meanwhile, we'd have to cut CI services somewhere between May and June
> > this year. The board is of course working on acquiring sponsors, but
> > filling a shortfall of this magnitude is neither easy nor quick work,
> > and we therefore decided to give an early warning as soon as possible.
> > Any help in finding sponsors for fd.o is very much appreciated.
>
> a) Ouch.
>
> b) we probably need to take a large step back here.
>
> Look at this from a sponsor POV, why would I give X.org/fd.o
> sponsorship money that they are just giving straight to google to pay
> for hosting credits? Google are profiting in some minor way from these
> hosting credits being bought by us, and I assume we aren't getting any
> sort of discounts here. Having google sponsor the credits costs google
> substantially less than having any other company give us money to do
> it.
>
> If our current CI architecture is going to burn this amount of money a
> year and we hadn't worked this out in advance of deploying it then I
> suggest the system should be taken offline until we work out what a
> sustainable system would look like within the budget we have, whether
> that be never transferring containers and build artifacts from the
> google network, just having local runner/build combos etc.

Google has sponsored 30k in hosting credits last year, these simply
ran out _much_ faster than anyone planned for. So this is by far not a
free thing for them. Plus there's also other companies sponsoring CI
runners and what not else in equally substantial amounts, plus the
biggest thing, sponsored admin time (more or less officially). So
there's a _lot_ of room for companies like Red Hat to sponsor without
throwing any money in google's revenue stream.

Or it doesn't happen, and then yeah the decision has already been made
to shutter the CI services. So this is also a question of whether we
(as a community and all the companies benefitting from the work done)
really want this, or maybe not quite.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
