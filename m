Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7363A2DD67C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 18:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C38489829;
	Thu, 17 Dec 2020 17:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03517897EE;
 Thu, 17 Dec 2020 17:45:11 +0000 (UTC)
IronPort-SDR: XYwXjrLSHdggHNKic1UmHPflp51bfwlIXFZm8agReOgHrfOcoVPAxj90Zyvhh1B5bBobksU7+e
 V34G183BybEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="174524986"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="174524986"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 09:45:10 -0800
IronPort-SDR: yjDcHmnQu6kmIfIsR5zk6yM2ZUT75zcagsf2im3jj+G4V9HpweCGI5kSmDTTNKo9/OT/I0K1SB
 SkwH/pMnn80Q==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="453307431"
Received: from acherneg-mobl.ger.corp.intel.com (HELO [10.214.210.48])
 ([10.214.210.48])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 09:45:09 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201217172618.1637044-1-chris@chris-wilson.co.uk>
 <bf6adb3d-f86e-4a51-b0ff-bd1367a3a3f7@linux.intel.com>
 <160822678340.13606.1167891500717793691@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a76125ab-09f7-fa7b-5626-0a4f4122aca1@linux.intel.com>
Date: Thu, 17 Dec 2020 17:45:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160822678340.13606.1167891500717793691@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Exercise
 I915_PMU_SOFTWARE_GT_AWAKE_TIME
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


On 17/12/2020 17:39, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-12-17 17:33:05)
>>
>> On 17/12/2020 17:26, Chris Wilson wrote:
>>> Measure the sample gt-awake time while each engine and every engine is
>>> busy. They should all report the same duration, the elapsed runtime of
>>> the batch.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> ---
>>>    include/drm-uapi/i915_drm.h |  3 ++-
>>>    tests/i915/perf_pmu.c       | 42 +++++++++++++++++++++++++++++++++++++
>>>    2 files changed, 44 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
>>> index ef696d1a5..bf9ea471c 100644
>>> --- a/include/drm-uapi/i915_drm.h
>>> +++ b/include/drm-uapi/i915_drm.h
>>> @@ -177,8 +177,9 @@ enum drm_i915_pmu_engine_sample {
>>>    #define I915_PMU_REQUESTED_FREQUENCY        __I915_PMU_OTHER(1)
>>>    #define I915_PMU_INTERRUPTS         __I915_PMU_OTHER(2)
>>>    #define I915_PMU_RC6_RESIDENCY              __I915_PMU_OTHER(3)
>>> +#define I915_PMU_SOFTWARE_GT_AWAKE_TIME      __I915_PMU_OTHER(4)
>>>    
>>> -#define I915_PMU_LAST I915_PMU_RC6_RESIDENCY
>>> +#define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>>    
>>>    /* Each region is a minimum of 16k, and there are at most 255 of them.
>>>     */
>>> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
>>> index c2b186d39..90182074b 100644
>>> --- a/tests/i915/perf_pmu.c
>>> +++ b/tests/i915/perf_pmu.c
>>> @@ -883,6 +883,42 @@ sema_busy(int gem_fd,
>>>        close(fd[1]);
>>>    }
>>>    
>>> +static void test_awake(int i915)
>>> +{
>>> +     const struct intel_execution_engine2 *e;
>>> +     unsigned long slept;
>>> +     uint64_t val;
>>> +     int fd;
>>> +
>>> +     fd = perf_i915_open(i915, I915_PMU_SOFTWARE_GT_AWAKE_TIME);
>>> +     igt_skip_on(fd < 0);
>>> +
>>> +     /* Check that each engine is captured by the GT wakeref */
>>> +     __for_each_physical_engine(i915, e) {
>>> +             igt_spin_new(i915, .engine = e->flags);
>>> +
>>> +             val = pmu_read_single(fd);
>>> +             slept = measured_usleep(batch_duration_ns / 1000);
>>> +             val = pmu_read_single(fd) - val;
>>> +
>>> +             gem_quiescent_gpu(i915);
>>> +             assert_within_epsilon(val, slept, tolerance);
>>> +     }
>>> +
>>> +     /* And that the total GT wakeref matches walltime not summation */
>>> +     __for_each_physical_engine(i915, e)
>>> +             igt_spin_new(i915, .engine = e->flags);
>>> +
>>> +     val = pmu_read_single(fd);
>>> +     slept = measured_usleep(batch_duration_ns / 1000);
>>> +     val = pmu_read_single(fd) - val;
>>> +
>>> +     gem_quiescent_gpu(i915);
>>> +     assert_within_epsilon(val, slept, tolerance);
>>> +
>>
>> Erm who terminates all those spinners? :)
> 
> gem_quiescent_gpu() calls igt_terminate_spins(). Hmm, I actually thought
> it freed them too, but what's a small leak...

Okay, I'm fine with that.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
