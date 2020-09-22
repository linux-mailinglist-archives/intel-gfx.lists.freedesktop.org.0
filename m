Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B32742745F8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 18:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385806E89B;
	Tue, 22 Sep 2020 16:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009506E89B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 16:01:59 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id a3so21618997oib.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 09:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jzGx9lNDQDNvXf55+zZV1XJczdG5Tj1hGWl7xVKxg1M=;
 b=AbruHcePTxOWEF854e6hnz/8QaFNhQAY+slB4rUkja6Zj6kCCbk3umIijEqzQanieU
 yeIQ1xS/LWBxCCGI5gpPR66Oa8uZl/04jVVfDBb0GtWtUkxkz1CcbrmWQ3Qwvl31mzpp
 BL8DTdMQ49vHk7PU5rBIHpBnBg4g3ZlYD3v3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jzGx9lNDQDNvXf55+zZV1XJczdG5Tj1hGWl7xVKxg1M=;
 b=DXWEgkx4fFSopECa5LSJs4ixuZVY0+fK7ajOj3Qbt/ma4F1FeHEGMAalofz7Mc89U4
 /AJolbqQw0c3PbgQqz+0um0nP776jyyg02sci3NnKvDytfIJd8qXZjL4D8Qtslk6sf7m
 03V0y0prDvrLZbXtZBkbf24V00ISa9Lp7lbQz8n7fQO1e6fo4koHmLjoFRHUxqbZzMnQ
 Mi6Y4RED2YZKa+CMVOUObtKXoNGnJn5Tn0LttMpgWiziBu/5KiH3iLI2oeZ0QZhEIxEW
 wq8kYBa6+wlNUHVIQSPt1FFyDVneoo8chu1irFkq2ETxMcDomkILPgh6HRpgNQGKwGWt
 R6Tw==
X-Gm-Message-State: AOAM5317hruy7i8fx0Tues8UNcdhMGw3zb23X+fTeuGVylc8vBSataJL
 zr+TPU40TX/gdgt6z7q5JUyqpbImAn0xf4r4/swN8Q==
X-Google-Smtp-Source: ABdhPJxUCOo0K3uccb6V78Xey0Gvm3PTUf1Xm+2P+JTQizT3twxEF7VlbI4OYn7TQy4fV9tVym4U9rJE/5W8CN474ZY=
X-Received: by 2002:aca:49c2:: with SMTP id w185mr2629161oia.101.1600790518782; 
 Tue, 22 Sep 2020 09:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <20180705101043.4883-1-daniel.vetter@ffwll.ch>
 <20180705102121.5091-1-daniel.vetter@ffwll.ch>
 <CAPj87rN48S8+pLd0ksOX4pdCTqtO=bDgjhkPxpWr_AnpVvgaSQ@mail.gmail.com>
 <20200922133636.GA2369@xpredator>
 <CAKMK7uHCeFan4+agMn0sr-z9UDyZwEJv0_dL-K-gA1n0=m+A2w@mail.gmail.com>
 <CAPj87rNLzFjn7xyePmEBEY8teL7TnL-HrQHXbp7C1tXDdWgeUA@mail.gmail.com>
In-Reply-To: <CAPj87rNLzFjn7xyePmEBEY8teL7TnL-HrQHXbp7C1tXDdWgeUA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Sep 2020 18:01:47 +0200
Message-ID: <CAKMK7uEyt0d0LidUCQL4oHZRYZdDEFhy=DnRF7WwD1S1+ackFQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
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

On Tue, Sep 22, 2020 at 4:14 PM Daniel Stone <daniel@fooishbar.org> wrote:
>
> On Tue, 22 Sep 2020 at 15:04, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > On Tue, Sep 22, 2020 at 3:36 PM Marius Vlad <marius.vlad@collabora.com> wrote:
> > > Gentle ping. I've tried out Linus's master tree and, and like Pekka,
> > > I've noticed this isn't integrated/added.
> >
> > Defacto the uapi we have now is that userspace needs to ignore "spurious" EBUSY.
>
> This really, really, really, bites.
>
> I think we need a guarantee that this never happens if ALLOW_MODESET
> is always used in blocking mode, plus in future a cap we can use to
> detect that we won't be getting spurious EBUSY events.
>
> I really don't want to ever paper over this, because it's one of the
> clearest indications that userspace has its timing/signalling wrong.

Ok so the hang-up last time around iirc was that I broke igt by making
a few things more synchronous. Let's hope I'm not also breaking stuff
with the WARN_ON ...

New plan:
- make this patch here only document existing behaviour and enforce it
with the WARN_ON
- new uapi would be behind a flag or something, with userspace and
everything hanging off it.

Thoughts?

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
