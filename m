Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988E2380E3C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 18:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71C46F39B;
	Fri, 14 May 2021 16:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 357B16F39A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 16:31:42 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id w3so45487031ejc.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 09:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bm0lPBWNUyn3Msplb1dXwtT+czHKu5M3fMgHypzFrVM=;
 b=soccG7ZnN3ySuUPBeVsY18SEP8ltyDV19Hexm+cJsHty11FkSQEBT84nDO63x81hWL
 Ovkvlfci2fuEI/MZfoifuY/+zGjVg0tv27FPKaypECEppF/NgjF6fbzxck0/XnVoJxoE
 lNmJq6pRLR6k9ScF4YVWSo8H7NuQlRQEZ+xm3kcvmi72Zh1weaLLUzIi6KVUtp93c9WJ
 GElbeOt11/ojaQfQBJjzs8hnfSy3EYnn21Y3FHxl1TRh2kQ3h3wcz6AfGF6QHnoMn/be
 zOKJEYjXf8tgDqucKE07XnkP0kjUnhNmYtvxP6NJI5KkvXxK3nALQ76uwtcJPPlkyTtA
 ll+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bm0lPBWNUyn3Msplb1dXwtT+czHKu5M3fMgHypzFrVM=;
 b=Bvm9g+k5QDklj5LxwKQdXBVqZw7ODic6FRWxSlbLGT9caY+HpAcxfMIx1diiEJ7DH1
 B8N22Yo2lHQj9HZjA5u1bi7sjAYUpBNIdVQOayib2BUkKLX+MylJ5z6yc/pJDC+kpjWj
 fW8T0ie2z9pBp4ItzVw6iLqirQ52ZO48vBoVNo2PTsIft+y27gNcVtgtZZOY+zmQ7J41
 1w19/dox87h8h+V7JiPrS8h4H2oq3mbuy4CpJbWPAgszG4OnMl4Bw7pHFFQuwCLV5IGc
 7aB54aAbWmuRbBZAUT0jqW7c0oVNTK7bOQbz0C0WTu+fs4EiEgBsjatsc55H8WqXUvLX
 SCGg==
X-Gm-Message-State: AOAM531Pj+zHTztKz8NTOJTXd9jru5V9jRxjZcBNUSEHyXtJnE6C5eE1
 eD2Qrzj0K9TKKjcLsIlChLLvkYQb62VCb75++lCHIA==
X-Google-Smtp-Source: ABdhPJybYyPukxWXJiiSeAuGbPo11mVWO2GrgysN1S+dUTkv6f7rZLuM6AoFvZTte12l/fwNJsbaM+b3Cc0nYybBpCc=
X-Received: by 2002:a17:906:7fd2:: with SMTP id
 r18mr45125220ejs.78.1621009900507; 
 Fri, 14 May 2021 09:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <d22437bd-8bb6-d7cb-c017-89cdc7da560d@free.fr>
 <17953669798.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
 <546e4ee4-9aa4-1967-cdcb-a561cac582ef@free.fr>
 <CAKMK7uETcM38sjPYJLdxpGcZcx=tHdGUPe0WTgnGoZfPQvEJFQ@mail.gmail.com>
 <08c22bc8-aa35-43d2-ad4c-7f489dfc585b@free.fr>
 <d382a41cacbc44ee96b9602f3473b5c0@intel.com>
 <20210511163930.GA28794@sdutt-i7>
 <bb701cab-a68e-08ed-80e3-61be160bdc02@free.fr>
In-Reply-To: <bb701cab-a68e-08ed-80e3-61be160bdc02@free.fr>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 14 May 2021 11:31:29 -0500
Message-ID: <CAOFGe95Ku0FiUfPzEo2xM7Uu9Xi7GJn_rNR9ToRfESRmPdCW_Q@mail.gmail.com>
To: Martin Peres <martin.peres@free.fr>
Subject: Re: [Intel-gfx] [RFC PATCH 00/97] Basic GuC submission support in
 the i915
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
 dri-devel <dri-devel@lists.freedesktop.org>, "Ekstrand,
 Jason" <jason.ekstrand@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pulling a few threads together...

On Mon, May 10, 2021 at 1:39 PM Francisco Jerez <currojerez@riseup.net> wrote:
>
> I agree with Martin on this.  Given that using GuC currently involves
> making your open-source graphics stack rely on a closed-source
> cryptographically-protected blob in order to submit commands to the GPU,
> and given that it is /still/ possible to use the GPU without it, I'd
> expect some strong material justification for making the switch (like,
> it improves performance of test-case X and Y by Z%, or, we're truly
> sorry but we cannot program your GPU anymore with a purely open-source
> software stack).  Any argument based on the apparent direction of the
> wind doesn't sound like a material engineering reason to me, and runs
> the risk of being self-fulfilling if it leads us to do the worse thing
> for our users just because we have the vague feeling that it is the
> general trend, even though we may have had the means to obtain a better
> compromise for them.

I think it's important to distinguish between landing code to support
GuC submission and requiring it in order to use the GPU.  We've got
the execlist back-end and it's not going anywhere, at least not for
older hardware, and it will likely keep working as long as execlists
remain in the hardware.  What's being proposed here is a new back-end
which, yes, depends on firmware and can be used for more features.

