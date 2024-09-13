Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667CD977EA2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 13:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D7B10E237;
	Fri, 13 Sep 2024 11:40:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PS2kigIZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E7610E14A;
 Fri, 13 Sep 2024 11:40:47 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-a86e9db75b9so290356766b.1; 
 Fri, 13 Sep 2024 04:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726227646; x=1726832446; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=PsmzJiZpgu/V4zwLxzLuozkXG0kgNcMeiAbXKqeCLwM=;
 b=PS2kigIZw3YJa5E5iD4fkCQLPBEHnbnN7d7D3xB71143IzcboGlKysiFyF05zFZcrN
 kMf21zDrG4BDiuKxLIhXmv4sOTTDdqvjtfGHwH+H2+Hiu3t2BzXlL6hyW+01KoPTeYwQ
 M8PNNRHQKULDXB8UDWO8mdxuF2JGMxnLHYIWmIENeh0IpzyzDDny85GC+RgKkiUXPxxr
 em5VL0CydF3dEi3Fgt2cDRRvtG51jLGC6hWux4YPertmQxiyDgdk90YlK34ynh/oIvE5
 4ZZlO2bvZx1s1k93aEkYJx1/EWxwI30ztHsVQxKIgUhp228oeU7NfDRsDSG+AHgiTBMc
 gaAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726227646; x=1726832446;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PsmzJiZpgu/V4zwLxzLuozkXG0kgNcMeiAbXKqeCLwM=;
 b=U7w+eC9A6J9v4rx+Ft9IIKT+Fyr2WDqbZR6cw/+vrr7jFDnccQDUj3FHSsf058Z9Ew
 eC+YvuTj/jJsX89+AWY2qHMojs46gOu1UuG9fkD6HLE9TQoU222bjEOPDtTYZveZD/60
 /tLVR4QyfzNACkmStfBddrsVU7d5DqFFoqtz3yu3FJZ4cCyYDMrdlae/YX1OUBWzIcfE
 6A00j8OI/KjLQVYsD2GWzcAJOoubw1MX3u9klfENu1olBxDAKW+i/QbgrnsfiuQff72L
 JKp5RpBzO5HaXSkY+dBCXe3mN9BAY2D80MkSG67FSpoLk2+T7pJOfoVkFNYaWQqvqvu5
 GMRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqxW+kOuyyiBNDsAQV+d9jkPzp4qnzvo6LINs86P0gyy6zPjdKmlJjuakZasKRSG7EjrRO8LLGj/s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyX7r+d0ewj6Kr7F9AK/dQ0QLSXMy4djJIL8NS3FwGEiH+oxT9J
 sBR5ROqvs6OE2SQJ7MryquQcMWq1mQMvJB9SQShcPzSXX+mFJqc2
X-Google-Smtp-Source: AGHT+IFKp1Bb2EQHR+KGOXE9B/ZyvauB6ECboSoX2Mpq3jFFIIB9V3WH/JGQJxLIgw+3kfrp+0ujJg==
X-Received: by 2002:a17:907:e64e:b0:a86:7d62:4c28 with SMTP id
 a640c23a62f3a-a90295a6016mr591075066b.30.1726227645468; 
 Fri, 13 Sep 2024 04:40:45 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.77])
 by smtp.googlemail.com with ESMTPSA id
 a640c23a62f3a-a8d259528ecsm862175966b.67.2024.09.13.04.40.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2024 04:40:45 -0700 (PDT)
Message-ID: <8fb2f095-2a05-4f2a-ac15-f366829aa665@gmail.com>
Date: Fri, 13 Sep 2024 14:40:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on Xe2
To: Matt Roper <matthew.d.roper@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
 <20240912195022.GJ5774@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240912195022.GJ5774@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 12.9.2024 22.50, Matt Roper wrote:
> On Thu, Sep 12, 2024 at 05:46:06PM +0300, Juha-Pekka Heikkila wrote:
>> On Intel Xe2 hw tile4 is not supported with horizontal flip
>>
>> bspec 69853
> 
> The notes on this page seem to say that, but there's also bspec 68904
> which seems to have two two conflicting statements that apply to Xe2:
> 
>          "Horizontal flip (mirror the image from right to left) supported
>          with tile modes other than linear."
> 
> implies this _is_ supported for Tile4 (and TileX), but immediately below
> that,
> 
>          "Horizontal flip (mirror the image from right to left) is not
>          supported with tile mode of Tile4.  Horizontal flip (mirror the
>          image from right to left) is supported with tile mode of
>          linear."
> 
> says pretty much the opposite for Tile4 and linear.
> 
> It might be worth explicitly confirming this with the hardware guys and
> getting them to re-visit the tagging of these bspec pages to avoid the
> conflicting information.
> 

Thanks Matt, I think I'll need to start to bother hw guys with this 
issue to get clarity. Lucas also pointed this is not a limitation on BMG 
but I see LNL and BMG failing same way even if one is display 20 and 
other is display 14 .. and MTL display 14 does work with hflip + tile4.

/Juha-Pekka

> 
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
>>   drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
>>   3 files changed, 26 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>> index d2ff21e98545..c9038d239eb2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>>   				      INTEL_PLANE_CAP_NEED64K_PHYS);
>>   }
>>   
>> +/**
>> + * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
>> + * @modifier: Modifier to check
>> + *
>> + * Returns:
>> + * Returns %true if @modifier is a tile4 modifier.
>> + */
>> +bool intel_fb_is_tile4_modifier(u64 modifier)
>> +{
>> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
>> +				      INTEL_PLANE_CAP_TILING_4);
>> +}
>> +
>>   static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>>   					     u8 display_ver_from, u8 display_ver_until)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
>> index 068f3aee99aa..bff87994cf2c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
>> @@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>>   bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>>   bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>>   bool intel_fb_needs_64k_phys(u64 modifier);
>> +bool intel_fb_is_tile4_modifier(u64 modifier);
>>   
>>   bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>>   int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 17d4c880ecc4..4de41ab5060a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>>   		return -EINVAL;
>>   	}
>>   
>> +	/*
>> +	 * Starting with LNL and BMG tile4 hflip is not supported
>> +	 */
>> +	if (rotation & DRM_MODE_REFLECT_X &&
>> +	    intel_fb_is_tile4_modifier(fb->modifier) &&
>> +	    ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
>> +	     (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {
>> +		drm_dbg_kms(&dev_priv->drm,
>> +			    "horizontal flip is not supported with tile4 surface formats\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	if (drm_rotation_90_or_270(rotation)) {
>>   		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
>>   			drm_dbg_kms(&dev_priv->drm,
>> -- 
>> 2.45.2
>>
> 

