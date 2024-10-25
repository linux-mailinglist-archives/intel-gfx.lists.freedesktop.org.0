Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E749AFBD5
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B6810EA1B;
	Fri, 25 Oct 2024 08:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="czm6Rko2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A69310EA1A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 08:02:19 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-43193678216so3441705e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 01:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1729843338; x=1730448138;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dPlJ5N8S825e5O2BQezw1OUqhpDik54QuV13KXIiJRU=;
 b=czm6Rko28L4lb3UZCXucBxObn1hZHRuaMrHJeOL4cpCyYtKDVmfb2+Ygz7IJF8zhA8
 O5030eML6b72KS/dRHR3psVP2K0t+/1hkEwJVzg1qlOQ7zXQIL7ZxOhAqihHn2yD4FGx
 zXkJXdUOKgRLl+0mK35qyfhbzjn+cG/ZKFII7LJafxJjF83Hng7/KAPyvvm1NF7UYIKk
 aSTj/sG+BPqQRT9CEMCHK0TXHjnwyvVmkdCqRI+3bmS9ZNUZMEGxg6CG3i+zIkWcvtaz
 xSNYsuOpQDrlyYfLz0nSikJxHAU0mkTpUAMORdQB7KcbFPdQMZyZ+fpU724dWeRumKSQ
 TmMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729843338; x=1730448138;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dPlJ5N8S825e5O2BQezw1OUqhpDik54QuV13KXIiJRU=;
 b=aMg86ycYv/BCaiLmkqwBdSnj6pxprQ2pejD+BbkSTB2xgwJtuZ4x0GumUX1ifvLdbN
 N07FQoHnQLE4qEjOBgq9Wix1quS3Xasac/97VxslwbIykmhp/P6PeVhqmax1kD+PBQ/8
 VELY7+9g/kGUhFXKQdXQZznPQFjmetJGNravJ7RROV6h0aUI5R00hCEQXANw2Q0eJegl
 bRjEwDUvNe97NcR8+Jkr1z0ixeEL8hMuoOlgiRavusybYz/31Om2zFbY4pK02stM89dG
 5ManruuGwb+aGFPNXqx1mrq91GhAAmCNNsljKF7gAJWhWLC1z9MYHVUI2sUjYLha0hPU
 oTpg==
X-Gm-Message-State: AOJu0YwCq8tbZ9NB0IkcU17el84hszVlKFNx1OI9OhTZHVaUE25t2xrA
 OnaO8IIuoNvle91ddEDUkg5MVumO+7HQo9vC24pPVaSwqsRrO1xp4+fPVfwQg6o=
X-Google-Smtp-Source: AGHT+IEWtuq49hD78v/MTqXhzVsk0xK/u9ZnoopFrxhzSnBLA1YtiHstP5VuDN+drZzkqRsyaYw9vw==
X-Received: by 2002:a05:600c:1d96:b0:430:5356:ac8e with SMTP id
 5b1f17b1804b1-4318c6dd921mr38898375e9.5.1729843337818; 
 Fri, 25 Oct 2024 01:02:17 -0700 (PDT)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43193594ff3sm10308715e9.12.2024.10.25.01.02.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2024 01:02:17 -0700 (PDT)
Message-ID: <0e9813a8-0af6-4d06-971e-7909796bd9b5@ursulin.net>
Date: Fri, 25 Oct 2024 09:02:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
To: Matt Roper <matthew.d.roper@intel.com>, Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@intel.com,
 chris.p.wilson@intel.com, nirmoy.das@intel.com
References: <20241024103917.3231206-1-nitin.r.gote@intel.com>
 <20241024185813.GK5725@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20241024185813.GK5725@mdroper-desk1.amr.corp.intel.com>
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


On 24/10/2024 19:58, Matt Roper wrote:
> On Thu, Oct 24, 2024 at 04:09:17PM +0530, Nitin Gote wrote:
>> There is ENGINE_TRACE() macro which introduce engine name
>> with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
>> over drm_err() drm_device based logging for engine debug log.
> 
> Doesn't this just eliminate the logging completely if the driver is
> built without CONFIG_DRM_I915_TRACE_GEM?  That means that most users
> will probably get no dmesg output at all on failure now, which could
> make it harder for us to understand and debug user-reported bugs.
> 
> Of course intel_ring_submission.c only gets used for the old
> pre-execlist platforms (HSW and older) so maybe there are few enough of
> those in active usage that we don't really get too many new bug reports
> anyway?

Yeah, plus, the justification about engine name does not appear to hold, 
since the old message was printing it already. So if there is something 
more happening here under the covers please do explain it properly in 
the commit message.

Regards,

Tvrtko


> 
> Matt
> 
>>
>> v2: Bit more specific in commit description (Andi)
>>
>> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
>> ---
>>   .../gpu/drm/i915/gt/intel_ring_submission.c   | 20 +++++++++----------
>>   1 file changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>> index 32f3b52a183a..74d6a2b703ac 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>> @@ -282,16 +282,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
>>   	return 0;
>>   
>>   err:
>> -	drm_err(&engine->i915->drm,
>> -		"%s initialization failed; "
>> -		"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
>> -		engine->name,
>> -		ENGINE_READ(engine, RING_CTL),
>> -		ENGINE_READ(engine, RING_CTL) & RING_VALID,
>> -		ENGINE_READ(engine, RING_HEAD), ring->head,
>> -		ENGINE_READ(engine, RING_TAIL), ring->tail,
>> -		ENGINE_READ(engine, RING_START),
>> -		i915_ggtt_offset(ring->vma));
>> +	ENGINE_TRACE(engine,
>> +		     "initialization failed; "
>> +		     "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
>> +		     ENGINE_READ(engine, RING_CTL),
>> +		     ENGINE_READ(engine, RING_CTL) & RING_VALID,
>> +		     ENGINE_READ(engine, RING_HEAD), ring->head,
>> +		     ENGINE_READ(engine, RING_TAIL), ring->tail,
>> +		     ENGINE_READ(engine, RING_START),
>> +		     i915_ggtt_offset(ring->vma));
>> +	GEM_TRACE_DUMP();
>>   	return -EIO;
>>   }
>>   
>> -- 
>> 2.25.1
>>
> 
