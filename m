Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54F55120B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAD910E240;
	Mon, 20 Jun 2022 08:01:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E402210E240;
 Mon, 20 Jun 2022 08:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655712106; x=1687248106;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PzjEgzrQXZUiTFdEnKuuDbqNCYkK1PDdygpNn6+9Fhk=;
 b=bWCCpvoPMl2wzhcpOwq6FV0UdrMpykRG0Lp3B8wHIrkWDWyENTynSkLG
 D/61U/yLnjx9yn+Y8PsEkegkNAn2O21TdU8NVk83DMiqcGFlKKfi54xrn
 dpRFlytLhIWAUSAJwDFFO4mXpHupl60i63O8LsCgZhavMoifAXpeIAptf
 R8lXt3zA5wSGgo3DeU4ZvVy4McRE9u8sQXWSxwt3eFbcbib2/6Bi0rOHS
 rhHSxOEGr3R3Z8aSh8N213M62olQxfcRZHt+1Shw0hV29TPrngdMRZhNx
 llJyHp7uLW9xMPPyoOaXvp3c0f+FFe3tLiljWs3dzkg/cI5XJxZrzKftI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341514686"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341514686"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:01:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="913547037"
Received: from ksztyber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.20.102])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:01:43 -0700
Date: Mon, 20 Jun 2022 10:01:41 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Message-ID: <YrApZYFmvFRwlW61@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220617090828.568345-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220617090828.568345-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [CI] tests/drm_fdinfo: Test virtual engines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2022-06-17 at 10:08:28 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We need some coverage of the virtual engines.
> 
> v2:
>  * Mark contexts as "allow hang". (Umesh)
>  * Fix destruction order in virtual_all.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  tests/i915/drm_fdinfo.c | 293 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 291 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
> index 3475d35b23b9..65b8b8307c66 100644
> --- a/tests/i915/drm_fdinfo.c
> +++ b/tests/i915/drm_fdinfo.c
> @@ -27,6 +27,7 @@
>  #include "igt_device.h"
>  #include "igt_drm_fdinfo.h"
>  #include "i915/gem.h"
> +#include "i915/gem_vm.h"
>  #include "intel_ctx.h"
>  
>  IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
> @@ -90,10 +91,10 @@ static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>  	struct igt_spin_factory opts = {
>  		.ahnd = ahnd,
>  		.ctx = ctx,
> -		.engine = e->flags,
> +		.engine = e ? e->flags : 0,
>  	};
>  
> -	if (gem_class_can_store_dword(fd, e->class))
> +	if (!e || gem_class_can_store_dword(fd, e->class))
>  		opts.flags |= IGT_SPIN_POLL_RUN;
>  
>  	return __igt_spin_factory(fd, &opts);
> @@ -440,6 +441,274 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  	gem_quiescent_gpu(gem_fd);
>  }
>  
> +static struct i915_engine_class_instance *
> +list_engines(const intel_ctx_cfg_t *cfg,
> +	     unsigned int class, unsigned int *out)
> +{
> +	struct i915_engine_class_instance *ci;
> +	unsigned int count = 0, i;
> +
> +	ci = malloc(cfg->num_engines * sizeof(*ci));
> +	igt_assert(ci);
> +
> +	for (i = 0; i < cfg->num_engines; i++) {
> +		if (class == cfg->engines[i].engine_class)
> +			ci[count++] = cfg->engines[i];
> +	}
> +
> +	if (!count) {
> +		free(ci);
> +		ci = NULL;
> +	}
> +
> +	*out = count;
> +	return ci;
> +}
> +
> +static size_t sizeof_load_balance(int count)
> +{
> +	return offsetof(struct i915_context_engines_load_balance,
> +			engines[count]);
> +}
> +
> +static size_t sizeof_param_engines(int count)
> +{
> +	return offsetof(struct i915_context_param_engines,
> +			engines[count]);
> +}
> +
> +#define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
> +
> +static int __set_load_balancer(int i915, uint32_t ctx,
> +			       const struct i915_engine_class_instance *ci,
> +			       unsigned int count,
> +			       void *ext)
> +{
> +	struct i915_context_engines_load_balance *balancer =
> +		alloca0(sizeof_load_balance(count));
> +	struct i915_context_param_engines *engines =
> +		alloca0(sizeof_param_engines(count + 1));
> +	struct drm_i915_gem_context_param p = {
> +		.ctx_id = ctx,
> +		.param = I915_CONTEXT_PARAM_ENGINES,
> +		.size = sizeof_param_engines(count + 1),
> +		.value = to_user_pointer(engines)
> +	};
> +
> +	balancer->base.name = I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE;
> +	balancer->base.next_extension = to_user_pointer(ext);
> +
> +	igt_assert(count);
> +	balancer->num_siblings = count;
> +	memcpy(balancer->engines, ci, count * sizeof(*ci));
> +
> +	engines->extensions = to_user_pointer(balancer);
> +	engines->engines[0].engine_class =
> +		I915_ENGINE_CLASS_INVALID;
> +	engines->engines[0].engine_instance =
> +		I915_ENGINE_CLASS_INVALID_NONE;
> +	memcpy(engines->engines + 1, ci, count * sizeof(*ci));
> +
> +	return __gem_context_set_param(i915, &p);
> +}
> +
> +static void set_load_balancer(int i915, uint32_t ctx,
> +			      const struct i915_engine_class_instance *ci,
> +			      unsigned int count,
> +			      void *ext)
> +{
> +	igt_assert_eq(__set_load_balancer(i915, ctx, ci, count, ext), 0);
> +}
> +
> +static void
> +virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> +{
> +	intel_ctx_cfg_t cfg = {};
> +
> +	cfg.vm = gem_vm_create(i915);
> +
> +	for (int class = 0; class < 32; class++) {
> +		struct i915_engine_class_instance *ci;
> +		unsigned int count;
> +
> +		if (!gem_class_can_store_dword(i915, class))
> +			continue;
> +
> +		ci = list_engines(base_cfg, class, &count);
> +		if (!ci)
> +			continue;
> +
> +		for (unsigned int pass = 0; pass < count; pass++) {
> +			const intel_ctx_t *ctx;
> +			unsigned long slept;
> +			uint64_t ahnd, val;
> +			igt_spin_t *spin;
> +			igt_hang_t hang;
> +
> +			igt_assert(sizeof(*ci) == sizeof(int));
> +			igt_permute_array(ci, count, igt_exchange_int);
> +
> +			igt_debug("class %u, pass %u/%u...\n", class, pass, count);
> +
> +			ctx = intel_ctx_create(i915, &cfg);
> +			set_load_balancer(i915, ctx->id, ci, count, NULL);
> +			if (flags & FLAG_HANG)
> +				hang = igt_allow_hang(i915, ctx->id, 0);
> +			ahnd = get_reloc_ahnd(i915, ctx->id);
> +
> +			if (flags & TEST_BUSY)
> +				spin = spin_sync(i915, ahnd, ctx, NULL);
> +			else
> +				spin = NULL;
> +
> +			val = read_busy(i915, class);
> +			slept = measured_usleep(batch_duration_ns / 1000);
> +			if (flags & TEST_TRAILING_IDLE)
> +				end_spin(i915, spin, flags);
> +			val = read_busy(i915, class) - val;
> +
> +			if (flags & FLAG_HANG)
> +				igt_force_gpu_reset(i915);
> +			else
> +				end_spin(i915, spin, FLAG_SYNC);
> +
> +			assert_within_epsilon(val,
> +					      flags & TEST_BUSY ?
> +					      slept : 0.0f,
> +					      tolerance);
> +
> +			/* Check for idle after hang. */
> +			if (flags & FLAG_HANG) {
> +				gem_quiescent_gpu(i915);
> +				igt_assert(!gem_bo_busy(i915, spin->handle));
> +
> +				val = read_busy(i915, class);
> +				slept = measured_usleep(batch_duration_ns /
> +							1000);
> +				val = read_busy(i915, class) - val;
> +
> +				assert_within_epsilon(val, 0, tolerance);
> +			}
> +
> +			igt_spin_free(i915, spin);
> +			put_ahnd(ahnd);
> +			if (flags & FLAG_HANG)
> +				igt_disallow_hang(i915, hang);
> +			intel_ctx_destroy(i915, ctx);
> +
> +			gem_quiescent_gpu(i915);
> +		}
> +
> +		free(ci);
> +	}
> +}
> +
> +static void
> +__virt_submit_spin(int i915, igt_spin_t *spin,
> +		   const intel_ctx_t *ctx,
> +		   int offset)
> +{
> +	struct drm_i915_gem_execbuffer2 eb = spin->execbuf;
> +
> +	eb.flags &= ~(0x3f | I915_EXEC_BSD_MASK);
> +	eb.flags |= I915_EXEC_NO_RELOC;
> +	eb.batch_start_offset += offset;
> +	eb.rsvd1 = ctx->id;
> +
> +	gem_execbuf(i915, &eb);
> +}
> +
> +static void
> +virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
> +{
> +	const unsigned int num_engines = base_cfg->num_engines;
> +	intel_ctx_cfg_t cfg = {};
> +
> +	cfg.vm = gem_vm_create(i915);
> +
> +	for (int class = 0; class < 32; class++) {
> +		struct i915_engine_class_instance *ci;
> +		const intel_ctx_t *ctx[num_engines];
> +		igt_hang_t hang[num_engines];
> +		igt_spin_t *spin = NULL;
> +		unsigned int count;
> +		unsigned long slept;
> +		uint64_t val;
> +
> +		if (!gem_class_can_store_dword(i915, class))
> +			continue;
> +
> +		ci = list_engines(base_cfg, class, &count);
> +		if (!ci)
> +			continue;
> +		igt_assert(count <= num_engines);
> +
> +		if (count < 2)
> +			continue;
> +
> +		igt_debug("class %u, %u engines...\n", class, count);
> +
> +		for (unsigned int i = 0; i < count; i++) {
> +			uint64_t ahnd;
> +
> +			igt_assert(sizeof(*ci) == sizeof(int));
> +			igt_permute_array(ci, count, igt_exchange_int);
> +
> +			ctx[i] = intel_ctx_create(i915, &cfg);
> +			set_load_balancer(i915, ctx[i]->id, ci, count, NULL);
> +			if (flags & FLAG_HANG)
> +				hang[i] = igt_allow_hang(i915, ctx[i]->id, 0);
> +			ahnd = get_reloc_ahnd(i915, ctx[i]->id);
> +
> +			if (spin)
> +				__virt_submit_spin(i915, spin, ctx[i], 64);
> +			else
> +				spin = __spin_poll(i915, ahnd, ctx[i], NULL);
> +		}
> +
> +		/* Small delay to allow engines to start. */
> +		usleep(__spin_wait(i915, spin) * count / 1e3);
> +
> +		val = read_busy(i915, class);
> +		slept = measured_usleep(batch_duration_ns / 1000);
> +		if (flags & TEST_TRAILING_IDLE)
> +			end_spin(i915, spin, flags);
> +		val = read_busy(i915, class) - val;
> +
> +		if (flags & FLAG_HANG)
> +			igt_force_gpu_reset(i915);
> +		else
> +			end_spin(i915, spin, FLAG_SYNC);
> +
> +		assert_within_epsilon(val, slept * count, tolerance);
> +
> +		/* Check for idle after hang. */
> +		if (flags & FLAG_HANG) {
> +			gem_quiescent_gpu(i915);
> +			igt_assert(!gem_bo_busy(i915, spin->handle));
> +
> +			val = read_busy(i915, class);
> +			slept = measured_usleep(batch_duration_ns /
> +						1000);
> +			val = read_busy(i915, class) - val;
> +
> +			assert_within_epsilon(val, 0, tolerance);
> +		}
> +
> +		igt_spin_free(i915, spin);
> +		put_ahnd(spin->opts.ahnd);
> +		for (unsigned int i = 0; i < count; i++) {
> +			if (flags & FLAG_HANG)
> +				igt_disallow_hang(i915, hang[i]);
> +			intel_ctx_destroy(i915, ctx[i]);
> +		}
> +
> +		gem_quiescent_gpu(i915);
> +
> +		free(ci);
> +	}
> +}
> +
>  #define test_each_engine(T, i915, ctx, e) \
>  	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
>  		igt_dynamic_f("%s", e->name)
> @@ -489,15 +758,24 @@ igt_main
>  	test_each_engine("idle", i915, ctx, e)
>  		single(i915, ctx, e, 0);
>  
> +	igt_subtest("virtual-idle")
> +		virtual(i915, &ctx->cfg, 0);
> +
>  	/**
>  	 * Test that a single engine reports load correctly.
>  	 */
>  	test_each_engine("busy", i915, ctx, e)
>  		single(i915, ctx, e, TEST_BUSY);
>  
> +	igt_subtest("virtual-busy")
> +		virtual(i915, &ctx->cfg, TEST_BUSY);
> +
>  	test_each_engine("busy-idle", i915, ctx, e)
>  		single(i915, ctx, e, TEST_BUSY | TEST_TRAILING_IDLE);
>  
> +	igt_subtest("virtual-busy-idle")
> +		virtual(i915, &ctx->cfg, TEST_BUSY | TEST_TRAILING_IDLE);
> +
>  	test_each_engine("busy-hang", i915, ctx, e) {
>  		igt_hang_t hang = igt_allow_hang(i915, ctx->id, 0);
>  
> @@ -506,6 +784,9 @@ igt_main
>  		igt_disallow_hang(i915, hang);
>  	}
>  
> +	igt_subtest("virtual-busy-hang")
> +		virtual(i915, &ctx->cfg, TEST_BUSY | FLAG_HANG);
> +
>  	/**
>  	 * Test that when one engine is loaded other report no
>  	 * load.
> @@ -544,6 +825,14 @@ igt_main
>  		all_busy_check_all(i915, ctx, num_engines, classes, num_classes,
>  				   TEST_BUSY | TEST_TRAILING_IDLE);
>  

Please add description to each new test you add.

Regards,
Kamil

> +	igt_subtest("virtual-busy-all")
> +		virtual_all(i915, &ctx->cfg, TEST_BUSY);
> +
> +	igt_subtest("virtual-busy-idle-all")
> +		virtual_all(i915, &ctx->cfg, TEST_BUSY | TEST_TRAILING_IDLE);
> +
> +	igt_subtest("virtual-busy-hang-all")
> +		virtual_all(i915, &ctx->cfg, TEST_BUSY | FLAG_HANG);
>  	/**
>  	 * Test for no cross-client contamination.
>  	 */
> -- 
> 2.34.1
> 
