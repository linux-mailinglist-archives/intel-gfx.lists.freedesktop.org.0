Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4045A745A4F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 12:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F7F10E032;
	Mon,  3 Jul 2023 10:31:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9868810E032;
 Mon,  3 Jul 2023 10:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688380301; x=1719916301;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9kc+0P2dPWJ3DInEyVlgsbUljYqwYUoCHNxjTRfjv/M=;
 b=nufnE7oAyekdN04+meIfA5qYAo8qisuKZIx+4GGpHcW7Nitmu5fsBdjY
 P5H9hzh0qovVxdRqqGODrKMB5G9fdkiaU7ILl9SODu/OSoP3hB8zrVQ3m
 OrLNQTMxclvTCy3KvJdsczrnvvDV9EvjuUoSLE/qsIO3MOlAHMDZmAZcV
 /5uN3jExRLtlosvE314uTJeZ7wH/HFnby7aYtMDsFIpVWE858OS6Bj6zJ
 An50jVQsysS3qUNBKI0tBMx4kEqNuMg1iCuZcsu0AxhQTjKUhcIdVqkx5
 OinHyMcEqhhxYjNlKzzxat3AyIxdTrQdELEtvICxAiwPdaW7VK/MDqXWe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="449222206"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="449222206"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:31:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="788482408"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="788482408"
Received: from dryan13-mobl.ger.corp.intel.com (HELO [10.213.232.206])
 ([10.213.232.206])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:31:25 -0700
Message-ID: <2313fd37-1e6f-519b-c383-45e871dc5e7f@linux.intel.com>
Date: Mon, 3 Jul 2023 11:31:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
References: <20230523105139.626772-1-tvrtko.ursulin@linux.intel.com>
 <c0058e4f-faf4-fefd-408d-1837375f65af@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c0058e4f-faf4-fefd-408d-1837375f65af@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_rps: Exercise
 sysfs thresholds
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/06/2023 20:16, Belgaumkar, Vinay wrote:
> 
> On 5/23/2023 3:51 AM, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Exercise a bunch of up and down rps thresholds to verify hardware
>> is happy with them all.
>>
>> To limit the overall runtime relies on probability and number of runs
>> to approach complete coverage.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> ---
>>   tests/i915/i915_pm_rps.c | 232 +++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 232 insertions(+)
>>
>> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
>> index 050d68a16559..acff59207311 100644
>> --- a/tests/i915/i915_pm_rps.c
>> +++ b/tests/i915/i915_pm_rps.c
>> @@ -39,8 +39,10 @@
>>   #include "i915/gem.h"
>>   #include "i915/gem_create.h"
>>   #include "igt.h"
>> +#include "igt_aux.h"
>>   #include "igt_dummyload.h"
>>   #include "igt_perf.h"
>> +#include "igt_rand.h"
>>   #include "igt_sysfs.h"
>>   /**
>>    * TEST: i915 pm rps
>> @@ -914,6 +916,200 @@ static void pm_rps_exit_handler(int sig)
>>       close(drm_fd);
>>   }
>> +static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const 
>> intel_ctx_t *ctx,
>> +                   const struct intel_execution_engine2 *e)
>> +{
>> +    struct igt_spin_factory opts = {
>> +        .ahnd = ahnd,
>> +        .ctx = ctx,
>> +        .engine = e->flags,
>> +    };
>> +
>> +    if (gem_class_can_store_dword(fd, e->class))
>> +        opts.flags |= IGT_SPIN_POLL_RUN;
>> +
>> +    return __igt_spin_factory(fd, &opts);
>> +}
>> +
>> +static unsigned long __spin_wait(int fd, igt_spin_t *spin)
>> +{
>> +    struct timespec start = { };
>> +
>> +    igt_nsec_elapsed(&start);
>> +
>> +    if (igt_spin_has_poll(spin)) {
>> +        unsigned long timeout = 0;
>> +
>> +        while (!igt_spin_has_started(spin)) {
>> +            unsigned long t = igt_nsec_elapsed(&start);
>> +
>> +            igt_assert(gem_bo_busy(fd, spin->handle));
>> +            if ((t - timeout) > 250e6) {
>> +                timeout = t;
>> +                igt_warn("Spinner not running after %.2fms\n",
>> +                     (double)t / 1e6);
>> +                igt_assert(t < 2e9);
>> +            }
>> +        }
>> +    } else {
>> +        igt_debug("__spin_wait - usleep mode\n");
>> +        usleep(500e3); /* Better than nothing! */
>> +    }
>> +
>> +    igt_assert(gem_bo_busy(fd, spin->handle));
>> +    return igt_nsec_elapsed(&start);
>> +}
>> +
>> +static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const 
>> intel_ctx_t *ctx,
>> +                   const struct intel_execution_engine2 *e)
>> +{
>> +    igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
>> +
>> +    __spin_wait(fd, spin);
>> +
>> +    return spin;
>> +}
> All the above spin functions have been duplicated across 2-3 tests, time 
> to create a lib for them?

