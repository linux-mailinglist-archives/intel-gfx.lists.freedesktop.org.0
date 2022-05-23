Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5591153112E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 15:46:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BCB710F9F6;
	Mon, 23 May 2022 13:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F8510F95C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 13:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653313577; x=1684849577;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=usU9TX4TCM115or8MzKVVoIA8+6BWt/a6fQg8qnWnx0=;
 b=NnSLkf5STvMpBzJjLdmRyWs6CToU9AUTf4+9q403Le8XZOxoFPYQCzsc
 A9JmtIT7yG6l5Tr6ED9HLE0qfKbmFCoB9RymOCtE9QHeBtYBzwKC8EUen
 lGCDL/U3zsQIFJMaw9HesREZGnJghzAnMixRFfhcJk0LsfhvsD9p2jvu/
 MADl8Ah+DqMrxAEErVAnOll2Z1ev7zPX28hQSgZtX8rbsyuv86XW4wueE
 gkPMgbV03i8bCd7GULLMrvBHNPeKEKMBlPVNKxbmSK7UUcvC97mT7Ak77
 mA2vOfxx7yubX1ITAg4mTHuBa9iVELlspxfPkzrgFZmHhk9SLzMt6U1y7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="253726111"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="253726111"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:46:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="572107094"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.135.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 06:46:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220523110841.1151431-2-badal.nilawar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
 <20220523110841.1151431-2-badal.nilawar@intel.com>
Date: Mon, 23 May 2022 16:46:12 +0300
Message-ID: <874k1gbbvf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hwmon: Add HWMON power sensor
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 May 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
>
> As part of the System Managemenent Interface (SMI), use the HWMON
> subsystem to display power utilization.
>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  .../ABI/testing/sysfs-driver-intel-i915-hwmon |  19 +
>  drivers/gpu/drm/i915/Kconfig                  |   1 +
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/i915_driver.c            |   5 +
>  drivers/gpu/drm/i915/i915_drv.h               |   2 +
>  drivers/gpu/drm/i915/i915_hwmon.c             | 410 ++++++++++++++++++
>  drivers/gpu/drm/i915/i915_hwmon.h             |  44 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  15 +
>  drivers/gpu/drm/i915/intel_mchbar_regs.h      |   9 +
>  9 files changed, 506 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwm=
on
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
>
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Do=
cumentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> new file mode 100644
> index 000000000000..c680dd842358
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -0,0 +1,19 @@
> +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
> +Date:		June 2021
> +KernelVersion:	5.14

Please check the dates and versions in all these files.

> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RW. Card reactive sustained  (PL1/Tau) power limit in micro=
watts.
> +
> +		The power controller will throttle the operating frequency
> +		if the power averaged over a window (typically seconds)
> +		exceeds this limit.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default
> +Date:		June 2021
> +KernelVersion:	5.14
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Card default power limit (default TDP setting).
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 7ae3b7d67fcf..c60cfacd4c47 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -19,6 +19,7 @@ config DRM_I915
>  	select DRM_MIPI_DSI
>  	select RELAY
>  	select IRQ_WORK
> +	select HWMON
>  	# i915 depends on ACPI_VIDEO when ACPI is enabled
>  	# but for select to work, need to select ACPI_VIDEO's dependencies, ick
>  	select BACKLIGHT_CLASS_DEVICE if ACPI
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index d2b18f03a33c..e1d5912ea879 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -36,6 +36,7 @@ i915-y +=3D i915_driver.o \
>  	  i915_drm_client.o \
>  	  i915_config.o \
>  	  i915_getparam.o \
> +	  i915_hwmon.o \
>  	  i915_ioctl.o \
>  	  i915_irq.o \
>  	  i915_mitigations.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index b47746152d97..6f678587a771 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -80,6 +80,7 @@
>  #include "i915_drm_client.h"
>  #include "i915_drv.h"
>  #include "i915_getparam.h"
> +#include "i915_hwmon.h"
>  #include "i915_ioc32.h"
>  #include "i915_ioctl.h"
>  #include "i915_irq.h"
> @@ -702,6 +703,8 @@ static void i915_driver_register(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  	intel_gt_driver_register(to_gt(dev_priv));
>=20=20
> +	i915_hwmon_register(dev_priv);
> +
>  	intel_display_driver_register(dev_priv);
>=20=20
>  	intel_power_domains_enable(dev_priv);
> @@ -728,6 +731,8 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
>=20=20
>  	intel_display_driver_unregister(dev_priv);
>=20=20
> +	i915_hwmon_unregister(dev_priv);
> +
>  	intel_gt_driver_unregister(to_gt(dev_priv));
>=20=20
>  	i915_perf_unregister(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index c5fc402d9c50..e16bedba2d84 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -769,6 +769,8 @@ struct drm_i915_private {
>=20=20
>  	struct i915_perf perf;
>=20=20
> +	struct i915_hwmon *hwmon;
> +
>  	/* Abstract the submission mechanism (legacy ringbuffer or execlists) a=
way */
>  	struct intel_gt gt0;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i91=
5_hwmon.c
> new file mode 100644
> index 000000000000..b94c11f2517f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -0,0 +1,410 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation
> + */
> +
> +/*
> + * Power-related hwmon entries.
> + */
> +
> +#include <linux/hwmon.h>
> +#include <linux/hwmon-sysfs.h>
> +#include <linux/types.h>
> +
> +#include "i915_drv.h"
> +#include "i915_hwmon.h"
> +#include "intel_mchbar_regs.h"
> +
> +/*
> + * SF_* - scale factors for particular quantities according to hwmon spe=
c.
> + * - power  - microwatts
> + */
> +#define SF_POWER	1000000
> +
> +#define FIELD_SHIFT(__mask)				    \
> +	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
> +		BUILD_BUG_ON_ZERO((__mask) =3D=3D 0) +	    \
> +		__bf_shf(__mask))
> +
> +static void
> +_locked_with_pm_intel_uncore_rmw(struct i915_hwmon_drvdata *ddat,
> +				 i915_reg_t reg, u32 clear, u32 set)
> +{
> +	struct i915_hwmon *hwmon =3D ddat->dd_hwmon;
> +	struct intel_uncore *uncore =3D ddat->dd_uncore;
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
> +	u64 out =3D mul_u32_u32(scale_factor, in);
> +
> +	/* Shift, rounding to nearest */
> +	if (nshift > 0)
> +		out =3D (out + (1 << (nshift - 1))) >> nshift;
> +	return out;
> +}
> +
> +/*
> + * This function's return type of u64 allows for the case where the scal=
ing
> + * of the field taken from the 32-bit register value might cause a resul=
t to
> + * exceed 32 bits.
> + */
> +static u64
> +_field_read_and_scale(struct i915_hwmon_drvdata *ddat, i915_reg_t rgadr,
> +		      u32 field_msk, int field_shift,
> +		      int nshift, u32 scale_factor)
> +{
> +	struct intel_uncore *uncore =3D ddat->dd_uncore;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	with_intel_runtime_pm(uncore->rpm, wakeref)
> +		reg_value =3D intel_uncore_read(uncore, rgadr);
> +
> +	reg_value =3D (reg_value & field_msk) >> field_shift;
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
> +	nval =3D DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> +
> +	bits_to_clear =3D field_msk;
> +	bits_to_set =3D (nval << field_shift) & field_msk;
> +
> +	_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> +					 bits_to_clear, bits_to_set);
> +}
> +
> +static ssize_t
> +i915_power1_max_default_show(struct device *dev, struct device_attribute=
 *attr,
> +			     char *buf)
> +{
> +	struct i915_hwmon_drvdata *ddat =3D dev_get_drvdata(dev);
> +	struct i915_hwmon *hwmon =3D ddat->dd_hwmon;
> +	u64 val =3D 0; /* uapi specifies to keep visible but return 0 if unsupp=
orted */
> +
> +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku))
> +		val =3D _field_read_and_scale(ddat,
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
> +static struct attribute *hwmon_attributes[] =3D {
> +	&sensor_dev_attr_power1_max_default.dev_attr.attr,
> +	NULL
> +};
> +
> +static umode_t hwmon_attributes_visible(struct kobject *kobj,
> +					struct attribute *attr, int index)
> +{
> +	struct device *dev =3D kobj_to_dev(kobj);
> +	struct i915_hwmon_drvdata *ddat =3D dev_get_drvdata(dev);
> +	struct drm_i915_private *i915 =3D ddat->dd_uncore->i915;
> +	i915_reg_t rgadr;
> +
> +	if (attr =3D=3D &sensor_dev_attr_power1_max_default.dev_attr.attr)
> +		return IS_DGFX(i915) ? attr->mode : 0;
> +	else
> +		return 0;
> +
> +	if (!i915_mmio_reg_valid(rgadr))
> +		return 0;
> +
> +	return attr->mode;
> +}
> +
> +static const struct attribute_group hwmon_attrgroup =3D {
> +	.attrs =3D hwmon_attributes,
> +	.is_visible =3D hwmon_attributes_visible,
> +};
> +
> +static const struct attribute_group *hwmon_groups[] =3D {
> +	&hwmon_attrgroup,
> +	NULL
> +};
> +
> +/*
> + * HWMON SENSOR TYPE =3D hwmon_power
> + *  - Sustained Power (power1_max)
> + */
> +static const u32 i915_config_power[] =3D {
> +	HWMON_P_MAX,
> +	0
> +};
> +
> +static const struct hwmon_channel_info i915_power =3D {
> +	.type =3D hwmon_power,
> +	.config =3D i915_config_power,
> +};
> +
> +static const struct hwmon_channel_info *i915_info[] =3D {
> +	&i915_power,
> +	NULL
> +};
> +
> +static umode_t
> +i915_power_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr, i=
nt chan)
> +{
> +	struct i915_hwmon *hwmon =3D ddat->dd_hwmon;
> +	i915_reg_t rgadr;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		rgadr =3D hwmon->rg.pkg_rapl_limit;
> +		break;
> +	default:
> +		return 0;
> +	}
> +
> +	if (!i915_mmio_reg_valid(rgadr))
> +		return 0;
> +
> +	return 0664;
> +}
> +
> +static int
> +i915_power_read(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, lon=
g *val)
> +{
> +	struct i915_hwmon *hwmon =3D ddat->dd_hwmon;
> +	int ret =3D 0;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		*val =3D _field_read_and_scale(ddat,
> +					     hwmon->rg.pkg_rapl_limit,
> +					     PKG_PWR_LIM_1,
> +					     FIELD_SHIFT(PKG_PWR_LIM_1),
> +					     hwmon->scl_shift_power,
> +					     SF_POWER);
> +		break;
> +	default:
> +		ret =3D -EOPNOTSUPP;
> +	}
> +
> +	return ret;
> +}
> +
> +static int
> +i915_power_write(struct i915_hwmon_drvdata *ddat, u32 attr, int chan, lo=
ng val)
> +{
> +	struct i915_hwmon *hwmon =3D ddat->dd_hwmon;
> +	int ret =3D 0;
> +
> +	switch (attr) {
> +	case hwmon_power_max:
> +		_field_scale_and_write(ddat,
> +				       hwmon->rg.pkg_rapl_limit,
> +				       PKG_PWR_LIM_1,
> +				       FIELD_SHIFT(PKG_PWR_LIM_1),
> +				       hwmon->scl_shift_power,
> +				       SF_POWER, val);
> +		break;
> +	default:
> +		ret =3D -EOPNOTSUPP;
> +	}
> +
> +	return ret;
> +}
> +
> +static umode_t
> +i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
> +		u32 attr, int channel)
> +{
> +	struct i915_hwmon_drvdata *ddat =3D (struct i915_hwmon_drvdata *)drvdat=
a;
> +
> +	switch (type) {
> +	case hwmon_power:
> +		return i915_power_is_visible(ddat, attr, channel);
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> +	  int channel, long *val)
> +{
> +	struct i915_hwmon_drvdata *ddat =3D dev_get_drvdata(dev);
> +
> +	switch (type) {
> +	case hwmon_power:
> +		return i915_power_read(ddat, attr, channel, val);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static int
> +i915_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> +	   int channel, long val)
> +{
> +	struct i915_hwmon_drvdata *ddat =3D dev_get_drvdata(dev);
> +
> +	switch (type) {
> +	case hwmon_power:
> +		return i915_power_write(ddat, attr, channel, val);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static const struct hwmon_ops i915_hwmon_ops =3D {
> +	.is_visible =3D i915_is_visible,
> +	.read =3D i915_read,
> +	.write =3D i915_write,
> +};
> +
> +static const struct hwmon_chip_info i915_chip_info =3D {
> +	.ops =3D &i915_hwmon_ops,
> +	.info =3D i915_info,
> +};
> +
> +static void
> +i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
> +{
> +	struct i915_hwmon *hwmon =3D i915->hwmon;
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	struct i915_hwmon_drvdata *ddat =3D &hwmon->ddat;
> +	intel_wakeref_t wakeref;
> +	u32 val_sku_unit;
> +	__le32 le_sku_unit;
> +
> +	if (IS_DG1(i915) || IS_DG2(i915)) {
> +		hwmon->rg.pkg_power_sku_unit =3D PCU_PACKAGE_POWER_SKU_UNIT;
> +		hwmon->rg.pkg_power_sku =3D INVALID_MMIO_REG;
> +		hwmon->rg.pkg_rapl_limit =3D PCU_PACKAGE_RAPL_LIMIT;
> +	} else {
> +		hwmon->rg.pkg_power_sku_unit =3D INVALID_MMIO_REG;
> +		hwmon->rg.pkg_power_sku =3D INVALID_MMIO_REG;
> +		hwmon->rg.pkg_rapl_limit =3D INVALID_MMIO_REG;
> +	}
> +
> +	wakeref =3D intel_runtime_pm_get(uncore->rpm);
> +
> +	/*
> +	 * The contents of register hwmon->rg.pkg_power_sku_unit do not change,
> +	 * so read it once and store the shift values.
> +	 *
> +	 * For some platforms, this value is defined as available "for all
> +	 * tiles", with the values consistent across all tiles.
> +	 * In this case, use the tile 0 value for all.
> +	 */
> +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit))
> +		val_sku_unit =3D intel_uncore_read(uncore,
> +						 hwmon->rg.pkg_power_sku_unit);
> +	else
> +		val_sku_unit =3D 0;
> +
> +	intel_runtime_pm_put(uncore->rpm, wakeref);
> +
> +	le_sku_unit =3D cpu_to_le32(val_sku_unit);
> +	hwmon->scl_shift_power =3D le32_get_bits(le_sku_unit, PKG_PWR_UNIT);
> +
> +	/*
> +	 * The value of power1_max is reset to the default on reboot, but is
> +	 * not reset by a module unload/load sequence.  To allow proper
> +	 * functioning after a module reload, the value for power1_max is
> +	 * restored to its original value at module unload time in
> +	 * i915_hwmon_unregister().
> +	 */
> +	hwmon->power_max_initial_value =3D
> +		(u32)_field_read_and_scale(ddat,
> +					   hwmon->rg.pkg_rapl_limit,
> +					   PKG_PWR_LIM_1,
> +					   FIELD_SHIFT(PKG_PWR_LIM_1),
> +					   hwmon->scl_shift_power, SF_POWER);
> +}
> +
> +void i915_hwmon_register(struct drm_i915_private *i915)
> +{
> +	struct device *dev =3D i915->drm.dev;
> +	struct i915_hwmon *hwmon;
> +	struct device *hwmon_dev;
> +	struct i915_hwmon_drvdata *ddat;
> +
> +	hwmon =3D kzalloc(sizeof(*hwmon), GFP_KERNEL);
> +	if (!hwmon)
> +		return;
> +
> +	i915->hwmon =3D hwmon;
> +
> +	mutex_init(&hwmon->hwmon_lock);
> +
> +	ddat =3D &hwmon->ddat;
> +
> +	ddat->dd_hwmon =3D hwmon;
> +	ddat->dd_uncore =3D &i915->uncore;
> +	snprintf(ddat->dd_name, sizeof(ddat->dd_name), "i915");
> +
> +	i915_hwmon_get_preregistration_info(i915);
> +
> +	/*  hwmon_dev points to device hwmon<i> */
> +	hwmon_dev =3D hwmon_device_register_with_info(dev, ddat->dd_name,
> +						    ddat,
> +						    &i915_chip_info,
> +						    hwmon_groups);
> +
> +	if (IS_ERR(hwmon_dev)) {
> +		mutex_destroy(&hwmon->hwmon_lock);
> +		i915->hwmon =3D NULL;
> +		kfree(hwmon);
> +		return;
> +	}
> +
> +	ddat->dd_hwmon_dev =3D hwmon_dev;
> +}
> +
> +void i915_hwmon_unregister(struct drm_i915_private *i915)
> +{
> +	struct i915_hwmon *hwmon;
> +	struct i915_hwmon_drvdata *ddat;
> +
> +	hwmon =3D fetch_and_zero(&i915->hwmon);
> +	if (!hwmon)
> +		return;
> +
> +	ddat =3D &hwmon->ddat;
> +
> +	if (hwmon->power_max_initial_value) {
> +		/* Restore power1_max. */
> +		_field_scale_and_write(ddat, hwmon->rg.pkg_rapl_limit,
> +				       PKG_PWR_LIM_1,
> +				       FIELD_SHIFT(PKG_PWR_LIM_1),
> +				       hwmon->scl_shift_power,
> +				       SF_POWER,
> +				       hwmon->power_max_initial_value);
> +	}
> +
> +	if (ddat->dd_hwmon_dev)
> +		hwmon_device_unregister(ddat->dd_hwmon_dev);
> +
> +	mutex_destroy(&hwmon->hwmon_lock);
> +
> +	kfree(hwmon);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i91=
5_hwmon.h
> new file mode 100644
> index 000000000000..396b758aefce
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_HWMON_H__
> +#define __INTEL_HWMON_H__
> +
> +#include <linux/types.h>
> +#include <linux/mutex.h>
> +#include <linux/device.h>
> +#include "i915_reg.h"
> +
> +struct drm_i915_private;
> +
> +struct i915_hwmon_reg {
> +	i915_reg_t pkg_power_sku_unit;
> +	i915_reg_t pkg_power_sku;
> +	i915_reg_t pkg_rapl_limit;
> +};
> +
> +struct i915_hwmon_drvdata {
> +	struct i915_hwmon *dd_hwmon;
> +	struct intel_uncore *dd_uncore;
> +	struct device *dd_hwmon_dev;
> +	char dd_name[12];
> +};
> +
> +struct i915_hwmon {
> +	struct i915_hwmon_drvdata ddat;
> +
> +	struct mutex hwmon_lock;	/* counter overflow logic and rmw */
> +
> +	struct i915_hwmon_reg rg;
> +
> +	u32 power_max_initial_value;
> +
> +	int scl_shift_power;
> +};
> +
> +void i915_hwmon_register(struct drm_i915_private *i915);
> +void i915_hwmon_unregister(struct drm_i915_private *i915);
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index d8579ab9384c..1c570c706ff8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1866,6 +1866,21 @@
>  #define   POWER_LIMIT_4_MASK		REG_BIT(9)
>  #define   POWER_LIMIT_1_MASK		REG_BIT(11)
>  #define   POWER_LIMIT_2_MASK		REG_BIT(12)
> +/*
> + * *_PACKAGE_POWER_SKU - SKU power and timing parameters.
> + * Used herein as a 64-bit register.
> + * These masks are defined using GENMASK_ULL as REG_GENMASK is limited t=
o u32
> + * and as GENMASK is "long" and therefore 32-bits on a 32-bit system.
> + * PKG_PKG_TDP, PKG_MIN_PWR, and PKG_MAX_PWR are scaled in the same way =
as
> + * PKG_PWR_LIM_*, above.
> + * PKG_MAX_WIN has sub-fields for x and y, and has the value: is 1.x * 2=
^y.
> + */
> +#define   PKG_PKG_TDP			GENMASK_ULL(14, 0)
> +#define   PKG_MIN_PWR			GENMASK_ULL(30, 16)
> +#define   PKG_MAX_PWR			GENMASK_ULL(46, 32)
> +#define   PKG_MAX_WIN			GENMASK_ULL(54, 48)
> +#define     PKG_MAX_WIN_Y		GENMASK_ULL(54, 53)
> +#define     PKG_MAX_WIN_X		GENMASK_ULL(52, 48)
>=20=20
>  #define CHV_CLK_CTL1			_MMIO(0x101100)
>  #define VLV_CLK_CTL2			_MMIO(0x101104)
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i=
915/intel_mchbar_regs.h
> index 2aad2f0cc8db..247561d7974c 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -191,11 +191,20 @@
>=20=20
>  #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
>  #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
> +#define PCU_PACKAGE_POWER_SKU_UNIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593=
8)
> +#define   PKG_PWR_UNIT				REG_GENMASK(3, 0)
> +#define   PKG_TIME_UNIT				REG_GENMASK(19, 16)
> +
>  #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>  #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
>  #define   RP1_CAP_MASK				REG_GENMASK(15, 8)
>  #define   RPN_CAP_MASK				REG_GENMASK(23, 16)
>=20=20
> +#define PCU_PACKAGE_RAPL_LIMIT			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
> +#define   PKG_PWR_LIM_1				REG_GENMASK(14, 0)
> +#define   PKG_PWR_LIM_1_EN			REG_BIT(15)
> +#define   PKG_PWR_LIM_1_TIME			REG_GENMASK(23, 17)
> +
>  /* snb MCH registers for priority tuning */
>  #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
>  #define   SSKPD_NEW_WM0_MASK_HSW		REG_GENMASK64(63, 56)

--=20
Jani Nikula, Intel Open Source Graphics Center
