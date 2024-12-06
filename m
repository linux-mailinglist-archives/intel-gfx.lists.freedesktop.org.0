Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 436049E9781
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67510E777;
	Mon,  9 Dec 2024 13:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d+a65OxG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA5610E411;
 Fri,  6 Dec 2024 18:31:11 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-aa51bf95ce1so94081066b.3; 
 Fri, 06 Dec 2024 10:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733509870; x=1734114670; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g7buzdn3/PR+OZ7E9SojfZrudu0PKQFtLTRAFouRbM0=;
 b=d+a65OxGEKPNwBldvsPEyd7E97Q4vjc3yzL9YxUXDJMBXgIMR6f/v4ZCj0aDYCEZhF
 YXGXfGWRq3mQ127xhJR7/w2rSimP9wO0F1mJAN/BMKHajMMpLUq7WU3VHzDjdw8LpCYd
 3YdhvnsFBHngZ9uxB28IUvQ4BXbqVqB6IVs5ShfTqKTdQ3jW8P3mMlCqXyOMO2VOu2Gi
 cQhC5GCqKeb4O6CXQRO51ecf9oHS660/WRx9ySop6k7QjxLXU29S6cy6PLHDIG180fkK
 SnntW0QgDMLaNYYlJNgP3KzD7M1WMaASKVmpRZ4qlz+cpvztJdaHkoPeO8Dek1w6VcYo
 2e6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733509870; x=1734114670;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=g7buzdn3/PR+OZ7E9SojfZrudu0PKQFtLTRAFouRbM0=;
 b=b8E2DXI2lCXnICtSQMzluLa10BZi5/5kh+0dtkEJGjkw1+nb4UuSWkvbDlM9TCAwnf
 oLHX6Pv33MAJBzXfpnddg2i3gmNXvclznMygt+BlDgZ9Qu2FDBM1SEAdCJ4IZkiK2cc/
 YUh+CBxFBZJFWe1I27fpoJgaSlXhE/vlqCoEBfgudigHtlRzEdl9VdT2OSGSf/rYtFzx
 InYIUTJ8y9bG7YBocvoIeBt6tWzb2LMv40Nxcz92rQOFJ9tgdnRMOUP1UrnufsqATlSH
 dZm9iaQtP0dQU2sQFUk7hCf27H2hH9aoqr05+7pFp4pibump7DqgwYtl6WDVDiISZBtF
 rxJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVplMNOi5ewrG/KFuaTfY5FgqWmLsqEqVkeFcpD1zxr6BLnEA/HGUc7VZcMNkPI/slwvNa43KtHHOI=@lists.freedesktop.org,
 AJvYcCVtIIYkYP5AnrFYLtzTa+ucLpd9jMUUWzB/KYz5rhaetgxfbg60ShRvAtxOpLWR9po3/CEWXXPwGodU@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxJKzueqXHtvJK8iecIdq+fUp8EJQDqJ7EmBg3F1r80+KbmWTtn
 TrD5VjDhp481Zld8Wu6dC4ig20tnFpd2Mn6kzhSzt6DvDbsYn66s8jsqSDHzQrOzj2JwuPIpHxL
 MSw6BhCFzSliqUh3K0Uc1M/AGVlo=
X-Gm-Gg: ASbGncsvqODYigOgA6RPnAa2jgOGeS1i0RNmER5crYv6QxTql2ruuLyhVM/0HoF4Duh
 n0CnIjnICDb5mKWciQyjgnDHBmYp9XOg=
X-Google-Smtp-Source: AGHT+IFnd7xj5Pq9akTxmspxJbkFJbmmIA03mUFW2B6h+sDDSyh+/NdbCh8gBxT6LtqsX9b+RXGKw/QASht5Itx+9Lw=
X-Received: by 2002:a17:907:7703:b0:aa5:46d3:4d88 with SMTP id
 a640c23a62f3a-aa639febbbfmr329138866b.15.1733509869483; Fri, 06 Dec 2024
 10:31:09 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
