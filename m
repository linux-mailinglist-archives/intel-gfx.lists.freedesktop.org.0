Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E59896B798
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B4110E735;
	Wed,  4 Sep 2024 09:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="XQRRpyuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F7110E735
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 09:59:52 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5353cd18c20so842803e87.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2024 02:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1725443991; x=1726048791;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OKw4TKs+xzYW9ssVI3ZPbWWg9xJx5sIdNAvzUrikQOI=;
 b=XQRRpyuYSjhooSO/aOWmZyifK1BopZI1zZS5Sd0SlSIlnshMRwKpf7PuxwIGnb2+sA
 wxe+XiePxhB0mLyWjgDaf0DpxdJH/H/QwEJ5aLdD0CwBuxWCdv7B/Q/CJDuUw+8Fvl70
 /inAEKF1rdC7AbnJItmrBu1hW1jHOWoRtDuwgbs9TRO1lhHoVjm5dNyXGBSJOrEG1IE5
 /NXsCmqDaS60JAIP/7W0WY54FvhX01/RBV9ydTLdfbxGCeLXfCm3F0WtoYAVLg/WhduW
 FI/K7/jZsrGrhIWCfJxipEHzEarJY2C/0HTjouaa7Zmkn3WJpuFx5b/ctvoBMaZcd6Bz
 3OgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725443991; x=1726048791;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OKw4TKs+xzYW9ssVI3ZPbWWg9xJx5sIdNAvzUrikQOI=;
 b=H2725l2TAVmO8NxOWPyoIXsBa9D3sst0KcUimvikZKvr/BSsXcsXUa5KYklewOnWGC
 bqOChWlEd98blWidJbq+KljLdNE8A7CCsCMqMHrKKRWzSDuqgK8drxz8bEK338I+zuDF
 7AWgzA/cWpRtiTlbvoyF2VFJH+f9mDXs1kXp7B43PGR3UKikEr9svIvJ5LNhYIypfZJC
 r+8oDk+C94LSHCwnaRKAkWynJyHxwmNQB1yT2/DuvjKMJXh/lEkEbF8ETfDjpyx5F+j9
 44KuAoIvOM2LqAXWRlALCEXY+FznV+x9Vy3E8Ubu0TcuJygCuoZtKSaSxJsy5cEsd25X
 CWKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKH0grRIKtL7aCeo6PKa3eVAPZSSv9QTrrU6/lpxk8GWeFmft+emdtcQ5X9khxgVJB1R4a9/mw6cM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy8YmIrhVj0svRQMMr81QJhiUC6T+Td+acX1/vTVAMdnFan7Ear
 /VDsc9YLtIU5SdZpxtDKW+rk300hZbKUXyMtA20orddnusyZXZPvLVj4VDLngfA=
X-Google-Smtp-Source: AGHT+IEPyItpR2bACoedLZ7pWA5hZAWhYY365d5rJb/PygA+fYSu2UVo8ep34qzIyn6ABHTDoGcUVQ==
X-Received: by 2002:a05:6512:3351:b0:535:6778:952b with SMTP id
 2adb3069b0e04-53567789601mr964900e87.44.1725443989971; 
 Wed, 04 Sep 2024 02:59:49 -0700 (PDT)
Received: from ?IPV6:2a0a:ef40:74:3d01:559f:5c36:7f62:a0be?
 ([2a0a:ef40:74:3d01:559f:5c36:7f62:a0be])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a89891daf81sm786066266b.163.2024.09.04.02.59.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2024 02:59:49 -0700 (PDT)
Message-ID: <64732bd4-f946-4359-a3b0-19b3f6f10d44@ursulin.net>
Date: Wed, 4 Sep 2024 10:59:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: prevent a possible int overflow in wq
 offsets
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org,
 stable@vger.kernel.org, Daniele Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@intel.com>
References: <20240725155925.14707-1-n.zhandarovich@fintech.ru>
 <56362df7-7502-4b35-81da-f3fe9ff7da47@fintech.ru>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <56362df7-7502-4b35-81da-f3fe9ff7da47@fintech.ru>
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


On 26/08/2024 11:45, Nikita Zhandarovich wrote:
> Hi,
> 
> On 7/25/24 08:59, Nikita Zhandarovich wrote:
>> It may be possible for the sum of the values derived from
>> i915_ggtt_offset() and __get_parent_scratch_offset()/
>> i915_ggtt_offset() to go over the u32 limit before being assigned
>> to wq offsets of u64 type.
>>
>> Mitigate these issues by expanding one of the right operands
>> to u64 to avoid any overflow issues just in case.
>>
>> Found by Linux Verification Center (linuxtesting.org) with static
>> analysis tool SVACE.
>>
>> Fixes: 2584b3549f4c ("drm/i915/guc: Update to GuC version 70.1.1")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 9400d0eb682b..908ebfa22933 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -2842,9 +2842,9 @@ static void prepare_context_registration_info_v70(struct intel_context *ce,
>>   		ce->parallel.guc.wqi_tail = 0;
>>   		ce->parallel.guc.wqi_head = 0;
>>   
>> -		wq_desc_offset = i915_ggtt_offset(ce->state) +
>> +		wq_desc_offset = (u64)i915_ggtt_offset(ce->state) +
>>   				 __get_parent_scratch_offset(ce);
>> -		wq_base_offset = i915_ggtt_offset(ce->state) +
>> +		wq_base_offset = (u64)i915_ggtt_offset(ce->state) +
>>   				 __get_wq_offset(ce);
>>   		info->wq_desc_lo = lower_32_bits(wq_desc_offset);
>>   		info->wq_desc_hi = upper_32_bits(wq_desc_offset);
> 
> Gentle ping,

With the current hardware this cannot overflow but I guess it doesn't 
harm to be explicitly safe. Adding some GuC folks to either r-b or add 
more candidates for review.

Regards,

Tvrtko

