Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884455A2890
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 15:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A9710E90F;
	Fri, 26 Aug 2022 13:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8D510E90F
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 13:30:26 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id g19so1592694pfb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 06:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:sender
 :from:to:cc; bh=x7mepxi4V+0DGR/faOY4m7VF+0FecQPUA5ViwVBuedA=;
 b=HgcKHw2a0fJBhVL3StmiexHeh9hBdbNlMfA0Hbml4kqlcKjOwEoOI6mTriXuaJ2GDN
 hobdDsyLSi2tp6Q9J2aM54QGqlh/K2DqrzCQ/pCnfjqA0wfP2oM9UicmdGR8aEPhYc4C
 AAFd1Ho2xvQDBDR7mHEyE5PADyPkCFU7BMkKmGQuCdJYo+4z8y7Vh26p0IuXj2Li2Mzq
 6jo5QdCPfPeU7jBPhdHeq4SQdFwNa1aQ04lOJAZYtTW3wh8slcT1HpUpuVVwc9AZqoB0
 sPQ9rsbsgRdaK5+9xluq87ZSzx9ZnYaVEGrY3n1P/ZgXOwthwGjwJ4ZXZCUTT2GIccUH
 ywnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:sender
 :x-gm-message-state:from:to:cc;
 bh=x7mepxi4V+0DGR/faOY4m7VF+0FecQPUA5ViwVBuedA=;
 b=CLsz2YXHzyYjRUwSAviNG9wRMYaAZV7fNsJ2QmYzBmEixuhyPa6C+GtZs++jsmLz7n
 QKtblKyDiUrvgk7umpIcaDE7vPVwe/PUEcgXy9whEcHAh0CX/PX3KibtDo90EF9YDcv4
 XRjbVh1P2ZPL5DR+zfZkprEFfVDziftgqjPA6ntYUnJUWwKK4/F8lQNryAldalGo7iQx
 rkGe1gDcoqJPPXXhkcm6tZCR67YFQAaGY2jdCyycfVMYjP0reyhsmSZxcSBsBd+tbRuh
 NTZ1D00g2OhcrxNHE1XtrGajorbkPepAvDG0keURCjt+nFlQxzk26e32Wig+zhhoKhnb
 CV2A==
X-Gm-Message-State: ACgBeo3761KUji92Ca/lZJL/blF+zHVoqi+tBrqpTUozonj4fN3tu8M7
 dljIzXR44os6g/0UttTmZMb6azX69eRy1g==
X-Google-Smtp-Source: AA6agR4P8IKTsCI1CMY+LKCm3pupGCSpcBeF9Ci2hFe6jx7xsb3cZe9Oy0jajuDbCELx3VnkKou04Q==
X-Received: by 2002:aa7:9084:0:b0:535:ed0c:f401 with SMTP id
 i4-20020aa79084000000b00535ed0cf401mr3911131pfa.48.1661520625739; 
 Fri, 26 Aug 2022 06:30:25 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 o4-20020a635a04000000b0042b08b6158dsm1457800pgb.56.2022.08.26.06.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 06:30:24 -0700 (PDT)
