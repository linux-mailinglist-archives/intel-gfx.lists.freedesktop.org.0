Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A2EA15E81
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 19:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5519310E346;
	Sat, 18 Jan 2025 18:37:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UcQHF8SM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0CDB10E3E9;
 Sat, 18 Jan 2025 18:37:15 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-21654fdd5daso55583645ad.1; 
 Sat, 18 Jan 2025 10:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737225375; x=1737830175; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=OUkm3O5VXWECV1np9LBwbOA6nOJYwN4Zdwn94mUHEP4=;
 b=UcQHF8SMxGRFGMhYTy9UDhWc/Odmx5GNTW7nPT5mMBzhA+BN0hec9AOlLVqvOgaAOi
 AmTFPqz4QxAkPv/ShnIqZdk4VP4HvprKSKUEKk26s3AmfYHhpxhWKv83dYrP+BrkiqOe
 +qrPNZ7HtTpHFu8uO+403HZcWetE6nVXOO6uKvXZdD9WtT6LroNXY5wftt9kTGRPbgj5
 6qEo8OIy7xpR+c8yzL9LSeKqA7dEyhR2LxkE9XMXa0/HDU4MQnCQcfC/qXFv1tTtl322
 GofVIBziI4yJXLW19oyq5XRm8bwv5ctlgN+FeCtUlXaJLJnTX15hjoNn+dGbo4kRfDlT
 taXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737225375; x=1737830175;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OUkm3O5VXWECV1np9LBwbOA6nOJYwN4Zdwn94mUHEP4=;
 b=gwXUsTaU6haMzbZfsn33pqLpmIc8yxkNTVDMvOFVc9XBnfKeF/cEsHtutFPobSPRoL
 UDSrlNBeklXFqfA2CT/2NrKFrVvB9T01A1kPoXD1uMh2+0Em74mdIGB29e7Dswl3uHxI
 6VXz2SnxbUeFjP/9ChClTt5yST9zVf2ZAff4Posj8nYBxEZ0t5AtO5ik6LB+d4GeGt9y
 13+Uf5jIvZcAuaHDtGx18PHIAI5NOjWHFRk9vkjumZQUNr8W+tGZk414Clr3OpGGNttT
 q2hdKgQcXKk5mxBOGO3ncJSLag8uzYLcILfRxw6z5NFNGbWaSx5mp6xMNqbuy1ldUA9b
 rXaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4OMWJXjONbsjG/vqagQW9I2H5Nxc3ziqGhJ6mzZ+5SM/Khr2nQXOe8lq9hNeBHT+2DTdvmjfP2zE=@lists.freedesktop.org,
 AJvYcCUnZ2R5fqj3nyx//nRkcj7NlC3RrvDVe9hg7yvPXFwfKntD4ZQbkK5Y2JFr3+QST3+UbHyNyAA25JA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzqmYOMe2VcH01/T7X91sXRfkeSOpBbVA0JNdD+kvPLkKVdIaS2
 v34D2z499cbNG9kEuK44Qiz7FBN1skRhieZbOrPuL44M7NrNFi5x
X-Gm-Gg: ASbGncs2g/ATGB6A21kQtacQuWsj+/KZqVLbWxIPrgOhhhdqJ1va2iisIx0vOqbm8+q
 Jj2nbkvGKqV7G0DluK1n/IUlOooT0RjktnkSF5+punR8tlCS8bO0z7RiDRu91qW1ZKF10cOhrfA
 49bqchedFB8T58cWkF5MNTXq6WE+ndXOMJaGJuVERPGG69vKswgjZ8/hqe7ACkeTgvZYwi5mjMo
 Xe+IHDU1r3M3ICuSKqZLzn9xto6hrQo68qrM0joBDzZ2N84iRbuqBbrf5sJJC2iXubxnif2TAdK
 zP9Q0ZO45Rm1GOjcIZ2jWBoyhK8rfW5AqIOEMYY+/9Y=
