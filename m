Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6792B591550
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 20:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35E469B0BD;
	Fri, 12 Aug 2022 18:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB869B0BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 18:11:46 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id y1so1421460plb.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 11:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:from:to:cc;
 bh=DtQQfOzkHUdzhXzQSNqjyzE4fzFTfEEQjlj77ZgwCec=;
 b=X6OZ21J+R7Wm7jbIMFNYy13CbtbYKSY8vDmtjrgW/jKinj7mjPIk+J2Te6dCxO55z1
 MZVr8GuZ2x4SqPGqtdiJxBx4zyGnU04WJ6U+j1NGAHq6tjGZgK1euTOuoALdtScEsK0P
 7/F/OjhAS/J0UQLupqI78sZhraEE3PmlZjrDJdl/tDsHes6KN2SghYE0pIsMeYEwejWO
 mkK6z3XEng01yGF3P6Xr47TVzqvmovqxpTqeZYMYiC1KDV3E4GSKjgtr9bJdvP7VUNaK
 cByNJgie7ByX9B8VaQkP1HbFcsSuDlYf7B2gZ6sbZvagZNO1DLdjV4uF/v6zS6jZKI2d
 FEJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:x-gm-message-state:from:to:cc;
 bh=DtQQfOzkHUdzhXzQSNqjyzE4fzFTfEEQjlj77ZgwCec=;
 b=Cod238jfwdV/T5M2SBFOACfBlNRLldYTs0LbS2Eap+GQChiaoplICohlkJ0gIets66
 vk2ocFSwlhUjx4adMdTNPPvlESXUH5KAtNXO9v7sGFyUon7UHXzShntuF5S4xttkUDNn
 BH6DPgihwAYD0rMY9aKkUCx2m803/6WS8yQH6b4UOyaERkI4vRIXoKlOC3i245RGAnhw
 RMvW/JnTDBzxfsNTbuWpQB/nLLTYTi3l3HLs9Qr67YKrUhzEZaEd4KVJljumrg+iw7tR
 a7lyLKaw5fPc30fVY/vcitrcQYzIwFeRBXoXAGLALLvaDU+HgqzUYoLS+4fIBICFP18O
 UAbg==
X-Gm-Message-State: ACgBeo14yMkqiwYqtRjDxtdiTEQXfDxvF5KNrLNNGoD74Ho6xrgV7pFt
 R4kaL9+VvL5C6cOBGrkASVQ=
X-Google-Smtp-Source: AA6agR5tKiIKqmZ0lBSvVdEIprYATqJr+bZJHAPz//qOcb356E7pioZ1Q5fjXuvJWXN8tE7jWojBUQ==
X-Received: by 2002:a17:90a:c70d:b0:1f3:2a3a:24d4 with SMTP id
 o13-20020a17090ac70d00b001f32a3a24d4mr14777516pjt.16.1660327905633; 
 Fri, 12 Aug 2022 11:11:45 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a623305000000b005323a1a9fecsm1899998pfz.101.2022.08.12.11.11.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Aug 2022 11:11:44 -0700 (PDT)
