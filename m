Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670121C7573
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 17:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F16C16E8A2;
	Wed,  6 May 2020 15:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C746E8A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 15:55:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21128918-1500050 for multiple; Wed, 06 May 2020 16:55:12 +0100
MIME-Version: 1.0
In-Reply-To: <20200506144448.GB1219060@intel.com>
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
 <20200429205446.3259-4-chris@chris-wilson.co.uk>
 <20200506144448.GB1219060@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <158878050724.927.1472476462505554945@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 16:55:07 +0100
Subject: Re: [Intel-gfx] [CI 4/6] drm/i915/gt: Switch to manual evaluation
 of RPS
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Rodrigo Vivi (2020-05-06 15:44:48)
> On Wed, Apr 29, 2020 at 09:54:44PM +0100, Chris Wilson wrote:
> > As with the realisation for soft-rc6, we respond to idling the engines
> > within microseconds, far faster than the response times for HW RC6 and
> > RPS. Furthermore, our fast parking upon idle, prevents HW RPS from
> > running for many desktop workloads, as the RPS evaluation intervals are
> > on the order of tens of milliseconds, but the typical workload is just a
> > couple of milliseconds, but yet we still need to determine the best
> > frequency for user latency versus power.
> > 
> > Recognising that the HW evaluation intervals are a poor fit, and that
> > they were deprecated [in bspec at least] from gen10, start to wean
> > ourselves off them and replace the EI with a timer and our accurate
> > busy-stats. The principle benefit of manually evaluating RPS intervals
> > is that we can be more responsive for better performance and powersaving
> > for both spiky workloads and steady-state.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1698
> > Fixes: 98479ada421a ("drm/i915/gt: Treat idling as a RPS downclock event")
> 
> Hi Chris,
> 
> this one failed to apply on drm-intel-fixes and it looks critical
> to me... I attempted some cherry-pick and backport of other patches
> on this series, but they took me to other dependencies and many
> apparently non-trivial fixes.

It's the entire series. It's a UX regression rather than power, so it
could slip, and I would err on the side of caution as it is quite a
dramatic change to throw in late into a 5.7-rc. There's going to be no
user feedback on it until it is in the rc, by which point we have no
time to fix it.

> So, do we have a solution for this that we could apply for 5.7?
> Or the faith of 5.7 is also the part faster solution?
> 
> Btw, there are other patches on the list of failed cherry-picks:
> 
> 614654abe847 ("drm/i915: Check current i915_vma.pin_count status first on unbind")

We need that to fix a deadlock.

> c4e8ba739034 ("drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore")

That to behave nicely with VkEvents.

> a95f3ac21d64 ("drm/i915/gem: Remove object_is_locked assertion from unpin_from_display_plane")

And that's a potential bug in 5.7, so needs fixing.

> 2632f174a2e1 ("drm/i915/execlists: Avoid reusing the same logical CCID")
> 5c4a53e3b1cb ("drm/i915/execlists: Track inflight CCID")

We probably need these based on our presumption of how the HW might
work.
> 
> do you have any updated ickle/dif branch available?

Will do.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
