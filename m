Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748DB646D41
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B2BF10E1BE;
	Thu,  8 Dec 2022 10:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0399110E1BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670496117; x=1702032117;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=nReHFdSCPtP3g6u6rfD0UUlwtbcMyRGPxqEImUhVmXk=;
 b=Mq5U4gQ9TbRehrxOd/JdHambBaRjZDBJXl0a3mQe4y12fhfESma7nSGW
 nzWGN5p6oB4OXsF5eV8UF8ciC8NKUNEHdVwrhlLDMaVZyV9NoMKwMY8Yu
 CiM8+PEuOCMkXdocgUaSyQ/4Tg5GgGTxUsnra23sBYeteK8KqYLgP3rGq
 TnMJMOniitIiGOLmk5yZRT7dtSLUaX3kwm87j0SsNaDJD7xZbVapjL3p0
 mO3X6zdsyN0ouQl1LF16gfZGD2wGTzURtGbQb17cg8jE2CYjl8yRht3+H
 K1hKsSNkg1BACpsd/LNtqs7UXNushZNZEEsJyJ/S3unE5vqIVWZC4QYO1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318990132"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318990132"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:41:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="679484131"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="679484131"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:41:55 -0800
Message-ID: <e370208a-cdd8-f391-ee92-302c32f308eb@intel.com>
Date: Thu, 8 Dec 2022 11:41:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <05690286d1521ec9c82d680122cca9a90a75b8dd.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <05690286d1521ec9c82d680122cca9a90a75b8dd.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 08/11] drm/i915/gmbus: switch to
 intel_de_* register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_gmbus.c | 46 ++++++++--------------
>   1 file changed, 17 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index a5840a28a69d..0bc4f6b48e80 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -255,14 +255,12 @@ static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
>   static u32 get_reserved(struct intel_gmbus *bus)
>   {
>   	struct drm_i915_private *i915 = bus->i915;
> -	struct intel_uncore *uncore = &i915->uncore;
>   	u32 reserved = 0;
>   
>   	/* On most chips, these bits must be preserved in software. */
>   	if (!IS_I830(i915) && !IS_I845G(i915))
> -		reserved = intel_uncore_read_notrace(uncore, bus->gpio_reg) &
> -			   (GPIO_DATA_PULLUP_DISABLE |
> -			    GPIO_CLOCK_PULLUP_DISABLE);
> +		reserved = intel_de_read_notrace(i915, bus->gpio_reg) &
> +			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
>   
>   	return reserved;
>   }
> @@ -270,37 +268,31 @@ static u32 get_reserved(struct intel_gmbus *bus)
>   static int get_clock(void *data)
>   {
>   	struct intel_gmbus *bus = data;
> -	struct intel_uncore *uncore = &bus->i915->uncore;
> +	struct drm_i915_private *i915 = bus->i915;
>   	u32 reserved = get_reserved(bus);
>   
> -	intel_uncore_write_notrace(uncore,
> -				   bus->gpio_reg,
> -				   reserved | GPIO_CLOCK_DIR_MASK);
> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_CLOCK_DIR_MASK);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
>   
> -	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
> -		GPIO_CLOCK_VAL_IN) != 0;
> +	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_CLOCK_VAL_IN) != 0;
>   }
>   
>   static int get_data(void *data)
>   {
>   	struct intel_gmbus *bus = data;
> -	struct intel_uncore *uncore = &bus->i915->uncore;
> +	struct drm_i915_private *i915 = bus->i915;
>   	u32 reserved = get_reserved(bus);
>   
> -	intel_uncore_write_notrace(uncore,
> -				   bus->gpio_reg,
> -				   reserved | GPIO_DATA_DIR_MASK);
> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_DATA_DIR_MASK);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
>   
> -	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
> -		GPIO_DATA_VAL_IN) != 0;
> +	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_DATA_VAL_IN) != 0;
>   }
>   
>   static void set_clock(void *data, int state_high)
>   {
>   	struct intel_gmbus *bus = data;
> -	struct intel_uncore *uncore = &bus->i915->uncore;
> +	struct drm_i915_private *i915 = bus->i915;
>   	u32 reserved = get_reserved(bus);
>   	u32 clock_bits;
>   
> @@ -310,16 +302,14 @@ static void set_clock(void *data, int state_high)
>   		clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
>   			     GPIO_CLOCK_VAL_MASK;
>   
> -	intel_uncore_write_notrace(uncore,
> -				   bus->gpio_reg,
> -				   reserved | clock_bits);
> -	intel_uncore_posting_read(uncore, bus->gpio_reg);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved | clock_bits);
> +	intel_de_posting_read(i915, bus->gpio_reg);
>   }
>   
>   static void set_data(void *data, int state_high)
>   {
>   	struct intel_gmbus *bus = data;
> -	struct intel_uncore *uncore = &bus->i915->uncore;
> +	struct drm_i915_private *i915 = bus->i915;
>   	u32 reserved = get_reserved(bus);
>   	u32 data_bits;
>   
> @@ -329,8 +319,8 @@ static void set_data(void *data, int state_high)
>   		data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
>   			GPIO_DATA_VAL_MASK;
>   
> -	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved | data_bits);
> -	intel_uncore_posting_read(uncore, bus->gpio_reg);
> +	intel_de_write_notrace(i915, bus->gpio_reg, reserved | data_bits);
> +	intel_de_posting_read(i915, bus->gpio_reg);
>   }
>   
>   static int
> @@ -439,9 +429,7 @@ gmbus_wait_idle(struct drm_i915_private *i915)
>   	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
>   	intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
>   
> -	ret = intel_wait_for_register_fw(&i915->uncore,
> -					 GMBUS2(i915), GMBUS_ACTIVE, 0,
> -					 10);
> +	ret = intel_de_wait_for_register_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10);
>   
>   	intel_de_write_fw(i915, GMBUS4(i915), 0);
>   	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);

