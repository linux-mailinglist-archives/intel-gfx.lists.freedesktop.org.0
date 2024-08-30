Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01177966087
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 13:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1604110EA86;
	Fri, 30 Aug 2024 11:23:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OOvSkAL5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D59710EA86;
 Fri, 30 Aug 2024 11:23:43 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id
 a640c23a62f3a-a8692bbec79so201015266b.3; 
 Fri, 30 Aug 2024 04:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725017021; x=1725621821; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=LauK8dBdjC36U75LhfYWZk02RyLHMQVOv9d55VK+iOg=;
 b=OOvSkAL5sMAKgtmpYnuxMpjexkJV+zlPJVtpg2YtHmn3gYL+PhNfLY/eiI2TEGIPjc
 Vt7+Om1rlA/ve2lUaFNkgGhKMq7tvlTEzAn7ZglyGmOHO/n7WmhBVq82BzQ9X4oWu8xN
 xmu8Qj9gIZ9j8Y6ghgBjTs6IpNbzQz+aLlLKkeEaaxNrlRtMnceUtDIG2CYUxgdicitd
 QMpK9Vq3wpSGuX+PpZR6YEcA9MtMpNTWkilCVizp3bxrCeJMTFuswA72q0zVeCTsePC3
 NZkibOIfvRKRB3QR2QozgqshPG1jUWKRgZskfCvOtKcVA/jSDrece6u4dIW65DCEv5IB
 SyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725017021; x=1725621821;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LauK8dBdjC36U75LhfYWZk02RyLHMQVOv9d55VK+iOg=;
 b=lh33VoGYtbMAseU9ZctVZIkOR7x7JtfJE8t/4GJ/t7rxLEhQxUT60SxfXO+ebzh21h
 zE2Fslnz7BYkJHZrhfJ19QfXEYGdqIZkBa4NDtVhW26MvsmvVD5pQuyV3CWgCHB2u2fw
 Sfj5NnhzkAgQApoWq6O0nJyLIkYmTBcyEFdSUJRpzO1LO04rRCU+rLno6pX5ynf8MiVW
 W3z7deYDoq4U2pGXahWhbXNO0aVP2b3cCMDetbx9u2kl/KV+hzMm3Rk8aZk2vHMxQi4G
 fEzZlnXNT7hI3R7y0NXetibplF/UWeeMwC1T+ajKf3gReCHMKuVHCCwk6taNVWRoW7Up
 mpaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVNraVvgI+70PYGNVOqBPf0ozdGVS6uQ/HVo9zPeH6kn3zHMJvwLux54RcCYNpH5rph/41ry86DrQ=@lists.freedesktop.org,
 AJvYcCXjxNnJ0CQEtqN5/rtVH3au1IdJgL/faPYtL/eZRjzVIbxBInmlTyScp2jtMmPIQUGSXOZsMJYdBoA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz4MGk4kIqjbAEkHwq9xcvDW36K6vPBrkL/xnhjfuaIt1fF/Dcn
 iSHAcOt13S3hhSALJTgH1i+RdRFVo0OdXiPQDO9GHQvbUGKXkBLx8Q86f7/CsTY=
X-Google-Smtp-Source: AGHT+IFEkgYkTrLo79GyxsDMelNWt9Kkvfv43gd7tu3sqpss1MyqBi9cNKxo/xHtrS5y/Nt3KVzSDw==
X-Received: by 2002:a17:906:6a25:b0:a86:b32f:eee6 with SMTP id
 a640c23a62f3a-a89a3820bd8mr163481166b.54.1725017020964; 
 Fri, 30 Aug 2024 04:23:40 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.78])
 by smtp.googlemail.com with ESMTPSA id
 a640c23a62f3a-a89891db42fsm202885566b.184.2024.08.30.04.23.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2024 04:23:38 -0700 (PDT)
Message-ID: <37e416a4-8250-4f38-9dbb-a543324738c8@gmail.com>
Date: Fri, 30 Aug 2024 14:23:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix BMG CCS modifiers
To: imre.deak@intel.com, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
 <ZtCFnopiRIDSbtJp@intel.com>
 <62a324e0-a52d-4c84-acda-9ef6c45e777e@linux.intel.com>
 <ZtCQG4EOrYdUGDLX@ideak-desk.fi.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <ZtCQG4EOrYdUGDLX@ideak-desk.fi.intel.com>
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

On 29.8.2024 18.13, Imre Deak wrote:
> On Thu, Aug 29, 2024 at 04:36:52PM +0200, Maarten Lankhorst wrote:
>>
>>
>> Den 2024-08-29 kl. 16:29, skrev Rodrigo Vivi:
>>> On Thu, Aug 29, 2024 at 03:29:28PM +0300, Juha-Pekka Heikkila wrote:
>>>> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
>>>>
>>>
>>> doh! I just did the pull-request with that... I guess this is one extra
>>> pull request next week or the first patch of -next-fixes :/
>>>
>>> Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")
>>>
>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>>>>   1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> index 9452cad41d07..d28b98e7cbd7 100644
>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>>>   	if (gen12_plane_has_mc_ccs(i915, plane_id))
>>>>   		caps |= INTEL_PLANE_CAP_CCS_MC;
>>>>   
>>>> +	if (GRAPHICS_VER(i915) >= 20 && IS_DGFX(i915))
>>>
>>> we should be using display version here, no?!
>>>
>>>> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
>>
>> Just set it unconditionally if you want to change it IMO, it's a
>> workaround not an actual capability, rest should filter...
> 
> I think it should be set only on platforms that actually require 64K
> pages. So IIUC simply
>     IS_BATTLEMAGE()
> or if it's known that future DGFX has this restriction too
>     IS_BATTLEMAGE() || (DISPLAY_VER() >= 20 && IS_DGFX())
> ? Then the BMG and LNL checks in plane_has_modifier() wouldn't be
> needed either.

This sound good idea for this case. It's bit of a trick to check with 
display versions we're on Xe2 which to me is synonym to gfx ver >= 20 
but I'll make v2 with this change. It is expected future dgfx will have 
same 64K requirement.

/Juha-Pekka
