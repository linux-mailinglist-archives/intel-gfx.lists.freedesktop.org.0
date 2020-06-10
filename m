Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA8D1F5677
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 16:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1356E5A0;
	Wed, 10 Jun 2020 14:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FAD46E5A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 14:04:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21454376-1500050 for multiple; Wed, 10 Jun 2020 15:03:58 +0100
MIME-Version: 1.0
In-Reply-To: <bf5c088a-731a-7bc4-ff90-492f18e55045@intel.com>
References: <20200609122856.10207-1-chris@chris-wilson.co.uk>
 <20200609151723.12971-1-chris@chris-wilson.co.uk>
 <bf5c088a-731a-7bc4-ff90-492f18e55045@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chang, Bruce" <yu.bruce.chang@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <159179783861.19008.3331899086436292993@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 10 Jun 2020 15:03:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Incrementally check for
 rewinding
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chang, Bruce (2020-06-10 05:25:39)
> On 6/9/2020 8:17 AM, Chris Wilson wrote:
> > In commit 5ba32c7be81e ("drm/i915/execlists: Always force a context
> > reload when rewinding RING_TAIL"), we placed the check for rewinding a
> > context on actually submitting the next request in that context. This
> > was so that we only had to check once, and could do so with precision
> > avoiding as many forced restores as possible. For example, to ensure
> > that we can resubmit the same request a couple of times, we include a
> > small wa_tail such that on the next submission, the ring->tail will
> > appear to move forwards when resubmitting the same request. This is very
> > common as it will happen for every lite-restore to fill the second port
> > after a context switch.
> >
> > However, intel_ring_direction() is limited in precision to movements of
> > upto half the ring size. The consequence being that if we tried to
> > unwind many requests, we could exceed half the ring and flip the sense
> > of the direction, so missing a force restore. As no request can be
> > greater than half the ring (i.e. 2048 bytes in the smallest case), we
> > can check for rollback incrementally. As we check against the tail that
> > would be submitted, we do not lose any sensitivity and allow lite
> > restores for the simple case. We still need to double check upon
> > submitting the context, to allow for multiple preemptions and
> > resubmissions.
> >
> > Fixes: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: <stable@vger.kernel.org> # v5.4+
> 
> Verified this has fixed the issue regarding the GPU hang with incomplete 
> error state.

But it does not entirely... tgl b0 still has the issue of a lite restore
being processed while it is doing an [implicit] semaphore wait at just
the wrong time, dies (or something that looks suspiciously like that).
That can be reproduced without any preemption rollback, so I suspect a
placebo effect.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
