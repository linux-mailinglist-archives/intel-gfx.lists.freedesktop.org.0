Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E288B17360D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:31:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F296F40E;
	Fri, 28 Feb 2020 11:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF4D6F40E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:31:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="385475655"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 28 Feb 2020 03:31:34 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D12F95C1D9C; Fri, 28 Feb 2020 13:30:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200227085723.1961649-12-chris@chris-wilson.co.uk>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-12-chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 13:30:21 +0200
Message-ID: <87blpj7xv6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/20] drm/i915/selftests: Verify LRC
 isolation
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

> Record the LRC registers before/after a preemption event to ensure that
> the first context sees nothing from the second client; at least in the
> normal per-context register state.
>
> References: https://gitlab.freedesktop.org/drm/intel/issues/1233
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 545 +++++++++++++++++++++++++
>  1 file changed, 545 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index febd608c23a7..810f7857ad26 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -4748,6 +4748,550 @@ static int live_lrc_timestamp(void *arg)
>  	return 0;
>  }
>  
> +static struct i915_vma *
> +create_user_vma(struct i915_address_space *vm, unsigned long size)
> +{
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	int err;
> +
> +	obj = i915_gem_object_create_internal(vm->i915, size);
> +	if (IS_ERR(obj))
> +		return ERR_CAST(obj);
> +
> +	vma = i915_vma_instance(obj, vm, NULL);
> +	if (IS_ERR(vma)) {
> +		i915_gem_object_put(obj);
> +		return vma;
> +	}
> +
> +	err = i915_vma_pin(vma, 0, 0, PIN_USER);
> +	if (err) {
> +		i915_gem_object_put(obj);
> +		return ERR_PTR(err);
> +	}
> +
> +	return vma;
> +}
> +
> +static struct i915_vma *
> +store_context(struct intel_context *ce, struct i915_vma *scratch)
> +{
> +	struct i915_vma *batch;
> +	u32 dw, x, *cs, *hw;
> +
> +	batch = create_user_vma(ce->vm, SZ_64K);
> +	if (IS_ERR(batch))
> +		return ERR_CAST(batch);

Superfluous cast but not harmful.

> +
> +	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +	if (IS_ERR(cs)) {
> +		i915_vma_put(batch);
> +		return ERR_CAST(cs);
> +	}
> +
> +	x = 0;
> +	dw = 0;
> +	hw = ce->engine->pinned_default_state;
> +	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
> +	do {
> +		u32 lri = hw[dw];

As you filter the everything other than lri out
early and then basically just operate on len,
it might be useful to do u32 len = hw[dw] & 0x7f;
and use hw[dw] on genmask check.

> +
> +		if (lri == 0) {
> +			dw++;
> +			continue;
> +		}
> +
> +		if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +			lri &= 0x7f;
> +			dw += lri + 2;
> +			continue;
> +		}
> +
> +		lri &= 0x7f;
> +		lri++;
> +		dw++;
> +
> +		while (lri) {
> +			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
> +			*cs++ = hw[dw];
> +			*cs++ = lower_32_bits(scratch->node.start + x);
> +			*cs++ = upper_32_bits(scratch->node.start + x);
> +
> +			dw += 2;
> +			lri -= 2;
> +			x += 4;
> +		}
> +	} while (dw < PAGE_SIZE / sizeof(u32) &&
> +		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
> +
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(batch->obj);
> +	i915_gem_object_unpin_map(batch->obj);
> +
> +	return batch;
> +}
> +
> +static int move_to_active(struct i915_request *rq,
> +			  struct i915_vma *vma,
> +			  unsigned int flags)
> +{
> +	int err;
> +
> +	i915_vma_lock(vma);
> +	err = i915_request_await_object(rq, vma->obj, flags);
> +	if (!err)
> +		err = i915_vma_move_to_active(vma, rq, flags);
> +	i915_vma_unlock(vma);
> +
> +	return err;
> +}
> +
> +static struct i915_request *
> +record_registers(struct intel_context *ce,
> +		 struct i915_vma *before,
> +		 struct i915_vma *after,
> +		 u32 *sema)
> +{
> +	struct i915_vma *b_before, *b_after;
> +	struct i915_request *rq;
> +	u32 *cs;
> +	int err;
> +
> +	b_before = store_context(ce, before);
> +	if (IS_ERR(b_before))
> +		return ERR_CAST(b_before);
> +
> +	b_after = store_context(ce, after);
> +	if (IS_ERR(b_after)) {
> +		rq = ERR_CAST(b_after);
> +		goto err_before;
> +	}
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq))
> +		goto err_after;
> +
> +	err = move_to_active(rq, before, EXEC_OBJECT_WRITE);
> +	if (err)
> +		goto err_rq;
> +
> +	err = move_to_active(rq, b_before, 0);
> +	if (err)
> +		goto err_rq;
> +
> +	err = move_to_active(rq, after, EXEC_OBJECT_WRITE);
> +	if (err)
> +		goto err_rq;
> +
> +	err = move_to_active(rq, b_after, 0);
> +	if (err)
> +		goto err_rq;
> +
> +	cs = intel_ring_begin(rq, 14);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto err_rq;
> +	}
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
> +	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> +	*cs++ = lower_32_bits(b_before->node.start);
> +	*cs++ = upper_32_bits(b_before->node.start);
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> +	*cs++ = MI_SEMAPHORE_WAIT |
> +		MI_SEMAPHORE_GLOBAL_GTT |
> +		MI_SEMAPHORE_POLL |
> +		MI_SEMAPHORE_SAD_NEQ_SDD;
> +	*cs++ = 0;
> +	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
> +		offset_in_page(sema);
> +	*cs++ = 0;
> +	*cs++ = MI_NOOP;
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
> +	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> +	*cs++ = lower_32_bits(b_after->node.start);
> +	*cs++ = upper_32_bits(b_after->node.start);
> +
> +	intel_ring_advance(rq, cs);
> +
> +	WRITE_ONCE(*sema, 0);
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +err_after:
> +	i915_vma_put(b_after);
> +err_before:
> +	i915_vma_put(b_before);
> +	return rq;
> +
> +err_rq:
> +	i915_request_add(rq);
> +	rq = ERR_PTR(err);
> +	goto err_after;
> +}
> +
> +static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
> +{
> +	struct i915_vma *batch;
> +	u32 dw, *cs, *hw;
> +
> +	batch = create_user_vma(ce->vm, SZ_64K);
> +	if (IS_ERR(batch))
> +		return ERR_CAST(batch);

Superfluous cast.

> +
> +	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
> +	if (IS_ERR(cs)) {
> +		i915_vma_put(batch);
> +		return ERR_CAST(cs);
> +	}
> +
> +	dw = 0;
> +	hw = ce->engine->pinned_default_state;
> +	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
> +	do {
> +		u32 lri = hw[dw];

Altho I suggested len, one starts to accustom to the lri.
Shrug.

> +
> +		if (lri == 0) {
> +			dw++;
> +			continue;
> +		}
> +
> +		if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +			lri &= 0x7f;
> +			dw += lri + 2;
> +			continue;
> +		}
> +
> +		lri &= 0x7f;
> +		lri++;
> +		dw++;
> +
> +		lri /= 2;
> +		*cs++ = MI_LOAD_REGISTER_IMM(lri);
> +		while (lri--) {
> +			*cs++ = hw[dw];
> +			*cs++ = poison;
> +			dw += 2;
> +		}
> +	} while (dw < PAGE_SIZE / sizeof(u32) &&
> +		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
> +
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(batch->obj);
> +	i915_gem_object_unpin_map(batch->obj);
> +
> +	return batch;
> +}
> +
> +static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
> +{
> +	struct i915_request *rq;
> +	struct i915_vma *batch;
> +	u32 *cs;
> +	int err;
> +
> +	batch = load_context(ce, poison);
> +	if (IS_ERR(batch))
> +		return PTR_ERR(batch);
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_batch;
> +	}
> +
> +	err = move_to_active(rq, batch, 0);
> +	if (err)
> +		goto err_rq;
> +
> +	cs = intel_ring_begin(rq, 8);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto err_rq;
> +	}
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
> +	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> +	*cs++ = lower_32_bits(batch->node.start);
> +	*cs++ = upper_32_bits(batch->node.start);
> +
> +	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> +	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
> +		offset_in_page(sema);
> +	*cs++ = 0;
> +	*cs++ = 1;

