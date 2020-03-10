Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4199F17F559
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 11:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA576E876;
	Tue, 10 Mar 2020 10:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12AB16E872
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 10:48:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20506715-1500050 for multiple; Tue, 10 Mar 2020 10:48:23 +0000
MIME-Version: 1.0
In-Reply-To: <20200310101720.9944-1-chris@chris-wilson.co.uk>
References: <20200310101720.9944-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158383730254.16414.15062160607111788867@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 10:48:22 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Defer semaphore priority bumping
 to a workqueue
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

Quoting Chris Wilson (2020-03-10 10:17:20)
> Since the semaphore fence may be signaled from inside an interrupt
> handler from inside a request holding its request->lock, we cannot then
> enter into the engine->active.lock for processing the semaphore priority
> bump as we may traverse our call tree and end up on another held
> request.
> 
> CPU 0:
> [ 2243.218864]  _raw_spin_lock_irqsave+0x9a/0xb0
> [ 2243.218867]  i915_schedule_bump_priority+0x49/0x80 [i915]
> [ 2243.218869]  semaphore_notify+0x6d/0x98 [i915]
> [ 2243.218871]  __i915_sw_fence_complete+0x61/0x420 [i915]
> [ 2243.218874]  ? kmem_cache_free+0x211/0x290
> [ 2243.218876]  i915_sw_fence_complete+0x58/0x80 [i915]
> [ 2243.218879]  dma_i915_sw_fence_wake+0x3e/0x80 [i915]
> [ 2243.218881]  signal_irq_work+0x571/0x690 [i915]
> [ 2243.218883]  irq_work_run_list+0xd7/0x120
> [ 2243.218885]  irq_work_run+0x1d/0x50
> [ 2243.218887]  smp_irq_work_interrupt+0x21/0x30
> [ 2243.218889]  irq_work_interrupt+0xf/0x20
> 
> CPU 1:
> [ 2242.173107]  _raw_spin_lock+0x8f/0xa0
> [ 2242.173110]  __i915_request_submit+0x64/0x4a0 [i915]
> [ 2242.173112]  __execlists_submission_tasklet+0x8ee/0x2120 [i915]
> [ 2242.173114]  ? i915_sched_lookup_priolist+0x1e3/0x2b0 [i915]
> [ 2242.173117]  execlists_submit_request+0x2e8/0x2f0 [i915]
> [ 2242.173119]  submit_notify+0x8f/0xc0 [i915]
> [ 2242.173121]  __i915_sw_fence_complete+0x61/0x420 [i915]
> [ 2242.173124]  ? _raw_spin_unlock_irqrestore+0x39/0x40
> [ 2242.173137]  i915_sw_fence_complete+0x58/0x80 [i915]
> [ 2242.173140]  i915_sw_fence_commit+0x16/0x20 [i915]
> 
> CPU 2:
> [ 2242.173107]  _raw_spin_lock+0x8f/0xa0
> [ 2242.173110]  __i915_request_submit+0x64/0x4a0 [i915]
> [ 2242.173112]  __execlists_submission_tasklet+0x8ee/0x2120 [i915]
> [ 2242.173114]  ? i915_sched_lookup_priolist+0x1e3/0x2b0 [i915]
> [ 2242.173117]  execlists_submit_request+0x2e8/0x2f0 [i915]
> [ 2242.173119]  submit_notify+0x8f/0xc0 [i915]

Ignore this, I thought this was a third interesting chunk, but I copied
the same one twice.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
