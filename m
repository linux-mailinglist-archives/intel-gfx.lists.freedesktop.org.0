Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F64A97E715
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 10:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 081BA10E3A2;
	Mon, 23 Sep 2024 08:02:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="KO3ZPs8Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47C6510E3A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 08:02:49 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-42cb6f3a5bcso51974565e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 01:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1727078567; x=1727683367;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fC3Bk5dw1/gGRftPXPJ3V4u4Vjqap92J4A7d7sdxGEM=;
 b=KO3ZPs8QfEBn0LAhjh5PXt4Ph7xghAUj8nMrY4e05To3ip7Eypis6xn2bCE2ER344U
 veGatJmr/PePkZI4fXphLLN2hvLp1JMKQG2Vb/hCtrnHYRv8hjTiAw/AFHrHQgimMtJi
 VT+aZCJjxADPDKZXVO4oj+3c0zJI+HVHuqDRXI9a3EK6zPBy7cIGk/GF8Q+Pu1JqVjkv
 6reQEQfLzJDnNF1I3hQ5Whda/TGCeoOSyljaSNeguWKrROX62so2mKxxhnlTEbczISok
 ewy3j5ALM5MsWUb3twzRzVNqP/XNToHb9kch58LjWbREGilQXQtvk0MgoZ4aOhZWLN/z
 77/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727078567; x=1727683367;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fC3Bk5dw1/gGRftPXPJ3V4u4Vjqap92J4A7d7sdxGEM=;
 b=Acym8r8WnxLF8zr8FCF5LCvaOkUZav1ZZkS9O3Cu87PhksWAxuphtyJ8ZwWpxUeJK5
 AofmnoAZ1LMwU0FAn5joa+1mObSnoWkpd7EZikr70/b09ODmkxQ4C30I9R1roOUoIc9u
 5d6cn9t8LsW728CUfXrsOXlb3M1YskmPFF9k2KLpKGLPu785sb9QKgtMTb0LHW1/lBCX
 vesFnxfwimRuOthq8jHj6XgGg/cm6RNf7zLyVtD0A2xlDFWckdVsrGsdxvhX7VcyYqNX
 xMNqwNxenBSnEzke/RBHjYZVWuVY8gfr8UJEJ9nCh/B4dTcWt+vyWg2/WLsYAWtmA/B8
 /Twg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnEjASSviyWJCm3WKb1HzaSbrZUOJ+evc4GOIpl2vYyQBsmxvffp65CWUeVQqJgHUBSSufdNT6Hm8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzcuP/1wY34YIPOOEVLC/2E++R9X8vqtG7aI9Du529t6DHEqebv
 1Gr+KWU2JtZZCstpGHUk/KfZhicjPT07nNubAeQQRYYYOb1P6myhZiMF7jw8wBo=
X-Google-Smtp-Source: AGHT+IFh8B1YgLhKe+4RstOPDzr4ZktChxPzie9lMCmzjGXOU/dpCtHs6ZgyG/jWqji4/p+lC75vhw==
X-Received: by 2002:a05:600c:4ed2:b0:42c:bbd5:727b with SMTP id
 5b1f17b1804b1-42e7adc01a5mr122382395e9.25.1727078567470; 
 Mon, 23 Sep 2024 01:02:47 -0700 (PDT)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-378e780da68sm23800022f8f.111.2024.09.23.01.02.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2024 01:02:47 -0700 (PDT)
Message-ID: <1b824cfe-2006-4f5f-a34e-3496c259cd90@ursulin.net>
Date: Mon, 23 Sep 2024 09:02:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 01/12] spi: add driver for intel graphics on-die spi
 device
To: "Winkler, Tomas" <tomas.winkler@intel.com>, Mark Brown <broonie@kernel.org>
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20240916134928.3654054-1-alexander.usyskin@intel.com>
 <20240916134928.3654054-2-alexander.usyskin@intel.com>
 <ZurWk_eXSQndgA4Y@finisterre.sirena.org.uk>
 <PH7PR11MB76057D2326D436CA9749A113E5632@PH7PR11MB7605.namprd11.prod.outlook.com>
 <Zuv9qsWJQhx7rbhJ@finisterre.sirena.org.uk>
 <PH7PR11MB760505A11C7A41DAB0359184E56D2@PH7PR11MB7605.namprd11.prod.outlook.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <PH7PR11MB760505A11C7A41DAB0359184E56D2@PH7PR11MB7605.namprd11.prod.outlook.com>
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


On 21/09/2024 14:00, Winkler, Tomas wrote:
> 
> 
>>
>> On Thu, Sep 19, 2024 at 09:54:24AM +0000, Winkler, Tomas wrote:
>>>> On Mon, Sep 16, 2024 at 04:49:17PM +0300, Alexander Usyskin wrote:
>>
>>>>> @@ -0,0 +1,142 @@
>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>> +/*
>>>>> + * Copyright(c) 2019-2024, Intel Corporation. All rights reserved.
>>>>> + */
>>
>>>> Please make the entire comment a C++ one so things look more
>> intentional.
>>
>>> This is how it is required by Linux spdx checker,
>>
>> There is no incompatibility between SPDX and what I'm asking for...
>>
>>>>> +	size = sizeof(*spi) + sizeof(spi->regions[0]) * nregions;
>>>>> +	spi = kzalloc(size, GFP_KERNEL);
>>
>>>> Use at least array_size().
>>
>>> Regions is not fixed size array, it will not work.
>>
>> Yes, that's the wrong helper - there is a relevent one though which I'm not
>> remembering right now.
> 
> 
> I don't think there is one, you can allocate arrays but this is not the case here.

struct_size() probably.

Regards,

Tvrtko
