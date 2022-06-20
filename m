Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF33F55262A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 22:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0343910E438;
	Mon, 20 Jun 2022 20:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670FB10E08C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 20:58:55 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 w19-20020a17090a8a1300b001ec79064d8dso8482613pjn.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 13:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ki9bAHiNVw//9Se3jcgou2l7cgo4XH1wcdM5ijDyRgU=;
 b=hkPFgbzyUwTMwvTMzTmWJSxq7aq4HMyWLSrtfFqpWvI91QrS11X6LO6M1sjUfI4pH+
 zrjGFE/znqQbgNi4lzoRQ1Dt3Z6UV+o6FGqa25GvRUzc86oMaDIxs6JCudmZrPz/Cpz/
 34v69CyCgQND69VIaTRzRfn9k8Fq7HnzmP6rh/Tlqat8OQCQQqlG4UpSKYZhHlHy0i3s
 9nZhIinfQAlit0vzff1jqvJcR3bp1l5M2+rsKDANGsyLwqXoHDkT9jp2ENHVkFJDDiTK
 uTiru+MexwCdyzijJfezs3f+apZ2n3ZpzWRrRpKwVSTDK0enUAEr397Nta3ayeZ9xg9A
 Gd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ki9bAHiNVw//9Se3jcgou2l7cgo4XH1wcdM5ijDyRgU=;
 b=t3VUgq1fjFh4B7OqjYV6f1pxFbtCFIkFJTZQ7sHfb2pzzEAKWB/MhYVNHr7IS8bH2T
 56jqB/bPZuUzNJ6Ryjf4kPr+6qv0E0eW8GdsbNgzBGxfH5jco8wnkxp3pnMYvBDCFO+/
 F1B/hNo1Xq9anfDbtvfDgb8Qri9nWBrviGB+thXDikq0zmwRJLTwrp58vKS8eFeNEN5M
 LMNYWwUzOvHi2+M8EdhFvRVt3BtA7E7q//gES5Oq2/9gvkvGaqubZufT+8fACpdjIrdQ
 QHia6F0eQgy6iSXeUTZc553nwosM68fqn3CFJYAXXoxw/HzL1PvmwQAyRY9uNCSIxnzp
 iGjg==
X-Gm-Message-State: AJIora8EDtV+Xv7ViFxyOoLUnFSB8dkIf4z3X+6DEY/BYCc52RkrIQEb
 V0GsEbokuDkwQ6nC490p/Bs=
X-Google-Smtp-Source: AGRyM1ti6I5ffLDSJjOkREL82knueXx30eiUcj92N6hOQGwPLKPxWtgxuYYXdffy8mZreJLfCGnx9Q==
X-Received: by 2002:a17:902:ecc9:b0:163:f779:f97a with SMTP id
 a9-20020a170902ecc900b00163f779f97amr24995107plh.167.1655758734354; 
 Mon, 20 Jun 2022 13:58:54 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j3-20020a170903024300b00161947ecc82sm9116617plh.199.2022.06.20.13.58.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jun 2022 13:58:52 -0700 (PDT)
Message-ID: <4277d384-147a-6de4-abe3-3b64b9dae207@roeck-us.net>
Date: Mon, 20 Jun 2022 13:58:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220620204649.894703-1-badal.nilawar@intel.com>
 <20220620204649.894703-4-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220620204649.894703-4-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/hwmon: Add HWMON power sensor
 support
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

On 6/20/22 13:46, Badal Nilawar wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
> 
> As part of the System Managemenent Interface (SMI), use the HWMON
> subsystem to display power utilization.
> 
> v2:
>    - Fix review comments (Ashutosh)
>    - Do not restore power1_max upon module unload/load sequence
>      because on production systems modules are always loaded
>      and not unloaded/reloaded (Ashutosh)
>    - Fix review comments (Jani)
>    - Remove endianness conversion (Ashutosh)
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  20 ++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 226 +++++++++++++++++-
>   drivers/gpu/drm/i915/i915_reg.h               |  15 ++
>   drivers/gpu/drm/i915/intel_mchbar_regs.h      |   7 +
>   4 files changed, 267 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index 24c4b7477d51..945f472dd4a2 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
>   Description:	RO. Current Voltage in millivolt.
>   
>   		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
> +Date:		June 2022
> +KernelVersion:	5.19
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
> +
> +		The power controller will throttle the operating frequency
> +		if the power averaged over a window (typically seconds)
> +		exceeds this limit.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default

