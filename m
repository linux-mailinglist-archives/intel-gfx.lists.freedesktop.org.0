Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46A9E81FE
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 21:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1752510E1D9;
	Sat,  7 Dec 2024 20:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="dfyIMwo2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619D610E1D9
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 20:38:38 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5cecbddb574so3747568a12.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 12:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733603916; x=1734208716;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ms7Dj4PhpQjQO3I96MAeIgwapri0gFHpEAP0IFi7Ea0=;
 b=dfyIMwo2xMV7VbADCIWQEpp4DYMVyNDbr7wdfiOhkUD0xZYoD3z7oBQvX5f58CTb/P
 2O2+UeJ264x2f2M7NH+HlAtPFxsVfFFNsBpGCvdyYGxZQANmJp7r+AXXdCFT3ERnTXYw
 3zdsidTOl8DD6dZftp8PY97KUC9LsgGeVpdy8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733603916; x=1734208716;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ms7Dj4PhpQjQO3I96MAeIgwapri0gFHpEAP0IFi7Ea0=;
 b=pnso9Ri3gGLiID2yME7Fwt/Wp4TrqxPa/6UIQpufyjIh/B47D3n1SGDpkH/pv1ZgGb
 sRZI7WAeJhdQnvSB3QrsP5paCADtnkUvLphjoAr6Iq4Ih26Q84WKzuDHd7da+Z2pqHkg
 ZkIUp2DU4q7eviXQruW77pnGRPxkM4h3UCiOsdZhjCwC30ARybt5uCKouIRPOHs8bfhC
 ruDtnClrB6JxiU4V/5wOJMyQqk91U0vZqbIPh59QHMWosXBKBYmyB/T3IL1fW0OUtm40
 Tb+pi/rsKBqWgt8xnWQzp+ivVAGqlwyMJlwlwF2bJKceLu9pOG2rygGkg0KIcGk9zJ7Y
 52ig==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCcVcAtGCcnCdTwi8ywBYqJkOcfWpjKjyYByj6c21/oORdcCxbEche3t6I5TVp7hLmgR0fivr7DIM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxYYTes+Mki6f41IDT9L6pWHyEwqkoZagqOXAW2VYrHfNcDnB1k
 brxMCHQksEq1v+VHcXkKZuFao0GnYqFfW7bqVvri8y0UDQkWL9yQhBqppb9c4HVABoqMfOK46tO
 gG8vqiQ==
X-Gm-Gg: ASbGnctm2J9SPruMeSJA4Ke/rLe2Xr3eVjIhpp7Ny8/QB22VJLi8xTBHeBsNSgI9Ufv
 AMgLcFDXITIOngV5HgcVSsTD3/2BlG5Q+QyJRVp1rLwyjmpzvm6Mjic+6w66ZBsTJjiutToBnNp
 5wAvErerkgbz6HrIuMHcZRzaXskzZq2IZXH/+AHOW1bniV7vwe0ZlSGDjVY9tp18sjyxbpm7mqC
 AWTEQIBzb1OiCKJz8CotoUrL8F5A+Ar0Gw7BD8iOU3KB6PiFLcjcxghbacvaFeeNgtA9onN0d77
 TTWljB+c1crg1qyCETLr2P4r
X-Google-Smtp-Source: AGHT+IGXInjTgKZgFYj7/xUCPlAgUYZcQ7QRT+UpROT5cyYgyIbmKriHODnlcN5XLFL4QIXQfVUbbQ==
X-Received: by 2002:a05:6402:11c6:b0:5d0:f9f1:cd73 with SMTP id
 4fb4d7f45d1cf-5d3be67cf40mr6053486a12.13.1733603916646; 
 Sat, 07 Dec 2024 12:38:36 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5d14c7aa97asm3813836a12.73.2024.12.07.12.38.35
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2024 12:38:35 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-385eed29d17so2457896f8f.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 12:38:35 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCV31OjSPanAbLQlxqiW2hsuDWYstrO7GeozRhRjBaCSCNrKVCNVfNZXIUYXAkTCaRcmxsB8ywQCd3Q=@lists.freedesktop.org
X-Received: by 2002:a17:906:328b:b0:aa6:326a:bcb9 with SMTP id
 a640c23a62f3a-aa63a10fe42mr541173966b.33.1733603485779; Sat, 07 Dec 2024
 12:31:25 -0800 (PST)
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
 <CAHk-=win8afdcergvJ6f2=rRrff8giGUW62qmYs9Ae6aw=wcnA@mail.gmail.com>
 <0f5c07b827c3468c8fa3928a93a98bfa@AcuMS.aculab.com>
 <e806dd51b1ac4e289131297fbf30fc37@AcuMS.aculab.com>
 <CAMZ6RqLOR3aCRW_js2agV+VFiHdazb4S2+NdT5G4=WbDKNB8bA@mail.gmail.com>
 <b1ff4a65594a4d39b2e9b8b44770214e@AcuMS.aculab.com>
 <CAMZ6RqJFReLJTd-O8s02oQNeB0SPQh3C-Mg+Nif5vMB9gFtQww@mail.gmail.com>
 <CAHk-=wjpN4GWtnsWQ8XJvf=gBQ3UvBk512xK1S35=nGXA6yTiw@mail.gmail.com>
 <6b8c9b942ba6e85a3f1e4eef65a9916333502881.camel@gwdg.de>
In-Reply-To: <6b8c9b942ba6e85a3f1e4eef65a9916333502881.camel@gwdg.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 7 Dec 2024 12:31:09 -0800
X-Gmail-Original-Message-ID: <CAHk-=whzFAaksqMdYeYC=T82tny1HnGGcYu_xJTXZF1OZwVziQ@mail.gmail.com>
Message-ID: <CAHk-=whzFAaksqMdYeYC=T82tny1HnGGcYu_xJTXZF1OZwVziQ@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: Martin Uecker <muecker@gwdg.de>
Cc: Vincent Mailhol <vincent.mailhol@gmail.com>,
 David Laight <David.Laight@aculab.com>, 
 "w@1wt.eu" <w@1wt.eu>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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

On Sat, 7 Dec 2024 at 11:51, Martin Uecker <muecker@gwdg.de> wrote:
>
> Am Samstag, dem 07.12.2024 um 10:19 -0800 schrieb Linus Torvalds:
> >
> > If there is one feature of C I would have liked it is "allow inline
> > functions and statement expressions with constant arguments as
> > constant expressions".
>
> There exist proposals along those lines for C2Y.
>
> From a more near-term solution, I wonder if making it possible (or
> easier) to return integer constant expressions from statement
> expressions and allowing a restricted form of statement expressions
> at file scope would help?

Even a more limited form of this would have been useful several times,
but as mentioned, the problem tends to be that we end up supporting
compilers for many years.

So then we end up having to work with older compilers without that
feature, and can't actually clean stuff up until many years after the
fact.

We're currently still accepting gcc-5.1 as a compiler, although it's
time to look at that and probably (judging by what stable distros use)
upgrade to something like gcc-8.1 as the minimum supported compiler
version.

            Linus
