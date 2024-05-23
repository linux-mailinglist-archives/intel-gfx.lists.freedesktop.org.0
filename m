Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E38CD1CE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 14:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E13D10E1B7;
	Thu, 23 May 2024 12:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="GW+xIX3O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B7510E1B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:07:27 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-351d309bbecso5043963f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 05:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1716466046; x=1717070846;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3eNHeNryBK8p7xTgnO1zIJAEL4hJ5+B2FVSnyYQrZ9M=;
 b=GW+xIX3OoFiUZfnL7fTldIzHqesVKPHBYYtU3PiqUvUuVLI3JEXozEeYAvKQ+Ll4Hy
 b5tgG9nM3gRYDh02csvU/mJBqPibiXbWMSyUkM1R8qw3LavblUcF/zO4Ud8pV89nrhLY
 huopbrm+7uafn+UmzZswvNwnN5b2EQ/RS496lUcRtvWuwePJ9pSEPrtvkPJTifDoNMVb
 EqZu6HsHNUE8HWx1AmjjQcqmJjOYubARHig6X4YouxMXsrJAsfb8ZSbxNjuQfs3XHZeg
 p4cF0upZQnGb50b1twRo73AGxyVxm9OG9yp9cZ2YnWPUWkBRE2I9PJcBJ8vQlZPEk6y1
 UjPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716466046; x=1717070846;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3eNHeNryBK8p7xTgnO1zIJAEL4hJ5+B2FVSnyYQrZ9M=;
 b=ZlToNLD3iMZh/PkEMcTEha+NCpb8E5G2eNmXjfr9hjFowKeZTFaXLWZIaMoeOzYVNf
 B78MAYK53COn2deF7U1m1h+1mtZ5NJ6e6T2UcGHqcX1tSA4bGwV2Cxva1XWjkLI0LqOK
 ISnR4mO6/SPpHVVKpew56x801TkzUmD3lcwacuVyPXkR5nQQADb7i62gU0YPPB9puASA
 U+t84F0P/FMBEj8o+QxeNIGO/87yk1af/bPpg0GEp39zXaDfO82foXE1MEqhKYRiX1Xf
 83QATiezjygZ9D3WJ7OwuDf1Rl7BhUWLg9mSgIoXtocljgxIGXpIXtwhQ5w6+bd9jQbg
 IugA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0w6Y9eMCc15+Rl9JaLEXS8FmROF1cZWmOpFL6LYB5sqpcNJzwbh8K4Uz+6hVvjwNEjOMXnF7gZfcItjmP2ac6GPwvfg4NE3KoEwMaf/Xp
X-Gm-Message-State: AOJu0Yx8BOyr/ZcadEDaQB8txudvIdtGxdL1/AcQgwIMmIj0ygK7nTOq
 7cnALKV6SZCoGGbXj/uElfj2seBQUC7hTewalonMOmRAIPpFvNr2dtAu/iSWf0E=
X-Google-Smtp-Source: AGHT+IELmGdsUzvYFgU56NQigjF6vuQEjjnXTJgyqhD5TiZb4O2YPbv5NJxZ2TnZBCgqYfN7OCz/UA==
X-Received: by 2002:a5d:6446:0:b0:34f:c7c8:5a12 with SMTP id
 ffacd0b85a97d-354d8ce454dmr5009741f8f.40.1716466045651; 
 Thu, 23 May 2024 05:07:25 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502bbbbff7sm36449649f8f.101.2024.05.23.05.07.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 May 2024 05:07:25 -0700 (PDT)
Message-ID: <0f459a5b-4926-40ea-820e-ab0e5516a821@ursulin.net>
Date: Thu, 23 May 2024 13:07:24 +0100
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
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <Zk8mM0bh5QMGcSGL@intel.com>
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


On 23/05/2024 12:19, Ville Syrjälä wrote:
> On Thu, May 23, 2024 at 09:25:45AM +0100, Tvrtko Ursulin wrote:
>>
>> On 22/05/2024 16:29, Vidya Srinivas wrote:
>>> In some scenarios, the DPT object gets shrunk but
>>> the actual framebuffer did not and thus its still
>>> there on the DPT's vm->bound_list. Then it tries to
>>> rewrite the PTEs via a stale CPU mapping. This causes panic.
>>>
>>> Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
>>> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index 3560a062d287..e6b485fc54d4 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
>>>    static inline bool
>>>    i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>>>    {
>>> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
>>> +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
>>> +		!obj->is_dpt;
>>
>> Is there a reason i915_gem_object_make_unshrinkable() cannot be used to
>> mark the object at a suitable place?
> 
> Do you have a suitable place in mind?
> i915_gem_object_make_unshrinkable() contains some magic
> ingredients so doesn't look like it can be called willy
> nilly.

After it is created in intel_dpt_create?

I don't see that helper couldn't be called. It is called from madvise 
and tiling for instance without any apparent special considerations.

Also, there is no mention of this angle in the commit message so I 
assumed it wasn't considered. If it was, then it should have been 
mentioned why hacky solution was chosen instead...

> Anyways, looks like I forgot to reply that I already pushed this
> with this extra comment added:
> /* TODO: make DPT shrinkable when it has no bound vmas */

... becuase IMO the special case is quite ugly and out of place. :(

I don't remember from the top of my head how DPT magic works but if 
shrinker protection needs to be tied with VMAs there is also 
i915_make_make(un)shrinkable to try.

Regards,

Tvrtko
