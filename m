Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 141679E78AD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 20:15:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F323310F18D;
	Fri,  6 Dec 2024 19:15:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="guNHW+PQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED5910F18D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 19:15:41 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-a9a68480164so298800166b.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 11:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733512540; x=1734117340;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HB1D/kV+LS+wbR3JFN0rKIWFlL1hHHNzi40qmGJ0Urw=;
 b=guNHW+PQ/SSUxrvFRXT9sBIc3OoUztq3bqivYTIq7tPTQYrOwV7QLFaYV+ft+wMQ8O
 TvdNIraSk9mck6bN6Xy3p75f4h1T2f0RljARFnIoSdjsndKdsnkrhtrmX8AZcCyBIh5P
 hzwgumJ6cRJe1QzApQaopInCCbaQp/qHxQ3GQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733512540; x=1734117340;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HB1D/kV+LS+wbR3JFN0rKIWFlL1hHHNzi40qmGJ0Urw=;
 b=Pxb2LlUKknzyABREyL3Krlc8dNi1YvwXm4YtZsoLivUC2xVZ3IU/q9M0YSNnlw8afQ
 7KWm2t8QMBIMXp41RvcwXqGPEANumBuO6Pk3pFXW9BswJPIQtvmLL24q1z3h3mO0RYX+
 pPw2CKFCnnxSAZiQa8CeuI4XUs5Yg3MzDJqdCkVZsAeezf8QOGSPTNZWkofMnqOPH7Dl
 n+tb0/MptsOtzxaaijKhWOZozHIXK+BFK6deNoY3m8ASaAi3AFIG4R2gFszUxEvpzVAo
 03ZSA54KAE4em/yIKsewszzuzND6336Bt8nOnTOAk1WdXhkmVmKR/Vlfi31PX9+++QAq
 W4Jw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkZ3OWLZeagwElwlkm/Gt/dQuNf375GlMsLygiqpjjTpZDVik08Q6hZMWmCcGvSARQbhAi9nG/ZWY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx3MeXSiXXNJCb0DVaUq0UD9yBbWKYW0dEcuNdsbDAMPmkirxAP
 sGxDNq5j9aKpFmCEZvtFsg9633JYAr7QbuefaGL6aN26H/LVN6KrTEaWrtuCq1O+eE7nSOmvstD
 umHdruQ==
X-Gm-Gg: ASbGncvz7bcgfJBbZ02FlPBT7TQ7/WajYIYdSR8jdx5wrnuV68WRXYI+7rtXmbMwY9c
 JS3YP3vmI/prF/3pUGRUeeaghhdhujWpicwV4rCzDLaUpPFiKpPLGyzOs+Ezm5O480Gu5N1CoYS
 KpOyqtTehmBAjPa2PNWn1CaM3thwC3XpVW+U532SMcpH0qEeAJ0IvepnSaaodVJ3m9NgJoy140E
 tF/2AJZF2ldGI4C9ghoYDoEntAkilVyUU/NBFM/f3gEPt33IwyVSVCIoiEQefcGRA9327Gz1VUD
 v41m+M4rWMNdLGc4DCYeDvrbzwd0
X-Google-Smtp-Source: AGHT+IFKCO9581JJoiAWAXTLaDQTW0R20GSOd+y5khW4WS1Uf3wIeSrf6D1X8d94/xgdCv9lp+jc4g==
X-Received: by 2002:a17:906:292a:b0:a99:fc3d:7c76 with SMTP id
 a640c23a62f3a-aa63a208ae0mr221834666b.37.1733512539854; 
 Fri, 06 Dec 2024 11:15:39 -0800 (PST)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com.
 [209.85.218.48]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa625e972absm277657066b.70.2024.12.06.11.15.37
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2024 11:15:39 -0800 (PST)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-a9a68480164so298794166b.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 11:15:37 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUy+siUVAqCD++WdIj/33+V9TaNQa5W2yqnML5lxb4w/CDL+rSx3ggUnDb3hlwfxAGfFhIetRFYLS4=@lists.freedesktop.org
X-Received: by 2002:a17:906:4c2:b0:aa5:308c:3489 with SMTP id
 a640c23a62f3a-aa63a2519b0mr271057466b.58.1733512537212; Fri, 06 Dec 2024
 11:15:37 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
 <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
 <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
 <d23fe8a5dbe84bfeb18097fdef7aa4c4@AcuMS.aculab.com>
In-Reply-To: <d23fe8a5dbe84bfeb18097fdef7aa4c4@AcuMS.aculab.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 6 Dec 2024 11:15:20 -0800
X-Gmail-Original-Message-ID: <CAHk-=win8afdcergvJ6f2=rRrff8giGUW62qmYs9Ae6aw=wcnA@mail.gmail.com>
Message-ID: <CAHk-=win8afdcergvJ6f2=rRrff8giGUW62qmYs9Ae6aw=wcnA@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: David Laight <David.Laight@aculab.com>
Cc: Vincent Mailhol <vincent.mailhol@gmail.com>, 
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
 "uecker@tugraz.at" <uecker@tugraz.at>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Fri, 6 Dec 2024 at 11:07, David Laight <David.Laight@aculab.com> wrote:
>
> I'm missing the compiler version and options to generate the error.

Just -Wall with most recent gcc versions seems to do it. At least I
can repro it with gcc-14.2.1 and something silly like this:

  $ cat t.c
  int fn(int a) { return (a<<2)?1:2; }
  $ gcc -Wall -S t.c
  t.c: In function =E2=80=98fn=E2=80=99:
  t.c:1:26: warning: =E2=80=98<<=E2=80=99 in boolean context, did you mean =
=E2=80=98<=E2=80=99?
[-Wint-in-bool-context]

> Does a '+ 0' help?  "(var << 2) + 0 ? 0 : 0"

Yeah, that actually works.

And "+0" is nice in that it should work in any context.

> #define const_NULL(x) _Generic(0 ? (x) : (char *)0, char *: 1, void *: 0)
> #define const_true(x) const_NULL((x) ? NULL : (void *)1L))
> #define const_expr(x) const_NULL((x) ? NULL : NULL))
> I send this morning.
> Needs 's/char/struct kjkjkjkjui/' applied.

Oh Christ. You really are taking this whole ugly to another level.

           Linus
