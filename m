Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68076755E8B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 10:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D5B10E209;
	Mon, 17 Jul 2023 08:34:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B8610E209;
 Mon, 17 Jul 2023 08:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689582882; x=1721118882;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oW6abZ+Z622RZBZ6yi68wqzhQweOSJdxU02KoEaRc+Q=;
 b=VkH7+p1GIaZ2GMEKNx5MNXsj+zwCN6qGebTx0deLsiL+Csff33Lo5h+n
 dcPC8VDPERNTQzVQN3UWVq9rZG2bwvc1Bql0om+LY4WPQ/X6WJjpMVmDo
 EC2CB5kmcLjHUv/4D0ChoZvDKpaA3VjxWKpWka+DYdLCwKuMTnrg349Wh
 GBL5VhlxwYfoYW5LGcpvjs3nba1wYf+sKBChohRGmDkTW6V3RDGHixu5d
 GXawbm43rPvJyNT0X/WteK3dk+5dYLm80tYKAejr6TWsnIHkfiSMUNjtI
 WybspMCHdbMcKuTF2wwHm0iqeiE/oKkWYSAS6yDw+2SxjzOBuWEl+iLwO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369428971"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369428971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 01:34:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="752817321"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="752817321"
Received: from rgwhiteh-mobl1.ger.corp.intel.com (HELO [10.213.205.103])
 ([10.213.205.103])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 01:34:39 -0700
