Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89C517A55C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492186E14D;
	Thu,  5 Mar 2020 12:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F516E0AA;
 Thu,  5 Mar 2020 12:38:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 04:38:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="234402315"
Received: from srware-mobl.ger.corp.intel.com (HELO [10.252.25.112])
 ([10.252.25.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 05 Mar 2020 04:38:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200305111522.2674305-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8bfe91ab-1270-d024-9754-a2382dc0b407@linux.intel.com>
Date: Thu, 5 Mar 2020 12:37:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200305111522.2674305-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Exercise
 bonded-payload synchronisation
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


On 05/03/2020 11:15, Chris Wilson wrote:
> Our goal with bonded submission is to submit the pair of user batches to
> the HW at roughly the same time, and trying to avoid any bubbles. If we
> submit the secondary batch too early, it will be running before the
> first and stuck on the HW preventing others from utilising the GPU. At
> worst, it may even appear unresponsive and trigger a GPU hang as it
> waits for its master. If we submit the secondary too late, the reverse
> situation may apply to the master as it has to wait to the secondaries.
> 
> This test tries to verify that using a submit-fence to create a bonded
> pair does not prevent others from using the HW. By using a pair of
> spinners, we can create a bonded hog that when set in motion will fully
> utilize both engines [if the scheduling is incorrect]. We then use a
> third party submitted after the bonded pair to cancel the spinner from
> the GPU -- if it is unable to run, the spinner is never cancelled, and
> the bonded pair will cause a GPU hang.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_exec_balancer.c | 91 ++++++++++++++++++++++++++++++++++
>   1 file changed, 91 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
> index 69f0100ff..e1f9ce625 100644
> --- a/tests/i915/gem_exec_balancer.c
> +++ b/tests/i915/gem_exec_balancer.c
> @@ -1240,6 +1240,94 @@ static void indices(int i915)
>   	gem_quiescent_gpu(i915);
>   }
>   
> +static void __bonded_early(int i915, uint32_t ctx,
> +			   const struct i915_engine_class_instance *siblings,
> +			   unsigned int count)
> +{
> +	uint32_t handle = batch_create(i915);
> +	struct drm_i915_gem_exec_object2 batch = {
> +		.handle = handle,
> +	};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&batch),
> +		.buffer_count = 1,
> +		.rsvd1 = ctx,
> +	};
> +	igt_spin_t *spin;
> +
> +	/* A: spin forever on engine 1 */
> +	set_load_balancer(i915, ctx, siblings, count, NULL);
> +	spin = igt_spin_new(i915,
> +			    .ctx = ctx,
> +			    .engine = 1,
> +			    .flags = IGT_SPIN_NO_PREEMPTION);
> +
> +	/* B: runs after A on engine 1 */
> +	execbuf.flags = I915_EXEC_FENCE_OUT;
> +	execbuf.flags |= 1;
> +	gem_execbuf_wr(i915, &execbuf);
> +
> +	/* B': run in parallel with B on engine 2, i.e. not before A! */
> +	set_load_balancer(i915, ctx, siblings, count, NULL);
> +	execbuf.flags = I915_EXEC_FENCE_SUBMIT | I915_EXEC_FENCE_OUT;
> +	execbuf.flags |= 2;
> +	execbuf.rsvd2 >>= 32;
> +	gem_execbuf_wr(i915, &execbuf);
> +
> +	/* C: prevent anything running on engine 2 after B' */
> +	spin->execbuf.flags = 2;
> +	gem_execbuf(i915, &spin->execbuf);
> +
> +	igt_debugfs_dump(i915, "i915_engine_info");
> +
> +	/* D: cancel the spinner from engine 2 (new timeline) */
> +	set_load_balancer(i915, ctx, siblings, count, NULL);
> +	batch.handle = create_semaphore_to_spinner(i915, spin);
> +	execbuf.flags = 2;
> +	gem_execbuf(i915, &execbuf);
> +	gem_close(i915, batch.handle);
> +
> +	/* If C runs before D, we never cancel the spinner and so hang */
> +	gem_sync(i915, handle);
> +
> +	/* Check the bonded pair completed successfully */
> +	igt_assert_eq(sync_fence_status(execbuf.rsvd2 & 0xffffffff), 1);
> +	igt_assert_eq(sync_fence_status(execbuf.rsvd2 >> 32), 1);
> +
> +	close(execbuf.rsvd2);
> +	close(execbuf.rsvd2 >> 32);
> +
> +	gem_close(i915, handle);
> +	igt_spin_free(i915, spin);
> +}
> +
> +static void bonded_early(int i915)
> +{
> +	uint32_t ctx;
> +
> +	/*
> +	 * Our goal is to start the bonded payloads at roughly the same time.
> +	 * We do not want to start the secondary batch too early as it will
> +	 * do nothing but hog the GPU until the first has a chance to execute.
> +	 * So if we were to arbitrary delay the first by running it after a
> +	 * spinner...
> +	 */
> +
> +	ctx = gem_context_create(i915);
> +
> +	for (int class = 0; class < 32; class++) {
> +		struct i915_engine_class_instance *siblings;
> +		unsigned int count;
> +
> +		siblings = list_engines(i915, 1u << class, &count);
> +		if (count > 1)
> +			__bonded_early(i915, ctx, siblings, count);
> +		free(siblings);
> +	}
> +
> +	gem_context_destroy(i915, ctx);
> +}
> +
>   static void busy(int i915)
>   {
>   	uint32_t scratch = gem_create(i915, 4096);
> @@ -1891,6 +1979,9 @@ igt_main
>   	igt_subtest("bonded-semaphore")
>   		bonded_semaphore(i915);
>   
> +	igt_subtest("bonded-early")
> +		bonded_early(i915);
> +
>   	igt_fixture {
>   		igt_stop_hang_detector();
>   	}
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
