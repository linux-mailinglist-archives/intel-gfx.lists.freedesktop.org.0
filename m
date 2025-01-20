Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6824AA17311
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 20:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B854C10E119;
	Mon, 20 Jan 2025 19:15:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="NrmT0FxY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F3F10E119
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 19:15:00 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-aaec61d0f65so1030182766b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 11:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1737400499; x=1738005299;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2A1SxqaKC9E04yxtcM0gBjhhzV82aFBvHScpwEZ6wwo=;
 b=NrmT0FxY2zjqyaNq/w8c0LjbMU1nVQRysaYyPrdR+oHjk39m8tH/v7fYmu1559Mej6
 BFB+0cQsQa7QwurO9oeJ2VpTTIq138+fKpXl+KZjJ2/lwYc43yGRjpChYzUHSKnO6Ys+
 D8UrnscjW9hF5dgF5j40NNYPttKeADu/8rGPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737400499; x=1738005299;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2A1SxqaKC9E04yxtcM0gBjhhzV82aFBvHScpwEZ6wwo=;
 b=qGM80MMIODn5Twl4deXEhwCnXsqhRQfCv5RmW6dfQS5xF11gEu9Ec/kA9jrT5ju9qX
 8KN4XAwugTBc2wiqzNIbO1DrVNkKHuVBMfq9N6yxULT+F4tsaC8AC/Y9Pcb2IjpQ0ZtI
 OhNb2vG4dOzVxo3rBg86MIl3cGBE7CTFHA7+uEoNJUZs7I37d8Sf6VNbS/CwcAByw4YN
 wBrDkI8soF2LfMsPA8Og9+HcQJLGPfnWqWDXHq5o5BONp1ieus1uqTnwxgZOEdhF5IeU
 HzcDAj9gJHyIuQV+CD45Kvr0iCPKTmbv5Jl5icmWkNtGh95sWmAMhhBkODSSSdtZllm9
 NtXA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUp/xWE6uCaSMqt2Ud81e4ovRq6F87Q6urVrIvNLVnmim/6xJGfDMiAO4cJDB7rDJ73FA1V6piasR0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxHAW5sYLs9xGsP5RncTvXO67tttcLnHDz+8XA//0r+K2Wfp6x7
 y9Wb368+7zBylP7w0wustduAE3o2YF5jzE8EuWK86KTus4/AhkSSCEyHvG6qBVrgrIE0dM53pLa
 Ir7I=
X-Gm-Gg: ASbGncuqxel53QuV5E6DCuMq7kND5yFCCkVpFmmGuM6Yw8eZ4eAvjxFAk40WTVkwF0v
 4b9Bi0kT9iWO5nGSJ1qEHDKdsRoQMlP1u1tGuw3OGzcY7Z5iC5iMtyj7dAzioaYNgisD/pvoJAd
 Gj8g+QL7Dd2g5A8dmoyBWqGYQmrmuraQbJuSYdTYSDfJOGgun3RuoCizDgDcjn5zalh+7Xz2PQX
 IsECnyppWuc0GynV9mOKkf184Ajg9xY6iD/nrpH6yX05K8fBZ3TlTCCwbM0mfC7Y3UHv2TGi8lf
 PQtN3ayOHb5KsxNyRCyvlWe+bqA6erAe/dLszZRUZmBI
X-Google-Smtp-Source: AGHT+IFFBILwZfdrdtU3JIz4JpjBPpB87xFDO7tPfIIZaCqlJmSW9Ph6SyZSnpLqCQfZJw/z6fAHWg==
X-Received: by 2002:a17:906:dc90:b0:aae:d199:6eae with SMTP id
 a640c23a62f3a-ab38b0f36f4mr1355079466b.14.1737400498816; 
 Mon, 20 Jan 2025 11:14:58 -0800 (PST)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com.
 [209.85.208.48]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab384d2df47sm646435566b.85.2025.01.20.11.14.58
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2025 11:14:58 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5d3e9a88793so8241186a12.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 11:14:58 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUM/riKTre1QLNIJ6InjTq7WHPpsqkFR3HETZYfGC7PZ3OdKhx+PeQ4CMVSulpcOTELCxCagbVZBIw=@lists.freedesktop.org
X-Received: by 2002:a17:907:d1b:b0:ab2:dc73:34bd with SMTP id
 a640c23a62f3a-ab38b3cce0dmr1178261766b.48.1737400498031; Mon, 20 Jan 2025
 11:14:58 -0800 (PST)
MIME-Version: 1.0
References: <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
 <f3939490-0f55-410f-81fe-0e9f03874546@roeck-us.net>
 <20250119090935.7c690f85@pumpkin> <87ed0xrcb8.fsf@intel.com>
 <20250120111551.435176c4@pumpkin> <878qr5ras2.fsf@intel.com>
 <0a65de6c-74d5-4d3e-be75-0aa9ecc82da1@roeck-us.net>
 <20250120184143.47615b21@pumpkin>
 <Z46cJiyntl9eyXTI@smile.fi.intel.com>
In-Reply-To: <Z46cJiyntl9eyXTI@smile.fi.intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 20 Jan 2025 11:14:41 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgYPBhMvCJHFVo=dr=2RhVxKwEf+SLQEBVhANoY_bUk2A@mail.gmail.com>
X-Gm-Features: AbW1kvanWbjjXlxUu-fz3APSBsTAMsHDuCb6rdyKw8tJpJDrImEOFs20uKWXbAw
Message-ID: <CAHk-=wgYPBhMvCJHFVo=dr=2RhVxKwEf+SLQEBVhANoY_bUk2A@mail.gmail.com>
Subject: Re: Buiild error in i915/xe
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: David Laight <david.laight.linux@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, 
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>, 
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Carpenter <dan.carpenter@linaro.org>, 
 "Jason A . Donenfeld" <Jason@zx2c4.com>,
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>, 
 Mateusz Guzik <mjguzik@gmail.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>
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

On Mon, 20 Jan 2025 at 10:55, Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Excuse me if I am missing something, but clamp() has a warning inside it, correct?
> Why do we need an additional warning on top of that?

Note: the warning in clamp() only finds compile-time obvious wrong uses.

It's really meant to notice the trivial case where you clam with
constants and just got the order wrong, so you do something silly like

    res = clamp(in, 15, 1);

but it does also end up catching slightly more complex things where
the compiler can figure out the range of the clamping.

The build problem then comes from the compiler doing various *other*
code movem,ent and optimization too, and - like in this case - finds
an error path where the clamping is done "wrong".

I think the real issue in the i915 driver is that it does that
WARN_ON(), but then it just happily continues anyway.

So if the i915 driver instead did

        if (WARN_ON(..)) return invalid value;

none of this would ever have happened.

                Linus
