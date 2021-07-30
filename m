Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12613DB689
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 11:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014A96F417;
	Fri, 30 Jul 2021 09:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67736F417;
 Fri, 30 Jul 2021 09:58:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200274999"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="200274999"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 02:58:41 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="476911214"
Received: from mpenny-mobl1.ger.corp.intel.com (HELO [10.213.234.2])
 ([10.213.234.2])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 02:58:40 -0700
To: Matthew Brost <matthew.brost@intel.com>, igt-dev@lists.freedesktop.org
References: <20210727182057.78409-1-matthew.brost@intel.com>
 <20210727182057.78409-2-matthew.brost@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9095b26a-975b-9180-045f-7231d63fe9ff@linux.intel.com>
Date: Fri, 30 Jul 2021 10:58:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210727182057.78409-2-matthew.brost@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/1] i915/gem_scheduler: Ensure
 submission order in manycontexts
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/07/2021 19:20, Matthew Brost wrote:
> With GuC submission contexts can get reordered (compared to submission
> order), if contexts get reordered the sequential nature of the batches
> releasing the next batch's semaphore in function timesliceN() get broken
> resulting in the test taking much longer than if should. e.g. Every
> contexts needs to be timesliced to release the next batch. Corking the
> first submission until all the batches have been submitted should ensure
> submission order.

The explanation sounds suspect.

Consider this comment from the test itself:

	/*
	 * Create a pair of interlocking batches, that ping pong
	 * between each other, and only advance one step at a time.
	 * We require the kernel to preempt at each semaphore and
	 * switch to the other batch in order to advance.
	 */

I'd say the test does not rely on no re-ordering at all, but relies on 
context switch on an unsatisfied semaphore.

In the commit you seem to acknowledge GuC does not do that but instead 
ends up waiting for the timeslice to expire, did I get that right? If 
so, why does the GuC does not do that and can we fix it?

Regards,

Tvrtko

> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   tests/i915/gem_exec_schedule.c | 16 +++++++++++++++-
>   1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> index f03842478..41f2591a5 100644
> --- a/tests/i915/gem_exec_schedule.c
> +++ b/tests/i915/gem_exec_schedule.c
> @@ -597,12 +597,13 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   	struct drm_i915_gem_execbuffer2 execbuf  = {
>   		.buffers_ptr = to_user_pointer(&obj),
>   		.buffer_count = 1,
> -		.flags = engine | I915_EXEC_FENCE_OUT,
> +		.flags = engine | I915_EXEC_FENCE_OUT | I915_EXEC_FENCE_SUBMIT,
>   	};
>   	uint32_t *result =
>   		gem_mmap__device_coherent(i915, obj.handle, 0, sz, PROT_READ);
>   	const intel_ctx_t *ctx;
>   	int fence[count];
> +	IGT_CORK_FENCE(cork);
>   
>   	/*
>   	 * Create a pair of interlocking batches, that ping pong
> @@ -614,6 +615,17 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   	igt_require(gem_scheduler_has_timeslicing(i915));
>   	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
>   
> +	/*
> +	 * With GuC submission contexts can get reordered (compared to
> +	 * submission order), if contexts get reordered the sequential
> +	 * nature of the batches releasing the next batch's semaphore gets
> +	 * broken resulting in the test taking much longer than it should (e.g.
> +	 * every context needs to be timesliced to release the next batch).
> +	 * Corking the first submission until all batches have been
> +	 * submitted should ensure submission order.
> +	 */
> +	execbuf.rsvd2 = igt_cork_plug(&cork, i915);
> +
>   	/* No coupling between requests; free to timeslice */
>   
>   	for (int i = 0; i < count; i++) {
> @@ -624,8 +636,10 @@ static void timesliceN(int i915, const intel_ctx_cfg_t *cfg,
>   		intel_ctx_destroy(i915, ctx);
>   
>   		fence[i] = execbuf.rsvd2 >> 32;
> +		execbuf.rsvd2 >>= 32;
>   	}
>   
> +	igt_cork_unplug(&cork);
>   	gem_sync(i915, obj.handle);
>   	gem_close(i915, obj.handle);
>   
> 
