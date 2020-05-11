Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F071CE055
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 18:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1286E049;
	Mon, 11 May 2020 16:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415086E049
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 16:24:24 +0000 (UTC)
IronPort-SDR: jFOHZKJww16oACqILoQaviNOjq7JACbgZ+kKpX3+Ci7Ah2x3SO/KYtdZYhEqHeo7o8sutGhA+3
 XCUcv75XHKGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 09:24:23 -0700
IronPort-SDR: OvrF/zXd4W1J2xddBdkeGtmv9nK2ExlZ5nqS7ADv4PPArtTmHH6sx43ScSppXfcucg8/ebTb1M
 DQZKmb826OCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="408972449"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 11 May 2020 09:24:22 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CE12A5C1DC1; Mon, 11 May 2020 19:22:11 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200510102431.21959-3-chris@chris-wilson.co.uk>
References: <20200510102431.21959-1-chris@chris-wilson.co.uk>
 <20200510102431.21959-3-chris@chris-wilson.co.uk>
Date: Mon, 11 May 2020 19:22:11 +0300
Message-ID: <87o8qu30i4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Restore Cherryview back to
 full-ppgtt
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

> This reverts commit 0b718ba1e884f64dce27c19311dd2859b87e56b9.
>
> There are still some residual issues with asynchronous binding and
> execution, but since commit 92581f9fb99c ("drm/i915: Immediately execute
> the fenced work") we prefer not to use asynchronous binds, and the
> remaining issues do not seem restricted to Cherryview [at least the ones
> seen over a few dozen CI runs, less frequent issues are sure to be
> discovered!]
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 54 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_pci.c     |  2 +-
>  2 files changed, 55 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8e254f639751..b11e8f033774 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3522,6 +3522,54 @@ static int gen8_emit_init_breadcrumb(struct i915_request *rq)
>  	return 0;
>  }
>  
> +static int emit_pdps(struct i915_request *rq)
> +{
> +	const struct intel_engine_cs * const engine = rq->engine;
> +	struct i915_ppgtt * const ppgtt = i915_vm_to_ppgtt(rq->context->vm);
> +	int err, i;
> +	u32 *cs;
> +
> +	GEM_BUG_ON(intel_vgpu_active(rq->i915));
> +
> +	/*
> +	 * Beware ye of the dragons, this sequence is magic!
> +	 *
> +	 * Small changes to this sequence can cause anything from
> +	 * GPU hangs to forcewake errors and machine lockups!
> +	 */
> +
> +	/* Flush any residual operations from the context load */
> +	err = engine->emit_flush(rq, EMIT_FLUSH);
> +	if (err)
> +		return err;
> +
> +	/* Magic required to prevent forcewake errors! */
> +	err = engine->emit_flush(rq, EMIT_INVALIDATE);
> +	if (err)
> +		return err;
> +
> +	cs = intel_ring_begin(rq, 4 * GEN8_3LVL_PDPES + 2);
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	/* Ensure the LRI have landed before we invalidate & continue */
> +	*cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
> +	for (i = GEN8_3LVL_PDPES; i--; ) {
> +		const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);
> +		u32 base = engine->mmio_base;
> +
> +		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, i));
> +		*cs++ = upper_32_bits(pd_daddr);
> +		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
> +		*cs++ = lower_32_bits(pd_daddr);
> +	}
> +	*cs++ = MI_NOOP;
> +
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
>  static int execlists_request_alloc(struct i915_request *request)
>  {
>  	int ret;
> @@ -3543,6 +3591,12 @@ static int execlists_request_alloc(struct i915_request *request)
>  	 * to cancel/unwind this request now.
>  	 */
>  
> +	if (!i915_vm_is_4lvl(request->context->vm)) {
> +		ret = emit_pdps(request);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/* Unconditionally invalidate GPU caches and TLBs. */
>  	ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 1faf9d6ec0a4..eb0b5be7c35d 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -615,7 +615,7 @@ static const struct intel_device_info chv_info = {
>  	.has_logical_ring_contexts = 1,
>  	.display.has_gmch = 1,
>  	.dma_mask_size = 39,
> -	.ppgtt_type = INTEL_PPGTT_ALIASING,
> +	.ppgtt_type = INTEL_PPGTT_FULL,
>  	.ppgtt_size = 32,
>  	.has_reset_engine = 1,
>  	.has_snoop = true,
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
