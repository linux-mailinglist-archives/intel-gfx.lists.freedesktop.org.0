Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4176533BD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 17:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5149E10E467;
	Wed, 21 Dec 2022 16:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFC910E133;
 Wed, 21 Dec 2022 16:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671638450; x=1703174450;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=utpaUq3NLdj/cYD0oA6quQYipPzQpqxc4zZ/vzw35bY=;
 b=lZJiYwoPvBxJyXFdJwNitCe1Cp7/XW9LTy5p9Rf/wwBSNz5apuhN/ED3
 cfXg3pqadbGsJaXdHdfKnRLh9oJLz6iMa6nFw/L88WKYVks1uwzcqX/IX
 uipdx5LDvywUm60WgsEQGUIe9CZGdeGT4dtvfbo0Rd/+zALOC2r2ovht9
 lOg4lCSNgdm/gPrDD1/3aT2EcPcgTV+tTNkMfFUBXkR2+7ZmTC/louc0t
 uMVO8r4BtB/8Tlu0B3LZX9DyWkcqHi0OAfPnbWYOKXSnSruTKAVoC5y/S
 Hb87VDD5Mcgs+POgE5IdTdIIjStyLNj6GiNgLkwFOUAlpA/LTvbpmJfKu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="303332506"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="303332506"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:59:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="644886198"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="644886198"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.127])
 ([10.249.40.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:59:57 -0800
Message-ID: <a95ad257-085b-a7d8-16fb-233b23192b10@linux.intel.com>
Date: Wed, 21 Dec 2022 17:59:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221220104625.147654-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221220104625.147654-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] tests/i915/gem_ppgtt:
 verify GTT eviction with contended locks
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
Cc: intel-gfx@lists.freedesktop.org, Mani Milani <mani@chromium.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/20/2022 12:46 PM, Matthew Auld wrote:
> We should still be able to GTT evict objects during execbuf (old
> bindings can linger around), even if there is object lock contention. In
> the worst case the execbuf should just wait on the contented locks.
> Returning -ENOSPC smells like a regression from past behaviour, and
> seems to break userspace.
>
> v2:
>    - Add coverage for explicit softpin
>    - Add timeout for the spinner
> v3:
>    - Improve the test description
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7570
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Mani Milani <mani@chromium.org>
> ---
>   tests/i915/gem_ppgtt.c | 133 +++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 133 insertions(+)
>
> diff --git a/tests/i915/gem_ppgtt.c b/tests/i915/gem_ppgtt.c
> index 9673ce22..024e8d47 100644
> --- a/tests/i915/gem_ppgtt.c
> +++ b/tests/i915/gem_ppgtt.c
> @@ -255,6 +255,131 @@ static void flink_and_close(void)
>   	close(fd2);
>   }
>   
> +#define PAGE_SIZE 4096
> +
> +static uint32_t batch_create_size(int fd, uint64_t size)
> +{
> +	const uint32_t bbe = MI_BATCH_BUFFER_END;
> +	uint32_t handle;
> +
> +	handle = gem_create(fd, size);
> +	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
> +
> +	return handle;
> +}
> +
> +#define IGT_USE_ANY	0x1
> +#define IGT_USE_PINNED	0x2
> +static void upload(int fd, uint32_t handle, uint32_t in_fence, uint32_t ctx_id,
> +		   unsigned int flags)
> +{
> +	struct drm_i915_gem_exec_object2 exec[2] = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&exec),
> +		.buffer_count = 1,
> +		.rsvd1 = ctx_id,
> +	};
> +
> +	if (in_fence) {
> +		execbuf.rsvd2 = in_fence;
> +		execbuf.flags = I915_EXEC_FENCE_IN;
> +	}
> +
> +	exec[0].handle = handle;
> +	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
> +
> +	if (flags & IGT_USE_PINNED)
> +		exec[0].flags |= EXEC_OBJECT_PINNED; /* offset = 0 */
> +
> +	if (flags & IGT_USE_ANY) {
> +		exec[0].flags |= EXEC_OBJECT_PAD_TO_SIZE;
> +		exec[0].pad_to_size = gem_aperture_size(fd);
> +	}
> +
> +	gem_execbuf(fd, &execbuf);
> +}
> +
> +static void shrink_vs_evict(unsigned int flags)
> +{
> +	const unsigned int nproc = sysconf(_SC_NPROCESSORS_ONLN) + 1;
> +	const uint64_t timeout_5s = 5000000000LL;


5*NSEC_PER_SEC would be nice.


> +	int fd = drm_open_driver(DRIVER_INTEL);
> +	uint64_t ahnd = get_reloc_ahnd(fd, 0);
> +	const intel_ctx_t *ctx_arr[nproc];
> +	igt_spin_t *spinner;
> +	uint32_t handle1;
> +	int i;
> +
> +	/*
> +	 * Try to simulate some nasty object lock contention during GTT
> +	 * eviction. Create a BO and bind across several different VMs.  Invoke
> +	 * the shrinker on that shared BO, followed by triggering GTT eviction
> +	 * across all VMs.  Both require the object lock to make forward
> +	 * progress when trying to unbind the BO, but the shrinker will be
> +	 * blocked by the spinner (until killed).  Once the spinner is killed
> +	 * the shrinker should be able to unbind the object and drop the object
> +	 * lock, and GTT eviction should eventually succeed. At no point should
> +	 * we see -ENOSPC from the execbuf, even if we can't currently grab the
> +	 * object lock.
> +	 */
> +
> +	igt_require(gem_uses_full_ppgtt(fd));
> +
> +	igt_drop_caches_set(fd, DROP_ALL);
> +
> +	handle1 = gem_create(fd, PAGE_SIZE);
> +
> +	spinner = igt_spin_new(fd,
> +			       .ahnd = ahnd,
> +			       .flags = IGT_SPIN_FENCE_OUT);
> +	igt_spin_set_timeout(spinner, timeout_5s);
> +
> +	/*
> +	 * Create several VMs to ensure we don't block on the same vm lock. The
> +	 * goal of the test is to ensure that object lock contention doesn't
> +	 * somehow result in -ENOSPC from execbuf, if we need to trigger GTT
> +	 * eviction.
> +	 */
> +	for (i = 0; i < nproc; i++) {
> +		ctx_arr[i] = intel_ctx_create(fd, NULL);
> +
> +		upload(fd, handle1, spinner->execbuf.rsvd2 >> 32,
> +		       ctx_arr[i]->id, flags);
> +	}
> +
> +	igt_fork(child, 1)
> +		igt_drop_caches_set(fd, DROP_ALL);
> +
> +	sleep(2); /* Give the shrinker time to find handle1 */
> +
> +	igt_fork(child, nproc) {
> +		uint32_t handle2 = gem_create(fd, PAGE_SIZE);
> +
> +		/*
> +		 * One of these forks will be stuck on the vm mutex, since the
> +		 * shrinker is holding it (along with the object lock) while
> +		 * trying to unbind the chosen vma, but is blocked by the
> +		 * spinner. The rest should only block waiting to grab the
> +		 * object lock for handle1, before then trying to GTT evict it
> +		 * from their respective vm. In either case the contention of
> +		 * the vm->mutex or object lock should never result in -ENOSPC
> +		 * or some other error.
> +		 */
> +		handle2 = batch_create_size(fd, PAGE_SIZE);


This can be

uint32_t handle2 = batch_create_size(fd, PAGE_SIZE);

Above gem_create seems unnecessary. With those

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>



> +
> +		upload(fd, handle2, 0, ctx_arr[child]->id, flags);
> +		gem_close(fd, handle2);
> +	}
> +
> +	igt_waitchildren();
> +	igt_spin_free(fd, spinner);
> +
> +	for (i = 0; i < nproc; i++)
> +		intel_ctx_destroy(fd, ctx_arr[i]);
> +
> +	gem_close(fd, handle1);
> +}
> +
>   static bool has_contexts(void)
>   {
>   	bool result;
> @@ -331,4 +456,12 @@ igt_main
>   
>   	igt_subtest("flink-and-close-vma-leak")
>   		flink_and_close();
> +
> +	igt_describe("Regression test to verify GTT eviction can't randomly fail due to object lock contention");
> +	igt_subtest_group {
> +		igt_subtest("shrink-vs-evict-any")
> +			shrink_vs_evict(IGT_USE_ANY);
> +		igt_subtest("shrink-vs-evict-pinned")
> +			shrink_vs_evict(IGT_USE_PINNED);
> +	}
>   }
