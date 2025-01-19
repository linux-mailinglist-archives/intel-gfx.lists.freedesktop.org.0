Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9961BA17EE1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB7410E5C6;
	Tue, 21 Jan 2025 13:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z0osBaiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70EF10E008;
 Sun, 19 Jan 2025 09:09:38 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-436202dd7f6so39512055e9.0; 
 Sun, 19 Jan 2025 01:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737277777; x=1737882577; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GpRQfPo+dIVvMcJc83bhcvAD0N42aVYCbsSTsOGPCsU=;
 b=Z0osBaiuBhp5KHx2oe9WN6QMMxCXIcUft1IXLuecykWgPwOu496sDGGz30FSyH0Nnh
 QPQ82hWjlset0bNsF13T3ENi7PuMR2IXz2IGluhkrcYboRa1sPOF/XSi0pqMQOF+cgHs
 DiBkGqbwFnuLFvFiMXwU/Zh5Ytt8Op7N+5jwxPwtmNoflDgXYPgBbDjXtdgqKb5luZqc
 7VYkFkRbRkxqCde1eZaqemsF0Ltk/ZMGBrwPgcNeoTlVFdQ2OdBLU4JAgDL4/ZkUjZye
 ZbBOKQdO9LP5WPEbRSt0U1sS2ASxJrCjn0xA1lzTITjnSzIwtj6kBkWhpN5t5eGjVOb6
 bljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737277777; x=1737882577;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GpRQfPo+dIVvMcJc83bhcvAD0N42aVYCbsSTsOGPCsU=;
 b=s35bb2rN/eXn534hbY26AK2B98gD1IJh2K5gPzxBqu2KV8/rcLTNg4YxxshAWaoV35
 e7GAfUOHgvrMb5LTwN4zqY6XU7R8z1wE3h2KEv03FVpjaOY3QjwgKMlnIqlxDrIu2Ngq
 K9fscmPtJq+MFffL6H+tlR41UbXS75GQL8S5GkPDFU3+fF9BMmU9+xtDlavg1UlHD0or
 9f7a80PrhWaISi+hdxe4EiNGs52PwvyORTLXXNGPhFGtxQHgxMaLlE54fjA0mLGQwl3A
 jvu/OJanhd4wMFDFdCAsDNmk7FwdVIV1qmg6rQUcbhRPNAqEUuAsN4GlApdMY+zygWVz
 Pdsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDFwpAI4pVoMkqwWGzVw7Vuo6nwNxElvBKI5GTkkBXEorzxth2jjlZuH5E0b4GZ4ZUZl84ek18MRc=@lists.freedesktop.org,
 AJvYcCUMz3BcxifhDt55NTquG/kWIG04Hb6uFxDoDOwwILadwXGby5FbSsHp7LJkfvFoXN938xDVU0u5GME=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwZCjL3pmwfNyYvDtImlU25AP8wG+wonEkJVk2e07HtBgky7U/C
 kGDyGmxhwhL2zrIHs4Un2xbx2j2Dzta0trduGIezKQ6xylz3R5RN
X-Gm-Gg: ASbGnct7HDnym4+PpJ6LzBQvD4uFm7zi42WAT62AYRQJyWv3n3AudJa0uV2o7n1cON9
 bGC74QBcCApoZMrMiQpGoldkdvK0HGitTqBt2Xs5DWw9XCc2EqMHKy+cEk9qf2HtVvblriSoKG+
 B80+Skxpw2Kj9jmX1FhPlJaqP4AdBUwt3AgvzcMDjTBZwHYA+XUDxXpmbJDJ5tL+/UCWZJ0z28r
 aMYX9zRHEUwO1a3ODj3mv/tiEhmLdfs1vGoXknx3FJsbrMgjPb11240ifZvcKGfh0fOOqq7vqOm
 EBweV2Tj120f45gQH/8I1sYvDL3wUXSv
X-Google-Smtp-Source: AGHT+IEuKIzgPC9hm5HdrQMLOvk5XY5pw6JdVTD0sbRLPHCvA9Cnqc+BT5boheqzFsu1pqtmM2wImg==
X-Received: by 2002:a05:600c:3b02:b0:434:a781:f5d5 with SMTP id
 5b1f17b1804b1-4389143ba53mr84319045e9.30.1737277777068; 
 Sun, 19 Jan 2025 01:09:37 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-437c75298adsm156216465e9.30.2025.01.19.01.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jan 2025 01:09:36 -0800 (PST)
Date: Sun, 19 Jan 2025 09:09:35 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, David Laight
 <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jens Axboe
 <axboe@kernel.dk>, Matthew Wilcox <willy@infradead.org>, Christoph Hellwig
 <hch@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Dan Carpenter
 <dan.carpenter@linaro.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>, Mateusz Guzik
 <mjguzik@gmail.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>, Lorenzo
 Stoakes <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: Buiild error in i915/xe
Message-ID: <20250119090935.7c690f85@pumpkin>
In-Reply-To: <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 21 Jan 2025 13:31:29 +0000
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

On Sat, 18 Jan 2025 14:58:48 -0800
Guenter Roeck <linux@roeck-us.net> wrote:

> On 1/18/25 14:11, David Laight wrote:
> > On Sat, 18 Jan 2025 13:21:39 -0800
> > Linus Torvalds <torvalds@linux-foundation.org> wrote:
> >   
> >> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:  
> >>>
> >>> No idea why the compiler would know that the values are invalid.  
> >>
> >> It's not that the compiler knows tat they are invalid, but I bet what
> >> happens is in scale() (and possibly other places that do similar
> >> checks), which does this:
> >>
> >>          WARN_ON(source_min > source_max);
> >>          ...
> >>          source_val = clamp(source_val, source_min, source_max);
> >>
> >> and the compiler notices that the ordering comparison in the first
> >> WARN_ON() is the same as the one in clamp(), so it basically converts
> >> the logic to
> >>
> >>          if (source_min > source_max) {
> >>                  WARN(..);
> >>                  /* Do the clamp() knowing that source_min > source_max */
> >>                  source_val = clamp(source_val, source_min, source_max);
> >>          } else {
> >>                  /* Do the clamp knowing that source_min <= source_max */
> >>                  source_val = clamp(source_val, source_min, source_max);
> >>          }
> >>
> >> (obviously I dropped the other WARN_ON in the conversion, it wasn't
> >> relevant for this case).
> >>
> >> And now that first clamp() case is done with source_min > source_max,
> >> and it triggers that build error because that's invalid.
> >>
> >> So the condition is not statically true in the *source* code, but in
> >> the "I have moved code around to combine tests" case it now *is*
> >> statically true as far as the compiler is concerned.  
> > 
> > Well spotted :-)
> > 
> > One option would be to move the WARN_ON() below the clamp() and
> > add an OPTIMISER_HIDE_VAR(source_max) between them.
> > 
> > Or do something more sensible than the WARN().
> > Perhaps return target_min on any such errors?
> >   
> 
> This helps:
> 
> -       WARN_ON(source_min > source_max);
> -       WARN_ON(target_min > target_max);
> -
>          /* defensive */
>          source_val = clamp(source_val, source_min, source_max);
> 
> +       WARN_ON(source_min > source_max);
> +       WARN_ON(target_min > target_max);

That is a 'quick fix' ...

Much better would be to replace the WARN() with (say):
	if (target_min >= target_max)
		return target_min;
	if (source_min >= source_max)
		return target_min + (target_max - target_min)/2;
So that the return values are actually in range (in as much as one is defined).
Note that the >= cpmparisons also remove a divide by zero.

	David

> 
> Guenter
> 

