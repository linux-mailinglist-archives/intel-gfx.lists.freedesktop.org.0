Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E7E599B08
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 13:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6F110E1D7;
	Fri, 19 Aug 2022 11:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEC310E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 11:41:37 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id bh13so3510023pgb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 04:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:sender
 :from:to:cc; bh=6brE+44hHVDNFD952b5eKj8dghuJ584WBCFhVsoBkUM=;
 b=IMquV9LaIxx+1unKbK8i89UmBZTEevFLI4WTTlEdd27n98Eaw+rbu5PZQ3t1mRsUT5
 hSk2hXi+QIHSSv6pCaBlTGRCOrLyZMvYWdd0WSyi6+PE+J8Fv66tm74S4KDTGr3uOT9K
 LwZmlACR9uewkY82nYUJLa/fNcK6+zgsOWGStWn6eNXF9TU4D4kdu4qkqEHCSmT5SzRj
 cxJEA5dm2rW3bc+BGxJmqIeqbouWDvuqANKZoYDbynACv9V4KHOERvXQRod9FwlrVS/N
 QJgMnSbVJwAhU/+tuyF+t10Sb8FEMC20L5YpzdZsiWbeVD2Iw6LI16+YI2utZRTa34u3
 UKtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:sender
 :x-gm-message-state:from:to:cc;
 bh=6brE+44hHVDNFD952b5eKj8dghuJ584WBCFhVsoBkUM=;
 b=6XY6KnWCw0gZ8euezxyM2aHI4qw7vmRYrcDiM4ZXgt3lb7ZC3yo/lHIXlAzKMy3eB2
 ONU+1Wlnx2gO0vrCNkwO4cVoEfof+T+PkMbIxkLOIvLUAQGgByVm7kfzjJ6PEO73yHyK
 wsknuzMWRmJ5xcWElMUc84KvPgDW7lOumsHLz6x+YI3F0MzD6RM/662whcRRvG2D1TVS
 zmfOUZc7fZX8ydKEJXv5bDRtZOPTriPLldCqOq41A3YsTnmg3cVtAewcNMQa3+asS5o/
 QWYyZ4U57Is8edoShEX4w5RbCy2k0hHrke+1n1UuvOLnPjRA+q2+dnfSIrf8N/piGQd7
 DPww==
X-Gm-Message-State: ACgBeo15St2cqUqUwQCLU/IL53qb9mRVsep8DJdx/CoHBHxy4pXwrLSp
 74KXd2zyDzg+0ymgbm7T6UU=
X-Google-Smtp-Source: AA6agR4QofU5JnTd0G+htuh7nvzdffMNIH7dxh3bPxmK/VxQiESzn87KYiuc+ZyCwi7YdN6uV5V+eA==
X-Received: by 2002:a63:8c47:0:b0:40d:2d4:e3a2 with SMTP id
 q7-20020a638c47000000b0040d02d4e3a2mr6192049pgn.2.1660909296602; 
 Fri, 19 Aug 2022 04:41:36 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 m14-20020a62a20e000000b0052d4afc4302sm3380757pff.175.2022.08.19.04.41.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Aug 2022 04:41:35 -0700 (PDT)
Date: Fri, 19 Aug 2022 04:41:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220819114135.GE3106213@roeck-us.net>
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com>
 <87ilmoo707.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ilmoo707.fsf@intel.com>
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

On Fri, Aug 19, 2022 at 01:35:52PM +0300, Jani Nikula wrote:
> On Fri, 19 Aug 2022, Badal Nilawar <badal.nilawar@intel.com> wrote:
> > From: Dale B Stimson <dale.b.stimson@intel.com>
> >
> > The i915 HWMON module will be used to expose voltage, power and energy
> > values for dGfx. Here we set up i915 hwmon infrastructure including i915
> > hwmon registration, basic data structures and functions.
> >
> > v2:
> >   - Create HWMON infra patch (Ashutosh)
> >   - Fixed review comments (Jani)
> >   - Remove "select HWMON" from i915/Kconfig (Jani)
> > v3: Use hwm_ prefix for static functions (Ashutosh)
> > v4: s/#ifdef CONFIG_HWMON/#if IS_REACHABLE(CONFIG_HWMON)/ since the former
> >     doesn't work if hwmon is compiled as a module (Guenter)
> 
> Is this really what we want to do?
> 
> In my books, it's a misconfiguration to have CONFIG_HWMON=m with
> CONFIG_DRM_I915=y. That's really the problematic combo, not just
> CONFIG_HWMON=m, right? Why do we allow it at the kconfig level, and then
> have ugly hacks around it at the code level? Especially as
> CONFIG_DRM_I915=y should really be thought of as a corner case.
> 
> So why not do this in i915 Kconfig:
> 
> config DRM_I915
> 	...
> 	depends on HWMON || HWMON=n
> 

