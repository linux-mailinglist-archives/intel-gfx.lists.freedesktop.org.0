Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A61180145
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BF089CD4;
	Tue, 10 Mar 2020 15:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08E389CD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:11:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:11:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="234376386"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2020 08:11:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A70BB5C1DD2; Tue, 10 Mar 2020 17:01:15 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200310141320.24149-1-chris@chris-wilson.co.uk>
References: <20200310141320.24149-1-chris@chris-wilson.co.uk>
Date: Tue, 10 Mar 2020 17:01:15 +0200
Message-ID: <87tv2w1cg4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Mark up racy reads for
 intel_context.inflight
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

> When being used across multiple real engines inside a virtual engine,
> the intel_context.inflight is updated atomically, and so we must
> annotate the racy read from outside the owning context.
>
> [11142.482846] BUG: KCSAN: data-race in __execlists_submission_tasklet [i915] / __execlists_submission_tasklet [i915]
> [11142.482867]
> [11142.482878] write (marked) to 0xffff8881f257b5e0 of 8 bytes by interrupt on cpu 2:
> [11142.483107]  __execlists_submission_tasklet+0x1d33/0x2120 [i915]
> [11142.483336]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [11142.483355]  tasklet_action_common.isra.0+0x42/0xa0
> [11142.483371]  __do_softirq+0xd7/0x2cd
> [11142.483384]  irq_exit+0xbe/0xe0
> [11142.483401]  do_IRQ+0x51/0x100
> [11142.483424]  ret_from_intr+0x0/0x1c
> [11142.483446]  do_idle+0x133/0x1f0
> [11142.483465]  cpu_startup_entry+0x14/0x16
> [11142.483483]  start_secondary+0x120/0x180
> [11142.483498]  secondary_startup_64+0xa4/0xb0
> [11142.483512]
> [11142.483528] read to 0xffff8881f257b5e0 of 8 bytes by interrupt on cpu 1:
> [11142.483755]  __execlists_submission_tasklet+0x14e/0x2120 [i915]
> [11142.483981]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [11142.483999]  tasklet_action_common.isra.0+0x42/0xa0
> [11142.484014]  __do_softirq+0xd7/0x2cd
> [11142.484028]  do_softirq_own_stack+0x2a/0x40
> [11142.484046]  do_softirq.part.0+0x26/0x30
> [11142.484071]  __local_bh_enable_ip+0x46/0x50
> [11142.484299]  i915_gem_do_execbuffer+0x39c1/0x4e50 [i915]
> [11142.484528]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
> [11142.484546]  drm_ioctl_kernel+0xe4/0x120
> [11142.484559]  drm_ioctl+0x297/0x4c7
> [11142.484572]  ksys_ioctl+0x89/0xb0
> [11142.484586]  __x64_sys_ioctl+0x42/0x60
> [11142.484610]  do_syscall_64+0x6e/0x2c0
> [11142.484627]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_context_types.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 11278343b9b5..0f3b68b95c56 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -45,8 +45,8 @@ struct intel_context {
>  
>  	struct intel_engine_cs *engine;
>  	struct intel_engine_cs *inflight;
> -#define intel_context_inflight(ce) ptr_mask_bits((ce)->inflight, 2)
> -#define intel_context_inflight_count(ce) ptr_unmask_bits((ce)->inflight, 2)
> +#define intel_context_inflight(ce) ptr_mask_bits(READ_ONCE((ce)->inflight), 2)
> +#define intel_context_inflight_count(ce) ptr_unmask_bits(READ_ONCE((ce)->inflight), 2)
>  
>  	struct i915_address_space *vm;
>  	struct i915_gem_context __rcu *gem_context;
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
