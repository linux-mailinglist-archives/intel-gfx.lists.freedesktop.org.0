Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBCB8CD367
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B1710E211;
	Thu, 23 May 2024 13:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="sfrs5tZ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ABE310E560
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:14:59 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-4200ee78f34so18253555e9.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 06:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1716470097; x=1717074897;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ElmXxnz32RpQCAO/NAAwTiLr8wz0mgoU3tNFVcIdneo=;
 b=sfrs5tZ6Cogr5NtKuUTGBGF3/VL0xQ7VmdjFbNiQngadXJLpqJDu1e3/0kfkzp5/tr
 vD3z6cfTen3dWKW8Ob2Wfm5hTBu3ixVJHV3V+/1b1OqqMxL8Q32pX81JTQTYrFWNvgf7
 k4Qk1lRGR5SeAx7zWAnYd3r1X+dobJQFa/oTfz/kqVuZcWF1kdRgyBIIs1Fa/RtXF/eQ
 8rH++o/hxy+Mvh7VrFh7DMGt0v7cLFoH9J91eDkttnEPkQUbB7x0TC4YnMHcZYpaLahw
 fqkkqpc3/hMe1idAAmsITMNliwyjR8Ust4fymSRlC6pJYBaCxykxRi/RmFgktwgyEZMH
 u2ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716470097; x=1717074897;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ElmXxnz32RpQCAO/NAAwTiLr8wz0mgoU3tNFVcIdneo=;
 b=BIGiwYZLnkm4SQRMeZPqPtKpF/NPv1Iiykx3+RhL78RDirVjJIXYve8UKfVLFPo8a+
 0mbfKR5B3soOcTiFaLTfDPiWoy/KAwSXS5I2eEDLXya0vjDn1eUUXsRiA9YXbpeFmbYk
 IcdyiUnpA31FB85HhIrIuT5qKJYo+op1+Jn/bP6xOadAl/QRmKF1d0Xuaf80KjKKTxo9
 f9P6DDEkIEOav4fGYytaAvLy7CdE307JAl52jhHh0wBiCkd+7XGhy9/X6Bmo+mOLtXmN
 vUVsGIKib4Cunb3JfLflgsmvrG0vXNUjrPajWs0eG0JuPrlQFeWwcnWLN2THfX2xCb4N
 +R3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZFQJhjZ3BVISfzAMDSEkn3/Mov/QEmcSKdV2nWju4GzRUueY+0aRyG3hV5IQkV5+51wiU+PWJOEkJ6OvkvB2uBC7v4lFg6MkKIp2aXN9+
X-Gm-Message-State: AOJu0Yxtjz4UVxyjcQkbxzgKXCSNhXKJ0MT6OXW5/CZW/IMn6yrUPowK
 Cr88i3REX1IVa3rgrItzHAyq/Qfh0JvsYmnZbUVnKMJ1Q4z9QO84tLrg/92l0pAqGBFdFspeTjS
 g
X-Google-Smtp-Source: AGHT+IGMZ8pk3znmuF66zoIYGQdLwGoVs7oLIhbyi+fIHlZWEzfthamohI7z5rgTKtbguNe8v+EKTQ==
X-Received: by 2002:a05:600c:295:b0:41f:e10f:889a with SMTP id
 5b1f17b1804b1-420fd2f1504mr36811355e9.7.1716470097510; 
 Thu, 23 May 2024 06:14:57 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42100f5d189sm25591595e9.24.2024.05.23.06.14.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 May 2024 06:14:57 -0700 (PDT)
Message-ID: <44eefd9c-4086-45a9-b555-d5d201d27a57@ursulin.net>
Date: Thu, 23 May 2024 14:14:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 intel-gfx@lists.freedesktop.org, shawn.c.lee@intel.com,
 stable@vger.kernel.org
References: <20240520165634.1162470-1-vidya.srinivas@intel.com>
 <20240522152916.1702614-1-vidya.srinivas@intel.com>
 <5e5660ac-e14b-4759-a6f6-38cc55d37246@ursulin.net>
 <Zk8mM0bh5QMGcSGL@intel.com>
 <0f459a5b-4926-40ea-820e-ab0e5516a821@ursulin.net>
 <Zk81eDBUlz_axOn4@intel.com>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <Zk81eDBUlz_axOn4@intel.com>
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


On 23/05/2024 13:24, Ville Syrjälä wrote:
> On Thu, May 23, 2024 at 01:07:24PM +0100, Tvrtko Ursulin wrote:
>>
>> On 23/05/2024 12:19, Ville Syrjälä wrote:
>>> On Thu, May 23, 2024 at 09:25:45AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 22/05/2024 16:29, Vidya Srinivas wrote:
>>>>> In some scenarios, the DPT object gets shrunk but
>>>>> the actual framebuffer did not and thus its still
>>>>> there on the DPT's vm->bound_list. Then it tries to
>>>>> rewrite the PTEs via a stale CPU mapping. This causes panic.
>>>>>
>>>>> Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
>>>>> Cc: stable@vger.kernel.org
>>>>> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
>>>>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
>>>>>     1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>>> index 3560a062d287..e6b485fc54d4 100644
>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>>>> @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
>>>>>     static inline bool
>>>>>     i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>>>>>     {
>>>>> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
>>>>> +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
>>>>> +		!obj->is_dpt;
>>>>
>>>> Is there a reason i915_gem_object_make_unshrinkable() cannot be used to
>>>> mark the object at a suitable place?
>>>
>>> Do you have a suitable place in mind?
>>> i915_gem_object_make_unshrinkable() contains some magic
>>> ingredients so doesn't look like it can be called willy
>>> nilly.
>>
>> After it is created in intel_dpt_create?
>>
>> I don't see that helper couldn't be called. It is called from madvise
>> and tiling for instance without any apparent special considerations.
> 
> Did you actually read through i915_gem_object_make_unshrinkable()?

Briefly, and also looked around how it is used. I don't immediately 
understand which part concerns you and it is also quite possible I am 
missing something.

But see for example how it is used in intel_context.c+intel_lrc.c to 
protect the context state object from the shrinker while it is in use by 
the GPU. It does not appear any black magic is required.

Question also is does that kind of lifetime aligns with the DPT use case.

>> Also, there is no mention of this angle in the commit message so I
>> assumed it wasn't considered. If it was, then it should have been
>> mentioned why hacky solution was chosen instead...
> 
> I suppose.
> 
>>
>>> Anyways, looks like I forgot to reply that I already pushed this
>>> with this extra comment added:
>>> /* TODO: make DPT shrinkable when it has no bound vmas */
>>
>> ... becuase IMO the special case is quite ugly and out of place. :(
> 
> Yeah, not the nicest. But there's already a is_dpt check in the
> i915_gem_object_is_framebuffer() right next door, so it's not
> *that* out of place.

I also see who added that one! ;)

> Another option maybe could be to manually clear
> I915_GEM_OBJECT_IS_SHRINKABLE but I don't think that is
> supposed to be mutable, so might also have other issues.
> So a more proper solution with that approach would perhaps
> need some kind of gem_create_shmem_unshrinkable() function.
> 
>>
>> I don't remember from the top of my head how DPT magic works but if
>> shrinker protection needs to be tied with VMAs there is also
>> i915_make_make(un)shrinkable to try.
> 
> I presume you mistyped something there.

Oops - i915_vma_make_(un)shrinkable.

Anyway, I think it is worth giving it a try if the DPT lifetimes makes 
it possible.

Regards,

Tvrtko