Message-ID: <b5f66bab-6b17-7d0f-343d-17d11a590f4f@linux.intel.com>
Date: Mon, 17 Jul 2023 09:34:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
 <ZLGEPqoQWsBvTv52@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZLGEPqoQWsBvTv52@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] lib/igt_dummyload:
 Extract sync spinner API
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/07/2023 18:22, Rodrigo Vivi wrote:
> On Tue, Jul 11, 2023 at 05:02:13PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Sync spinner API is identical and compatible with regular spinners just
>> that it tries to make sure spinner is actually running on the hardware
>> before returning from the constructor.
>>
>> A few tests already use it, one more will, so lets promote it into
>> common library.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/igt_dummyload.c     | 105 ++++++++++++++++++++++++++++++++++++++++
>>   lib/igt_dummyload.h     |  11 +++++
>>   tests/i915/drm_fdinfo.c |  81 ++++---------------------------
>>   tests/i915/gem_eio.c    |  15 ++----
>>   tests/i915/perf_pmu.c   |  84 +++++---------------------------
>>   5 files changed, 140 insertions(+), 156 deletions(-)
>>
>> diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
>> index 9f941cef73e6..d3cee91540b6 100644
>> --- a/lib/igt_dummyload.c
>> +++ b/lib/igt_dummyload.c
> 
> why here?
> 
>> @@ -33,6 +33,7 @@
>>   #include "drmtest.h"
>>   #include "i915/gem_create.h"
>>   #include "i915/gem_engine_topology.h"
>> +#include "i915/gem.h"
>>   #include "i915/gem_mman.h"
>>   #include "i915/gem_submission.h"
>>   #include "igt_aux.h"
>> @@ -715,6 +716,110 @@ void igt_unshare_spins(void)
>>   	IGT_INIT_LIST_HEAD(&spin_list);
>>   }
>>   
>> +/**
>> + * __igt_sync_spin_poll:
>> + * @i915: open i915 drm file descriptor
> 
> anyway to make this not i915 centric?
> or maybe move it to or start a lib that is i915 only?
> 
> I know that we have many more lib things that are still i915 centric,
> but at some point we need to start organizing it...

Is igt_dummyload i915/xe agnostic already? I missed that. It would be a 
big ask for me to get on top of two uapis and do that.. ugh. :(

So on the "why here?" part. Assuming taking the i915 route.. where would 
you suggest to put it?

Regards,

Tvrtko

>> + * @ahnd: allocator handle
>> + * @ctx: intel_ctx_t context
>> + * @e: engine to execute on
>> + *
>> + * Starts a recursive batch on an engine.
>> + *
>> + * Returns a #igt_spin_t which can be used with both standard and igt_sync_spin
>> + * API family. Callers should consult @gem_class_can_store_dword to whether
>> + * the target platform+engine can reliably support the igt_sync_spin API.
>> + */
>> +igt_spin_t *
>> +__igt_sync_spin_poll(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
>> +		     const struct intel_execution_engine2 *e)
>> +{
>> +	struct igt_spin_factory opts = {
>> +		.ahnd = ahnd,
>> +		.ctx = ctx,
>> +		.engine = e ? e->flags : 0,
>> +	};
>> +
>> +	if (!e || gem_class_can_store_dword(i915, e->class))
>> +		opts.flags |= IGT_SPIN_POLL_RUN;
>> +
>> +	return __igt_spin_factory(i915, &opts);
>> +}
>> +
>> +/**
>> + * __igt_sync_spin_wait:
>> + * @i915: open i915 drm file descriptor
>> + * @spin: previously create sync spinner
>> + *
>> + * Waits for a spinner to be running on the hardware.
>> + *
>> + * Callers should consult @gem_class_can_store_dword to whether the target
>> + * platform+engine can reliably support the igt_sync_spin API.
>> + */
>> +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin)
>> +{
>> +	struct timespec start = { };
>> +
>> +	igt_nsec_elapsed(&start);
>> +
>> +	if (igt_spin_has_poll(spin)) {
>> +		unsigned long timeout = 0;
>> +
>> +		while (!igt_spin_has_started(spin)) {
>> +			unsigned long t = igt_nsec_elapsed(&start);
>> +
>> +			igt_assert(gem_bo_busy(i915, spin->handle));
>> +			if ((t - timeout) > 250e6) {
>> +				timeout = t;
>> +				igt_warn("Spinner not running after %.2fms\n",
>> +					 (double)t / 1e6);
>> +				igt_assert(t < 2e9);
>> +			}
>> +		}
>> +	} else {
>> +		igt_debug("__spin_wait - usleep mode\n");
>> +		usleep(500e3); /* Better than nothing! */
>> +	}
>> +
>> +	igt_assert(gem_bo_busy(i915, spin->handle));
>> +	return igt_nsec_elapsed(&start);
>> +}
>> +
>> +igt_spin_t *
>> +__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
>> +		const struct intel_execution_engine2 *e)
>> +{
>> +	igt_spin_t *spin = __igt_sync_spin_poll(i915, ahnd, ctx, e);
>> +
>> +	__igt_sync_spin_wait(i915, spin);
>> +
>> +	return spin;
>> +}
>> +
>> +/**
>> + * igt_sync_spin:
>> + * @i915: open i915 drm file descriptor
>> + * @ahnd: allocator handle
>> + * @ctx: intel_ctx_t context
>> + * @e: engine to execute on
>> + *
>> + * Starts a recursive batch on an engine.
>> + *
>> + * Returns a #igt_spin_t and tries to guarantee it to be running at the time of
>> + * the return. Otherwise it does a best effort only. Callers should check for
>> + * @gem_class_can_store_dword if they want to be sure guarantee can be given.
>> + *
>> + * Both standard and igt_sync_spin API family can be used on the returned
>> + * spinner object.
>> + */
>> +igt_spin_t *
>> +igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
>> +	      const struct intel_execution_engine2 *e)
>> +{
>> +	igt_require_gem(i915);
>> +
>> +	return __igt_sync_spin(i915, ahnd, ctx, e);
>> +}
>> +
>>   static uint32_t plug_vgem_handle(struct igt_cork *cork, int fd)
>>   {
>>   	struct vgem_bo bo;
>> diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
>> index 6eb3f2e696bb..b771011af74f 100644
>> --- a/lib/igt_dummyload.h
>> +++ b/lib/igt_dummyload.h
>> @@ -143,6 +143,17 @@ void igt_terminate_spins(void);
>>   void igt_unshare_spins(void);
>>   void igt_free_spins(int i915);
>>   
>> +struct intel_execution_engine2;
>> +
>> +igt_spin_t *__igt_sync_spin_poll(int i915, uint64_t ahnd,
>> +				 const intel_ctx_t *ctx,
>> +				 const struct intel_execution_engine2 *e);
>> +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin);
>> +igt_spin_t *__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
>> +			    const struct intel_execution_engine2 *e);
>> +igt_spin_t *igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
>> +			  const struct intel_execution_engine2 *e);
>> +
>>   enum igt_cork_type {
>>   	CORK_SYNC_FD = 1,
>>   	CORK_VGEM_HANDLE
>> diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
>> index c0e0ba1905f1..5cafa0e469e2 100644
>> --- a/tests/i915/drm_fdinfo.c
>> +++ b/tests/i915/drm_fdinfo.c
>> @@ -138,68 +138,6 @@ static unsigned int measured_usleep(unsigned int usec)
>>   #define FLAG_HANG (8)
>>   #define TEST_ISOLATION (16)
>>   
>> -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			       const struct intel_execution_engine2 *e)
>> -{
>> -	struct igt_spin_factory opts = {
>> -		.ahnd = ahnd,
>> -		.ctx = ctx,
>> -		.engine = e ? e->flags : 0,
>> -	};
>> -
>> -	if (!e || gem_class_can_store_dword(fd, e->class))
>> -		opts.flags |= IGT_SPIN_POLL_RUN;
>> -
>> -	return __igt_spin_factory(fd, &opts);
>> -}
>> -
>> -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
>> -{
>> -	struct timespec start = { };
>> -
>> -	igt_nsec_elapsed(&start);
>> -
>> -	if (igt_spin_has_poll(spin)) {
>> -		unsigned long timeout = 0;
>> -
>> -		while (!igt_spin_has_started(spin)) {
>> -			unsigned long t = igt_nsec_elapsed(&start);
>> -
>> -			igt_assert(gem_bo_busy(fd, spin->handle));
>> -			if ((t - timeout) > 250e6) {
>> -				timeout = t;
>> -				igt_warn("Spinner not running after %.2fms\n",
>> -					 (double)t / 1e6);
>> -				igt_assert(t < 2e9);
>> -			}
>> -		}
>> -	} else {
>> -		igt_debug("__spin_wait - usleep mode\n");
>> -		usleep(500e3); /* Better than nothing! */
>> -	}
>> -
>> -	igt_assert(gem_bo_busy(fd, spin->handle));
>> -	return igt_nsec_elapsed(&start);
>> -}
>> -
>> -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			       const struct intel_execution_engine2 *e)
>> -{
>> -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
>> -
>> -	__spin_wait(fd, spin);
>> -
>> -	return spin;
>> -}
>> -
>> -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			     const struct intel_execution_engine2 *e)
>> -{
>> -	igt_require_gem(fd);
>> -
>> -	return __spin_sync(fd, ahnd, ctx, e);
>> -}
>> -
>>   static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>>   {
>>   	if (!spin)
>> @@ -264,7 +202,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
>>   	ahnd = get_reloc_ahnd(spin_fd, ctx->id);
>>   
>>   	if (flags & TEST_BUSY)
>> -		spin = spin_sync(spin_fd, ahnd, ctx, e);
>> +		spin = igt_sync_spin(spin_fd, ahnd, ctx, e);
>>   	else
>>   		spin = NULL;
>>   
>> @@ -349,7 +287,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   
>>   	memset(tval, 0, sizeof(tval));
>>   
>> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   
>>   	read_busy_all(gem_fd, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>> @@ -418,14 +356,14 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   			__submit_spin(gem_fd, spin, e_, 64);
>>   			busy_class[e_->class]++;
>>   		} else {
>> -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
>> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
>>   			busy_class[e_->class]++;
>>   		}
>>   	}
>>   	igt_require(spin); /* at least one busy engine */
>>   
>>   	/* Small delay to allow engines to start. */
>> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>>   
>>   	read_busy_all(gem_fd, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>> @@ -475,12 +413,12 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   		if (spin)
>>   			__submit_spin(gem_fd, spin, e, 64);
>>   		else
>> -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
>> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
>>   		busy_class[e->class]++;
>>   	}
>>   
>>   	/* Small delay to allow engines to start. */
>> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>>   
>>   	read_busy_all(gem_fd, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>> @@ -624,7 +562,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>>   			ahnd = get_reloc_ahnd(i915, ctx->id);
>>   
>>   			if (flags & TEST_BUSY)
>> -				spin = spin_sync(i915, ahnd, ctx, NULL);
>> +				spin = igt_sync_spin(i915, ahnd, ctx, NULL);
>>   			else
>>   				spin = NULL;
>>   
>> @@ -732,11 +670,12 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>>   			if (spin)
>>   				__virt_submit_spin(i915, spin, ctx[i], 64);
>>   			else
>> -				spin = __spin_poll(i915, ahnd, ctx[i], NULL);
>> +				spin = __igt_sync_spin_poll(i915, ahnd, ctx[i],
>> +							    NULL);
>>   		}
>>   
>>   		/* Small delay to allow engines to start. */
>> -		usleep(__spin_wait(i915, spin) * count / 1e3);
>> +		usleep(__igt_sync_spin_wait(i915, spin) * count / 1e3);
>>   
>>   		val = read_busy(i915, class);
>>   		slept = measured_usleep(batch_duration_ns / 1000);
>> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
>> index d889d67dcebd..6d4b8f7df909 100644
>> --- a/tests/i915/gem_eio.c
>> +++ b/tests/i915/gem_eio.c
>> @@ -47,6 +47,7 @@
>>   #include "i915/gem_ring.h"
>>   #include "igt.h"
>>   #include "igt_device.h"
>> +#include "igt_dummyload.h"
>>   #include "igt_fb.h"
>>   #include "igt_kms.h"
>>   #include "igt_stats.h"
>> @@ -429,22 +430,12 @@ static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>   	return __igt_spin_factory(fd, &opts);
>>   }
>>   
>> -static void __spin_wait(int fd, igt_spin_t *spin)
>> -{
>> -	if (igt_spin_has_poll(spin)) {
>> -		igt_spin_busywait_until_started(spin);
>> -	} else {
>> -		igt_debug("__spin_wait - usleep mode\n");
>> -		usleep(500e3); /* Better than nothing! */
>> -	}
>> -}
>> -
>>   static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>   			     unsigned long flags)
>>   {
>>   	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, flags);
>>   
>> -	__spin_wait(fd, spin);
>> +	__igt_sync_spin_wait(fd, spin);
>>   
>>   	return spin;
>>   }
>> @@ -963,7 +954,7 @@ static void test_inflight_external(int fd)
>>   	fence = execbuf.rsvd2 >> 32;
>>   	igt_assert(fence != -1);
>>   
>> -	__spin_wait(fd, hang);
>> +	__igt_sync_spin_wait(fd, hang);
>>   	manual_hang(fd);
>>   
>>   	gem_sync(fd, hang->handle); /* wedged, with an unready batch */
>> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
>> index 0806a8e545b5..a888027ad9af 100644
>> --- a/tests/i915/perf_pmu.c
>> +++ b/tests/i915/perf_pmu.c
>> @@ -377,68 +377,6 @@ static unsigned int measured_usleep(unsigned int usec)
>>   #define TEST_OTHER (128)
>>   #define TEST_ALL   (256)
>>   
>> -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			       const struct intel_execution_engine2 *e)
>> -{
>> -	struct igt_spin_factory opts = {
>> -		.ahnd = ahnd,
>> -		.ctx = ctx,
>> -		.engine = e->flags,
>> -	};
>> -
>> -	if (gem_class_can_store_dword(fd, e->class))
>> -		opts.flags |= IGT_SPIN_POLL_RUN;
>> -
>> -	return __igt_spin_factory(fd, &opts);
>> -}
>> -
>> -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
>> -{
>> -	struct timespec start = { };
>> -
>> -	igt_nsec_elapsed(&start);
>> -
>> -	if (igt_spin_has_poll(spin)) {
>> -		unsigned long timeout = 0;
>> -
>> -		while (!igt_spin_has_started(spin)) {
>> -			unsigned long t = igt_nsec_elapsed(&start);
>> -
>> -			igt_assert(gem_bo_busy(fd, spin->handle));
>> -			if ((t - timeout) > 250e6) {
>> -				timeout = t;
>> -				igt_warn("Spinner not running after %.2fms\n",
>> -					 (double)t / 1e6);
>> -				igt_assert(t < 2e9);
>> -			}
>> -		}
>> -	} else {
>> -		igt_debug("__spin_wait - usleep mode\n");
>> -		usleep(500e3); /* Better than nothing! */
>> -	}
>> -
>> -	igt_assert(gem_bo_busy(fd, spin->handle));
>> -	return igt_nsec_elapsed(&start);
>> -}
>> -
>> -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			       const struct intel_execution_engine2 *e)
>> -{
>> -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
>> -
>> -	__spin_wait(fd, spin);
>> -
>> -	return spin;
>> -}
>> -
>> -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>> -			     const struct intel_execution_engine2 *e)
>> -{
>> -	igt_require_gem(fd);
>> -
>> -	return __spin_sync(fd, ahnd, ctx, e);
>> -}
>> -
>>   static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>>   {
>>   	if (!spin)
>> @@ -484,7 +422,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
>>   	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>>   
>>   	if (flags & TEST_BUSY)
>> -		spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   	else
>>   		spin = NULL;
>>   
>> @@ -536,7 +474,7 @@ busy_start(int gem_fd, const intel_ctx_t *ctx,
>>   	 */
>>   	sleep(2);
>>   
>> -	spin = __spin_sync(gem_fd, ahnd, ctx, e);
>> +	spin = __igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   
>>   	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>>   
>> @@ -583,7 +521,7 @@ busy_double_start(int gem_fd, const intel_ctx_t *ctx,
>>   	 * re-submission in execlists mode. Make sure busyness is correctly
>>   	 * reported with the engine busy, and after the engine went idle.
>>   	 */
>> -	spin[0] = __spin_sync(gem_fd, ahnd, ctx, e);
>> +	spin[0] = __igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   	usleep(500e3);
>>   	spin[1] = __igt_spin_new(gem_fd,
>>   				 .ahnd = ahndN,
>> @@ -675,7 +613,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   
>>   	igt_assert_eq(i, num_engines);
>>   
>> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   	pmu_read_multi(fd[0], num_engines, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>>   	if (flags & TEST_TRAILING_IDLE)
>> @@ -737,7 +675,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   		else if (spin)
>>   			__submit_spin(gem_fd, spin, e_, 64);
>>   		else
>> -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
>> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
>>   
>>   		val[i++] = I915_PMU_ENGINE_BUSY(e_->class, e_->instance);
>>   	}
>> @@ -749,7 +687,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   		fd[i] = open_group(gem_fd, val[i], fd[0]);
>>   
>>   	/* Small delay to allow engines to start. */
>> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>>   
>>   	pmu_read_multi(fd[0], num_engines, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>> @@ -796,7 +734,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   		if (spin)
>>   			__submit_spin(gem_fd, spin, e, 64);
>>   		else
>> -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
>> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
>>   
>>   		val[i++] = I915_PMU_ENGINE_BUSY(e->class, e->instance);
>>   	}
>> @@ -807,7 +745,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>>   		fd[i] = open_group(gem_fd, val[i], fd[0]);
>>   
>>   	/* Small delay to allow engines to start. */
>> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>>   
>>   	pmu_read_multi(fd[0], num_engines, tval[0]);
>>   	slept = measured_usleep(batch_duration_ns / 1000);
>> @@ -848,7 +786,7 @@ no_sema(int gem_fd, const intel_ctx_t *ctx,
>>   			   fd[0]);
>>   
>>   	if (flags & TEST_BUSY)
>> -		spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   	else
>>   		spin = NULL;
>>   
>> @@ -1406,7 +1344,7 @@ multi_client(int gem_fd, const intel_ctx_t *ctx,
>>   	 */
>>   	fd[1] = open_pmu(gem_fd, config);
>>   
>> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>>   
>>   	val[0] = val[1] = __pmu_read_single(fd[0], &ts[0]);
>>   	slept[1] = measured_usleep(batch_duration_ns / 1000);
>> @@ -1776,7 +1714,7 @@ static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
>>   
>>   	igt_debug("Using engine %u:%u\n", e.class, e.instance);
>>   
>> -	return spin_sync(i915, ahnd, *ctx, &e);
>> +	return igt_sync_spin(i915, ahnd, *ctx, &e);
>>   }
>>   
>>   static void
>> -- 
>> 2.39.2
>>
