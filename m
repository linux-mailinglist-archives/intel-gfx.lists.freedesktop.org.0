Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C03C222039
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 12:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969D36E0DD;
	Thu, 16 Jul 2020 10:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346CD6E0DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 10:03:30 +0000 (UTC)
IronPort-SDR: Q4wrGSSQ7k+xhte28g//SR7OlI3DN0JlqRYOllYvMhPnuYY2VvoHbUe4jUKS0bZG+UAsWy4MV6
 9mnb744ByHbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="136801689"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="136801689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 03:03:29 -0700
IronPort-SDR: CjkEgKeL1rWeDNATVoYWrFHNf+t7ESyN5H2rd5YMsF3akOJvGvt4GEvqxjfr+sZyUusUwtFPdC
 09i3UOFwdiQw==
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; d="scan'208";a="460424077"
Received: from unknown (HELO [10.249.34.86]) ([10.249.34.86])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 03:03:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200716094643.31410-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1f4e4566-53eb-a91d-fa3e-0576324042fa@linux.intel.com>
Date: Thu, 16 Jul 2020 11:03:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716094643.31410-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Provide the perf pmu.module
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/07/2020 10:46, Chris Wilson wrote:
> Rather than manually implement our own module reference counting for perf
> pmu events, finally realise that there is a module parameter to struct
> pmu for this very purpose.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: stable@vger.kernel.org
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 28bc5f13ae52..056994224c6b 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -445,8 +445,6 @@ static void i915_pmu_event_destroy(struct perf_event *event)
>   		container_of(event->pmu, typeof(*i915), pmu.base);
>   
>   	drm_WARN_ON(&i915->drm, event->parent);
> -
> -	module_put(THIS_MODULE);
>   }
>   
>   static int
> @@ -538,10 +536,8 @@ static int i915_pmu_event_init(struct perf_event *event)
>   	if (ret)
>   		return ret;
>   
> -	if (!event->parent) {
> -		__module_get(THIS_MODULE);
> +	if (!event->parent)
>   		event->destroy = i915_pmu_event_destroy;
> -	}
>   
>   	return 0;
>   }
> @@ -1130,6 +1126,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	if (!pmu->base.attr_groups)
>   		goto err_attr;
>   
> +	pmu->base.module	= THIS_MODULE;
>   	pmu->base.task_ctx_nr	= perf_invalid_context;
>   	pmu->base.event_init	= i915_pmu_event_init;
>   	pmu->base.add		= i915_pmu_event_add;
> 

Okay!

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
