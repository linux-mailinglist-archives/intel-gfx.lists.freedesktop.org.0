Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A331174052
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 20:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA566F4B3;
	Fri, 28 Feb 2020 19:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911B56E0F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 19:34:21 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id 7so2921860lfz.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+3wfcVucKNDT8xQ2IYHdrb8ypqAQcsLMWiIEAUmRFdY=;
 b=oNgAEPmd74TVlRaCo9qXmuaQ2h23gSNubAj7tWcrLgKDd+2Bh/Yw8MWSML8Ow11IPF
 YsFG8/mBKQ7Eexoq0TAX89Y1ck+y+Ci0u9AJ9Gs6nDQi6CmuAIko0h7I50olvrbmFXPZ
 BwV6MkLmAEDJpVSji/8sTxiSM3awqekihYusRy/L+iamTnZpxbYI3U1EQM3RU8+wGYog
 +cu+Q4u0fAHwTlc21hgOeGCFW8YZwoLnKfe74/9paqZkjCVCZnePW9NW2KegomNSS9N3
 a2+d1yFqW+t4/Mg5WIDUoGqJZYM5FkVh8Z/9QZduutAAX3ZnUpCucctaHmosEwmTwr4n
 2zpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+3wfcVucKNDT8xQ2IYHdrb8ypqAQcsLMWiIEAUmRFdY=;
 b=ELSxbVh/M+B3+MJ6rKBgi5hnbgvjCJzo84R7zzS857IjVukXZMvm2ALcfbtexTWavN
 oJJoiFSLmFlO9+IbE85lfsopGLYuLNNXnEMJmgY87MdXJMGL+8gAXJk6WbGRevtut0ib
 xOd7iqU0+kwkx2zWe6tTfU+SvK4XIVTG2oM1QCYJ3nof6lva8pua9JkCswZsc41b2Lki
 2JeRujxoS7nBtFcepnrYCG6VZBKROpg12VF63hGS73clHbxh2BuNlL8WUeaSY5mfkV2d
 y95tz3H3HY0p1E1hjVrWwFAJwS3ZeHDOpf0SIzAs/WwsLgAirPbhAmx5jzzDbJOIhvml
 YZGQ==
X-Gm-Message-State: ANhLgQ38UmRJtHkk93XNbREzWCnLK7zetVoXNhj7hEO6adpeAhnDZPRB
 OzTGQtLNEgueJFwAPQmseVrbLxWTzNmUvYQSMz7jNg==
X-Google-Smtp-Source: ADFU+vsyYu1Fsr6NUj2fklhT+YtbDcWuaoofEA6zLDAf2pBT55gUwm6pdVZXJH9rxGAVWEbxXo0Khtrnm1qEQhPXP+8=
X-Received: by 2002:a19:6b09:: with SMTP id d9mr3597759lfa.203.1582918459634; 
 Fri, 28 Feb 2020 11:34:19 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <CAPj87rM76W9y_76WUHR35NS3V4_-RFi9ZM3GA=aED3dD3hWYkg@mail.gmail.com>
 <CAPM=9txN-RKGwinzsSPrmT_xFjS2J_XUhXVsRQ2pSSe529wpEA@mail.gmail.com>
In-Reply-To: <CAPM=9txN-RKGwinzsSPrmT_xFjS2J_XUhXVsRQ2pSSe529wpEA@mail.gmail.com>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 28 Feb 2020 11:34:08 -0800
Message-ID: <CADaigPUjYZ-Mqd91eyR3Luo=PxLHratUhvodJmCJHf__MnPozA@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, Mesa Dev <mesa-dev@lists.freedesktop.org>,
 gstreamer-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 12:48 AM Dave Airlie <airlied@gmail.com> wrote:
>
> On Fri, 28 Feb 2020 at 18:18, Daniel Stone <daniel@fooishbar.org> wrote:
> >
> > On Fri, 28 Feb 2020 at 03:38, Dave Airlie <airlied@gmail.com> wrote:
> > > b) we probably need to take a large step back here.
> > >
> > > Look at this from a sponsor POV, why would I give X.org/fd.o
> > > sponsorship money that they are just giving straight to google to pay
> > > for hosting credits? Google are profiting in some minor way from these
> > > hosting credits being bought by us, and I assume we aren't getting any
> > > sort of discounts here. Having google sponsor the credits costs google
> > > substantially less than having any other company give us money to do
> > > it.
> >
> > The last I looked, Google GCP / Amazon AWS / Azure were all pretty
> > comparable in terms of what you get and what you pay for them.
> > Obviously providers like Packet and Digital Ocean who offer bare-metal
> > services are cheaper, but then you need to find someone who is going
> > to properly administer the various machines, install decent
> > monitoring, make sure that more storage is provisioned when we need
> > more storage (which is basically all the time), make sure that the
> > hardware is maintained in decent shape (pretty sure one of the fd.o
> > machines has had a drive in imminent-failure state for the last few
> > months), etc.
> >
> > Given the size of our service, that's a much better plan (IMO) than
> > relying on someone who a) isn't an admin by trade, b) has a million
> > other things to do, and c) hasn't wanted to do it for the past several
> > years. But as long as that's the resources we have, then we're paying
> > the cloud tradeoff, where we pay more money in exchange for fewer
> > problems.
>
> Admin for gitlab and CI is a full time role anyways. The system is
> definitely not self sustaining without time being put in by you and
> anholt still. If we have $75k to burn on credits, and it was diverted
> to just pay an admin to admin the real hw + gitlab/CI would that not
> be a better use of the money? I didn't know if we can afford $75k for
> an admin, but suddenly we can afford it for gitlab credits?

As I think about the time that I've spent at google in less than a
year on trying to keep the lights on for CI and optimize our
infrastructure in the current cloud environment, that's more than the
entire yearly budget you're talking about here.  Saying "let's just
pay for people to do more work instead of paying for full-service
cloud" is not a cost optimization.


> > Yes, we could federate everything back out so everyone runs their own
> > builds and executes those. Tinderbox did something really similar to
> > that IIRC; not sure if Buildbot does as well. Probably rules out
> > pre-merge testing, mind.
>
> Why? does gitlab not support the model? having builds done in parallel
> on runners closer to the test runners seems like it should be a thing.
> I guess artifact transfer would cost less then as a result.

Let's do some napkin math.  The biggest artifacts cost we have in Mesa
is probably meson-arm64/meson-arm (60MB zipped from meson-arm64,
downloaded by 4 freedreno and 6ish lava, about 100 pipelines/day,
makes ~1.8TB/month ($180 or so).  We could build a local storage next
to the lava dispatcher so that the artifacts didn't have to contain
the rootfs that came from the container (~2/3 of the insides of the
zip file), but that's another service to build and maintain.  Building
the drivers once locally and storing it would save downloading the
other ~1/3 of the inside of the zip file, but that requires a big
enough system to do builds in time.

I'm planning on doing a local filestore for google's lava lab, since I
need to be able to move our xml files off of the lava DUTs to get the
xml results we've become accustomed to, but this would not bubble up
to being a priority for my time if I wasn't doing it anyway.  If it
takes me a single day to set all this up (I estimate a couple of
weeks), that costs my employer a lot more than sponsoring the costs of
the inefficiencies of the system that has accumulated.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
