Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A68241F75CD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 11:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094AF6E879;
	Fri, 12 Jun 2020 09:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A336E879
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:17:34 +0000 (UTC)
IronPort-SDR: JK3UacfL9lyBFkEMSgwAmzJfFuyFekwEdXw9lJ5z0j6erCxrmrxSOHVCZNbxKzQdgWKjgaeby4
 nec9oVPbko/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 02:17:33 -0700
IronPort-SDR: gVjUm7IPcqCIwNX8l01+L8vK1w8Y/Qwt73ZBDZyoBXzsMzylUjPC8fQaCBzvjUeGIvmI/NWBzn
 AQ7VYb//EoQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,502,1583222400"; d="scan'208";a="296892260"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jun 2020 02:17:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5A6975C2C7E; Fri, 12 Jun 2020 12:14:55 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200611160529.9558-1-chris@chris-wilson.co.uk>
References: <20200611160529.9558-1-chris@chris-wilson.co.uk>
Date: Fri, 12 Jun 2020 12:14:55 +0300
Message-ID: <87eeqk8x2o.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Flush gen3 relocs harder, again
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

> gen3 does not fully flush MI stores to memory on MI_FLUSH, such that a
> subsequent read from e.g. the sampler can bypass the store and read the
> stale value from memory. This is a serious issue when we are using MI
> stores to rewrite the batches for relocation, as it means that the batch
> is reading from random user/kernel memory. While it is particularly
> sensitive [and detectable] for relocations, reading stale data at any
> time is a worry.
>
> Having started with a small number of delaying stores and doubling until
> no more incoherency was seen over a few hours (with and without
> background memory pressure), 32 was the magic number.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2018
> References: a889580c087a ("drm/i915: Flush GPU relocs harder for gen3")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
> So gen3 requires a delay after to flush the previous stores, gen5 is
> assuming it requires a delay between the seqno and the
> MI_USER_INTERRUPT. Here I've made gen5 reuse the gen3 approach, but I
> need to verify that it still holds.
> ---
>  drivers/gpu/drm/i915/gt/gen2_engine_cs.c | 39 +++++++++---------------
>  1 file changed, 15 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> index 3fb0dc1fb910..342c476ec872 100644
> --- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
> @@ -142,19 +142,26 @@ int gen4_emit_flush_vcs(struct i915_request *rq, u32 mode)
>  	return 0;
>  }
>  
> -u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +static u32 *__gen2_emit_breadcrumb(struct i915_request *rq, u32 *cs, int count)
>  {
>  	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
>  	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
>  
>  	*cs++ = MI_FLUSH;
> +	*cs++ = MI_NOOP;
> +
> +	while (count--) {
> +		*cs++ = MI_STORE_DWORD_INDEX;
> +		*cs++ = I915_GEM_HWS_SCRATCH * sizeof(u32);
> +		*cs++ = rq->fence.seqno;
> +		*cs++ = MI_FLUSH | MI_NO_WRITE_FLUSH;

Why would you avoid write flush here?
-Mika


> +	}
>  
>  	*cs++ = MI_STORE_DWORD_INDEX;
>  	*cs++ = I915_GEM_HWS_SEQNO_ADDR;
>  	*cs++ = rq->fence.seqno;
>  
>  	*cs++ = MI_USER_INTERRUPT;
> -	*cs++ = MI_NOOP;
>  
>  	rq->tail = intel_ring_offset(rq, cs);
>  	assert_ring_tail_valid(rq->ring, rq->tail);
> @@ -162,31 +169,15 @@ u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
>  	return cs;
>  }
>  
> -#define GEN5_WA_STORES 8 /* must be at least 1! */
> -u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +u32 *gen3_emit_breadcrumb(struct i915_request *rq, u32 *cs)
>  {
> -	int i;
> -
> -	GEM_BUG_ON(i915_request_active_timeline(rq)->hwsp_ggtt != rq->engine->status_page.vma);
> -	GEM_BUG_ON(offset_in_page(i915_request_active_timeline(rq)->hwsp_offset) != I915_GEM_HWS_SEQNO_ADDR);
> -
> -	*cs++ = MI_FLUSH;
> -
> -	BUILD_BUG_ON(GEN5_WA_STORES < 1);
> -	for (i = 0; i < GEN5_WA_STORES; i++) {
> -		*cs++ = MI_STORE_DWORD_INDEX;
> -		*cs++ = I915_GEM_HWS_SEQNO_ADDR;
> -		*cs++ = rq->fence.seqno;
> -	}
> -
> -	*cs++ = MI_USER_INTERRUPT;
> -
> -	rq->tail = intel_ring_offset(rq, cs);
> -	assert_ring_tail_valid(rq->ring, rq->tail);
> +	return __gen2_emit_breadcrumb(rq, cs, 32);
> +}
>  
> -	return cs;
> +u32 *gen5_emit_breadcrumb(struct i915_request *rq, u32 *cs)
> +{
> +	return __gen2_emit_breadcrumb(rq, cs, 8);
>  }
> -#undef GEN5_WA_STORES
>  
>  /* Just userspace ABI convention to limit the wa batch bo to a resonable size */
>  #define I830_BATCH_LIMIT SZ_256K
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
