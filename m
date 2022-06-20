Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97972551320
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3924610E2F8;
	Mon, 20 Jun 2022 08:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBFC10E2F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714792; x=1687250792;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=3DXGo0XBUsc3S0Gy0t5rprZQiNIDtEms5KH/S/Atcck=;
 b=UWBXBSIobFLldkRI6JuqO4S7RlkBTaxdAbRKbp3vPCafgpxX+/NiVsOY
 CdgwRSZn8gMxnTqbAKMkamwlws2w6dGwaCS+C3pZdqlImvCC1rG0CsIAK
 SUMz5kRgbYPVNQ2orMcaDonYs64ypbOvxxATIyZR9Aek3rBvuv4g6B+Vg
 XBLESdRp/RU3SkzALS7o72JbUfX5SrS8oTjpoapUN8ACKLNUIgUmvRz0S
 0yjO874v6dsXrcKqjP6to8kSCCTlyp4DRfDw7iftky/HCX3bQiVD4/qTs
 5WWiH/XEc8YQFxptiKA1UmJDe08rHyKW0OlanwOqr5Y6wNJohknwC909v w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279890702"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279890702"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:46:32 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643014788"
Received: from malikhan-mobl1.amr.corp.intel.com (HELO [10.212.127.6])
 ([10.212.127.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:46:31 -0700
Message-ID: <ae671cd8-df50-ea8b-0a3f-bd8ec1bea049@linux.intel.com>
Date: Mon, 20 Jun 2022 09:46:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
 <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update
 engine busyness stats too frequently
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


On 18/06/2022 06:43, Alan Previn wrote:
> Using igt's gem-create and with additional patches to track object
> creation time, it was measured that guc_update_engine_gt_clks was
> getting called over 188 thousand times in the span of 15 seconds
> (running the test three times).
> 
> Get a jiffies sample on every trigger and ensure we skip sampling
> if we are being called too soon. Use half of the ping_delay as a
> safe threshold.
> 
> NOTE: with this change, the number of calls went down to just 14
> over the same span of time (matching the original intent of running
> about once every 24 seconds, at 19.2Mhz GT freq, per engine).

It would be beneficial to record the root cause. Both frequency of 
parking/unparking caused by <insert what> and lmem access cost.

> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++++++
>   2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 966e69a8b1c1..26f3e4403de7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -230,6 +230,14 @@ struct intel_guc {
>   		 * @shift: Right shift value for the gpm timestamp
>   		 */
>   		u32 shift;
> +
> +		/**
> +		 * @last_jiffies: jiffies at last actual stats collection time
> +		 * We use this timestamp to ensure we don't oversample the
> +		 * stats because runtime power management events can trigger
> +		 * stats collection at much higher rates than required.
> +		 */
> +		u64 last_stat_jiffs;

Why the new "jiffs" naming and not the usual jiffies?

Otherwise a good comment - just align the member name with the kerneldoc 
name.

>   	} timestamp;
>   
>   #ifdef CONFIG_DRM_I915_SELFTEST
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e62ea35513ea..05c945f14ef5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>   	unsigned long flags;
>   	ktime_t unused;
>   
> +	guc->timestamp.last_stat_jiffs = get_jiffies_64();

Why the 64 bit flavour? It's a first in i915 but it doesn't feel so special.

> +
>   	spin_lock_irqsave(&guc->timestamp.lock, flags);
>   
>   	guc_update_pm_timestamp(guc, &unused);
> @@ -1386,6 +1388,16 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>   		return;
>   
>   	cancel_delayed_work(&guc->timestamp.work);
> +
> +	/*
> +	 * Before parking, we should sample engine busyness stats if we need to.
> +	 * We can skip it if we are less than half a ping from the last time we
> +	 * sampled the business stats.

busyness

> +	 */
> +	if (guc->timestamp.last_stat_jiffs && (get_jiffies_64() - guc->timestamp.last_stat_jiffs  <
> +	   (guc->timestamp.ping_delay >> 1)))
> +		return;

1)
Recommend a division instead of a shift.

2)
Is there a time_after() macro for this?

3)
Should the logic be contained/consolidated in __update_guc_busyness_stats?

There is cancel_delayed_work in there - is it okay for that to be 
bypassed from here?

Regards,

Tvrtko

> +
>   	__update_guc_busyness_stats(guc);
>   }
>   
