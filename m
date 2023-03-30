Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267C86D0630
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 15:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B3510E408;
	Thu, 30 Mar 2023 13:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08DC10E408
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 13:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680182051; x=1711718051;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=N6zJWl1lot5mI2UZdOSZI+azGDR9vObV+PpH7UalICc=;
 b=DeqK6fICFwU72Y9psjVzEDsJBljh1CMIYCsb+CRcsNrlBRxw0UvjqRTR
 20NaTpmETIQ8v5LYlXZQA0EL4XnSrtd3ehjIKEYQ020lb4LyfXnxleSJe
 x8tcyvVWphBYbKydBS6KSDj56YhYlMFUb0NE0vU2onFpl7Hw7e2fdxoCa
 tTOt2IU6WCL5rw8smrvAq9LeQPCPWuPdVVpnNOfiooQFknzHmr/7YUrSx
 b6hW/UR0dpKMxRXilSss7ECZAGrAdyJfE5lwKd84LnUdqTOH83grDHSlX
 3pOZpGYRqhMlaLbsTIaQS3rkiuD9i3PI29okboz5FLpiHtzRaDbm4P2f7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="321548339"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="321548339"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 06:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="714970661"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="714970661"
Received: from bjmcgrat-mobl.amr.corp.intel.com (HELO [10.213.215.205])
 ([10.213.215.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 06:13:55 -0700
Message-ID: <9f05492f-ae97-4ea1-3a56-f5973673d0dd@linux.intel.com>
Date: Thu, 30 Mar 2023 14:13:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-8-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230330004103.1295413-8-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/pmu: Use a helper to convert
 to MHz
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
> Use a helper to convert frequency values to MHz.
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 15 +++++++--------
>   1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 2a5deabff088..40ce1dc00067 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -636,6 +636,11 @@ static int i915_pmu_event_init(struct perf_event *event)
>   	return 0;
>   }
>   
> +static u64 read_sample_us(struct i915_pmu *pmu, unsigned int gt_id, int sample)

Maybe better as read_freq_sample_mhz? Anyway:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> +{
> +	return div_u64(read_sample(pmu, gt_id, sample), USEC_PER_SEC);
> +}
> +
>   static u64 __i915_pmu_event_read(struct perf_event *event)
>   {
>   	struct drm_i915_private *i915 =
> @@ -668,16 +673,10 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
>   
>   		switch (config) {
>   		case I915_PMU_ACTUAL_FREQUENCY:
> -			val =
> -			   div_u64(read_sample(pmu, gt_id,
> -					       __I915_SAMPLE_FREQ_ACT),
> -				   USEC_PER_SEC /* to MHz */);
> +			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
>   			break;
>   		case I915_PMU_REQUESTED_FREQUENCY:
> -			val =
> -			   div_u64(read_sample(pmu, gt_id,
> -					       __I915_SAMPLE_FREQ_REQ),
> -				   USEC_PER_SEC /* to MHz */);
> +			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
>   			break;
>   		case I915_PMU_INTERRUPTS:
>   			val = READ_ONCE(pmu->irq_count);
