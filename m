Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8143F8A697B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 13:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93ED10F640;
	Tue, 16 Apr 2024 11:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hqJGew/N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C3B10E68F;
 Tue, 16 Apr 2024 11:16:02 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2d8b2389e73so48987621fa.3; 
 Tue, 16 Apr 2024 04:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713266161; x=1713870961; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=cfCTWNK4h3EFCQzH6LATrKflxqWKKKdXPWamorMl25o=;
 b=hqJGew/NuozyRpl4GFNLBrBxHMjB5fot4o9jRX1gT0YIOLZ54ghViQW6ztkZvkrV9S
 X4MM+pNNH1dAh7U1C1/VpQUX1dNKBzTIBG8+3nb71g2lqbqcYkFLVMUQi97L3a1iULOu
 1lwe5YNpNBoGS4+Mpis80Tf947dw2wWpacT05waEL4MEAFc1xH08PHDgRI8QTy3ObP+9
 GAYXVXYlraGAbYRhi4y4auGgMNLQQU4/DKgoKsQ47MijZPJqp6clVxvtfNQ1qHK8Mf+C
 ZErWHl+Kdm1v3PzNv7TVki17Wl8EQmC39oXyNJga+btCFA/GGPvDmjCSXg3I1KbAR3e+
 wORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713266161; x=1713870961;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cfCTWNK4h3EFCQzH6LATrKflxqWKKKdXPWamorMl25o=;
 b=SajC7W+vLfqSrgQ6evc919slONVftMKZBSA+ngmrUE+jC8yX8HbUaE4Fk0FrOVoTsA
 /S0ibOjSdiOHK+l6CRl8iG0I3Prr5zz97wDP33sGhdyfN06pSiCCY3j35ISYbckzuFWf
 sZNrDbim5JtSwSmx3aQU+GpH8cwb7P5NTlTzO/b+TNfP0VMTpAOt3rtG8sDKcqX6JXET
 89CtZmRX5W2X3sQec6uH5H7OMmK9fKBCOvEdTE2bw3VZcdbdoe+BZGTS35P0MmZIJ42m
 WZhJllYygLPuxGtGHiAgEsECfZFJtxQtHV2cpLr5bvOhyKQj9lzklQbFM9/qlTe+ItyY
 hxcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMYrTdUnkQpDIsaa9AqVm+pv1qlGg85qAiTVfBF0iNtUESGHQSI51He52eEkdJ6aIkDZBUEQk5Jri/LIlICdjtj6hSRebry7bp9UkkUq4S
X-Gm-Message-State: AOJu0YzwSfiCHAfN8rzs/vSq6y66G6VzCtJZDxm4BrtbwyFJOvO/hU2a
 rcmG4U+lmwnSDmrx0wrVuiX/nwHPblqGk1AJxPiM+NtN6u/ZbHLe2andb83dPOA=
X-Google-Smtp-Source: AGHT+IE+wS4LgldXDgi+rk+tgyvymeO15xymmyQSVB66+y89uLB1P0M5pw8Rff9WzKIcRhDC8lEvhA==
X-Received: by 2002:a2e:7216:0:b0:2da:6402:8319 with SMTP id
 n22-20020a2e7216000000b002da64028319mr3823745ljc.26.1713266160739; 
 Tue, 16 Apr 2024 04:16:00 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.88])
 by smtp.googlemail.com with ESMTPSA id
 q12-20020a05600c46cc00b00417bab31bd2sm19676950wmo.26.2024.04.16.04.15.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Apr 2024 04:16:00 -0700 (PDT)
Message-ID: <ec2438a3-52b4-4471-9f0c-4b21dbe0e32d@gmail.com>
Date: Tue, 16 Apr 2024 14:15:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/21] drm/i915/xe2hpd: Skip CCS modifiers
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-5-balasubramani.vivekanandan@intel.com>
 <20240415160641.GC2659681@mdroper-desk1.amr.corp.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240415160641.GC2659681@mdroper-desk1.amr.corp.intel.com>
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

On 15.4.2024 19.06, Matt Roper wrote:
> On Mon, Apr 15, 2024 at 01:44:06PM +0530, Balasubramani Vivekanandan wrote:
>> Framebuffer format modifiers are used to indicate the existence of
>> auxillary surface in the plane, containing the CCS data.  But on
> 
> s/auxillary/auxiliary/ in a few places in this commit message.  Although
> I don't think this statement is 100% true.  DG2 use FlatCCS rather than
> AuxCCS, but still needs to use framebuffer modifiers because the region
> of the FlatCCS that corresponds to the buffer may not be
> initialized/correct if the buffer contents were generated in a
> non-compressed manner.  We have to use framebuffer modifiers to pass
> information through the software stack as to whether the FlatCCS data
> for the buffer is usable and should be consulted by consumers of the
> buffer.
> 
> As I understand it, the big change in Xe2, is that compression is now
> controlled by the PAT setting in the PTEs and even in cases where an
> "uncompressed" PAT index is used to generate content in the buffers, the
> corresponding FlatCCS area still gets initialized to whatever metadata
> code corresponds to "this bloc is uncompressed."  So that means that
> it's always safe for consumers like display to treat the buffer as if it
> were compressed (e.g., setting the decompression flag in PLANE_CTL) ---
> the CCS metadata for ever single block in the buffer will properly
> indicate that no compression is actually present.

Adding to what Matt commented above, issue which is being fixed here 
should already be taken care by

--
commit cf48bddd31deefb9ab07de9a4d0150da6610198a
Author: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date:   Wed Feb 28 16:02:25 2024 +0200

     drm/i915/display: Disable AuxCCS framebuffers if built for Xe
--

/Juha-Pekka


>> Xe2_HPD, the CCS data is stored in a fixed reserved memory area and not
>> part of the plane. It contains no auxillary surface.
>> Also in Xe2, the compression is configured via PAT settings in the
>> pagetable mappings. Decompression is enabled by default in the
>> PLANE_CTL. Based on whether valid CCS data exists for the plane, display
>> hardware decides whether compression is necessary or not.
>> So there is no need for format modifiers to indicate if compression is
>> enabled or not.
>>
>> v2:
>> * Improved the commit description with more details
>> * Removed the redundant display IP version check for 20. Display version
>>    check for each modifier above would take care of it.
>>
>> CC: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
>> CC: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb.c | 16 +++++++++++++---
>>   1 file changed, 13 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>> index 86b443433e8b..7234ce36b6a4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -431,9 +431,19 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>>   	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
>>   	 * where supported.
>>   	 */
>> -	if (intel_fb_is_ccs_modifier(md->modifier) &&
>> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>> -		return false;
>> +	if (intel_fb_is_ccs_modifier(md->modifier)) {
>> +
>> +		/*
>> +		 * There is no need for CCS format modifiers for Xe2_HPD, as
>> +		 * there is no support of AuxCCS and the FlatCCS is configured
>> +		 * usign PAT index in the page table mappings
>> +		 */
>> +		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>> +			return false;
>> +
>> +		if (HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>> +			return false;
>> +	}
>>   
>>   	return true;
>>   }
>> -- 
>> 2.25.1
>>
> 

