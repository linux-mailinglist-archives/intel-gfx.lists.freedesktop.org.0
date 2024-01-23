Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6728396E5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 18:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F74210E826;
	Tue, 23 Jan 2024 17:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0EB10E826
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 17:50:36 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-a26f73732c5so508680866b.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 09:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706032175; x=1706636975; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=iOG5wnY5A5SzZOuiC3IKmAgEWtLVYJlltC5RtqCo7XE=;
 b=e3A807bOE7saEDo+3AvQuAKgOi7J4xYufalI4hTDzXqsyg+q2UtF3ie2DiQxHB3cBt
 zF71ROibGVYqhDdv5z2rSB3ZpQG4ouV4cbQ9xCK53VyjIFEJncPK+v2La6zy2DIu3Scw
 RgoAD53OKPnYG05D4Vf7f+4lhorTL0262pMKVC3IK42uZ1yrq/YQ+wI43sevfrPL4Vry
 mV1BSq87v3h1bkq5ITI3D5VHAlIlWIQW5C86v3T1q9bHr9F3kJRyL22Mbx2mqkJCJGak
 x9LYpDsI+/NZFHI0tkqA0Eod78GSfduhcgkSSToTt75WygeSECn4zGfDE8s06Xb71rFA
 w6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706032175; x=1706636975;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iOG5wnY5A5SzZOuiC3IKmAgEWtLVYJlltC5RtqCo7XE=;
 b=cT9t2nW8e6ti5kmpZyEyfYyQx5fog63edQr4ug4pIjFIeKBmGe+TUe7MBCOvSm507g
 I6IcWzVQz0z7ExbwIhBhdIC8YU/kpIvtrv6/tCqii6ln2Ac2Ix6X1IswVEKZmKIFtHSB
 858ZD3UHhMVgqH4QsBMk9RapvDkx9glCZ23zpvSRXW4xEV3QyFD772chBPH7Tq2Pw7RK
 AckGYN3J/7kQt0Mzaq8kLg1XcGma2REEdeeE9YyrPbs2UbbpxhZYjENX+sD6+bln/sx+
 Ei4ca4Wzowcuum/mUn94ItCuaeHWOJbfErQUJ0C07tpitzt4Lp4qM/ni9VRiMjwUP2vp
 rtNw==
X-Gm-Message-State: AOJu0YyCEaIcQANuQBK+OyYfbjwwGzmnRqNMVJS2CYi9eWGeBeL6jbvQ
 BiZvtoVEV+k2dHsQDVK9rHH0OYl3HODXzizRFmTDGNNED2g1JSvA
X-Google-Smtp-Source: AGHT+IF1o1YsQCG+qWhD9dgS0b8qVfIDt769HJZa2tlOoQVJW0/YeWLF6GtvYe/kHNS+6meNX9MW2Q==
X-Received: by 2002:a17:906:474c:b0:a23:57a1:d85b with SMTP id
 j12-20020a170906474c00b00a2357a1d85bmr118007ejs.74.1706032174322; 
 Tue, 23 Jan 2024 09:49:34 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.82])
 by smtp.googlemail.com with ESMTPSA id
 w14-20020a17090652ce00b00a19afc16d23sm14574393ejn.104.2024.01.23.09.49.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jan 2024 09:49:33 -0800 (PST)
Message-ID: <f5a2e86d-9ba8-46bd-b531-2fadedad51f9@gmail.com>
Date: Tue, 23 Jan 2024 19:49:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <Za-2EFbpUcaLZkbb@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <Za-2EFbpUcaLZkbb@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.1.2024 14.50, Ville Syrjälä wrote:
> On Tue, Jan 02, 2024 at 08:24:22PM +0200, Juha-Pekka Heikkila wrote:
>> Aux ccs framebuffers don't work on Xe driver hence disable them
>> from plane capabilities until they are fixed. Flat ccs framebuffers
>> work and they are left enabled. Here is separated plane capabilities
>> check on i915 so it can behave differencly depending on the driver.
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
> 
> These are about the *hardware* capabilities of the skl+
> univeral planes. Thus IMO they belong in
> skl_universal_plane.c and nowhere else.

Problem with this is we'd need with same display code allow and deny 
usage of ccs framebuffers. Since doing it via ifdefs was not allowed 
there was left limited options. All those other functionality separation 
is done in similar way, say for example dpt code.

> 
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
>> -- 
>> 2.25.1
> 

