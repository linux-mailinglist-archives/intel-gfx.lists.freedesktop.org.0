Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5531432D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 23:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC33A6EA13;
	Mon,  8 Feb 2021 22:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F1D6EA13
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 22:49:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23816648-1500050 for multiple; Mon, 08 Feb 2021 22:49:14 +0000
MIME-Version: 1.0
In-Reply-To: <CAPM=9tzVb=eN84xSY+_q8Cgv7dwidCyh9kr7N411YmM+NhLbNQ@mail.gmail.com>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-30-chris@chris-wilson.co.uk>
 <CAPM=9tzVb=eN84xSY+_q8Cgv7dwidCyh9kr7N411YmM+NhLbNQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dave Airlie <airlied@gmail.com>
Date: Mon, 08 Feb 2021 22:49:14 +0000
Message-ID: <161282455443.9448.4766463343488795484@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 30/31] drm/i915: Support secure dispatch on
 gen6/gen7
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dave Airlie (2021-02-08 20:55:19)
> On Mon, 8 Feb 2021 at 20:53, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Re-enable secure dispatch for gen6/gen7, primarily to workaround the
> > command parser and overly zealous command validation on Haswell. For
> > example this prevents making accurate measurements using a journal for
> > store results from the GPU without CPU intervention.
> 
> There's 31 patches in this series, and I can't find any 00/31 or
> justification for any of this work.

You don't agree with the overview in 11? Or the test design to reproduce
the reported problems with multiple clients?

There's some code motion to align with upstreaming guc patches later on;
a bug fix for an iterative depth-first-search not being a
depth-first-search; the change in sort key for scheduling policy;
switching the late greedy virtual engine to work on the same interface
as execlists/guc; the CS emitters to switch off absolute addressing for
breadcrumbs; and finally request reordering for the ringbuffer.
 
> I see patches like this which seem to undo work done for security
> reasons under CVE patches with no oversight.

Seems to remove clear_residuals? The same clear_residuals between contexts
on gen7 is there.

> Again, the GT team is not doing the right thing here, stop focusing on
> individual pieces of Chris's work, push back for high level
> architectural reviews and I want them on the list in public.

The architectural bit here is the code motion; getting the backend
agnostic list management all into a common layer. Trying to align that
with what drm_sched offers, with the optimistic view that one day
drm_sched may offer enough to start replacing it.

> All I want from the GT team in the next pull request is dma_resv
> locking work and restoring the hangcheck timers that seems like a
> regression that Chris found acceptable and nobody has pushed back on.

The choice here in sort key is still entirely orthogonal to dma-resv. The
hangcheck is still driven off a timer. The behaviour of the current code
is still the same as the much older global seqno hangcheck around
preemption (hangcheck being postponed whenever the seqno changed and/or
RING_START changed). The direction to use periodic pulses for both
issuing resets (which is actually much faster in detecting hangs than the
older seqno hangchecking allowed for), power management and tracking of
GPU resource was not mine alone, but yes I did find it acceptable.

> For like the 500th time, if you want DG1 and stuff in the tree, stop
> this shit already, real reviewers, high-level architectural reviews,
> NAK the bullshit in public on the list.

I do not understand the hostility to fixing user issues, and improving
both existing and future products when it does not interfere with
anything else.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
