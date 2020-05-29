Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E4B1E7ED4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 15:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5C96E8F3;
	Fri, 29 May 2020 13:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316966E8F3;
 Fri, 29 May 2020 13:34:07 +0000 (UTC)
IronPort-SDR: 0QFljQG9pHVhwzgTIJHuUNS0oDmvP00hbtgplVNH921rHCfZCwzHsedZDKaf3v0Q964CiYnKba
 oTt2d2MYZ8qQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 06:34:06 -0700
IronPort-SDR: s7njMroj6QmyCwpokPP2Ik8f5rGUaYtmMPouOoxjKDI8X95dipkbmjIfz6bI4bE7OC8JvWhgKP
 Ngr3fYYixXOg==
X-IronPort-AV: E=Sophos;i="5.73,448,1583222400"; d="scan'208";a="443390827"
Received: from esperlin-mobl.ger.corp.intel.com (HELO [10.214.231.68])
 ([10.214.231.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 06:34:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200528203136.1196569-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f872ef4f-221d-66fc-ee28-f53c38bb41e8@linux.intel.com>
Date: Fri, 29 May 2020 14:34:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200528203136.1196569-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] i915/gem_exec_balancer:
 Randomise bonded submission
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


On 28/05/2020 21:31, Chris Wilson wrote:
> Randomly submit a paired spinner and its cancellation as a bonded
> (submit fence) pair. Apply congestion to the engine with more bonded
> pairs to see if the execution order fails. If we prevent a cancellation
> from running, then the spinner will remain spinning forever.
> 
> v2: Test both immediate submission and fenced submission
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 172 +++++++++++++++++++++++++++++++++
>   1 file changed, 172 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 80ae82416..04b14dd3a 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -1154,6 +1154,175 @@ static void bonded_semaphore(int i915)
>   	gem_context_destroy(i915, ctx);
>   }
>   
> +static void __bonded_dual(int i915,
> +			  const struct i915_engine_class_instance *siblings,
> +			  unsigned int count,
> +			  unsigned int flags,
> +			  unsigned long *out)
> +#define BD_FENCE 0x1
> +#define BD_HOSTILE 0x2
> +#define BD_MANY 0x4
> +{
> +	struct drm_i915_gem_exec_object2 batch = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&batch),
> +		.buffer_count = 1,
> +	};
> +	unsigned long cycles = 0;
> +	unsigned int spinner;
> +	igt_spin_t *a, *b;
> +	int timeline;
> +	uint32_t A, B;
> +
> +	srandom(getpid());
> +
> +	spinner = IGT_SPIN_POLL_RUN;
> +	if (flags & BD_HOSTILE)
> +		spinner |= IGT_SPIN_NO_PREEMPTION;
> +
> +	A = gem_context_create(i915);
> +	set_load_balancer(i915, A, siblings, count, NULL);
> +	a = igt_spin_new(i915, A, .flags = spinner);
> +	igt_spin_end(a);
> +	gem_sync(i915, a->handle);
> +
> +	B = gem_context_create(i915);
> +	set_load_balancer(i915, B, siblings, count, NULL);
> +	b = igt_spin_new(i915, B, .flags = spinner);
> +	igt_spin_end(b);
> +	gem_sync(i915, b->handle);
> +
> +	timeline = sw_sync_timeline_create();
> +
> +	igt_until_timeout(2) {
> +		unsigned int master;
> +		int fence;
> +
> +		master = 1;
> +		if (flags & BD_MANY)
> +			master = rand() % count + 1;
> +
> +		fence = -1;
> +		if (flags & BD_FENCE)
> +			fence = sw_sync_timeline_create_fence(timeline,
> +							      cycles + 1);
> +
> +		igt_spin_reset(a);
> +		a->execbuf.flags = master | I915_EXEC_FENCE_OUT;
> +		if (fence != -1) {
> +			a->execbuf.rsvd2 = fence;
> +			a->execbuf.flags |= I915_EXEC_FENCE_IN;
> +		}
> +		gem_execbuf_wr(i915, &a->execbuf);
> +
> +		igt_spin_reset(b);
> +		b->execbuf.flags = master | I915_EXEC_FENCE_OUT;
> +		if (fence != -1) {
> +			b->execbuf.rsvd2 = fence;
> +			b->execbuf.flags |= I915_EXEC_FENCE_IN;
> +		}
> +		gem_execbuf_wr(i915, &b->execbuf);
> +
> +		if (rand() % 1)
> +			igt_swap(a, b);
> +
> +		batch.handle = create_semaphore_to_spinner(i915, a);
> +		execbuf.rsvd1 = a->execbuf.rsvd1;
> +		execbuf.rsvd2 = a->execbuf.rsvd2 >> 32;
> +		do {
> +			execbuf.flags = rand() % count + 1;
> +		} while (execbuf.flags == master);
> +		execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> +		gem_execbuf(i915, &execbuf);
> +		gem_close(i915, batch.handle);
> +
> +		batch.handle = create_semaphore_to_spinner(i915, b);
> +		execbuf.rsvd1 = b->execbuf.rsvd1;
> +		execbuf.rsvd2 = b->execbuf.rsvd2 >> 32;
> +		do {
> +			execbuf.flags = rand() % count + 1;
> +		} while (execbuf.flags == master);
> +		execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> +		gem_execbuf(i915, &execbuf);
> +		gem_close(i915, batch.handle);
> +
> +		if (fence != -1) {
> +			sw_sync_timeline_inc(timeline, 1);
> +			close(fence);
> +		}

Would it be worth adding another submit pattern: Am + As/Bs, Bm + Bs/As? 
A bit awkward to implement, probably would need copy & paste of the 
function.

> +		close(a->execbuf.rsvd2 >> 32);
> +		close(b->execbuf.rsvd2 >> 32);
> +
> +		gem_sync(i915, a->handle);
> +		gem_sync(i915, b->handle);
> +
> +		cycles++;
> +	}
> +
> +	*out = cycles;
> +
> +	close(timeline);
> +
> +	igt_spin_free(i915, a);
> +	igt_spin_free(i915, b);
> +
> +	gem_context_destroy(i915, A);
> +	gem_context_destroy(i915, B);
> +}
> +
> +static void bonded_dual(int i915)
> +{
> +	unsigned long *cycles;
> +
> +	/*
> +	 * The purpose of bonded submission is to execute one or more requests
> +	 * concurrently. However, the very nature of that requires coordinated
> +	 * submission across multiple engines.
> +	 */
> +	igt_require(gem_scheduler_has_preemption(i915));
> +
> +	cycles = mmap(0, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> +
> +	for (int class = 1; class < 32; class++) {
> +		struct i915_engine_class_instance *siblings;
> +		unsigned int count;
> +
> +		siblings = list_engines(i915, 1u << class, &count);
> +		if (count > 1) {

Count < 2 && continue looks tempting, but up to you.

> +			const unsigned int phases[] = {
> +				0,
> +				BD_FENCE,
> +				BD_MANY,
> +				BD_HOSTILE,
> +				BD_HOSTILE | BD_FENCE,
> +			};
> +
> +			for (int i = 0; i < ARRAY_SIZE(phases); i++) {
> +				memset(cycles, 0, 4096);
> +				igt_fork(child, count + 1)
> +					__bonded_dual(i915,
> +						      siblings, count,
> +						      phases[i],
> +						      &cycles[child]);
> +				igt_waitchildren();
> +				gem_quiescent_gpu(i915);
> +
> +				for (int child = 1; child < count + 1; child++)
> +					cycles[0] += cycles[child];
> +
> +				igt_info("%s %s %s submission, %lu cycles\n",
> +					 phases[i] & BD_HOSTILE ? "Non-preemptible" : "Preemptible",
> +					 phases[i] & BD_MANY ? "many-master" : "single-master",
> +					 phases[i] & BD_FENCE ? "fenced" : "immediate",
> +					 cycles[0]);

I'd prefix the message with "%u:" class, since the looping is per class.

> +			}
> +		}
> +		free(siblings);
> +	}
> +
> +	munmap(cycles, 4096);
> +}
> +
>   static void __bonded_nohang(int i915, uint32_t ctx,
>   			    const struct i915_engine_class_instance *siblings,
>   			    unsigned int count,
> @@ -2284,6 +2453,9 @@ igt_main
>   	igt_subtest("bonded-semaphore")
>   		bonded_semaphore(i915);
>   
> +	igt_subtest("bonded-dual")
> +		bonded_dual(i915);
> +
>   	igt_fixture {
>   		igt_stop_hang_detector();
>   	}
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
