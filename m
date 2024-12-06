Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAC89E977B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B307110E779;
	Mon,  9 Dec 2024 13:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="O3N3Zhjh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out.smtpout.orange.fr (out-11.smtpout.orange.fr [193.252.22.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887BF10F129;
 Fri,  6 Dec 2024 15:41:08 +0000 (UTC)
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by smtp.orange.fr with ESMTPSA
 id JaS1t6yHpHqNCJaS2tVDzh; Fri, 06 Dec 2024 16:41:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1733499666;
 bh=WL9xGcicUYweWPrIZdM4obw40wyP2AJI744Zi36nKfc=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=O3N3ZhjhtAc+/VGK0Wm8NVMrSsLl+X3KUAG8+oUYvgOoCCHxUiy1XPRC762lO9d3r
 o9kaWvz0hE6V60J0w21hQJlGiSt7vXG9M6N+sMUuyw6ZJQuBsh2LE2B+dhHnvrDkvf
 X/8omHq5BjfjdHS7kR48jXORfYweWsbw3z6wwb1aERQkaKsOUy64aixg1uUf1oBxJF
 CUbdkNV1zkM3ArmK0ew8BnH6sH+cgOTxKZ/j5NaDnj6o6ry9f1ws3QdzzMxuE+DpwR
 +0BqkloyYr/hF4Zu39q56j/EnIJnhrZmBUw3w+7j6a3j/pqklkFH1ncQTvEYqtuyHY
 jY8dEej9kHo6g==
X-ME-Helo: mail-lj1-f177.google.com
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Fri, 06 Dec 2024 16:41:06 +0100
X-ME-IP: 209.85.208.177
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-2ffa49f623cso22849211fa.1; 
 Fri, 06 Dec 2024 07:41:06 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCX0Zih1W85TWEjc2+NsFILg6vW+Ovt5d30G5msBrUPzVms7MPJJEi/6TblVzbRC5L5vFVjMcp9gSSoU@lists.freedesktop.org,
 AJvYcCXSJF/41kWyU+h9fcp5kFzyYurY0vRpkuWJ35A8aUGm5NSKy+HLI1ir8mIKoWYOkHkY7Xy9+u2aFIo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlCH+pZ9B5B4uG5TGEjpReNTGF1DEP4khKK5sIY5WVnTCVgjFz
 47sud/Z9RGwn1yJsv7yFlpwg0k1d9Z1laa0SjmVjHcGeHr0Helwtst7+M+ihErjqGClGTe86lM0
 xWzGiUcz52fP4CAW304WO0nT8OYQ=
X-Google-Smtp-Source: AGHT+IF0UkbZeO6DhnG4OpInkasGFbpfvjfWezi2XR8vGYhVDKgOfxRspF7qPi3YhfQ2NuvOk/LKXDlfFe/grz4kS7w=
X-Received: by 2002:a17:906:b399:b0:aa5:33f0:c50e with SMTP id
 a640c23a62f3a-aa63a287c66mr153642666b.57.1733474989334; Fri, 06 Dec 2024
 00:49:49 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
 <CAMZ6RqKLrDB-xkm2G242yU7L=tzxCR9NTwca-1yuWSSEHAOrxQ@mail.gmail.com>
In-Reply-To: <CAMZ6RqKLrDB-xkm2G242yU7L=tzxCR9NTwca-1yuWSSEHAOrxQ@mail.gmail.com>
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Date: Fri, 6 Dec 2024 17:49:37 +0900
X-Gmail-Original-Message-ID: <CAMZ6RqJzPqfY4Uy3EWTTqRgN2Gq0hDr2R4zSDMEaMT_CS=05tw@mail.gmail.com>
Message-ID: <CAMZ6RqJzPqfY4Uy3EWTTqRgN2Gq0hDr2R4zSDMEaMT_CS=05tw@mail.gmail.com>
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

On Fri. 6 Dec. 2024 at 16:19, Vincent Mailhol
<mailhol.vincent@wanadoo.fr> wrote:
> On Fri. 6 Dec. 2024 at 15:14, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > On Thu, 5 Dec 2024 at 18:26, David Laight <David.Laight@aculab.com> wrote:

(...)

> > I may have liked "!!" for being very idiomatic and traditional C, but
> > there were those pesky compilers that warn about "integer in bool
> > context" or whatever the annoying warning was when then doing the
> > "multiply by zero" to turn a constant expression into a constant zero
> > expression.
> >
> > So that
> >
> >   #define is_const(x) __is_const_zero(0 * (x))
> >
> > causes issues when 'x' is not an integer expression (think
> > "is_const(NULL)" or "is_const(1 == 2)".
>
> But 1 == 2 has already an integer type as proven by:
>
>   #define is_int(x) _Generic(x, int: 1, default: 0)
>   static_assert(is_int(1 == 2));
>
> So, it leaves us with the case is_const(pointer). To which I would
> question if we really want to support this. By definition, an
> expression with a pointer type can not be an *integer* constant
> expression. So one part of me tells me that it is a sane thing to
> *not* support this case and throw a warning if the user feeds
> is_cont() with a pointer.
>
> If we just what to accept pointer arguments but still return false
> (because those are not integers), one solution is:
>
>   #define is_const(x) __is_const_zero((long)(x) * 0l)
>
> This would be consistent with __is_constexpr(): it does accept NULL
> (i.e. no warnings), but does not recognize it as an integer constant
> expression, e.g.:
>
>   is_const(NULL);
>
> returns false with no warnings.
>
> > Side note: I think "(x) == 0" will make sparse unhappy when 'x' is a
> > pointer, because it results that horrid "use integer zero as NULL
> > without a cast" thing when the plain zero gets implicitly cast to a
> > pointer. Which is a really nasty and broken C pattern and should never
> > have been silent.
> >
> > I think David suggested using ((x)?0:0) at some point. Silly
> > nonsensical and complex expression, but maybe that finally gets rid of
> > all the warnings:
> >
> >      #define is_const(x) __is_const_zero((x)?0:0)
> >
> > might work regardless of the type of 'x'.
> >
> > Or does that trigger some odd case too?
>
> Following a quick test, this seems to work and to return true if given
> NULL as an argument (contrary to the current __is_const_expr()). So if
> we want to go beyond the C standard and extend the meaning of integer
> constant expression in the kernel to also include constant pointers, I
> agree that this is the way to go!

I just came up with a new idea:

  #define is_const(x) __is_const_zero((x) != (x))

Similarly to ((x)?0:0), this seems to work with everything (including
with NULL), but arguably a bit less ugly.

> Side question, Linus, what do you think about the __is_const_zero()
> documentation in
>
>   https://lore.kernel.org/all/20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr/
>
> Do you think I am too verbose as pointed out by David? Some people
> (including me and Yuri) like it that way, but if you also think this
> is too much, I will make it shorter.
>
> Thanks,
>
>
> Yours sincerely,
> Vincent Mailhol