X-Google-Smtp-Source: AGHT+IFvMhIT4I2uX6aqedtotZAF2akdbJK4GaZEVBZp4csKoRpE4kZS3khyNby3PJHrspUSH/Y53w==
X-Received: by 2002:a05:6a20:2589:b0:1e1:9662:a6f2 with SMTP id
 adf61e73a8af0-1eb215ded51mr12411392637.35.1737225375282; 
 Sat, 18 Jan 2025 10:36:15 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72dab813295sm4012547b3a.46.2025.01.18.10.36.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2025 10:36:14 -0800 (PST)
Message-ID: <f36700c5-eb86-46c3-afd7-5d3ad67e0130@roeck-us.net>
Date: Sat, 18 Jan 2025 10:36:11 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Buiild error in i915/xe
To: David Laight <david.laight.linux@gmail.com>
Cc: David Laight <David.Laight@aculab.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 'Arnd Bergmann' <arnd@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 'Jens Axboe' <axboe@kernel.dk>, 'Matthew Wilcox' <willy@infradead.org>,
 'Christoph Hellwig' <hch@infradead.org>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 'Andy Shevchenko' <andriy.shevchenko@linux.intel.com>,
 'Dan Carpenter' <dan.carpenter@linaro.org>,
 "'Jason A . Donenfeld'" <Jason@zx2c4.com>,
 "'pedro.falcato@gmail.com'" <pedro.falcato@gmail.com>,
 'Mateusz Guzik' <mjguzik@gmail.com>,
 "'linux-mm@kvack.org'" <linux-mm@kvack.org>,
 'Lorenzo Stoakes' <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <20250118180916.433bb73c@pumpkin>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20250118180916.433bb73c@pumpkin>
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

On 1/18/25 10:09, David Laight wrote:
> On Sat, 18 Jan 2025 09:49:21 -0800
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
>> On Sat, Jan 18, 2025 at 05:09:59PM +0000, David Laight wrote:
>>> On Sat, 18 Jan 2025 08:13:06 -0800
>>> Guenter Roeck <linux@roeck-us.net> wrote:
>>>    
>>>> Hi,
>>>>
>>>> On Mon, Nov 18, 2024 at 07:13:31PM +0000, David Laight wrote:
>>>>> Use BUILD_BUG_ON_MSG(statically_true(ulo > uhi), ...) for the sanity
>>>>> check of the bounds in clamp().
>>>>> Gives better error coverage and one less expansion of the arguments.
>>>>>
>>>>> Signed-off-by: David Laight <david.laight@aculab.com>
>>>>
>>>> This patch triggers a build error when trying to build parisc:allmodconfig.
>>>> See error message and bisect log below.
>>>>
>>>> I don't think there is anything wrong with the patch. The underlying
>>>> problem seems to be that parisc:allmodconfig enables CONFIG_DRM_XE which
>>>> tries to build the affected file even though CONFIG_DRM_I915 is not
>>>> enabled/supported on parisc.
>>>
>>> This has appeared before.
>>> Any idea which inlined copy of scale() is causing the problem.
>>> On the face of it they all look ok.
>>>
>>> If you can reproduce it maybe try commenting out some of the calls.
>>>    
>>
>> See diff below. All three changes are needed.
>> No idea why the compiler would know that the values are invalid.
> 
> Maybe it isn't even an inlining issue.
> Perhaps that compiler just doesn't like the function ?
> What happens without the 'static' (and an extra prototype)?
> 


You mean like that ?

-static u32 scale(u32 source_val,
+
+u32 scale(u32 source_val,
+                u32 source_min, u32 source_max,
+                u32 target_min, u32 target_max);
+
+u32 scale(u32 source_val,
                  u32 source_min, u32 source_max,
                  u32 target_min, u32 target_max)

It doesn't help. Worse, after that change the error is still reported
even with the #if 0 elsewhere.

Guenter

