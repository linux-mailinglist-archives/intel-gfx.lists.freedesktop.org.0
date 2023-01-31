Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCD6683798
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 21:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD52E10E2AE;
	Tue, 31 Jan 2023 20:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595D410E2AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 20:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197354; x=1706733354;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=CBqQNKy6LWqxxK+Qw0XwsWWqTSIeeW7g5n+7U8/cADA=;
 b=YxcWS0Cb4ur5ZC8uTuy1j0Xk1ZFKjYTFa4CzkP4VX7Yv84rVuZy5HYj3
 KnCKbVKF0rMMQCIMA+ca3/J+FPrpg6HVi7hTYjFmM7QMWA3zrZUgUf+Bf
 XusDre4l/iN8+L2Wm51Y7YmxYB/D0LbgpBUmcSE9sA4guVLri07B2kBHr
 sXy425bgBEGUxTK+ux6JAFIrCngX6YVV2O5r68SUTsQI5mldgobZw8ScT
 DAMJ1bxBJ+75mziZ7aIIJwBFOzxmga+3/r5aV+7EMz10M3Oyjh3z8G1Cs
 EuWBjR4KUttyK0RREU/C+AKHVzNoch12OI1DK+t3wN2UIW/yCsZrxeGhS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="355280290"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="355280290"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:33:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="728105608"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="728105608"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.70.92])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:33:04 -0800
Date: Tue, 31 Jan 2023 12:33:04 -0800
Message-ID: <874js6v3zz.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
In-Reply-To: <20230131062550.11901-1-sujaritha.sundaresan@intel.com>
References: <20230131062550.11901-1-sujaritha.sundaresan@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Add sysfs RAPL PL1 interface
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

On Mon, 30 Jan 2023 22:25:50 -0800, Sujaritha Sundaresan wrote:
>

Hi Suja,

> Adding sysfs attribute rapl_pl1_freq_mhz. This shows the RAPL PL1
> FREQUENCY LIMIT.

For MTL do we know if this RAPL PL1 freq limit is for just the GPU or the
SOC (CPU + GPU)?

