Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9C84972E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 11:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDD910F427;
	Mon,  5 Feb 2024 10:00:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V7dAB17e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F71010F46D
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 10:00:35 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-55f279dca99so6002164a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Feb 2024 02:00:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707127233; x=1707732033; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=9Cpk0DE+NJNZs/+LmxHR6fWX2pPQ9biXIaq5CSU+x2k=;
 b=V7dAB17ewOuSHm0+AfZu6CKcMbRYNwd9lSm/Y/AT4JWW1EL7q/KSaUniYbWxsFjEwV
 ZrH4PVbQm5ORR7gufyMQ/dsMSOKjhtIJAI6bA3ZlvocoPNe67cwiggSbbLjpKEg0ivqM
 hkdO46J2ZWw+esu74Ev4RdozFaaCAXGbe0YT7yT2tV4ktm3i7xQEQZB8mzSiLZEIpx37
 aPs5717y6YKmpuWnjKmMAxGddOknvkuufgiAq+HXmXzbk4ENCjJMwYeDBkyhUOLboUOp
 mGcCFArLboiw+ViSVgc3pS8Yl5AFwfLkj3hx13070/u1epv65y9jzg0EaJxWo1/JzNE9
 M8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707127233; x=1707732033;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9Cpk0DE+NJNZs/+LmxHR6fWX2pPQ9biXIaq5CSU+x2k=;
 b=kpFCBxQ7tsp1KUnPD8AS3oWNz6pk2TFtsaowUorlfrR55InRO7nwE5L2yVr+kUn3ES
 hNFNUxnUlCRjGj+pvlK3AlVKkUO7UDKdoaaYFsRMWAHoTedNyFsF2U29dFlvhDif86K/
 S14202Ee5L3pdVcQCrR4cY5H36y0a8u1hix/9CC4OCKd2Z8cUTRbkKUx9EvB97oDRNTX
 RMx305uA0V7QBK7g7jhn+jhL200Qda8HJsgp/UvSc50Gv3oMUIhJfmOR8b6Ys0f46/NB
 NUFj1hF4/KDBjLGz7vyMiygewV0hi2ShrFX/ETcRI4BbuRsyD3Cv/VWsXYDhc7su4Av1
 2aVQ==
X-Gm-Message-State: AOJu0YzmTQkxHKnj37VmVa+lX+Ah0Bf/UkzPWCMZRRjahbZ690yWOl3q
 3wiXWIY3GQVm4pchZM0zqsHdbApfjMTsD46Cj8ijz6Bh850raXH2It36wjtjnus=
X-Google-Smtp-Source: AGHT+IHdDkMC4P1MfvspbxRdX7kdFRy7+qFVkZ9Mg9GhdLSIyghC9p6vBgGGWneC9RKKz+p54oCVSg==
X-Received: by 2002:a05:6402:1acf:b0:560:8385:811b with SMTP id
 ba15-20020a0564021acf00b005608385811bmr606840edb.36.1707127233202; 
 Mon, 05 Feb 2024 02:00:33 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCXJ8sOgZ/yGVnVwYnD3MfcrHU7CxIe78YPAEuW2fTRK45qr9gQJPCsfcOJtvK2ZfuybG6EG5GJiJNS2U9FyG/7nP1m5yPihhMQvXoIfO8ax
Received: from [0.0.0.0] ([134.134.139.85])
 by smtp.googlemail.com with ESMTPSA id
 f10-20020a0564021e8a00b005602ca47445sm2051336edf.42.2024.02.05.02.00.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Feb 2024 02:00:32 -0800 (PST)
Message-ID: <620670df-2f56-416f-9197-798e99d595cb@gmail.com>
Date: Mon, 5 Feb 2024 12:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Content-Language: en-US
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
 <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
 <78627f64-0f6e-430b-a954-30bec402b132@gmail.com>
 <6e06b068a1a9bef7baa7da6536c5c8846a9f127d.camel@intel.com>
 <17a867f9176dac4c29cbc4c78785884fed5199ac.camel@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <17a867f9176dac4c29cbc4c78785884fed5199ac.camel@intel.com>
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

On 2.2.2024 22.51, Souza, Jose wrote:
> On Thu, 2024-01-25 at 08:07 -0800, José Roberto de Souza wrote:
>> On Thu, 2024-01-25 at 17:56 +0200, Juha-Pekka Heikkila wrote:
>>> On 25.1.2024 17.28, Souza, Jose wrote:
>>>> On Thu, 2024-01-25 at 17:25 +0200, Juha-Pekka Heikkila wrote:
>>>>> AuxCCS framebuffers don't work on Xe driver hence disable them
>>>>> from plane capabilities until they are fixed. FlatCCS framebuffers
>>>>> work and they are left enabled. CCS is left untouched for i915
>>>>> deriver.
>>>>>
>>>>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++++
>>>>>    1 file changed, 8 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> index 511dc1544854..1521d829525a 100644
>>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> @@ -2290,6 +2290,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>>>>    	if (HAS_4TILE(i915))
>>>>>    		caps |= INTEL_PLANE_CAP_TILING_4;
>>>>>    
>>>>> +	/*
>>>>> +	 * FIXME: Below if(IS_ENABLED(CONFIG_I915)..) is because Xe driver
>>>>> +	 * can't use AuxCCS framebuffers. Once they are fixed this need to be
>>>>> +	 * removed.
>>>>> +	 */
>>>>> +	if (!IS_ENABLED(CONFIG_I915) && !HAS_FLAT_CCS(i915))
>>>>> +		return caps;
>>>>> +
>>>>
>>>> functional but looks odd.
>>>> would rather add a check inside of gen12_plane_has_mc_ccs() or 'if ((!IS_ENABLED(CONFIG_I915) && !HAS_FLAT_CCS(i915)) && gen12_plane_has_mc_ccs(i915,
>>>> plane_id))'
>>>
>>> Hi Jose,
>>>
>>> not sure I understood your idea. Here need to be disabled all versions
>>> of aux ccs for Xe, not just mc ccs.
>>
>> ah misplace this this...please ignore.
>>
>> this is fine for something that will be fixed soon.
>>
>> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> ping!
> something is holding from being merged?

Patch results showed things didn't go as Jani had suggested. This would 
just break ccs for i915. I'll need to rewrite my original patch 
splitting it into smaller parts and see if I can take into account 
Ville's comment there.

/Juha-Pekka

