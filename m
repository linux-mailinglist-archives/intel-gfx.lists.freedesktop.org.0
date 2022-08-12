Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE98459153F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 20:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59BB9A7B1;
	Fri, 12 Aug 2022 18:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5129A7C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 18:08:14 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id q19so1579085pfg.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 11:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:from:to:cc;
 bh=WfXlCLQdHnS5dwjrG8JWjpGGF6vHwQ8FHYhOwsrtxsc=;
 b=Rd0T3zM0hzcB4MMM07T8Oxrobhvfz/10+54kQXh5iozuz9mlAefkBgrNYS7z+SwkR4
 eAtT2zZSgsYtoZ0e4Srgxmhev6/IA214mVI8qZmjrTmyQQieIsu1uMmPpO0UExlXxBy2
 bVnRBEZmfloGvjkpOM4VyXSJUEXzpy69bOhpVVqqB6qcx2ZAQksZHK4UfUyE5WjCuUX1
 kqeAiF8pDDykJ61mAQZMhcrtLFSgjo7b0BhZGRg5/8hsfeuprKeFifLt1Mp+Otn24imR
 zKbOD8OJ1RxQ6n09QtYoeA4sKHz9ospweedr+7cqe1mAxdYfcuvEVF0Ce5Fr0/JkZcEZ
 msOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:x-gm-message-state:from:to:cc;
 bh=WfXlCLQdHnS5dwjrG8JWjpGGF6vHwQ8FHYhOwsrtxsc=;
 b=xH3139cO3ivRIE6Og4Iw1AopkW2bh8N+0cRaAZtSgxDgVTiY3x0+tPQV6hWXvbE651
 ybUbEarGKpyacT/HtPDRoLw6wSs4YCcc6m9Qy5dvhAuxGrD1EpOJz2EaiIuzW9qPrs/l
 /zN0IuHc16KsHro887RBI4WW4d7sHa2FlWnIpYTg3o+wX8gvTTk790i12myrWl8J4RLk
 D+I7KlKm8tapJfpx+tGeLcSVCrktutFBN+lUoVu5ZPEtbOI4r1T2mJj2+8skMO6lkASF
 ZUyJfcGOkZ82X6kg7Dk3QG5fu0RTPrnoUVR2c3oWv3nEUj4ulbYm8xpw/dGQviagUnUC
 +abA==
X-Gm-Message-State: ACgBeo38fJ6pwKcvC/tERhwzpZrPgGeO81qIKsXDN/U96vFW1f52ZQoW
 /IMk1u2qgeDMV3qCD3T0Ve0=
X-Google-Smtp-Source: AA6agR5RSyB7bkGGHhOqJG9RtNY/YATrVS16IyAN175ONSX1lwstZQML5iL09GL0Oxm8xGPjLTeBcQ==
X-Received: by 2002:a63:f315:0:b0:41d:3568:1e12 with SMTP id
 l21-20020a63f315000000b0041d35681e12mr4051973pgh.279.1660327693502; 
 Fri, 12 Aug 2022 11:08:13 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a15-20020a1709027e4f00b0016d72804664sm2022590pln.205.2022.08.12.11.08.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Aug 2022 11:08:12 -0700 (PDT)
