Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BBB32CE6B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 09:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8676E49F;
	Thu,  4 Mar 2021 08:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955096E49F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 08:29:03 +0000 (UTC)
IronPort-SDR: 3HE7Q7sDgz6v7aBJAp8GtNGZ+IE0YS9+zCH1uCRquZ20cnULrI/M3WjvztDxR/ggrmxMEokZuD
 9U//xjd+rS6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184959999"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184959999"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 00:29:03 -0800
IronPort-SDR: 13qgzYZr9cfZIaZTmrkPFmusl1a3BvytgrBfU+R6tSqYT2ApIRouVrdqsGqPxd19i8Lk33Lcby
 Ow5dspNkdMfg==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="407673541"
Received: from mtelelek-mobl.ger.corp.intel.com (HELO [10.249.41.65])
 ([10.249.41.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 00:29:01 -0800
To: Chris Wilson <chris.p.wilson@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
 <161481659467.25897.2525788939236038076@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <81d17b5e-5b32-69b9-67bb-00da8469d88a@intel.com>
Date: Thu, 4 Mar 2021 10:28:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <161481659467.25897.2525788939236038076@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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

On 04/03/2021 02:09, Chris Wilson wrote:
> Quoting Umesh Nerlige Ramappa (2021-03-03 21:28:00)
>> Perf measurements rely on CPU and engine timestamps to correlate
>> events of interest across these time domains. Current mechanisms get
>> these timestamps separately and the calculated delta between these
>> timestamps lack enough accuracy.
>>
>> To improve the accuracy of these time measurements to within a few us,
>> add a query that returns the engine and cpu timestamps captured as
>> close to each other as possible.
>>
>> v2: (Tvrtko)
>> - document clock reference used
>> - return cpu timestamp always
>> - capture cpu time just before lower dword of cs timestamp
>>
>> v3: (Chris)
>> - use uncore-rpm
>> - use __query_cs_timestamp helper
>>
>> v4: (Lionel)
>> - Kernel perf subsytem allows users to specify the clock id to be used
>>    in perf_event_open. This clock id is used by the perf subsystem to
>>    return the appropriate cpu timestamp in perf events. Similarly, let
>>    the user pass the clockid to this query so that cpu timestamp
>>    corresponds to the clock id requested.
>>
>> v5: (Tvrtko)
>> - Use normal ktime accessors instead of fast versions
>> - Add more uApi documentation
>>
>> v6: (Lionel)
>> - Move switch out of spinlock
>>
>> v7: (Chris)
>> - cs_timestamp is a misnomer, use cs_cycles instead
>> - return the cs cycle frequency as well in the query
>>
>> v8:
>> - Add platform and engine specific checks
>>
>> v9: (Lionel)
>> - Return 2 cpu timestamps in the query - captured before and after the
>>    register read
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_query.c | 144 ++++++++++++++++++++++++++++++
>>   include/uapi/drm/i915_drm.h       |  47 ++++++++++
>>   2 files changed, 191 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
>> index fed337ad7b68..acca22ee6014 100644
>> --- a/drivers/gpu/drm/i915/i915_query.c
>> +++ b/drivers/gpu/drm/i915/i915_query.c
>> @@ -6,6 +6,8 @@
>>   
>>   #include <linux/nospec.h>
>>   
>> +#include "gt/intel_engine_pm.h"
>> +#include "gt/intel_engine_user.h"
>>   #include "i915_drv.h"
>>   #include "i915_perf.h"
>>   #include "i915_query.h"
>> @@ -90,6 +92,147 @@ static int query_topology_info(struct drm_i915_private *dev_priv,
>>          return total_length;
>>   }
>>   
>> +typedef u64 (*__ktime_func_t)(void);
>> +static __ktime_func_t __clock_id_to_func(clockid_t clk_id)
>> +{
>> +       /*
>> +        * Use logic same as the perf subsystem to allow user to select the
>> +        * reference clock id to be used for timestamps.
>> +        */
>> +       switch (clk_id) {
>> +       case CLOCK_MONOTONIC:
>> +               return &ktime_get_ns;
>> +       case CLOCK_MONOTONIC_RAW:
>> +               return &ktime_get_raw_ns;
>> +       case CLOCK_REALTIME:
>> +               return &ktime_get_real_ns;
>> +       case CLOCK_BOOTTIME:
>> +               return &ktime_get_boottime_ns;
>> +       case CLOCK_TAI:
>> +               return &ktime_get_clocktai_ns;
>> +       default:
>> +               return NULL;
>> +       }
>> +}
>> +
>> +static inline int
>> +__read_timestamps(struct intel_uncore *uncore,
>> +                 i915_reg_t lower_reg,
>> +                 i915_reg_t upper_reg,
>> +                 u64 *cs_ts,
>> +                 u64 *cpu_ts,
>> +                 __ktime_func_t cpu_clock)
>> +{
>> +       u32 upper, lower, old_upper, loop = 0;
>> +
>> +       upper = intel_uncore_read_fw(uncore, upper_reg);
>> +       do {
>> +               cpu_ts[0] = cpu_clock();
>> +               lower = intel_uncore_read_fw(uncore, lower_reg);
>> +               cpu_ts[1] = cpu_clock();
>> +               old_upper = upper;
>> +               upper = intel_uncore_read_fw(uncore, upper_reg);
> Both register reads comprise the timestamp returned to userspace, so
> presumably you want cpu_ts[] to wrap both.
>
>         do {
>                 old_upper = upper;
>
>                 cpu_ts[0] = cpu_clock();
>                 lower = intel_uncore_read_fw(uncore, lower_reg);
>                 upper = intel_uncore_read_fw(uncore, upper_reg);
>                 cpu_ts[1] = cpu_clock();
>         } while (upper != old_upper && loop++ < 2);

Actually if we want the best accuracy we can just deal with the lower dword.

We can check the upper one hasn't changed outside of the 2 cpu_clock() 
calls.


-Lionel


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
