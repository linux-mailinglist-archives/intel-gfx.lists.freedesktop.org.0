Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB86F21FE83
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB2D6E860;
	Tue, 14 Jul 2020 20:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8D66E860
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 20:24:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21820185-1500050 for multiple; Tue, 14 Jul 2020 21:24:37 +0100
MIME-Version: 1.0
In-Reply-To: <20200714201002.GA37629@orsosgc001.amr.corp.intel.com>
References: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
 <20200714072239.70198-2-umesh.nerlige.ramappa@intel.com>
 <159472609506.28577.3725857994649902167@build.alporthouse.com>
 <20200714201002.GA37629@orsosgc001.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Tue, 14 Jul 2020 21:24:35 +0100
Message-ID: <159475827581.3188.10696809304558219974@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/perf: Map OA buffer to user
 space
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

Quoting Umesh Nerlige Ramappa (2020-07-14 21:10:02)
> On Tue, Jul 14, 2020 at 12:28:15PM +0100, Chris Wilson wrote:
> >Quoting Umesh Nerlige Ramappa (2020-07-14 08:22:39)
> >> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> >>
> >> i915 used to support time based sampling mode which is good for overall
> >> system monitoring, but is not enough for query mode used to measure a
> >> single draw call or dispatch. Gen9-Gen11 are using current i915 perf
> >> implementation for query, but Gen12+ requires a new approach based on
> >> triggered reports within oa buffer. In order to enable above feature
> >> two changes are required:
> >>
> >> 1. Whitelist update:
> >> - enable triggered reports within oa buffer
> >> - reading oa buffer head/tail/status information
> >> - reading gpu ticks counter.
> >>
> >> 2. Map oa buffer at umd driver level to solve below constraints related
> >>    to time based sampling interface:
> >> - longer time to access reports collected by oa buffer
> >
> >If you aren't talking about a few 10us, then something else is wrong.
> >
> >> - slow oa reports browsing since oa buffer size is large
> >
> >Nothing changes on the surface. That does not sound like inherent
> >inefficiencies. Since the same number of events will be generated and
> >need to be processed. You may argue that they are easier to process in
> >situ, and that the number of events dwarf L1 cache. An mmap interface
> >could eliminate one copy (and certainly a copy-to-user).
> >
> >> - missing oa report index, so query cannot browse report directly
> >
> >There's more to it than that otherwise you would have proposed an
> >extension to the event format.
> >
> >> - with direct access to oa buffer, query can extract other useful
> >>   reports like context switch information needed to calculate correct
> >>   performance counters values.
> >
> >Why would you not start with an unprivileged mediated mmapped buffer?
> >If the goal is to reduce sample latency by replacing read ioctls with a
> >mmap, that would seem to be an orthogonal step to exposing the raw OA
> >buffer. The inference would be that you do want to extract extra details
> >from the OA that are not being catered for. That's perfectly fine, our
> >goal is to _safely_ expose HW and not get in the way of userspace. But
> >if that was the intent, it should not appear to be an afterthought.
> >[i.e. that mmap should be inherently faster for accessing a large ring
> >of data is much less important than discussing the safety concerns of
> >letting userspace have direct control/access of OA.]
> 
> fwiu
> 
> The goal is mainly being able to quickly view reports of interest within 
> a window in the OA buffer. The start and end of the window are defined 
> by triggered OA reports using the OAREPORTTRIG registers along with some 
> counters that act as markers (A18 - A20).

Ok, that was not apparent from reading. Could you put that usecase to
the front; aiui userspace can read/define a region of interest within
the mmap that correspond to the oareporttrig. In particular describe how
userspace either triggers or responds to the OA and finds the roi.
[Psuedocode for the win.]

That's useful to know why we need this, and some details into the how to
flesh out the interface.

> In initial implementation, the user was trying to maintain a copy of the 
> oa buffer that was being built by reading OA reports from the perf_fd 
> read interface. Using a new ioctl interface that returned HW TAIL, the 
> user would try to index into the window in this buffer. However, the 
> mapping was not 1:1 because perf_fd read would drop reports that are 
> zeroed out or invalid. Added to that, the user buffer was limited by 
> size. This made mapping things to an intermediate user buffer more messy 
> as it would require more information from the driver to do so.
> 
> Hence, the decision was to map the OA buffer to umd provided (1) that it 
> is accessed from a privileged user and (2) OA report filtering is not 
> used. These 2 conditions would satisfy the safety criteria that the 
> perf_fd interface addresses.

It is refreshing to keep the paranoid perf discussions to the front. We
still need to think about whether any new method exposes more
information that was previously available, and if that is safe even for
a privileged user. It's just a matter of writing down the details and
making sure we are happy we've hooked up the protections. And in the
code, we want comments as to why.

It's just a matter of recording the details for due diligence. And you
never know, we might just uncover something horrid.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
