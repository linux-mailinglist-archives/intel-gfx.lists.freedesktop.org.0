Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 062BC4E90EC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEDF10E64A;
	Mon, 28 Mar 2022 09:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619CD10E64A;
 Mon, 28 Mar 2022 09:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648459021; x=1679995021;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KXCQvuJD85iykreu8whHSzASy54oeV9PQoULuWyxKCE=;
 b=A+8501wRnJDBiPwdo8uhYqeX3NWPr3PqCJaufyC4KlL3Ioo2WtK9j2W1
 BB6YPf0MP13/QmviYezvpdcthcWRi8MT76KfZsJSrOStQ4z5fdkiNZlT+
 LxIONmTu5c056O7bUDeqvnSPG5XYK04uNXXgG9KCy3sOGL42rP/XoWpQW
 ErAPj2wzDMcUFfl3cx51MIojrS1p+U77uuP4W9ywWR8fSbrsx4EPZk+/g
 uai1aC4hqMqCh6M9bTxJDPTTLB/gQlORVEvDBD8Q3bjbBNC5/YJaoQAwu
 8g6Kt316lWkxJlIytaOmB0pNa36yGQiSqhkZ7i8+uNpL4n/MMFTUB79IM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="259140161"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="259140161"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:17:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="603961885"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO [10.249.254.86])
 ([10.249.254.86])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:16:59 -0700
Message-ID: <3f35c6fe-5564-f39f-0cd1-876faf331be3@linux.intel.com>
Date: Mon, 28 Mar 2022 11:16:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220325090958.408654-1-matthew.auld@intel.com>
 <20220325090958.408654-2-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220325090958.408654-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 2/3] test/gem_lmem_swapping: fix
 physical engine usage
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/25/22 10:09, Matthew Auld wrote:
> During execbuf DG2 currently just hits:
>
> 	"execbuf with unknown ring: 5"
>
> It looks like the fix is to convert the test over to using the
> non-legacy API where we instead fill the ctx with all the physical
> engines and then engine/ring becomes the index into this.
>
> v2:
>    - Make sure we destroy our newly created contexts(Ashutosh)
>    - Tweak the commit message so that we are talking less nonsense(Tvrtko)
>    - s/i915/fd/ when calling set_persistence
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5192
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


