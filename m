Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1643917E451
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751D76E4A5;
	Mon,  9 Mar 2020 16:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE436E4A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 16:10:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 09:10:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="288726696"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2020 09:10:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2C1C15C1DD1; Mon,  9 Mar 2020 18:09:16 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200309110934.868-2-chris@chris-wilson.co.uk>
References: <20200309110934.868-1-chris@chris-wilson.co.uk>
 <20200309110934.868-2-chris@chris-wilson.co.uk>
Date: Mon, 09 Mar 2020 18:09:16 +0200
Message-ID: <87blp533yr.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Mark up racy check of last
 list element
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

> [   25.025543] BUG: KCSAN: data-race in __i915_request_create [i915] / process_csb [i915]
> [   25.025561]
> [   25.025573] write (marked) to 0xffff8881e85c1620 of 8 bytes by task 696 on cpu 1:
> [   25.025789]  __i915_request_create+0x54b/0x5d0 [i915]
> [   25.026001]  i915_request_create+0xcc/0x150 [i915]
> [   25.026218]  i915_gem_do_execbuffer+0x2f70/0x4c20 [i915]
> [   25.026428]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
> [   25.026445]  drm_ioctl_kernel+0xe4/0x120
> [   25.026459]  drm_ioctl+0x297/0x4c7
> [   25.026472]  ksys_ioctl+0x89/0xb0
> [   25.026484]  __x64_sys_ioctl+0x42/0x60
> [   25.026497]  do_syscall_64+0x6e/0x2c0
> [   25.026510]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   25.026522]
> [   25.026532] read to 0xffff8881e85c1620 of 8 bytes by interrupt on cpu 2:
> [   25.026742]  process_csb+0x8d6/0x1070 [i915]
> [   25.026949]  execlists_submission_tasklet+0x30/0x170 [i915]
> [   25.026969]  tasklet_action_common.isra.0+0x42/0xa0
> [   25.026984]  __do_softirq+0xd7/0x2cd
> [   25.026997]  irq_exit+0xbe/0xe0
> [   25.027009]  do_IRQ+0x51/0x100
> [   25.027021]  ret_from_intr+0x0/0x1c
> [   25.027033]  poll_idle+0x3e/0x13b
> [   25.027047]  cpuidle_enter_state+0x189/0x5d0
> [   25.027060]  cpuidle_enter+0x50/0x90
> [   25.027074]  do_idle+0x1a1/0x1f0
> [   25.027086]  cpu_startup_entry+0x14/0x16
> [   25.027100]  start_secondary+0x120/0x180
> [   25.027116]  secondary_startup_64+0xa4/0xb0
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>  drivers/gpu/drm/i915/i915_utils.h   | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a1d268880cfe..6266ef2ae6a0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1316,7 +1316,7 @@ __execlists_schedule_out(struct i915_request *rq,
>  	 * If we have just completed this context, the engine may now be
>  	 * idle and we want to re-enter powersaving.
>  	 */
> -	if (list_is_last(&rq->link, &ce->timeline->requests) &&
> +	if (list_is_last_rcu(&rq->link, &ce->timeline->requests) &&
>  	    i915_request_completed(rq))
>  		intel_engine_add_retire(engine, ce->timeline);
>  
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 26f3a4a50b40..03a73d2bd50d 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -260,6 +260,12 @@ static inline void __list_del_many(struct list_head *head,
>  	WRITE_ONCE(head->next, first);
>  }
>  
> +static inline int list_is_last_rcu(const struct list_head *list,
> +				   const struct list_head *head)
> +{
> +	return READ_ONCE(list->next) == head;
> +}
> +
>  /*
>   * Wait until the work is finally complete, even if it tries to postpone
>   * by requeueing itself. Note, that if the worker never cancels itself,
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
