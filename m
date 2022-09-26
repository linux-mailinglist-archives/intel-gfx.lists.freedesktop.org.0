Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F635EABFE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5C210E712;
	Mon, 26 Sep 2022 16:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B9F10E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664208325; x=1695744325;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+zVq+uRBPG4mdvDgNC+OLuuA48MDHIc5UMZ+Bk7DB7I=;
 b=gEFzxy+Qr6fRYfb7xHBjPMJWM9n/IjR6125qstRJlr/N6UulB9LVgUgb
 9tkgGB8pGQdDRCPKB76vIs5eB3f4nUZcNurChJzaGaVgkHyQXAqqv8vKH
 G57JhaOXTsGkSBx5CydfURt4kIq/NW1Rtfmj3/LV2yTZIDeYexrJRWPrc
 RaqaGSmcc0vDf9Mc6SKWet+5QoZjJCrclkn8UPAeERjkjbuD9iLYN+KYS
 IfUMxQ1mNNampx+7J2P21YYoTya9XiJvzXdMn/T716x1wVg7kM4RsZsgy
 8b9xgh5c25xTTe3zqOqxxyQ8Lc0cNz1khl3k3k9jv8Qw5pArFLLVpUale A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298667158"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="298667158"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:05:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="796385117"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="796385117"
Received: from tahirmuh-mobl1.ger.corp.intel.com (HELO [10.213.192.246])
 ([10.213.192.246])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:05:17 -0700
Message-ID: <a12afd96-d1ab-d945-f3a2-6f7da785bb15@linux.intel.com>
Date: Mon, 26 Sep 2022 17:05:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220926084551.231080-1-anshuman.gupta@intel.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220926084551.231080-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rc6: GTC6_RESIDENCY_{LSB,
 MSB} Residency counter support
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


On 26/09/2022 09:45, Anshuman Gupta wrote:
> Adding support in drpc show debugfs to print the GT RPM Unit RC6
> residency. This GTC6_RESIDENCY_{LSB, MSB} will only increment when
> GT will be RC6. Therefore these register will get reset at RC6
> exit and will start incrementing on next RC6 entry.
> 
> BSpec: 64977
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  5 +++++
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  5 +++++
>   drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 +++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_rc6.h           |  1 +
>   4 files changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 10f680dbd7b62..59b6cc49464e9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -195,6 +195,11 @@ static int gen6_drpc(struct seq_file *m)
>   	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
>   		      GEN6_GT_GFX_RC6_LOCKED);
>   	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
> +
> +	if (GRAPHICS_VER(i915) >= 12)
> +		seq_printf(m, "GT RC6 RPM Unit Residency since last RC6 exit: 0x%llx\n",
> +			   intel_rc6_rpm_unit_residency(&gt->rc6));
> +
>   	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
>   	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 7f79bbf978284..7715d0aeffc9d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -8,6 +8,11 @@
>   
>   #include "i915_reg_defs.h"
>   
> +/* GT RPM RC6 counter */
> +#define GEN12_GT_GFX_RC6_LSB			_MMIO(0xC20)
> +#define GEN12_GT_GFX_RC6_MSB			_MMIO(0xC24)
> +#define   GEN12_GT_GFX_RC6_MSB_MASK		REG_GENMASK(23, 0)
> +
>   /* RPM unit config (Gen8+) */
>   #define RPM_CONFIG0				_MMIO(0xd00)
>   #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index f8d0523f4c18e..ee830c4027542 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -816,6 +816,25 @@ u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg)
>   	return DIV_ROUND_UP_ULL(intel_rc6_residency_ns(rc6, reg), 1000);
>   }
>   
> +u64 intel_rc6_rpm_unit_residency(struct intel_rc6 *rc6)
> +{
> +	struct drm_i915_private *i915 = rc6_to_i915(rc6);
> +	struct intel_gt *gt = rc6_to_gt(rc6);
> +	intel_wakeref_t wakeref;
> +	u64 lsb, msb, counter;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
> +		lsb = intel_uncore_read(gt->uncore, GEN12_GT_GFX_RC6_LSB);
> +		msb = intel_uncore_read(gt->uncore, GEN12_GT_GFX_RC6_MSB);
> +	}
> +
> +	drm_dbg(&i915->drm, "GT RC6 MSB=0x%x LSB=0x%x\n", (u32) msb, (u32) lsb);
> +	msb = REG_FIELD_GET(GEN12_GT_GFX_RC6_MSB_MASK, (u32)msb);
> +	counter = msb << 32 | lsb;

What about wrap?

I guess you can't use intel_uncore_read64_2x32 because there is 
something present in bits 31-24?

Anyway, what is the unit here and why it is useful to put this in 
debugfs (together with drm_dbg)? (Considering the value restarts on each 
RC6 entry.)

Regards,

Tvrtko

> +
> +	return counter;
> +}
> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftest_rc6.c"
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
> index b6fea71afc223..6fa0896756d47 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
> @@ -23,5 +23,6 @@ void intel_rc6_disable(struct intel_rc6 *rc6);
>   
>   u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, i915_reg_t reg);
>   u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg);
> +u64 intel_rc6_rpm_unit_residency(struct intel_rc6 *rc6);
>   
>   #endif /* INTEL_RC6_H */
