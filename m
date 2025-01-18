Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22655A17ED9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0463010E5AD;
	Tue, 21 Jan 2025 13:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ScFBL/WY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851BF10E32E;
 Sat, 18 Jan 2025 22:12:27 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-4362bae4d7dso22191935e9.1; 
 Sat, 18 Jan 2025 14:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737238286; x=1737843086; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wDLMXoR1qmk4Dz/P9/9AXOD8JfOCMxUMePEkYwFYoZc=;
 b=ScFBL/WYxmvcHLkbflsfMflHYL8CXCTM0SeNFXhoDwmHWmsaMahbLujUSS7sy2jVYp
 ccMvwDtlf225tZ2mVAfIpEm+43Q5ILTO/uBSbdz/f1Cq9c1Btp4he+P1mR59QAUsPnuS
 MgSDubm90N/yBTEzd2AnXCEWnjmhg3xsIrJzzaJEqUKt75c4NfatGmS85+vOYKt2ArW1
 k8LLYuyMzovLre1CSR8YLc1oR7VEIzTovKInH26wgj689oAg2rx1/BMFvcOnDFtO/gHi
 GY2D1K2mCkpARZVzz5qUrwxPdydXT83NNKD0tflRndJnrVXAuje8h8zC68feYttv/Sxl
 dQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737238286; x=1737843086;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wDLMXoR1qmk4Dz/P9/9AXOD8JfOCMxUMePEkYwFYoZc=;
 b=g8CtpOPpsGE7oYwKDurXhAKslVWec04GPryL8D9NLEEwlTj8sfghfHNiNbSdKO/hUm
 okoSnhQD22kbmkfNI96o0YEuSA8sclpc6K09SVNnTVB/iNqqlm63WMPoSzvRuczRMfZn
 QCWYmS2ZqoVR6JIcZT8YoUrFsMyjqioOBJKNbfzahKhy7p2x7eted0ujwDjqKgsQbS3t
 L2bDKslLbiL7awXFJhwQg+/ziyMXYVXPC7SSdor+VSc8iq4qui3PbCnOavX7RcY5wnG7
 W3Q2KqAsSCbFB6NMiWq+OvIAjdVPoJyj2ANaFf+Hr03PdlU2VDyRTwrnCGt2DfVzSMs3
 63jw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUr2E2BMJrUoCIl4UyLMHICKecortU0oTekn/fchTVnQeBl0Xl3bTErNH9MJ0BYkNtYThAyxPtPfO4=@lists.freedesktop.org,
 AJvYcCVbP2c4xCn4H7X6/ram1hKzYuTK3pSz4b32mvoZjIgNbsopFx3jWW+jrLRpfWW+XrEDxISp8f/a+o8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwC/cCie3oybcStKwPzT6YGpiFh3BndFhNJVTJM5tkiqXP0SD4y
 q85wD35d3EmPBb8R07YkYFJx6Sii5FDV4mzDFRdXmFS/niFCqs2n
X-Gm-Gg: ASbGncsnP2fv5hQdOrJPoAW9txTRpiKijRqe71ajRaefgNJemXbtmtqKNumYdrURlbE
 6qqsPuQsjr47NzzlKA4U61AvrR8nr4NnJ72GUZuuSXtw3UYZaT4Ffk/Wt5LMapzejILw/sEIgCs
 3w4Ec16ftkN0I2kn+f1QLhvoO2QZ/v3FRHTL3KSW2UD3wudLe5hkz0EzT2N6ecQPrlvkfyJlKOj
 Rrq6Qn5SWjnqoERwwKrU741CFJeOJF/iOobzhkE27jfNzvVplDyVWNJRyxkeLx6h4ZHb7kw0J2o
 +khAMW3ercfUjLgoxWKm/c/QnhtZrXD1
X-Google-Smtp-Source: AGHT+IHnaJuHfUIiy/0045g/Wc2s71so4/jbOpY91Aw6dJkpE4hulhRnISFfjzqdOCP3e8RPnZ7zng==
X-Received: by 2002:a05:600c:1907:b0:434:effb:9f8a with SMTP id
 5b1f17b1804b1-438913ef2c5mr77403735e9.15.1737238285738; 
 Sat, 18 Jan 2025 14:11:25 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38bf3215066sm6248539f8f.11.2025.01.18.14.11.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2025 14:11:25 -0800 (PST)
Date: Sat, 18 Jan 2025 22:11:23 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Guenter Roeck <linux@roeck-us.net>, David Laight
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
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
Message-ID: <20250118221123.5bb65e64@pumpkin>
In-Reply-To: <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
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

On Sat, 18 Jan 2025 13:21:39 -0800
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
> >
> > No idea why the compiler would know that the values are invalid.  
> 
> It's not that the compiler knows tat they are invalid, but I bet what
> happens is in scale() (and possibly other places that do similar
> checks), which does this:
> 
>         WARN_ON(source_min > source_max);
>         ...
>         source_val = clamp(source_val, source_min, source_max);
> 
> and the compiler notices that the ordering comparison in the first
> WARN_ON() is the same as the one in clamp(), so it basically converts
> the logic to
> 
>         if (source_min > source_max) {
>                 WARN(..);
>                 /* Do the clamp() knowing that source_min > source_max */
>                 source_val = clamp(source_val, source_min, source_max);
>         } else {
>                 /* Do the clamp knowing that source_min <= source_max */
>                 source_val = clamp(source_val, source_min, source_max);
>         }
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

Well spotted :-)

One option would be to move the WARN_ON() below the clamp() and
add an OPTIMISER_HIDE_VAR(source_max) between them.

Or do something more sensible than the WARN().
Perhaps return target_min on any such errors?

	David

> 
>               Linus
> 

