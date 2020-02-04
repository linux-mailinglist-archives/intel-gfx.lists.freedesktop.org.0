Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F38151E3C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 17:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB486F3E2;
	Tue,  4 Feb 2020 16:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4396F3E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 16:24:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:24:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="224345820"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 04 Feb 2020 08:24:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200204152456.1137083-1-chris@chris-wilson.co.uk>
 <20200204161916.1299225-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c3283710-ec85-4dfc-3963-c8666c9b4fc4@linux.intel.com>
Date: Tue, 4 Feb 2020 16:24:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200204161916.1299225-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] i915/gem_ctx_exec: Cover all
 engines for nohangcheck
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
Cc: igt-dev@lists.freedsktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/02/2020 16:19, Chris Wilson wrote:
> No engine can be missed when verifying that a rogue user cannot cause a
> denial-of-service with nohangcheck.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
> __for_each_physical_engine, keep the leaks
> ---
>   tests/i915/gem_ctx_exec.c | 38 ++++++++++++++++++++++++++++++++------
>   1 file changed, 32 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> index b1ae65774..aeb8d2976 100644
> --- a/tests/i915/gem_ctx_exec.c
> +++ b/tests/i915/gem_ctx_exec.c
> @@ -42,6 +42,7 @@
>   
>   #include "igt_dummyload.h"
>   #include "igt_sysfs.h"
> +#include "sw_sync.h"
>   
>   IGT_TEST_DESCRIPTION("Test context batch buffer execution.");
>   
> @@ -203,9 +204,9 @@ static bool __enable_hangcheck(int dir, bool state)
>   
>   static void nohangcheck_hostile(int i915)
>   {
> -	int64_t timeout = NSEC_PER_SEC / 2;
> -	igt_spin_t *spin;
> +	const struct intel_execution_engine2 *e;
>   	igt_hang_t hang;
> +	int fence = -1;
>   	uint32_t ctx;
>   	int err = 0;
>   	int dir;
> @@ -215,6 +216,8 @@ static void nohangcheck_hostile(int i915)
>   	 * we forcibly terminate that context.
>   	 */
>   
> +	i915 = gem_reopen_driver(i915);
> +
>   	dir = igt_sysfs_open_parameters(i915);
>   	igt_require(dir != -1);
>   
> @@ -223,16 +226,35 @@ static void nohangcheck_hostile(int i915)
>   
>   	igt_require(__enable_hangcheck(dir, false));
>   
> -	spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_NO_PREEMPTION);
> +	__for_each_physical_engine(i915, e) {
> +		igt_spin_t *spin;
> +
> +		spin = igt_spin_new(i915, ctx,
> +				    .engine = e->flags,
> +				    .flags = (IGT_SPIN_NO_PREEMPTION |
> +					      IGT_SPIN_FENCE_OUT));
> +
> +		igt_assert(spin->out_fence != -1);
> +		if (fence < 0) {
> +			fence = spin->out_fence;
> +			spin->out_fence = -1;
> +		} else {
> +			int new;
> +
> +			new = sync_fence_merge(fence, spin->out_fence);
> +			close(fence);
> +
> +			fence = new;
> +		}
> +	}
>   	gem_context_destroy(i915, ctx);
> +	igt_assert(fence != -1);
>   
> -	if (gem_wait(i915, spin->handle, &timeout)) {
> +	if (sync_fence_wait(fence, MSEC_PER_SEC / 2)) {
>   		igt_debugfs_dump(i915, "i915_engine_info");
>   		err = -ETIME;
>   	}
>   
> -	igt_spin_free(i915, spin);
> -
>   	__enable_hangcheck(dir, true);
>   	gem_quiescent_gpu(i915);
>   	igt_disallow_hang(i915, hang);
> @@ -240,7 +262,11 @@ static void nohangcheck_hostile(int i915)
>   	igt_assert_f(err == 0,
>   		     "Hostile unpreemptable context was not cancelled immediately upon closure\n");
>   
> +	igt_assert_eq(sync_fence_status(fence), -EIO);
> +	close(fence);
> +
>   	close(dir);
> +	close(i915);
>   }
>   
>   igt_main
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
