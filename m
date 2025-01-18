Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A43A15EE4
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 22:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604CE10E00D;
	Sat, 18 Jan 2025 21:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="MxVaY6US";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0749510E00D
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 21:22:59 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-aaec61d0f65so699423266b.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 13:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1737235318; x=1737840118;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3rmAmF4zRJmZR9DRaShKjbljcGEH0rs0PBNSPxquwxM=;
 b=MxVaY6US9rLk2TjKNw0B7ORCfwgxotWexhu+zJyo1CdXBU1pglH+Dy63+4L5QYDEzz
 LSQtmEAcRQeLfdcCrvBU6Jm4/bTCf5zNlekVFNcFAQFrXFgURuNdekiqlUgVmj/gQLhs
 Sb7uLeEsXEGsuUFuL4V/rUN1y6s9ZADOtRvmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737235318; x=1737840118;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3rmAmF4zRJmZR9DRaShKjbljcGEH0rs0PBNSPxquwxM=;
 b=f5kHAeOfCn84By1tqvkECT0c51mIrhIo9wgRe6mJTk3FJYwasdy9le32U7LPKzNlPv
 WVWys93M3P+yLbhxXYdzQi9oDEk4ruCqihlIH/7bum4P47TO4b+szPUEFYGRRdpLnUUx
 jAnC5pvIlzpA9zrJKx1YyXMdPuiTAqiMj5iOvdiCwW4mQFJXKEbq4f+ichvAEuWJk5hT
 voHDolWC8jHobTTiDbk2jtUIOXu1zX1C5eFaSduvfO/nBpPccguIKU/hqiBs7T5vDGkc
 Cjtt+fczwDnO2PhmEeuZufZio4Co4X5yCJ6USnGwYT2y+APoWatGWZNhpO6jYlWoI75F
 Ctlg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfKSmngnaBo9rPMLPfjdvMYkfA20RwHFtpTRDswA1aXaTSGRxLDRGg3jeoBSO+CiuNv8AIca36OgU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMYAIuJnYxaHmiojyZ4tG1xkr0ggxbm8YBToVzfBDh0AmCA34U
 MpjF60NG20QAOL+aN5PK3HahB7LR/rSRyWYWAVbVuuhyHefz4fxn34NElSVR/xAfvlB/2Xii9Kx
 9FVA=
X-Gm-Gg: ASbGncvPr2OJWA7fdoQRz23PN9jzH8IOMIvRrBGIU8pZ7I9jYKMfrspAJzUgmNbT5pT
 EpVgtE4RXumYb0oym8CtLW5qCMdbTT7RpJgkCYc/BRs9JRVJaTZFkW521WEqT+lWE2ap+ZD4XfR
 RnIOuBdB8uJVPX7gx+SUhdYO6zZuwGKVoaqZiL5MEDurhSby3RNw3zn0fPwcdipT0c16oTimLYf
 ZVtNTmM30aB90okHdsR90BIUFMIq6x9Gj/CEr1h58LFmb4QW2sVvnIAQNltUd1MLeGXaHQXLi6+
 8o46UshZ2Bj+YBKOwoGgGTxrnowPpvKMe0YjIiye4lYi
X-Google-Smtp-Source: AGHT+IFhD+9TT44zgYiJkKzgHGJRVtxOTQ0rcWwkDoW6VYprhJPzB6dj/GG4yrTI8MohLIqe/d4bxQ==
X-Received: by 2002:a17:907:2cc5:b0:ab2:c78f:e4ae with SMTP id
 a640c23a62f3a-ab38b12a246mr768866266b.20.1737235318035; 
 Sat, 18 Jan 2025 13:21:58 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com.
 [209.85.218.45]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab384fcd91asm386754066b.167.2025.01.18.13.21.55
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2025 13:21:56 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-ab39f84cbf1so233083766b.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 13:21:55 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXfc98LLVZ6o7lMr5Ym5oaJiC/PPRezUZySO3aAmdbLLcYtCMk6k2cayaO0A8QDvdLhrT/wY6YOFqw=@lists.freedesktop.org
X-Received: by 2002:a17:907:7e93:b0:aa6:6ea7:e5a7 with SMTP id
 a640c23a62f3a-ab38b190f6dmr725958666b.28.1737235315191; Sat, 18 Jan 2025
 13:21:55 -0800 (PST)
MIME-Version: 1.0
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
In-Reply-To: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 18 Jan 2025 13:21:39 -0800
X-Gmail-Original-Message-ID: <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
X-Gm-Features: AbW1kvYv-hMWPkhbpIj1M-_2IHkjo_-SJWP7s5FFXlSWPKQ3TuGFR5sriOZzFKI
Message-ID: <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
To: Guenter Roeck <linux@roeck-us.net>
Cc: David Laight <david.laight.linux@gmail.com>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, 
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, 
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>,
 Mateusz Guzik <mjguzik@gmail.com>, 
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
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

On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
>
> No idea why the compiler would know that the values are invalid.

It's not that the compiler knows tat they are invalid, but I bet what
happens is in scale() (and possibly other places that do similar
checks), which does this:

        WARN_ON(source_min > source_max);
        ...
        source_val = clamp(source_val, source_min, source_max);

and the compiler notices that the ordering comparison in the first
WARN_ON() is the same as the one in clamp(), so it basically converts
the logic to

        if (source_min > source_max) {
                WARN(..);
                /* Do the clamp() knowing that source_min > source_max */
                source_val = clamp(source_val, source_min, source_max);
        } else {
                /* Do the clamp knowing that source_min <= source_max */
                source_val = clamp(source_val, source_min, source_max);
        }

(obviously I dropped the other WARN_ON in the conversion, it wasn't
relevant for this case).

And now that first clamp() case is done with source_min > source_max,
and it triggers that build error because that's invalid.

So the condition is not statically true in the *source* code, but in
the "I have moved code around to combine tests" case it now *is*
statically true as far as the compiler is concerned.

              Linus
