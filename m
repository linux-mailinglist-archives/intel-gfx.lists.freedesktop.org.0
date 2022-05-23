Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F79A53112F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 15:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C0E10FB2E;
	Mon, 23 May 2022 13:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557A710FB2E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 13:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653313637; x=1684849637;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=OmG6Y9ibLE/Ho43d9iHVHpYtmVIMBTfAQfy/lfkXy9E=;
 b=O6+p3erB5qiD4EmM5/qp6RmWXCQlh+xpmtVK1khgIaOGSRQpw7Qa2s2A
 CUVG9MAdAh12twPq2ccYI6lmdzD3wBjNDSoT6oiYcnixovmGC41bp4skr
 ScKMFok3M4lOYR5jbME8yELlcC4x0kMMriJbjQREth3WPdaKp+iM+rn1d
 vjQpEHnsFmzM+aqZlhrJkr/QN2U8UTTDj5VeTb/Eycf4dphr9AJO+xyc9
 kQHg0BBsWbA0ohH+KEYrDg8/zPTxj/2NIFMaFDi/3IRnDZ24ST6/1e0FB
 /RFMcbVJQBemtFL3sBlxezMZ7N0VjjdkZStZeibRAwMWJjdV7pIIVxWSo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="333869662"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="333869662"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:47:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="547975258"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.135.186])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:47:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220523110841.1151431-4-badal.nilawar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
 <20220523110841.1151431-4-badal.nilawar@intel.com>
Date: Mon, 23 May 2022 16:47:12 +0300
Message-ID: <871qwkbbtr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Add HWMON current
 voltage support
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

On Mon, 23 May 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
> From: Riana Tauro <riana.tauro@intel.com>
>
> As part of the System Managemenent Interface (SMI), use the HWMON
> subsystem to display current voltage
>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 +++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  4 ++
>  drivers/gpu/drm/i915/i915_hwmon.c             | 57 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_hwmon.h             |  1 +
>  4 files changed, 70 insertions(+)
>
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index 7574421c326f..c70e06dd0333 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -33,3 +33,11 @@ Contact:	dri-devel@lists.freedesktop.org
>  Description:	RO. Card default power limit (default TDP setting).
>  
>  		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
> +Date:		May 2022
> +KernelVersion:	5.18
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Current Voltage in millivolt.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 7246eb870c7e..0adeca083de1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1475,6 +1475,10 @@
>  #define GEN6_GT_GFX_RC6p			_MMIO(0x13810c)
>  #define GEN6_GT_GFX_RC6pp			_MMIO(0x138110)
>  #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
> +
> +#define GEN12_RPSTAT1				_MMIO(0x1381b4)
> +#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
> +
>  #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
>  
>  #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index b35c4de73f30..e5f4293a8fdb 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -12,6 +12,7 @@
>  #include <linux/types.h>
>  
>  #include "i915_drv.h"
> +#include "gt/intel_gt_regs.h"
>  #include "i915_hwmon.h"
>  #include "intel_mchbar_regs.h"

Sort order.

>  
> @@ -301,8 +302,23 @@ static const struct hwmon_channel_info i915_power = {
>  	.config = i915_config_power,
>  };
>  
> +/*
> + * HWMON SENSOR TYPE = hwmon_in
> + *  - Voltage Input value (in0_input)
> + */
> +static const u32 i915_config_in[] = {
> +	HWMON_I_INPUT,
> +	0
> +};
> +
> +static const struct hwmon_channel_info i915_in = {
> +	.type = hwmon_in,
> +	.config = i915_config_in,
> +};
> +
>  static const struct hwmon_channel_info *i915_info[] = {
>  	&i915_power,
> +	&i915_in,
>  	NULL
>  };
>  
> @@ -370,6 +386,41 @@ i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long val)
>  	return ret;
>  }
>  
> +static umode_t
> +i915_in_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr)
> +{
> +	struct drm_i915_private *i915 = ddat->dd_uncore->i915;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
> +		return (IS_DG1(i915) || IS_DG2(i915)) ? 0444 : 0;
> +	default:
> +		return 0;
> +	}
> +
> +	return 0444;
> +}
> +
> +static int
> +i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->dd_hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
> +		with_intel_runtime_pm(ddat->dd_uncore->rpm, wakeref)
> +			reg_value = intel_uncore_read(ddat->dd_uncore, hwmon->rg.gt_perf_status);
> +		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
>  static umode_t
>  i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>  		u32 attr, int channel)
> @@ -379,6 +430,8 @@ i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>  	switch (type) {
>  	case hwmon_power:
>  		return i915_power_is_visible(ddat, attr, channel);
> +	case hwmon_in:
> +		return i915_in_is_visible(ddat, attr);
>  	default:
>  		return 0;
>  	}
> @@ -393,6 +446,8 @@ i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>  	switch (type) {
>  	case hwmon_power:
>  		return i915_power_read(ddat, attr, channel, val);
> +	case hwmon_in:
> +		return i915_in_read(ddat, attr, val);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -440,12 +495,14 @@ i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
>  		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
>  		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
>  		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
> +		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
>  	} else {
>  		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>  		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>  		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
>  		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
>  		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
> +		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
>  	}
>  
>  	wakeref = intel_runtime_pm_get(uncore->rpm);
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
> index 1c70a7056be7..90ae4acae74e 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.h
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -20,6 +20,7 @@ struct i915_hwmon_reg {
>  	i915_reg_t pkg_rapl_limit;
>  	i915_reg_t energy_status_all;
>  	i915_reg_t energy_status_tile;
> +	i915_reg_t gt_perf_status;
>  };
>  
>  struct i915_energy_info {

-- 
Jani Nikula, Intel Open Source Graphics Center