Ok with me, but not my call to make. The ifdef should then use
IS_ENABLED(), though.

Guenter

> Which rejects the CONFIG_HWMON=m && CONFIG_DRM_I915=y combo.
> 
> >
> > Cc: Guenter Roeck <linux@roeck-us.net>
> > Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> > Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile      |   3 +
> >  drivers/gpu/drm/i915/i915_driver.c |   7 ++
> >  drivers/gpu/drm/i915/i915_drv.h    |   2 +
> >  drivers/gpu/drm/i915/i915_hwmon.c  | 135 +++++++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
> >  5 files changed, 167 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
> >  create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index 522ef9b4aff3..2b235f747490 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -208,6 +208,9 @@ i915-y += gt/uc/intel_uc.o \
> >  # graphics system controller (GSC) support
> >  i915-y += gt/intel_gsc.o
> >  
> > +# graphics hardware monitoring (HWMON) support
> > +i915-$(CONFIG_HWMON) += i915_hwmon.o
> 
> Moreover, this builds i915_hwmon.o as part of i915.ko (or kernel as it's
> builtin) even if we can't use it!
> 
> 
> BR,
> Jani.
> 
> 
> > +
> >  # modesetting core code
> >  i915-y += \
> >  	display/hsw_ips.o \
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index deb8a8b76965..62340cd01dde 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -80,6 +80,7 @@
> >  #include "i915_drm_client.h"
> >  #include "i915_drv.h"
> >  #include "i915_getparam.h"
> > +#include "i915_hwmon.h"
> >  #include "i915_ioc32.h"
> >  #include "i915_ioctl.h"
> >  #include "i915_irq.h"
> > @@ -736,6 +737,9 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
> >  
> >  	intel_gt_driver_register(to_gt(dev_priv));
> >  
> > +#if IS_REACHABLE(CONFIG_HWMON)
> > +	i915_hwmon_register(dev_priv);
> > +#endif
> >  	intel_display_driver_register(dev_priv);
> >  
> >  	intel_power_domains_enable(dev_priv);
> > @@ -762,6 +766,9 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
> >  
> >  	intel_display_driver_unregister(dev_priv);
> >  
> > +#if IS_REACHABLE(CONFIG_HWMON)
> > +	i915_hwmon_unregister(dev_priv);
> > +#endif
> >  	intel_gt_driver_unregister(to_gt(dev_priv));
> >  
> >  	i915_perf_unregister(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 086bbe8945d6..d437d588dec9 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -705,6 +705,8 @@ struct drm_i915_private {
> >  
> >  	struct i915_perf perf;
> >  
> > +	struct i915_hwmon *hwmon;
> > +
> >  	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
> >  	struct intel_gt gt0;
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > new file mode 100644
> > index 000000000000..5b80a0f024f0
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > @@ -0,0 +1,135 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2022 Intel Corporation
> > + */
> > +
> > +#include <linux/hwmon.h>
> > +#include <linux/hwmon-sysfs.h>
> > +#include <linux/types.h>
> > +
> > +#include "i915_drv.h"
> > +#include "i915_hwmon.h"
> > +#include "intel_mchbar_regs.h"
> > +
> > +struct hwm_reg {
> > +};
> > +
> > +struct hwm_drvdata {
> > +	struct i915_hwmon *hwmon;
> > +	struct intel_uncore *uncore;
> > +	struct device *hwmon_dev;
> > +	char name[12];
> > +};
> > +
> > +struct i915_hwmon {
> > +	struct hwm_drvdata ddat;
> > +	struct mutex hwmon_lock;		/* counter overflow logic and rmw */
> > +	struct hwm_reg rg;
> > +};
> > +
> > +static const struct hwmon_channel_info *hwm_info[] = {
> > +	NULL
> > +};
> > +
> > +static umode_t
> > +hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
> > +	       u32 attr, int channel)
> > +{
> > +	switch (type) {
> > +	default:
> > +		return 0;
> > +	}
> > +}
> > +
> > +static int
> > +hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> > +	 int channel, long *val)
> > +{
> > +	switch (type) {
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +static int
> > +hwm_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> > +	  int channel, long val)
> > +{
> > +	switch (type) {
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +static const struct hwmon_ops hwm_ops = {
> > +	.is_visible = hwm_is_visible,
> > +	.read = hwm_read,
> > +	.write = hwm_write,
> > +};
> > +
> > +static const struct hwmon_chip_info hwm_chip_info = {
> > +	.ops = &hwm_ops,
> > +	.info = hwm_info,
> > +};
> > +
> > +static void
> > +hwm_get_preregistration_info(struct drm_i915_private *i915)
> > +{
> > +}
> > +
> > +void i915_hwmon_register(struct drm_i915_private *i915)
> > +{
> > +	struct device *dev = i915->drm.dev;
> > +	struct i915_hwmon *hwmon;
> > +	struct device *hwmon_dev;
> > +	struct hwm_drvdata *ddat;
> > +
> > +	/* hwmon is available only for dGfx */
> > +	if (!IS_DGFX(i915))
> > +		return;
> > +
> > +	hwmon = kzalloc(sizeof(*hwmon), GFP_KERNEL);
> > +	if (!hwmon)
> > +		return;
> > +
> > +	i915->hwmon = hwmon;
> > +	mutex_init(&hwmon->hwmon_lock);
> > +	ddat = &hwmon->ddat;
> > +
> > +	ddat->hwmon = hwmon;
> > +	ddat->uncore = &i915->uncore;
> > +	snprintf(ddat->name, sizeof(ddat->name), "i915");
> > +
> > +	hwm_get_preregistration_info(i915);
> > +
> > +	/*  hwmon_dev points to device hwmon<i> */
> > +	hwmon_dev = hwmon_device_register_with_info(dev, ddat->name,
> > +						    ddat,
> > +						    &hwm_chip_info,
> > +						    NULL);
> > +	if (IS_ERR(hwmon_dev)) {
> > +		mutex_destroy(&hwmon->hwmon_lock);
> > +		i915->hwmon = NULL;
> > +		kfree(hwmon);
> > +		return;
> > +	}
> > +
> > +	ddat->hwmon_dev = hwmon_dev;
> > +}
> > +
> > +void i915_hwmon_unregister(struct drm_i915_private *i915)
> > +{
> > +	struct i915_hwmon *hwmon;
> > +	struct hwm_drvdata *ddat;
> > +
> > +	hwmon = fetch_and_zero(&i915->hwmon);
> > +	if (!hwmon)
> > +		return;
> > +
> > +	ddat = &hwmon->ddat;
> > +	if (ddat->hwmon_dev)
> > +		hwmon_device_unregister(ddat->hwmon_dev);
> > +
> > +	mutex_destroy(&hwmon->hwmon_lock);
> > +	kfree(hwmon);
> > +}
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
> > new file mode 100644
> > index 000000000000..921ae76099d3
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> > @@ -0,0 +1,20 @@
> > +/* SPDX-License-Identifier: MIT */
> > +
> > +/*
> > + * Copyright © 2022 Intel Corporation
> > + */
> > +
> > +#ifndef __I915_HWMON_H__
> > +#define __I915_HWMON_H__
> > +
> > +#include <linux/device.h>
> > +#include <linux/mutex.h>
> > +#include <linux/types.h>
> > +#include "i915_reg.h"
> > +
> > +struct drm_i915_private;
> > +
> > +void i915_hwmon_register(struct drm_i915_private *i915);
> > +void i915_hwmon_unregister(struct drm_i915_private *i915);
> > +
> > +#endif /* __I915_HWMON_H__ */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
