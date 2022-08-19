Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906455999CA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 12:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D68D10E61C;
	Fri, 19 Aug 2022 10:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCA110E2BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 10:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660905356; x=1692441356;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YIaRCf+NDPGcZ5fh1foiCYiowH44OTVHjAX9w2+52WI=;
 b=M9y/J2GTkbKJY+dqzX31Wk1vduJ3s4xw0vsiLoW5gD4Ss+nKFoZGqrCN
 0yFyH/iqAJEyLVxoS1zLHJloh0T5aQMtHZI0XQMf+UkSJSSFI0gJD6Y3M
 //ug2NPFkXYAt8KV0ymCcnznkYO7x+GSnAygN8M4nCvzdd+Ek9xZNU4LN
 +qRtgnfSWDfd+rlGW2BJjvYlP/cPSllXFCojRc7/2VsvG89/5kwsWoBcp
 Z0PHXYjSXvcQ6L1PIJeUyAnxCPHOJJA76RZTDkTgZEoWztcJtm3S2dWb2
 47Nu+sU/AbeDaemAjHoX91M6dE1bLlmQgDTGWUjbUZTVze8ihZUmEwouQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="319017735"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="319017735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 03:35:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668533184"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 03:35:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220818193901.2974625-2-badal.nilawar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com>
Date: Fri, 19 Aug 2022 13:35:52 +0300
Message-ID: <87ilmoo707.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, linux@roeck-us.net
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Aug 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
>
> The i915 HWMON module will be used to expose voltage, power and energy
> values for dGfx. Here we set up i915 hwmon infrastructure including i915
> hwmon registration, basic data structures and functions.
>
> v2:
>   - Create HWMON infra patch (Ashutosh)
>   - Fixed review comments (Jani)
>   - Remove "select HWMON" from i915/Kconfig (Jani)
> v3: Use hwm_ prefix for static functions (Ashutosh)
> v4: s/#ifdef CONFIG_HWMON/#if IS_REACHABLE(CONFIG_HWMON)/ since the former
>     doesn't work if hwmon is compiled as a module (Guenter)

Is this really what we want to do?

In my books, it's a misconfiguration to have CONFIG_HWMON=3Dm with
CONFIG_DRM_I915=3Dy. That's really the problematic combo, not just
CONFIG_HWMON=3Dm, right? Why do we allow it at the kconfig level, and then
have ugly hacks around it at the code level? Especially as
CONFIG_DRM_I915=3Dy should really be thought of as a corner case.

So why not do this in i915 Kconfig:

config DRM_I915
	...
	depends on HWMON || HWMON=3Dn

Which rejects the CONFIG_HWMON=3Dm && CONFIG_DRM_I915=3Dy combo.

>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile      |   3 +
>  drivers/gpu/drm/i915/i915_driver.c |   7 ++
>  drivers/gpu/drm/i915/i915_drv.h    |   2 +
>  drivers/gpu/drm/i915/i915_hwmon.c  | 135 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
>  5 files changed, 167 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..2b235f747490 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -208,6 +208,9 @@ i915-y +=3D gt/uc/intel_uc.o \
>  # graphics system controller (GSC) support
>  i915-y +=3D gt/intel_gsc.o
>=20=20
> +# graphics hardware monitoring (HWMON) support
> +i915-$(CONFIG_HWMON) +=3D i915_hwmon.o

Moreover, this builds i915_hwmon.o as part of i915.ko (or kernel as it's
builtin) even if we can't use it!


BR,
Jani.


