Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D656FC695
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 14:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BE310E0A5;
	Tue,  9 May 2023 12:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55CB510E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 12:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683635945; x=1715171945;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=UtiaPbyqFr/9KLNUF4tJjBcM3afnU0ySXYMBqovhFBc=;
 b=GkNlGiVOI1LIWMRki1hXFM05RZP/KWexkXjJdaXS7Bp5qbenYeDg+JH4
 Rwfb/dkmTIy4mXEpfSBt2HJzcf4FdH3a7KE1wU24HCe4+U7By06jw+yDv
 qUqX3MqAxXvM7kKxBUuzjBta4AX7Y5OsQ8omeGE8n4fVtZKzbh9xbcebs
 OZKOtlcot7nkStWOjONy8JRaozHOH0doYJ+oKDlmrbrcvfPSzxnNODkra
 8RTbGtx4IKtgISm4zYCLu3rUPcI511xyEN3tNJ6q3KTTuXV4qcmANUL6B
 Z7bq6dM2WVzDqXJj5GgxiBEkeUZOSrv+zhY42huK1+QjKaEV1zWxs2XNI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="329536303"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="329536303"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="692981361"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="692981361"
Received: from ttmorgan-mobl.ger.corp.intel.com (HELO [10.213.213.191])
 ([10.213.213.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:38:53 -0700
Message-ID: <b1390c7d-5fc5-417c-93d0-77882d613414@linux.intel.com>
Date: Tue, 9 May 2023 13:38:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all
 tiles
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


On 06/05/2023 01:58, Umesh Nerlige Ramappa wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Start exporting frequency and RC6 counters from all tiles.
> 
> Existing counters keep their names and config values and new one use the
> namespace added in the previous patch, with the "-gtN" added to their
> names.
> 
> Interrupts counter is an odd one off. Because it is the global device
> counters (not only GT) we choose not to add per tile versions for now.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 87 ++++++++++++++++++++++-----------
>   1 file changed, 59 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 12b2f3169abf..284e5c5b97bb 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
>   	struct intel_gt *gt = to_gt(i915);
>   
>   	unsigned int gt_id = config_gt_id(config);
> +	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>   
> -	if (gt_id)
> +	if (gt_id > max_gt_id)

Would this be clearer as:

unsigned in num_gts = 1 + (unsigned int)HAS_EXTRA_GT_LIST(i915);

if (gt_id >= num_gts)

?

Just thinking out loud, no real opinion either way.

>   		return -ENOENT;
>   
>   	switch (config_counter(config)) {
> @@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>   			return -ENODEV;
>   		break;
>   	case I915_PMU_INTERRUPTS:
> +		if (gt_id)
> +			return -ENOENT;
>   		break;
>   	case I915_PMU_RC6_RESIDENCY:
>   		if (!gt->rc6.supported)
> @@ -930,11 +933,20 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
>   	.attrs = i915_cpumask_attrs,
>   };
>   
> -#define __event(__config, __name, __unit) \
> +#define __event(__counter, __name, __unit) \
>   { \
> -	.config = (__config), \
> +	.counter = (__counter), \
>   	.name = (__name), \
>   	.unit = (__unit), \
> +	.global = false, \
> +}
> +
> +#define __global_event(__counter, __name, __unit) \
> +{ \
> +	.counter = (__counter), \
> +	.name = (__name), \
> +	.unit = (__unit), \
> +	.global = true, \
>   }
>   
>   #define __engine_event(__sample, __name) \
> @@ -973,15 +985,16 @@ create_event_attributes(struct i915_pmu *pmu)
>   {
>   	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>   	static const struct {
> -		u64 config;
> +		unsigned int counter;
>   		const char *name;
>   		const char *unit;
> +		bool global;
>   	} events[] = {
> -		__event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
> -		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
> -		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
> -		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
> -		__event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, "software-gt-awake-time", "ns"),
> +		__event(0, "actual-frequency", "M"),
> +		__event(1, "requested-frequency", "M"),
> +		__global_event(2, "interrupts", NULL),
> +		__event(3, "rc6-residency", "ns"),
> +		__event(4, "software-gt-awake-time", "ns"),
>   	};
>   	static const struct {
>   		enum drm_i915_pmu_engine_sample sample;
> @@ -996,12 +1009,17 @@ create_event_attributes(struct i915_pmu *pmu)
>   	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
>   	struct attribute **attr = NULL, **attr_iter;
>   	struct intel_engine_cs *engine;
> -	unsigned int i;
> +	struct intel_gt *gt;
> +	unsigned int i, j;
>   
>   	/* Count how many counters we will be exposing. */
> -	for (i = 0; i < ARRAY_SIZE(events); i++) {
> -		if (!config_status(i915, events[i].config))
> -			count++;
> +	for_each_gt(gt, i915, j) {
> +		for (i = 0; i < ARRAY_SIZE(events); i++) {
> +			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
> +
> +			if (!config_status(i915, config))
> +				count++;
> +		}
>   	}
>   
>   	for_each_uabi_engine(engine, i915) {
> @@ -1031,26 +1049,39 @@ create_event_attributes(struct i915_pmu *pmu)
>   	attr_iter = attr;
>   
>   	/* Initialize supported non-engine counters. */
> -	for (i = 0; i < ARRAY_SIZE(events); i++) {
> -		char *str;
> -
> -		if (config_status(i915, events[i].config))
> -			continue;
> -
> -		str = kstrdup(events[i].name, GFP_KERNEL);
> -		if (!str)
> -			goto err;
> +	for_each_gt(gt, i915, j) {
> +		for (i = 0; i < ARRAY_SIZE(events); i++) {
> +			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
> +			char *str;
>   
> -		*attr_iter++ = &i915_iter->attr.attr;
> -		i915_iter = add_i915_attr(i915_iter, str, events[i].config);
> +			if (config_status(i915, config))
> +				continue;
>   
> -		if (events[i].unit) {
> -			str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
> +			if (events[i].global || !HAS_EXTRA_GT_LIST(i915))
> +				str = kstrdup(events[i].name, GFP_KERNEL);
> +			else
> +				str = kasprintf(GFP_KERNEL, "%s-gt%u",
> +						events[i].name, j);
>   			if (!str)
>   				goto err;
>   
> -			*attr_iter++ = &pmu_iter->attr.attr;
> -			pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
> +			*attr_iter++ = &i915_iter->attr.attr;
> +			i915_iter = add_i915_attr(i915_iter, str, config);
> +
> +			if (events[i].unit) {
> +				if (events[i].global || !HAS_EXTRA_GT_LIST(i915))

Maybe worth moving the condition to for_each_gt?

   bool use_gt_suffix = HAS_EXTRA_GT_LIST(i915) && !events[i].global;

Again, more questionable bike shedding.

Regards,

Tvrtko

> +					str = kasprintf(GFP_KERNEL, "%s.unit",
> +							events[i].name);
> +				else
> +					str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
> +							events[i].name, j);
> +				if (!str)
> +					goto err;
> +
> +				*attr_iter++ = &pmu_iter->attr.attr;
> +				pmu_iter = add_pmu_attr(pmu_iter, str,
> +							events[i].unit);
> +			}
>   		}
>   	}
>   