Date: Fri, 26 Aug 2022 06:30:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Badal Nilawar <badal.nilawar@intel.com>
Message-ID: <20220826133022.GA2899918@roeck-us.net>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-2-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220825132118.784407-2-badal.nilawar@intel.com>
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 25, 2022 at 06:51:12PM +0530, Badal Nilawar wrote:
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
> v5: Fixed review comments (Jani)
> 
> Cc: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/gpu/drm/i915/Makefile      |   3 +
>  drivers/gpu/drm/i915/i915_driver.c |   5 ++
>  drivers/gpu/drm/i915/i915_drv.h    |   2 +
>  drivers/gpu/drm/i915/i915_hwmon.c  | 136 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
>  5 files changed, 166 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
>  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..2b235f747490 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -208,6 +208,9 @@ i915-y += gt/uc/intel_uc.o \
>  # graphics system controller (GSC) support
>  i915-y += gt/intel_gsc.o
>  
> +# graphics hardware monitoring (HWMON) support
> +i915-$(CONFIG_HWMON) += i915_hwmon.o
> +
>  # modesetting core code
>  i915-y += \
>  	display/hsw_ips.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 1332c70370a6..248deecd26a5 100644
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
> @@ -736,6 +737,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>  
>  	intel_gt_driver_register(to_gt(dev_priv));
>  
> +	i915_hwmon_register(dev_priv);
> +
>  	intel_display_driver_register(dev_priv);
>  
>  	intel_power_domains_enable(dev_priv);
> @@ -762,6 +765,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  
>  	intel_display_driver_unregister(dev_priv);
>  
> +	i915_hwmon_unregister(dev_priv);
> +
>  	intel_gt_driver_unregister(to_gt(dev_priv));
>  
>  	i915_perf_unregister(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 69ce6db6a7c1..7b5b10df3404 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -705,6 +705,8 @@ struct drm_i915_private {
>  
>  	struct i915_perf perf;
>  
> +	struct i915_hwmon *hwmon;
> +
>  	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
>  	struct intel_gt gt0;
>  
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> new file mode 100644
> index 000000000000..103dd543a214
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -0,0 +1,136 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#include <linux/hwmon.h>
> +#include <linux/hwmon-sysfs.h>
> +#include <linux/types.h>
> +
> +#include "i915_drv.h"
> +#include "i915_hwmon.h"
> +#include "i915_reg.h"
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
> +static const struct hwmon_channel_info *hwm_info[] = {
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
> +static const struct hwmon_ops hwm_ops = {
> +	.is_visible = hwm_is_visible,
> +	.read = hwm_read,
> +	.write = hwm_write,
> +};
> +
> +static const struct hwmon_chip_info hwm_chip_info = {
> +	.ops = &hwm_ops,
> +	.info = hwm_info,
> +};
> +
> +static void
> +hwm_get_preregistration_info(struct drm_i915_private *i915)
> +{
> +}
> +
> +void i915_hwmon_register(struct drm_i915_private *i915)
> +{
> +	struct device *dev = i915->drm.dev;
> +	struct i915_hwmon *hwmon;
> +	struct device *hwmon_dev;
> +	struct hwm_drvdata *ddat;
> +
> +	/* hwmon is available only for dGfx */
> +	if (!IS_DGFX(i915))
> +		return;
> +
> +	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
> +	if (!hwmon)
> +		return;
> +
> +	i915->hwmon = hwmon;
> +	mutex_init(&hwmon->hwmon_lock);
> +	ddat = &hwmon->ddat;
> +
> +	ddat->hwmon = hwmon;
> +	ddat->uncore = &i915->uncore;
> +	snprintf(ddat->name, sizeof(ddat->name), "i915");
> +
> +	hwm_get_preregistration_info(i915);
> +
> +	/*  hwmon_dev points to device hwmon<i> */
> +	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
> +						    ddat,
> +						    &hwm_chip_info,
> +						    NULL);
> +	if (IS_ERR(hwmon_dev)) {
> +		mutex_destroy(&hwmon->hwmon_lock);
> +		i915->hwmon = NULL;
> +		kfree(hwmon);
> +		return;
> +	}
> +
> +	ddat->hwmon_dev = hwmon_dev;
> +}
> +
> +void i915_hwmon_unregister(struct drm_i915_private *i915)
> +{
> +	struct i915_hwmon *hwmon;
> +	struct hwm_drvdata *ddat;
> +
> +	hwmon = fetch_and_zero(&i915->hwmon);
> +	if (!hwmon)
> +		return;
> +
> +	ddat = &hwmon->ddat;
> +	if (ddat->hwmon_dev)
> +		hwmon_device_unregister(ddat->hwmon_dev);
> +
> +	mutex_destroy(&hwmon->hwmon_lock);
> +	kfree(hwmon);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
> new file mode 100644
> index 000000000000..7ca9cf2c34c9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_HWMON_H__
> +#define __I915_HWMON_H__
> +
> +struct drm_i915_private;
> +
> +#if IS_REACHABLE(CONFIG_HWMON)
> +void i915_hwmon_register(struct drm_i915_private *i915);
> +void i915_hwmon_unregister(struct drm_i915_private *i915);
> +#else
> +static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
> +static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
> +#endif
> +
> +#endif /* __I915_HWMON_H__ */
> -- 
> 2.25.1
> 
