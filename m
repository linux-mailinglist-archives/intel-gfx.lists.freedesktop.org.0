Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0E1A16E37
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 15:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A5210E420;
	Mon, 20 Jan 2025 14:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MNxzRh64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70E810E421;
 Mon, 20 Jan 2025 14:15:35 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-2167141dfa1so78213535ad.1; 
 Mon, 20 Jan 2025 06:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737382535; x=1737987335; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=hbs7P0KRXwuv1V10Zh4lh9S7w+ofgDQ8sYvjMYRbtOA=;
 b=MNxzRh64cHQZhDOKTM+xAbqyxckss3fKo0uj1o2Zsf5MItt+6K+8JCXiOcDPq/gDon
 OvQK8W0556wU8Zw7ySsRLxLpDfn85m6E7YfdjQunaZryDrsZNtlL/JFC5cEluMQnOALs
 ODXNsaYmaPeBss0OFa8tkIDF4I1+bp+lmH+CRFNYs/kcBtd5vA32HV2o+iIl3xzXrhEC
 tw/lqXPlQcPK2w2hQ3Z5kSUQa0pe1GHQo56G8LwK4YGRaJJGG0WScEEWdM4w55Pj0VXq
 KpO4LJe5N/Qzp9q1GxTaVc18vNDANWow2yfBnbQr2KXE2IYdL0PWuOLuMA15vBezLBQe
 Hykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737382535; x=1737987335;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hbs7P0KRXwuv1V10Zh4lh9S7w+ofgDQ8sYvjMYRbtOA=;
 b=LWIuH46XXDm3WNOp4ZXz9w0HuTZdsyYQQ3EaBafafT2PrRXZPO7jcOSjJ9dJaTsxfS
 pggircuw1JqaOGrA6lrfOKlf1G2Z80PFOqd72yPZUhYXRWI1/CGwQx87AsEeD1XbzR5E
 HJMVcVdDpRhvumpmlVHKhGxmZHCnJRfoTPzX9Fbpon/cAvu8kPUiBnC8O5buLCLVniog
 yAJ99gyG+31esizDQNy2NLJHnOcl/cj99+BSXXJgWp6EljH77YtjNwXbPAbwa7nHuihE
 dIAC4MkCmi5bRvFr9BkNjS34lcCUoNFoKlF9rojRGZUqHOYAEAcJJEXR7HlGSFq9PQHO
 kARQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVc0AvpZ4a2BlvazAiKi3EehQmHpY4GAE0On65LzTy0ufu5h3rdYXiyhV5aQN91iLLAQ94kcukp8sw=@lists.freedesktop.org,
 AJvYcCXPL2T0ra77R8ki55wfXl4zr6h+ZdxqQSqm2sLPdmugiwwmXSwYFcTJwQAhAh3lXe+duxSPvyFY9oc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXCVVu286syaOl+kuGhSBN3ajb7AXdW+dLuIp5sebHJAsreLgO
 mbCbLEUvYLmv4LH68dQnnirNQX/WgLtvbtxJdPzwMqhnQlWvEYKh
X-Gm-Gg: ASbGncsxL8eBQ5eBB/Up9uvgwypCb/MuR04GQZh/OVHVVuCuLKHSyt3Sc3YqK51QcZ2
 ZCwLeh0Fc9+MCAfIO4m0sjjR3/mHKEYT6fGiUFuPIwSvjJvF4RNV0b8Ql0FAAATqQAfeRGj5cPv
 CcMS0R1itJwoLQ95OeHloNXScBUwS7kol1T1370q4UvrYTBixbfcyO+I5uILqFE3zi5H9VxKbBC
 VWxKqA40KGCyktd1rIxIiA0YTnHw5oJ0081qm/fTY11AzU64KuP49YzW3lbrWS59v2CF5ARg+E6
 /WI8fN0ATDnVSDuJS+fSYBLhCu+yPv9IgWaCznGUyUU=
X-Google-Smtp-Source: AGHT+IGakvEG4+weNUgNb7jbtaKWDE6yL9PlueVVnPTiFfgtdQIN3n980wpI3SZfwZLA7xzbU0MMDw==
X-Received: by 2002:a17:903:2cf:b0:21a:7e04:7021 with SMTP id
 d9443c01a7336-21c36eb3ecdmr162527005ad.24.1737382535030; 
 Mon, 20 Jan 2025 06:15:35 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21c2ceb9e7dsm61142095ad.77.2025.01.20.06.15.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2025 06:15:33 -0800 (PST)
