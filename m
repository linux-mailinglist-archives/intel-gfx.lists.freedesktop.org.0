Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02501732A9
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB6D6EE51;
	Fri, 28 Feb 2020 08:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2090C6EE50
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:18:13 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a5so2237544wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 00:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hrtwUC/YhDBYyzJxltk/TqizHVfa54GZzbXBEN339JE=;
 b=DFKSJihiIibkFSmT/kIyW7RGOr7qByEjhIlNdG47exZI/VElg8ZCOZ0OlEX1OU4H74
 BRlW6KP2Umb02dkLRa45X4B94BSB0fO2I2j4zIHOG4X7A4KjRRXTZFNjSnpujXdH/fJK
 HZGl1U6n2Wr6ckgP0As/cBz0pn5UNH6+StKBpaK/LdOz3rvXDD/zzrry5aJyiMiyTARI
 2XDPaE9BB+wFfNsLR1YaBY5+UQvrGbKMNDmAtagyvGLWL/8ZflWSto3RhdEri0s4WFGr
 AbWluOImntXaubCXSfag6+o9i8mx4pN5/UUHrT+7KE071oQqkkGwLnXbmpziIeIMtfx4
 PYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hrtwUC/YhDBYyzJxltk/TqizHVfa54GZzbXBEN339JE=;
 b=sBRWk/rUsqQp9MXtfIb/xJMVO7o/1KlvhuArnSMh4QPjSxmTKyvYh3Z7lVeKQpgDni
 t/8tKo92gOJ/Slu3ooZKthoNdkbjDSUz9FIeCrL8bWHLKX6cA3JObWFAjfwOcx5u1jEn
 oB2KPaAkBwBWwW/rDL5pTjhqQ44T3zBrL8LE02AAH2CBPQUrVRel86J5YKBguxrSni9n
 OlYxoSu1Wsn674S4oWrHhWS8OvxBBLPRlWmhtnCZ99uVpDpkKB4CrRnycvASIaA9FqIY
 2gy+o/H7R7AYYkNiS7cZs6LCgTPTfe/veDSVWvFwV8VA4W1aV6+jN5ks/gZBKhRcfac1
 7tYg==
X-Gm-Message-State: APjAAAXredT2meI42JOaEo3Pp3NNIBo/0gBJ9ze/Dfi8nQsQFM5EJQhk
 JxBu5EzJ4fwEfkQSSSEY/leqRj6nlyYdn4tkKonj5g==
X-Google-Smtp-Source: APXvYqwALWZkAtx9oMFKzrxz7zcRqmu/NRtii7qiTuBEa3xbRKb9X8VjT3M6ZxdmzigZ59XXireQtl/vDiYJZ8a/jPk=
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr3843049wmc.168.1582877891565; 
 Fri, 28 Feb 2020 00:18:11 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
In-Reply-To: <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 28 Feb 2020 08:17:30 +0000
Message-ID: <CAPj87rM76W9y_76WUHR35NS3V4_-RFi9ZM3GA=aED3dD3hWYkg@mail.gmail.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 gstreamer-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Feb 2020 at 03:38, Dave Airlie <airlied@gmail.com> wrote:
> b) we probably need to take a large step back here.
>
> Look at this from a sponsor POV, why would I give X.org/fd.o
> sponsorship money that they are just giving straight to google to pay
> for hosting credits? Google are profiting in some minor way from these
> hosting credits being bought by us, and I assume we aren't getting any
> sort of discounts here. Having google sponsor the credits costs google
> substantially less than having any other company give us money to do
> it.

The last I looked, Google GCP / Amazon AWS / Azure were all pretty
comparable in terms of what you get and what you pay for them.
Obviously providers like Packet and Digital Ocean who offer bare-metal
services are cheaper, but then you need to find someone who is going
to properly administer the various machines, install decent
monitoring, make sure that more storage is provisioned when we need
more storage (which is basically all the time), make sure that the
hardware is maintained in decent shape (pretty sure one of the fd.o
machines has had a drive in imminent-failure state for the last few
months), etc.

Given the size of our service, that's a much better plan (IMO) than
relying on someone who a) isn't an admin by trade, b) has a million
other things to do, and c) hasn't wanted to do it for the past several
years. But as long as that's the resources we have, then we're paying
the cloud tradeoff, where we pay more money in exchange for fewer
problems.

> If our current CI architecture is going to burn this amount of money a
> year and we hadn't worked this out in advance of deploying it then I
> suggest the system should be taken offline until we work out what a
> sustainable system would look like within the budget we have, whether
> that be never transferring containers and build artifacts from the
> google network, just having local runner/build combos etc.

Yes, we could federate everything back out so everyone runs their own
builds and executes those. Tinderbox did something really similar to
that IIRC; not sure if Buildbot does as well. Probably rules out
pre-merge testing, mind.

The reason we hadn't worked everything out in advance of deploying is
because Mesa has had 3993 MRs in the not long over a year since
moving, and a similar number in GStreamer, just taking the two biggest
users. At the start it was 'maybe let's use MRs if you want to but
make sure everything still goes through the list', and now it's
something different. Similarly the CI architecture hasn't been
'designed', so much as that people want to run dEQP and Piglit on
their hardware pre-merge in an open fashion that's actually accessible
to people, and have just done it.

Again, if you want everything to be centrally
designed/approved/monitored/controlled, that's a fine enough idea, and
I'd be happy to support whoever it was who was doing that for all of
fd.o.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
