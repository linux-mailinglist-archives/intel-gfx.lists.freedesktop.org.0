Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D685D1B825E
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 01:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D4E6E0F6;
	Fri, 24 Apr 2020 23:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E396E0F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 23:14:05 +0000 (UTC)
IronPort-SDR: EIARc3ixYDzV6v+y9b/cuccPWHGUVUx5szAXWpSXWp6nWhKz23XM+xlAMwuqtsOJIOLSPD4H+q
 nkH1GHn/etmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 16:14:05 -0700
IronPort-SDR: e1COPzwb7GJHh0577j+cSea2+xPL0jU0DQtI39JU6Gg2uW0UmfvrY+dLdJxZsZESpEhXGAaoDp
 5iDwMpatyEnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="259995956"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 24 Apr 2020 16:14:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D69295C1D8E; Sat, 25 Apr 2020 02:12:06 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200424083303.19226-2-chris@chris-wilson.co.uk>
References: <20200424083303.19226-1-chris@chris-wilson.co.uk>
 <20200424083303.19226-2-chris@chris-wilson.co.uk>
Date: Sat, 25 Apr 2020 02:12:06 +0300
Message-ID: <87eesclbqx.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/selftets: Check random hang
 recovery
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

> Userspace is untrusted and allowed to submit anything to the GPU for
> execution, including random garbage. Our recovery should do the right
> thing.
>

Subject:
s/tets/tests

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  .../drm/i915/gem/selftests/i915_gem_context.c | 157 ++++++++++++++++++
>  1 file changed, 157 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index c5c3433174dc..4cda46cfbe2a 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -2305,6 +2305,162 @@ static int igt_reg_isolation(void *arg)
>  	return err;
>  }
>  
> +static struct i915_request *
> +exec_obj(struct i915_gem_context *ctx,
> +	 struct intel_engine_cs *engine,
> +	 struct drm_i915_gem_object *obj)
> +{
> +	struct intel_context *ce;
> +	struct i915_request *rq;
> +	struct i915_vma *vma;
> +	int err;
> +
> +	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
> +	if (IS_ERR(ce))
> +		return ERR_CAST(ce);
> +
> +	vma = i915_vma_instance(obj, ce->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err_ce;
> +	}
> +
> +	err = i915_vma_pin(vma, 0, 0, PIN_USER);
> +	if (err)
> +		goto err_ce;
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq))
> +		goto err_unpin;
> +
> +	if (engine->emit_init_breadcrumb) {
> +		err = engine->emit_init_breadcrumb(rq);
> +		if (err)
> +			goto err_rq;
> +	}
> +
> +	i915_vma_lock(vma);
> +	err = i915_request_await_object(rq, vma->obj, false);
> +	if (err == 0)
> +		err = i915_vma_move_to_active(vma, rq, 0);
> +	i915_vma_unlock(vma);
> +	if (err)
> +		goto err_rq;
> +
> +	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
> +
> +err_rq:
> +	if (!err)
> +		i915_request_get(rq);
> +	else
> +		i915_request_set_error_once(rq, err);
> +	i915_request_add(rq);
> +
> +err_unpin:
> +	i915_vma_unpin(vma);
> +err_ce:
> +	intel_context_put(ce);
> +	return err ? ERR_PTR(err) : rq;
> +}
> +
> +static int randomise_object(struct drm_i915_gem_object *obj,
> +			    struct rnd_state *prng)
> +{
> +	unsigned long i;
> +	u32 *cs;
> +
> +	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +
> +	for (i = 0; i < obj->base.size / sizeof(*cs); i++)
> +		cs[i] = prandom_u32_state(prng);
> +
> +	i915_gem_object_flush_map(obj);
> +	i915_gem_object_unpin_map(obj);
> +
> +	return 0;
> +}
> +
> +static bool skip_garbage(const struct intel_engine_cs *engine)
> +{
> +	if (IS_GEN(engine->i915, 6))
> +		return true;
> +
> +	return false;
> +}
> +
> +static int igt_ctx_garbage(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct drm_i915_gem_object *obj;
> +	struct intel_engine_cs *engine;
> +	struct i915_gem_context *ctx;
> +	I915_RND_STATE(prng);
> +	struct file *file;
> +	int err;
> +
> +	/*
> +	 * Imagine if userspace went crazy and submitted a batch of nothing
> +	 * but random junk. The GPU may hang and we may be forced to kill
> +	 * the context; but the driver will go on!
> +	 */
> +
> +	file = mock_file(i915);
> +	if (IS_ERR(file))
> +		return PTR_ERR(file);
> +
> +	ctx = live_context(i915, file);
> +	if (IS_ERR(ctx)) {
> +		err = PTR_ERR(ctx);
> +		goto out_file;
> +	}
> +
> +	obj = i915_gem_object_create_internal(i915, 4096);
> +	if (IS_ERR(obj)) {
> +		err = PTR_ERR(obj);
> +		goto out_file;
> +	}
> +
> +	err = randomise_object(obj, &prng);
> +	if (err)
> +		goto out_obj;
> +
> +	i915_gem_context_clear_bannable(ctx);
> +	for_each_uabi_engine(engine, i915) {
> +		struct i915_request *rq;
> +
> +		if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN) &&
> +		    skip_garbage(engine))
> +			continue;
> +
> +		rq = exec_obj(ctx, engine, obj);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +
> +		if (i915_request_wait(rq,
> +				      I915_WAIT_INTERRUPTIBLE,
> +				      HZ / 2) < 0) {
> +			intel_gt_handle_error(engine->gt,
> +					      engine->mask, 0,
> +					      NULL);
> +		}
> +
> +		i915_request_put(rq);
> +	}
> +
> +	if (igt_flush_test(i915))
> +		err = -EIO;
> +
> +out_obj:
> +	i915_gem_object_put(obj);
> +out_file:
> +	fput(file);
> +	return err;
> +}
> +
>  static bool skip_unused_engines(struct intel_context *ce, void *data)
>  {
>  	return !ce->state;
> @@ -2441,6 +2597,7 @@ int i915_gem_context_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(igt_shared_ctx_exec),
>  		SUBTEST(igt_vm_isolation),
>  		SUBTEST(igt_reg_isolation),
> +		SUBTEST(igt_ctx_garbage),

igt_exec_garbage?

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  	};
>  
>  	if (intel_gt_is_wedged(&i915->gt))
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
