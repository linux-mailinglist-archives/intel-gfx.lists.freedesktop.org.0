Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F692CEF08
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 14:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA006E174;
	Fri,  4 Dec 2020 13:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3E16E174;
 Fri,  4 Dec 2020 13:53:52 +0000 (UTC)
IronPort-SDR: wicbOA20JlDhLWIU1bloBCRZn8l+1JKkE3rgAjQZANqXPE7WXs7xE7kpanBny7cNNIcXTrmkvy
 nziA5JYnPqdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="258090606"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="258090606"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 05:53:52 -0800
IronPort-SDR: FhdTd2REPUfbBS59NdyOr0vuLP8IDou+fLRP/8vSkMYyj7ZI83PQUrgi4ghwTnF/wKzhljmVgH
 FAWAMHushTUQ==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="550959055"
Received: from sgefen-mobl1.ger.corp.intel.com (HELO [10.214.200.164])
 ([10.214.200.164])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 05:53:50 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201203095914.1427672-1-chris@chris-wilson.co.uk>
 <20201204112712.1655631-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5dfc6f3f-5d30-47b0-d524-a4848ae544df@linux.intel.com>
Date: Fri, 4 Dec 2020 13:53:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201204112712.1655631-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_exec: Exercise
 execution along context while closing it
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


On 04/12/2020 11:27, Chris Wilson wrote:
> Race the execution and interrupt handlers along a context, while
> closing it at a random time.
> 
> v2: Some comments to handwave away the knowledge of internal
> implementation details.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_ctx_exec.c | 84 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 84 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> index 194191def..5c6109237 100644
> --- a/tests/i915/gem_ctx_exec.c
> +++ b/tests/i915/gem_ctx_exec.c
> @@ -43,6 +43,7 @@
>   #include "i915/gem.h"
>   #include "igt.h"
>   #include "igt_dummyload.h"
> +#include "igt_rand.h"
>   #include "igt_sysfs.h"
>   #include "sw_sync.h"
>   
> @@ -336,6 +337,86 @@ static void nohangcheck_hostile(int i915)
>   	close(i915);
>   }
>   
> +static void close_race(int i915)
> +{
> +	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> +	uint32_t *contexts;
> +
> +	contexts = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> +	igt_assert(contexts != MAP_FAILED);
> +
> +	for (int child = 0; child < ncpus; child++)
> +		contexts[child] = gem_context_clone_with_engines(i915, 0);
> +
> +	igt_fork(child, ncpus) {
> +		igt_spin_t *spin;
> +
> +		spin = igt_spin_new(i915, .flags = IGT_SPIN_POLL_RUN);
> +		igt_spin_end(spin);
> +		gem_sync(i915, spin->handle);
> +
> +		while (!READ_ONCE(contexts[ncpus])) {
> +			int64_t timeout = 1;
> +
> +			igt_spin_reset(spin);
> +			igt_assert(!igt_spin_has_started(spin));
> +
> +			spin->execbuf.rsvd1 = READ_ONCE(contexts[child]);
> +			if (__gem_execbuf(i915, &spin->execbuf))
> +				continue;
> +
> +			/*
> +			 * One race we are particularly interested in is the
> +			 * handling of interrupt signaling along a closed
> +			 * context. We want to see if we can catch the kernel
> +			 * freeing the context while using it in the interrupt
> +			 * handler.
> +			 *
> +			 * There's no API to mandate that the interrupt is
> +			 * generate for a wait, nor that the implementation
> +			 * details of the kernel will not change to remove
> +			 * context access during interrupt processing. But
> +			 * for now, this should be interesting.
> +			 *
> +			 * Even if the signaling implementation is changed,
> +			 * racing context closure versus execbuf and looking
> +			 * at the outcome is very useful.
> +			 */
> +
> +			igt_assert(gem_bo_busy(i915, spin->handle));
> +			gem_wait(i915, spin->handle, &timeout); /* prime irq */
> +			igt_spin_busywait_until_started(spin);
> +
> +			igt_spin_end(spin);
> +			gem_sync(i915, spin->handle);
> +		}
> +
> +		igt_spin_free(i915, spin);
> +	}
> +
> +	igt_until_timeout(5) {
> +		/*
> +		 * Recreate all the contexts while they are in active use
> +		 * by the children. This may race with any of their ioctls
> +		 * and the kernel's context/request handling.
> +		 */
> +		for (int child = 0; child < ncpus; child++) {
> +			gem_context_destroy(i915, contexts[child]);
> +			contexts[child] =
> +				gem_context_clone_with_engines(i915, 0);
> +		}
> +		usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
> +	}
> +
> +	contexts[ncpus] = 1;
> +	igt_waitchildren();
> +
> +	for (int child = 0; child < ncpus; child++)
> +		gem_context_destroy(i915, contexts[child]);
> +
> +	munmap(contexts, 4096);
> +}
> +
>   igt_main
>   {
>   	const uint32_t batch[2] = { 0, MI_BATCH_BUFFER_END };
> @@ -380,6 +461,9 @@ igt_main
>   	igt_subtest("basic-nohangcheck")
>   		nohangcheck_hostile(fd);
>   
> +	igt_subtest("basic-close-race")
> +		close_race(fd);
> +
>   	igt_subtest("reset-pin-leak") {
>   		int i;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
