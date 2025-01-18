Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9195A15EFD
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 23:00:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91A410E200;
	Sat, 18 Jan 2025 22:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V1E7OvI9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E54C910E200;
 Sat, 18 Jan 2025 22:00:39 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-2162c0f6a39so83053865ad.0; 
 Sat, 18 Jan 2025 14:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737237579; x=1737842379; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=3Ne3GvGsZRZeB7eW3PZbYk4T7r61vctfcR8YE++Oj7k=;
 b=V1E7OvI99v8Wk4QccqHWuWyJSDNhpWlvq6vULhya9ZMQrkh+t1Hdo47OlHXK1tngWT
 nC6VT+EjOwhM3GKoENz0uBdSZ8JDJBwG1I5znfmhESb8aOQOqEqGohPd9ugj3+w1VMM7
 D2Tgyb9zZxBf2gXUNbB9NZg2qyGkNJw7wfON+dKx79O7f+QVA4ZE7v4Zyj4LGD3XoeQ9
 szTZ99uAwQu8DZTvGycqay5DwBI2CJES4XOsfg1i0E2NJCwrbw47yHfefLXBio+6q+cn
 2Z3vGIHtp5I+Q1yKbfunqFSTvAMfD40ee6NcwUQ2q3w9zdzjtC9DRAflFKy2TUKJUVJ6
 hO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737237579; x=1737842379;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3Ne3GvGsZRZeB7eW3PZbYk4T7r61vctfcR8YE++Oj7k=;
 b=JPfq1C6+dtrMrrz8hd/O7oe+zqmZuAF6orAjeM/WE4GW6wS9cY60XretclUd8anhMz
 SVVaJpzUdfG+qkCnmAFCMgAKHDsVKUGVP6d/9+vK9z9r+gizg7W/qHaaEn1D8FnlcbbB
 AFXQ23iy1EhvEfoKVzyp2yZQD9iYae0ELK7VRe3MG+2BOgcbi/xxOLoIyPTAB/qxX9Fr
 gX7GtoqjK3NxyKlbp4f+9zDYl1f2TbuvdQRUYqP9qDwKLV2Z4O7tHCbsbwzXzPxj6Whv
 onwTSJlQ+nV3LpzH5nyYOnQwnwSkmW38AjFqK7CqfZrRZZ9QOhbFRT8t2HDjvMbjfgIc
 TqOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUF6V3xLtu1oaS0Cfc5KqPFeYn81GNpfYT/1wSMvDmw0EpkaZUU8dyOqqbtWsrzRtlxFKaEJF6GKyA=@lists.freedesktop.org,
 AJvYcCWjl3jQ1+K9u0+MSCZX5ESgk208bex3bqrhLB/f2U+rBj9SQyblKf/04pWYs0MbVyZYSUTtCv7BHIE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzL/AGFoCkTKTb+9u3t7NKw7ht4fzjxAywXhtqS9TJavPhQD150
 GJBwo1o7gmb+vdVGfNzn14UxMk8vMQiKdLNwjzUEvUSK8ImR793d
X-Gm-Gg: ASbGncs5PMbLxlqklSsPtPbRVfQk6ML2a++NuPc9/R4lElHFfES/21shk0J5G71TDZG
 wfzUPybiCyPdVKNlULWrzhLFM2p+hUMyLtpNO0bpuodToPN30+tQK39GNZohpdJokZa5EXXBecr
 CaMIovVqcEQaeovE1Dzf5Jlw/pjBgaVv8Pvz6zaxVnOdW+reK8jAFwfzl1JX1quAckqwW7NM5U+
 YFmy5IAmCYg9EaFaUTtpaCtbAWjz+jhgGjqekym8IMLFvRUqIhIIwjsueUDyNLsrXCUk6UNoTmW
 8+Yr/K6N5dDFI8z8KVqrd1SlEXRz+PVPiPnQhJctpTk=
X-Google-Smtp-Source: AGHT+IHR0jCsULcCpk85PAodDjiuGAKGF1gHDz804NjMyOba7VU+74+N+mWzaq9e0wXmo9MttnIwEA==
X-Received: by 2002:a17:902:ef01:b0:215:ae61:27ca with SMTP id
 d9443c01a7336-21c36ed7384mr121177955ad.26.1737237579369; 
 Sat, 18 Jan 2025 13:59:39 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21c2d4042f8sm35530375ad.236.2025.01.18.13.59.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2025 13:59:38 -0800 (PST)
Message-ID: <0f28a0b7-c24d-47d8-92f0-8957207ea309@roeck-us.net>
Date: Sat, 18 Jan 2025 13:59:36 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Buiild error in i915/xe
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: David Laight <david.laight.linux@gmail.com>,
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
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
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

On 1/18/25 13:21, Linus Torvalds wrote:
> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
>>
>> No idea why the compiler would know that the values are invalid.
> 
> It's not that the compiler knows tat they are invalid, but I bet what
> happens is in scale() (and possibly other places that do similar
> checks), which does this:
> 
>          WARN_ON(source_min > source_max);
>          ...
>          source_val = clamp(source_val, source_min, source_max);
> 
> and the compiler notices that the ordering comparison in the first
> WARN_ON() is the same as the one in clamp(), so it basically converts
> the logic to
> 
>          if (source_min > source_max) {
>                  WARN(..);
>                  /* Do the clamp() knowing that source_min > source_max */
>                  source_val = clamp(source_val, source_min, source_max);
>          } else {
>                  /* Do the clamp knowing that source_min <= source_max */
>                  source_val = clamp(source_val, source_min, source_max);
>          }
> 
> (obviously I dropped the other WARN_ON in the conversion, it wasn't
> relevant for this case).
> 
> And now that first clamp() case is done with source_min > source_max,
> and it triggers that build error because that's invalid.
> 
> So the condition is not statically true in the *source* code, but in
> the "I have moved code around to combine tests" case it now *is*
> statically true as far as the compiler is concerned.
> 

Yes, turns out I can reproduce the problem by adding WARN_ON() ahead
of similar clamp() calls (see below). However, I can only reproduce it
with gcc 13.3 for parisc. I don't see the problem with other cross compilers
(I tried arm, powerpc, and loongarch64). Compilers are weird :-(.

I am not sure what to do here. That kind of problem seems difficult
to avoid, and I am sure we will hit it again elsewhere. Should I declare
gcc 13.x off limits for parisc builds ?

Guenter

---
diff --git a/drivers/input/mousedev.c b/drivers/input/mousedev.c
index 505c562a5daa..71c0da31a9d2 100644
--- a/drivers/input/mousedev.c
+++ b/drivers/input/mousedev.c
@@ -179,6 +179,7 @@ static void mousedev_abs_event(struct input_dev *dev, struct mousedev *mousedev,
                 if (size == 0)
                         size = xres ? : 1;

+               WARN_ON(min > max);
                 value = clamp(value, min, max);

                 mousedev->packet.x = ((value - min) * xres) / size;

