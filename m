Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C1E591538
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 20:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0914897ECE;
	Fri, 12 Aug 2022 18:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFCA11AC84
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 18:05:19 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 w11-20020a17090a380b00b001f73f75a1feso9031340pjb.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 11:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :from:to:cc; bh=cDaggzLH+UvQndr2a9eBibaXiy5g3p7jDXNvBwSRd3c=;
 b=RaYBZgyyKyCjdgPOeA9sh2+/SoDDrkHkjtXs+RWFxfWFk0l73RJynJB5KlYp/POlcu
 yhdsEaH16i6H6fERNQvTFfo7cFxFscEWdrUeCottRZ8uPcgM8iZ6IgfD0kmXxNtd6Y7n
 R+ZBg4+kHaPPei6ddDgRCR78A4d0VirWSt86VGBkDcFf2SafiqVy5qUNs4zqtgBVPAO0
 CdW87LPWt1TEWcUnAU7JyJLvtYWz0UHPZTHkTd12dS0GW4HjRMPYumO5duacJobKsuY4
 x9VoAIZqYpG+GkCA8Dkm5t01+kwocx0fuq3k8+NZSyWUiJV1GN3daZzZzgPAKDrnF6ml
 p62A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
 :content-language:user-agent:mime-version:date:message-id:sender
 :x-gm-message-state:from:to:cc;
 bh=cDaggzLH+UvQndr2a9eBibaXiy5g3p7jDXNvBwSRd3c=;
 b=cJNIgywTUsS5Opnxy+IiR5pCFzYePGlk6hFM022mU38HVGs/NgadTqn/OeNbZTl/iB
 HSSv7U0BV4U24jAn561A66420V+bFNvMs9lyhlvg/MtZjDDwhOlz6nJ372Qu5rfgrWil
 pnFJdElPNlvR0kJ/QPf3OA6Q2X/IvGRtcXTC0lmWRJpXClX27L4ejNJt2SAZIC/P7msO
 oWecS0yBWL6Ri/R/Dx1p5NnDA02kX4ADxY4tEdDv+6ZzSwe55nFrIiw0hLxGUbwB28Bz
 CZZ5NjACxunRc5g9ODsciCKNK9H+DwaVt2OD6qItiLCcugkTc4rZvunDh0dhm09omjKL
 MBNg==
X-Gm-Message-State: ACgBeo28jGAai1myxqK691ZJu0CpOUsa3syMaZE3hG2id1TIOBZ64YH8
 A0pNtFactHzLrSXSSYFLTdM=
X-Google-Smtp-Source: AA6agR7F5KwZQD/HGOl/QDhE0W404rDQ0kClyFbTJm8Dx2Qv9RTQUrM/0N2YHRsAbgtlRB6KBYiP1A==
X-Received: by 2002:a17:903:110e:b0:171:3afa:e68c with SMTP id
 n14-20020a170903110e00b001713afae68cmr5074035plh.12.1660327519231; 
 Fri, 12 Aug 2022 11:05:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 c83-20020a624e56000000b005251f4596f0sm1874888pfb.107.2022.08.12.11.05.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Aug 2022 11:05:18 -0700 (PDT)
Message-ID: <17f42391-f4a2-5913-9d6a-a0f3859f5d8c@roeck-us.net>
Date: Fri, 12 Aug 2022 11:05:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
 <20220812173715.2398586-2-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220812173715.2398586-2-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: linux-hwmon@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/12/22 10:37, Badal Nilawar wrote:
> From: Dale B Stimson <dale.b.stimson@intel.com>
> 
> The i915 HWMON module will be used to expose voltage, power and energy
> values for dGfx. Here we set up i915 hwmon infrastructure including i915
> hwmon registration, basic data structures and functions.
> 
> v2:
>    - Create HWMON infra patch (Ashutosh)
>    - Fixed review comments (Jani)
>    - Remove "select HWMON" from i915/Kconfig (Jani)
> v3: Use hwm_ prefix for static functions (Ashutosh)
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile      |   3 +
>   drivers/gpu/drm/i915/i915_driver.c |   7 ++
>   drivers/gpu/drm/i915/i915_drv.h    |   2 +
>   drivers/gpu/drm/i915/i915_hwmon.c  | 135 +++++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_hwmon.h  |  20 +++++
>   5 files changed, 167 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
>   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..2b235f747490 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -208,6 +208,9 @@ i915-y += gt/uc/intel_uc.o \
>   # graphics system controller (GSC) support
>   i915-y += gt/intel_gsc.o
>   
> +# graphics hardware monitoring (HWMON) support
> +i915-$(CONFIG_HWMON) += i915_hwmon.o
> +
>   # modesetting core code
>   i915-y += \
>   	display/hsw_ips.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..949908dd7496 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -80,6 +80,7 @@
>   #include "i915_drm_client.h"
>   #include "i915_drv.h"
>   #include "i915_getparam.h"
> +#include "i915_hwmon.h"
>   #include "i915_ioc32.h"
>   #include "i915_ioctl.h"
>   #include "i915_irq.h"
> @@ -736,6 +737,9 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>   
>   	intel_gt_driver_register(to_gt(dev_priv));
>   
> +#ifdef CONFIG_HWMON
> +	i915_hwmon_register(dev_priv);
> +#endif
>   	intel_display_driver_register(dev_priv);
>   
>   	intel_power_domains_enable(dev_priv);
> @@ -762,6 +766,9 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>   
>   	intel_display_driver_unregister(dev_priv);
>   
> +#ifdef CONFIG_HWMON

IS_REACHABLE() might be more appropriate. Otherwise this won't be included
if HWMON=m. An alternate approach might be to have dummy functions if the
hwmon code isn't rechable to avoid conditional code, but that is really
personal preference.

> +	i915_hwmon_unregister(dev_priv);
> +#endif
>   	intel_gt_driver_unregister(to_gt(dev_priv));
>   
>   	i915_perf_unregister(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 086bbe8945d6..d437d588dec9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -705,6 +705,8 @@ struct drm_i915_private {
>   
>   	struct i915_perf perf;
>   
> +	struct i915_hwmon *hwmon;
> +
>   	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
>   	struct intel_gt gt0;
>   
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> new file mode 100644
> index 000000000000..5b80a0f024f0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -0,0 +1,135 @@
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
> index 000000000000..921ae76099d3
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