> +
>  # modesetting core code
>  i915-y +=3D \
>  	display/hsw_ips.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index deb8a8b76965..62340cd01dde 100644
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
> @@ -736,6 +737,9 @@ static void i915_driver_register(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  	intel_gt_driver_register(to_gt(dev_priv));
>=20=20
> +#if IS_REACHABLE(CONFIG_HWMON)
> +	i915_hwmon_register(dev_priv);
> +#endif
>  	intel_display_driver_register(dev_priv);
>=20=20
>  	intel_power_domains_enable(dev_priv);
> @@ -762,6 +766,9 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
>=20=20
>  	intel_display_driver_unregister(dev_priv);
>=20=20
> +#if IS_REACHABLE(CONFIG_HWMON)
> +	i915_hwmon_unregister(dev_priv);
> +#endif
>  	intel_gt_driver_unregister(to_gt(dev_priv));
>=20=20
>  	i915_perf_unregister(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 086bbe8945d6..d437d588dec9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -705,6 +705,8 @@ struct drm_i915_private {
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
> index 000000000000..5b80a0f024f0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
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
> +struct hwm_reg {
> +};
> +
> +struct hwm_drvdata {
> +	struct i915_hwmon *hwmon;
> +	struct intel_uncore *uncore;
> +	struct device *hwmon_dev;
> +	char name[12];
> +};
> +
> +struct i915_hwmon {
> +	struct hwm_drvdata ddat;
> +	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
> +	struct hwm_reg rg;
> +};
> +
> +static const struct hwmon_channel_info *hwm_info[] =3D {
> +	NULL
> +};
> +
> +static umode_t
> +hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
> +	       u32 attr, int channel)
> +{
> +	switch (type) {
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> +	 int channel, long *val)
> +{
> +	switch (type) {
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static int
> +hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> +	  int channel, long val)
> +{
> +	switch (type) {
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static const struct hwmon_ops hwm_ops =3D {
> +	.is_visible =3D hwm_is_visible,
> +	.read =3D hwm_read,
> +	.write =3D hwm_write,
> +};
> +
> +static const struct hwmon_chip_info hwm_chip_info =3D {
> +	.ops =3D &hwm_ops,
> +	.info =3D hwm_info,
> +};
> +
> +static void
> +hwm_get_preregistration_info(struct drm_i915_private *i915)
> +{
> +}
> +
> +void i915_hwmon_register(struct drm_i915_private *i915)
> +{
> +	struct device *dev =3D i915->drm.dev;
> +	struct i915_hwmon *hwmon;
> +	struct device *hwmon_dev;
> +	struct hwm_drvdata *ddat;
> +
> +	/* hwmon is available only for dGfx */
> +	if (!IS_DGFX(i915))
> +		return;
> +
> +	hwmon =3D kzalloc(sizeof(*hwmon), GFP_KERNEL);
> +	if (!hwmon)
> +		return;
> +
> +	i915->hwmon =3D hwmon;
> +	mutex_init(&hwmon->hwmon_lock);
> +	ddat =3D &hwmon->ddat;
> +
> +	ddat->hwmon =3D hwmon;
> +	ddat->uncore =3D &i915->uncore;
> +	snprintf(ddat->name, sizeof(ddat->name), "i915");
> +
> +	hwm_get_preregistration_info(i915);
> +
> +	/*  hwmon_dev points to device hwmon<i> */
> +	hwmon_dev =3D hwmon_device_register_with_info(dev, ddat->name,
> +						    ddat,
> +						    &hwm_chip_info,
> +						    NULL);
> +	if (IS_ERR(hwmon_dev)) {
> +		mutex_destroy(&hwmon->hwmon_lock);
> +		i915->hwmon =3D NULL;
> +		kfree(hwmon);
> +		return;
> +	}
> +
> +	ddat->hwmon_dev =3D hwmon_dev;
> +}
> +
> +void i915_hwmon_unregister(struct drm_i915_private *i915)
> +{
> +	struct i915_hwmon *hwmon;
> +	struct hwm_drvdata *ddat;
> +
> +	hwmon =3D fetch_and_zero(&i915->hwmon);
> +	if (!hwmon)
> +		return;
> +
> +	ddat =3D &hwmon->ddat;
> +	if (ddat->hwmon_dev)
> +		hwmon_device_unregister(ddat->hwmon_dev);
> +
> +	mutex_destroy(&hwmon->hwmon_lock);
> +	kfree(hwmon);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i91=
5_hwmon.h
> new file mode 100644
> index 000000000000..921ae76099d3
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_HWMON_H__
> +#define __I915_HWMON_H__
> +
> +#include <linux/device.h>
> +#include <linux/mutex.h>
> +#include <linux/types.h>
> +#include "i915_reg.h"
> +
> +struct drm_i915_private;
> +
> +void i915_hwmon_register(struct drm_i915_private *i915);
> +void i915_hwmon_unregister(struct drm_i915_private *i915);
> +
> +#endif /* __I915_HWMON_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
