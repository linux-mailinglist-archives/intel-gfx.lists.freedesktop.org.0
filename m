Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F1215A961
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 13:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA0F6EA9A;
	Wed, 12 Feb 2020 12:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A086EA9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 12:45:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 04:45:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380754395"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 12 Feb 2020 04:45:25 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1C57C5C0D19; Wed, 12 Feb 2020 14:44:26 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
References: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
Date: Wed, 12 Feb 2020 14:44:26 +0200
Message-ID: <87v9oc7z6d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Expand bad CS completion event
 debug
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

> Show the ring/request/context state if we see what we believe is an
> early CS completion.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_context.c |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 31 +++++++++++++++++++++++--
>  2 files changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 57e8a051ddc2..e4f89341d17c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -116,7 +116,8 @@ int __intel_context_do_pin(struct intel_context *ce)
>  		if (unlikely(err))
>  			goto err_active;
>  
> -		CE_TRACE(ce, "pin ring:{head:%04x, tail:%04x}\n",
> +		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
> +			 i915_ggtt_offset(ce->ring->vma),
>  			 ce->ring->head, ce->ring->tail);
>  
>  		smp_mb__before_atomic(); /* flush pin before it is visible */
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 902d440ef07d..1e3db37dea2b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2328,8 +2328,35 @@ static void process_csb(struct intel_engine_cs *engine)
>  			 * coherent (visible from the CPU) before the
>  			 * user interrupt and CSB is processed.
>  			 */
> -			GEM_BUG_ON(!i915_request_completed(*execlists->active) &&
> -				   !reset_in_progress(execlists));
> +			if (GEM_SHOW_DEBUG() &&
> +			    !i915_request_completed(*execlists->active) &&
> +			    !reset_in_progress(execlists)) {
> +				struct i915_request *rq = *execlists->active;
> +				const u32 *regs = rq->context->lrc_reg_state;
> +
> +				ENGINE_TRACE(engine,
> +					     "ring:{start:0x%08x, head:%04x, tail:%04x, ctl:%08x, mode:%08x}\n",
> +					     ENGINE_READ(engine, RING_START),
> +					     ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR,
> +					     ENGINE_READ(engine, RING_TAIL) & TAIL_ADDR,
> +					     ENGINE_READ(engine, RING_CTL),
> +					     ENGINE_READ(engine, RING_MI_MODE));
> +				ENGINE_TRACE(engine,
> +					     "rq:{start:%08x, head:%04x, tail:%04x, seqno:%llx:%d, hwsp:%d}, ",
> +					     i915_ggtt_offset(rq->ring->vma),
> +					     rq->head, rq->tail,
> +					     rq->fence.context,
> +					     lower_32_bits(rq->fence.seqno),
> +					     hwsp_seqno(rq));
> +				ENGINE_TRACE(engine,
> +					     "ctx:{start:%08x, head:%04x, tail:%04x}, ",
> +					     regs[CTX_RING_START],
> +					     regs[CTX_RING_HEAD],
> +					     regs[CTX_RING_TAIL]);
> +
> +				GEM_BUG_ON("context completed before request");
> +			}
> +
>  			execlists_schedule_out(*execlists->active++);
>  
>  			GEM_BUG_ON(execlists->active - execlists->inflight >
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
