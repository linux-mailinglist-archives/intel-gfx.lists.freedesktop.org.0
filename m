Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8802F839708
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 18:55:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5CB10E40C;
	Tue, 23 Jan 2024 17:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AA810E829
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 17:54:30 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-5100893015fso1068942e87.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706032408; x=1706637208; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=7j7h12BBteXI/95CzLPWGuRrKxu8vqeXRHJw0onO5Wk=;
 b=jVIg9aUa8HWQtzPzDkRx5fxxUWjKV+Lscp0uWRPjrbefifqze2zS3VlyIXxwXrNZ/7
 zW2fwzoYjJW6jILb0xSM8iHJRoa6bta11t8Qx7q5VQ50Lga1INe18QswOJSKD/SIVwLp
 o3xF+eroKREF5lmBi+F/T8fsuX3Rms6ihJwWUW2KpBrupF7p2+hsfSR/UNUTGb2HZ/WK
 LmDquz+w+0/uk4YmEiR0pfGWv+jO24ir90DtyySAeWAzTQjGbEtMrvf5mcgaNiysu38B
 EN3IWAMP/VDu+duiQZg15Qu2YCEivUSGLygQgLjvaRu9xl1E9RjQy1AmFNoKSXTkyX4T
 akYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706032408; x=1706637208;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7j7h12BBteXI/95CzLPWGuRrKxu8vqeXRHJw0onO5Wk=;
 b=PIGXM9VrMoVlpr5gw7EZIO8jlSHjO7RCaaXuLugt0wcfLnAQOjIU2WXRwqKa92T/DN
 LoFV2PE/my8eN24ViF9I8pqB76f0pYZGqYryTKswd8Yg1/wv8T027sWcOrVJEoB53h9E
 nRDQ3S9FfO8yNyyHadl4trKkbHd7AW4AfxbtXH+A2qJMoXtWZ8aLyPU3MM5BVa02Ac36
 TeFSgzp0jQvephq8p0Rxvp0tw8z5Fa6Nwzqd1FuX7RrcJjiKpMhdcfA3z9RdFLgEeDhV
 2Jqe1/+ds1cifcNNn73wkSAXa5uEHiuI2inQbDrtCqcNDMUeGXeg4cL7WrnBLpzSdiPK
 stAA==
X-Gm-Message-State: AOJu0Ywu/LSuYykkBx6v3UDT+6I/VZS5klSIkSxv/BBwPbib2G30qPpo
 wFLSxf+VB+3Fm7Hbor+9oinylA/1ivVKbxwBlzhCGpP0amGDt2e5TLFnE5qE4AzqbA==
X-Google-Smtp-Source: AGHT+IGwgrckF3HMj/fsh410lgw4pUXRAZzBbttinkAmjOgZTOEWBsCCSajqYD+QBEzxcUHOJZ4qwQ==
X-Received: by 2002:ac2:465d:0:b0:50e:b945:fc98 with SMTP id
 s29-20020ac2465d000000b0050eb945fc98mr1881443lfo.170.1706032408230; 
 Tue, 23 Jan 2024 09:53:28 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.82])
 by smtp.googlemail.com with ESMTPSA id
 q21-20020a1709066b1500b00a2990007447sm14498647ejr.122.2024.01.23.09.53.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jan 2024 09:53:27 -0800 (PST)
Message-ID: <dff353f8-90c8-449c-80e6-edb272176035@gmail.com>
Date: Tue, 23 Jan 2024 19:53:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87bk9cnx3r.fsf@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <87bk9cnx3r.fsf@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.1.2024 12.49, Jani Nikula wrote:
> On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>> Aux ccs framebuffers don't work on Xe driver hence disable them
>> from plane capabilities until they are fixed. Flat ccs framebuffers
>> work and they are left enabled. Here is separated plane capabilities
>> check on i915 so it can behave differencly depending on the driver.
> 
> I still think there's too much going on in this one patch. It refactors
> i915 and modifies xe behaviour in one go.
> 
> It adds intel_plane_caps.[ch] in i915, but extracts them from skl+
> specific functions and files. xe uses the .h but adds the code in
> existing xe_plane_initial.c. There's also intel_plane_initial.c i915
> side, but that's not where the functions get moved in i915 side.

