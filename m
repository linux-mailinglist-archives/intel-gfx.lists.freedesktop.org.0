Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D701FCAC5DF
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 08:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D732D10E3A2;
	Mon,  8 Dec 2025 07:37:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="aX9gIkOR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77CD10E3A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Dec 2025 07:37:08 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-b736d883ac4so718718066b.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Dec 2025 23:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1765179427; x=1765784227; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5Q5CIH407b9hhYPAgKjmh9mfVcRk5620MqBEl99rtlQ=;
 b=aX9gIkOR54Vs1gIJsfRu/Ch63LFB2Hz8J/gVoX9KJRrgqdv3v1s+7JagFT7ep/oVLF
 bvSA2R/g/P2od6yoZxaM7+JG92WEfxUAgAmqhnjz0ymKIBJv7qiOmBPvQB6LtEF/tMnd
 Teg+WKJWyTGUCLeKW+Pl/oNOC4EYbucducQQvvaPC8eZlNkMMt6eLKc8OLAbnGunSQxD
 uU+u9qCHdxDtvHm+OPboOQf/YKhQTjQOuXJhpi/YhkRFg7ngyJigMPCFtg9+ulgkdjrg
 moXsimmt11SZ8gjlFHnj6f0GVGmGKytyH6ZBXGlpkYBGn747oh/mbgKR5W5eaw/JmChK
 iL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765179427; x=1765784227;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5Q5CIH407b9hhYPAgKjmh9mfVcRk5620MqBEl99rtlQ=;
 b=aO+UEEqhNaK40oarSC0E9URLLr38XVNi7h5KdX8wd8RE6c5LFIKkPJqbz40bhuyHr0
 LExXUh8NQBHOIHX4xH3c0eP3fEshANUSmFtISpGkrFjsaAWOwKwZWzLyS6rGIHZnKTXm
 0h4WsK71BsqZqZkeertlowq2DVuZbhHIoXUIYl28dLHcuFCDbz7ZXZHYkTWbLucaTzm8
 zGPQX0pmSIWeA7Jbd/lT6i49CKD+ddazhLiodY/CiwTR3AA/X2fCF+bDKrA+0KewnIoj
 Y29fZsnVCbPPHEilA7VAOVVJMmwf9ktGPeiyVF29LS4bVEMvpmJzVGGaskJnN3YxZQjZ
 ffAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlne7vELm36Dsd9vgrmjEDaRj/6qfnHXKiBXGVgJqceiKXAi/p+k4r2tNo+TMYhMmwe8ZQL5l/35w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw6fsoaE1ISaHs0Ifvz8aLXgTU5CwTKZ2PRHm9+Vv9FwbPk/u+Z
 E6WMmpujdq7M+z+aTodc0KKmcCsR9lXNFwAcL0dCgtL65Y/rj8FeKzmcZPwSj4o0/v4=
X-Gm-Gg: ASbGnctjvLiSWimMpDvsDbTP4dW9pW+5tsfNtMDTVGlHc+t/6M9XgUdGCYJLhSF6lRI
 rOnwhJyMdKAvqQlPgCbge+n3eSQTQ9jZnd5GJlKFPhhUQb+FPa/Xb/dw47rabmvcKF6jDkH8JPP
 hqkPOjMerAKWmAbWHCReRHteaFAMG32hggdRv4OlU1iz8utNXenC+75rsGn0qPKzbjpzu/oKYAm
 9JIY6O+ARG0lpaSirSX9o6gT8O/Y7Fdily4Ak88gyzGkS58UAI6oVtm1WovK85bJfS6i5NO+siM
 4dmwsAvduGuRMf37tgyzou4Tks6RHyB/3S5384spYl3iXcKHLiCI/h85+UnmR6X6eHQZ5AQG1GJ
 kGTYXG6ccmTcarIlLdbaWPGLUpzWAiNyzW4WR9XF6aVO1Xwe4GLHZlTLAf+HW07O1pcPLck2zFa
 l6g7j+ZXXlOpX4rixlndbR0sLm2aIh
X-Google-Smtp-Source: AGHT+IGgcjQuFSKb6f4GTBGTvfr4Ss06IGmhWYromnefd+hR7FHbKzN9XJ2Jn9Fo5F7LexDqN/z8SA==
X-Received: by 2002:a17:907:7f9e:b0:b73:6998:7bcd with SMTP id
 a640c23a62f3a-b7a2430479fmr681434866b.23.1765179426989; 
 Sun, 07 Dec 2025 23:37:06 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b79f449ba82sm1043117766b.22.2025.12.07.23.37.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Dec 2025 23:37:06 -0800 (PST)
Message-ID: <602813bb-096b-44b4-af1d-95681769c943@ursulin.net>
Date: Mon, 8 Dec 2025 08:37:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i195: Fix format string truncation warning
To: David Laight <david.laight.linux@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>
Cc: Ard Biesheuvel <ardb+git@google.com>, linux-kernel@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20251107164240.2023366-2-ardb+git@google.com>
 <14ca1b28-df1d-4065-ad7a-97a3ff81a5a4@ursulin.net>
 <CAMj1kXEgfykaf9oB4_tuAQqwXDN+NLy_Hb_+RnQmeicVgKt0bA@mail.gmail.com>
 <CAMj1kXFLaOZMXsUsvrshkwhvJSWm3V_iZB3n1rga=Q6zwrVY_g@mail.gmail.com>
 <20251205182813.09231c45@pumpkin>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251205182813.09231c45@pumpkin>
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


On 05/12/2025 19:28, David Laight wrote:
> On Fri, 5 Dec 2025 11:48:08 +0100
> Ard Biesheuvel <ardb@kernel.org> wrote:
>
>> On Sun, 9 Nov 2025 at 19:00, Ard Biesheuvel <ardb@kernel.org> wrote:
> ...
>>>> But I guess much prettier fix would be to simply grow the buffer.
>>>>   
>>>   
>> OK, so something like
>>
>> --- a/drivers/gpu/drm/i915/intel_memory_region.h
>> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
>> @@ -72,7 +72,7 @@ struct intel_memory_region {
>>          u16 instance;
>>          enum intel_region_id id;
>>          char name[16];
>> -       char uabi_name[16];
>> +       char uabi_name[20];
> The observant will notice the 7 bytes of padding following 'private',
> and another 7 a little later on.
> (I' pretty sure 'bool' is u8).

Oh well, them holes love to be added over time.

Anyway, I have pushed this patch to drm-intel-gt-next so it will appear 
in 6.20. Only now I realised I could have suggested to add some  Fixes: 
tag to it, so it would get automatically picked for 6.19.

My colleagues who are handling drm-intel-next-fixes for 6.19 could 
perhaps manually pick it up.

Tvrtko

>
> So extending the buffer doesn't even grow the structure.
> The string is only used when printing some stats.
> I got lost in a list of #defines and function pointers trying to find
> the actual function that did the 'printf'.
>
> 	David
>
>>          bool private; /* not for userspace */
>>
>>          struct {
>>
>>
>>
>>>> Also, hm, how come gcc does not find the mem->name vsnprintf from
>>>> intel_memory_region_set_name?
>>>>   
>>>   
>> AFAICT, intel_memory_region_set_name() is never called with a format
>> string that could produce more than 15/16 bytes of output.
>>

