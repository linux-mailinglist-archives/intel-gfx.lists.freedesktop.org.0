Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8641801DB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6656389D4F;
	Tue, 10 Mar 2020 15:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28B789D77
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:31:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="242355343"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 10 Mar 2020 08:31:03 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3271D5C1DD8; Tue, 10 Mar 2020 17:29:42 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200310142403.5953-1-chris@chris-wilson.co.uk>
References: <20200310141320.24149-2-chris@chris-wilson.co.uk>
 <20200310142403.5953-1-chris@chris-wilson.co.uk>
Date: Tue, 10 Mar 2020 17:29:42 +0200
Message-ID: <87fteg5iu1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Mark up racy read of active
 rq->engine
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> As a virtual engine may change the rq->engine to point to the active
> request in flight, we need to warn the compiler that an active request's
> engine is volatile.
>
> [   95.017686] write (marked) to 0xffff8881e8386b10 of 8 bytes by interrupt on cpu 2:
> [   95.018123]  execlists_dequeue+0x762/0x2150 [i915]
> [   95.018539]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [   95.018955]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [   95.018986]  tasklet_action_common.isra.0+0x42/0xa0
> [   95.019016]  __do_softirq+0xd7/0x2cd
> [   95.019043]  irq_exit+0xbe/0xe0
> [   95.019068]  irq_work_interrupt+0xf/0x20
> [   95.019491]  i915_request_retire+0x2c5/0x670 [i915]
> [   95.019937]  retire_requests+0xa1/0xf0 [i915]
> [   95.020348]  engine_retire+0xa1/0xe0 [i915]
> [   95.020376]  process_one_work+0x3b1/0x690
> [   95.020403]  worker_thread+0x80/0x670
> [   95.020429]  kthread+0x19a/0x1e0
> [   95.020454]  ret_from_fork+0x1f/0x30
> [   95.020476]
> [   95.020498] read to 0xffff8881e8386b10 of 8 bytes by task 8909 on cpu 3:
> [   95.020918]  __i915_request_commit+0x177/0x220 [i915]
> [   95.021329]  i915_gem_do_execbuffer+0x38c4/0x4e50 [i915]
> [   95.021750]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
> [   95.021784]  drm_ioctl_kernel+0xe4/0x120
> [   95.021809]  drm_ioctl+0x297/0x4c7
> [   95.021832]  ksys_ioctl+0x89/0xb0
> [   95.021865]  __x64_sys_ioctl+0x42/0x60
> [   95.021901]  do_syscall_64+0x6e/0x2c0
> [   95.021927]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_request.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 74169671afb5..c0df71d7d0ff 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -977,6 +977,8 @@ emit_semaphore_wait(struct i915_request *to,
>  		    struct i915_request *from,
>  		    gfp_t gfp)
>  {
> +	const intel_engine_mask_t mask = READ_ONCE(from->engine)->mask;
> +
>  	if (!intel_context_use_semaphores(to->context))
>  		goto await_fence;
>  
> @@ -984,7 +986,7 @@ emit_semaphore_wait(struct i915_request *to,
>  		goto await_fence;
>  
>  	/* Just emit the first semaphore we see as request space is limited. */
> -	if (already_busywaiting(to) & from->engine->mask)
> +	if (already_busywaiting(to) & mask)
>  		goto await_fence;
>  
>  	if (i915_request_await_start(to, from) < 0)
> @@ -997,7 +999,7 @@ emit_semaphore_wait(struct i915_request *to,
>  	if (__emit_semaphore_wait(to, from, from->fence.seqno))
>  		goto await_fence;
>  
> -	to->sched.semaphores |= from->engine->mask;
> +	to->sched.semaphores |= mask;
>  	to->sched.flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
>  	return 0;
>  
> @@ -1338,7 +1340,7 @@ __i915_request_add_to_timeline(struct i915_request *rq)
>  			   i915_seqno_passed(prev->fence.seqno,
>  					     rq->fence.seqno));
>  
> -		if (is_power_of_2(prev->engine->mask | rq->engine->mask))
> +		if (is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask))
>  			i915_sw_fence_await_sw_fence(&rq->submit,
>  						     &prev->submit,
>  						     &rq->submitq);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