For a future glimpse reader defines like SEMA_WAIT, SEMA_GO might
ease some pain. But not insisting.

> +
> +	intel_ring_advance(rq, cs);
> +
> +	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
> +err_rq:
> +	i915_request_add(rq);
> +err_batch:
> +	i915_vma_put(batch);
> +	return err;
> +}
> +
> +static bool is_moving(u32 a, u32 b)
> +{
> +	return a != b;
> +}
> +
> +static int compare_isolation(struct intel_engine_cs *engine,
> +			     struct i915_vma *ref[2],
> +			     struct i915_vma *result[2],
> +			     struct intel_context *ce,
> +			     u32 poison)
> +{
> +	u32 x, dw, *hw, *lrc;
> +	u32 *A[2], *B[2];

Using these names got me a bit off the balance
as I associated them with after and before.

> +	int err = 0;
> +
> +	A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
> +	if (IS_ERR(A[0]))
> +		return PTR_ERR(A[0]);
> +
> +	A[1] = i915_gem_object_pin_map(ref[1]->obj, I915_MAP_WC);
> +	if (IS_ERR(A[1])) {
> +		err = PTR_ERR(A[1]);
> +		goto err_A0;
> +	}
> +
> +	B[0] = i915_gem_object_pin_map(result[0]->obj, I915_MAP_WC);
> +	if (IS_ERR(B[0])) {
> +		err = PTR_ERR(B[0]);
> +		goto err_A1;
> +	}
> +
> +	B[1] = i915_gem_object_pin_map(result[1]->obj, I915_MAP_WC);
> +	if (IS_ERR(B[1])) {
> +		err = PTR_ERR(B[1]);
> +		goto err_B0;
> +	}
> +
> +	lrc = i915_gem_object_pin_map(ce->state->obj,
> +				      i915_coherent_map_type(engine->i915));
> +	if (IS_ERR(lrc)) {
> +		err = PTR_ERR(lrc);
> +		goto err_B1;
> +	}
> +	lrc += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
> +
> +	x = 0;
> +	dw = 0;
> +	hw = engine->pinned_default_state;
> +	hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
> +	do {
> +		u32 lri = hw[dw];
> +
> +		if (lri == 0) {
> +			dw++;
> +			continue;
> +		}
> +
> +		if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +			lri &= 0x7f;
> +			dw += lri + 2;
> +			continue;
> +		}
> +
> +		lri &= 0x7f;
> +		lri++;
> +		dw++;

The pattern for weeding out everything except lris starts
to stand out as a boilerplate. 

> +
> +		while (lri) {
> +			if (!is_moving(A[0][x], A[1][x]) &&
> +			    (A[0][x] != B[0][x] || A[1][x] != B[1][x])) {
> +				switch (hw[dw] & 4095) {
> +				case 0x30: /* RING_HEAD */
> +				case 0x34: /* RING_TAIL */
> +					break;
> +
> +				default:
> +					pr_err("%s[%d]: Mismatch for register %4x, default %08x, reference %08x, result (%08x, %08x), poison %08x, context %08x\n",

0x left out on all for compactness or by accident?

> +					       engine->name, x,
> +					       hw[dw], hw[dw + 1],
> +					       A[0][x], B[0][x], B[1][x],
> +					       poison, lrc[dw + 1]);
> +					err = -EINVAL;
> +					break;
> +				}
> +			}
> +			dw += 2;
> +			lri -= 2;
> +			x++;
> +		}
> +	} while (dw < PAGE_SIZE / sizeof(u32) &&
> +		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
> +
> +	i915_gem_object_unpin_map(ce->state->obj);
> +err_B1:
> +	i915_gem_object_unpin_map(result[1]->obj);
> +err_B0:
> +	i915_gem_object_unpin_map(result[0]->obj);
> +err_A1:
> +	i915_gem_object_unpin_map(ref[1]->obj);
> +err_A0:
> +	i915_gem_object_unpin_map(ref[0]->obj);
> +	return err;
> +}
> +
> +static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
> +{
> +	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
> +	struct i915_vma *ref[2], *result[2];
> +	struct intel_context *A, *B;
> +	struct i915_request *rq;
> +	int err;
> +
> +	A = intel_context_create(engine);
> +	if (IS_ERR(A))
> +		return PTR_ERR(A);
> +
> +	B = intel_context_create(engine);
> +	if (IS_ERR(B)) {
> +		err = PTR_ERR(B);
> +		goto err_A;
> +	}
> +
> +	ref[0] = create_user_vma(A->vm, SZ_64K);
> +	if (IS_ERR(ref[0])) {
> +		err = PTR_ERR(ref[0]);
> +		goto err_B;
> +	}
> +
> +	ref[1] = create_user_vma(A->vm, SZ_64K);
> +	if (IS_ERR(ref[1])) {
> +		err = PTR_ERR(ref[1]);
> +		goto err_ref0;
> +	}
> +
> +	rq = record_registers(A, ref[0], ref[1], sema);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_ref1;
> +	}
> +
> +	WRITE_ONCE(*sema, 1);
> +	wmb();

