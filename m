Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187F0222FEF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 02:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5836E10A;
	Fri, 17 Jul 2020 00:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B60B6E108
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 00:24:40 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id z2so9155111wrp.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cWI0O8ov/cB7LvUvANYy2BdtL3NWtW+6ICLatzsxStk=;
 b=qTLjr9E2Cigm+QQ3bpC+nncFVgn98AtfuoEN0gOnWLz+qcLQ/QMzzzvFGcHcaSxMB5
 mUMYrt2xCiaD3ysv1hrSjBWXg/1RdUda+HxPUShtLD4XYx8y5LSNnvh4o1BatNDMhAl6
 bug10QHQxnqDBMKLUN40vCkMj86DDCZ7Ox3t+bkMzPmX7KTw2/3Y99yNEXqdvOKDgNPF
 TNckVF8ZPYJtcVeArp4YBLxVv+sDsKY3o26dEwB22WbEjNJn/3wVS+mdpILc9UR8gWL1
 cB6wEJEXXjTvXeYSPMGNHuYPjRsMp169wynV9IKEtP0v9yGPw1shv1ll14lLDZ4qSUyz
 IA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cWI0O8ov/cB7LvUvANYy2BdtL3NWtW+6ICLatzsxStk=;
 b=BJOrorRJXAhzptilZZhM+VbDm76Fo5m0voTuTpl8COF0C08t/kqnw8CokMAqG9c7Zo
 e8miu23LJnAcmX7utlKBE37V/LeCj2K0zmHsgZhQKR64rrNzsvutV3alf7kyD47uDBFO
 o3uW79z3jgYtEizQf0kKhi2oHeRCg4zpKdN27n1IX3URxAwC758YcIM08BHFYd7/nNbO
 avfRacoQBASXF/LFNuzvyUz1yfr9BnewIJnqtfPhrgfx/ef0qFA25Bd4rZZ6qZSVpIi0
 MEKoh2H/LVWX202JeMFEvMjKlck/8UzlVhoKS+0TGeczLlqwvwaUoeQe4jL4bT2LI4K3
 CYZQ==
X-Gm-Message-State: AOAM532BoBFKPtHnBsw7/v/LC54+BTz+s6sGbXRb1ToL+1U3PEaZ7yJD
 daO62LMxbtQhB+byZCbr3E+e2wtVihYakY+Bj70VFQ==
X-Google-Smtp-Source: ABdhPJz/UdkyX1+2nKOJ2DgRc9FLuww4fxK+5D63LNUDkhVbxg90y/n4DT3cqY5/H83HeRBYePcQp6QPq00dtdYFABI=
X-Received: by 2002:adf:f9c8:: with SMTP id w8mr7405442wrr.354.1594945478672; 
 Thu, 16 Jul 2020 17:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
 <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
 <159480926758.13728.809663901463022623@build.alporthouse.com>
 <CAP+8YyHDYQSBmRohBwnhcB96p+ZHU2hT106CS6_-8A0Fk1Hegw@mail.gmail.com>
 <CAPj87rN+Sg6PRzGx-FjRFBoenpD9EsV9=ZbiCHEThcgt09YbMQ@mail.gmail.com>
 <CAKMK7uFw_cu4kc5poS2et3j0UXogS4z0Gt3CXj-kS9OvpGpkDA@mail.gmail.com>
In-Reply-To: <CAKMK7uFw_cu4kc5poS2et3j0UXogS4z0Gt3CXj-kS9OvpGpkDA@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 17 Jul 2020 01:24:27 +0100
Message-ID: <CAPj87rO6rUU7+F2LuhfksFNYA+merqOBcNoh3xz3ZY1ubf+OEA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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
Cc: Rob Herring <robh@kernel.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, John Stultz <john.stultz@linaro.org>,
 Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

On Wed, 15 Jul 2020 at 12:57, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Wed, Jul 15, 2020 at 1:47 PM Daniel Stone <daniel@fooishbar.org> wrote:
> > On Wed, 15 Jul 2020 at 12:05, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl> wrote:
> > > Yes, this is used as part of the Android stack on Chrome OS (need to
> > > see if ChromeOS specific, but
> > > https://source.android.com/devices/graphics/sync#sync_timeline
> > > suggests not)
> >
> > Android used to mandate it for their earlier iteration of release
> > fences, which was an empty/future fence having no guarantee of
> > eventual forward progress until someone committed work later on. For
> > example, when you committed a buffer to SF, it would give you an empty
> > 'release fence' for that buffer which would only be tied to work to
> > signal it when you committed your _next_ buffer, which might never
> > happen. They removed that because a) future fences were a bad idea,
> > and b) it was only ever useful if you assumed strictly
> > FIFO/round-robin return order which wasn't always true.
> >
> > So now it's been watered down to 'use this if you don't have a
> > hardware timeline', but why don't we work with Android people to get
> > that removed entirely?
>
> I think there's some testcases still using these, but most real fence
> testcases use vgem nowadays. So from an upstream pov there's indeed
> not much if anything holding us back from just deleting this all. And
> would probably be a good idea.

It looks like this is just a docs hangover which can be fixed; sw_sync
is no longer part of the unified Android kernel image, so it can no
longer be relied on post-Treble. So let's just continue on the
assumption that sw_sync is not anything anyone can rely on.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