In-Reply-To: <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
From: Vincent Mailhol <vincent.mailhol@gmail.com>
Date: Sat, 7 Dec 2024 03:30:57 +0900
Message-ID: <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: David Laight <David.Laight@aculab.com>, 
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>, 
 Justin Stitt <justinstitt@google.com>, Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Kees Cook <kees@kernel.org>, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Mike Leach <mike.leach@linaro.org>, James Clark <james.clark@linaro.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, 
 "linux-sparse@vger.kernel.org" <linux-sparse@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>, 
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "coresight@lists.linaro.org" <coresight@lists.linaro.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 uecker@tugraz.at
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 09 Dec 2024 13:43:28 +0000
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

Grrr, I just realized that my emails are bouncing=E2=80=A6 Didn't happen
before, I guess this is because my smtp server is unhappy with the
many people in CC.

Resending using another address (and, while at it, redacted two
messages to combine them in one and added more details).

My deep apologies for that, really sorry. Also, maybe the bouncing
messages will finally find their way out? In that case, please just
ignore them, and sorry for the noise.

On Fri. 6 Dec. 2024 at 15:14, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, 5 Dec 2024 at 18:26, David Laight <David.Laight@aculab.com> wrote=
:
> >
> > From: Vincent Mailhol
> > > ACK. Would adding a suggested--by Linus tag solve your concern?
>
> I'm genberally the one person who doesn't need any more credit ;)
>
> > I actually suspect the first patches to change __is_constexpr() to
> > use _Generic were from myself.
>
> Yes. And David was also I think the one who suggested something else
> than "!!" originally too.

Ack. Then, I will add a suggested-by tag to credit David!

> I may have liked "!!" for being very idiomatic and traditional C, but
> there were those pesky compilers that warn about "integer in bool
> context" or whatever the annoying warning was when then doing the
> "multiply by zero" to turn a constant expression into a constant zero
> expression.
>
> So that
>
>   #define is_const(x) __is_const_zero(0 * (x))
>
> causes issues when 'x' is not an integer expression (think
> "is_const(NULL)" or "is_const(1 =3D=3D 2)".

But 1 =3D=3D 2 already has an integer type as proven by:

  #define is_int(x) _Generic(x, int: 1, default: 0)
  static_assert(is_int(1 =3D=3D 2));

And regardless, __is_const_zero() performs a (long) cast, so
__is_const_zero() works for any other scalar types. Even the u128
works because after the (0 * (x)) multiplication, you are left with
zero, preventing any loss of precision when casting to (long).

Here are some tests to prove my claims:

  https://godbolt.org/z/beGs841sz

So, it leaves us with the is_const(pointer) case. To which I would
question if we really want to support this. By definition, an
expression with a pointer type can not be an *integer* constant
expression. So one part of me tells me that it is a sane thing to
*not* support this case and throw a warning if the user feeds
is_const() with a pointer.

By the way, currently, __is_constexpr(NULL) returns false:

  https://godbolt.org/z/f5P9oP9n5

and the reason this went unnotified in the kernel is because no one is
using it that way. So instead of complicating the macro for a use case
which currently does not exist (and which goes against the definition
of an ICE in the C standard), why not say instead that this is not
supported by just leaving the constraint violation in is_const()?

> Side note: I think "(x) =3D=3D 0" will make sparse unhappy when 'x' is a
> pointer, because it results that horrid "use integer zero as NULL
> without a cast" thing when the plain zero gets implicitly cast to a
> pointer. Which is a really nasty and broken C pattern and should never
> have been silent.
>
> I think David suggested using ((x)?0:0) at some point. Silly
> nonsensical and complex expression, but maybe that finally gets rid of
> all the warnings:
>
>      #define is_const(x) __is_const_zero((x)?0:0)
>
> might work regardless of the type of 'x'.

If we *really* want to go beyond the C standard and extend the meaning
of integer constant expressions in the kernel to also include constant
pointers, then what about:

  #define is_const(x) __is_const_zero((x) !=3D (x))

As established above, comparaisons return an int, thus making this
pass all tests:

  https://godbolt.org/z/f5zrzf44h

And it is slightly more pretty than the ((x)?0:0).

(...)

Side question, Linus, what do you think about the __is_const_zero()
documentation:

  https://lore.kernel.org/all/20241203-is_constexpr-refactor-v1-2-4e4cbaecc=
216@wanadoo.fr/

Do you think I am too verbose as pointed out by David? Some people
(including me and Yuri) like it that way. But if you also think this
is too much, I will make it shorter.

Thanks,


Yours sincerely,
Vincent Mailhol
