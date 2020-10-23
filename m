Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5330296DAB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 13:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541B16E500;
	Fri, 23 Oct 2020 11:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277816E500
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 11:28:03 +0000 (UTC)
IronPort-SDR: V7PN0NrTs2apntekvIfbiMKZrcAKhLbTbFj8DG6WVTS1aMQU9PVGHdbuS9liJrGC9FpRkA2VGa
 rTc3N6Qtlh9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="252359034"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="252359034"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 04:28:02 -0700
IronPort-SDR: szr2jgGztqWnmPDE2KkHFviPxo2O/jxNHImvTJRfz/fkdXU5ufDp4N/m9/IslmlpB7CwlUYmOL
 8FJgC02fEByw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; d="scan'208";a="523473280"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 23 Oct 2020 04:28:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CD4895C2038; Fri, 23 Oct 2020 14:26:21 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201021220411.5777-2-chris@chris-wilson.co.uk>
References: <20201021220411.5777-1-chris@chris-wilson.co.uk>
 <20201021220411.5777-2-chris@chris-wilson.co.uk>
Date: Fri, 23 Oct 2020 14:26:21 +0300
Message-ID: <87o8ktqj36.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Exercise
 intel_timeline_read_hwsp()
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

> intel_timeline_read_hwsp() is used to support semaphore waits between
> engines, that may themselves be deferred for arbitrary periods -- that
> is the read of the target request's HWSP is at an indeterminant point in
> the future. To support this, we need to prevent overwriting a HWSP that
> is being watched across a seqno wrap (otherwise the next request will
> write its value into the old HWSP preventing the watcher from making
> progress, ad infinitum.) To simulate the observer across a wrap, let's
> create a request that reads from the HWSP and dispatch it at different
> points around a wrap to see if the value is lost.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_timeline.c | 378 +++++++++++++++++++-
>  1 file changed, 376 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index 19c2cb166e7c..2edf2b15885f 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -17,8 +17,9 @@
>  #include "../selftests/i915_random.h"
>  #include "../i915_selftest.h"
>  
> -#include "../selftests/igt_flush_test.h"
> -#include "../selftests/mock_gem_device.h"
> +#include "selftests/igt_flush_test.h"
> +#include "selftests/lib_sw_fence.h"
> +#include "selftests/mock_gem_device.h"
>  #include "selftests/mock_timeline.h"
>  
>  static struct page *hwsp_page(struct intel_timeline *tl)
> @@ -755,6 +756,378 @@ static int live_hwsp_wrap(void *arg)
>  	return err;
>  }
>  
> +static int emit_read_hwsp(struct i915_request *rq,
> +			  u32 seqno, u32 hwsp,
> +			  u32 *addr)
> +{
> +	const u32 gpr = i915_mmio_reg_offset(GEN8_RING_CS_GPR(rq->engine->mmio_base, 0));
> +	u32 *cs;
> +
> +	cs = intel_ring_begin(rq, 12);
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> +	*cs++ = *addr;
> +	*cs++ = 0;
> +	*cs++ = seqno;
> +	*addr += 4;
> +
> +	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 | MI_USE_GGTT;
> +	*cs++ = gpr;
> +	*cs++ = hwsp;
> +	*cs++ = 0;
> +
> +	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
> +	*cs++ = gpr;
> +	*cs++ = *addr;
> +	*cs++ = 0;
> +	*addr += 4;
> +
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
> +struct hwsp_watcher {
> +	struct i915_vma *vma;
> +	struct i915_request *rq;
> +	u32 addr;
> +	u32 *map;
> +};
> +
> +static bool cmp_lt(u32 a, u32 b)
> +{
> +	return a < b;
> +}
> +
> +static bool cmp_gte(u32 a, u32 b)
> +{
> +	return a >= b;
> +}
> +
> +static int setup_watcher(struct hwsp_watcher *w, struct intel_gt *gt)
> +{
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +
> +	obj = i915_gem_object_create_internal(gt->i915, SZ_2M);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	w->map = i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	if (IS_ERR(w->map)) {
> +		i915_gem_object_put(obj);
> +		return PTR_ERR(w->map);
> +	}
> +
> +	vma = i915_gem_object_ggtt_pin_ww(obj, NULL, NULL, 0, 0, 0);
> +	if (IS_ERR(vma)) {
> +		i915_gem_object_put(obj);
> +		return PTR_ERR(vma);
> +	}
> +
> +	w->vma = vma;
> +	w->addr = i915_ggtt_offset(vma);
> +	return 0;
> +}
> +
> +static int create_watcher(struct hwsp_watcher *w,
> +			  struct intel_engine_cs *engine,
> +			  int ringsz)
> +{
> +	struct intel_context *ce;
> +	struct intel_timeline *tl;
> +
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
> +
> +	ce->ring = __intel_context_ring_size(ringsz);
> +	w->rq = intel_context_create_request(ce);
> +	intel_context_put(ce);
> +	if (IS_ERR(w->rq))
> +		return PTR_ERR(w->rq);
> +
> +	w->addr = i915_ggtt_offset(w->vma);
> +	tl = w->rq->context->timeline;
> +
> +	/* some light mutex juggling required; think co-routines */
> +	lockdep_unpin_lock(&tl->mutex, w->rq->cookie);
> +	mutex_unlock(&tl->mutex);
> +
> +	return 0;
> +}
> +
> +static int check_watcher(struct hwsp_watcher *w, const char *name,
> +			 bool (*op)(u32 hwsp, u32 seqno))
> +{
> +	struct i915_request *rq = fetch_and_zero(&w->rq);
> +	struct intel_timeline *tl = rq->context->timeline;
> +	u32 offset, end;
> +	int err;
> +
> +	GEM_BUG_ON(w->addr - i915_ggtt_offset(w->vma) > w->vma->size);
> +
> +	i915_request_get(rq);
> +	mutex_lock(&tl->mutex);
> +	rq->cookie = lockdep_pin_lock(&tl->mutex);
> +	i915_request_add(rq);
> +
> +	if (i915_request_wait(rq, 0, HZ) < 0) {
> +		err = -ETIME;
> +		goto out;
> +	}
> +
> +	err = 0;
> +	offset = 0;
> +	end = (w->addr - i915_ggtt_offset(w->vma)) / sizeof(*w->map);
> +	while (offset < end) {
> +		if (!op(w->map[offset + 1], w->map[offset])) {
> +			pr_err("Watcher '%s' found HWSP value %x for seqno %x\n",
> +			       name, w->map[offset + 1], w->map[offset]);
> +			err = -EINVAL;
> +		}
> +
> +		offset += 2;
> +	}
> +
> +out:
> +	i915_request_put(rq);
> +	return err;
> +}
> +
> +static void cleanup_watcher(struct hwsp_watcher *w)
> +{
> +	if (w->rq) {
> +		struct intel_timeline *tl = w->rq->context->timeline;
> +
> +		mutex_lock(&tl->mutex);
> +		w->rq->cookie = lockdep_pin_lock(&tl->mutex);
> +
> +		i915_request_add(w->rq);
> +	}
> +
> +	i915_vma_unpin_and_release(&w->vma, I915_VMA_RELEASE_MAP);
> +}
> +
> +static bool retire_requests(struct intel_timeline *tl)
> +{
> +	struct i915_request *rq, *rn;
> +
> +	mutex_lock(&tl->mutex);
> +	list_for_each_entry_safe(rq, rn, &tl->requests, link)
> +		if (!i915_request_retire(rq))
> +			break;
> +	mutex_unlock(&tl->mutex);
> +
> +	return !i915_active_fence_isset(&tl->last_request);
> +}
> +
> +static struct i915_request *wrap_timeline(struct i915_request *rq)
> +{
> +	struct intel_context *ce = rq->context;
> +	struct intel_timeline *tl = ce->timeline;
> +	u32 seqno = rq->fence.seqno;
> +
> +	while (tl->seqno >= seqno) { /* Cause a wrap */
> +		i915_request_put(rq);
> +		rq = intel_context_create_request(ce);
> +		if (IS_ERR(rq))
> +			return rq;
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +	}
> +
> +	i915_request_put(rq);
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq))
> +		return rq;
> +
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +
> +	return rq;
> +}
> +
> +static int live_hwsp_read(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct hwsp_watcher watcher[2] = {};
> +	struct intel_engine_cs *engine;
> +	struct intel_timeline *tl;
> +	enum intel_engine_id id;
> +	int err = 0;
> +	int i;
> +
> +	/*
> +	 * If we take a reference to the HWSP for reading on the GPU, that
> +	 * read may be arbitrarily delayed (either by foreign fence or
> +	 * priority saturation) and a wrap can happen within 30 minutes.
> +	 * When the GPU read is finally submitted it should be correct,
> +	 * even across multiple wraps.
> +	 */
> +
> +	if (INTEL_GEN(gt->i915) < 8) /* CS convenience [SRM/LRM] */
> +		return 0;
> +
> +	tl = intel_timeline_create(gt);
> +	if (IS_ERR(tl))
> +		return PTR_ERR(tl);
> +
> +	if (!tl->hwsp_cacheline)
> +		goto out_free;
> +
> +	for (i = 0; i < ARRAY_SIZE(watcher); i++) {
> +		err = setup_watcher(&watcher[i], gt);
> +		if (err)
> +			goto out;
> +	}
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce;
> +		unsigned long count = 0;
> +		IGT_TIMEOUT(end_time);
> +
> +		/* Create a request we can use for remote reading of the HWSP */
> +		err = create_watcher(&watcher[1], engine, SZ_512K);
> +		if (err)
> +			goto out;
> +
> +		do {
> +			struct i915_sw_fence *submit;
> +			struct i915_request *rq;
> +			u32 hwsp;
> +
> +			submit = heap_fence_create(GFP_KERNEL);
> +			if (!submit) {
> +				err = -ENOMEM;
> +				goto out;
> +			}
> +
> +			err = create_watcher(&watcher[0], engine, SZ_4K);
> +			if (err)
> +				goto out;
> +
> +			ce = intel_context_create(engine);
> +			if (IS_ERR(ce)) {
> +				err = PTR_ERR(ce);
> +				goto out;
> +			}
> +
> +			/* Skip to the end, saving 30 minutes of nops */
> +			tl->seqno = -10u + 2 * (count & 3);
> +			WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
> +			ce->timeline = intel_timeline_get(tl);
> +
> +			rq = intel_context_create_request(ce);
> +			if (IS_ERR(rq)) {
> +				err = PTR_ERR(rq);
> +				intel_context_put(ce);
> +				goto out;
> +			}
> +
> +			err = i915_sw_fence_await_dma_fence(&rq->submit,
> +							    &watcher[0].rq->fence, 0,
> +							    GFP_KERNEL);
> +			if (err < 0) {
> +				i915_request_add(rq);
> +				intel_context_put(ce);
> +				goto out;
> +			}
> +
> +			mutex_lock(&watcher[0].rq->context->timeline->mutex);
> +			err = intel_timeline_read_hwsp(rq, watcher[0].rq, &hwsp);
> +			if (err == 0)
> +				err = emit_read_hwsp(watcher[0].rq, /* before */
> +						     rq->fence.seqno, hwsp,
> +						     &watcher[0].addr);
> +			mutex_unlock(&watcher[0].rq->context->timeline->mutex);
> +			if (err) {
> +				i915_request_add(rq);
> +				intel_context_put(ce);
> +				goto out;
> +			}
> +
> +			mutex_lock(&watcher[1].rq->context->timeline->mutex);
> +			err = intel_timeline_read_hwsp(rq, watcher[1].rq, &hwsp);
> +			if (err == 0)
> +				err = emit_read_hwsp(watcher[1].rq, /* after */
> +						     rq->fence.seqno, hwsp,
> +						     &watcher[1].addr);
> +			mutex_unlock(&watcher[1].rq->context->timeline->mutex);
> +			if (err) {
> +				i915_request_add(rq);
> +				intel_context_put(ce);
> +				goto out;
> +			}
> +
> +			i915_request_get(rq);
> +			i915_request_add(rq);
> +
> +			rq = wrap_timeline(rq);
> +			intel_context_put(ce);
> +			if (IS_ERR(rq)) {
> +				err = PTR_ERR(rq);
> +				goto out;
> +			}
> +
> +			err = i915_sw_fence_await_dma_fence(&watcher[1].rq->submit,
> +							    &rq->fence, 0,
> +							    GFP_KERNEL);
> +			if (err < 0) {
> +				i915_request_put(rq);
> +				goto out;
> +			}
> +
> +			err = check_watcher(&watcher[0], "before", cmp_lt);
> +			i915_sw_fence_commit(submit);
> +			heap_fence_put(submit);
> +			if (err) {
> +				i915_request_put(rq);
> +				goto out;
> +			}
> +			count++;
> +
> +			if (8 * watcher[1].rq->ring->emit >
> +			    3 * watcher[1].rq->ring->size) {
> +				i915_request_put(rq);
> +				break;
> +			}
> +
> +			/* Flush the timeline before manually wrapping again */
> +			if (i915_request_wait(rq,
> +					      I915_WAIT_INTERRUPTIBLE,
> +					      HZ) < 0) {
> +				err = -ETIME;
> +				i915_request_put(rq);
> +				goto out;
> +			}
> +
> +			retire_requests(tl);
> +			i915_request_put(rq);
> +		} while (!__igt_timeout(end_time, NULL));
> +		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, 0xdeadbeef);
> +
> +		pr_info("%s: simulated %lu wraps\n", engine->name, count);
> +		err = check_watcher(&watcher[1], "after", cmp_gte);
> +		if (err)
> +			goto out;
> +	}
> +
> +out:
> +	for (i = 0; i < ARRAY_SIZE(watcher); i++)
> +		cleanup_watcher(&watcher[i]);
> +
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +
> +out_free:
> +	intel_timeline_put(tl);
> +	return err;
> +}
> +
>  static int live_hwsp_rollover_kernel(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> @@ -998,6 +1371,7 @@ int intel_timeline_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_hwsp_engine),
>  		SUBTEST(live_hwsp_alternate),
>  		SUBTEST(live_hwsp_wrap),
> +		SUBTEST(live_hwsp_read),
>  		SUBTEST(live_hwsp_rollover_kernel),
>  		SUBTEST(live_hwsp_rollover_user),
>  	};
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