> ---
>   tests/i915/gem_lmem_swapping.c | 29 +++++++++++++++++++++--------
>   1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 193ff370..526835cc 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -126,6 +126,7 @@ verify_object(int i915, const struct object *obj,  unsigned int flags)
>   }
>   
>   static void move_to_lmem(int i915,
> +			 const intel_ctx_t *ctx,
>   			 struct object *list,
>   			 unsigned int num,
>   			 uint32_t batch,
> @@ -137,6 +138,7 @@ static void move_to_lmem(int i915,
>   		.buffers_ptr = to_user_pointer(obj),
>   		.buffer_count = 1 + num,
>   		.flags = I915_EXEC_NO_RELOC | I915_EXEC_HANDLE_LUT | engine,
> +		.rsvd1 = ctx->id,
>   	};
>   	unsigned int i, ret;
>   
> @@ -156,6 +158,7 @@ retry:
>   }
>   
>   static void __do_evict(int i915,
> +		       const intel_ctx_t *ctx,
>   		       struct drm_i915_gem_memory_class_instance *region,
>   		       struct params *params,
>   		       unsigned int seed)
> @@ -170,7 +173,6 @@ static void __do_evict(int i915,
>   	struct timespec t = {};
>   	unsigned int num;
>   
> -	__gem_context_set_persistence(i915, 0, false);
>   	size = 4096;
>   	batch = create_bo(i915, &size, region, params->oom_test);
>   
> @@ -201,7 +203,7 @@ static void __do_evict(int i915,
>   		}
>   		obj->handle = create_bo(i915, &obj->size, region, params->oom_test);
>   
> -		move_to_lmem(i915, objects + i, 1, batch, engine,
> +		move_to_lmem(i915, ctx, objects + i, 1, batch, engine,
>   			     params->oom_test);
>   		if (params->flags & TEST_VERIFY)
>   			init_object(i915, obj, rand(), params->flags);
> @@ -226,7 +228,7 @@ static void __do_evict(int i915,
>   			idx = (idx + 1) % params->count;
>   		}
>   
> -		move_to_lmem(i915, list, num, batch, engine, params->oom_test);
> +		move_to_lmem(i915, ctx, list, num, batch, engine, params->oom_test);
>   
>   		if (params->flags & TEST_ENGINES)
>   			engine = (engine + 1) % __num_engines__;
> @@ -342,6 +344,7 @@ static void fill_params(int i915, struct params *params,
>   }
>   
>   static void test_evict(int i915,
> +		       const intel_ctx_t *ctx,
>   		       struct drm_i915_memory_region_info *region,
>   		       unsigned int flags)
>   {
> @@ -353,14 +356,18 @@ static void test_evict(int i915,
>   	if (flags & TEST_PARALLEL) {
>   		int fd = gem_reopen_driver(i915);
>   
> +		ctx = intel_ctx_create_all_physical(fd);
> +		__gem_context_set_persistence(fd, ctx->id, false);
> +
>   		igt_fork(child, nproc)
> -			__do_evict(fd, &region->region, &params,
> +			__do_evict(fd, ctx, &region->region, &params,
>   				   params.seed + child + 1);
>   
>   		igt_waitchildren();
> +		intel_ctx_destroy(fd, ctx);
>   		close(fd);
>   	} else {
> -		__do_evict(i915, &region->region, &params, params.seed);
> +		__do_evict(i915, ctx, &region->region, &params, params.seed);
>   	}
>   }
>   
> @@ -399,6 +406,7 @@ static void smem_oom_exit_handler(int sig)
>   }
>   
>   static void test_smem_oom(int i915,
> +			  const intel_ctx_t *ctx,
>   			  struct drm_i915_memory_region_info *region)
>   {
>   	const uint64_t smem_size = intel_get_total_ram_mb() +
> @@ -421,7 +429,7 @@ static void test_smem_oom(int i915,
>   		fill_params(i915, &params, region, 0, 1, true);
>   
>   		igt_install_exit_handler(smem_oom_exit_handler);
> -		__do_evict(fd, &region->region, &params,
> +		__do_evict(fd, ctx, &region->region, &params,
>   			   params.seed + child + 1);
>   
>   		close(fd);
> @@ -513,6 +521,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>   		{ "parallel-multi", TEST_PARALLEL | TEST_RANDOM | TEST_VERIFY | TEST_ENGINES | TEST_MULTI },
>   		{ }
>   	};
> +	const intel_ctx_t *ctx;
>   	int i915 = -1;
>   
>   	igt_fixture {
> @@ -528,19 +537,23 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>   		for_each_physical_engine(i915, e)
>   			__num_engines__++;
>   		igt_require(__num_engines__);
> +		ctx = intel_ctx_create_all_physical(i915);
> +		__gem_context_set_persistence(i915, ctx->id, false);
> +
>   	}
>   
>   	for (test = tests; test->name; test++) {
>   		igt_describe("Exercise local memory swapping to system memory");
>   		dynamic_lmem_subtest(region, regions, test->name)
> -			test_evict(i915, region, test->flags);
> +			test_evict(i915, ctx, region, test->flags);
>   	}
>   
>   	igt_describe("Exercise local memory swapping during exhausting system memory");
>   	dynamic_lmem_subtest(region, regions, "smem-oom")
> -		test_smem_oom(i915, region);
> +		test_smem_oom(i915, ctx, region);
>   
>   	igt_fixture {
> +		intel_ctx_destroy(i915, ctx);
>   		free(regions);
>   		close(i915);
>   	}