I don't immediately see the reason for not using the standard power1_cap
attribute, which is described as

		If power use rises above this limit, the
                 system should take action to reduce power use.

and pretty much matches the description above.

> +Date:		June 2022
> +KernelVersion:	5.19
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Card default power limit (default TDP setting).
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index fc06db790243..75935a55f573 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -16,9 +16,22 @@
>   #include "intel_mchbar_regs.h"
>   #include "gt/intel_gt_regs.h"
>   
> +/*
> + * SF_* - scale factors for particular quantities according to hwmon spec.
> + * - power  - microwatts
> + */
> +#define SF_POWER	1000000
> +
> +#define FIELD_SHIFT(__mask)				    \
> +	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
> +		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
> +		__bf_shf(__mask))
>   
>   struct i915_hwmon_reg {
>   	i915_reg_t gt_perf_status;
> +	i915_reg_t pkg_power_sku_unit;
> +	i915_reg_t pkg_power_sku;
> +	i915_reg_t pkg_rapl_limit;
>   };
>   
>   struct i915_hwmon_drvdata {
> @@ -30,18 +43,127 @@ struct i915_hwmon_drvdata {
>   
>   struct i915_hwmon {
>   	struct i915_hwmon_drvdata ddat;
> +
>   	struct mutex hwmon_lock;	/* counter overflow logic and rmw */
> +
>   	struct i915_hwmon_reg rg;
> +
> +	u32 power_max_initial_value;
> +
> +	int scl_shift_power;
>   };
>   
> +static void
> +_locked_with_pm_intel_uncore_rmw(struct i915_hwmon_drvdata *ddat,
> +				 i915_reg_t reg, u32 clear, u32 set)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	struct intel_uncore *uncore = ddat->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	mutex_lock(&hwmon->hwmon_lock);
> +
> +	with_intel_runtime_pm(uncore->rpm, wakeref)
> +		intel_uncore_rmw(uncore, reg, clear, set);
> +
> +	mutex_unlock(&hwmon->hwmon_lock);
> +}
> +
> +static u64
> +_scale_and_shift(u32 in, u32 scale_factor, int nshift)
> +{
> +	u64 out = mul_u32_u32(scale_factor, in);
> +
> +	/* Shift, rounding to nearest */
> +	if (nshift > 0)
> +		out = (out + (1 << (nshift - 1))) >> nshift;
> +	return out;
> +}
> +
> +/*
> + * This function's return type of u64 allows for the case where the scaling
> + * of the field taken from the 32-bit register value might cause a result to
> + * exceed 32 bits.
> + */
> +static u64
> +_field_read_and_scale(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
> +		      u32 field_msk, int field_shift,
> +		      int nshift, u32 scale_factor)
> +{
> +	struct intel_uncore *uncore = ddat->uncore;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	with_intel_runtime_pm(uncore->rpm, wakeref)
> +		reg_value = intel_uncore_read(uncore, rgadr);
> +
> +	reg_value = (reg_value & field_msk) >> field_shift;
> +
> +	return _scale_and_shift(reg_value, scale_factor, nshift);
> +}
> +
> +static void
> +_field_scale_and_write(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
> +		       u32 field_msk, int field_shift,
> +		       int nshift, unsigned int scale_factor, long lval)
> +{
> +	u32 nval;
> +	u32 bits_to_clear;
> +	u32 bits_to_set;
> +
> +	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> +	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> +
> +	bits_to_clear = field_msk;
> +	bits_to_set = (nval << field_shift) & field_msk;
> +
> +	_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> +					 bits_to_clear, bits_to_set);
> +}
> +
> +static ssize_t
> +i915_power1_max_default_show(struct device *dev, struct device_attribute *attr,
> +			     char *buf)
> +{
> +	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	u64 val = 0; /* uapi specifies to keep visible but return 0 if unsupported */
> +
> +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku))
> +		val = _field_read_and_scale(ddat,
> +					    hwmon->rg.pkg_power_sku,
> +					    PKG_PKG_TDP,
> +					    FIELD_SHIFT(PKG_PKG_TDP),
> +					    hwmon->scl_shift_power,
> +					    SF_POWER);
> +	return sysfs_emit(buf, "%llu\n", val);
> +}
> +
> +static SENSOR_DEVICE_ATTR(power1_max_default, 0444,
> +			  i915_power1_max_default_show, NULL, 0);
> +
>   static struct attribute *hwmon_attributes[] = {
> +	&sensor_dev_attr_power1_max_default.dev_attr.attr,
>   	NULL
>   };
>   
>   static umode_t hwmon_attributes_visible(struct kobject *kobj,
>   					struct attribute *attr, int index)
>   {
> -	return 0;
> +	struct device *dev = kobj_to_dev(kobj);
> +	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
> +	struct drm_i915_private *i915 = ddat->uncore->i915;
> +	i915_reg_t rgadr;
> +
> +	if (attr == &sensor_dev_attr_power1_max_default.dev_attr.attr)
> +		return IS_DGFX(i915) ? attr->mode : 0;
> +	else
> +		return 0;
> +
> +	if (!i915_mmio_reg_valid(rgadr))
> +		return 0;
> +
> +	return attr->mode;
>   }
>   
>   static const struct attribute_group hwmon_attrgroup = {
> @@ -54,6 +176,19 @@ static const struct attribute_group *hwmon_groups[] = {
>   	NULL
>   };
>   
> +/*
> + * HWMON SENSOR TYPE = hwmon_power
> + *  - Sustained Power (power1_max)
> + */
> +static const u32 i915_config_power[] = {
> +	HWMON_P_MAX,
> +	0
> +};
> +
> +static const struct hwmon_channel_info i915_power = {
> +	.type = hwmon_power,
> +	.config = i915_config_power,
> +};
>   
>   /*
>    * HWMON SENSOR TYPE = hwmon_in
> @@ -71,6 +206,7 @@ static const struct hwmon_channel_info i915_in = {
>   
>   static const struct hwmon_channel_info *i915_info[] = {
>   	&i915_in,
> +	&i915_power,
>   	NULL
>   };
>   
> @@ -87,6 +223,21 @@ i915_in_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr)
>   	}
>   }
>   
> +static umode_t
> +i915_power_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr, int chan)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		if (i915_mmio_reg_valid(hwmon->rg.pkg_rapl_limit))
> +			return 0664;
> +		return 0;
> +	default:
> +		return 0;
> +	}
> +}
> +
>   static int
>   i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
>   {
> @@ -105,6 +256,44 @@ i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
>   	}
>   }
>   
> +static int
> +i915_power_read(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		*val = _field_read_and_scale(ddat,
> +					     hwmon->rg.pkg_rapl_limit,
> +					     PKG_PWR_LIM_1,
> +					     FIELD_SHIFT(PKG_PWR_LIM_1),
> +					     hwmon->scl_shift_power,
> +					     SF_POWER);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static int
> +i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, long val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		_field_scale_and_write(ddat,
> +				       hwmon->rg.pkg_rapl_limit,
> +				       PKG_PWR_LIM_1,
> +				       FIELD_SHIFT(PKG_PWR_LIM_1),
> +				       hwmon->scl_shift_power,
> +				       SF_POWER, val);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   		u32 attr, int channel)
> @@ -114,6 +303,8 @@ i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	switch (type) {
>   	case hwmon_in:
>   		return i915_in_is_visible(ddat, attr);
> +	case hwmon_power:
> +		return i915_power_is_visible(ddat, attr, channel);
>   	default:
>   		return 0;
>   	}
> @@ -128,6 +319,8 @@ i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	switch (type) {
>   	case hwmon_in:
>   		return i915_in_read(ddat, attr, val);
> +	case hwmon_power:
> +		return i915_power_read(ddat, attr, channel, val);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -137,7 +330,11 @@ static int
>   i915_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	   int channel, long val)
>   {
> +	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
> +
>   	switch (type) {
> +	case hwmon_power:
> +		return i915_power_write(ddat, attr, channel, val);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -158,13 +355,40 @@ static void
>   i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
>   {
>   	struct i915_hwmon *hwmon = i915->hwmon;
> +	struct intel_uncore *uncore = &i915->uncore;
> +	intel_wakeref_t wakeref;
> +	u32 val_sku_unit;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
>   		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
> +		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
> +		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
> +		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
>   	} else {
>   		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
> +		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
> +		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
> +		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
>   	}
>   
> +
> +	with_intel_runtime_pm(uncore->rpm, wakeref) {
> +		/*
> +		 * The contents of register hwmon->rg.pkg_power_sku_unit do not change,
> +		 * so read it once and store the shift values.
> +		 *
> +		 * For some platforms, this value is defined as available "for all
> +		 * tiles", with the values consistent across all tiles.
> +		 * In this case, use the tile 0 value for all.
> +		 */
> +		if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit)) {
> +			val_sku_unit = intel_uncore_read(uncore,
> +							 hwmon->rg.pkg_power_sku_unit);
> +		} else
> +			val_sku_unit = 0;
> +
> +		hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
> +	}
>   }
>   
>   void i915_hwmon_register(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 932bd6aa4a0a..4809565a3454 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1866,6 +1866,21 @@
>   #define   POWER_LIMIT_4_MASK		REG_BIT(9)
>   #define   POWER_LIMIT_1_MASK		REG_BIT(11)
>   #define   POWER_LIMIT_2_MASK		REG_BIT(12)
> +/*
> + * *_PACKAGE_POWER_SKU - SKU power and timing parameters.
> + * Used herein as a 64-bit register.
> + * These masks are defined using GENMASK_ULL as REG_GENMASK is limited to u32
> + * and as GENMASK is "long" and therefore 32-bits on a 32-bit system.
> + * PKG_PKG_TDP, PKG_MIN_PWR, and PKG_MAX_PWR are scaled in the same way as
> + * PKG_PWR_LIM_*, above.
> + * PKG_MAX_WIN has sub-fields for x and y, and has the value: is 1.x * 2^y.
> + */
> +#define   PKG_PKG_TDP			GENMASK_ULL(14, 0)
> +#define   PKG_MIN_PWR			GENMASK_ULL(30, 16)
> +#define   PKG_MAX_PWR			GENMASK_ULL(46, 32)
> +#define   PKG_MAX_WIN			GENMASK_ULL(54, 48)
> +#define     PKG_MAX_WIN_Y		GENMASK_ULL(54, 53)
> +#define     PKG_MAX_WIN_X		GENMASK_ULL(52, 48)
>   
>   #define CHV_CLK_CTL1			_MMIO(0x101100)
>   #define VLV_CLK_CTL2			_MMIO(0x101104)
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> index 2aad2f0cc8db..a3eccdee0ca4 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -191,11 +191,18 @@
>   
>   #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
>   #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
> +#define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
> +#define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
> +#define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
> +
>   #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>   #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
>   #define   RP1_CAP_MASK				REG_GENMASK(15, 8)
>   #define   RPN_CAP_MASK				REG_GENMASK(23, 16)
>   
> +#define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
> +#define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
> +
>   /* snb MCH registers for priority tuning */
>   #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
>   #define   SSKPD_NEW_WM0_MASK_HSW		REG_GENMASK64(63, 56)