Message-ID: <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
Date: Mon, 20 Jan 2025 06:15:30 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Buiild error in i915/xe
To: Jani Nikula <jani.nikula@linux.intel.com>,
 David Laight <david.laight.linux@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>,
 Mateusz Guzik <mjguzik@gmail.com>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin> <878qr5ras2.fsf@intel.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <878qr5ras2.fsf@intel.com>
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

On 1/20/25 03:21, Jani Nikula wrote:
> On Mon, 20 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:
>> On Mon, 20 Jan 2025 12:48:11 +0200
>> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>
>>> On Sun, 19 Jan 2025, David Laight <david.laight.linux@gmail.com> wrote:
>>>> On Sat, 18 Jan 2025 14:58:48 -0800
>>>> Guenter Roeck <linux@roeck-us.net> wrote:
>>>>   
>>>>> On 1/18/25 14:11, David Laight wrote:
>>>>>> On Sat, 18 Jan 2025 13:21:39 -0800
>>>>>> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>>>>>>      
>>>>>>> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
>>>>>>>>
>>>>>>>> No idea why the compiler would know that the values are invalid.
>>>>>>>
>>>>>>> It's not that the compiler knows tat they are invalid, but I bet what
>>>>>>> happens is in scale() (and possibly other places that do similar
>>>>>>> checks), which does this:
>>>>>>>
>>>>>>>           WARN_ON(source_min > source_max);
>>>>>>>           ...
>>>>>>>           source_val = clamp(source_val, source_min, source_max);
>>>>>>>
>>>>>>> and the compiler notices that the ordering comparison in the first
>>>>>>> WARN_ON() is the same as the one in clamp(), so it basically converts
>>>>>>> the logic to
>>>>>>>
>>>>>>>           if (source_min > source_max) {
>>>>>>>                   WARN(..);
>>>>>>>                   /* Do the clamp() knowing that source_min > source_max */
>>>>>>>                   source_val = clamp(source_val, source_min, source_max);
>>>>>>>           } else {
>>>>>>>                   /* Do the clamp knowing that source_min <= source_max */
>>>>>>>                   source_val = clamp(source_val, source_min, source_max);
>>>>>>>           }
>>>>>>>
>>>>>>> (obviously I dropped the other WARN_ON in the conversion, it wasn't
>>>>>>> relevant for this case).
>>>>>>>
>>>>>>> And now that first clamp() case is done with source_min > source_max,
>>>>>>> and it triggers that build error because that's invalid.
>>>>>>>
>>>>>>> So the condition is not statically true in the *source* code, but in
>>>>>>> the "I have moved code around to combine tests" case it now *is*
>>>>>>> statically true as far as the compiler is concerned.
>>>>>>
>>>>>> Well spotted :-)
>>>>>>
>>>>>> One option would be to move the WARN_ON() below the clamp() and
>>>>>> add an OPTIMISER_HIDE_VAR(source_max) between them.
>>>>>>
>>>>>> Or do something more sensible than the WARN().
>>>>>> Perhaps return target_min on any such errors?
>>>>>>      
>>>>>
>>>>> This helps:
>>>>>
>>>>> -       WARN_ON(source_min > source_max);
>>>>> -       WARN_ON(target_min > target_max);
>>>>> -
>>>>>           /* defensive */
>>>>>           source_val = clamp(source_val, source_min, source_max);
>>>>>
>>>>> +       WARN_ON(source_min > source_max);
>>>>> +       WARN_ON(target_min > target_max);
>>>>
>>>> That is a 'quick fix' ...
>>>>
>>>> Much better would be to replace the WARN() with (say):
>>>> 	if (target_min >= target_max)
>>>> 		return target_min;
>>>> 	if (source_min >= source_max)
>>>> 		return target_min + (target_max - target_min)/2;
>>>> So that the return values are actually in range (in as much as one is defined).
>>>> Note that the >= cpmparisons also remove a divide by zero.
>>>
>>> I want the loud and early warnings for clear bugs instead of
>>> "gracefully" silencing the errors only to be found through debugging
>>> user reports.
>>
>> A user isn't going to notice a WARN() - not until you tell them to look for it.
>> In any case even if you output a message you really want to return a 'sane'
>> value, who knows what effect a very out of range value is going to have.
> 
> The point is, we'll catch the WARN in CI before it goes out to users.
> 

It isn't going to catch the divide by 0 error, and it obviously doesn't
catch the build problem on parisc with gcc 13.x because the CI isn't
testing it.

How about disabling DRM_XE on architectures where it isn't supported,
matching DRM_I915 ?

Thanks,
Guenter

