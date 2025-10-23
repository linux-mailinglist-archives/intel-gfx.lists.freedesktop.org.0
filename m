Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A958FBFFF70
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:39:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92FD10E8D6;
	Thu, 23 Oct 2025 08:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="1aR981fw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61F510E8D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 08:39:07 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-4712c6d9495so2841605e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Oct 2025 01:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761208746; x=1761813546;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ROSiuQZrkv0XSv++wOeWUfLLMaA0jtPTxvPC8cbuK6Y=;
 b=1aR981fww6UMX0wOh1i/3x4igqzLCphpsVprThHl7y+UrUn7crmgLI0m0KT1rBTjSr
 Ic7S5Wu/9dyACdCg22NEISE5gIOT1EjMAib/ZbPGyJXn9i0FTQmKCAarwu2ppywpwLCD
 AKvSlJ0S0OYwbecfCnlwxDNMaZCS6ATIhd2IM2xvEq01eFPEMnqFrH5mOQu0eWVqlUSd
 gCDQrc4LddC2poMzHzSVfCMSbPW+VjmIafZnf9IutlS/9s1nhvmBIzd93YG4yvwxBGvT
 4FhIWl+V0oOw6J81EcOJ8K6aLHliVMD76GKBOcTed20QSqRhKX0jLUmaSgQMOGsZJBPk
 IDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761208746; x=1761813546;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ROSiuQZrkv0XSv++wOeWUfLLMaA0jtPTxvPC8cbuK6Y=;
 b=frEiOJimzUNi+RH7bEUHaCAu1y8agrD71LlGd4skQmk/kzXrwNaA3qHbdE/z2lBU1g
 dSsHKJgJyG0/BJxGazV4b0H2w3FVzIfmNmCKCPcSKQV1R/Yu30msZvB8Hlgh2sXAY6tH
 T7q7//umiS8Zp8JYxdUqb1LJjgBFQu4GVnrFWbjHyqJ/QBZz2Zfri4yonNMtUTi/CVWG
 AILWjgvLeidK6V981UceMDcbIW1tH7q5Opcu5JdF8wgBpcMKP+jz/GptIlkGkt5TUvMk
 joq6LkT6gssi9M17kp8iDsrMamG6qwqpLpksfS8P7F9X02i2hf70OPJhJTXzMKwlY4kv
 XmOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVURx0v94nO+vDIlMQHMC04sQKHZdoR/YjsnnH3s+sG4ju7dmzlRZIsjjAeSTR+Fb0RU9DvFpYMn5M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx7LEWc1p3S9b4FbC3DFniKlUoMo1Otipi/n6DpgYg2oLNVlONj
 N27CbPcT1dJUmigocksV3DY2sXpv7F57m5JK/GemyQKG20TRUeemgm3E5WCyF4XihRfCb2Uu27N
 UIokV
X-Gm-Gg: ASbGncuXeovqrg1CJ0iL5dM9lVgC1eOz3B0ZuxtEXUl3xcDtwyCdRqXuJOEu7Ye8oeG
 Cub4Qgq9Clc6JwJB/Fku9+zeDp1VUQTQLOhy9hgcatdOvf4H7dsXNLETV3OjP2YF0aV1x6K86Xf
 jrsSeq1ph9Sk7tOmjOp4SN42SAT+4pmF8Drm9W1Oi5AjLXPkGF5mCRQPwBh0stKunCSMjz7NpKl
 2cRZiF/WGjnxSEYx3kb8lpuuSQ1DKawQTc3wYr1nIQALu/Y1SqZCGAANDpL9wvqk7AVpM1kbWSo
 ST66Wly52QnaBeB40vaIv3iO/WjetaImXsY2dt0zfPqyJX12YnBFAL6t6vNUQD08m8/JGhJsUYZ
 ouRT9SG7PBvzxXTzBi1Nz6boNQgKrVPeGogE+URalxbshA0Il9jWqHpWDig+jWG3wiwfQrYf8IQ
 8zFPtmFACfkqXXzo0R+S4UmTO1ig==
X-Google-Smtp-Source: AGHT+IFa9gtnBi5Kap8saaNcWTFjtX626ZxqR3786Ld4ZI4k9UeF6rjGbBlO8Zl/riCCaCJluqQ2mQ==
X-Received: by 2002:a05:600c:3b03:b0:468:86e0:de40 with SMTP id
 5b1f17b1804b1-4711786c6b9mr182884835e9.4.1761208746046; 
 Thu, 23 Oct 2025 01:39:06 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475c4281314sm84417285e9.4.2025.10.23.01.39.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Oct 2025 01:39:05 -0700 (PDT)
