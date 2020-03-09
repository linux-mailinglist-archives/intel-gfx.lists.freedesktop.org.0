Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BFA17E317
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 16:07:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B1B8982D;
	Mon,  9 Mar 2020 15:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016268982D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 15:07:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 08:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="260442545"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 09 Mar 2020 08:07:06 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CEA925C1DD1; Mon,  9 Mar 2020 17:05:45 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200309132726.28358-1-chris@chris-wilson.co.uk>
References: <20200309132726.28358-1-chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 17:05:45 +0200
Message-ID: <87k13t36wm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> [ 3783.276728] BUG: KCSAN: data-race in __i915_request_submit [i915] / i915_request_await_dma_fence [i915]
> [ 3783.276766]
> [ 3783.276787] write to 0xffff8881f1bc60a0 of 1 bytes by interrupt on cpu 2:
> [ 3783.277187]  __i915_request_submit+0x47e/0x4a0 [i915]
> [ 3783.277580]  __execlists_submission_tasklet+0x997/0x2780 [i915]
> [ 3783.277973]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [ 3783.278006]  tasklet_action_common.isra.0+0x42/0xa0
> [ 3783.278035]  __do_softirq+0xd7/0x2cd
> [ 3783.278063]  irq_exit+0xbe/0xe0
> [ 3783.278089]  do_IRQ+0x51/0x100
> [ 3783.278114]  ret_from_intr+0x0/0x1c
> [ 3783.278140]  finish_task_switch+0x72/0x260
> [ 3783.278170]  __schedule+0x1e5/0x510
> [ 3783.278198]  schedule+0x45/0xb0
> [ 3783.278226]  smpboot_thread_fn+0x23e/0x300
> [ 3783.278256]  kthread+0x19a/0x1e0
> [ 3783.278283]  ret_from_fork+0x1f/0x30
> [ 3783.278305]
> [ 3783.278327] read to 0xffff8881f1bc60a0 of 1 bytes by task 19440 on cpu 3:
> [ 3783.278724]  i915_request_await_dma_fence+0x2a6/0x530 [i915]
> [ 3783.279130]  i915_request_await_object+0x2fe/0x470 [i915]
> [ 3783.279524]  i915_gem_do_execbuffer+0x45dc/0x4c20 [i915]
> [ 3783.279908]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
> [ 3783.279940]  drm_ioctl_kernel+0xe4/0x120
> [ 3783.279968]  drm_ioctl+0x297/0x4c7
> [ 3783.279996]  ksys_ioctl+0x89/0xb0
> [ 3783.280021]  __x64_sys_ioctl+0x42/0x60
> [ 3783.280047]  do_syscall_64+0x6e/0x2c0
> [ 3783.280074]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 5de3989b6c4f..04b52bf347bf 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -907,7 +907,7 @@ already_busywaiting(struct i915_request *rq)
>  	 *
>  	 * See the are-we-too-late? check in __i915_request_submit().
>  	 */
> -	return rq->sched.semaphores | rq->engine->saturated;
> +	return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);

This seem to be a one way ticket to saturation (until parking it is).
Usually there should be the WRITE_ONCE counterpair!

So now the question is that does it really matter if the race happens.

As there is no other party at play inside driver and looks of it
we just emit one semaphore extra if we get it wrong,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  }
>  
>  static int
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
