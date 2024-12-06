Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D16B9E9771
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED6110E773;
	Mon,  9 Dec 2024 13:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="elCG8RSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out.smtpout.orange.fr (out-17.smtpout.orange.fr [193.252.22.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58D710F0E4;
 Fri,  6 Dec 2024 13:22:58 +0000 (UTC)
Received: from mail-lj1-f169.google.com ([209.85.208.169])
 by smtp.orange.fr with ESMTPSA
 id JYIKtQXrLgyqpJYIKtcmXE; Fri, 06 Dec 2024 14:22:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1733491377;
 bh=Q1k59tg7g6ZR0AiJKHkbtvAsnBjYlK49uTsKYbfsQyM=;
 h=MIME-Version:From:Date:Message-ID:Subject:To;
 b=elCG8RSdZ1YnCW+20fMypxjHM+XWZuvRTPLp2oPNPcaox891KwzGDFkgrFHKESHDS
 LfxWuv++eVXkzGNHRuLPPLAVzVKwA1wYEqHmMq+19ArEsotYRk47fqbekSPsUuq5GV
 MaUGBV7BRPWuA3QFcPtG4juwu3fdavvpmwvhNMfpfm2FWFOyFNnd+KGQSO/HNhWhIi
 bLXY1Dr/dE/yi+QTtC1wyd8GiEkhiXL/oSaa7Wg4+R4HU7fbHpciunYZyiv7FybvXn
 mQfTQOPXRAVvBBXxyOyBZZ8n2By/hm9B8gKn6YkKGH81Ei0jd4AkuuUm8+3XOfSGSx
 pJv6M1ylVNelg==
X-ME-Helo: mail-lj1-f169.google.com
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Fri, 06 Dec 2024 14:22:57 +0100
X-ME-IP: 209.85.208.169
Received: by mail-lj1-f169.google.com with SMTP id
 38308e7fff4ca-2ffd6882dcbso16984061fa.0; 
 Fri, 06 Dec 2024 05:22:56 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCV1X/fmGXgZz2hY6pI+Xr+a31C+rClB41fBT9bgLMgSm4j4BCWl4F2pTzWwbOcX4MyA7kBOf2gn3ic=@lists.freedesktop.org,
 AJvYcCVckI1Xqkk4QC7QFbxDvuXIicgP/qZAC99OvlAAR3kxij+WnkYeiCsDHTaf80714DN4E86syUwgHirB@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxc3IL6moPQwdrxGNOojk1HZ4Oz9Yz2hmh3W26QGyP13GMu7SnV
 NuE6fE0yfGqs0cbJy5b1VLvHlidQcSQvmeSArg+A2gLaANYqpVxqKmm+V0nLWWo+tBvcSHCHSzi
 NcfLSTWK21ZtE/0h/E1pyhM9wpQw=
X-Google-Smtp-Source: AGHT+IHLXgFQhA/c3KQxjVrMyKCAmSqwk42Fqpsfdz6EK+jIFFcEtdXEZClHZQiPmD1jBbv/RGy99L+br5F0PLvN22o=
X-Received: by 2002:a17:907:7392:b0:aa5:427d:b101 with SMTP id
 a640c23a62f3a-aa63a1109camr127306566b.36.1733460187056; Thu, 05 Dec 2024
 20:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-1-4e4cbaecc216@wanadoo.fr>
 <e115a4245e5342a994a7e596cc6357fa@AcuMS.aculab.com>
 <CAMZ6Rq+n0vG9zObF-kY-Xo+iP_Y3P8A6_nEfB8F=UhqeQBepRw@mail.gmail.com>
 <b48e2f5dd8d64cbab471629ae03c7511@AcuMS.aculab.com>
In-Reply-To: <b48e2f5dd8d64cbab471629ae03c7511@AcuMS.aculab.com>
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Date: Fri, 6 Dec 2024 13:42:56 +0900
X-Gmail-Original-Message-ID: <CAMZ6RqKUH5VGHAuqv+dR_0o1JFTvV_gNV2qUwoMfcWCQUSX2Lg@mail.gmail.com>
Message-ID: <CAMZ6RqKUH5VGHAuqv+dR_0o1JFTvV_gNV2qUwoMfcWCQUSX2Lg@mail.gmail.com>
Subject: Re: [PATCH 01/10] compiler.h: add statically_false()
To: David Laight <David.Laight@aculab.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
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
 Martin Uecker <Martin.Uecker@med.uni-goettingen.de>, 
 "linux-sparse@vger.kernel.org" <linux-sparse@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>, 
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
 "coresight@lists.linaro.org" <coresight@lists.linaro.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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

On Fri. 6 Dec. 2024 at 12:39, David Laight <David.Laight@aculab.com> wrote:
> From: Vincent Mailhol
> > Sent: 05 December 2024 15:26
> >
> > On Thu. 5 Dec 2024 at 03:30, David Laight <David.Laight@aculab.com> wrote:
> > > From: Vincent Mailhol
> > > > Sent: 02 December 2024 17:33
> > > >
> > > > From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> > > >
> > > > For completion, add statically_false() which is the equivalent of
> > > > statically_true() except that it will return true only if the input is
> > > > known to be false at compile time.
> > >
> > > This is pretty much pointless.
> > > It is just as easy to invert the condition at the call site.
> >
> > To start with, I will argue that:
> >
> >   statically_false(foo)
> >
> > is more pretty than
> >
> >   statically_true(!(foo))
>
> Except that the test is more likely to be:
>         statically_false(x > y)
> and the invert is then
>         statically_true(x <= y)
>
> No different from C itself, there is no 'ifnot (condition) {...}'
> (don't talk to me about perl...)

No need to talk about perl, just staying in C, it has both the #ifdef
and the #ifndef directives (and since C23, it even has the #elifndef).

Regardless, this was just a nitpick. You convinced me, I will remove
both statically_false() and is_const_false() in v2.

> I suspect you need to pretty much remove all the comments that
> cross-refer to statically_true() from the other patches.
>
> So is_const_true() is just 'return true if the expression
> is a 'non-zero constant integer expression'.

No. Linus made it clear in

  https://lore.kernel.org/all/CAHk-=wh5SNYdgx8-X+ggHP+ojbG2F7oyt3TLmMgqejYd5zn0Aw@mail.gmail.com/

that we need an explanation of why statically_true() may not work in
some contexts and I agree with this.

As far as I like using proper nuances between the terms 'integer
constant expression' and 'compile time constant', treating
statically_true() and is_const_true() as completely different things
as you are suggesting is not constructive. At the end, what matters
the most in a comment, is that the final user properly understands how
to use the thing correctly.

Removing the cross reference would increase the risk of people using
is_const_true() in places where it is not needed. I will keep the
cross reference to statically_true().


Yours sincerely,
Vincent Mailhol
