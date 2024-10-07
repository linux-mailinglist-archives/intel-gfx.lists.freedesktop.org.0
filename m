Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69979933C3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 18:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A0B10E3E5;
	Mon,  7 Oct 2024 16:47:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bPo9x9SO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C190B10E3DD;
 Mon,  7 Oct 2024 16:47:20 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-37ccd81de57so3110518f8f.0; 
 Mon, 07 Oct 2024 09:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728319639; x=1728924439; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=r8VC9UFJgkh7VL5vvh/xLLcTWy7jXGqtTJyrbpGDpXg=;
 b=bPo9x9SO3khwjtuQ8C7JZzHWealGWPexMX0tXjUq7Bl3YAFHZEbGpqRcfIGmqpSBjc
 SioWqypLjLY59dnxA2No3Jm2dcUwSTh+tf/I8kFlHCKcTaC8EgMGPtG3e/rCQTwUIYI7
 /POLegLLO3htPOgfM2v2JNjsKfPcvNFn35pG4c6UHiI78Ck9ovBShB9mxocGp2jJPyGk
 YEg5Br8fiyOLFS7Se5AgvWB41uAbu9W+Lw1DTRHhRMhnq42/yYTEDC2oYPfjpcBj/FNd
 aVDrrZN6dPYNH4SxqbP4eax/cwIxxFrbeLktGTLF7jllClKaeiQITF11elSmPAEajyPX
 CosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728319639; x=1728924439;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r8VC9UFJgkh7VL5vvh/xLLcTWy7jXGqtTJyrbpGDpXg=;
 b=ZePoYSC9CvcP6Oolc469wFCPYSOBUaToUYpP6ppFYCkVQKDYx89YIzklyfoV8OFH/+
 OiI180JtuhrwXCxiEZroJOP2STEWNdKDWfcFO0dimsRuUS7ePX3c4QzAIykevdF02nJd
 lTn29Ghew776/RL3p6T5YdaCqmQMtY45sPDwhYi6rPHsmNnUVeCxiLBkiyKwZbG9dDCm
 zv6r/YKpqtkJynoJSnEreNaIuxkCEX8pk7cAyMrIMAFwtM4ZEwaPNL6e2oDXzYNIOoHX
 4FSmUpso2tGVmb+QitNnKMMG2Lm0IlVrN86Ov3KBUiH2raf9sOPsMqwTgQypEKST9dEv
 Mf5w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjLZ/MvbTMNsdS+qKRubVU+7CYmEvbxp0ZJLOygoX4K1Vw7+GPayovXKAyjj0JzxjVqpVUZcTqh7g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyN+rKzZGvekVVFdmnZoeWN30lwgiM743nCXn4uKjJERGN1asaN
 /ZHdpP8N0dBwnzXU0GlpOwF4HrpXaE3db7PkC1u3REalFBIU6LxGeB4wfqTnp+o=
X-Google-Smtp-Source: AGHT+IH160lKesHyo5YMIJTMrwz5txF3odoh7WJLb2/QaEC3tSdeJiteFW9cmRJ1ClETwqZnGXQzKQ==
X-Received: by 2002:adf:9c0a:0:b0:374:cee6:c298 with SMTP id
 ffacd0b85a97d-37d293405c3mr150011f8f.21.1728319638801; 
 Mon, 07 Oct 2024 09:47:18 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.78])
 by smtp.googlemail.com with ESMTPSA id
 ffacd0b85a97d-37d1695e3e7sm6095211f8f.72.2024.10.07.09.47.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2024 09:47:18 -0700 (PDT)
Message-ID: <9fc9f3cf-0d79-40a0-9148-b05c251d8004@gmail.com>
Date: Mon, 7 Oct 2024 19:47:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on Xe2
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
 <wo5js5qkjy35yx6smin5yel3cute2tox65y7dxtdvnmo3bdkgy@sdv7uq5nfjdr>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <wo5js5qkjy35yx6smin5yel3cute2tox65y7dxtdvnmo3bdkgy@sdv7uq5nfjdr>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12.9.2024 20.14, Lucas De Marchi wrote:
> On Thu, Sep 12, 2024 at 05:46:06PM GMT, Juha-Pekka Heikkila wrote:
>> On Intel Xe2 hw tile4 is not supported with horizontal flip
>>
>> bspec 69853
> 
> Usual spelling is: "Bspec: 69853" and as part of the trailers below.
> 
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
>> drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
>> drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
>> 3 files changed, 26 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/ 
>> drm/i915/display/intel_fb.c
>> index d2ff21e98545..c9038d239eb2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>>                       INTEL_PLANE_CAP_NEED64K_PHYS);
>> }
>>
>> +/**
>> + * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 
>> modifier type
>> + * @modifier: Modifier to check
>> + *
>> + * Returns:
>> + * Returns %true if @modifier is a tile4 modifier.
> 
> double Returns

This same form is on all those helpers in same file

> 
>> + */
>> +bool intel_fb_is_tile4_modifier(u64 modifier)
>> +{
>> +    return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
>> +                      INTEL_PLANE_CAP_TILING_4);
>> +}
>> +
>> static bool check_modifier_display_ver_range(const struct 
>> intel_modifier_desc *md,
>>                          u8 display_ver_from, u8 display_ver_until)
>> {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/ 
>> drm/i915/display/intel_fb.h
>> index 068f3aee99aa..bff87994cf2c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
>> @@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>> bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>> bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>> bool intel_fb_needs_64k_phys(u64 modifier);
>> +bool intel_fb_is_tile4_modifier(u64 modifier);
>>
>> bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int 
>> color_plane);
>> int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/ 
>> drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 17d4c880ecc4..4de41ab5060a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct 
>> intel_crtc_state *crtc_state,
>>         return -EINVAL;
>>     }
>>
>> +    /*
>> +     * Starting with LNL and BMG tile4 hflip is not supported
>> +     */
>> +    if (rotation & DRM_MODE_REFLECT_X &&
>> +        intel_fb_is_tile4_modifier(fb->modifier) &&
>> +        ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
>> +         (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {
> 
> the correct bspec for BMG is 50387 where the only documented restriction is
> on linear surface formats. This can rather be simplified with:
> 
>      if (rotation & DRM_MODE_REFLECT_X &&
>          intel_fb_is_tile4_modifier(fb->modifier) &&
>          DISPLAY_VER(dev_priv) >= 20)
> 

Yea, you're right. Seems I can drop bmg from here. What did look like 
similar bug was not really so.

/Juha-Pekka

>> +        drm_dbg_kms(&dev_priv->drm,
>> +                "horizontal flip is not supported with tile4 surface 
>> formats\n");
>> +        return -EINVAL;
>> +    }
>> +
>>     if (drm_rotation_90_or_270(rotation)) {
>>         if (! 
>> intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
>>             drm_dbg_kms(&dev_priv->drm,
>> -- 
>> 2.45.2
>>

