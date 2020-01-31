Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB73514EF0F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:04:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6F36FB84;
	Fri, 31 Jan 2020 15:04:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE126E9B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:04:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 07:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="430386794"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2020 07:04:07 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B61C25C0D3C; Fri, 31 Jan 2020 17:03:17 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200131142610.3100998-1-chris@chris-wilson.co.uk>
References: <20200131081543.2251298-2-chris@chris-wilson.co.uk>
 <20200131142610.3100998-1-chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 17:03:17 +0200
Message-ID: <87mua3acsq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Also wait for the
 scratch buffer to be bound
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

> Since PIN_GLOBAL is no longer guaranteed to be synchronous, we must no
> forget to include a wait-for-vma prior to execution.

Dunno if we got em all, we soon know.

Cried for helper but lets move first,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 10 ++++++
>  drivers/gpu/drm/i915/gt/selftest_lrc.c        | 33 +++++++++++++++++++
>  .../gpu/drm/i915/gt/selftest_workarounds.c    |  9 +++++
>  3 files changed, 52 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 5a7db279f702..8d7c3191137c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1612,6 +1612,16 @@ static int engine_wa_list_verify(struct intel_context *ce,
>  		goto err_vma;
>  	}
>  
> +	i915_vma_lock(vma);
> +	err = i915_request_await_object(rq, vma->obj, true);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
> +	i915_vma_unlock(vma);
> +	if (err) {
> +		i915_request_add(rq);
> +		goto err_vma;
> +	}
> +
>  	err = wa_list_srm(rq, wal, vma);
>  	if (err)
>  		goto err_vma;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index f5214a374fb7..0efb46665667 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -734,6 +734,10 @@ static int live_timeslice_preempt(void *arg)
>  	if (err)
>  		goto err_map;
>  
> +	err = i915_vma_sync(vma);
> +	if (err)
> +		goto err_pin;
> +
>  	for_each_prime_number_from(count, 1, 16) {
>  		struct intel_engine_cs *engine;
>  		enum intel_engine_id id;
> @@ -827,6 +831,10 @@ static int live_timeslice_queue(void *arg)
>  	if (err)
>  		goto err_map;
>  
> +	err = i915_vma_sync(vma);
> +	if (err)
> +		goto err_unpin;
> +
>  	for_each_engine(engine, gt, id) {
>  		struct i915_sched_attr attr = {
>  			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
> @@ -913,6 +921,7 @@ static int live_timeslice_queue(void *arg)
>  			break;
>  	}
>  
> +err_unpin:
>  	i915_vma_unpin(vma);
>  err_map:
>  	i915_gem_object_unpin_map(obj);
> @@ -971,6 +980,10 @@ static int live_busywait_preempt(void *arg)
>  	if (err)
>  		goto err_map;
>  
> +	err = i915_vma_sync(vma);
> +	if (err)
> +		goto err_vma;
> +
>  	for_each_engine(engine, gt, id) {
>  		struct i915_request *lo, *hi;
>  		struct igt_live_test t;
> @@ -3204,6 +3217,10 @@ static int preserved_virtual_engine(struct intel_gt *gt,
>  	if (IS_ERR(scratch))
>  		return PTR_ERR(scratch);
>  
> +	err = i915_vma_sync(scratch);
> +	if (err)
> +		goto out_scratch;
> +
>  	ve = intel_execlists_create_virtual(siblings, nsibling);
>  	if (IS_ERR(ve)) {
>  		err = PTR_ERR(ve);
> @@ -4030,8 +4047,16 @@ static int __live_lrc_state(struct intel_engine_cs *engine,
>  	*cs++ = i915_ggtt_offset(scratch) + RING_TAIL_IDX * sizeof(u32);
>  	*cs++ = 0;
>  
> +	i915_vma_lock(scratch);
> +	err = i915_request_await_object(rq, scratch->obj, true);
> +	if (!err)
> +		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
> +	i915_vma_unlock(scratch);
> +
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> +	if (err)
> +		goto err_rq;
>  
>  	intel_engine_flush_submission(engine);
>  	expected[RING_TAIL_IDX] = ce->ring->tail;
> @@ -4166,8 +4191,16 @@ static int __live_gpr_clear(struct intel_engine_cs *engine,
>  		*cs++ = 0;
>  	}
>  
> +	i915_vma_lock(scratch);
> +	err = i915_request_await_object(rq, scratch->obj, true);
> +	if (!err)
> +		err = i915_vma_move_to_active(scratch, rq, EXEC_OBJECT_WRITE);
> +	i915_vma_unlock(scratch);
> +
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> +	if (err)
> +		goto err_rq;
>  
>  	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
>  		err = -ETIME;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index ac1921854cbf..5ed323254ee1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -583,6 +583,15 @@ static int check_dirty_whitelist(struct intel_context *ce)
>  		if (err)
>  			goto err_request;
>  
> +		i915_vma_lock(scratch);
> +		err = i915_request_await_object(rq, scratch->obj, true);
> +		if (err == 0)
> +			err = i915_vma_move_to_active(scratch, rq,
> +						      EXEC_OBJECT_WRITE);
> +		i915_vma_unlock(scratch);
> +		if (err)
> +			goto err_request;
> +
>  		err = engine->emit_bb_start(rq,
>  					    batch->node.start, PAGE_SIZE,
>  					    0);
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
