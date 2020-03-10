Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E71801FA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CA86E0CE;
	Tue, 10 Mar 2020 15:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FC66E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:36:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="353647770"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2020 08:36:28 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id AB4D55C1DD8; Tue, 10 Mar 2020 17:35:06 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200310141320.24149-3-chris@chris-wilson.co.uk>
References: <20200310141320.24149-1-chris@chris-wilson.co.uk>
 <20200310141320.24149-3-chris@chris-wilson.co.uk>
Date: Tue, 10 Mar 2020 17:35:06 +0200
Message-ID: <87d09k5il1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/execlists: Mark up data-races
 in virtual engines
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

> The virtual engine passes tokens back and forth to its backing physical
> engines.
>
> [   57.372993] BUG: KCSAN: data-race in execlists_dequeue [i915] / virtual_submission_tasklet [i915]
> [   57.373012]
> [   57.373023] write to 0xffff8881f47324c0 of 4 bytes by interrupt on cpu 2:
> [   57.373241]  execlists_dequeue+0x6fa/0x2150 [i915]
> [   57.373458]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [   57.373677]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [   57.373694]  tasklet_action_common.isra.0+0x42/0xa0
> [   57.373709]  __do_softirq+0xd7/0x2cd
> [   57.373723]  irq_exit+0xbe/0xe0
> [   57.373735]  do_IRQ+0x51/0x100
> [   57.373748]  ret_from_intr+0x0/0x1c
> [   57.373963]  engine_retire+0x89/0xe0 [i915]
> [   57.373977]  process_one_work+0x3b1/0x690
> [   57.373990]  worker_thread+0x80/0x670
> [   57.374004]  kthread+0x19a/0x1e0
> [   57.374017]  ret_from_fork+0x1f/0x30
> [   57.374027]
> [   57.374038] read to 0xffff8881f47324c0 of 4 bytes by interrupt on cpu 3:
> [   57.374256]  virtual_submission_tasklet+0x27/0x5a0 [i915]
> [   57.374273]  tasklet_action_common.isra.0+0x42/0xa0
> [   57.374288]  __do_softirq+0xd7/0x2cd
> [   57.374302]  run_ksoftirqd+0x15/0x20
> [   57.374315]  smpboot_thread_fn+0x1ab/0x300
> [   57.374329]  kthread+0x19a/0x1e0
> [   57.374342]  ret_from_fork+0x1f/0x30
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 15b81be08fcc..8122f4bc2e90 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1004,7 +1004,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>  				i915_request_cancel_breadcrumb(rq);
>  				spin_unlock(&rq->lock);
>  			}
> -			rq->engine = owner;
> +			WRITE_ONCE(rq->engine, owner);
>  			owner->submit_request(rq);
>  			active = NULL;
>  		}
> @@ -2023,13 +2023,14 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  				     "",
>  				     yesno(engine != ve->siblings[0]));
>  
> -			ve->request = NULL;
> -			ve->base.execlists.queue_priority_hint = INT_MIN;
> +			WRITE_ONCE(ve->request, NULL);
> +			WRITE_ONCE(ve->base.execlists.queue_priority_hint,
> +				   INT_MIN);
>  			rb_erase_cached(rb, &execlists->virtual);
>  			RB_CLEAR_NODE(rb);
>  
>  			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
> -			rq->engine = engine;
> +			WRITE_ONCE(rq->engine, engine);
>  
>  			if (engine != ve->siblings[0]) {
>  				u32 *regs = ve->context.lrc_reg_state;
> @@ -4934,7 +4935,7 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
>  static void virtual_submission_tasklet(unsigned long data)
>  {
>  	struct virtual_engine * const ve = (struct virtual_engine *)data;
> -	const int prio = ve->base.execlists.queue_priority_hint;
> +	const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
>  	intel_engine_mask_t mask;
>  	unsigned int n;
>  
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
