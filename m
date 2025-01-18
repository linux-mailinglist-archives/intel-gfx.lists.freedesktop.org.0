Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C724AA17EDD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D25C10E5B5;
	Tue, 21 Jan 2025 13:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YmYvspxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173B310E272;
 Sat, 18 Jan 2025 23:25:15 +0000 (UTC)
Received: by mail-vk1-f181.google.com with SMTP id
 71dfb90a1353d-51cee9d5013so1858296e0c.3; 
 Sat, 18 Jan 2025 15:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737242654; x=1737847454; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AuL/bSx8ptsRxql5Ml0//8eBSWYzvMu7bIFAYAxZe2k=;
 b=YmYvspxMbVDhr8NZAAQhWr3Xatz/2fbs/whE+seD8BPrDeZ42V7VpsemwPtuHjyyab
 V3ZGegkhSkmCXZ2gdhiCe+7UH5AD/tTlHgmS4R6thSRoacyJco6jFTPgKWMLlSeX0r2N
 l0te10X7YwIfG1tUUeMSAEsZ85OD9ZMMMcz7mNOK5KmwBkTdPKlf5JdCIbXuTjd3gAxa
 8bkwVbakLmYdL4ZDc+SBSNRbc4ctIC8+Hwxi3PY5Gnu3u8QbULFiKYyxIg2KnR+cnWg6
 +I5ZP6JfSpBJ81wqoz4MEyTVLJkRJ0w2qzf5J+QkcFeqpgpeIkKq9gXwyAG8l6B12YMW
 9AKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737242654; x=1737847454;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AuL/bSx8ptsRxql5Ml0//8eBSWYzvMu7bIFAYAxZe2k=;
 b=RsnvlW2N9ny2+nuLbdG6lqyeu2msWbyXPTfcXyWhB2qTwPIJZip34Jc26obMWG+9xW
 MXuUBu0Ka3i1Avnv04mHeCqae45FMI51Rcb+rBFqPwyy5bMePuICUIxyc4JQNCdW5CHq
 s6UPupsIXar7g8kjrsJvMDWDXhpPiNEMWFfleY7BOVpVC1Vy/kYmTgMZ+EUSkdstgsyF
 bs/zgId8zuXdZHwYOvgEVhsiTFnOTmAE2WDQvNCLiGxTV884HDIXVLIWR8BSrilL6DMp
 GYHK4rRqtMgEIsWJAabKX2xKNGOjFUKV/q0VPLdhYItkAg7Wh3b2YL/R6jZtx6+Nhil1
 ctfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIQRFzG2yfTL2EEeIZzgfKd+JKPMyaBxdvd67zw0uAKOwoQhlJ3htdvf5nA0CiV2C26DGN+XSh7rs=@lists.freedesktop.org,
 AJvYcCXIsXEGXdJI6y+d5hrvW9EJbYlp5GyoMDcPzw0MpN2QCevpzJ8xs2LVNYnjziGZOMRCHqvAXt+BZng=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyFcCA+K1v+vJj6dqQD0TbgzCvsdr0TWGiL5qPQFNP2g5Bz2hH0
 T7BhuFJYG3Kr5pAHuMew9S5NXYUVVG6N0RWL8hnGaS6xSJbhSSO7WzRd2IgdkFUt+xVBPwFf2ni
 GrQMp2TuQBdPMC8yLdVLMEHT4ko0=
X-Gm-Gg: ASbGncuNGnPzVUGTHHAnQeDuOeTZojIIHJZbm2IWks6sgxrZet7P6LyxopA1+XBHg2j
 UlGtpF/Uc37rnUN0yTKO6Po4ryy5skQcgV+qtyuyZlLAIh0SfHoVeZ9FMQ7kpiW8wxjgugDcrh9
 Dy48VEdGY=
X-Google-Smtp-Source: AGHT+IGhUloFKAv9LZNOCI/d5mT1IzBvuv8q5hIiCRviycJPURqn9WSwcvxpAAu1yomiy0mMgFeNXWwl7H44GCmBFIY=
X-Received: by 2002:a05:6122:8c29:b0:517:4fca:86df with SMTP id
 71dfb90a1353d-51d5b2cd9bbmr6499030e0c.6.1737242653989; Sat, 18 Jan 2025
 15:24:13 -0800 (PST)
MIME-Version: 1.0
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <20250118221123.5bb65e64@pumpkin>
In-Reply-To: <20250118221123.5bb65e64@pumpkin>
From: Pedro Falcato <pedro.falcato@gmail.com>
Date: Sat, 18 Jan 2025 23:24:02 +0000
X-Gm-Features: AbW1kvZisPYR_zlWxqaH7SWrBM7VtVF5VdfTBkkqCGN2xKJArU5nZl9_sRPN57g
Message-ID: <CAKbZUD3smtH8YA5jZgg42UP1tHVfSQvVLTfgNuAoKfFsVEXRxg@mail.gmail.com>
Subject: Re: Buiild error in i915/xe (was: [PATCH next 4/7] minmax.h: Use
 BUILD_BUG_ON_MSG() for the lo < hi test in clamp())
To: David Laight <david.laight.linux@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>, 
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, 
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, 
 Mateusz Guzik <mjguzik@gmail.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Sat, Jan 18, 2025 at 10:11=E2=80=AFPM David Laight
<david.laight.linux@gmail.com> wrote:
>
> On Sat, 18 Jan 2025 13:21:39 -0800
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>
> > On Sat, 18 Jan 2025 at 09:49, Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > No idea why the compiler would know that the values are invalid.
> >
> > It's not that the compiler knows tat they are invalid, but I bet what
> > happens is in scale() (and possibly other places that do similar
> > checks), which does this:
> >
> >         WARN_ON(source_min > source_max);
> >         ...
> >         source_val =3D clamp(source_val, source_min, source_max);
> >
> > and the compiler notices that the ordering comparison in the first
> > WARN_ON() is the same as the one in clamp(), so it basically converts
> > the logic to
> >
> >         if (source_min > source_max) {
> >                 WARN(..);
> >                 /* Do the clamp() knowing that source_min > source_max =
*/
> >                 source_val =3D clamp(source_val, source_min, source_max=
);
> >         } else {
> >                 /* Do the clamp knowing that source_min <=3D source_max=
 */
> >                 source_val =3D clamp(source_val, source_min, source_max=
);
> >         }
> >
> > (obviously I dropped the other WARN_ON in the conversion, it wasn't
> > relevant for this case).
> >
> > And now that first clamp() case is done with source_min > source_max,
> > and it triggers that build error because that's invalid.
> >
> > So the condition is not statically true in the *source* code, but in
> > the "I have moved code around to combine tests" case it now *is*
> > statically true as far as the compiler is concerned.
>
> Well spotted :-)
>
> One option would be to move the WARN_ON() below the clamp() and
> add an OPTIMISER_HIDE_VAR(source_max) between them.
>
> Or do something more sensible than the WARN().

Given the awful problems we've found with these macros (clamp, min,
max, etc), maybe the best option is to not play these awful games in
general?

These macros seem footgunned to hell just as a way to try to
compensate for C's lack of language features.

--=20
Pedro
