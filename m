Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 968B915349B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:50:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64BB6E9BF;
	Wed,  5 Feb 2020 15:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D2FA6E9BE;
 Wed,  5 Feb 2020 15:50:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 07:50:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="224689361"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 05 Feb 2020 07:50:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200205133154.1886680-1-chris@chris-wilson.co.uk>
 <20200205134856.1886849-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d1e97dc8-ee11-429c-2554-f99d04b5ce13@linux.intel.com>
Date: Wed, 5 Feb 2020 15:50:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205134856.1886849-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Check that
 we cannot hide hangs on old engines
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/02/2020 13:48, Chris Wilson wrote:
> As the kernel loses track of the context's old engines, if we request
> that the context is non-persistent then any request on the untracked
> engines must be cancelled.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_ctx_persistence.c | 60 +++++++++++++++++++++++++++++++-
>   1 file changed, 59 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index c54797e9b..04a6c179e 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -761,6 +761,49 @@ static void smoketest(int i915)
>   	gem_quiescent_gpu(i915);
>   }
>   
> +static void replace_engines_hostile(int i915,
> +				    const struct intel_execution_engine2 *e)
> +{
> +	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
> +		.engines = {{ e->class, e->instance }}
> +	};
> +	struct drm_i915_gem_context_param param = {
> +		.ctx_id = gem_context_create(i915),
> +		.param = I915_CONTEXT_PARAM_ENGINES,
> +		.value = to_user_pointer(&engines),
> +		.size = sizeof(engines),
> +	};
> +	igt_spin_t *spin[2];
> +	int64_t timeout;
> +
> +	/*
> +	 * Suppose the user tries to hide a hanging batch by replacing
> +	 * the set of engines on the context so that it's not visible
> +	 * at the time of closure? Then we must act when they replace
> +	 * the engines!
> +	 */
> +
> +	gem_context_set_persistence(i915, param.ctx_id, false);
> +
> +	gem_context_set_param(i915, &param);
> +	spin[0] = igt_spin_new(i915, param.ctx_id);
> +
> +	gem_context_set_param(i915, &param);
> +	spin[1] = igt_spin_new(i915, param.ctx_id);
> +
> +	gem_context_destroy(i915, param.ctx_id);

At this point context_close() -> kill_context() but spin[0] 
intel_context no longer in ctx->engines so hangs. spin[1] is terminated.

> +
> +	timeout = reset_timeout_ms * NSEC_PER_MSEC;
> +	igt_assert_eq(gem_wait(i915, spin[1]->handle, &timeout), 0);
> +
> +	timeout = reset_timeout_ms * NSEC_PER_MSEC;
> +	igt_assert_eq(gem_wait(i915, spin[0]->handle, &timeout), 0);
> +
> +	igt_spin_free(i915, spin[1]);
> +	igt_spin_free(i915, spin[0]);
> +	gem_quiescent_gpu(i915);
> +}
> +
>   int i915;
>   
>   static void exit_handler(int sig)
> @@ -793,10 +836,10 @@ igt_main
>   		igt_assert(igt_sysfs_set_parameter
>   			   (i915, "reset", "%d", -1 /* any [default] reset */));
>   
> -		igt_require(has_persistence(i915));
>   		enable_hangcheck(i915);
>   		igt_install_exit_handler(exit_handler);
>   
> +		igt_require(has_persistence(i915));
>   		igt_allow_hang(i915, 0, 0);
>   	}
>   
> @@ -861,6 +904,21 @@ igt_main
>   			smoketest(i915);
>   	}
>   
> +	/* Check interactions with set-engines */
> +	igt_subtest_group {
> +		const struct intel_execution_engine2 *e;
> +
> +		igt_fixture
> +			gem_require_contexts(i915);
> +
> +		igt_subtest_with_dynamic("replace-hostile") {
> +			__for_each_physical_engine(i915, e) {
> +				igt_dynamic_f("%s", e->name)
> +					replace_engines_hostile(i915, e);
> +			}
> +		}
> +	}
> +
>   	igt_fixture {
>   		close(i915);
>   	}
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
