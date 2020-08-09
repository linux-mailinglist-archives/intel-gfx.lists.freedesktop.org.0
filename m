Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A4A23FFEE
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Aug 2020 22:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363286E172;
	Sun,  9 Aug 2020 20:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA486E172
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Aug 2020 20:01:20 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id t10so2973646ejs.8
 for <intel-gfx@lists.freedesktop.org>; Sun, 09 Aug 2020 13:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=18hhrX+DPql6THL0Zzsazy8zuAnUKtHhg6z4AtWiB48=;
 b=BA35lFHCiJmoYLRBpYVNBkhGGBbb19V3UQEyuJgnQnK5NS3CSdSM8cLVD2syyM6Bn0
 alg1IorkzxG50hx8aLF8czdSX3894V6/2jGyJkRGCVGHQJ/3BWFJArWnEUrDnzDPEo8G
 3jDxsayEaZZEdCMKCDeJqGlaXlSYe4+j7r3y7IKumpjHpcq0BdXzUTLI578wDnCi/0Ab
 q1yrdCzmttnmt/wfxXd1Ys81J+cidrOZNT1PhLXfYEjM/FW33h0ePn1Zt4ofTOxLTb/H
 GFZ8PS+nJOjzOvO463VYccK32RIlxXc+4B+uXRJzNUvKuUvlXUBBgC4j1xC6lO0xxvya
 EKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=18hhrX+DPql6THL0Zzsazy8zuAnUKtHhg6z4AtWiB48=;
 b=UF1L1y1WgGGr1AO9S+1NNzO6TuE+/n4hSK2ZeiBozBFobQSbt2rQZ7sB4tbHtIgTkP
 +iT/n/rafnMD024g9X77PZvzMEJQVNC27vLBK7UL17EkS0pK5QhVIeqw24n6vtwBL+f7
 BNRbd1S62nEN1DHMe2Vlr5vZlzRhGNKtIs7Xp9a2sFwzBt6DgW6oYoGs1dTI31l9OED/
 GLEn5iqTVU94Bq3DzP07tTAIaGsTYRBdDNQwIkg2Aqgq7jsK+i78bmChz7jOiuIyiB0t
 cplgiL0MN1xKbZ00zaDTVxUoggnkp5FMGlMMcZjyLJYW1PgPhro3vOTZftYX7WyyR6Mj
 pmyQ==
X-Gm-Message-State: AOAM533WKD0DOEX+94S11qJK8F4r2ZsGrALAuDy+5j+pb5XfeXpVcbVh
 Cdw0TgtXlpHajn7tLEobvtgUjMcCPQwsazOcwH0bLw==
X-Google-Smtp-Source: ABdhPJzPkHRl5t+tW4mBI46weQsfZqAMPAckpUUyUUhSKpajXCkrKrWOR1HtdrAucBM31b8lrMor4MTre5d2AC80GDM=
X-Received: by 2002:a17:906:8782:: with SMTP id
 za2mr18519580ejb.419.1597003279296; 
 Sun, 09 Aug 2020 13:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
 <CAPM=9twmsrNehJjFZrehwORg-Nyzo_cEq8CiY5=bzsOv8G7pPA@mail.gmail.com>
 <159639701401.26228.4061968059817196468@build.alporthouse.com>
 <CAPM=9twb2jhWhwvD3HWjG04ihxnYv+EgJ0rQPwL_aHSjJn-NNQ@mail.gmail.com>
 <159678435631.14655.6966712365882745877@build.alporthouse.com>
In-Reply-To: <159678435631.14655.6966712365882745877@build.alporthouse.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 10 Aug 2020 06:01:08 +1000
Message-ID: <CAPM=9ty8J_W7Uk0AWbTQSqy4cxe-tvdmct9v9TYuWq29v7GAHw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] Time, where did it go?
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

On Fri, 7 Aug 2020 at 17:12, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Dave Airlie (2020-08-04 22:45:25)
> > On Mon, 3 Aug 2020 at 05:36, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > Quoting Dave Airlie (2020-08-02 18:56:44)
> > > > On Mon, 3 Aug 2020 at 02:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > > >
> > > > > Lots of small incremental improvements to reduce execution latency
> > > > > which basically offsets the small regressions incurred when compared to
> > > > > 5.7. And then there are some major fixes found while staring agape at
> > > > > lockstat.
> > > >
> > > > What introduced the 5.7 regressions? are they documented somewhere.
> > >
> > > No. There's a 5.8-rc1 bisect (to the merge but not into rc1) for
> > > something in the core causing perf fluctuations, but I have not yet
> > > reproduced that one to bisect into the rc1 merge. [The system that showed
> > > the issue has historically seen strong swings from p-state setup, might
> > > be that again?]. This is from measuring simulated transcode workloads that
> > > we've built up to track KPI. That we can then compare against the real
> > > workloads run by other groups.
> > >
> > > > What is the goal here, is there a benchmark or application that this
> > > > benefits that you can quantify the benefits?
> > >
> > > Entirely motivated by not wanting to have to explain why there's even a
> > > 1% regression in their client metrics. They wouldn't even notice for a
> > > few releases by which point the problem is likely compounded and we
> > > suddenly have crisis meetings.
> > >
> > > > Is the lack of userspace command submission a problem vs other vendors here?
> > >
> > > If you mean HW scheduling (which is the bit that we are most in dire need
> > > of for replacing this series), not really, our closest equivalent has not
> > > yet proven itself, at least in previous incarnations, adequate to their
> > > requirements.
> >
> > I don't think this sort of thing is acceptable for upstream. This is
> > the platform problem going crazy.
> > Something regresses in the kernel core, and you refactor the i915
> > driver to get horribly more complicated to avoid fixing the core
> > kernel regressions?
>
> Far from it. We are removing the complication we added to submit to the
> HW from two places and only allowing it to be done from one, with the
> resulting simplification and removal of the associated locking.
>

Care to share the software you are using to produce this?

Why isn't the initial patch bisected here? As I said this isn't how we
respond to regression reports.

none of this tells me if the initial regression is still there, and
you've just optimised something else to avoid the problem.

I'll have to dig into the stats since I've no idea what code is
producing them, is there a latency target for the driver,
a defined workload we are trying to achieve. What userspace is causing
this, could the userspace be fixed?

> As for the impact of shaving an average of 0.4us from the submission
> paths?

You know you've just defined nano-optimisation here, where is the real
world benefit, what applications are we seeing that this affects.

I'm still not sure you get the message here, stop micro-optimising
stuff to appease userspace that could be fixed. Adding complexity,
not just in these patches but across i915 GEM (lockless lists, nested
locking, trylocking, lockdep avoidance strategies, GPU relocs) to
avoid
some other teams inside Intel fixing their userspace isn't maintaining
i915 to upstream expectations. The expression you're org chart is
showing
comes to mind. If the media driver is broken, *you* go fix the media
driver, just because you can optimise things in the kernel, doesn't
mean you should.

Please provide the simulation software so we can review these patches
on a level playing field.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
