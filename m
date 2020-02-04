Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66538151DB9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1B86E857;
	Tue,  4 Feb 2020 15:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1647C6E855;
 Tue,  4 Feb 2020 15:57:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 07:57:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="224334326"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 04 Feb 2020 07:57:25 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200204152456.1137083-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2c33f8e3-0b3e-6cd8-9abb-efad53ea5274@linux.intel.com>
Date: Tue, 4 Feb 2020 15:57:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200204152456.1137083-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Cover all engines
 for nohangcheck
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


On 04/02/2020 15:24, Chris Wilson wrote:
> No engine can be missed when verifying that a rogue user cannot cause a
> denial-of-service with nohangcheck.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_ctx_exec.c | 35 +++++++++++++++++++++++++++++------
>   1 file changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> index b1ae65774..2a16357a4 100644
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
> +	int64_t timeout = MSEC_PER_SEC / 2;
>   	igt_hang_t hang;
> +	int fence = -1;
>   	uint32_t ctx;
>   	int err = 0;
>   	int dir;
> @@ -223,16 +224,35 @@ static void nohangcheck_hostile(int i915)
>   
>   	igt_require(__enable_hangcheck(dir, false));
>   
> -	spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_NO_PREEMPTION);
> +	for_each_physical_engine(e, i915) {

I think we shouldn't add more of for_each_physical_engine, but to use 
new style need to think where we are with the overall design of 
iterators and stuff.

> +		igt_spin_t *spin;
> +
> +		spin = igt_spin_new(i915, ctx,
> +				    .engine = eb_ring(e),
> +				    .flags = (IGT_SPIN_NO_PREEMPTION |
> +					      IGT_SPIN_FENCE_OUT));
> +
> +		igt_assert(spin->out_fence != -1);

 >= 0 would be more correct. Or your beloved igt_assert_fd. ;)

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
> +	if (sync_fence_wait(fence, timeout)) {
>   		igt_debugfs_dump(i915, "i915_engine_info");
>   		err = -ETIME;
>   	}
>   
> -	igt_spin_free(i915, spin);

Could keep last for completeness.

> -
>   	__enable_hangcheck(dir, true);
>   	gem_quiescent_gpu(i915);
>   	igt_disallow_hang(i915, hang);
> @@ -240,6 +260,9 @@ static void nohangcheck_hostile(int i915)
>   	igt_assert_f(err == 0,
>   		     "Hostile unpreemptable context was not cancelled immediately upon closure\n");
>   
> +	igt_assert_eq(sync_fence_status(fence), -EIO);

With composite fences I have a feeling -EIO could mean any fence 
signalled -EIO and we want to check all have, no? At least I hope both 
my assumptions are correct.

> +	close(fence);
> +
>   	close(dir);
>   }
>   
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
