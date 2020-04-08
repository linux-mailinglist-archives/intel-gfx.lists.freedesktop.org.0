Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1DF1A1FC6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E75E6E0CA;
	Wed,  8 Apr 2020 11:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6A56E0CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:24:04 +0000 (UTC)
IronPort-SDR: aZ1ko3CMX86dEiFG3YZDzT8TIJU37FCkzvcyd+/08XW6iEmDV3pljx0azWW5/FWMppaeawGEi/
 pBCPoDCXkS5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 04:23:53 -0700
IronPort-SDR: mv6upkoO5StkrFFtabOrf2GrlWMJ2OEZZlWbS32MmsqKGv4bIXM2yhZr/Vxjxd3VFzKUm/B7eQ
 rXs7o+PZCq7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="425105924"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 08 Apr 2020 04:23:52 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4D5AE5C0D80; Wed,  8 Apr 2020 14:22:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200408092916.5355-1-chris@chris-wilson.co.uk>
References: <20200408092916.5355-1-chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 14:22:08 +0300
Message-ID: <87o8s2nrxb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark up racy check of
 breadcrumb irq enabled
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We control b->irq_enabled inside the b->irq_lock, but we check before
> entering the spinlock whether or not the interrupt is currently
> unmasked.
>
> [ 1511.735208] BUG: KCSAN: data-race in __intel_breadcrumbs_disarm_irq [i915] / intel_engine_disarm_breadcrumbs [i915]
> [ 1511.735231]
> [ 1511.735242] write to 0xffff8881f75fc214 of 1 bytes by interrupt on cpu 2:
> [ 1511.735440]  __intel_breadcrumbs_disarm_irq+0x4b/0x160 [i915]
> [ 1511.735635]  signal_irq_work+0x337/0x710 [i915]
> [ 1511.735652]  irq_work_run_list+0xd7/0x110
> [ 1511.735666]  irq_work_run+0x1d/0x50
> [ 1511.735681]  smp_irq_work_interrupt+0x21/0x30
> [ 1511.735701]  irq_work_interrupt+0xf/0x20
> [ 1511.735722]  __do_softirq+0x6f/0x206
> [ 1511.735736]  irq_exit+0xcd/0xe0
> [ 1511.735756]  do_IRQ+0x44/0xc0
> [ 1511.735773]  ret_from_intr+0x0/0x1c
> [ 1511.735787]  schedule+0x0/0xb0
> [ 1511.735803]  worker_thread+0x194/0x670
> [ 1511.735823]  kthread+0x19a/0x1e0
> [ 1511.735837]  ret_from_fork+0x1f/0x30
> [ 1511.735848]
> [ 1511.735867] read to 0xffff8881f75fc214 of 1 bytes by task 432 on cpu 1:
> [ 1511.736068]  intel_engine_disarm_breadcrumbs+0x22/0x80 [i915]
> [ 1511.736263]  __engine_park+0x107/0x5d0 [i915]
> [ 1511.736453]  ____intel_wakeref_put_last+0x44/0x90 [i915]
> [ 1511.736648]  __intel_wakeref_put_last+0x5a/0x70 [i915]
> [ 1511.736842]  intel_context_exit_engine+0xf2/0x100 [i915]
> [ 1511.737044]  i915_request_retire+0x6b2/0x770 [i915]
> [ 1511.737244]  retire_requests+0x7a/0xd0 [i915]
> [ 1511.737438]  intel_gt_retire_requests_timeout+0x3a7/0x6f0 [i915]
> [ 1511.737633]  i915_drop_caches_set+0x1e7/0x260 [i915]
> [ 1511.737650]  simple_attr_write+0xfa/0x110
> [ 1511.737665]  full_proxy_write+0x94/0xc0
> [ 1511.737679]  __vfs_write+0x4b/0x90
> [ 1511.737697]  vfs_write+0xfc/0x280
> [ 1511.737718]  ksys_write+0x78/0x100
> [ 1511.737732]  __x64_sys_write+0x44/0x60
> [ 1511.737751]  do_syscall_64+0x6e/0x2c0
> [ 1511.737769]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

On these parts, avoiding the cost of spinlock
is warranted.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index cbad7fe722ce..cbedba857d43 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -64,7 +64,7 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>  	if (!--b->irq_enabled)
>  		irq_disable(engine);
>  
> -	b->irq_armed = false;
> +	WRITE_ONCE(b->irq_armed, false);
>  	intel_gt_pm_put_async(engine->gt);
>  }
>  
> @@ -73,7 +73,7 @@ void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine)
>  	struct intel_breadcrumbs *b = &engine->breadcrumbs;
>  	unsigned long flags;
>  
> -	if (!b->irq_armed)
> +	if (!READ_ONCE(b->irq_armed))
>  		return;
>  
>  	spin_lock_irqsave(&b->irq_lock, flags);
> @@ -233,7 +233,7 @@ static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
>  	 * which we can add a new waiter and avoid the cost of re-enabling
>  	 * the irq.
>  	 */
> -	b->irq_armed = true;
> +	WRITE_ONCE(b->irq_armed, true);
>  
>  	/*
>  	 * Since we are waiting on a request, the GPU should be busy
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
