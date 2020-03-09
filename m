Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B46517E41D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 16:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CFE6E05C;
	Mon,  9 Mar 2020 15:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8946E05C
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 15:56:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20497320-1500050 for multiple; Mon, 09 Mar 2020 15:56:43 +0000
MIME-Version: 1.0
In-Reply-To: <87k13t36wm.fsf@gaia.fi.intel.com>
References: <20200309132726.28358-1-chris@chris-wilson.co.uk>
 <87k13t36wm.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158376940191.4769.7377263515099040413@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 09 Mar 2020 15:56:41 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark racy read of
 intel_engine_cs.saturated
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

Quoting Mika Kuoppala (2020-03-09 15:05:45)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > [ 3783.276728] BUG: KCSAN: data-race in __i915_request_submit [i915] / i915_request_await_dma_fence [i915]
> > [ 3783.276766]
> > [ 3783.276787] write to 0xffff8881f1bc60a0 of 1 bytes by interrupt on cpu 2:
> > [ 3783.277187]  __i915_request_submit+0x47e/0x4a0 [i915]
> > [ 3783.277580]  __execlists_submission_tasklet+0x997/0x2780 [i915]
> > [ 3783.277973]  execlists_submission_tasklet+0xd3/0x170 [i915]
> > [ 3783.278006]  tasklet_action_common.isra.0+0x42/0xa0
> > [ 3783.278035]  __do_softirq+0xd7/0x2cd
> > [ 3783.278063]  irq_exit+0xbe/0xe0
> > [ 3783.278089]  do_IRQ+0x51/0x100
> > [ 3783.278114]  ret_from_intr+0x0/0x1c
> > [ 3783.278140]  finish_task_switch+0x72/0x260
> > [ 3783.278170]  __schedule+0x1e5/0x510
> > [ 3783.278198]  schedule+0x45/0xb0
> > [ 3783.278226]  smpboot_thread_fn+0x23e/0x300
> > [ 3783.278256]  kthread+0x19a/0x1e0
> > [ 3783.278283]  ret_from_fork+0x1f/0x30
> > [ 3783.278305]
> > [ 3783.278327] read to 0xffff8881f1bc60a0 of 1 bytes by task 19440 on cpu 3:
> > [ 3783.278724]  i915_request_await_dma_fence+0x2a6/0x530 [i915]
> > [ 3783.279130]  i915_request_await_object+0x2fe/0x470 [i915]
> > [ 3783.279524]  i915_gem_do_execbuffer+0x45dc/0x4c20 [i915]
> > [ 3783.279908]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
> > [ 3783.279940]  drm_ioctl_kernel+0xe4/0x120
> > [ 3783.279968]  drm_ioctl+0x297/0x4c7
> > [ 3783.279996]  ksys_ioctl+0x89/0xb0
> > [ 3783.280021]  __x64_sys_ioctl+0x42/0x60
> > [ 3783.280047]  do_syscall_64+0x6e/0x2c0
> > [ 3783.280074]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 5de3989b6c4f..04b52bf347bf 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -907,7 +907,7 @@ already_busywaiting(struct i915_request *rq)
> >        *
> >        * See the are-we-too-late? check in __i915_request_submit().
> >        */
> > -     return rq->sched.semaphores | rq->engine->saturated;
> > +     return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);
> 
> This seem to be a one way ticket to saturation (until parking it is).
> Usually there should be the WRITE_ONCE counterpair!
> 
> So now the question is that does it really matter if the race happens.

It's a safety net, to turn off semaphore interengine synchronisation
when fully occupied (polling the semaphore caused noticeable extra bus
traffic).

There's a small disparity in that we do want the switch to be global, as
any process still trying to utilise semaphores is disadvantaged by the
scheduler, which results in unfair scheduling.

However, such transition will always be asynchronous with the work
already queued, with new work being preferred over older queues. :(

I do want to reinstate semaphores as there are measurable performance
improvements (both in throughput as well as obvious latency improvement)
and this safety net spoils the fun.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