>
> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  4 ++++
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rps.c         | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rps.h         |  1 +
>  4 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 7fa18a3b3957..1c78fc89a37a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1656,6 +1656,10 @@
>  #define GT0_PACKAGE_POWER_SKU_UNIT		_MMIO(0x250068)
>  #define GT0_PLATFORM_ENERGY_STATUS		_MMIO(0x25006c)
>
> +#define XEHPSDV_RAPL_PL1_FREQ_LIMIT		_MMIO(0x250070)
> +#define MTL_RAPL_PL1_FREQ_LIMIT		_MMIO(0x281070)
> +#define   RAPL_PL1_FREQ_LIMIT_MASK		REG_GENMASK(15, 0)
> +
>  /*
>   * Standalone Media's non-engine GT registers are located at their regular GT
>   * offsets plus 0x380000.  This extra offset is stored inside the intel_uncore
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 28f27091cd3b..0b52962e2856 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -451,6 +451,16 @@ static ssize_t punit_req_freq_mhz_show(struct kobject *kobj,
>	return sysfs_emit(buff, "%u\n", preq);
>  }
>
> +static ssize_t rapl_pl1_freq_mhz_show(struct kobject *kobj,
> +				      struct kobj_attribute *attr,
> +				      char *buff)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
> +	u32 rapl_pl1 = intel_rps_read_rapl_pl1(&gt->rps);
> +
> +	return sysfs_emit(buff, "%u\n", rapl_pl1);
> +}
> +
>  struct intel_gt_bool_throttle_attr {
>	struct attribute attr;
>	ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
> @@ -480,6 +490,7 @@ struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
>  }
>
>  INTEL_GT_ATTR_RO(punit_req_freq_mhz);
> +INTEL_GT_ATTR_RO(rapl_pl1_freq_mhz);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_status, GT0_PERF_LIMIT_REASONS_MASK);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl1, POWER_LIMIT_1_MASK);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl2, POWER_LIMIT_2_MASK);
> @@ -744,6 +755,10 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>	if (ret)
>		gt_warn(gt, "failed to create punit_req_freq_mhz sysfs (%pe)", ERR_PTR(ret));
>
> +	ret = sysfs_create_file(kobj, &attr_rapl_pl1_freq_mhz.attr);
> +	if (ret)
> +		gt_warn(gt, "failed to create rapl_pl1_freq_mhz sysfs (%pe)", ERR_PTR(ret));
> +

As I said previously we should create the rapl_pl1_freq_mhz file only on
platforms on which it is is available. So let's put the above code block
inside the if () below:

	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70) || IS_XEHPSDV(gt->i915)) {
		ret = sysfs_create_file(kobj, &attr_rapl_pl1_freq_mhz.attr);
		if (ret)
			gt_warn(gt, "failed to create rapl_pl1_freq_mhz sysfs (%pe)", ERR_PTR(ret));
	}

Where MTL graphics version is 12.70 so I am assuming this will be availble
for all later products too and it will help us to not modify the code for
each individual product (unless we have to).

>	if (i915_mmio_reg_valid(intel_gt_perf_limit_reasons_reg(gt))) {
>		ret = sysfs_create_files(kobj, throttle_reason_attrs);
>		if (ret)
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index f5d7b5126433..f66d6f47f2cf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -2202,6 +2202,24 @@ u32 intel_rps_get_max_frequency(struct intel_rps *rps)
>		return intel_gpu_freq(rps, rps->max_freq_softlimit);
>  }
>
> +u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +	u32 rapl_pl1;
> +	u32 rapl;
> +
> +	if (IS_METEORLAKE(i915))
> +		rapl_pl1 = intel_uncore_read(rps_to_gt(rps)->uncore, MTL_RAPL_PL1_FREQ_LIMIT);
> +	else if (IS_XEHPSDV(i915))
> +		rapl_pl1  = intel_uncore_read(rps_to_gt(rps)->uncore, XEHPSDV_RAPL_PL1_FREQ_LIMIT);
> +
> +
> +	if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
> +		rapl = REG_FIELD_GET(RAPL_PL1_FREQ_LIMIT_MASK, rapl_pl1);
> +
> +	return rapl;
> +}

This should be something like this:

u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
{
	struct drm_i915_private *i915 = rps_to_i915(rps);
	i915_reg_t rgadr = INVALID_MMIO_REG;
	u32 rapl_pl1, rapl;

	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
		rgadr = MTL_RAPL_PL1_FREQ_LIMIT;
	else if (IS_XEHPSDV(i915))
		rgadr = XEHPSDV_RAPL_PL1_FREQ_LIMIT;

	rapl_pl1 = rps_read_mmio(gt, rgadr);
	rapl = REG_FIELD_GET(RAPL_PL1_FREQ_LIMIT_MASK, rapl_pl1);

	return rapl;
}

rps_read_mmio is needed to take the runtime PM wakeref, we cannot use
intel_uncore_read directly. Note also that we've already ensured that
rapl_pl1_freq_mhz file is only available for XEHPSDV and >= 12.70.

Thanks.
--
Ashutosh

> +
>  /**
>   * intel_rps_get_max_raw_freq - returns the max frequency in some raw format.
>   * @rps: the intel_rps structure
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index c622962c6bef..c37d297c9d82 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -51,6 +51,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>  u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>  u32 intel_rps_read_punit_req(struct intel_rps *rps);
>  u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
> +u32 intel_rps_read_rapl_pl1(struct intel_rps *rps);
>  u32 intel_rps_read_rpstat(struct intel_rps *rps);
>  u32 intel_rps_read_rpstat_fw(struct intel_rps *rps);
>  void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
> --
> 2.34.1
>
