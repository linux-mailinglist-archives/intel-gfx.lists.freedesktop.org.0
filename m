Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE48722214
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C81610E1B4;
	Mon,  5 Jun 2023 09:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8CE10E1B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685957067; x=1717493067;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Cdd4PQTTvdUJAYes40sShMF2RwQzhpmYX3008HC5Kio=;
 b=cunlg9sQh7BNFlag98ichdIn4InWwrYyN/d+FXb9YwpJtPmyM+yKVkK9
 nNFgFWLaG6y1vO3a8zVszZm9reiBYoDSiS3El/PopWptiZuc7IWkkf7W6
 Z+/ZrFqwrApzAYeXew5pRa4ovFkP1VBxvIJEQgbwWJEcRH3c1Gzb7gFbG
 Tc5VV/oi0iXd85TTqU8cI3uFofjPHQkkhPQcIZ+wjv3+mUptow/GinaSG
 GGDf0Fdyge+Q56CGB0D2w7cnJdOUI50BAXoJB72L0UAtGso5CnaNPS0P1
 d6Vh00dtwbxIDTdxUdb7vLaj5h6rWziJ8elvWfA6hQ+CQ6dEQ/Vr+elyr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="335940291"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="335940291"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:24:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="778479406"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778479406"
Received: from mloughma-mobl1.ger.corp.intel.com (HELO [10.213.238.159])
 ([10.213.238.159])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:24:17 -0700
Message-ID: <48132996-4fad-c802-6147-e95db60d9d0c@linux.intel.com>
Date: Mon, 5 Jun 2023 10:24:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Atwood <matthew.s.atwood@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
 <20230602231754.1596433-3-matthew.s.atwood@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230602231754.1596433-3-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: rename I915_PMU_MAX_GTS to
 I915_PMU_MAX_GT
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
Cc: ashutosh.dixit@linux.intel.com, matthew.d.roper@intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/06/2023 00:17, Matt Atwood wrote:
> _GTS as an abbreviation here leads to some confusion, match other
> definitions and drop the s.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
> Cc: Andi Shyti <andy.shyti@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 2 +-
>   drivers/gpu/drm/i915/i915_pmu.h | 8 ++++----
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index f96fe92dca4e..d35973b41186 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -132,7 +132,7 @@ static u32 frequency_enabled_mask(void)
>   	unsigned int i;
>   	u32 mask = 0;
>   
> -	for (i = 0; i < I915_PMU_MAX_GTS; i++)
> +	for (i = 0; i < I915_PMU_MAX_GT; i++)
>   		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>   			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>   
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index d20592e7db99..41af038c3738 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -38,7 +38,7 @@ enum {
>   	__I915_NUM_PMU_SAMPLERS
>   };
>   
> -#define I915_PMU_MAX_GTS 2
> +#define I915_PMU_MAX_GT 2

Shrug from me since I wasn't a fan* of the original s/gts/gt/ effort. 
But AFAIR that has been done already, I guess consistency wins so I am 
not blocking it either.

Regards,

Tvrtko

*) What is a max gt? Can I index it into the array? Or expect the gt id 
to contain that value? Neither is true hence my dislike.

>   
>   /*
>    * How many different events we track in the global PMU mask.
> @@ -47,7 +47,7 @@ enum {
>    */
>   #define I915_PMU_MASK_BITS \
>   	(I915_ENGINE_SAMPLE_COUNT + \
> -	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
> +	 I915_PMU_MAX_GT * __I915_PMU_TRACKED_EVENT_COUNT)
>   
>   #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>   
> @@ -127,11 +127,11 @@ struct i915_pmu {
>   	 * Only global counters are held here, while the per-engine ones are in
>   	 * struct intel_engine_cs.
>   	 */
> -	struct i915_pmu_sample sample[I915_PMU_MAX_GTS][__I915_NUM_PMU_SAMPLERS];
> +	struct i915_pmu_sample sample[I915_PMU_MAX_GT][__I915_NUM_PMU_SAMPLERS];
>   	/**
>   	 * @sleep_last: Last time GT parked for RC6 estimation.
>   	 */
> -	ktime_t sleep_last[I915_PMU_MAX_GTS];
> +	ktime_t sleep_last[I915_PMU_MAX_GT];
>   	/**
>   	 * @irq_count: Number of interrupts
>   	 *