Message-ID: <4a3cadf4-fd0a-b474-723a-24b8efa048c9@roeck-us.net>
Date: Fri, 12 Aug 2022 11:08:11 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
 <20220812173715.2398586-5-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220812173715.2398586-5-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/hwmon: Show device level
 energy usage
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
> Use i915 HWMON to display device level energy input.
> 
> v2:
>    - Updated the date and kernel version in feature description
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |   8 ++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 119 +++++++++++++++++-
>   drivers/gpu/drm/i915/i915_hwmon.h             |   1 +
>   drivers/gpu/drm/i915/intel_mchbar_regs.h      |   2 +
>   4 files changed, 128 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index 9a2d10edfce8..03d71c6869d3 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -25,3 +25,11 @@ Contact:	dri-devel@lists.freedesktop.org
>   Description:	RO. Card default power limit (default TDP setting).
>   
>   		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
> +Date:		June 2022
> +KernelVersion:	5.19
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Energy input of device in microjoules.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 2ce5bf94b220..416c77c89609 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -15,8 +15,10 @@
>   /*
>    * SF_* - scale factors for particular quantities according to hwmon spec.
>    * - power  - microwatts
> + * - energy - microjoules
>    */
>   #define SF_POWER	1000000
> +#define SF_ENERGY	1000000
>   
>   #define FIELD_SHIFT(__mask)				    \
>   	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
> @@ -28,12 +30,19 @@ struct hwm_reg {
>   	i915_reg_t pkg_power_sku_unit;
>   	i915_reg_t pkg_power_sku;
>   	i915_reg_t pkg_rapl_limit;
> +	i915_reg_t energy_status_all;
> +};
> +
> +struct hwm_energy_info {
> +	u32 reg_val_prev;
> +	long accum_energy;			/* Accumulated energy for energy1_input */
>   };
>   
>   struct hwm_drvdata {
>   	struct i915_hwmon *hwmon;
>   	struct intel_uncore *uncore;
>   	struct device *hwmon_dev;
> +	struct hwm_energy_info ei;		/*  Energy info for energy1_input */
>   	char name[12];
>   };
>   
> @@ -43,6 +52,7 @@ struct i915_hwmon {
>   	struct hwm_reg rg;
>   	u32 power_max_initial_value;
>   	int scl_shift_power;
> +	int scl_shift_energy;
>   };
>   
>   static void
> @@ -102,9 +112,72 @@ hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>   					    bits_to_clear, bits_to_set);
>   }
>   
> +/*
> + * hwm_energy - Obtain energy value
> + *
> + * The underlying energy hardware register is 32-bits and is subject to
> + * overflow. How long before overflow? For example, with an example
> + * scaling bit shift of 14 bits (see register *PACKAGE_POWER_SKU_UNIT) and
> + * a power draw of 1000 watts, the 32-bit counter will overflow in
> + * approximately 4.36 minutes.
> + *
> + * Examples:
> + *    1 watt:  (2^32 >> 14) /    1 W / (60 * 60 * 24) secs/day -> 3 days
> + * 1000 watts: (2^32 >> 14) / 1000 W / 60             secs/min -> 4.36 minutes
> + *
> + * The function significantly increases overflow duration (from 4.36
> + * minutes) by accumulating the energy register into a 'long' as allowed by
> + * the hwmon API. Using x86_64 128 bit arithmetic (see mul_u64_u32_shr()),
> + * a 'long' of 63 bits, SF_ENERGY of 1e6 (~20 bits) and
> + * hwmon->scl_shift_energy of 14 bits we have 57 (63 - 20 + 14) bits before
> + * energy1_input overflows. This at 1000 W is an overflow duration of 278 years.
> + */
> +static int
> +hwm_energy(struct hwm_drvdata *ddat, long *energy)
> +{
> +	struct intel_uncore *uncore = ddat->uncore;
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	struct hwm_energy_info *ei = &ddat->ei;
> +	intel_wakeref_t wakeref;
> +	i915_reg_t rgaddr;
> +	u32 reg_val;
> +
> +	rgaddr = hwmon->rg.energy_status_all;
> +
> +	if (!i915_mmio_reg_valid(rgaddr))
> +		return -EOPNOTSUPP;
> +
> +	mutex_lock(&hwmon->hwmon_lock);
> +
> +	with_intel_runtime_pm(uncore->rpm, wakeref)
> +		reg_val = intel_uncore_read(uncore, rgaddr);
> +
> +	if (reg_val >= ei->reg_val_prev)
> +		ei->accum_energy += reg_val - ei->reg_val_prev;
> +	else
> +		ei->accum_energy += UINT_MAX - ei->reg_val_prev + reg_val;
> +	ei->reg_val_prev = reg_val;
> +
> +	*energy = mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
> +				  hwmon->scl_shift_energy);
> +	mutex_unlock(&hwmon->hwmon_lock);
> +
> +	return 0;
> +}
> +
> +int
> +i915_hwmon_energy_status_get(struct drm_i915_private *i915, long *energy)
> +{
> +	struct i915_hwmon *hwmon = i915->hwmon;
> +	struct hwm_drvdata *ddat = &hwmon->ddat;
> +
> +	return hwm_energy(ddat, energy);
> +}
> +
>   static const struct hwmon_channel_info *hwm_info[] = {
>   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX),
> +	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
>   	NULL
>   };
>   
> @@ -199,6 +272,32 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
>   	}
>   }
>   
> +static umode_t
> +hwm_energy_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	i915_reg_t rgaddr;
> +
> +	switch (attr) {
> +	case hwmon_energy_input:
> +		rgaddr = hwmon->rg.energy_status_all;
> +		return i915_mmio_reg_valid(rgaddr) ? 0444 : 0;
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	switch (attr) {
> +	case hwmon_energy_input:
> +		return hwm_energy(ddat, val);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	       u32 attr, int channel)
> @@ -210,6 +309,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   		return hwm_in_is_visible(ddat, attr);
>   	case hwmon_power:
>   		return hwm_power_is_visible(ddat, attr, channel);
> +	case hwmon_energy:
> +		return hwm_energy_is_visible(ddat, attr);
>   	default:
>   		return 0;
>   	}
> @@ -226,6 +327,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   		return hwm_in_read(ddat, attr, val);
>   	case hwmon_power:
>   		return hwm_power_read(ddat, attr, channel, val);
> +	case hwmon_energy:
> +		return hwm_energy_read(ddat, attr, val);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -261,19 +364,23 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   {
>   	struct i915_hwmon *hwmon = i915->hwmon;
>   	struct intel_uncore *uncore = &i915->uncore;
> +	struct hwm_drvdata *ddat = &hwmon->ddat;
>   	intel_wakeref_t wakeref;
>   	u32 val_sku_unit;
> +	long energy;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
>   		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
>   		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
> +		hwmon->rg.energy_status_all = PCU_PACKAGE_ENERGY_STATUS;
>   	} else {
>   		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
> +		hwmon->rg.energy_status_all = INVALID_MMIO_REG;
>   	}
>   
>   	with_intel_runtime_pm(uncore->rpm, wakeref) {
> @@ -291,9 +398,17 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   		} else {
>   			val_sku_unit = 0;
>   		}
> -
> -		hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
>   	}
> +
> +	hwmon->scl_shift_power = REG_FIELD_GET(PKG_PWR_UNIT, val_sku_unit);
> +	hwmon->scl_shift_energy = REG_FIELD_GET(PKG_ENERGY_UNIT, val_sku_unit);
> +
> +	/*
> +	 * Initialize 'struct hwm_energy_info', i.e. set fields to the
> +	 * first value of the energy register read
> +	 */
> +	if (i915_mmio_reg_valid(hwmon->rg.energy_status_all))
> +		hwm_energy(ddat, &energy);
>   }
>   
>   void i915_hwmon_register(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
> index 921ae76099d3..d5d7f4a0bf4e 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.h
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -17,4 +17,5 @@ struct drm_i915_private;
>   void i915_hwmon_register(struct drm_i915_private *i915);
>   void i915_hwmon_unregister(struct drm_i915_private *i915);
>   
> +int i915_hwmon_energy_status_get(struct drm_i915_private *i915, long *energy);
>   #endif /* __I915_HWMON_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> index 4ba5f30b7901..18fcfc39ca2f 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -191,7 +191,9 @@
>   
>   #define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5938)
>   #define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
> +#define   PKG_ENERGY_UNIT                      REG_GENMASK(12, 8)
>   #define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
> +#define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
>   
>   #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
>   #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)

