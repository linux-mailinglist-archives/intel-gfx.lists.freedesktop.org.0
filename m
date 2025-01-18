Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A70FA15F1C
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 23:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC0210E067;
	Sat, 18 Jan 2025 22:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bmiQ0RhO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B388E10E03A;
 Sat, 18 Jan 2025 22:59:52 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-2f4409fc8fdso5185818a91.1; 
 Sat, 18 Jan 2025 14:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737241132; x=1737845932; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=goIKprkrXsgrvS8QcA3cJhQra+LVh/2fvPoXDZi8Bv4=;
 b=bmiQ0RhOFLNgUO7VIEkz6FllynOK6QbfpTFqmYJ/IhjBe6vIBkekmnaBTuTUXfY/Ay
 hrnHbTqGbxLx82hHw5vuJD9HnXZdTYE6Ze8JpM4dBnjYsV48VaRKBtcPyXuMn5uWJOM6
 Qwv6hoFORACBWCLwBMgfsc9KONof5phqZbsPUo6Vh3zDevAXfTPeb83x1fiOxt0I1xm7
 cg9sutw98E6b9UAmOC30V4/hUO4G7TYbiqet0edhdxvBja/VAjGORGCeieg1AIodsxDU
 vHMUe5UUsAx7TGsWkiRcd3xBdFiaA7q4GFNkMV3VWpqK07s+sH2yWN0233QgVzlHMbXJ
 8HOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737241132; x=1737845932;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=goIKprkrXsgrvS8QcA3cJhQra+LVh/2fvPoXDZi8Bv4=;
 b=PeW8v5/mXUrd8ZZFMaJg4s5yENN75m2m8b6tSj+2soKaEyLe2s3lpn9VPnM2PUGGsH
 JU16arjyabDZNuxTR6BMBgf2jeowvqDqq+NcwOybc1jKTLfiDqT69gyq8k8hI7dUQy8y
 vMExpKT3x59H6dukOjci4mRS6QBCRpXrU2jz32RMP6/t0aoSn3t2s9cEKwkvFccYzbph
 0oCB8cIcPU7gdAWvKmdon3oP6046XjCfa9V8y/kgG3djEpcoZxyG4saP/VHLYW2dkgNW
 XmknyTKHVO1a94GOrf4TEe55xdvy38sxx+DEtCI+tQQA46Zr3GAO3jk/6yve1paihqsa
 Z7hQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvDcGDI2y9GXegHkmq2c8wcLSBL2LXRABGKfh9CKEfbbDDLX/EpwI7ceecaimKiwje/d4KfQkkeTM=@lists.freedesktop.org,
 AJvYcCVaD9c1UGq09PDz6U9kk/G8Jvg2ILba8dtLm+emhU3pGQJ1A1e47ccdXGjbMQSMP6jEZqDeZdpXGR4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YztE0ubXCYo13HUSP13UicCWH6WOuF4ARr4QzzcDT6n/X6oZdu2
 hFG5AVq6GikHs0yYFEX/wN+YsN3IiVQA8d5umb4VoFmWVWVlM6jl
X-Gm-Gg: ASbGncvMnbkTkk7vxbEMsGL/UVoFuyZa37+PtOOg3f0wn5F5uBTxMkUIjyuNE2vycNr
 3Hp5gwIX4bI8XYuoSYdmYPGKjmltCL446LoIDAVEaHyB5WqELhORHK3gdbCjRKvcq6we+f4eaqV
 hZ9PCKQqcUUQHPSBsIBpkcP4BRSWhW7dvWtRXDb9N9gPD9QVbfBXBhPRCOJJIAJopKzF6Gn/g/H
 Cst94/hi1u7OhtPSsvji5Vb04lUklIolZ9v39jSacLElitzaF/98D5x7ZLq+ZI059N5FU4jlJPB
 cktSTTjqu/qMpatFUge8MfE8i+kBqWf5zloGyypNVns=
X-Google-Smtp-Source: AGHT+IH303BT5WaA+8f8huM5IxT5Wt1n86aYLTkaQoKgBnAEFRmxyzF9aYvp/Izw1Pahd9uGK8F/zw==
X-Received: by 2002:a17:90b:53ce:b0:2ee:cbd0:4910 with SMTP id
 98e67ed59e1d1-2f782beed8bmr11580165a91.1.1737241132187; 
 Sat, 18 Jan 2025 14:58:52 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2f77611f0a0sm4617706a91.6.2025.01.18.14.58.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2025 14:58:51 -0800 (PST)
Message-ID: <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
Date: Sat, 18 Jan 2025 14:58:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Buiild error in i915/xe
To: David Laight <david.laight.linux@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>,
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
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20250118221123.5bb65e64@pumpkin>
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

On 1/18/25 14:11, David Laight wrote:
> On Sat, 18 Jan 2025 13:21:39 -0800
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
>> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
>>>
>>> No idea why the compiler would know that the values are invalid.
>>
>> It's not that the compiler knows tat they are invalid, but I bet what
>> happens is in scale() (and possibly other places that do similar
>> checks), which does this:
>>
>>          WARN_ON(source_min > source_max);
>>          ...
>>          source_val = clamp(source_val, source_min, source_max);
>>
>> and the compiler notices that the ordering comparison in the first
>> WARN_ON() is the same as the one in clamp(), so it basically converts
>> the logic to
>>
>>          if (source_min > source_max) {
>>                  WARN(..);
>>                  /* Do the clamp() knowing that source_min > source_max */
>>                  source_val = clamp(source_val, source_min, source_max);
>>          } else {
>>                  /* Do the clamp knowing that source_min <= source_max */
>>                  source_val = clamp(source_val, source_min, source_max);
>>          }
>>
>> (obviously I dropped the other WARN_ON in the conversion, it wasn't
>> relevant for this case).
>>
>> And now that first clamp() case is done with source_min > source_max,
>> and it triggers that build error because that's invalid.
>>
>> So the condition is not statically true in the *source* code, but in
>> the "I have moved code around to combine tests" case it now *is*
>> statically true as far as the compiler is concerned.
> 
> Well spotted :-)
> 
> One option would be to move the WARN_ON() below the clamp() and
> add an OPTIMISER_HIDE_VAR(source_max) between them.
> 
> Or do something more sensible than the WARN().
> Perhaps return target_min on any such errors?
> 

This helps:

-       WARN_ON(source_min > source_max);
-       WARN_ON(target_min > target_max);
-
         /* defensive */
         source_val = clamp(source_val, source_min, source_max);

+       WARN_ON(source_min > source_max);
+       WARN_ON(target_min > target_max);

Guenter

