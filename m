Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C10220C19
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF9716EAC9;
	Wed, 15 Jul 2020 11:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955E66EACA
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:47:27 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id f2so2320587wrp.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 04:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MxQvlm/9+opfVBprTgWPUfxZWUWeJXQ9PpRAND7jzCM=;
 b=1z8aHdXlmbfhFwTIBIrHT9239EMibZ4oyVwSPv5O4nXfUP1kWfvYI8IXDtyRcK+YJ8
 Cbdp9hqK6M2kqxNBcmMj9TaqqgSsUrxEUwzyEIwV9KMtrnzFYMD6ae+29YYF82oj7apF
 7SZfkHMToRiJ6BPEReTeDYDaULD99pIse86/A2N1tw9MzZIcglBeDxX2Fm96bDkBKVZX
 cmeLIgfh3JEuW663iLQksYltWGz+fG4iAf2xWfh/1ga7yAC/SR3y7RyD4Fn4Co4uclLR
 nylae1KrcLhOjd2t2R3Cgw7e5VCbaBQ0pYHwSWOYQI7uABvmpUBnlElWTdC3s8XRNheM
 saRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MxQvlm/9+opfVBprTgWPUfxZWUWeJXQ9PpRAND7jzCM=;
 b=nns/ZBxt1hGYA+31+mLFxYu2eda0ax2gNLAsZBTw59rPpqGSLmq9xkWWlU7P42G5DK
 jNN0Mg7A6b5hA0GcnmF6iIdHUDlOIYCXxnBLvhLgSu3+fM4IhLTGg7rAVi+NaULYX3WN
 ZeL2YI2gDJ/IaQjHxgzvwPZf62gcOCf+gRoqndwVoxolgAyRadAlaX9+Sg7cEe5gN3am
 2rwQ+g+iMveJcaQn7l9xBUAgTqzLiEcfGDykkSOwEkjc+N97Poayk04XyE5nnmpXfKJX
 kw1KmRSRITaAorpLlUX2e67XEEIrBppAx+gWADO9Secy7n6ETi0Zv0vcJIQ3TcrTRbCl
 M2/w==
X-Gm-Message-State: AOAM532oZITjQF8pTVvZwZP37ZxRyWYxPieQT9VZ0SIv1rZ+X+yP0w22
 xoL8tV5y9SwSp5CXnFWlOaON4Y6kzeaST1MPhIhVLbm8
X-Google-Smtp-Source: ABdhPJzjXoEXRoTapuMQ3PFPPn22ai3KyxH95lZ/LKzly3wpn43d8Tdnan9e+Xp5j6zHbU7QctKRtvYmibDINWGGaBQ=
X-Received: by 2002:adf:b18d:: with SMTP id q13mr10774518wra.256.1594813646069; 
 Wed, 15 Jul 2020 04:47:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
 <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
 <159480926758.13728.809663901463022623@build.alporthouse.com>
 <CAP+8YyHDYQSBmRohBwnhcB96p+ZHU2hT106CS6_-8A0Fk1Hegw@mail.gmail.com>
In-Reply-To: <CAP+8YyHDYQSBmRohBwnhcB96p+ZHU2hT106CS6_-8A0Fk1Hegw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Jul 2020 12:47:15 +0100
Message-ID: <CAPj87rN+Sg6PRzGx-FjRFBoenpD9EsV9=ZbiCHEThcgt09YbMQ@mail.gmail.com>
To: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 15 Jul 2020 at 12:05, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl> wrote:
> On Wed, Jul 15, 2020 at 12:34 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Maybe now is the time to ask: are you using sw_sync outside of
> > validation?
>
> Yes, this is used as part of the Android stack on Chrome OS (need to
> see if ChromeOS specific, but
> https://source.android.com/devices/graphics/sync#sync_timeline
> suggests not)

Android used to mandate it for their earlier iteration of release
fences, which was an empty/future fence having no guarantee of
eventual forward progress until someone committed work later on. For
example, when you committed a buffer to SF, it would give you an empty
'release fence' for that buffer which would only be tied to work to
signal it when you committed your _next_ buffer, which might never
happen. They removed that because a) future fences were a bad idea,
and b) it was only ever useful if you assumed strictly
FIFO/round-robin return order which wasn't always true.

So now it's been watered down to 'use this if you don't have a
hardware timeline', but why don't we work with Android people to get
that removed entirely?

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
