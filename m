Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13A32D62FF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 18:06:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2636EA88;
	Thu, 10 Dec 2020 17:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFD56EA88
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 17:06:19 +0000 (UTC)
IronPort-SDR: 7OCD1UXbueTbew949FYsDDT9MbDGSAAiwOMIYWKnxo9+B068wh0V49KvmmhboQnjict148W6qj
 2cg2QjRr1dgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="174405205"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="174405205"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:06:18 -0800
IronPort-SDR: zR0FKnhxaKvx5wCmtgIhR9efHkkA1jkGbIS5Q4OWZ6A42iOAvOjwLNWWQvNzfDzAJMdM84lfxi
 XWubD0j8OjtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="408623851"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 10 Dec 2020 09:06:17 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9427F5C201A; Thu, 10 Dec 2020 19:04:01 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201210080240.24529-2-chris@chris-wilson.co.uk>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-2-chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 19:04:01 +0200
Message-ID: <87ft4dlhj2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915/gt: Wean workaround
 selftests off GEM context
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

> The workarounds are tied to the GT and we should derive the tests local
> to the GT.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../gpu/drm/i915/gt/selftest_workarounds.c    | 189 ++++++++----------
>  1 file changed, 88 insertions(+), 101 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 61a0532d0f3d..703b77207a47 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -95,8 +95,9 @@ reference_lists_fini(struct intel_gt *gt, struct wa_lists *lists)
>  }
>  
>  static struct drm_i915_gem_object *
> -read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
> +read_nonprivs(struct intel_context *ce)
>  {
> +	struct intel_engine_cs *engine = ce->engine;
>  	const u32 base = engine->mmio_base;
>  	struct drm_i915_gem_object *result;
>  	struct i915_request *rq;
> @@ -130,7 +131,7 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
>  	if (err)
>  		goto err_obj;
>  
> -	rq = igt_request_alloc(ctx, engine);
> +	rq = intel_context_create_request(ce);
>  	if (IS_ERR(rq)) {
>  		err = PTR_ERR(rq);
>  		goto err_pin;
> @@ -145,7 +146,7 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
>  		goto err_req;
>  
>  	srm = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
> -	if (INTEL_GEN(ctx->i915) >= 8)
> +	if (INTEL_GEN(engine->i915) >= 8)
>  		srm++;
>  
>  	cs = intel_ring_begin(rq, 4 * RING_MAX_NONPRIV_SLOTS);
> @@ -200,16 +201,16 @@ print_results(const struct intel_engine_cs *engine, const u32 *results)
>  	}
>  }
>  
> -static int check_whitelist(struct i915_gem_context *ctx,
> -			   struct intel_engine_cs *engine)
> +static int check_whitelist(struct intel_context *ce)
>  {
> +	struct intel_engine_cs *engine = ce->engine;
>  	struct drm_i915_gem_object *results;
>  	struct intel_wedge_me wedge;
>  	u32 *vaddr;
>  	int err;
>  	int i;
>  
> -	results = read_nonprivs(ctx, engine);
> +	results = read_nonprivs(ce);
>  	if (IS_ERR(results))
>  		return PTR_ERR(results);
>  
> @@ -293,8 +294,7 @@ static int check_whitelist_across_reset(struct intel_engine_cs *engine,
>  					int (*reset)(struct intel_engine_cs *),
>  					const char *name)
>  {
> -	struct drm_i915_private *i915 = engine->i915;
> -	struct i915_gem_context *ctx, *tmp;
> +	struct intel_context *ce, *tmp;
>  	struct igt_spinner spin;
>  	intel_wakeref_t wakeref;
>  	int err;
> @@ -302,15 +302,15 @@ static int check_whitelist_across_reset(struct intel_engine_cs *engine,
>  	pr_info("Checking %d whitelisted registers on %s (RING_NONPRIV) [%s]\n",
>  		engine->whitelist.count, engine->name, name);
>  
> -	ctx = kernel_context(i915);
> -	if (IS_ERR(ctx))
> -		return PTR_ERR(ctx);
> +	ce = intel_context_create(engine);
> +	if (IS_ERR(ce))
> +		return PTR_ERR(ce);
>  
>  	err = igt_spinner_init(&spin, engine->gt);
>  	if (err)
>  		goto out_ctx;
>  
> -	err = check_whitelist(ctx, engine);
> +	err = check_whitelist(ce);
>  	if (err) {
>  		pr_err("Invalid whitelist *before* %s reset!\n", name);
>  		goto out_spin;
> @@ -330,22 +330,22 @@ static int check_whitelist_across_reset(struct intel_engine_cs *engine,
>  		goto out_spin;
>  	}
>  
> -	err = check_whitelist(ctx, engine);
> +	err = check_whitelist(ce);
>  	if (err) {
>  		pr_err("Whitelist not preserved in context across %s reset!\n",
>  		       name);
>  		goto out_spin;
>  	}
>  
> -	tmp = kernel_context(i915);
> +	tmp = intel_context_create(engine);
>  	if (IS_ERR(tmp)) {
>  		err = PTR_ERR(tmp);
>  		goto out_spin;
>  	}
> -	kernel_context_close(ctx);
> -	ctx = tmp;
> +	intel_context_put(ce);
> +	ce = tmp;
>  
> -	err = check_whitelist(ctx, engine);
> +	err = check_whitelist(ce);
>  	if (err) {
>  		pr_err("Invalid whitelist *after* %s reset in fresh context!\n",
>  		       name);
> @@ -355,7 +355,7 @@ static int check_whitelist_across_reset(struct intel_engine_cs *engine,
>  out_spin:
>  	igt_spinner_fini(&spin);
>  out_ctx:
> -	kernel_context_close(ctx);
> +	intel_context_put(ce);
>  	return err;
>  }
>  
> @@ -786,15 +786,15 @@ static int live_reset_whitelist(void *arg)
>  	return err;
>  }
>  
> -static int read_whitelisted_registers(struct i915_gem_context *ctx,
> -				      struct intel_engine_cs *engine,
> +static int read_whitelisted_registers(struct intel_context *ce,
>  				      struct i915_vma *results)
>  {
> +	struct intel_engine_cs *engine = ce->engine;
>  	struct i915_request *rq;
>  	int i, err = 0;
>  	u32 srm, *cs;
>  
> -	rq = igt_request_alloc(ctx, engine);
> +	rq = intel_context_create_request(ce);
>  	if (IS_ERR(rq))
>  		return PTR_ERR(rq);
>  
> @@ -807,7 +807,7 @@ static int read_whitelisted_registers(struct i915_gem_context *ctx,
>  		goto err_req;
>  
>  	srm = MI_STORE_REGISTER_MEM;
> -	if (INTEL_GEN(ctx->i915) >= 8)
> +	if (INTEL_GEN(engine->i915) >= 8)
>  		srm++;
>  
>  	cs = intel_ring_begin(rq, 4 * engine->whitelist.count);
> @@ -834,18 +834,15 @@ static int read_whitelisted_registers(struct i915_gem_context *ctx,
>  	return request_add_sync(rq, err);
>  }
>  
> -static int scrub_whitelisted_registers(struct i915_gem_context *ctx,
> -				       struct intel_engine_cs *engine)
> +static int scrub_whitelisted_registers(struct intel_context *ce)
>  {
> -	struct i915_address_space *vm;
> +	struct intel_engine_cs *engine = ce->engine;
>  	struct i915_request *rq;
>  	struct i915_vma *batch;
>  	int i, err = 0;
>  	u32 *cs;
>  
> -	vm = i915_gem_context_get_vm_rcu(ctx);
> -	batch = create_batch(vm);
> -	i915_vm_put(vm);
> +	batch = create_batch(ce->vm);
>  	if (IS_ERR(batch))
>  		return PTR_ERR(batch);
>  
> @@ -873,7 +870,7 @@ static int scrub_whitelisted_registers(struct i915_gem_context *ctx,
>  	i915_gem_object_flush_map(batch->obj);
>  	intel_gt_chipset_flush(engine->gt);
>  
> -	rq = igt_request_alloc(ctx, engine);
> +	rq = intel_context_create_request(ce);
>  	if (IS_ERR(rq)) {
>  		err = PTR_ERR(rq);
>  		goto err_unpin;
> @@ -1016,7 +1013,6 @@ static int live_isolated_whitelist(void *arg)
>  {
>  	struct intel_gt *gt = arg;
>  	struct {
> -		struct i915_gem_context *ctx;
>  		struct i915_vma *scratch[2];
>  	} client[2] = {};
>  	struct intel_engine_cs *engine;
> @@ -1032,61 +1028,55 @@ static int live_isolated_whitelist(void *arg)
>  		return 0;
>  
>  	for (i = 0; i < ARRAY_SIZE(client); i++) {
> -		struct i915_address_space *vm;
> -		struct i915_gem_context *c;
> -
> -		c = kernel_context(gt->i915);
> -		if (IS_ERR(c)) {
> -			err = PTR_ERR(c);
> -			goto err;
> -		}
> -
> -		vm = i915_gem_context_get_vm_rcu(c);
> -
> -		client[i].scratch[0] = create_scratch(vm, 1024);
> +		client[i].scratch[0] = create_scratch(gt->vm, 1024);
>  		if (IS_ERR(client[i].scratch[0])) {
>  			err = PTR_ERR(client[i].scratch[0]);
> -			i915_vm_put(vm);
> -			kernel_context_close(c);
>  			goto err;
>  		}
>  
> -		client[i].scratch[1] = create_scratch(vm, 1024);
> +		client[i].scratch[1] = create_scratch(gt->vm, 1024);
>  		if (IS_ERR(client[i].scratch[1])) {
>  			err = PTR_ERR(client[i].scratch[1]);
>  			i915_vma_unpin_and_release(&client[i].scratch[0], 0);
> -			i915_vm_put(vm);
> -			kernel_context_close(c);
>  			goto err;
>  		}
> -
> -		client[i].ctx = c;
> -		i915_vm_put(vm);
>  	}
>  
>  	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce[2];
> +
>  		if (!engine->kernel_context->vm)
>  			continue;
>  
>  		if (!whitelist_writable_count(engine))
>  			continue;
>  
> +		ce[0] = intel_context_create(engine);
> +		if (IS_ERR(ce[0])) {
> +			err = PTR_ERR(ce[0]);
> +			break;
> +		}
> +		ce[1] = intel_context_create(engine);
> +		if (IS_ERR(ce[1])) {
> +			err = PTR_ERR(ce[1]);
> +			intel_context_put(ce[0]);
> +			break;
> +		}
> +
>  		/* Read default values */
> -		err = read_whitelisted_registers(client[0].ctx, engine,
> -						 client[0].scratch[0]);
> +		err = read_whitelisted_registers(ce[0], client[0].scratch[0]);
>  		if (err)
> -			goto err;
> +			goto err_ce;
>  
>  		/* Try to overwrite registers (should only affect ctx0) */
> -		err = scrub_whitelisted_registers(client[0].ctx, engine);
> +		err = scrub_whitelisted_registers(ce[0]);
>  		if (err)
> -			goto err;
> +			goto err_ce;
>  
>  		/* Read values from ctx1, we expect these to be defaults */
> -		err = read_whitelisted_registers(client[1].ctx, engine,
> -						 client[1].scratch[0]);
> +		err = read_whitelisted_registers(ce[1], client[1].scratch[0]);
>  		if (err)
> -			goto err;
> +			goto err_ce;
>  
>  		/* Verify that both reads return the same default values */
>  		err = check_whitelisted_registers(engine,
> @@ -1094,31 +1084,29 @@ static int live_isolated_whitelist(void *arg)
>  						  client[1].scratch[0],
>  						  result_eq);
>  		if (err)
> -			goto err;
> +			goto err_ce;
>  
>  		/* Read back the updated values in ctx0 */
> -		err = read_whitelisted_registers(client[0].ctx, engine,
> -						 client[0].scratch[1]);
> +		err = read_whitelisted_registers(ce[0], client[0].scratch[1]);
>  		if (err)
> -			goto err;
> +			goto err_ce;
>  
>  		/* User should be granted privilege to overwhite regs */
>  		err = check_whitelisted_registers(engine,
>  						  client[0].scratch[0],
>  						  client[0].scratch[1],
>  						  result_neq);
> +err_ce:
> +		intel_context_put(ce[1]);
> +		intel_context_put(ce[0]);
>  		if (err)
> -			goto err;
> +			break;
>  	}
>  
>  err:
>  	for (i = 0; i < ARRAY_SIZE(client); i++) {
> -		if (!client[i].ctx)
> -			break;
> -
>  		i915_vma_unpin_and_release(&client[i].scratch[1], 0);
>  		i915_vma_unpin_and_release(&client[i].scratch[0], 0);
> -		kernel_context_close(client[i].ctx);
>  	}
>  
>  	if (igt_flush_test(gt->i915))
> @@ -1128,18 +1116,21 @@ static int live_isolated_whitelist(void *arg)
>  }
>  
>  static bool
> -verify_wa_lists(struct i915_gem_context *ctx, struct wa_lists *lists,
> +verify_wa_lists(struct intel_gt *gt, struct wa_lists *lists,
>  		const char *str)
>  {
> -	struct drm_i915_private *i915 = ctx->i915;
> -	struct i915_gem_engines_iter it;
> -	struct intel_context *ce;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
>  	bool ok = true;
>  
> -	ok &= wa_list_verify(&i915->uncore, &lists->gt_wa_list, str);
> +	ok &= wa_list_verify(gt->uncore, &lists->gt_wa_list, str);
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce;
>  
> -	for_each_gem_engine(ce, i915_gem_context_engines(ctx), it) {
> -		enum intel_engine_id id = ce->engine->id;
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce))
> +			return false;
>  
>  		ok &= engine_wa_list_verify(ce,
>  					    &lists->engine[id].wa_list,
> @@ -1148,6 +1139,8 @@ verify_wa_lists(struct i915_gem_context *ctx, struct wa_lists *lists,
>  		ok &= engine_wa_list_verify(ce,
>  					    &lists->engine[id].ctx_wa_list,
>  					    str) == 0;
> +
> +		intel_context_put(ce);
>  	}
>  
>  	return ok;
> @@ -1157,7 +1150,6 @@ static int
>  live_gpu_reset_workarounds(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> -	struct i915_gem_context *ctx;
>  	intel_wakeref_t wakeref;
>  	struct wa_lists lists;
>  	bool ok;
> @@ -1165,12 +1157,6 @@ live_gpu_reset_workarounds(void *arg)
>  	if (!intel_has_gpu_reset(gt))
>  		return 0;
>  
> -	ctx = kernel_context(gt->i915);
> -	if (IS_ERR(ctx))
> -		return PTR_ERR(ctx);
> -
> -	i915_gem_context_lock_engines(ctx);
> -
>  	pr_info("Verifying after GPU reset...\n");
>  
>  	igt_global_reset_lock(gt);
> @@ -1178,17 +1164,15 @@ live_gpu_reset_workarounds(void *arg)
>  
>  	reference_lists_init(gt, &lists);
>  
> -	ok = verify_wa_lists(ctx, &lists, "before reset");
> +	ok = verify_wa_lists(gt, &lists, "before reset");
>  	if (!ok)
>  		goto out;
>  
>  	intel_gt_reset(gt, ALL_ENGINES, "live_workarounds");
>  
> -	ok = verify_wa_lists(ctx, &lists, "after reset");
> +	ok = verify_wa_lists(gt, &lists, "after reset");
>  
>  out:
> -	i915_gem_context_unlock_engines(ctx);
> -	kernel_context_close(ctx);
>  	reference_lists_fini(gt, &lists);
>  	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  	igt_global_reset_unlock(gt);
> @@ -1200,8 +1184,8 @@ static int
>  live_engine_reset_workarounds(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> -	struct i915_gem_engines_iter it;
> -	struct i915_gem_context *ctx;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
>  	struct intel_context *ce;
>  	struct igt_spinner spin;
>  	struct i915_request *rq;
> @@ -1212,30 +1196,30 @@ live_engine_reset_workarounds(void *arg)
>  	if (!intel_has_reset_engine(gt))
>  		return 0;
>  
> -	ctx = kernel_context(gt->i915);
> -	if (IS_ERR(ctx))
> -		return PTR_ERR(ctx);
> -
>  	igt_global_reset_lock(gt);
>  	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>  
>  	reference_lists_init(gt, &lists);
>  
> -	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
> -		struct intel_engine_cs *engine = ce->engine;
> +	for_each_engine(engine, gt, id) {
>  		bool ok;
>  
>  		pr_info("Verifying after %s reset...\n", engine->name);
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			ret = PTR_ERR(ce);
> +			break;
> +		}
>  
> -		ok = verify_wa_lists(ctx, &lists, "before reset");
> +		ok = verify_wa_lists(gt, &lists, "before reset");
>  		if (!ok) {
>  			ret = -ESRCH;
>  			goto err;
>  		}
>  
> -		intel_engine_reset(engine, "live_workarounds");
> +		intel_engine_reset(engine, "live_workarounds:idle");
>  
> -		ok = verify_wa_lists(ctx, &lists, "after idle reset");
> +		ok = verify_wa_lists(gt, &lists, "after idle reset");
>  		if (!ok) {
>  			ret = -ESRCH;
>  			goto err;
> @@ -1259,23 +1243,26 @@ live_engine_reset_workarounds(void *arg)
>  			goto err;
>  		}
>  
> -		intel_engine_reset(engine, "live_workarounds");
> +		intel_engine_reset(engine, "live_workarounds:active");
>  
>  		igt_spinner_end(&spin);
>  		igt_spinner_fini(&spin);
>  
> -		ok = verify_wa_lists(ctx, &lists, "after busy reset");
> +		ok = verify_wa_lists(gt, &lists, "after busy reset");
>  		if (!ok) {
>  			ret = -ESRCH;
>  			goto err;
>  		}
> -	}
> +
>  err:
> -	i915_gem_context_unlock_engines(ctx);
> +		intel_context_put(ce);
> +		if (ret)
> +			break;
> +	}
> +
>  	reference_lists_fini(gt, &lists);
>  	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  	igt_global_reset_unlock(gt);
> -	kernel_context_close(ctx);
>  
>  	igt_flush_test(gt->i915);
>  
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
