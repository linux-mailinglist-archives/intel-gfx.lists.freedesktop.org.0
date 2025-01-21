Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99452A17724
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 06:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD51B10E4C5;
	Tue, 21 Jan 2025 05:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TKwSbZrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BB610E4C4;
 Tue, 21 Jan 2025 05:58:28 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-216728b1836so87705685ad.0; 
 Mon, 20 Jan 2025 21:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737439108; x=1738043908; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=gf7BTqhynulFlNvhIKJUIKF0QGOZDxgKInp8xKSEew0=;
 b=TKwSbZrn+XH+YtaAtv1gm614OMbOU7EIlFvLXvnm2yoQF0gfz0xvbqDjmdVRbulUdE
 ww/rcO4lEXsI9Xowp7+pspM1LyqOoahkbV7nyYUXNS6dHmTv/rX1qSAAnbgP/joyyxbB
 dLWxA/xifgbi/oclJ69zcvjU7CdEIzzOUyTxnq/Pmyx7SEd7tbop3IoU6qr6nHG+4W2t
 y5AeoC3T6VL6VQddeM3+6KDbbk8HDxS643ks5Kdhvnve8KJTiP0ne8roUMwrX5qCFYsC
 DOSN8p5y9a3cAixWmk9X0waRvzxKJZUtheh1pFvpYptgPw4P7V/edUCgA1/ho7OSlkGy
 s1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737439108; x=1738043908;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gf7BTqhynulFlNvhIKJUIKF0QGOZDxgKInp8xKSEew0=;
 b=fQirpd6H0oBbs1hBhCHZmcp+oKZzdESp8gVbz8Pc+mx3/elHPuNjI5WmxBQ/hy5sgq
 4LnwjKjOvCIJG19qR+YW7VP0YyMdrcqQw5j+TKoaYX+lj5fta0jsAtualLJykAVDRdHT
 W4yFShdcoQc2ASxr79voz12abxaywyqZ8nees0Uzogh9tQV397St4SY1beGgvjMRUxBA
 FkDOKJBEzoIM0S8K5Zz5CeghH9mJAaWIfGngsg0PTG0kPXl+HhLCVO9saqumTRQ0ZcUG
 5qvqHV2SZClB/dVgJ6mfK8oTdCzEZ0przx/SbEZ5kvk0Dd+omDmvPDlmPzTiC8KsAmd0
 kCkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnNewRZ4hHir/9LCO5aJVy31fo1XX+EbXIfldZ3sQ0sckh83l+eJRIUD0s7scRuoAtz+bLaocfJuo=@lists.freedesktop.org,
 AJvYcCXI5QHf7zI4KBtWn/OHSQNliAdGyvs+aNBhuLbnH98M1EiHmQNkt4ub5tCxh3zCYlsx2giki11Rp0k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwDcUh7y9URfvgBSczeu25NMeJHzK1CRFGSPyWHKXBcMoKv88cc
 tPBbp6Ed2teYT1TSQbmEye0F5sFE6YJDTxXuf7ynmlJGv0PDDBFR
X-Gm-Gg: ASbGnct3nF2t7S19NM6GPlisBC8qgJJzxq2o+JJEJjVJSfFgOB9zTzMRzWqEbNyeGaN
 yNvDZyzvhzyOu6QXBVoumlpgivEoqEzFMW8V6pthRfS6f0Q3ldC8Z5Ro6cH3LrqQzPlajVPU2RR
 HkxkiSaNStyZG7Gn/BVMVahxmw7FDtthiKVjIGFckBYPbf5W/v6tOx0LYwn11hMIhMDRkbie4Ww
 QxgHaZXe01PxZmOqOkNt7d827WE76QP6Y/JuRefGjBbSbFe4d+X389fDr6mr7P+tj90UzzcRnH1
 tXzSpqCMYKbc0eWfj2HOe3yzw5gRU/D+hKeNKAE2LAc=
X-Google-Smtp-Source: AGHT+IEmD+PLXN9nGshymvI8pZzDavtDT8AQK4+DovovAQNvIewFqB/kXP7iVm8P87Ljs7TkRBUH/g==
X-Received: by 2002:a17:902:ea03:b0:215:b33b:e26d with SMTP id
 d9443c01a7336-21c3550c5d3mr262719185ad.21.1737439107609; 
 Mon, 20 Jan 2025 21:58:27 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21c2ceba740sm69919465ad.79.2025.01.20.21.58.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2025 21:58:26 -0800 (PST)
Message-ID: <94e15b07-bc0c-4c14-8dc7-d488491b42c9@roeck-us.net>
Date: Mon, 20 Jan 2025 21:58:24 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Buiild error in i915/xe
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: David Laight <david.laight.linux@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>,
 Mateusz Guzik <mjguzik@gmail.com>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin> <878qr5ras2.fsf@intel.com>
 <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
 <20250120184143.47615b21@pumpkin> <Z46cJiyntl9eyXTI@smile.fi.intel.com>
 <CAHk-=wgYPBhMvCJHFVo=dr=2RhVxKwEf+SLQEBVhANoY_bUk2A@mail.gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <CAHk-=wgYPBhMvCJHFVo=dr=2RhVxKwEf+SLQEBVhANoY_bUk2A@mail.gmail.com>
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

On 1/20/25 11:14, Linus Torvalds wrote:
> On Mon, 20 Jan 2025 at 10:55, Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
>>
>> Excuse me if I am missing something, but clamp() has a warning inside it, correct?
>> Why do we need an additional warning on top of that?
> 
> Note: the warning in clamp() only finds compile-time obvious wrong uses.
> 
> It's really meant to notice the trivial case where you clam with
> constants and just got the order wrong, so you do something silly like
> 
>      res = clamp(in, 15, 1);
> 
> but it does also end up catching slightly more complex things where
> the compiler can figure out the range of the clamping.
> 
> The build problem then comes from the compiler doing various *other*
> code movem,ent and optimization too, and - like in this case - finds
> an error path where the clamping is done "wrong".
> 
> I think the real issue in the i915 driver is that it does that
> WARN_ON(), but then it just happily continues anyway.
> 
> So if the i915 driver instead did
> 
>          if (WARN_ON(..)) return invalid value;
> 
> none of this would ever have happened.
> 

I'll take a stab and send a patch combining your and David's suggestions.

Guenter



