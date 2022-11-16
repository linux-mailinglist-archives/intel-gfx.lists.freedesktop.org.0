Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B9662B6D7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 10:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8B010E45D;
	Wed, 16 Nov 2022 09:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D21F10E458;
 Wed, 16 Nov 2022 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668591950; x=1700127950;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VZmyJ5lVCQZBYTTfEVibSvS42Ar1nEG/Na+hTAoRX6o=;
 b=KQrxZiDqTkA9I6egppRhagCxAFGlfgt4r6xs2Ke1MTBovDAROlvb7aHb
 2AbWy4y0uUxipfqilSEAFheJ3Pss0OGMxXMajwINo/agxtTdkY4NpsD+b
 ij4K/LxpOAt4RTaq4zqqp0KrIyCxthAD4Fbm05mVcCzJdxFAUaxl41J6E
 66qgtTXwjlEUphbngkWoMNL0CKlO52YUEH8rpMRznzW0Z7dW+WPIo+c4C
 jwct/tRy7HzyNrQ7GVsXd2U8Xb2pFDsgGcywzIX0Tt7Vaom9AGpIQJFiK
 cL5KZCM+K+JlBfKVyJyv/8C7tKHHpdNsEyh5GrpuQtcVTEhUn319s5n4+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="295865087"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="295865087"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 01:45:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="617106307"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="617106307"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.45.148])
 ([10.249.45.148])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 01:45:48 -0800
Message-ID: <76292787-b4eb-a9b1-fe75-f3ca2a6933f0@linux.intel.com>
Date: Wed, 16 Nov 2022 10:45:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221115103424.109524-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221115103424.109524-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/madvise: verify async
 eviction with madvise
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/15/2022 11:34 AM, Matthew Auld wrote:
> Simple regression test for lmem to check if an in-progress async unbind
> and eviction is syncronised with discarding the pages when marking
> the object as DONTNEED.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   tests/i915/gem_madvise.c | 130 ++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 129 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_madvise.c b/tests/i915/gem_madvise.c
> index 2502d84c..d164df3a 100644
> --- a/tests/i915/gem_madvise.c
> +++ b/tests/i915/gem_madvise.c
> @@ -36,8 +36,9 @@
>   #include <setjmp.h>
>   #include <signal.h>
>   
> -#include "drm.h"
> +#include "igt_kmod.h"
>   #include "i915/gem_create.h"
> +#include "i915/gem.h"
>   
>   IGT_TEST_DESCRIPTION("Checks that the kernel reports EFAULT when trying to use"
>   		     " purged bo.");
> @@ -188,6 +189,76 @@ dontneed_before_exec(void)
>   	close(fd);
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
> +static int upload(int fd, uint32_t handle)
> +{
> +	struct drm_i915_gem_exec_object2 exec[2] = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&exec),
> +		.buffer_count = 2,
> +	};
> +
> +	exec[0].handle = handle;
> +	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
> +	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
> +	exec[1].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
> +
> +	gem_execbuf(fd, &execbuf);
> +	return 0;
> +}
> +

When we have some time in future, we should move above functions to a 
common files.

Thanks Matt, for clarifying my doubts regarding this over Teams.

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> +static void test_dontneed_evict_race(int fd,
> +				     struct gem_memory_region *region)
> +{
> +	const uint64_t size = region->size >> 1;
> +	uint64_t ahnd = get_reloc_ahnd(fd, 0);
> +	uint32_t handle1;
> +	igt_spin_t *spin;
> +
> +	handle1 = gem_create_in_memory_region_list(fd, size, 0,
> +						   &region->ci, 1);
> +	spin = igt_spin_new(fd,
> +			    .ahnd = ahnd,
> +			    .dependency = handle1);
> +
> +	igt_fork(child, 1) {
> +		uint32_t handle2;
> +
> +		fd = gem_reopen_driver(fd);
> +
> +		handle2 = gem_create_in_memory_region_list(fd,
> +							   size, 0,
> +							   &region->ci, 1);
> +		/*
> +		 * The actual move when evicting will be pipelined
> +		 * behind the spinner, so can't fire until the spinner
> +		 * is killed.
> +		 */
> +		upload(fd, handle2);
> +		gem_close(fd, handle2);
> +	}
> +
> +	sleep(2); /* Give eviction time to find handle1 */
> +	igt_spin_end(spin);
> +	gem_madvise(fd, handle1, I915_MADV_DONTNEED);
> +	igt_waitchildren();
> +
> +	igt_spin_free(fd, spin);
> +	gem_close(fd, handle1);
> +}
> +
>   igt_main
>   {
>   	igt_describe("Check signal for Segmentation Fault and bus error before"
> @@ -209,4 +280,61 @@ igt_main
>   		     " purged bo for GPU.");
>   	igt_subtest("dontneed-before-exec")
>   		dontneed_before_exec();
> +
> +	igt_subtest_group {
> +		struct drm_i915_query_memory_regions *regions;
> +		int i915 = -1;
> +
> +		igt_fixture {
> +			char *tmp;
> +
> +			if (igt_kmod_is_loaded("i915")) {
> +				i915 = __drm_open_driver(DRIVER_INTEL);
> +				igt_require_fd(i915);
> +				igt_require_gem(i915);
> +				igt_require(gem_has_lmem(i915));
> +				close(i915);
> +			}
> +
> +			igt_i915_driver_unload();
> +			/*
> +			 * To avoid running of ring space and stalling during evicting
> +			 * (while holding the dma-resv lock), we need to use a smaller
> +			 * lmem size, such we can easliy trigger eviction without
> +			 * needing to wait for more ring space. The point of the test is
> +			 * to mark the object as DONTNEED which has an in-progress
> +			 * pipilined unbind/move, which also requires grabbing the
> +			 * dma-resv lock.
> +			 */
> +			igt_assert_eq(igt_i915_driver_load("lmem_size=128"), 0);
> +
> +			i915 = __drm_open_driver(DRIVER_INTEL);
> +			igt_require_fd(i915);
> +			igt_require_gem(i915);
> +			igt_require(gem_has_lmem(i915));
> +
> +			tmp = __igt_params_get(i915, "lmem_size");
> +			igt_skip_on(!tmp);
> +			free(tmp);
> +
> +			regions = gem_get_query_memory_regions(i915);
> +			igt_require(regions);
> +		}
> +
> +		igt_describe("Regression test to verify that madvise will sync against busy dma-resv object for lmem");
> +		igt_subtest("dontneed-evict-race") {
> +			for_each_memory_region(r, i915) {
> +				if (r->ci.memory_class == I915_MEMORY_CLASS_DEVICE) {
> +					test_dontneed_evict_race(i915, r);
> +					break;
> +				}
> +			}
> +
> +		}
> +
> +		igt_fixture {
> +			close(i915);
> +			igt_i915_driver_unload();
> +		}
> +	}
>   }
