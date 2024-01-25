Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E35F83C760
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 16:57:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C251710F8C3;
	Thu, 25 Jan 2024 15:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B1410F929
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 15:57:24 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-337b8da1f49so6087597f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 07:57:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706198183; x=1706802983; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=tMuIz4sDzn+LMLZtDmiKrpdc0pMoh3ZoluZMnmqQRvY=;
 b=OqTM/SVYHNXHM3LVL7sjQzvNLk6Tc8AUo3mssW6dJCCjMtNJzJjXvSL7nYvoU5rHMC
 32ByicXHkF+dZqABEchrMpg7IYxheMEEUp4wT/yFgG3LGtaE+nHgZHI4rj9E7iS/zLg1
 ziptL+L5slTG0F5SICCweN+ex+IjZnnXmjw4sbjHqG15wYOKV0mnLD9M49LEldgo6c/w
 Cjx+BnUcH/ods5vKkrkVem4Khbjgt8ZEYYu0uOoODSqnBUY6kfhd+lgvDXmPwMkpRU3+
 DkgOJo7O1syvclk8eicvhl0uN6nygZYdf+2BefteNAKzEsAl99+pwJ0QY95o0BAxheRW
 eM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706198183; x=1706802983;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tMuIz4sDzn+LMLZtDmiKrpdc0pMoh3ZoluZMnmqQRvY=;
 b=pcJGX1dCoUZZG7umU3WCdneGu+wa16AIOhxQTKc6Hh9fhvTQbGJHToZXKWnz0VQaye
 8GUzxRY62Kvxdw7HuAegyFkcH0o+0VaOR+kLdIllB7n/6JBCe3HxNy17qXAmuSApHXny
 4V12XQvaRX5YDVflNQVV/XjfwRXG85j/ho+PGqKqA617NTfYOoJoYl2KR/e68BeAzoDV
 wYnnbN/4MtYir7fLwXreb1SISy+XenQQ77zTOeBpGbBcCFLXMQ8ZJNqoTlb1E6kdI3CL
 z0xda0XprG7mobTcp066TfLIy9MfcoNkDU20aB5mRa3gKPRFD7yMGOZyBtsXEiBYUVka
 TVeQ==
X-Gm-Message-State: AOJu0Yz7A6NQa9WElhH6q3+Kr2U377udtrZ0B2mqJ13asaS4CoQ489+u
 CBlm8PKrvaw6AQLz8o/8fl5O4OEL/TRlZqSy400MB4WbO6McQ4c3
X-Google-Smtp-Source: AGHT+IFHaN/Mp2r0k4a4QkdJZlF09lNVhLisn5CLsfGIoud0REq2OLRGkc/a7ul2qKCE/NL1xShXFQ==
X-Received: by 2002:adf:a11b:0:b0:33a:1f9:8ac with SMTP id
 o27-20020adfa11b000000b0033a01f908acmr1699wro.30.1706198182706; 
 Thu, 25 Jan 2024 07:56:22 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.85])
 by smtp.googlemail.com with ESMTPSA id
 x1-20020adff641000000b0033922db3f74sm15308990wrp.116.2024.01.25.07.56.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jan 2024 07:56:22 -0800 (PST)
Message-ID: <78627f64-0f6e-430b-a954-30bec402b132@gmail.com>
Date: Thu, 25 Jan 2024 17:56:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Content-Language: en-US
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
 <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
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

On 25.1.2024 17.28, Souza, Jose wrote:
> On Thu, 2024-01-25 at 17:25 +0200, Juha-Pekka Heikkila wrote:
>> AuxCCS framebuffers don't work on Xe driver hence disable them
>> from plane capabilities until they are fixed. FlatCCS framebuffers
>> work and they are left enabled. CCS is left untouched for i915
>> deriver.
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 511dc1544854..1521d829525a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2290,6 +2290,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>   	if (HAS_4TILE(i915))
>>   		caps |= INTEL_PLANE_CAP_TILING_4;
>>   
>> +	/*
>> +	 * FIXME: Below if(IS_ENABLED(CONFIG_I915)..) is because Xe driver
>> +	 * can't use AuxCCS framebuffers. Once they are fixed this need to be
>> +	 * removed.
>> +	 */
>> +	if (!IS_ENABLED(CONFIG_I915) && !HAS_FLAT_CCS(i915))
>> +		return caps;
>> +
> 
> functional but looks odd.
> would rather add a check inside of gen12_plane_has_mc_ccs() or 'if ((!IS_ENABLED(CONFIG_I915) && !HAS_FLAT_CCS(i915)) && gen12_plane_has_mc_ccs(i915,
> plane_id))'

Hi Jose,

not sure I understood your idea. Here need to be disabled all versions 
of aux ccs for Xe, not just mc ccs.

> 
>>   	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>   		caps |= INTEL_PLANE_CAP_CCS_RC;
>>   		if (DISPLAY_VER(i915) >= 12)
> 