Message-ID: <4b33f6ee-3e73-4b46-8638-811db6d8dfb8@ursulin.net>
Date: Thu, 23 Oct 2025 09:39:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rps: convert rps interface to struct drm_device
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20251023074536.850332-1-jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251023074536.850332-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 23/10/2025 08:45, Jani Nikula wrote:
> Reduce the display dependency on struct drm_i915_private and i915_drv.h
> by converting the rps interface to struct drm_device.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_display_rps.c   | 12 +++++-------
>   drivers/gpu/drm/i915/gt/intel_rps.c            | 18 ++++++++++++++++--
>   drivers/gpu/drm/i915/gt/intel_rps.h            |  7 ++++---
>   3 files changed, 25 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> index 82ea1ec482e4..8bf0f8cb6574 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> @@ -3,12 +3,14 @@
>    * Copyright © 2023 Intel Corporation
>    */
>   
> +#include <linux/dma-fence.h>
> +
>   #include <drm/drm_crtc.h>
>   #include <drm/drm_vblank.h>
>   
>   #include "gt/intel_rps.h"
> -#include "i915_drv.h"
>   #include "i915_reg.h"
> +#include "i915_request.h"
>   #include "intel_display_core.h"
>   #include "intel_display_irq.h"
>   #include "intel_display_rps.h"
> @@ -77,12 +79,10 @@ void intel_display_rps_mark_interactive(struct intel_display *display,
>   					struct intel_atomic_state *state,
>   					bool interactive)
>   {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>   	if (state->rps_interactive == interactive)
>   		return;
>   
> -	intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
> +	intel_rps_mark_interactive(display->drm, interactive);
>   	state->rps_interactive = interactive;
>   }
>   
> @@ -102,7 +102,5 @@ void ilk_display_rps_disable(struct intel_display *display)
>   
>   void ilk_display_rps_irq_handler(struct intel_display *display)
>   {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	gen5_rps_irq_handler(&to_gt(i915)->rps);
> +	gen5_rps_irq_handler(display->drm);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index b01c837ab646..a2c502609d96 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -782,7 +782,7 @@ static void gen6_rps_set_thresholds(struct intel_rps *rps, u8 val)
>   	mutex_unlock(&rps->power.mutex);
>   }
>   
> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
> +static void _intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
>   {
>   	GT_TRACE(rps_to_gt(rps), "mark interactive: %s\n",
>   		 str_yes_no(interactive));
> @@ -798,6 +798,13 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive)
>   	mutex_unlock(&rps->power.mutex);
>   }
>   
> +void intel_rps_mark_interactive(struct drm_device *drm, bool interactive)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	_intel_rps_mark_interactive(&to_gt(i915)->rps, interactive);
> +}
> +
>   static int gen6_rps_set(struct intel_rps *rps, u8 val)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
> @@ -1953,7 +1960,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
>   			"Command parser error, pm_iir 0x%08x\n", pm_iir);
>   }
>   
> -void gen5_rps_irq_handler(struct intel_rps *rps)
> +static void _gen5_rps_irq_handler(struct intel_rps *rps)
>   {
>   	struct intel_uncore *uncore = rps_to_uncore(rps);
>   	u32 busy_up, busy_down, max_avg, min_avg;
> @@ -1987,6 +1994,13 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
>   	spin_unlock(&mchdev_lock);
>   }
>   
> +void gen5_rps_irq_handler(struct drm_device *drm)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	_gen5_rps_irq_handler(&to_gt(i915)->rps);
> +}
> +
>   void intel_rps_init_early(struct intel_rps *rps)
>   {
>   	mutex_init(&rps->lock);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index 92fb01f5a452..c817a70fb3aa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -9,8 +9,9 @@
>   #include "intel_rps_types.h"
>   #include "i915_reg_defs.h"
>   
> -struct i915_request;
> +struct drm_device;
>   struct drm_printer;
> +struct i915_request;
>   
>   #define GT_FREQUENCY_MULTIPLIER 50
>   #define GEN9_FREQ_SCALER 3
> @@ -33,7 +34,7 @@ u32 intel_rps_get_boost_frequency(struct intel_rps *rps);
>   int intel_rps_set_boost_frequency(struct intel_rps *rps, u32 freq);
>   
>   int intel_rps_set(struct intel_rps *rps, u8 val);
> -void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
> +void intel_rps_mark_interactive(struct drm_device *drm, bool interactive);

This one breaks the design a bit since RPS is supposed to be per GT. On 
the other hand intel_display_rps_mark_interactive is the only caller so 
if it only wants to care about the primary GT thats probably okay.

Presumably you don't want a for_each_gt in the display code either.

Would it work to put a helper which did it for you somewhere one level 
up from per gt (gt/) components? Sounds like for the end goal of proper 
abstraction that would be the way. Getting rid of the #ifdef from 
intel_display_rps.h and each driver would then implement the required 
hooks to do what they want.

Regards,

Tvrtko
>   int intel_gpu_freq(struct intel_rps *rps, int val);
>   int intel_freq_opcode(struct intel_rps *rps, int val);
> @@ -64,7 +65,7 @@ bool rps_read_mask_mmio(struct intel_rps *rps, i915_reg_t reg32, u32 mask);
>   
>   void gen6_rps_frequency_dump(struct intel_rps *rps, struct drm_printer *p);
>   
> -void gen5_rps_irq_handler(struct intel_rps *rps);
> +void gen5_rps_irq_handler(struct drm_device *drm);
>   void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>   void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
>   

