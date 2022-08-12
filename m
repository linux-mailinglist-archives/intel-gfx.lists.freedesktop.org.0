Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB236591539
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 20:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D996897F90;
	Fri, 12 Aug 2022 18:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151C598931
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 18:05:44 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id o3so1401124ple.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 11:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:from:to:cc;
 bh=myRKn+hPE91ZNHqOte3AVTABgJoB+1Xcy5+nRHUt62s=;
 b=cBJ4hLgEZZzns85l2A/JzJjam0BfVWnlz/Byo0xnM7Qqa2utm1mGkqlUAK1rlHb6kD
 pBnIpGpOMFY9yihqijY909LZex7VjNZocO7gJOV3ugYKHFLPQv2CvL1JGcrR8LUrHHb5
 wqUucMje7tWgUWUTr/+QAl/d/sgLElSnjyD9XpCl+rsiaOF/T//gD/WLjIFZ5Y5TC2yo
 +UTIGPFXkw2TFrhb0IhtNoeHdci4l9GdVn8Jh2lQN4mtYF9TUJNo05xqctr4OI2TUPf6
 lRjc3FfACryi4O2N/4lVEXxzMAL8uLVIOMH2oJj328rPDNGYBC4yV4oQlCuoLVWH+QZH
 yTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :sender:x-gm-message-state:from:to:cc;
 bh=myRKn+hPE91ZNHqOte3AVTABgJoB+1Xcy5+nRHUt62s=;
 b=QEFU/ncfLJ3FzS4qD0Y5Pzb7o4wyOnRWqwqyb1JuqJlBl/cVxscZzdjt/HhiPColMD
 09D7INDoB4nw7CK1x5KdhtYm+PAG3CEnWGvswY1rfdUMVelSjcddhMk/7401bAWIPOoh
 3hqmAT5ePoYM28XoB7O3zHhXbY0BUTaGwiQnN8JE+rQALq+IumIE0A8cLjLEC2x7k1qQ
 2FnP2kupvaHEKQh08kWwVx1D/NOXZ1WAHxq76WuQZXEj/l+K/yrhJGR16Hm1nd+d31T2
 UQqwnWhD0UvCYuszgdaMNnUJ0NAs+N0W5NRVF6R36CWje0zfO8eUbmIdu/j3d8/5cH+l
 ugRw==
X-Gm-Message-State: ACgBeo1Vi+aB0lmypzLwcImupB800FD90yyc/CJxVaaVKyE4u5JaTNKb
 XorFF+9B2DTi4sunaO6UOYkKpD0GBtQ=
X-Google-Smtp-Source: AA6agR4gY0sS8xfY9pInjiIkiUt2VVBAO56kJ9hGyNseecqES9T+yLHsrjRZEf43coyKbTJTPcowrg==
X-Received: by 2002:a17:902:e844:b0:16f:9d2:f4ff with SMTP id
 t4-20020a170902e84400b0016f09d2f4ffmr5182818plg.27.1660327543403; 
 Fri, 12 Aug 2022 11:05:43 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c?
 ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w8-20020a1709026f0800b0016da9128169sm2053101plk.130.2022.08.12.11.05.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Aug 2022 11:05:42 -0700 (PDT)
Message-ID: <0ff2f65b-2833-3afd-4e4b-4a0f465b790d@roeck-us.net>
Date: Fri, 12 Aug 2022 11:05:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
 <20220812173715.2398586-3-badal.nilawar@intel.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20220812173715.2398586-3-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/hwmon: Add HWMON current
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

On 8/12/22 10:37, Badal Nilawar wrote:
> From: Riana Tauro <riana.tauro@intel.com>
> 
> Use i915 HWMON subsystem to display current input voltage.
> 
> v2:
>    - Updated date and kernel version in feature description
>    - Fixed review comments (Ashutosh)
> v3: Use macro HWMON_CHANNEL_INFO to define hwmon channel (Guenter)
> v4:
>    - Fixed review comments (Ashutosh)
>    - Use hwm_ prefix for static functions (Ashutosh)
> 
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  7 +++
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  3 ++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 47 +++++++++++++++++++
>   3 files changed, 57 insertions(+)
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
> index b3b49f6d6d1c..4604f6dbf8b6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1498,6 +1498,9 @@
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
> index 5b80a0f024f0..1893efe796a4 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -10,8 +10,10 @@
>   #include "i915_drv.h"
>   #include "i915_hwmon.h"
>   #include "intel_mchbar_regs.h"
> +#include "gt/intel_gt_regs.h"
>   
>   struct hwm_reg {
> +	i915_reg_t gt_perf_status;
>   };
>   
>   struct hwm_drvdata {
> @@ -28,14 +30,49 @@ struct i915_hwmon {
>   };
>   
>   static const struct hwmon_channel_info *hwm_info[] = {
> +	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>   	NULL
>   };
>   
> +static umode_t
> +hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> +{
> +	switch (attr) {
> +	case hwmon_in_input:
> +		return i915_mmio_reg_valid(ddat->hwmon->rg.gt_perf_status) ? 0444 : 0;
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_value = intel_uncore_read(ddat->uncore, hwmon->rg.gt_perf_status);
> +		/* In units of 2.5 millivolt */
> +		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	       u32 attr, int channel)
>   {
> +	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
> +
>   	switch (type) {
> +	case hwmon_in:
> +		return hwm_in_is_visible(ddat, attr);
>   	default:
>   		return 0;
>   	}
> @@ -45,7 +82,11 @@ static int
>   hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	 int channel, long *val)
>   {
> +	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
> +
>   	switch (type) {
> +	case hwmon_in:
> +		return hwm_in_read(ddat, attr, val);
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -75,6 +116,12 @@ static const struct hwmon_chip_info hwm_chip_info = {
>   static void
>   hwm_get_preregistration_info(struct drm_i915_private *i915)
>   {
> +	struct i915_hwmon *hwmon = i915->hwmon;
> +
> +	if (IS_DG1(i915) || IS_DG2(i915))
> +		hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
> +	else
> +		hwmon->rg.gt_perf_status = INVALID_MMIO_REG;
>   }
>   
>   void i915_hwmon_register(struct drm_i915_private *i915)

