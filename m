Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0EE1F3EFE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 17:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F176D6E123;
	Tue,  9 Jun 2020 15:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358286E123
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 15:15:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21444154-1500050 for multiple; Tue, 09 Jun 2020 16:15:29 +0100
MIME-Version: 1.0
In-Reply-To: <20200609122856.10207-1-chris@chris-wilson.co.uk>
References: <20200609122856.10207-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159171572885.24308.5160778009299838490@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 09 Jun 2020 16:15:28 +0100
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

Quoting Chris Wilson (2020-06-09 13:28:56)
> In commit 5ba32c7be81e ("drm/i915/execlists: Always force a context
> reload when rewinding RING_TAIL"), we placed the check for rewinding a
> context on actually submitting the next request in that context. This
> was so that we only had to check once, and could do so with precision
> avoiding as many forced restores as possible. For example, to ensure
> that we can resubmit the same request a couple of times, we include a
> small wa_tail such that on the next submission, the ring->tail will
> appear to move forwards when resubmitting the same request. This is very
> common as it will happen for every lite-restore to fill the second port
> after a context switch.
> 
> However, intel_ring_direction() is limited in precision to movements of
> upto half the ring size. The consequence being that if we tried to
> unwind many requests, we could exceed half the ring and flip the sense
> of the direction, so missing a force restore. As no request can be
> greater than half the ring (i.e. 2048 bytes in the smallest case), we
> can check for rollback incrementally. As we check against the tail that
> would be submitted, we do not lose any sensitivity and allow lite
> restores for the simple case. We still need to double check upon
> submitting the context, to allow for multiple preemptions and
> resubmissions.
> 
> Fixes: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  21 +++-
>  drivers/gpu/drm/i915/gt/intel_ring.c          |   4 +
>  drivers/gpu/drm/i915/gt/selftest_mocs.c       |  18 ++-
>  drivers/gpu/drm/i915/gt/selftest_ring.c       | 110 ++++++++++++++++++
>  .../drm/i915/selftests/i915_mock_selftests.h  |   1 +
>  6 files changed, 154 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/selftest_ring.c
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index e5141a897786..0a05301e00fb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -646,7 +646,7 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>  struct measure_breadcrumb {
>         struct i915_request rq;
>         struct intel_ring ring;
> -       u32 cs[1024];
> +       u32 cs[2048];
>  };
>  
>  static int measure_breadcrumb_dw(struct intel_context *ce)
> @@ -667,6 +667,8 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
>  
>         frame->ring.vaddr = frame->cs;
>         frame->ring.size = sizeof(frame->cs);
> +       frame->ring.wrap =
> +               BITS_PER_TYPE(frame->ring.size) - ilog2(frame->ring.size);
>         frame->ring.effective_size = frame->ring.size;
>         intel_ring_update_space(&frame->ring);
>         frame->rq.ring = &frame->ring;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a057f7a2a521..f66274e60bb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1137,6 +1137,13 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>                         list_move(&rq->sched.link, pl);
>                         set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>  
> +                       /* Check for rollback incrementally */
> +                       if (intel_ring_direction(rq->ring,
> +                                                intel_ring_wrap(rq->ring,
> +                                                                rq->tail),
> +                                                rq->ring->tail) <= 0)
> +                               rq->context->lrc.desc |= CTX_DESC_FORCE_RESTORE;

We could be a bit more cheeky in that the problem only occurs if we
rollback far enough that there is a danger is mistaking the rollback for
a forward update.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
