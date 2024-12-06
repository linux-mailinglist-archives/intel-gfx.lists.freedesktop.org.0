Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 160D09E9777
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E58910E781;
	Mon,  9 Dec 2024 13:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="l7vKLG/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out.smtpout.orange.fr (out-18.smtpout.orange.fr [193.252.22.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6459610E1C7;
 Fri,  6 Dec 2024 11:11:34 +0000 (UTC)
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by smtp.orange.fr with ESMTPSA
 id JWFAtPmwpgyqpJWFAtZn5R; Fri, 06 Dec 2024 12:11:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1733483493;
 bh=GBRrBlRLVT7TL533lKb1vFLdI9Y/T44KcDVsiEUWS/k=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=l7vKLG/ASbMdwMmFCT/nBJIkZLYj/Gd6Fyz0q8Fx7sGxPDpW272LUOLTaFn9uM+YL
 m6I2mj/59VLtPRSx2kliMQQjW86QugGx0LAAKRp7rgLE1QB18R5UVfjXk7AV1EU5ys
 fcPKhi6ciu7e9TAVEzQbBUsp0UVBdIJduS4CBvAh/phpwXfig9J4DxTssGrv/740+N
 IIPGIMOKEbJh9EMVsfHaeECJTOwAIYgI6Y4x6zuQSVwQC1b4hpTaINT91gtwZ8U4ko
 7QXmPFYE5kgxk+VxbXtpeL5eFwKvwTcvZgbYuqSdvRR6KMPJzsTSb3m49q4Ii3hVSd
 2olsP3jrcrKcg==
X-ME-Helo: mail-ed1-f54.google.com
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Fri, 06 Dec 2024 12:11:33 +0100
X-ME-IP: 209.85.208.54
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-5d3d479b1e6so28950a12.2; 
 Fri, 06 Dec 2024 03:11:32 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVIZ7CWsQgc27vE9dv2Lx5YUigS80lWU3kaoxDxAHZmAPvTYr9RQchz0j++CqXty8SdtdjV/bDV/YMH@lists.freedesktop.org,
 AJvYcCVM51QPm65DpYZ6G4wqOEm9bQuMFyGwjo1n9GF4Y7h93Ll3brQ0FV/3plieWGOT8EQMLJnxd4Al3Ks=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzSICjGHa8dNXZDdwnQ2ypdM7FKPSpBiC7+jqhLSIUcDcBRCD3z
 XuMWgP7O+CxsapFPuw53jkcC1sG9/F7nZ4ipsNE6Ks1WVsCOpc7BFQbKUc7pNgNIElcrQ582vvY
 hDJRhGf9EI/HGrZT4qv5U7sn+5uM=
X-Google-Smtp-Source: AGHT+IFeJU5P21g2+KpTjso/RWJ0896W/J65sLmbtkloH76ZizTy87kZbTnF4kB92tm0ezpnDi5dm2fIynDl5PgBmTs=
X-Received: by 2002:a05:6402:5253:b0:5d1:2377:5af3 with SMTP id
 4fb4d7f45d1cf-5d3be661fc5mr3945565a12.5.1733469604117; Thu, 05 Dec 2024
 23:20:04 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
In-Reply-To: <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Date: Fri, 6 Dec 2024 16:19:52 +0900
X-Gmail-Original-Message-ID: <CAMZ6RqKLrDB-xkm2G242yU7L=tzxCR9NTwca-1yuWSSEHAOrxQ@mail.gmail.com>
Message-ID: <CAMZ6RqKLrDB-xkm2G242yU7L=tzxCR9NTwca-1yuWSSEHAOrxQ@mail.gmail.com>
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

On Fri. 6 Dec. 2024 at 15:14, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, 5 Dec 2024 at 18:26, David Laight <David.Laight@aculab.com> wrote:
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
> "is_const(NULL)" or "is_const(1 == 2)".

But 1 == 2 has already an integer type as proven by:

  #define is_int(x) _Generic(x, int: 1, default: 0)
  static_assert(is_int(1 == 2));

So, it leaves us with the case is_const(pointer). To which I would
question if we really want to support this. By definition, an
expression with a pointer type can not be an *integer* constant
expression. So one part of me tells me that it is a sane thing to
*not* support this case and throw a warning if the user feeds
is_cont() with a pointer.

If we just what to accept pointer arguments but still return false
(because those are not integers), one solution is:

  #define is_const(x) __is_const_zero((long)(x) * 0l)

This would be consistent with __is_constexpr(): it does accept NULL
(i.e. no warnings), but does not recognize it as an integer constant
expression, e.g.:

  is_const(NULL);

returns false with no warnings.

> Side note: I think "(x) == 0" will make sparse unhappy when 'x' is a
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
>
> Or does that trigger some odd case too?

Following a quick test, this seems to work and to return true if given
NULL as an argument (contrary to the current __is_const_expr()). So if
we want to go beyond the C standard and extend the meaning of integer
constant expression in the kernel to also include constant pointers, I
agree that this is the way to go!

Side question, Linus, what do you think about the __is_const_zero()
documentation in

  https://lore.kernel.org/all/20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr/

Do you think I am too verbose as pointed out by David? Some people
(including me and Yuri) like it that way, but if you also think this
is too much, I will make it shorter.

Thanks,


Yours sincerely,
Vincent Mailhol