I'm well aware of the slippery slope argument that's implicitly being
used here even if no one is actually saying it:  If we land GuC
support in i915 in any form then Intel HW engineers will say "See,
Linux supports GuC now; we can rip out execlists" and we'll end up in
the dystopia of closed-source firmware.  If upstream continues to push
back on GuC in any form then they'll be forced to keep execlists.
I'll freely admit that there is probably some truth to this.  However,
I really doubt that it's going to work long-term.  If the HW
architects are determined enough to rip it out, they will.

If GuC is really inevitable, then it's in our best interests to land
at least beta support earlier.  There are a lot of questions that
people have brought up around back-ports, dealing with stable kernels,
stability concerns, etc.  The best way to sort those out is to land
the code and start dealing with the issues.  We can't front-load
solving every possible issue or the code will never land.  But maybe
that's people's actual objective?


On Wed, May 12, 2021 at 1:26 AM Martin Peres <martin.peres@free.fr> wrote:
>
> On 11/05/2021 19:39, Matthew Brost wrote:
> > On Tue, May 11, 2021 at 08:26:59AM -0700, Bloomfield, Jon wrote:
> >>> On 10/05/2021 19:33, Daniel Vetter wrote:
> >>>> On Mon, May 10, 2021 at 3:55 PM Martin Peres <martin.peres@free.fr>
> >>> wrote:
> >>>
> >>> However, if the GuC is actually helping i915, then why not open source
> >>> it and drop all the issues related to its stability? Wouldn't it be the
> >>> perfect solution, as it would allow dropping execlist support for newer
> >>> HW, and it would eliminate the concerns about maintenance of stable
> >>> releases of Linux?

I would like to see that happen.  I know there was some chatter about
it for a while and then the discussions got killed.  I'm not sure what
happened, to be honest.  However, I don't think we can make any
guarantees or assumptions there, I'm afraid. :-(

> >> That the major version of the FW is high is not due to bugs - Bugs don't trigger major version bumps anyway.
>
> Of course, where did I say they would?

I think the concern here is that old kernels will require old major
GuC versions because interfaces won't be backwards-compatible and then
those kernels won't get bug fixes.  That's a legitimate concern.
Given the Linux usage model, I think it's fair to require either
backwards-compatibility with GuC interfaces and validation of that
backwards-compatibility or stable releases with bug fixes for a good
long while.  I honestly can't say whether or not we've really scoped
that.  Jon?

> >> We have been using GuC as the sole mechanism for submission on Windows since Gen8, and it has proven very reliable. This is in large part because it is simple, and designed from day 1 as a cohesive solution alongside the hardware.

There are going to be differences in the usage patterns that i915 and
Windows will hit when it comes to the subtle details of how we bang on
the GuC rings.  Those will likely lead to bugs on Linux that don't
show up on Windows so "it works on Windows" doesn't mean we're headed
for a bug-free future.  It means we have an existence proof that
firmware-based submission can be very reliable.  However, I don't
think anyone on this thread is really questioning that.

> Exactly, the GuC was designed with Windows' GPU model... which is not
> directly applicable to Linux. Also, Windows does not care as much about
> submission latency, whereas most Linux users still depend on glamor for
> 2D acceleration which is pretty much the biggest stress test for command
> submission latency. Also, features not used by the Windows driver or
> used in a different way are/will get broken (see the semaphore patch
> that works around it).

I'm not nearly as deep into benchmarking the delta as you are so I
won't contradict anything said directly.  However, I think it's worth
pointing out a few things:

There isn't really a Windows GPU model.  There's a different
submission model with Win10 vs. Win7 and Linux looks a lot more like
Win7.  I really want Linux to start looking like Win10 at which point
they'll be using roughly the same "GPU model".  There are other OS
differences that matter here such as Windows' substantially higher
interrupt handling latency which GuC theoretically works around.
However, I don't think it's fair to say that the way Linux wants to
program the GPU for command submission is substantially different from
Windows due to userspace software differences.

There are significant differences in terms of dma_fence handling and
implicit synchronization.  However, as has already been mentioned,
those will be handled by drm/scheduler with GuC as a back-end that
manages load-balancing.  And, yes, there will be Linux-specific bugs
(see above) but they're not because of a fundamentally different
model.

One other thing worth mentioning, which doesn't seem to fit anywhere:
If we really care about keeping execlists working for the upcoming
use-cases, it needs major work.  It's currently way too deeply tied
with i915_sw_fence so it can't handle long-running compute batches
without breaking dma-fence rules.  The way it handles bonded submit is
a bolt-on that doesn't actually provide the guarantees that userspace
needs.  It should also probably be re-architected to use drm/scheduler
for dma_fence and look a lot more like GuC on the inside.

The point of bringing this up is that I'm seeing a lot more execlist
love than I think it deserves. :-)  It may be free software but that
doesn't mean it's good software. :-P  To be clear, I don't mean to
unduly insult Chris or any of the other people who have worked on it.
It works and it's perfectly functional for supporting all the good ol'
use-cases us desktop Linux people are used to.  But the ways in which
it would have to change in order to handle the future are substantial.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
