Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F6E15BB2C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 10:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F3C6F575;
	Thu, 13 Feb 2020 09:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE216F575;
 Thu, 13 Feb 2020 09:08:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 01:08:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="227172776"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 Feb 2020 01:08:01 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1e8603fe-d4b8-5860-37cc-6ac381276e6d@linux.intel.com>
Date: Thu, 13 Feb 2020 09:07:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_persistence:
 Race context closure with replace-engines
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


On 11/02/2020 19:22, Chris Wilson wrote:
> Tvrtko spotted a race condition between replacing a set of hanging
> engines and closing the context. So exercise it.
> 
> 5s is not much time to hit the small window, but a little bit of testing
> several times a day is better than nothing.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_ctx_persistence.c | 93 ++++++++++++++++++++++++++++++++
>   1 file changed, 93 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index 22f29d25e..6321dbe67 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -33,6 +33,7 @@
>   #include "i915/gem_engine_topology.h"
>   #include "i915/gem_ring.h"
>   #include "i915/gem_submission.h"
> +#include "igt_aux.h"
>   #include "igt_debugfs.h"
>   #include "igt_dummyload.h"
>   #include "igt_gt.h"
> @@ -803,6 +804,95 @@ static void replace_engines(int i915, const struct intel_execution_engine2 *e)
>   	gem_quiescent_gpu(i915);
>   }
>   
> +struct close_race {
> +	int pipe[2];
> +};
> +
> +static void race_set_engines(int i915, int fd)
> +{
> +	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
> +		.engines = {}
> +	};
> +	struct drm_i915_gem_context_param param = {
> +		.param = I915_CONTEXT_PARAM_ENGINES,
> +		.value = to_user_pointer(&engines),
> +		.size = sizeof(engines),
> +	};
> +
> +	while (read(fd, &param.ctx_id, sizeof(param.ctx_id)) > 0) {
> +		if (!param.ctx_id)
> +			break;
> +		__gem_context_set_param(i915, &param);
> +	}
> +}
> +
> +static void close_replace_race(int i915)
> +{
> +	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> +	struct close_race *t;
> +	int fence = -1;
> +
> +	/*
> +	 * Tvrtko being the evil genius noticed that if we could successfully
> +	 * replace a set of engines after the context had been closed, those
> +	 * engines could escape oversight.
> +	 */

I think it would read better if you reworded this a bit not to mention 
names and claimed attributes. :)

> +
> +	t = malloc(sizeof(*t) * ncpus);
> +	igt_assert(t);
> +
> +	for (int i = 0; i < ncpus; i++)
> +		igt_assert(pipe(t[i].pipe) == 0);
> +
> +	igt_fork(child, ncpus) {
> +		close(t[child].pipe[1]);
> +		race_set_engines(i915, t[child].pipe[0]);
> +	}
> +
> +	for (int i = 0; i < ncpus; i++)
> +		close(t[i].pipe[0]);
> +
> +	igt_until_timeout(5) {
> +		igt_spin_t *spin;
> +		uint32_t ctx;
> +
> +		ctx = gem_context_clone_with_engines(i915, 0);
> +		gem_context_set_persistence(i915, ctx, true);
> +
> +		spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_FENCE_OUT);
> +		for (int i = 0; i < ncpus; i++)
> +			write(t[i].pipe[1], &ctx, sizeof(ctx));

It's early so I hope I am not too confused, but drm client in the forked 
process is a different one. So I think it needs to use threads to be 
able to share.

Regards,

Tvrtko

> +
> +		if (fence < 0) {
> +			fence = spin->out_fence;
> +		} else {
> +			int tmp;
> +
> +			tmp = sync_fence_merge(fence, spin->out_fence);
> +			close(fence);
> +			close(spin->out_fence);
> +
> +			fence = tmp;
> +		}
> +		spin->out_fence = -1;
> +
> +		gem_context_destroy(i915, ctx);
> +	}
> +
> +	for (int i = 0; i < ncpus; i++) {
> +		uint32_t end = 0;
> +		write(t[i].pipe[1], &end, sizeof(end));
> +		close(t[i].pipe[1]);
> +	}
> +	igt_waitchildren();
> +	free(t);
> +
> +	igt_assert(sync_fence_wait(fence, MSEC_PER_SEC / 2) == 0);
> +	close(fence);
> +
> +	gem_quiescent_gpu(i915);
> +}
> +
>   static void replace_engines_hostile(int i915,
>   				    const struct intel_execution_engine2 *e)
>   {
> @@ -961,6 +1051,9 @@ igt_main
>   					replace_engines_hostile(i915, e);
>   			}
>   		}
> +
> +		igt_subtest("close-replace-race")
> +			close_replace_race(i915);
>   	}
>   
>   	igt_fixture {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
