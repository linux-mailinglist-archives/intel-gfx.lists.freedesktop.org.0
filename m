Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBEA1E4866
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 17:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1945B6E342;
	Wed, 27 May 2020 15:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F7A6E339;
 Wed, 27 May 2020 15:51:55 +0000 (UTC)
IronPort-SDR: FZYSxzagWXyAU8f2boQMwBLstIDfR6Dvy5xjw8Sg1tA4Iq7zb2syylZrbJB00Lrae1PA8aL+9z
 mxhi6ouZQ2Fg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 08:51:55 -0700
IronPort-SDR: /La0rg7w+FuttkU4pzYM2lwUopbUDrut5TBGHlU+DlD417UIE7dFSDU4eTacDuEpP5IvLn/i7s
 DINqpAdf3KQQ==
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="291639067"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO [10.214.254.180])
 ([10.214.254.180])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 08:51:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200527131409.699882-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e3ceb72a-156b-a4cf-96c7-c339ea67ffb1@linux.intel.com>
Date: Wed, 27 May 2020 16:51:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527131409.699882-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Randomise
 bonded submission
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/05/2020 14:14, Chris Wilson wrote:
> Randomly submit a paired spinner and its cancellation as a bonded
> (submit fence) pair. Apply congestion to the engine with more bonded
> pairs to see if the execution order fails. If we prevent a cancellation
> from running, then the spinner will remain spinning forever.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 108 +++++++++++++++++++++++++++++++++
>   1 file changed, 108 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 80ae82416..98715d726 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -1154,6 +1154,111 @@ static void bonded_semaphore(int i915)
>   	gem_context_destroy(i915, ctx);
>   }
>   
> +static void __bonded_dual(int i915,
> +			  const struct i915_engine_class_instance *siblings,
> +			  unsigned int count)
> +{
> +	struct drm_i915_gem_exec_object2 batch = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&batch),
> +		.buffer_count = 1,
> +	};
> +	unsigned long cycles = 0;
> +	uint32_t A, B;
> +
> +	A = gem_context_create(i915);
> +	set_load_balancer(i915, A, siblings, count, NULL);
> +
> +	B = gem_context_create(i915);
> +	set_load_balancer(i915, B, siblings, count, NULL);
> +
> +	igt_until_timeout(5) {
> +		unsigned int master = rand() % count + 1;
> +		int timeline, fence;
> +		igt_spin_t *a, *b;
> +
> +		timeline = sw_sync_timeline_create();
> +		fence = sw_sync_timeline_create_fence(timeline, 1);
> +
> +		a = igt_spin_new(i915, A,
> +				 .engine = master,
> +				 .fence = fence,
> +				 .flags = (IGT_SPIN_FENCE_IN |
> +					   IGT_SPIN_POLL_RUN |
> +					   IGT_SPIN_NO_PREEMPTION |
> +					   IGT_SPIN_FENCE_OUT));
> +		b = igt_spin_new(i915, B,
> +				 .engine = master,
> +				 .fence = fence,
> +				 .flags = (IGT_SPIN_FENCE_IN |
> +					   IGT_SPIN_POLL_RUN |
> +					   IGT_SPIN_NO_PREEMPTION |
> +					   IGT_SPIN_FENCE_OUT));
> +
> +		close(fence);

Does this or close(timeline) releases the submissions?

I suggest a variant without the fence anyway for a slightly different 
profile.

> +
> +		if (rand() % 1)
> +			igt_swap(a, b);
> +
> +		batch.handle = create_semaphore_to_spinner(i915, a);

These will be preemptible right? More so they schedule out on semaphore 
interrupt straight away? So I don't see how slaves can be prevented from 
running because they always are on a different physical engine.

We would need a test flavour where slave spins non-preemptively until 
either the master or CPU signals to stop. Coming up with the exact 
scheme to achieve this might be challenging. I can think about this more 
tomorrow.

And also I don't know why this would fail with my patch! I'll want to 
have a experiment with that tomorrow as well.

Regards,

Tvrtko

> +		execbuf.rsvd1 = a->execbuf.rsvd1;
> +		execbuf.rsvd2 = a->out_fence;
> +		do {
> +			execbuf.flags = rand() % count + 1;
> +		} while (execbuf.flags == master);
> +		execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> +		gem_execbuf(i915, &execbuf);
> +		gem_close(i915, batch.handle);
> +
> +		batch.handle = create_semaphore_to_spinner(i915, b);
> +		execbuf.rsvd1 = b->execbuf.rsvd1;
> +		execbuf.rsvd2 = b->out_fence;
> +		do {
> +			execbuf.flags = rand() % count + 1;
> +		} while (execbuf.flags == master);
> +		execbuf.flags |= I915_EXEC_FENCE_SUBMIT;
> +		gem_execbuf(i915, &execbuf);
> +		gem_close(i915, batch.handle);
> +
> +		close(timeline);
> +
> +		gem_sync(i915, a->handle);
> +		gem_sync(i915, b->handle);
> +
> +		igt_spin_free(i915, a);
> +		igt_spin_free(i915, b);
> +		cycles++;
> +	}
> +
> +	igt_info("%lu cycles\n", cycles);
> +
> +	gem_context_destroy(i915, A);
> +	gem_context_destroy(i915, B);
> +}
> +
> +static void bonded_dual(int i915)
> +{
> +	/*
> +	 * The purpose of bonded submission is to execute one or more requests
> +	 * concurrently. However, the very nature of that requires coordinated
> +	 * submission across multiple engines.
> +	 */
> +	igt_require(gem_scheduler_has_preemption(i915));
> +
> +	for (int class = 1; class < 32; class++) {
> +		struct i915_engine_class_instance *siblings;
> +		unsigned int count;
> +
> +		siblings = list_engines(i915, 1u << class, &count);
> +		if (count > 1) {
> +			igt_fork(child, count + 1)
> +				__bonded_dual(i915, siblings, count);
> +			igt_waitchildren();
> +		}
> +		free(siblings);
> +	}
> +}
> +
>   static void __bonded_nohang(int i915, uint32_t ctx,
>   			    const struct i915_engine_class_instance *siblings,
>   			    unsigned int count,
> @@ -2284,6 +2389,9 @@ igt_main
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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
