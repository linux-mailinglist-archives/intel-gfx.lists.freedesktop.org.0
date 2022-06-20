Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C8755263D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 23:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFDA10E438;
	Mon, 20 Jun 2022 21:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56C310E438
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 21:06:42 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 h9-20020a17090a648900b001ecb8596e43so2209063pjj.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 14:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ePusArhi45ZTYQTZIIzh3/PrIEpmrJfgGJ+K7VsTClc=;
 b=ATRm08hkoFmASdDndo+WfAvPZkwrcqgwalRODa/4gMSgPWPMcUM0kTxlou/R0pOxka
 Y3YbzlBnwyUtNcpFuVK6Zi2QKSaTI4vTWOVwzoQVYG+A/Gid7aSmWk0g8CY6sIQbKsVu
 zXD5AueLd8l68qeiOHQbDGK0jpd5QvGmC98ZLBUOEUtG+ztk68Ti2lW+/rx52vP3mcr/
 DPEySsGDg6kT7kPuwelywu63NZrQk6yfRdof3Ne3dg/i4NaPufUWkeibQ2NK8J0cxayN
 4XPPsmP9xLHlrPmvOuluJ7Bcg4AN6wyrFyMIqC/j/fUWf9j2gmIPL+xnGv39/iB2WP6A
 lgrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ePusArhi45ZTYQTZIIzh3/PrIEpmrJfgGJ+K7VsTClc=;
 b=ZPwBhF8A3FUh6oPCNsGyrB6SBG6Gajcbg9mjZnpvRlCxkwZEz9pSLJlmVtFg3L535j
 uI8qgjy7C2Kuu2iC+WMzPrBgPaVnWrYWeRy3CQyDtT9MJiXqlyYfq5mDfqgP7PZK7/wR
 IBXiIEWAiDJD+ktr8OOqTstYYHbJULc7X6l0+xhOumbp+Gv+SCt5AhuC+O4batm9GcXp
 mmIn4MT3rgFcQ78WBF/H3RgwhUPlv6A7wTaGSy9uqux28WHJSCqHldwHzyx3vp8JMGz4
 y0bpAFTweDD+semgP+UZT/zuIyVW3BHcGQ5lUTOSZ2qNO3rSXWEy/UC7XKhws8CuZlFK
 lhow==
X-Gm-Message-State: AJIora9JMqZgRZ0O7lzTSvOHvENoGnh5W+LRegKXA7W0kgnup/SbgEjO
 k7DGVgJRrYHVyHPYickcJmazxNJekUo=
X-Google-Smtp-Source: AGRyM1vz+Mla2mCeFFoKoWvm9gjLH5V6gPeOf+pZPzm0mkCK7ZZ1+Z9ISY6uIe0Hksdnw3mVoLHQXg==
X-Received: by 2002:a17:902:b690:b0:169:157:1148 with SMTP id
 c16-20020a170902b69000b0016901571148mr24933277pls.174.1655759202081; 
 Mon, 20 Jun 2022 14:06:42 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 k23-20020a17090aaa1700b001ecb5602944sm1758297pjq.28.2022.06.20.14.06.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jun 2022 14:06:41 -0700 (PDT)
Message-ID: <5b1ec66d-b0bf-664a-0e3d-a124267ef00d@roeck-us.net>
Date: Mon, 20 Jun 2022 14:06:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220620204649.894703-1-badal.nilawar@intel.com>
 <20220620204649.894703-3-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220620204649.894703-3-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/hwmon: Add HWMON current
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
Cc: linux-hwmon@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/20/22 13:46, Badal Nilawar wrote:
> From: Riana Tauro <riana.tauro@intel.com>
> 
> As part of the System Managemenent Interface (SMI), use the HWMON
> subsystem to display current voltage
> 
> v2:
>    - Updated date and kernel version in feature description
>    - Fixed review comments (Ashutosh)
> 
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  7 +++
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  3 +
>   drivers/gpu/drm/i915/i915_hwmon.c             | 63 +++++++++++++++++++
>   3 files changed, 73 insertions(+)
>   create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> new file mode 100644
> index 000000000000..24c4b7477d51
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -0,0 +1,7 @@
> +What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
> +Date:		June 2022
> +KernelVersion:	5.19
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Current Voltage in millivolt.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 07ef111947b8..63a39e1e00e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1487,6 +1487,9 @@
>   #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
>   #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
>   
> +#define GEN12_RPSTAT1				_MMIO(0x1381b4)
> +#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
> +
>   #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
>   #define   GEN11_CSME				(31)
>   #define   GEN11_GUNIT				(28)
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 2ef40b0c1e70..fc06db790243 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -14,9 +14,11 @@
>   #include "i915_hwmon.h"
>   #include "i915_drv.h"
>   #include "intel_mchbar_regs.h"
> +#include "gt/intel_gt_regs.h"
>   
>   
>   struct i915_hwmon_reg {
> +	i915_reg_t gt_perf_status;
>   };
>   
>   struct i915_hwmon_drvdata {
> @@ -53,15 +55,65 @@ static const struct attribute_group *hwmon_groups[] = {
>   };
>   
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
>   static const struct hwmon_channel_info *i915_info[] = {
> +	&i915_in,
>   	NULL
>   };

Please use the HWMON_CHANNEL_INFO macro.

Thanks,
Guenter

>   
> +static umode_t
> +i915_in_is_visible(const struct i915_hwmon_drvdata *ddat, u32 attr)
> +{
> +	struct drm_i915_private *i915 = ddat->uncore->i915;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
> +		return (IS_DG1(i915) || IS_DG2(i915)) ? 0444 : 0;
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +i915_in_read(struct i915_hwmon_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_value = intel_uncore_read(ddat->uncore, hwmon->rg.gt_perf_status);
> +		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   i915_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   		u32 attr, int channel)
>   {
> +	struct i915_hwmon_drvdata *ddat = (struct i915_hwmon_drvdata *)drvdata;
> +
>   	switch (type) {
> +	case hwmon_in:
> +		return i915_in_is_visible(ddat, attr);
>   	default:
>   		return 0;
>   	}
> @@ -71,7 +123,11 @@ static int
>   i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	  int channel, long *val)
>   {
> +	struct i915_hwmon_drvdata *ddat = dev_get_drvdata(dev);
> +
>   	switch (type) {
> +	case hwmon_in:
> +		return i915_in_read(ddat, attr, val);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -101,6 +157,13 @@ static const struct hwmon_chip_info i915_chip_info = {
>   static void
>   i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
>   {
> +	struct i915_hwmon *hwmon = i915->hwmon;
> +
> +	if (IS_DG1(i915) || IS_DG2(i915)) {
> +		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
> +	} else {
> +		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
> +	}
>   
>   }
>   

