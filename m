Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A34E13122B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 13:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8FE6E203;
	Mon,  6 Jan 2020 12:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8336E203
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 12:31:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19784041-1500050 for multiple; Mon, 06 Jan 2020 12:31:28 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200106112126.2515523-2-chris@chris-wilson.co.uk>
References: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
 <20200106112126.2515523-2-chris@chris-wilson.co.uk>
Message-ID: <157831388591.11773.3882885389498992524@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 06 Jan 2020 12:31:25 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Yield the timeslice if
 waiting on a semaphore
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-06 11:21:26)
> If we find ourselves waiting on a MI_SEMAPHORE_WAIT, either within the
> user batch or in our own preamble, the engine raises a
> GT_WAIT_ON_SEMAPHORE interrupt. We can unmask that interrupt and so
> respond to a semaphore wait by yielding the timeslice (if we have
> another process to yield to!)
> 
> The only real complication is that the interrupt is only generated for
> the start of the semaphore wait, and is asynchronous to our
> process_csb() -- that is we may not have registered the timeslice before
> we see the interrupt. To ensure we don't miss a potential semaphore
> (e.g. selftests/live_timeslice_preempt) we mark the interrupt and apply
> it to the next timeslice regardless of whether it was active at the
> time.

Sigh. Preempt-to-busy uses a semaphore so if we do have multiple
contexts to slice amongst, we keep on switching as we charge the
preempt-to-busy semaphore against the next.

Left in a bit of dilemma, we can excuse the preempt-to-busy, but then we
are liable to miss a genuine stall (e.g. live_timeslice_preempt).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