I was never against splitting it, I can do that.

> 
> I'm trying to look at the actual functional change, and I'm wondering if
> it isn't just this:
> 
> index 511dc1544854..8bba6c2e5098 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2290,6 +2290,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>   	if (HAS_4TILE(i915))
>   		caps |= INTEL_PLANE_CAP_TILING_4;
>   
> +	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
> +		return caps;
> +
>   	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>   		caps |= INTEL_PLANE_CAP_CCS_RC;
>   		if (DISPLAY_VER(i915) >= 12)
> 
> I'm not saying that's exactly pretty, either, but IIUC this is supposed
> to be a temporary measure ("until they are fixed"), I'd rather take this
> small thing instead.
> 

Would that work when both i915 and Xe are being built?

> 
> 
> 
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile                 |  1 +
>>   .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
>>   .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
>>   .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
>>   drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
>>   5 files changed, 107 insertions(+), 60 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index e777686190ca..c5e3c2dd0a01 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -302,6 +302,7 @@ i915-y += \
>>   	display/intel_overlay.o \
>>   	display/intel_pch_display.o \
>>   	display/intel_pch_refclk.o \
>> +	display/intel_plane_caps.o \
>>   	display/intel_plane_initial.o \
>>   	display/intel_pmdemand.o \
>>   	display/intel_psr.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gpu/drm/i915/display/intel_plane_caps.c
>> new file mode 100644
>> index 000000000000..6206ae11f296
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
>> @@ -0,0 +1,68 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2024 Intel Corporation
>> + */
>> +
>> +#include "i915_drv.h"
>> +#include "intel_fb.h"
>> +#include "intel_plane_caps.h"
>> +
>> +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>> +				 enum pipe pipe, enum plane_id plane_id)
>> +{
>> +	/* Wa_22011186057 */
>> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> +		return false;
>> +
>> +	if (DISPLAY_VER(i915) >= 11)
>> +		return true;
>> +
>> +	if (IS_GEMINILAKE(i915))
>> +		return pipe != PIPE_C;
>> +
>> +	return pipe != PIPE_C &&
>> +		(plane_id == PLANE_PRIMARY ||
>> +		 plane_id == PLANE_SPRITE0);
>> +}
>> +
>> +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>> +				   enum plane_id plane_id)
>> +{
>> +	if (DISPLAY_VER(i915) < 12)
>> +		return false;
>> +
>> +	/* Wa_14010477008 */
>> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
>> +	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
>> +		return false;
>> +
>> +	/* Wa_22011186057 */
>> +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> +		return false;
>> +
>> +	return plane_id < PLANE_SPRITE4;
>> +}
>> +
>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> +		      enum pipe pipe, enum plane_id plane_id)
>> +{
>> +	u8 caps = INTEL_PLANE_CAP_TILING_X;
>> +
>> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>> +		caps |= INTEL_PLANE_CAP_TILING_Y;
>> +	if (DISPLAY_VER(i915) < 12)
>> +		caps |= INTEL_PLANE_CAP_TILING_Yf;
>> +	if (HAS_4TILE(i915))
>> +		caps |= INTEL_PLANE_CAP_TILING_4;
>> +
>> +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>> +		caps |= INTEL_PLANE_CAP_CCS_RC;
>> +		if (DISPLAY_VER(i915) >= 12)
>> +			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
>> +	}
>> +
>> +	if (gen12_plane_has_mc_ccs(i915, plane_id))
>> +		caps |= INTEL_PLANE_CAP_CCS_MC;
>> +
>> +	return caps;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gpu/drm/i915/display/intel_plane_caps.h
>> new file mode 100644
>> index 000000000000..60a941c76f23
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
>> @@ -0,0 +1,14 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_PLANE_CAPS_H__
>> +#define __INTEL_PLANE_CAPS_H__
>> +
>> +#include "intel_display_types.h"
>> +
>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> +		      enum pipe pipe, enum plane_id plane_id);
>> +
>> +#endif /* __INTEL_PLANE_CAPS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 511dc1544854..f2fd3833c61d 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -17,6 +17,7 @@
>>   #include "intel_fb.h"
>>   #include "intel_fbc.h"
>>   #include "intel_frontbuffer.h"
>> +#include "intel_plane_caps.h"
>>   #include "intel_psr.h"
>>   #include "intel_psr_regs.h"
>>   #include "skl_scaler.h"
>> @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
>>   	spin_unlock_irq(&i915->irq_lock);
>>   }
>>   
>> -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>> -				 enum pipe pipe, enum plane_id plane_id)
>> -{
>> -	/* Wa_22011186057 */
>> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> -		return false;
>> -
>> -	if (DISPLAY_VER(i915) >= 11)
>> -		return true;
>> -
>> -	if (IS_GEMINILAKE(i915))
>> -		return pipe != PIPE_C;
>> -
>> -	return pipe != PIPE_C &&
>> -		(plane_id == PLANE_PRIMARY ||
>> -		 plane_id == PLANE_SPRITE0);
>> -}
>> -
>> -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>> -				   enum plane_id plane_id)
>> -{
>> -	if (DISPLAY_VER(i915) < 12)
>> -		return false;
>> -
>> -	/* Wa_14010477008 */
>> -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
>> -		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
>> -		return false;
>> -
>> -	/* Wa_22011186057 */
>> -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>> -		return false;
>> -
>> -	return plane_id < PLANE_SPRITE4;
>> -}
>> -
>> -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> -			     enum pipe pipe, enum plane_id plane_id)
>> -{
>> -	u8 caps = INTEL_PLANE_CAP_TILING_X;
>> -
>> -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>> -		caps |= INTEL_PLANE_CAP_TILING_Y;
>> -	if (DISPLAY_VER(i915) < 12)
>> -		caps |= INTEL_PLANE_CAP_TILING_Yf;
>> -	if (HAS_4TILE(i915))
>> -		caps |= INTEL_PLANE_CAP_TILING_4;
>> -
>> -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>> -		caps |= INTEL_PLANE_CAP_CCS_RC;
>> -		if (DISPLAY_VER(i915) >= 12)
>> -			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
>> -	}
>> -
>> -	if (gen12_plane_has_mc_ccs(i915, plane_id))
>> -		caps |= INTEL_PLANE_CAP_CCS_MC;
>> -
>> -	return caps;
>> -}
>> -
>>   struct intel_plane *
>>   skl_universal_plane_create(struct drm_i915_private *dev_priv,
>>   			   enum pipe pipe, enum plane_id plane_id)
>> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> index ccf83c12b545..425c6e6744a6 100644
>> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> @@ -15,6 +15,7 @@
>>   #include "intel_fb.h"
>>   #include "intel_fb_pin.h"
>>   #include "intel_frontbuffer.h"
>> +#include "intel_plane_caps.h"
>>   #include "intel_plane_initial.h"
>>   
>>   static bool
>> @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
>>   
>>   	plane_config_fini(&plane_config);
>>   }
>> +
>> +u8 skl_get_plane_caps(struct drm_i915_private *i915,
>> +		      enum pipe pipe, enum plane_id plane_id)
>> +{
>> +	u8 caps = INTEL_PLANE_CAP_TILING_X;
>> +
>> +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
>> +		caps |= INTEL_PLANE_CAP_TILING_Y;
>> +	if (DISPLAY_VER(i915) < 12)
>> +		caps |= INTEL_PLANE_CAP_TILING_Yf;
>> +	if (HAS_4TILE(i915))
>> +		caps |= INTEL_PLANE_CAP_TILING_4;
>> +
>> +	if (HAS_FLAT_CCS(i915)) {
>> +		caps |= INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
>> +
>> +		if (plane_id < PLANE_SPRITE4)
>> +			caps |= INTEL_PLANE_CAP_CCS_MC;
>> +	}
>> +
>> +	return caps;
>> +}
> 

