Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 168016FC645
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 14:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820C510E10B;
	Tue,  9 May 2023 12:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3CE10E10B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 12:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683635199; x=1715171199;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xPI+Gzxjl5OLEJSxqXuwJ5F281pTgozuGr2X4lUQEu8=;
 b=NW1ZTxI/+2BYGpg6GBAZs0S5mvENRVL1hzGycOV7JrKh50Io2ogKceF9
 5HdgfWgOeeuE4UdxIDiXvBWetdHSdzLXcMwaLtNxcErspAqZsOcERjtRo
 C7fvpYTHrxVStuGUoZSCKljWBgxXuI+VynOPNB5+rsro6wILy5+tMx8iV
 v4PqM/Ta7DeqcrNr+RmjmPb1/S+u6YKL0m3WA7cxinVCuQKBjucC9i2BY
 +BC+REcIeZ/hcbYNpdeGMhQW9GNZMvHkBsr+M+AgSAql+JEcBZbY2K+x0
 thAJ7uRuD+2gRzpyw6mV6+HJnfkD53WV5n8M4WF6E9YFtoiqrJbOIhU1l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="330270569"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="330270569"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="676455877"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="676455877"
Received: from ttmorgan-mobl.ger.corp.intel.com (HELO [10.213.213.191])
 ([10.213.213.191])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:26:37 -0700
Message-ID: <ce5994ed-f161-eb19-f51e-a67f87b9e967@linux.intel.com>
Date: Tue, 9 May 2023 13:26:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-2-umesh.nerlige.ramappa@intel.com>
 <ZFk2zXejPIezTVQJ@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZFk2zXejPIezTVQJ@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/pmu: Support PMU for all
 engines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/05/2023 18:52, Umesh Nerlige Ramappa wrote:
> On Fri, May 05, 2023 at 05:58:11PM -0700, Umesh Nerlige Ramappa wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Given how the metrics are already exported, we also need to run sampling
>> over engines from all GTs.
>>
>> Problem of GT frequencies is left for later.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> drivers/gpu/drm/i915/i915_pmu.c | 13 ++++++++++---
>> 1 file changed, 10 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c 
>> b/drivers/gpu/drm/i915/i915_pmu.c
>> index 7ece883a7d95..67fa6cd77529 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -10,6 +10,7 @@
>> #include "gt/intel_engine_pm.h"
>> #include "gt/intel_engine_regs.h"
>> #include "gt/intel_engine_user.h"
>> +#include "gt/intel_gt.h"
>> #include "gt/intel_gt_pm.h"
>> #include "gt/intel_gt_regs.h"
>> #include "gt/intel_rc6.h"
>> @@ -414,8 +415,9 @@ static enum hrtimer_restart i915_sample(struct 
>> hrtimer *hrtimer)
>>     struct drm_i915_private *i915 =
>>         container_of(hrtimer, struct drm_i915_private, pmu.timer);
>>     struct i915_pmu *pmu = &i915->pmu;
>> -    struct intel_gt *gt = to_gt(i915);
>>     unsigned int period_ns;
>> +    struct intel_gt *gt;
>> +    unsigned int i;
>>     ktime_t now;
>>
>>     if (!READ_ONCE(pmu->timer_enabled))
>> @@ -431,8 +433,13 @@ static enum hrtimer_restart i915_sample(struct 
>> hrtimer *hrtimer)
>>      * grabbing the forcewake. However the potential error from timer 
>> call-
>>      * back delay greatly dominates this so we keep it simple.
>>      */
>> -    engines_sample(gt, period_ns);
>> -    frequency_sample(gt, period_ns);
>> +
>> +    for_each_gt(gt, i915, i) {
>> +        engines_sample(gt, period_ns);
>> +
>> +        if (i == 0) /* FIXME */
>> +            frequency_sample(gt, period_ns);
> 
> If the current series is already handling the FIXME at a later patch, I 
> would just change this to a comment - /* Support gt0 for now */
> 
> With or without that, this is
> 
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 
> @Tvrtko, Note that I am only transporting the patches (unmodified) from 
> internal to upstream, so assuming I am still a valid reviewer. If not, 
> let me know.

I think that is okay.

More of a problem is when you make comments like the above "I would just 
change" - the question then is are you expecting me to make that change? 
;) I think it would be best if you handled such tweaks in the series. In 
this particular patch it is probably not really required since it gets 
overwritten later as you say. It's probably just a left-over untidiness 
from "back in the day".

Regards,

Tvrtko
