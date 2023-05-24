Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903B170F1E3
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 11:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34A610E5BF;
	Wed, 24 May 2023 09:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D4410E5BD;
 Wed, 24 May 2023 09:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684919555; x=1716455555;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yyfAE1E+XQch6LWexh+79YrFgDSVvJwoDGzGfbE8lO4=;
 b=crb2TnBzDgN0gY46l4lwaHWya5pNeJJVsSQdG0GnvcR6jE39KEn/B6q5
 DRuFEj2ZcJyeQk2NM5vYzW0KJGxrozpK6DgEFChQraFC6LN4NM1ikad5N
 sFMIgRkUdnbnulLAUj/aee8NlqvR3n5TltBvhNyoIrkfh+zakb7hGcpjP
 35MgZZm/KPeFFINudonKDa0kK3zmT9Fe1YK5839tu0i1zM85iE14En2JW
 10WyKd7MxzERjTzTDn7/jl4newrJt5aHeNoUVWXSjy6PTM21FSb1WmyOe
 9mNnmqo+Dd3YemMiKdJ/eDZH1sv0MqPso42swjV2yFAz/zjOGGO8jX6lv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="419220258"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="419220258"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="828493700"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="828493700"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.4.245])
 ([10.213.4.245])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:12:33 -0700
Message-ID: <86c706cc-9d98-3b28-d713-853938cabf74@intel.com>
Date: Wed, 24 May 2023 11:12:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230523151918.4170499-1-ashutosh.dixit@intel.com>
 <20230523151918.4170499-2-ashutosh.dixit@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230523151918.4170499-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Turn off the timer to
 sample frequencies when GT is parked
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.05.2023 17:19, Ashutosh Dixit wrote:
> pmu_needs_timer() keeps the timer running even when GT is parked,
> ostensibly to sample requested/actual frequencies. However
> frequency_sample() has the following:
> 
> 	/* Report 0/0 (actual/requested) frequency while parked. */
> 	if (!intel_gt_pm_get_if_awake(gt))
> 		return;
> 
> The above code prevents frequencies to be sampled while the GT is
> parked. So we might as well turn off the sampling timer itself in this
> case and save CPU cycles/power.
> 
> v2: Instead of turning freq bits off, return false, since no counters will
>      run after this change when GT is parked (Tvrtko)
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 12 +++++-------
>   1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index a814583e19fd7..b47d890d4ada1 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -144,6 +144,10 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>   	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>   	u32 enable;
>   
> +	/* When GPU is idle, at present no counters need to run */
> +	if (!gpu_active)
> +		return false;
> +

What is then purpose of calling pmu_needs_timer with 2nd arg false?
Why not just replace all occurrences of pmu_needs_timer(.., false) with 
false? And remove the 2nd argument.

Regards
Andrzej



>   	/*
>   	 * Only some counters need the sampling timer.
>   	 *
> @@ -157,17 +161,11 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>   	 */
>   	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>   
> -	/*
> -	 * When the GPU is idle per-engine counters do not need to be
> -	 * running so clear those bits out.
> -	 */
> -	if (!gpu_active)
> -		enable &= ~ENGINE_SAMPLE_MASK;
>   	/*
>   	 * Also there is software busyness tracking available we do not
>   	 * need the timer for I915_SAMPLE_BUSY counter.
>   	 */
> -	else if (i915->caps.scheduler & I915_SCHEDULER_CAP_ENGINE_BUSY_STATS)
> +	if (i915->caps.scheduler & I915_SCHEDULER_CAP_ENGINE_BUSY_STATS)
>   		enable &= ~BIT(I915_SAMPLE_BUSY);
>   
>   	/*

