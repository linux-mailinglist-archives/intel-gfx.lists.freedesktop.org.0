Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D546D0695
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 15:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EA1C10EDF9;
	Thu, 30 Mar 2023 13:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4780710EDF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 13:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680182800; x=1711718800;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kTCsf9gGxApxw6Te6rmfDnqf6Lim9i3cnOcAmezcVd4=;
 b=lSaQ33ZNaWrUzC1f1boMtpX5aulMbWpuE84eXU88jqzE3zaUhz3bGSqU
 fYLAPN+SxXBX83Ntln00UHsXju/Z/gNdPuk27VAi/vqWEbJ5wYhuxOKhB
 1UQn2OAVaGeJSBlg2oPVlXYhhJtTBsSB15y6v6vr4Uz67s6evyFCwxV6m
 LEDTv6T+oxzFNis3xvCjfDqijicq+QSPZrAXXQZSW4288QIf1NtTMLe7X
 mUYj9uXUjY8s122XdzdadPeT/EO6RN1nGn6GeyOBNBPCH/JOidYPn5F1y
 NfdhRChbMe8Ht1oXWHdYsLofb83f1clVGjFjELKYZpTaX7/wFEwWbsxNS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="368945845"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="368945845"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 06:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="858914626"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="858914626"
Received: from bjmcgrat-mobl.amr.corp.intel.com (HELO [10.213.215.205])
 ([10.213.215.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 06:26:38 -0700
Message-ID: <145ce975-d5b0-d0f1-8020-de3e368972be@linux.intel.com>
Date: Thu, 30 Mar 2023 14:26:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-9-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230330004103.1295413-9-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/pmu: Split reading engine and
 other events into helpers
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


On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
> Split the event reading function into engine and other helpers.

What, why and how please, third bit not being needed in this case. :)

> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 93 ++++++++++++++++++---------------
>   1 file changed, 52 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 40ce1dc00067..9bd9605d2662 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -641,58 +641,69 @@ static u64 read_sample_us(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>   	return div_u64(read_sample(pmu, gt_id, sample), USEC_PER_SEC);
>   }
>   
> -static u64 __i915_pmu_event_read(struct perf_event *event)
> +static u64 __i915_pmu_event_read_engine(struct perf_event *event)
>   {
> -	struct drm_i915_private *i915 =
> -		container_of(event->pmu, typeof(*i915), pmu.base);
> -	struct i915_pmu *pmu = &i915->pmu;
> +	struct drm_i915_private *i915 = container_of(event->pmu, typeof(*i915), pmu.base);

Liking the over 80 look, if you insist. :)

> +	u8 sample = engine_event_sample(event);
> +	struct intel_engine_cs *engine;
>   	u64 val = 0;
>   
> -	if (is_engine_event(event)) {
> -		u8 sample = engine_event_sample(event);
> -		struct intel_engine_cs *engine;
> -
> -		engine = intel_engine_lookup_user(i915,
> -						  engine_event_class(event),
> -						  engine_event_instance(event));
> +	engine = intel_engine_lookup_user(i915,
> +					  engine_event_class(event),
> +					  engine_event_instance(event));
>   
> -		if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
> -			/* Do nothing */
> -		} else if (sample == I915_SAMPLE_BUSY &&
> -			   intel_engine_supports_stats(engine)) {
> -			ktime_t unused;
> +	if (drm_WARN_ON_ONCE(&i915->drm, !engine)) {
> +		/* Do nothing */
> +	} else if (sample == I915_SAMPLE_BUSY &&
> +		   intel_engine_supports_stats(engine)) {
> +		ktime_t unused;
>   
> -			val = ktime_to_ns(intel_engine_get_busy_time(engine,
> -								     &unused));
> -		} else {
> -			val = engine->pmu.sample[sample].cur;
> -		}
> +		val = ktime_to_ns(intel_engine_get_busy_time(engine,
> +							     &unused));
>   	} else {
> -		const unsigned int gt_id = config_gt_id(event->attr.config);
> -		const u64 config = config_counter(event->attr.config);
> -
> -		switch (config) {
> -		case I915_PMU_ACTUAL_FREQUENCY:
> -			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
> -			break;
> -		case I915_PMU_REQUESTED_FREQUENCY:
> -			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
> -			break;
> -		case I915_PMU_INTERRUPTS:
> -			val = READ_ONCE(pmu->irq_count);
> -			break;
> -		case I915_PMU_RC6_RESIDENCY:
> -			val = get_rc6(i915->gt[gt_id]);
> -			break;
> -		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
> -			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
> -			break;
> -		}
> +		val = engine->pmu.sample[sample].cur;
>   	}
>   
>   	return val;
>   }
>   
> +static u64 __i915_pmu_event_read_other(struct perf_event *event)
> +{
> +	struct drm_i915_private *i915 = container_of(event->pmu, typeof(*i915), pmu.base);
> +	const unsigned int gt_id = config_gt_id(event->attr.config);
> +	const u64 config = config_counter(event->attr.config);
> +	struct i915_pmu *pmu = &i915->pmu;
> +	u64 val = 0;
> +
> +	switch (config) {
> +	case I915_PMU_ACTUAL_FREQUENCY:
> +		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
> +		break;
> +	case I915_PMU_REQUESTED_FREQUENCY:
> +		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
> +		break;
> +	case I915_PMU_INTERRUPTS:
> +		val = READ_ONCE(pmu->irq_count);
> +		break;
> +	case I915_PMU_RC6_RESIDENCY:
> +		val = get_rc6(i915->gt[gt_id]);
> +		break;
> +	case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
> +		val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
> +		break;
> +	}
> +
> +	return val;
> +}
> +
> +static u64 __i915_pmu_event_read(struct perf_event *event)
> +{
> +	if (is_engine_event(event))
> +		return __i915_pmu_event_read_engine(event);
> +	else
> +		return __i915_pmu_event_read_other(event);
> +}
> +
>   static void i915_pmu_event_read(struct perf_event *event)
>   {
>   	struct drm_i915_private *i915 =

No real complaints - it is tidier and more readable. Just drop a note in 
the commit that is why and:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
