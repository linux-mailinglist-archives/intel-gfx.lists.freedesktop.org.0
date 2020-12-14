Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F30822D9B78
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 16:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584606E2DE;
	Mon, 14 Dec 2020 15:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E586B6E2DE;
 Mon, 14 Dec 2020 15:52:12 +0000 (UTC)
IronPort-SDR: rytek/Xl3BMTLFOPrbjmHjZIlrZYbHSc/8AY7mZ+8cFE2zbPKNh+V5dw5n2RTqfKcFbSwgkYos
 RjKX/HHRv+Ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="173957310"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="173957310"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:52:10 -0800
IronPort-SDR: uyozUeuQzifw3aJTB9dygeiUuwRUSSVNyLPl5jRp4y0U9HuwlKByfw/TotN9PJPrigDfYo4M38
 ZI09PnPsA1ig==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="333489792"
Received: from sholland-mobl.ger.corp.intel.com (HELO [10.252.25.39])
 ([10.252.25.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:52:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201208170205.2039137-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <5f0cb1c5-f925-8928-c450-a19d1547af8d@intel.com>
Date: Mon, 14 Dec 2020 15:52:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201208170205.2039137-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_vm_create: Race vm-destroy
 against object free
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

On 08/12/2020 17:02, Chris Wilson wrote:
> Matthew postulated that we should be able to hit a race in
> __i915_vm_close() between the RCU object free and vma unbind viz
> 
>    GEM_BUG_ON(!list_empty(&vm->bound_list));
> 
> due to the effect of leaving the vma on the list if we are unable to
> obtain the kref to the object. Let's try and find that race.

Hmm, what's the idea behind the bound_list stuff in __i915_vm_close(), 
from the looks of it vm->open is always > 0 anyway for the lifetime of 
the vm(?), so not sure if it's even possible to hit that path, at least 
for direct userspace interactions. I guess I was half expecting the 
vm_destroy ioctl or similar, to also call i915_vm_close() at some point, 
to match vm_create, and not just drop the vm ref. So looks like 
__i915_vm_close() is only potentially interesting for kernel internal users?

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   tests/i915/gem_vm_create.c | 65 ++++++++++++++++++++++++++++++++++++++
>   1 file changed, 65 insertions(+)
> 
> diff --git a/tests/i915/gem_vm_create.c b/tests/i915/gem_vm_create.c
> index 8843b1b3b..8cd168328 100644
> --- a/tests/i915/gem_vm_create.c
> +++ b/tests/i915/gem_vm_create.c
> @@ -24,6 +24,7 @@
>   #include "i915/gem.h"
>   #include "i915/gem_vm.h"
>   #include "igt.h"
> +#include "igt_rand.h"
>   #include "igt_dummyload.h"
>   
>   static int vm_create_ioctl(int i915, struct drm_i915_gem_vm_control *ctl)
> @@ -386,6 +387,67 @@ static void async_destroy(int i915)
>   		igt_spin_free(i915, spin[i]);
>   }
>   
> +static void destroy_race(int i915)
> +{
> +	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
> +	uint32_t *vm;
> +
> +	/* Check we can execute a polling spinner */
> +	igt_spin_free(i915, igt_spin_new(i915, .flags = IGT_SPIN_POLL_RUN));
> +
> +	vm = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
> +	igt_assert(vm != MAP_FAILED);
> +
> +	for (int child = 0; child < ncpus; child++)
> +		vm[child] = gem_vm_create(i915);
> +
> +	igt_fork(child, ncpus) {
> +		uint32_t ctx = gem_context_create(i915);
> +		igt_spin_t *spin;
> +
> +		spin = __igt_spin_new(i915, ctx, .flags = IGT_SPIN_POLL_RUN);
> +		while (!READ_ONCE(vm[ncpus])) {
> +			struct drm_i915_gem_context_param arg = {
> +				.ctx_id = ctx,
> +				.param = I915_CONTEXT_PARAM_VM,
> +				.value = READ_ONCE(vm[child]),
> +			};
> +			igt_spin_t *nxt;
> +
> +			if (__gem_context_set_param(i915, &arg))
> +				continue;
> +
> +			nxt = __igt_spin_new(i915, ctx,
> +					     .flags = IGT_SPIN_POLL_RUN);
> +
> +			igt_spin_end(spin);
> +			gem_sync(i915, spin->handle);
> +			igt_spin_free(i915, spin);
> +
> +			usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
> +
> +			spin = nxt;
> +		}
> +		igt_spin_free(i915, spin);
> +	}
> +
> +	igt_until_timeout(5) {
> +		for (int child = 0; child < ncpus; child++) {
> +			gem_vm_destroy(i915, vm[child]);
> +			vm[child] = gem_vm_create(i915);
> +		}
> +		usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
> +	}
> +
> +	vm[ncpus] = 1;
> +	igt_waitchildren();
> +
> +	for (int child = 0; child < ncpus; child++)
> +		gem_vm_destroy(i915, vm[child]);
> +
> +	munmap(vm, 4096);
> +}
> +
>   igt_main
>   {
>   	int i915 = -1;
> @@ -418,6 +480,9 @@ igt_main
>   
>   		igt_subtest("async-destroy")
>   			async_destroy(i915);
> +
> +		igt_subtest("destroy-race")
> +			destroy_race(i915);
>   	}
>   
>   	igt_fixture {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