Three is the magic number so yes, a reasonable ask - done locally. 
Holding off the re-send though until the 2nd point below is discussed.

>> +
>> +static struct i915_engine_class_instance
>> +find_dword_engine(int i915, const unsigned int gt)
>> +{
>> +    struct i915_engine_class_instance *engines, ci = { -1, -1 };
>> +    unsigned int i, count;
>> +
>> +    engines = gem_list_engines(i915, 1u << gt, ~0u, &count);
>> +    igt_assert(engines);
>> +
>> +    for (i = 0; i < count; i++) {
>> +        if (!gem_class_can_store_dword(i915, engines[i].engine_class))
>> +            continue;
>> +
>> +        ci = engines[i];
>> +        break;
>> +    }
>> +
>> +    free(engines);
>> +
>> +    return ci;
>> +}
>> +
>> +static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int 
>> gt,
>> +                const intel_ctx_t **ctx)
>> +{
>> +    struct i915_engine_class_instance ci = { -1, -1 };
>> +    struct intel_execution_engine2 e = { };
>> +
>> +    ci = find_dword_engine(i915, gt);
>> +
>> +    igt_require(ci.engine_class != (uint16_t)I915_ENGINE_CLASS_INVALID);
>> +
>> +    if (gem_has_contexts(i915)) {
>> +        e.class = ci.engine_class;
>> +        e.instance = ci.engine_instance;
>> +        e.flags = 0;
>> +        *ctx = intel_ctx_create_for_engine(i915, e.class, e.instance);
>> +    } else {
>> +        igt_require(gt == 0); /* Impossible anyway. */
>> +        e.class = gem_execbuf_flags_to_engine_class(I915_EXEC_DEFAULT);
>> +        e.instance = 0;
>> +        e.flags = I915_EXEC_DEFAULT;
>> +        *ctx = intel_ctx_0(i915);
>> +    }
>> +
>> +    igt_debug("Using engine %u:%u\n", e.class, e.instance);
>> +
>> +    return __spin_sync(i915, ahnd, *ctx, &e);
>> +}
>> +
>> +#define TEST_IDLE 0x1
>> +#define TEST_PARK 0x2
>> +static void test_thresholds(int i915, unsigned int gt, unsigned int 
>> flags)
>> +{
>> +    uint64_t ahnd = get_reloc_ahnd(i915, 0);
>> +    const unsigned int points = 10;
>> +    unsigned int def_up, def_down;
>> +    igt_spin_t *spin = NULL;
>> +    const intel_ctx_t *ctx;
>> +    unsigned int *ta, *tb;
>> +    unsigned int i;
>> +    int sysfs;
>> +
>> +    sysfs = igt_sysfs_gt_open(i915, gt);
>> +    igt_require(sysfs >= 0);
>> +
>> +    /* Feature test */
>> +    def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
>> +    def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
>> +    igt_require(def_up && def_down);
>> +
>> +    /* Check invalid percentages are rejected */
>> +    igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 
>> 101), false);
>> +    igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 
>> 101), false);
>> +
>> +    /*
>> +     * Invent some random up-down thresholds, but always include 0 
>> and 100
>> +     * just to have some wild edge cases.
>> +     */
>> +    ta = calloc(points, sizeof(unsigned int));
>> +    tb = calloc(points, sizeof(unsigned int));
>> +    igt_require(ta && tb);
>> +
>> +    ta[0] = tb[0] = 0;
>> +    ta[1] = tb[1] = 100;
>> +    hars_petruska_f54_1_random_seed(time(NULL));
>> +    for (i = 2; i < points; i++) {
>> +        ta[i] = hars_petruska_f54_1_random_unsafe_max(100);
>> +        tb[i] = hars_petruska_f54_1_random_unsafe_max(100);
>> +    }
>> +    igt_permute_array(ta, points, igt_exchange_int);
>> +    igt_permute_array(tb, points, igt_exchange_int);
>> +
>> +    /* Exercise the thresholds with a GPU load to trigger park/unpark 
>> etc */
>> +    for (i = 0; i < points; i++) {
>> +        igt_info("Testing thresholds up %u%% and down %u%%...\n", 
>> ta[i], tb[i]);
>> +        igt_assert_eq(igt_sysfs_set_u32(sysfs, 
>> "rps_up_threshold_pct", ta[i]), true);
>> +        igt_assert_eq(igt_sysfs_set_u32(sysfs, 
>> "rps_down_threshold_pct", tb[i]), true);
> 
> Do we care if threshold_down > threshold_up?

We should avoid creating a policy unless there is no other choice. I 
don't know - can we categorically say it never make sense to have down 
greater than up? For any GPU, number of discrete frequencies, workload, 
use case? You are more at home in this area.

Regards,

Tvrtko

> 
> Thanks,
> 
> Vinay.
> 
>> +
>> +        if (flags & TEST_IDLE) {
>> +            gem_quiescent_gpu(i915);
>> +        } else if (spin) {
>> +            intel_ctx_destroy(i915, ctx);
>> +            igt_spin_free(i915, spin);
>> +            spin = NULL;
>> +            if (flags & TEST_PARK) {
>> +                gem_quiescent_gpu(i915);
>> +                usleep(500000);
>> +            }
>> +        }
>> +        spin = spin_sync_gt(i915, ahnd, gt, &ctx);
>> +        usleep(1000000);
>> +        if (flags & TEST_IDLE) {
>> +            intel_ctx_destroy(i915, ctx);
>> +            igt_spin_free(i915, spin);
>> +            if (flags & TEST_PARK) {
>> +                gem_quiescent_gpu(i915);
>> +                usleep(500000);
>> +            }
>> +            spin = NULL;
>> +        }
>> +    }
>> +
>> +    if (spin) {
>> +        intel_ctx_destroy(i915, ctx);
>> +        igt_spin_free(i915, spin);
>> +    }
>> +
>> +    gem_quiescent_gpu(i915);
>> +
>> +    /* Restore defaults */
>> +    igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 
>> def_up), true);
>> +    igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 
>> def_down), true);
>> +
>> +    free(ta);
>> +    free(tb);
>> +    close(sysfs);
>> +    put_ahnd(ahnd);
>> +}
>> +
>>   igt_main
>>   {
>>       igt_fixture {
>> @@ -993,4 +1189,40 @@ igt_main
>>           waitboost(drm_fd, true);
>>           igt_disallow_hang(drm_fd, hang);
>>       }
>> +
>> +    igt_subtest_with_dynamic("thresholds-idle") {
>> +        int tmp, gt;
>> +
>> +        i915_for_each_gt(drm_fd, tmp, gt) {
>> +            igt_dynamic_f("gt%u", gt)
>> +                test_thresholds(drm_fd, gt, TEST_IDLE);
>> +        }
>> +    }
>> +
>> +    igt_subtest_with_dynamic("thresholds") {
>> +        int tmp, gt;
>> +
>> +        i915_for_each_gt(drm_fd, tmp, gt) {
>> +            igt_dynamic_f("gt%u", gt)
>> +                test_thresholds(drm_fd, gt, 0);
>> +        }
>> +    }
>> +
>> +    igt_subtest_with_dynamic("thresholds-park") {
>> +        int tmp, gt;
>> +
>> +        i915_for_each_gt(drm_fd, tmp, gt) {
>> +            igt_dynamic_f("gt%u", gt)
>> +                test_thresholds(drm_fd, gt, TEST_PARK);
>> +        }
>> +    }
>> +
>> +    igt_subtest_with_dynamic("thresholds-idle-park") {
>> +        int tmp, gt;
>> +
>> +        i915_for_each_gt(drm_fd, tmp, gt) {
>> +            igt_dynamic_f("gt%u", gt)
>> +                test_thresholds(drm_fd, gt, TEST_IDLE | TEST_PARK);
>> +        }
>> +    }
>>   }
