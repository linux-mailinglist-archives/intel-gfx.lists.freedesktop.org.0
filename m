Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B498749ABF0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 06:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149E310E65E;
	Tue, 25 Jan 2022 05:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793D410E65E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 05:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643089673; x=1674625673;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/YtQbp4C9mj+12S4BnoMeBFUL5Pjz0fXgSeVPXQyCfg=;
 b=IqEUzJRNS+Q0ZfXiHu79u02d93lTBPXQ52Un1PvpJzzpWwpxAbXfSzrI
 wrT6Q+1J3/7HTSueJXFoeBf+GcVa2EPC+/xyOys4mEovnRY/zWLufLtbF
 dSCq3zJDJroMdVRfL7trHMYwSVHRdHo6M8TtbQTz8U8x0aq+roJfq45Ez
 a9R832rW1LyR9gQBC4BrCxLL+6+7Cp8p2lO7dNNZ1zqrKvLxQkkCqFZc6
 q/dUiHQ7zJgFz1bF2Jhl8mEhjgukQhyUtjVGWWdlZGkpcQD3vEl5EB3kt
 ylU5Oh33x6tGsVsPw6/nlLqSEc0ZEWT+IgiDL5Fk/Yoz36tOQovKg0pVW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246443713"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="246443713"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:47:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="534579219"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:47:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, John.C.Harrison@Intel.com,
 alan.previn.teres.alexis@intel.com
In-Reply-To: <20220125020124.788679-1-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220125020124.788679-1-umesh.nerlige.ramappa@intel.com>
Date: Tue, 25 Jan 2022 07:47:34 +0200
Message-ID: <87r18w1i4p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Use PM timestamp instead
 of RING TIMESTAMP for reference
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

On Mon, 24 Jan 2022, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
> All timestamps returned by GuC for GuC PMU busyness are captured from
> GUC PM TIMESTAMP. Since this timestamp does not tick when GuC goes idle,
> kmd uses RING_TIMESTAMP to measure busyness of an engine with an active
> context. In further stress testing, the MMIO read of the RING_TIMESTAMP
> is seen to cause a rare hang. Resolve the issue by using gt specific
> timestamp from PM which is in sync with the GuC PM timestamp.
>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  5 ++
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 56 ++++++++++++++-----
>  drivers/gpu/drm/i915/i915_reg.h               |  3 +-
>  3 files changed, 50 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index d59bbf49d1c2..697d9d66acef 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -215,6 +215,11 @@ struct intel_guc {
>  		 * context usage for overflows.
>  		 */
>  		struct delayed_work work;
> +
> +		/**
> +		 * @shift: Right shift value for the gpm timestamp
> +		 */
> +		u32 shift;
>  	} timestamp;
>  
>  #ifdef CONFIG_DRM_I915_SELFTEST
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 1331ff91c5b0..66760f5df0c1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1150,23 +1150,51 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
>  	}
>  }
>  
> -static void guc_update_pm_timestamp(struct intel_guc *guc,
> -				    struct intel_engine_cs *engine,
> -				    ktime_t *now)
> +static u32 gpm_timestamp_shift(struct intel_gt *gt)
>  {
> -	u32 gt_stamp_now, gt_stamp_hi;
> +	intel_wakeref_t wakeref;
> +	u32 reg, shift;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		reg = intel_uncore_read(gt->uncore, RPM_CONFIG0);
> +
> +	shift = (reg & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
> +		GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT;
> +
> +	return 3 - shift;
> +}
> +
> +static u64 gpm_timestamp(struct intel_gt *gt)
> +{
> +	u32 lo, hi, old_hi, loop = 0;
> +
> +	hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
> +	do {
> +		lo = intel_uncore_read(gt->uncore, MISC_STATUS0);
> +		old_hi = hi;
> +		hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
> +	} while (old_hi != hi && loop++ < 2);
> +
> +	return ((u64)hi << 32) | lo;
> +}

See intel_uncore_read64_2x32().

> +
> +static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
> +{
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	u32 gt_stamp_lo, gt_stamp_hi;
> +	u64 gpm_ts;
>  
>  	lockdep_assert_held(&guc->timestamp.lock);
>  
>  	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
> -	gt_stamp_now = intel_uncore_read(engine->uncore,
> -					 RING_TIMESTAMP(engine->mmio_base));
> +	gpm_ts = gpm_timestamp(gt) >> guc->timestamp.shift;
> +	gt_stamp_lo = lower_32_bits(gpm_ts);
>  	*now = ktime_get();
>  
> -	if (gt_stamp_now < lower_32_bits(guc->timestamp.gt_stamp))
> +	if (gt_stamp_lo < lower_32_bits(guc->timestamp.gt_stamp))
>  		gt_stamp_hi++;
>  
> -	guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_now;
> +	guc->timestamp.gt_stamp = ((u64)gt_stamp_hi << 32) | gt_stamp_lo;
>  }
>  
>  /*
> @@ -1210,7 +1238,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>  		stats_saved = *stats;
>  		gt_stamp_saved = guc->timestamp.gt_stamp;
>  		guc_update_engine_gt_clks(engine);
> -		guc_update_pm_timestamp(guc, engine, now);
> +		guc_update_pm_timestamp(guc, now);
>  		intel_gt_pm_put_async(gt);
>  		if (i915_reset_count(gpu_error) != reset_count) {
>  			*stats = stats_saved;
> @@ -1242,8 +1270,8 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>  
>  	spin_lock_irqsave(&guc->timestamp.lock, flags);
>  
> +	guc_update_pm_timestamp(guc, &unused);
>  	for_each_engine(engine, gt, id) {
> -		guc_update_pm_timestamp(guc, engine, &unused);
>  		guc_update_engine_gt_clks(engine);
>  		engine->stats.guc.prev_total = 0;
>  	}
> @@ -1260,10 +1288,11 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>  	ktime_t unused;
>  
>  	spin_lock_irqsave(&guc->timestamp.lock, flags);
> -	for_each_engine(engine, gt, id) {
> -		guc_update_pm_timestamp(guc, engine, &unused);
> +
> +	guc_update_pm_timestamp(guc, &unused);
> +	for_each_engine(engine, gt, id)
>  		guc_update_engine_gt_clks(engine);
> -	}
> +
>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>  }
>  
> @@ -1757,6 +1786,7 @@ int intel_guc_submission_init(struct intel_guc *guc)
>  	spin_lock_init(&guc->timestamp.lock);
>  	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
>  	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> +	guc->timestamp.shift = gpm_timestamp_shift(gt);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 23b7c6930453..655517eb90ab 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1848,7 +1848,8 @@
>  #define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
>  #define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
>  
> -#define GUCPMTIMESTAMP          _MMIO(0xC3E8)
> +#define MISC_STATUS0		_MMIO(0xA500)
> +#define MISC_STATUS1		_MMIO(0xA504)
>  
>  #define GEN7_TLB_RD_ADDR	_MMIO(0x4700)

-- 
Jani Nikula, Intel Open Source Graphics Center
