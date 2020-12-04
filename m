Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EDD2CEC95
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 11:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6336E13A;
	Fri,  4 Dec 2020 10:57:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77796E13A
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 10:57:56 +0000 (UTC)
IronPort-SDR: g9OADkI12Pczsknq/YlntuWMi7bJ2CeqkuzZHqljPHvzXHoefAGw2xo1yF8GKJt6Bu+hE5Ru5X
 igqAPt2NckqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="237475112"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="237475112"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 02:57:55 -0800
IronPort-SDR: kj9Z9gbFnJdmf8fbbMRnqTU1ajVSJyIYHCJmWtJUxg20sz8bCbYzEmjWPJFx8UDbQNRsxb6bKB
 y1jvegQ+NRsw==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="550907320"
Received: from sgefen-mobl1.ger.corp.intel.com (HELO [10.214.200.164])
 ([10.214.200.164])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 02:57:54 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
 <160703481225.6805.2703036425596972611@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <23fc777b-58d4-4bb0-6e2e-a0182246d063@linux.intel.com>
Date: Fri, 4 Dec 2020 10:57:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160703481225.6805.2703036425596972611@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Deprecate I915_PMU_LAST and
 optimize state tracking
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/12/2020 22:33, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-26 16:47:03)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Adding any kinds of "last" abi markers is usually a mistake which I
>> repeated when implementing the PMU because it felt convenient at the time.
>>
>> This patch marks I915_PMU_LAST as deprecated and stops the internal
>> implementation using it for sizing the event status bitmask and array.
>>
>> New way of sizing the fields is a bit less elegant, but it omits reserving
>> slots for tracking events we are not interested in, and as such saves some
>> runtime space. Adding sampling events is likely to be a special event and
>> the new plumbing needed will be easily detected in testing. Existing
>> asserts against the bitfield and array sizes are keeping the code safe.
>>
>> First event which gets the new treatment in this new scheme are the
>> interrupts - which neither needs any tracking in i915 pmu nor needs
>> waking up the GPU to read it.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_pmu.c | 64 +++++++++++++++++++++++++++------
>>   drivers/gpu/drm/i915/i915_pmu.h | 35 ++++++++++++------
>>   include/uapi/drm/i915_drm.h     |  2 +-
>>   3 files changed, 78 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index cd786ad12be7..cd564c709115 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -27,8 +27,6 @@
>>           BIT(I915_SAMPLE_WAIT) | \
>>           BIT(I915_SAMPLE_SEMA))
>>   
>> -#define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
>> -
>>   static cpumask_t i915_pmu_cpumask;
>>   static unsigned int i915_pmu_target_cpu = -1;
>>   
>> @@ -57,12 +55,39 @@ static bool is_engine_config(u64 config)
>>          return config < __I915_PMU_OTHER(0);
>>   }
>>   
>> -static unsigned int config_enabled_bit(u64 config)
>> +static unsigned int is_tracked_config(const u64 config)
>>   {
>> -       if (is_engine_config(config))
>> +       unsigned int val;
>> +
>> +       switch (config) {
>> +       case I915_PMU_ACTUAL_FREQUENCY:
>> +               val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
>> +               break;
>> +       case I915_PMU_REQUESTED_FREQUENCY:
>> +               val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
>> +               break;
>> +       case I915_PMU_RC6_RESIDENCY:
>> +               val = __I915_PMU_RC6_RESIDENCY_ENABLED;
>> +               break;
>> +       default:
>> +               return 0;
>> +       }
>> +
>> +       return val + 1;
>> +}
>> +
>> +static unsigned int config_enabled_bit(const u64 config)
>> +{
>> +       if (is_engine_config(config)) {
>>                  return engine_config_sample(config);
>> -       else
>> -               return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
>> +       } else {
>> +               unsigned int bit = is_tracked_config(config);
>> +
>> +               if (bit)
>> +                       return I915_ENGINE_SAMPLE_COUNT + bit - 1;
>> +               else
>> +                       return -1;
>> +       }
>>   }
>>   
>>   static u64 config_enabled_mask(u64 config)
>> @@ -80,10 +105,15 @@ static unsigned int event_enabled_bit(struct perf_event *event)
>>          return config_enabled_bit(event->attr.config);
>>   }
>>   
>> +static bool event_read_needs_wakeref(const struct perf_event *event)
>> +{
>> +       return event->attr.config == I915_PMU_RC6_RESIDENCY;
>> +}
>> +
>>   static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>   {
>>          struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> -       u64 enable;
>> +       u32 enable;
>>   
>>          /*
>>           * Only some counters need the sampling timer.
>> @@ -627,12 +657,19 @@ static void i915_pmu_enable(struct perf_event *event)
>>   {
>>          struct drm_i915_private *i915 =
>>                  container_of(event->pmu, typeof(*i915), pmu.base);
>> -       unsigned int bit = event_enabled_bit(event);
>> +       bool need_wakeref = event_read_needs_wakeref(event);
>>          struct i915_pmu *pmu = &i915->pmu;
>> -       intel_wakeref_t wakeref;
>> +       intel_wakeref_t wakeref = 0;
>>          unsigned long flags;
>> +       unsigned int bit;
>> +
>> +       if (need_wakeref)
>> +               wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +
>> +       bit = event_enabled_bit(event);
>> +       if (bit == -1)
>> +               goto update;
>>   
>> -       wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>>          spin_lock_irqsave(&pmu->lock, flags);
> 
> What are we taking a wakeref here for?
> 
> Looks just to be __get_rc6. Do we need to update the sample at all?

Yes, so __get_rc6 can record the start state. But if you have seen it 
called from irq context then obviously it is not safe.. Just no idea why 
we haven't hit it so far. Does perf_pmu need a more evil subtest?

But the part of needing wakeref for read makes no sense, 
i915_pmu_event_read itself is not taking it.. nor does event disable. 
Looks like I need to re-visit this whole topic to remind myself what 
gets called from irq context and what does not.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
