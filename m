Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6630B1B7B1D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B2F6EABD;
	Fri, 24 Apr 2020 16:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35876EABD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:08:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21010694-1500050 for multiple; Fri, 24 Apr 2020 17:08:53 +0100
MIME-Version: 1.0
In-Reply-To: <20200424160150.19704-2-mika.kuoppala@linux.intel.com>
References: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
 <20200424160150.19704-2-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158774453295.27391.17775546101922382606@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 24 Apr 2020 17:08:52 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add per ctx batchbuffer wa
 for timestamp
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

Quoting Mika Kuoppala (2020-04-24 17:01:48)
> Restoration of a previous timestamp can collide
> with updating the timestamp, causing a value corruption.
> 
> Combat this issue by using indirect ctx bb to
> modify the context image during restoring process.
> 
> We can preload value into scratch register. From which
> we then do the actual write with LRR. LRR is faster and
> thus less error prone as probability of race drops.
> 
> v2: tidying (Chris)
> v3: lrr for all engines
> v4: grp
> 
> References: HSDES#16010904313
> Testcase: igt/i915_selftest/gt_lrc
> Suggested-by: Joseph Koston <joseph.koston@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   3 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 158 +++++++++++++++---
>  3 files changed, 144 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 07cb83a0d017..c7573d565f58 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -70,6 +70,9 @@ struct intel_context {
>  
>         u32 *lrc_reg_state;
>         u64 lrc_desc;
> +
> +       u32 ctx_bb_offset;
> +
>         u32 tag; /* cookie passed to HW to track this context on submission */
>  
>         /* Time on GPU as tracked by the hw. */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index f04214a54f75..5a04a83bca71 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -138,7 +138,7 @@
>   */
>  #define MI_LOAD_REGISTER_IMM(x)        MI_INSTR(0x22, 2*(x)-1)
>  /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
> -#define   MI_LRI_CS_MMIO               (1<<19)
> +#define   MI_LRI_LRM_CS_MMIO           BIT(19)

We're using REG_BIT() for the fixed size value.

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
