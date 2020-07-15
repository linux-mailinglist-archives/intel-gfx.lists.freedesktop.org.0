Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3339220AA3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B576E082;
	Wed, 15 Jul 2020 11:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770D76E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:05:18 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id h16so1570892ilj.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 04:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=basnieuwenhuizen-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ouG49VA4xk2vrvpG0VnN69idUXmFZrH/pn1ZmxXpzDU=;
 b=Sr5FqN/0aOR+KGr5kKNyZvHHas9BR6wkNR5nQSIO13n5K1CIuzqHk3EOk8vKhRUAez
 1XcOCU7/Tnq5lsGuMEtBqk4Jm/pXwD4gq00+ga/i0iMSaODmcY4SsEFe1kaxgbNo2g8H
 DfRHenbLfYihQd0MWJafryvTYt4E/PH0dFOyshcEF/UrflHUcErSk1FKSwWd+zTqfZpR
 8TqZoEBg01ZyfslmPjARTDRFqXZM4pb2FIolaOI1zi3tqc4mE+RYta8XH2Tmbswue+py
 Bvb1X64tI31op9ryGM+/raT3mBNYBK0OZ6MOslFX9W+Qvizrh1Z/DP3so7H+EEbHgICT
 ENfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ouG49VA4xk2vrvpG0VnN69idUXmFZrH/pn1ZmxXpzDU=;
 b=VpHGhgVvu/XmGf5/LqAOiPm4i+YxJYATvA9dKNAKwgDwTpR/RGGweMDyIsQvRs3kFR
 wXditP5jBiPLYjHkATAdSHikCCpogJtXsK90NLkCeFoLtd4K0m3OFfHOgwNWv9/8Vj/b
 LZ8fQFj8nRxPZrRgL11xW2yolfuHFG0QWbY3vq7QzBgH5XIX577v0yvKYM5u7DKSREGh
 f0tEgSErGCTYTfITcUbGUomECor5l6WjGI1GhLbT2Sa27/lvKq8xfWHQNArdHft8jkCX
 YFSCDMm9kbZYBIv9WscbFM51nVqvSlvOHLatCsxoYW6bLxC8aUK3ZAgEDr4kNN2pULak
 gG/g==
X-Gm-Message-State: AOAM53186t1BJLpccG8jZI9FAEQKxzU2EwOGl6sN9+JDqAqR3vC2qKXT
 vZKy6bebaWXhfqF5EvccMEhPaUxLTA4YeZpOs0j3+bE6COByuA==
X-Google-Smtp-Source: ABdhPJzYSTbo8+bXktW4UUhmN9qzR9fploDu1xkeIs5QRM7sQX6kde2xpE9yEtWma280/dlZ4LexdNHEMtHvpzs/u0M=
X-Received: by 2002:a92:8b0e:: with SMTP id i14mr8801447ild.307.1594811117684; 
 Wed, 15 Jul 2020 04:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
 <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
 <159480926758.13728.809663901463022623@build.alporthouse.com>
In-Reply-To: <159480926758.13728.809663901463022623@build.alporthouse.com>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Wed, 15 Jul 2020 13:05:06 +0200
Message-ID: <CAP+8YyHDYQSBmRohBwnhcB96p+ZHU2hT106CS6_-8A0Fk1Hegw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] sw_sync deadlock avoidance, take 3
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
Cc: intel-gfx@lists.freedesktop.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 15, 2020 at 12:34 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Bas Nieuwenhuizen (2020-07-15 11:23:35)
> > Hi Chris,
> >
> > My concern with going in this direction was that we potentially allow
> > an application to allocate a lot of kernel memory but not a lot of fds
> > by creating lots of fences and then closing the fds but never
> > signaling them. Is that not an issue?
>
> I did look to see if there was a quick way we could couple into the
> sync_file release itself to remove the syncpt from the timeline, but
> decided that for a debug feature, it wasn't a pressing concern.
>
> Maybe now is the time to ask: are you using sw_sync outside of
> validation?

Yes, this is used as part of the Android stack on Chrome OS (need to
see if ChromeOS specific, but
https://source.android.com/devices/graphics/sync#sync_timeline
suggests not)

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
