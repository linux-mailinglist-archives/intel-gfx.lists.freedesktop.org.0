Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CEC1C51A3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 11:15:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9CA6E581;
	Tue,  5 May 2020 09:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA09C6E581
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 09:14:56 +0000 (UTC)
IronPort-SDR: CgGCN3XvNLdEhVRHeY8oorV/uT0PUWoSpxTNHhuPbk3y9PjJSuODh6V/ANE04+uRcUBJ9tik8q
 LYNXlavmxK+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 02:14:56 -0700
IronPort-SDR: fY5g4klUmZDXmZi626W1DO89OA6sMhIsAVWlFDahZNXEz9hDFQxLXeTSN+uXOm3X6TkaRL2OMy
 MjX0jMgxihHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="369352925"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 05 May 2020 02:14:54 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 219525C1DC1; Tue,  5 May 2020 12:12:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200504180745.15645-1-chris@chris-wilson.co.uk>
References: <20200504180745.15645-1-chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 12:12:49 +0300
Message-ID: <87o8r2oicu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Stop holding onto the
 pinned_default_state
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

> As we only restore the default context state upon banning a context, we
> only need enough of the state to run the ring and nothing more. That is
> we only need our bare protocontext.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c    | 14 +-----
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 -
>  drivers/gpu/drm/i915/gt/intel_lrc.c          | 14 ++----
>  drivers/gpu/drm/i915/gt/selftest_context.c   | 11 ++--
>  drivers/gpu/drm/i915/gt/selftest_lrc.c       | 53 +++++++++++++++-----
>  5 files changed, 47 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index 811debefebc0..d0a1078ef632 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -21,18 +21,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
>  	struct intel_engine_cs *engine =
>  		container_of(wf, typeof(*engine), wakeref);
>  	struct intel_context *ce;
> -	void *map;
>  
>  	ENGINE_TRACE(engine, "\n");
>  
>  	intel_gt_pm_get(engine->gt);
>  
> -	/* Pin the default state for fast resets from atomic context. */
> -	map = NULL;
> -	if (engine->default_state)
> -		map = shmem_pin_map(engine->default_state);
> -	engine->pinned_default_state = map;
> -
>  	/* Discard stale context state from across idling */
>  	ce = engine->kernel_context;
>  	if (ce) {
> @@ -42,6 +35,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
>  		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
>  			struct drm_i915_gem_object *obj = ce->state->obj;
>  			int type = i915_coherent_map_type(engine->i915);
> +			void *map;
>  
>  			map = i915_gem_object_pin_map(obj, type);
>  			if (!IS_ERR(map)) {
> @@ -260,12 +254,6 @@ static int __engine_park(struct intel_wakeref *wf)
>  	if (engine->park)
>  		engine->park(engine);
>  
> -	if (engine->pinned_default_state) {
> -		shmem_unpin_map(engine->default_state,
> -				engine->pinned_default_state);
> -		engine->pinned_default_state = NULL;
> -	}
> -
>  	engine->execlists.no_priolist = false;
>  
>  	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 6c676774dcd9..c84525363bb7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -339,7 +339,6 @@ struct intel_engine_cs {
>  	unsigned long wakeref_serial;
>  	struct intel_wakeref wakeref;
>  	struct file *default_state;
> -	void *pinned_default_state;
>  
>  	struct {
>  		struct intel_ring *ring;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index d4ef344657b0..100ed0fce2e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1271,14 +1271,11 @@ execlists_check_context(const struct intel_context *ce,
>  static void restore_default_state(struct intel_context *ce,
>  				  struct intel_engine_cs *engine)
>  {
> -	u32 *regs = ce->lrc_reg_state;
> +	u32 *regs;
>  
> -	if (engine->pinned_default_state)
> -		memcpy(regs, /* skip restoring the vanilla PPHWSP */
> -		       engine->pinned_default_state + LRC_STATE_OFFSET,
> -		       engine->context_size - PAGE_SIZE);
> +	regs = memset(ce->lrc_reg_state, 0, engine->context_size - PAGE_SIZE);
> +	execlists_init_reg_state(regs, ce, engine, ce->ring, true);
>  
> -	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
>  	ce->runtime.last = intel_context_get_runtime(ce);
>  }
>  
> @@ -4166,8 +4163,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
>  	 * image back to the expected values to skip over the guilty request.
>  	 */
>  	__i915_request_reset(rq, stalled);
> -	if (!stalled)
> -		goto out_replay;

Why the change how to handle stalled?

-Mika


>  
>  	/*
>  	 * We want a simple context + ring to execute the breadcrumb update.
> @@ -4177,9 +4172,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
>  	 * future request will be after userspace has had the opportunity
>  	 * to recreate its own state.
>  	 */
> -	GEM_BUG_ON(!intel_context_is_pinned(ce));
> -	restore_default_state(ce, engine);
> -
>  out_replay:
>  	ENGINE_TRACE(engine, "replay {head:%04x, tail:%04x}\n",
>  		     head, ce->ring->tail);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
> index b8ed3cbe1277..a56dff3b157a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> @@ -154,10 +154,7 @@ static int live_context_size(void *arg)
>  	 */
>  
>  	for_each_engine(engine, gt, id) {
> -		struct {
> -			struct file *state;
> -			void *pinned;
> -		} saved;
> +		struct file *saved;
>  
>  		if (!engine->context_size)
>  			continue;
> @@ -171,8 +168,7 @@ static int live_context_size(void *arg)
>  		 * active state is sufficient, we are only checking that we
>  		 * don't use more than we planned.
>  		 */
> -		saved.state = fetch_and_zero(&engine->default_state);
> -		saved.pinned = fetch_and_zero(&engine->pinned_default_state);
> +		saved = fetch_and_zero(&engine->default_state);
>  
>  		/* Overlaps with the execlists redzone */
>  		engine->context_size += I915_GTT_PAGE_SIZE;
> @@ -181,8 +177,7 @@ static int live_context_size(void *arg)
>  
>  		engine->context_size -= I915_GTT_PAGE_SIZE;
>  
> -		engine->pinned_default_state = saved.pinned;
> -		engine->default_state = saved.state;
> +		engine->default_state = saved;
>  
>  		intel_engine_pm_put(engine);
>  
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 3ced73533f6b..824f99c4cc7c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -5177,6 +5177,7 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>  {
>  	struct i915_vma *batch;
>  	u32 dw, x, *cs, *hw;
> +	u32 *defaults;
>  
>  	batch = create_user_vma(ce->vm, SZ_64K);
>  	if (IS_ERR(batch))
> @@ -5188,9 +5189,16 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>  		return ERR_CAST(cs);
>  	}
>  
> +	defaults = shmem_pin_map(ce->engine->default_state);
> +	if (!defaults) {
> +		i915_gem_object_unpin_map(batch->obj);
> +		i915_vma_put(batch);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
>  	x = 0;
>  	dw = 0;
> -	hw = ce->engine->pinned_default_state;
> +	hw = defaults;
>  	hw += LRC_STATE_OFFSET / sizeof(*hw);
>  	do {
>  		u32 len = hw[dw] & 0x7f;
> @@ -5221,6 +5229,8 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
>  
> +	shmem_unpin_map(ce->engine->default_state, defaults);
> +
>  	i915_gem_object_flush_map(batch->obj);
>  	i915_gem_object_unpin_map(batch->obj);
>  
> @@ -5331,6 +5341,7 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>  {
>  	struct i915_vma *batch;
>  	u32 dw, *cs, *hw;
> +	u32 *defaults;
>  
>  	batch = create_user_vma(ce->vm, SZ_64K);
>  	if (IS_ERR(batch))
> @@ -5342,8 +5353,15 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>  		return ERR_CAST(cs);
>  	}
>  
> +	defaults = shmem_pin_map(ce->engine->default_state);
> +	if (!defaults) {
> +		i915_gem_object_unpin_map(batch->obj);
> +		i915_vma_put(batch);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
>  	dw = 0;
> -	hw = ce->engine->pinned_default_state;
> +	hw = defaults;
>  	hw += LRC_STATE_OFFSET / sizeof(*hw);
>  	do {
>  		u32 len = hw[dw] & 0x7f;
> @@ -5371,6 +5389,8 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
>  
> +	shmem_unpin_map(ce->engine->default_state, defaults);
> +
>  	i915_gem_object_flush_map(batch->obj);
>  	i915_gem_object_unpin_map(batch->obj);
>  
> @@ -5438,6 +5458,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
>  {
>  	u32 x, dw, *hw, *lrc;
>  	u32 *A[2], *B[2];
> +	u32 *defaults;
>  	int err = 0;
>  
>  	A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
> @@ -5470,9 +5491,15 @@ static int compare_isolation(struct intel_engine_cs *engine,
>  	}
>  	lrc += LRC_STATE_OFFSET / sizeof(*hw);
>  
> +	defaults = shmem_pin_map(ce->engine->default_state);
> +	if (!defaults) {
> +		err = -ENOMEM;
> +		goto err_lrc;
> +	}
> +
>  	x = 0;
>  	dw = 0;
> -	hw = engine->pinned_default_state;
> +	hw = defaults;
>  	hw += LRC_STATE_OFFSET / sizeof(*hw);
>  	do {
>  		u32 len = hw[dw] & 0x7f;
> @@ -5512,6 +5539,8 @@ static int compare_isolation(struct intel_engine_cs *engine,
>  	} while (dw < PAGE_SIZE / sizeof(u32) &&
>  		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
>  
> +	shmem_unpin_map(ce->engine->default_state, defaults);
> +err_lrc:
>  	i915_gem_object_unpin_map(ce->state->obj);
>  err_B1:
>  	i915_gem_object_unpin_map(result[1]->obj);
> @@ -5661,18 +5690,16 @@ static int live_lrc_isolation(void *arg)
>  			continue;
>  
>  		intel_engine_pm_get(engine);
> -		if (engine->pinned_default_state) {
> -			for (i = 0; i < ARRAY_SIZE(poison); i++) {
> -				int result;
> +		for (i = 0; i < ARRAY_SIZE(poison); i++) {
> +			int result;
>  
> -				result = __lrc_isolation(engine, poison[i]);
> -				if (result && !err)
> -					err = result;
> +			result = __lrc_isolation(engine, poison[i]);
> +			if (result && !err)
> +				err = result;
>  
> -				result = __lrc_isolation(engine, ~poison[i]);
> -				if (result && !err)
> -					err = result;
> -			}
> +			result = __lrc_isolation(engine, ~poison[i]);
> +			if (result && !err)
> +				err = result;
>  		}
>  		intel_engine_pm_put(engine);
>  		if (igt_flush_test(gt->i915)) {
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
