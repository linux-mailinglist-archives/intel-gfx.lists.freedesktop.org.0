Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432F21AEC8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 07:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0946EB65;
	Fri, 10 Jul 2020 05:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F8A6EB65
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 05:35:02 +0000 (UTC)
IronPort-SDR: DNBGpcEJ1wDEaYrctBJ/a1yHj02/nVFDi29bRqhqkBFtnCnKH7tq+jaDAdbsEgnwgjTupvm8mt
 +l9wAIC76uJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="213042485"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="213042485"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 22:35:01 -0700
IronPort-SDR: Hdq+CgGOd8nWcU7iEJRcw9mU8J52YHFcfZfkHYpFTsbvVPTyDtXBGp9hdb6yyu2Ws5Gc6XQraT
 Drflq/aSFIjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="484534968"
Received: from hprosing-mobl1.ger.corp.intel.com (HELO [10.252.43.115])
 ([10.252.43.115])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2020 22:35:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200709215331.19994-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8c287f67-629d-585b-ad94-ece5b7e98ffd@intel.com>
Date: Fri, 10 Jul 2020 08:34:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200709215331.19994-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Check that GPR are
 restored across noa_wait
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/07/2020 00:53, Chris Wilson wrote:
> Perf implements a GPU delay (noa_wait) by looping until the CS timestamp
> has passed a certain point. This use MI_MATH and the general purpose
> registers of the user's context, and since it is clobbering the user
> state it must carefully save and restore the user's data around the
> noa_wait. We can verify this by loading some values in the GPR that we
> know will be clobbered the noa_wait, and then inspecting the GPR after
> the noa_wait completes and confirming that have been restored.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks a lot!

-Lionel

> ---
>   drivers/gpu/drm/i915/selftests/i915_perf.c | 124 +++++++++++++++++++++
>   1 file changed, 124 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index be54570c407c..be63cfe82feb 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -280,11 +280,135 @@ static int live_noa_delay(void *arg)
>   	return err;
>   }
>   
> +static int live_noa_gpr(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct i915_perf_stream *stream;
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	u32 *cs, *store;
> +	void *scratch;
> +	u32 gpr0;
> +	int err;
> +	int i;
> +
> +	/* Check that the delay does not clobber user context state (GPR) */
> +
> +	stream = test_stream(&i915->perf);
> +	if (!stream)
> +		return -ENOMEM;
> +
> +	gpr0 = i915_mmio_reg_offset(GEN8_RING_CS_GPR(stream->engine->mmio_base, 0));
> +
> +	ce = intel_context_create(stream->engine);
> +	if (IS_ERR(ce)) {
> +		err = PTR_ERR(ce);
> +		goto out;
> +	}
> +
> +	scratch = kmap(ce->vm->scratch[0].base.page);
> +	memset(scratch, POISON_FREE, PAGE_SIZE);
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto out_ce;
> +	}
> +	i915_request_get(rq);
> +
> +	if (rq->engine->emit_init_breadcrumb) {
> +		err = rq->engine->emit_init_breadcrumb(rq);
> +		if (err) {
> +			i915_request_add(rq);
> +			goto out_rq;
> +		}
> +	}
> +
> +	cs = intel_ring_begin(rq, 2 * 32 + 2);
> +	if (IS_ERR(cs)) {
> +		i915_request_add(rq);
> +		goto out_rq;
> +	}
> +
> +	*cs++ = MI_LOAD_REGISTER_IMM(32);
> +	for (i = 0; i < 32; i++) {
> +		*cs++ = gpr0 + i * sizeof(u32);
> +		*cs++ = STACK_MAGIC;
> +	}
> +	*cs++ = MI_NOOP;
> +	intel_ring_advance(rq, cs);
> +
> +	err = rq->engine->emit_bb_start(rq,
> +					i915_ggtt_offset(stream->noa_wait), 0,
> +					I915_DISPATCH_SECURE);
> +	if (err) {
> +		i915_request_add(rq);
> +		goto out_rq;
> +	}
> +
> +	store = memset32(rq->engine->status_page.addr + 512, 0, 32);
> +	for (i = 0; i < 32; i++) {
> +		u32 cmd;
> +
> +		cs = intel_ring_begin(rq, 4);
> +		if (IS_ERR(cs)) {
> +			i915_request_add(rq);
> +			goto out_rq;
> +		}
> +
> +		cmd = MI_STORE_REGISTER_MEM;
> +		if (INTEL_GEN(i915) >= 8)
> +			cmd++;
> +		cmd |= MI_USE_GGTT;
> +
> +		*cs++ = cmd;
> +		*cs++ = gpr0 + i * sizeof(u32);
> +		*cs++ = i915_ggtt_offset(rq->engine->status_page.vma) +
> +			offset_in_page(store) +
> +			i * sizeof(u32);
> +		*cs++ = 0;
> +		intel_ring_advance(rq, cs);
> +	}
> +
> +	i915_request_add(rq);
> +
> +	if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE, HZ / 2) < 0) {
> +		intel_gt_set_wedged(stream->engine->gt);
> +		err = -EIO;
> +		goto out_rq;
> +	}
> +
> +	for (i = 0; i < 32; i++) {
> +		if (store[i] == STACK_MAGIC)
> +			continue;
> +
> +		pr_err("GPR[%d] lost, found:%08x, expected:%08x!\n",
> +		       i, store[i], STACK_MAGIC);
> +		err = -EINVAL;
> +	}
> +
> +	if (memchr_inv(scratch, POISON_FREE, PAGE_SIZE)) {
> +		pr_err("scratch page overwritten!\n");
> +		igt_hexdump(scratch, 4096);
> +		err = -EINVAL;
> +	}
> +
> +out_rq:
> +	i915_request_put(rq);
> +out_ce:
> +	kunmap(ce->vm->scratch[0].base.page);
> +	intel_context_put(ce);
> +out:
> +	stream_destroy(stream);
> +	return err;
> +}
> +
>   int i915_perf_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
>   		SUBTEST(live_sanitycheck),
>   		SUBTEST(live_noa_delay),
> +		SUBTEST(live_noa_gpr),
>   	};
>   	struct i915_perf *perf = &i915->perf;
>   	int err;


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
