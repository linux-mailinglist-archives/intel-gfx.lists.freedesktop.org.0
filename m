Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5548A93BD53
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 09:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D7910E251;
	Thu, 25 Jul 2024 07:48:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="GjdUpKwU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 025B410E251
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 07:48:37 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 5b1f17b1804b1-42797bcfc77so4429825e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 00:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1721893716; x=1722498516;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2hhOd38GpDOBQfu2oCWft1Q38Exz7pT95uk3wmx+9Bk=;
 b=GjdUpKwU17v8oI0F32TCauR5BysODjv+FIwXAIlH/6EWp4D2hlgZDExWM70n4sXdE2
 av7mQ+ky70BytvZftvCKYcB1wmQ/QzivzzQmkd2DmBatwMVKsO90KAifhCx9KI9/j8pT
 O4gnHOH56frhC0Nlmg2ihxi2hOYMJwxfKRJBQPciG5kcVRvjTC1OiolnbTLpWqvOhxwK
 VpRBEEYq5wQSypYjXIi2hUlrLp7u1NZgg9JUXOkZAieYJmAYdaRK0b3iFkN/sHrUNa4b
 V55WUaeQAOsT44jNyQsEkGMacTVmlmUcmV4zjizJsaFpYEGoj1Z/0Pu7zIeXvUuRQxln
 S2Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721893716; x=1722498516;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2hhOd38GpDOBQfu2oCWft1Q38Exz7pT95uk3wmx+9Bk=;
 b=fAWrTjwlIymmkqSi1nOl13Fp5tzZU4F/kq231CNoEHNVDgquG6R4MSCC3C/Mb/9CgR
 8akOO2YsVkoInRwOOEMhpJXq398rT1mMfkYIbSBUpGkQyx6bpu12TsNoLauq3O/cIOJy
 UlEdh/LlD13Xb658aqCtHkElxXf8acmUCCvUOIv5uIcvGixXro7ivj6UpqICDWiN3qR0
 BhLDBf1bScy0HCprvL00gBtd86rYnU3tV14Bz3E/Xh7oUQYfEcd1PTyUberRaSd1mp8B
 lL7LKPgAbvlG71rK4ajQDs/5fhPk2mcFg46SUI14ZwCCKb7A36GVldy5jECtxotTQBh7
 gwCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWy5nsjCBUWFDz1jt2IjvFqdG5fv7Xs5Nk+rkBf2v9plCFtwCMzMe/pnoNLIsLgPjEtWOS3M3J95kyuQY6daCXWGIVnrDpTm98s6iQqAGio
X-Gm-Message-State: AOJu0Yz7FGjESReAC2uozHgi6UKxJFL21HPEHbZIpL8X18CW1RZaY4Q4
 rDmHo4f32hgWaVzSugELywMVM9w1HGAnCdrLwCXgf2+G2+3WZ4jS0GcOY7GNvoI=
X-Google-Smtp-Source: AGHT+IGbgN6ylTMY+gBIEYDkjjh8mWJKoyctGBtCN3msWg8MlgGGbGjfX+i3SmBJo1ZfHJ4Ivk27jQ==
X-Received: by 2002:a05:600c:35d4:b0:426:63f1:9a15 with SMTP id
 5b1f17b1804b1-4280548c82dmr10365655e9.9.1721893716270; 
 Thu, 25 Jul 2024 00:48:36 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4280573e944sm21746695e9.13.2024.07.25.00.48.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jul 2024 00:48:35 -0700 (PDT)
Message-ID: <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
Date: Thu, 25 Jul 2024 08:48:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, dan.carpenter@linaro.org,
 chris.p.wilson@linux.intel.com
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 12/07/2024 22:41, Jonathan Cavitt wrote:
> Prevent a NULL pointer access in intel_memory_regions_hw_probe.

For future reference please include some impact assessment in patches 
tagged as fixes. Makes maintainers job, and even anyone's who tries to 
backport stuff to stable at some future date, much easier if it is known 
how important is the fix and in what circumstances can the problem it is 
fixing trigger.

Regards,

Tvrtko

> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_memory_region.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index 172dfa7c3588b..d40ee1b42110a 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -368,8 +368,10 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
>   			goto out_cleanup;
>   		}
>   
> -		mem->id = i;
> -		i915->mm.regions[i] = mem;
> +		if (mem) { /* Skip on non-fatal errors */
> +			mem->id = i;
> +			i915->mm.regions[i] = mem;
> +		}
>   	}
>   
>   	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