Message-ID: <04173fbe-9cc7-05da-0b7e-26f231040774@roeck-us.net>
Date: Fri, 12 Aug 2022 11:11:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
 <20220812173715.2398586-8-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220812173715.2398586-8-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/hwmon: Extend power/energy for
 XEHPSDV
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
Cc: linux-hwmon@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/12/22 10:37, Badal Nilawar wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
> 
> Extend hwmon power/energy for XEHPSDV especially per gt level energy
> usage.
> 
> v2: Update to latest HWMON spec (Ashutosh)
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |   7 +-
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>   drivers/gpu/drm/i915/i915_hwmon.c             | 120 +++++++++++++++++-
>   3 files changed, 128 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index 34668f6c2dc4..e69bc43d4c9e 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -65,6 +65,11 @@ What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
>   Date:		June 2022
>   KernelVersion:	5.19
>   Contact:	dri-devel@lists.freedesktop.org
> -Description:	RO. Energy input of device in microjoules.
> +Description:	RO. Energy input of device or gt in microjoules.
> +
> +		For i915 device level hwmon devices (name "i915") this
> +		reflects energy input for the entire device. For gt level
> +		hwmon devices (name "i915_gtN") this reflects energy input
> +		for the gt.
>   
>   		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4604f6dbf8b6..dc3bc07cdd24 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1569,4 +1569,9 @@
>   
>   #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
>   
> +#define GT0_PACKAGE_ENERGY_STATUS		_MMIO(0x250004)
> +#define GT0_PACKAGE_RAPL_LIMIT			_MMIO(0x250008)
> +#define GT0_PACKAGE_POWER_SKU_UNIT		_MMIO(0x250068)
> +#define GT0_PLATFORM_ENERGY_STATUS		_MMIO(0x25006c)
> +
>   #endif /* __INTEL_GT_REGS__ */
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 6760133c7905..4c2e8d3cfe52 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -11,6 +11,7 @@
>   #include "i915_hwmon.h"
>   #include "intel_mchbar_regs.h"
>   #include "intel_pcode.h"
> +#include "gt/intel_gt.h"
>   #include "gt/intel_gt_regs.h"
>   
>   /*
> @@ -20,7 +21,7 @@
>    * - curr   - milliamperes
>    * - energy - microjoules
>    */
> -#define SF_TIME            1000
> +#define SF_TIME		1000
>   #define SF_POWER	1000000
>   #define SF_CURR		1000
>   #define SF_ENERGY	1000000
> @@ -36,6 +37,7 @@ struct hwm_reg {
>   	i915_reg_t pkg_power_sku;
>   	i915_reg_t pkg_rapl_limit;
>   	i915_reg_t energy_status_all;
> +	i915_reg_t energy_status_tile;
>   };
>   
>   struct hwm_energy_info {
> @@ -49,10 +51,12 @@ struct hwm_drvdata {
>   	struct device *hwmon_dev;
>   	struct hwm_energy_info ei;		/*  Energy info for energy1_input */
>   	char name[12];
> +	int gt_n;
>   };
>   
>   struct i915_hwmon {
>   	struct hwm_drvdata ddat;
> +	struct hwm_drvdata ddat_gt[I915_MAX_GT];
>   	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
>   	struct hwm_reg rg;
>   	u32 power_max_initial_value;
> @@ -148,7 +152,10 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
>   	i915_reg_t rgaddr;
>   	u32 reg_val;
>   
> -	rgaddr = hwmon->rg.energy_status_all;
> +	if (ddat->gt_n >= 0)
> +		rgaddr = hwmon->rg.energy_status_tile;
> +	else
> +		rgaddr = hwmon->rg.energy_status_all;
>   
>   	if (!i915_mmio_reg_valid(rgaddr))
>   		return -EOPNOTSUPP;
> @@ -310,6 +317,11 @@ static const struct hwmon_channel_info *hwm_info[] = {
>   	NULL
>   };
>   
> +static const struct hwmon_channel_info *hwm_gt_info[] = {
> +	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> +	NULL
> +};
> +
>   /* I1 is exposed as power_crit or as curr_crit depending on bit 31 */
>   static int hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)
>   {
> @@ -442,7 +454,10 @@ hwm_energy_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>   
>   	switch (attr) {
>   	case hwmon_energy_input:
> -		rgaddr = hwmon->rg.energy_status_all;
> +		if (ddat->gt_n >= 0)
> +			rgaddr = hwmon->rg.energy_status_tile;
> +		else
> +			rgaddr = hwmon->rg.energy_status_all;
>   		return i915_mmio_reg_valid(rgaddr) ? 0444 : 0;
>   	default:
>   		return 0;
> @@ -577,6 +592,44 @@ static const struct hwmon_chip_info hwm_chip_info = {
>   	.info = hwm_info,
>   };
>   
> +static umode_t
> +hwm_gt_is_visible(const void *drvdata, enum hwmon_sensor_types type,
> +		  u32 attr, int channel)
> +{
> +	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
> +
> +	switch (type) {
> +	case hwmon_energy:
> +		return hwm_energy_is_visible(ddat, attr);
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +hwm_gt_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> +	    int channel, long *val)
> +{
> +	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
> +
> +	switch (type) {
> +	case hwmon_energy:
> +		return hwm_energy_read(ddat, attr, val);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static const struct hwmon_ops hwm_gt_ops = {
> +	.is_visible = hwm_gt_is_visible,
> +	.read = hwm_gt_read,
> +};
> +
> +static const struct hwmon_chip_info hwm_gt_chip_info = {
> +	.ops = &hwm_gt_ops,
> +	.info = hwm_gt_info,
> +};
> +
>   static void
>   hwm_get_preregistration_info(struct drm_i915_private *i915)
>   {
> @@ -585,7 +638,9 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	struct hwm_drvdata *ddat = &hwmon->ddat;
>   	intel_wakeref_t wakeref;
>   	u32 val_sku_unit;
> +	struct intel_gt *gt;
>   	long energy;
> +	int i;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
>   		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
> @@ -593,12 +648,21 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
>   		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
> +		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
> +	} else if (IS_XEHPSDV(i915)) {
> +		hwmon->rg.pkg_power_sku_unit = GT0_PACKAGE_POWER_SKU_UNIT;
> +		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
> +		hwmon->rg.pkg_rapl_limit = GT0_PACKAGE_RAPL_LIMIT;
> +		hwmon->rg.energy_status_all = GT0_PLATFORM_ENERGY_STATUS;
> +		hwmon->rg.energy_status_tile = GT0_PACKAGE_ENERGY_STATUS;
> +		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
>   	} else {
>   		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
>   		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
> +		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
>   	}
>   
>   	with_intel_runtime_pm(uncore->rpm, wakeref) {
> @@ -628,6 +692,10 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	 */
>   	if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
>   		hwm_energy(ddat, &energy);
> +	if (i915_mmio_reg_valid(hwmon->rg.energy_status_tile)) {
> +		for_each_gt(gt, i915, i)
> +			hwm_energy(&hwmon->ddat_gt[i], &energy);
> +	}
>   }
>   
>   void i915_hwmon_register(struct drm_i915_private *i915)
> @@ -636,6 +704,10 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>   	struct i915_hwmon *hwmon;
>   	struct device *hwmon_dev;
>   	struct hwm_drvdata *ddat;
> +	struct hwm_drvdata *ddat_gt;
> +	struct intel_gt *gt;
> +	const char *ddname;
> +	int i;
>   
>   	/* hwmon is available only for dGfx */
>   	if (!IS_DGFX(i915))
> @@ -652,6 +724,16 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>   	ddat->hwmon = hwmon;
>   	ddat->uncore = &i915->uncore;
>   	snprintf(ddat->name, sizeof(ddat->name), "i915");
> +	ddat->gt_n = -1;
> +
> +	for_each_gt(gt, i915, i) {
> +		ddat_gt = hwmon->ddat_gt + i;
> +
> +		ddat_gt->hwmon = hwmon;
> +		ddat_gt->uncore = gt->uncore;
> +		snprintf(ddat_gt->name, sizeof(ddat_gt->name), "i915_gt%u", i);
> +		ddat_gt->gt_n = i;
> +	}
>   
>   	hwm_get_preregistration_info(i915);
>   
> @@ -668,18 +750,50 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>   	}
>   
>   	ddat->hwmon_dev = hwmon_dev;
> +
> +	for_each_gt(gt, i915, i) {
> +		ddat_gt = hwmon->ddat_gt + i;
> +		/*
> +		 * Create per-gt directories only if a per-gt attribute is
> +		 * visible. Currently this is only energy
> +		 */
> +		if (!hwm_gt_is_visible(ddat_gt, hwmon_energy, hwmon_energy_input, 0))
> +			continue;
> +
> +		ddname = ddat_gt->name;
> +		hwmon_dev = hwmon_device_register_with_info(dev, ddname,
> +							    ddat_gt,
> +							    &hwm_gt_chip_info,
> +							    NULL);
> +		if (!IS_ERR(hwmon_dev))
> +			ddat_gt->hwmon_dev = hwmon_dev;
> +	}
>   }
>   
>   void i915_hwmon_unregister(struct drm_i915_private *i915)
>   {
>   	struct i915_hwmon *hwmon;
>   	struct hwm_drvdata *ddat;
> +	struct intel_gt *gt;
> +	int i;
>   
>   	hwmon = fetch_and_zero(&i915->hwmon);
>   	if (!hwmon)
>   		return;
>   
>   	ddat = &hwmon->ddat;
> +
> +	for_each_gt(gt, i915, i) {
> +		struct hwm_drvdata *ddat_gt;
> +
> +		ddat_gt = hwmon->ddat_gt + i;
> +
> +		if (ddat_gt->hwmon_dev) {
> +			hwmon_device_unregister(ddat_gt->hwmon_dev);
> +			ddat_gt->hwmon_dev = NULL;
> +		}
> +	}
> +
>   	if (ddat->hwmon_dev)
>   		hwmon_device_unregister(ddat->hwmon_dev);
>   

