Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370EC223717
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E09A6E0FF;
	Fri, 17 Jul 2020 08:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828B66E0FF;
 Fri, 17 Jul 2020 08:34:11 +0000 (UTC)
IronPort-SDR: J4/mLQDXPgdY2ch+x1sTnkQDx1ARDbOLzYf8Bwlvk0kxUSNBM91fvOyyPE/Y5QCS1Zef/bxhjQ
 mKhJ4tDe66ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167689124"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="167689124"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:34:11 -0700
IronPort-SDR: ocl+GPfs1HOyl3RnD33K1XD47f8E82SL+cEgylhgRmkJ8pWexBT+ymonHxKeaZwTibX+zWtEvs
 n0kxZp+vHiyA==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="430778854"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:34:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716204448.737869-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d92eb09d-788f-784a-9784-f2500daf9964@linux.intel.com>
Date: Fri, 17 Jul 2020 09:34:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716204448.737869-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Race
 breadcrumb signaling against timeslicing
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


On 16/07/2020 21:44, Chris Wilson wrote:
> This is an attempt to chase down some preempt-to-busy races with
> breadcrumb signaling on the virtual engines. By using more semaphore
> spinners than available engines, we encourage very short timeslices, and
> we make each batch of random duration to try and coincide the end of a
> batch with the context being scheduled out.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 109 +++++++++++++++++++++++++++++++++
>   1 file changed, 109 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index c5c0055fc..e4d9e0464 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -2240,6 +2240,112 @@ static void hog(int i915)
>   	gem_quiescent_gpu(i915);
>   }
>   
> +static uint32_t sema_create(int i915, uint64_t addr, uint32_t **x)
> +{
> +	uint32_t handle = gem_create(i915, 4096);
> +
> +	*x = gem_mmap__device_coherent(i915, handle, 0, 4096, PROT_WRITE);
> +	for (int n = 1; n <= 32; n++) {
> +		uint32_t *cs = *x + n * 16;

Okay so semaphore target is in the batch itself, that's why first 16 
dwords are nops for convenience.

> +
> +		*cs++ = MI_SEMAPHORE_WAIT |
> +			MI_SEMAPHORE_POLL |
> +			MI_SEMAPHORE_SAD_GTE_SDD |
> +			(4 - 2);
> +		*cs++ = n;
> +		*cs++ = addr;
> +		*cs++ = addr >> 32;
> +
> +		*cs++ = MI_BATCH_BUFFER_END;
> +	}
> +
> +	return handle;
> +}
> +
> +static uint32_t *sema(int i915, uint32_t ctx)
> +{
> +	uint32_t *ctl;
> +	struct drm_i915_gem_exec_object2 batch = {
> +		.handle = sema_create(i915, 64 << 20, &ctl),
> +		.offset = 64 << 20,
> +		.flags = EXEC_OBJECT_PINNED
> +	};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&batch),
> +		.buffer_count = 1,
> +		.rsvd1 = gem_context_clone_with_engines(i915, ctx),
> +	};
> +	int64_t poll = 1;
> +
> +	for (int n = 1; n <= 32; n++) {
> +		execbuf.batch_start_offset = 64 * n,
> +		gem_execbuf(i915, &execbuf);
> +		/* Force a breadcrumb to be installed on each request */
> +		gem_wait(i915, batch.handle, &poll);
> +	}
> +
> +	gem_context_destroy(i915, execbuf.rsvd1);
> +
> +	igt_assert(gem_bo_busy(i915, batch.handle));
> +	gem_close(i915, batch.handle);
> +
> +	return ctl;
> +}
> +
> +static void __waits(int i915, int timeout, uint32_t ctx, unsigned int count)
> +{
> +	uint32_t *semaphores[count + 1];
> +
> +	for (int i = 0; i <= count; i++)
> +		semaphores[i] = sema(i915, ctx);
> +
> +	igt_until_timeout(timeout) {
> +		int i = rand() % (count + 1);
> +
> +		if ((*semaphores[i] += rand() % 32) >= 32) {

Write releases some batch buffers, until it knows it released all of 
them when it creates a new set.

> +			munmap(semaphores[i], 4096);
> +			semaphores[i] = sema(i915, ctx);
> +		}
> +	}
> +
> +	for (int i = 0; i <= count; i++) {
> +		*semaphores[i] = 0xffffffff;
> +		munmap(semaphores[i], 4096);
> +	}
> +}
> +
> +static void waits(int i915, int timeout)
> +{
> +	igt_require(gem_scheduler_has_preemption(i915));
> +	igt_require(gem_scheduler_has_semaphores(i915));
> +
> +	for (int class = 0; class < 32; class++) {
> +		struct i915_engine_class_instance *ci;
> +		unsigned int count;
> +		uint32_t ctx;
> +
> +		ci = list_engines(i915, 1u << class, &count);
> +		if (!ci)
> +			continue;
> +
> +		if (count < 2) {
> +			free(ci);
> +			continue;
> +		}
> +
> +		ctx = load_balancer_create(i915, ci, count);
> +
> +		__waits(i915, timeout, ctx, count);
> +
> +		gem_context_destroy(i915, ctx);
> +		igt_waitchildren();

Don't see any forking in the test.

> +
> +		free(ci);
> +	}
> +
> +	gem_quiescent_gpu(i915);
> +}
> +
>   static void nop(int i915)
>   {
>   	struct drm_i915_gem_exec_object2 batch = {
> @@ -2729,6 +2835,9 @@ igt_main
>   	igt_subtest("hog")
>   		hog(i915);
>   
> +	igt_subtest("waits")
> +		waits(i915, 5);
> +
>   	igt_subtest("smoke")
>   		smoketest(i915, 20);
>   
> 

Looks okay in principle.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I am not sure if the batch duration is not too short in practice, the 
add loop will really rapidly end all, just needs 64 iterations on 
average to end all 32 I think. So 64 WC writes from the CPU compared to 
CSB processing and breadcrumb signaling latencies might be too short. 
Maybe some small random udelays in the loop would be more realistic. 
Maybe as a 2nd flavour of the test just in case.. more coverage the better.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
