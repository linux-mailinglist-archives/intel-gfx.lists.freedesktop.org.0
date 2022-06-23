Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727B75574FB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 10:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35E0113D0C;
	Thu, 23 Jun 2022 08:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE02113D0C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 08:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655971763; x=1687507763;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Is6fhv+wGmkyUnNBqT3636558uRNL6O/w4Aiz3RG9zY=;
 b=ZC5yP7YCtuC4mv1kW1rX3crs6XVmGOTqgOEIk6T2yrPrUIuWxrbJFfAK
 +6pSD5ZKiRCnlSsu4VZNT/xykH4ve565jQ+8fBDYRWQmXU2Rg2gJI04wv
 ltpnyG790GVLveNmR7fyD2acZqUWMgZnnG3blPNipU5f9Vs9dj0mF91HO
 jYV0qeiMDTxdA9xb647ku05gJXhR8frZHvrSGNmqxCqW2kaof1mREVUpc
 DFgedWh97aMnbrS6+JWzrMZqakDCejmmhyn7qRuGMbiSfkw1q/K93fDfB
 dmnHp/d7Sr43DfLf0W1BXQBvCWDb+lkf+/12c+OmzXBSYKhEkN/ssYZJ8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280704575"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="280704575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 01:09:22 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="615493993"
Received: from bo3zhang-mobl.amr.corp.intel.com (HELO [10.212.47.148])
 ([10.212.47.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 01:09:22 -0700
Message-ID: <82877d1a-03ed-fb88-1d1d-3f3944223fbc@linux.intel.com>
Date: Thu, 23 Jun 2022 09:09:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220623023157.211650-1-alan.previn.teres.alexis@intel.com>
 <20220623023157.211650-2-alan.previn.teres.alexis@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220623023157.211650-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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


On 23/06/2022 03:31, Alan Previn wrote:
> Using two different types of workoads, it was observed that
> guc_update_engine_gt_clks was being called too frequently and/or
> causing a CPU-to-lmem bandwidth hit over PCIE. Details on
> the workloads and numbers are in the notes below.
> 
> Background: At the moment, guc_update_engine_gt_clks can be invoked
> via one of 3 ways. #1 and #2 are infrequent under normal operating
> conditions:
>       1.When a predefined "ping_delay" timer expires so that GuC-
>         busyness can sample the GTPM clock counter to ensure it
>         doesn't miss a wrap-around of the 32-bits of the HW counter.
>         (The ping_delay is calculated based on 1/8th the time taken
>         for the counter go from 0x0 to 0xffffffff based on the
>         GT frequency. This comes to about once every 28 seconds at a
>         GT frequency of 19.2Mhz).
>       2.In preparation for a gt reset.
>       3.In response to __gt_park events (as the gt power management
>         puts the gt into a lower power state when there is no work
>         being done).
> 
> Root-cause: For both the workloads described farther below, it was
> observed that when user space calls IOCTLs that unparks the
> gt momentarily and repeats such calls many times in quick succession,
> it triggers calling guc_update_engine_gt_clks as many times. However,
> the primary purpose of guc_update_engine_gt_clks is to ensure we don't
> miss the wraparound while the counter is ticking. Thus, the solution
> is to ensure we skip that check if gt_park is calling this function
> earlier than necessary.
> 
> Solution: Snapshot jiffies when we do actually update the busyness
> stats. Then get the new jiffies every time intel_guc_busyness_park
> is called and bail if we are being called too soon. Use half of the
> ping_delay as a safe threshold.
> 
> NOTE1: Workload1: IGTs' gem_create was modified to create a file handle,
> allocate memory with sizes that range from a min of 4K to the max supported
> (in power of two step-sizes). Its maps, modifies and reads back the
> memory. Allocations and modification is repeated until total memory
> allocation reaches the max. Then the file handle is closed. With this
> workload, guc_update_engine_gt_clks was called over 188 thousand times
> in the span of 15 seconds while this test ran three times. With this patch,
> the number of calls reduced to 14.
> 
> NOTE2: Workload2: 30 transcode sessions are created in quick succession.
> While these sessions are created, pcm-iio tool was used to measure I/O
> read operation bandwidth consumption sampled at 100 milisecond intervals
> over the course of 20 seconds. The total bandwidth consumed over 20 seconds
> without this patch was measured at average at 311KBps per sample. With this
> patch, the number went down to about 175Kbps which is about a 43% savings.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Super detailed and clear - thank you!

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

One question below:

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 +++++++++++++
>   2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 966e69a8b1c1..d0d99f178f2d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -230,6 +230,14 @@ struct intel_guc {
>   		 * @shift: Right shift value for the gpm timestamp
>   		 */
>   		u32 shift;
> +
> +		/**
> +		 * @last_stat_jiffies: jiffies at last actual stats collection time
> +		 * We use this timestamp to ensure we don't oversample the
> +		 * stats because runtime power management events can trigger
> +		 * stats collection at much higher rates than required.
> +		 */
> +		unsigned long last_stat_jiffies;
>   	} timestamp;
>   
>   #ifdef CONFIG_DRM_I915_SELFTEST
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e62ea35513ea..c9f167b80910 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>   	unsigned long flags;
>   	ktime_t unused;
>   
> +	guc->timestamp.last_stat_jiffies = jiffies;
> +
>   	spin_lock_irqsave(&guc->timestamp.lock, flags);
>   
>   	guc_update_pm_timestamp(guc, &unused);
> @@ -1386,6 +1388,17 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>   		return;
>   
>   	cancel_delayed_work(&guc->timestamp.work);
> +
> +	/*
> +	 * Before parking, we should sample engine busyness stats if we need to.
> +	 * We can skip it if we are less than half a ping from the last time we
> +	 * sampled the busyness stats.
> +	 */
> +	if (guc->timestamp.last_stat_jiffies &&

Is there a case where we enter park with last_stat_jiffies being unset 
and so skip updating, and if there is, is that a concern? If it is then 
see if it is safe just to not have the zero check. Worst that could 
happen is one extra sampling if either unset or overflows, right?

Regards,

Tvrtko

> +	    !time_after(jiffies, guc->timestamp.last_stat_jiffies +
> +			(guc->timestamp.ping_delay / 2)))
> +		return;
> +
>   	__update_guc_busyness_stats(guc);
>   }
>   
