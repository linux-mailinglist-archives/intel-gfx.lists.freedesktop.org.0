Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162CA2748B4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 21:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748CF89ED3;
	Tue, 22 Sep 2020 19:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DE089ED3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 19:02:48 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z1so18283922wrt.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rm/MUGiqEj6w9zoNKJAAAmLZqiJ10V/BIIAqAEoPPYo=;
 b=nHx+oCJ4c6Paf+lALa+5KspNBYN+hXRQkk9hBttFTN+rje5X8/9FAUvaCBwnGOPWQ1
 F4R0U65sfyBNDYw+IPkqYN/j3Q/YMan4JXmbRcOW/ASi5k1hxBIiRxiCHJJqQK1aycZl
 VBAJ78k7zPaOieZI67vbAaNfJPc8l78oZiXdnreDjhWtR6rsN9vfcznLyR49mkwjUtFs
 E2jco4SRrE6jQD2v3CBXzKCrByqErFTzls6gcpddlM0Nz8pB508/uQX3YGIbykHJImTo
 tHnjh25yK6E3gcJ8UoyNvbJRSMpiFSGPo2YN4QrEg7DYjbZBzI0cK7+uQtTUwkZrNa73
 1akA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rm/MUGiqEj6w9zoNKJAAAmLZqiJ10V/BIIAqAEoPPYo=;
 b=Xzqm4ifPCWqTJjgx5xLY01SSt8ZXhb90B8qPWuYm+8wyrmQ1ftWkU2VyEEcRM39YDq
 GAYkEKppu/HgI4V+CK9aKYJZkMXiPlDhBP+jMCJ9Yet2kUCaZ0gicLCJ85PLgMRe8BBh
 TX4JEz1vjgqEyiXsl5FbNss6NlGz0WpU/fsS9a8/+WbWddGcQYJOQ0Heo5fI6tgJ3yy3
 bqMTaD1n9rR4Pb8B6j/+MP3ImOF6gyDk50CzfVmWzvvX34oq2HgVqwxfiZ15vbJILpAA
 qCVNbo/JH+HHdNaduiKV7WRBJgUNqn/JcHODOzT9YPtS7sL5uGcg3EU0rh/Q2ysIuqH1
 b9KQ==
X-Gm-Message-State: AOAM530dILHvFmXgUkizm7pLBi1KpeaMqwp/kQc10FWfQ+DCMIhDdqZB
 Qi6QKNCKBZHt5/Zq9TQMXROoiaKuQzWnFO/RK2w66g==
X-Google-Smtp-Source: ABdhPJwvwQBt4Q6HDn51fnSs2PQD3j8FLapI/mLE772a0J4HTg0bK9kCG9427Njb47eon1VCQkDPa5MIGFa14BvVrEY=
X-Received: by 2002:adf:e292:: with SMTP id v18mr6915557wri.256.1600801367216; 
 Tue, 22 Sep 2020 12:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20180705101043.4883-1-daniel.vetter@ffwll.ch>
 <20180705102121.5091-1-daniel.vetter@ffwll.ch>
 <CAPj87rN48S8+pLd0ksOX4pdCTqtO=bDgjhkPxpWr_AnpVvgaSQ@mail.gmail.com>
 <20200922133636.GA2369@xpredator>
 <CAKMK7uHCeFan4+agMn0sr-z9UDyZwEJv0_dL-K-gA1n0=m+A2w@mail.gmail.com>
 <CAPj87rNLzFjn7xyePmEBEY8teL7TnL-HrQHXbp7C1tXDdWgeUA@mail.gmail.com>
 <CAKMK7uEyt0d0LidUCQL4oHZRYZdDEFhy=DnRF7WwD1S1+ackFQ@mail.gmail.com>
In-Reply-To: <CAKMK7uEyt0d0LidUCQL4oHZRYZdDEFhy=DnRF7WwD1S1+ackFQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 22 Sep 2020 20:02:35 +0100
Message-ID: <CAPj87rNO+_2dBSJtaNi5PemvS3oG2uuoCwP_AmtOw3qbjUQ-ZA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>,
 Marius Vlad <marius.vlad@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 22 Sep 2020 at 17:02, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Tue, Sep 22, 2020 at 4:14 PM Daniel Stone <daniel@fooishbar.org> wrote:
> > I think we need a guarantee that this never happens if ALLOW_MODESET
> > is always used in blocking mode, plus in future a cap we can use to
> > detect that we won't be getting spurious EBUSY events.
> >
> > I really don't want to ever paper over this, because it's one of the
> > clearest indications that userspace has its timing/signalling wrong.
>
> Ok so the hang-up last time around iirc was that I broke igt by making
> a few things more synchronous. Let's hope I'm not also breaking stuff
> with the WARN_ON ...
>
> New plan:
> - make this patch here only document existing behaviour and enforce it
> with the WARN_ON
> - new uapi would be behind a flag or something, with userspace and
> everything hanging off it.
>
> Thoughts?

What do you mean by 'new uapi'? The proposal that the kernel
communicates back which object IDs have been added to the state behind
your back? That it's been made automatically blocking? Something else?

Cheers,
Daniel (the other one)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
