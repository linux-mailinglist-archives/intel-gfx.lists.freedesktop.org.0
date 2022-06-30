Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B985617F0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 12:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBDC10F730;
	Thu, 30 Jun 2022 10:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 644C710F730
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 10:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656584997; x=1688120997;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7aUBLY+0L4KFwq1UHeLZk2W81fQq05ujHZmY5mOwnb4=;
 b=eaw5ZPWLKFJmyZNZyrAbpkTNItGlfROW25tbmMOf/5X3egbZVA8K7ggS
 5XburfH/wJgfu6gSyxrqBvZA5fA2YWZkaX2c0whzbhSnATMkCcj2jSb2x
 PH+G7SYSGTdtsJ2iwsy3/RgKGFva3fwrdehCtnSDGwGpWmdJUVo+5RGQn
 /g0MWrUCLN5J7tvazwWx6zCvpcDpJBmCsGsLvp1/39wPlr19OlnycnuKD
 qXsls7fUCHx12wToW9tUEEZSMP+Kg1BqphYHuiEVyZIP4EHYQ8oj3naw4
 K8ooI8fJ63/VBPbWSwGP4tKFfq5uAqdiuM592VUZ3RoLhSm4gmXppoNIx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368626198"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="368626198"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 03:29:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="837553898"
Received: from hanj1-mobl1.ccr.corp.intel.com (HELO [10.213.202.230])
 ([10.213.202.230])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 03:29:56 -0700
Message-ID: <3935ddd5-45e8-e38d-320d-d608aa4ba9bd@linux.intel.com>
Date: Thu, 30 Jun 2022 11:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Stuart Summers <stuart.summers@intel.com>
References: <d88ae0c8d7dda0d17ad52e48c4c2352df71fe85d.1656528043.git.stuart.summers@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d88ae0c8d7dda0d17ad52e48c4c2352df71fe85d.1656528043.git.stuart.summers@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 29/06/2022 19:46, Stuart Summers wrote:
> In the driver teardown, we are unregistering the gt prior
> to unregistering the PMU. This means there is a small window
> of time in which the application can request metrics from the
> PMU, some of which are calling into the uapi engines list,
> while the engines are not available. In this case we can
> see null pointer dereferences.
> 
> Prevent this by simply checking if the engines are present
> when those PMU events come through. Print a debug message
> indicating when they aren't available.

Obvious question - can we just move PMU unregister PMU to before 
unregister GT?

Regards,

Tvrtko

> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 72 +++++++++++++++++++--------------
>   1 file changed, 42 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 958b37123bf1..796a1d8e36f2 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -670,21 +670,28 @@ static void i915_pmu_enable(struct perf_event *event)
>   	if (is_engine_event(event)) {
>   		u8 sample = engine_event_sample(event);
>   		struct intel_engine_cs *engine;
> -
> -		engine = intel_engine_lookup_user(i915,
> -						  engine_event_class(event),
> -						  engine_event_instance(event));
> -
> -		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
> -			     I915_ENGINE_SAMPLE_COUNT);
> -		BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
> -			     I915_ENGINE_SAMPLE_COUNT);
> -		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
> -		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
> -		GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
> -
> -		engine->pmu.enable |= BIT(sample);
> -		engine->pmu.enable_count[sample]++;
> +		u8 class = engine_event_class(event);
> +		u8 instance = engine_event_instance(event);
> +
> +		engine = intel_engine_lookup_user(i915, class, instance);
> +		if (engine) {
> +			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.enable_count) !=
> +				     I915_ENGINE_SAMPLE_COUNT);
> +			BUILD_BUG_ON(ARRAY_SIZE(engine->pmu.sample) !=
> +				     I915_ENGINE_SAMPLE_COUNT);
> +			GEM_BUG_ON(sample >=
> +				   ARRAY_SIZE(engine->pmu.enable_count));
> +			GEM_BUG_ON(sample >=
> +				   ARRAY_SIZE(engine->pmu.sample));
> +			GEM_BUG_ON(engine->pmu.enable_count[sample] == ~0);
> +
> +			engine->pmu.enable |= BIT(sample);
> +			engine->pmu.enable_count[sample]++;
> +		} else {
> +			drm_dbg(&i915->drm,
> +				"Invalid engine event: { class:%d, inst:%d }\n",
> +				class, instance);
> +		}
>   	}
>   
>   	spin_unlock_irqrestore(&pmu->lock, flags);
> @@ -714,21 +721,26 @@ static void i915_pmu_disable(struct perf_event *event)
>   	if (is_engine_event(event)) {
>   		u8 sample = engine_event_sample(event);
>   		struct intel_engine_cs *engine;
> -
> -		engine = intel_engine_lookup_user(i915,
> -						  engine_event_class(event),
> -						  engine_event_instance(event));
> -
> -		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
> -		GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
> -		GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
> -
> -		/*
> -		 * Decrement the reference count and clear the enabled
> -		 * bitmask when the last listener on an event goes away.
> -		 */
> -		if (--engine->pmu.enable_count[sample] == 0)
> -			engine->pmu.enable &= ~BIT(sample);
> +		u8 class = engine_event_class(event);
> +		u8 instance = engine_event_instance(event);
> +
> +		engine = intel_engine_lookup_user(i915, class, instance);
> +		if (engine) {
> +			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.enable_count));
> +			GEM_BUG_ON(sample >= ARRAY_SIZE(engine->pmu.sample));
> +			GEM_BUG_ON(engine->pmu.enable_count[sample] == 0);
> +
> +			/*
> +			 * Decrement the reference count and clear the enabled
> +			 * bitmask when the last listener on an event goes away.
> +			 */
> +			if (--engine->pmu.enable_count[sample] == 0)
> +				engine->pmu.enable &= ~BIT(sample);
> +		} else {
> +			drm_dbg(&i915->drm,
> +				"Invalid engine event: { class:%d, inst:%d }\n",
> +				class, instance);
> +		}
>   	}
>   
>   	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