So with this you get reference base for before and after...

> +
> +	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> +		i915_request_put(rq);
> +		err = -ETIME;
> +		goto err_ref1;
> +	}
> +	i915_request_put(rq);
> +
> +	result[0] = create_user_vma(A->vm, SZ_64K);
> +	if (IS_ERR(result[0])) {
> +		err = PTR_ERR(result[0]);
> +		goto err_ref1;
> +	}
> +
> +	result[1] = create_user_vma(A->vm, SZ_64K);
> +	if (IS_ERR(result[1])) {
> +		err = PTR_ERR(result[1]);
> +		goto err_result0;
> +	}
> +
> +	rq = record_registers(A, result[0], result[1], sema);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_result1;
> +	}
> +
> +	err = poison_registers(B, poison, sema);

..and apparently the poisoning releases the semaphore
triggering the preemption?
How can you make preempt happen deterministically with this?
Released semaphore generates interrupt and you have it ready
with maximum prio?

I am also puzzled why there is a need for two set of reference
values?

-Mika

> +	if (err) {
> +		WRITE_ONCE(*sema, -1);
> +		i915_request_put(rq);
> +		goto err_result1;
> +	}
> +
> +	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
> +		i915_request_put(rq);
> +		err = -ETIME;
> +		goto err_result1;
> +	}
> +	i915_request_put(rq);
> +
> +	err = compare_isolation(engine, ref, result, A, poison);
> +
> +err_result1:
> +	i915_vma_put(result[1]);
> +err_result0:
> +	i915_vma_put(result[0]);
> +err_ref1:
> +	i915_vma_put(ref[1]);
> +err_ref0:
> +	i915_vma_put(ref[0]);
> +err_B:
> +	intel_context_put(B);
> +err_A:
> +	intel_context_put(A);
> +	return err;
> +}
> +
> +static bool skip_isolation(const struct intel_engine_cs *engine)
> +{
> +	if (engine->class == COPY_ENGINE_CLASS && INTEL_GEN(engine->i915) == 9)
> +		return true;
> +
> +	if (engine->class == RENDER_CLASS && INTEL_GEN(engine->i915) == 11)
> +		return true;
> +
> +	return false;
> +}
> +
> +static int live_lrc_isolation(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	const u32 poison[] = {
> +		STACK_MAGIC,
> +		0x3a3a3a3a,
> +		0xc5c5c5c5,
> +		0xffffffff,
> +	};
> +
> +	/*
> +	 * Our goal is try and verify that per-context state cannot be
> +	 * tampered with by another non-privileged client.
> +	 *
> +	 * We take the list of context registers from the LRI in the default
> +	 * context image and attempt to modify that list from a remote context.
> +	 */
> +
> +	for_each_engine(engine, gt, id) {
> +		int err = 0;
> +		int i;
> +
> +		/* Just don't even ask */
> +		if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN) &&
> +		    skip_isolation(engine))
> +			continue;
> +
> +		intel_engine_pm_get(engine);
> +		if (engine->pinned_default_state) {
> +			for (i = 0; i < ARRAY_SIZE(poison); i++) {
> +				err = __lrc_isolation(engine, poison[i]);
> +				if (err)
> +					break;
> +			}
> +		}
> +		if (igt_flush_test(gt->i915))
> +			err = -EIO;
> +		intel_engine_pm_put(engine);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
>  {
>  	struct intel_context *ce;
> @@ -4845,6 +5389,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_lrc_fixed),
>  		SUBTEST(live_lrc_state),
>  		SUBTEST(live_lrc_gpr),
> +		SUBTEST(live_lrc_isolation),
>  		SUBTEST(live_lrc_timestamp),
>  		SUBTEST(live_pphwsp_runtime),
>  	};
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
