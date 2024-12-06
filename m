Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BD29E6741
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 07:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D7510E3D1;
	Fri,  6 Dec 2024 06:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="PP7D5E79";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372B510E3D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 06:20:57 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-aa5325af6a0so263395566b.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2024 22:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733466055; x=1734070855;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lkINBrTDhyE0tcSEzrQhWY00f3rEWU+OMRPtBhc6Jxo=;
 b=PP7D5E79ZimgHswHXlM9XtF3bCeDHNO+nrwnZLPyjqyJ5pSINH+T5Z9gSl5J5bANhQ
 dhu+1Sb2xXxv4ZnGD5hhiehUVw3MY4y/qGOzZPme1zJ+hnllXkekivmhW7is0tY/fSrV
 x4YNjlmnUoofZ1JG3SPftcACjioRN+09uEf8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733466055; x=1734070855;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lkINBrTDhyE0tcSEzrQhWY00f3rEWU+OMRPtBhc6Jxo=;
 b=sTYWm+o9cGl2i2xzcdrdQ3X2fN27VRk5cF51GBA9X6Hr+V5hDlHQmpbrYB0sx0lubJ
 XY7M9uZpmoaMY0VBk7+Hs34hTV8/zpi6MsTDlbr1aedWmB8hUKrliHzNNiNTSQQdLX0v
 F3TEuQPJRXZQmXrcS4PvO5hYU1b1aDw7VnkYKrlYPW1regiP+24dl08GIchfITaGgIza
 EbgxWNkm7ItGhgE9+smfEP6qtHv2VGHkrIGil3eVyftZBxnw40cqdl3JBCbxJvKpWFts
 svq4xbPaeRlo9ddW2vQT+f11QrkpZKA+AAXBGRGn9nFLh/t2ahiK1hLwTSpvsy2cM4un
 n+hQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2re3QVKaVXeNEccu66DB1b+EfyRajXl86vTb2WHdRIO373wGmgfAvYppsFkHT6kCzfJOd3uUky3s=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyPMZvpQ51r2RgbY2TT3Yf7glu5Sp2cD4l5u0pMoR9oPWIwt24n
 lPOvk++uiUAUmRgVEKTeqBhb3QrFau7U3/Qe7OboS5Ut103raepWqh26efYWIp7yNG8W0g7fJpc
 rMS/RVA==
X-Gm-Gg: ASbGncvXjMkpVc4kUiLq4ly7jKM4nLlnWv5vYxDQ9aiPIIJodagEmz3EgyIvEi4/Leo
 7d7OKSIvilr9VjhXpoEU6uR27uLMBqGwpbDx0jCVrW18Z/v0FSWqCnaofQ4sJ7uEaC8hAQ3U5GF
 4cIhhqxBOPi+o9dFzn3RuAnMLTYS4vwmYhMg9emWo7NFgO58ig3WudHVN9F41BBdyrH4vvbuH+g
 W4wFCccaF6zUzfxMdkfgaibNVdQJC61yuEEMjRkQJLJqWvTBkWZSv+zjH1LI6Xk0NURtGfNASVm
 2PZWND9GLp0eXGeHxiMGtmLs
X-Google-Smtp-Source: AGHT+IEoSvLdQIihFGA0Sl0iJnzKxIZ4KBayyvvxxq3Qw4o4scg1wxBcVk4yqnk6oQHWSsTTQ5CWoA==
X-Received: by 2002:a17:906:30d5:b0:aa5:19a8:f142 with SMTP id
 a640c23a62f3a-aa63a00aaa6mr123926766b.18.1733466055224; 
 Thu, 05 Dec 2024 22:20:55 -0800 (PST)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa6260288e1sm190646166b.102.2024.12.05.22.20.54
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2024 22:20:54 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-434a766b475so16858465e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2024 22:20:54 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUQ1lYB5foRdNiCR0rk5FuQZjoqyJzOxCgL5O8Pzco0WHlKN6wifkV7aMWyxOvo5FwerJsaDT77WgI=@lists.freedesktop.org
X-Received: by 2002:a17:906:1db1:b0:aa6:3de7:f258 with SMTP id
 a640c23a62f3a-aa63de7f394mr66959966b.37.1733465692215; Thu, 05 Dec 2024
 22:14:52 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
In-Reply-To: <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 5 Dec 2024 22:14:36 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
Message-ID: <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: David Laight <David.Laight@aculab.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 Martin Uecker <muecker@gwdg.de>, 
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

On Thu, 5 Dec 2024 at 18:26, David Laight <David.Laight@aculab.com> wrote:
>
> From: Vincent Mailhol
> > ACK. Would adding a suggested--by Linus tag solve your concern?

I'm genberally the one person who doesn't need any more credit ;)

> I actually suspect the first patches to change __is_constexpr() to
> use _Generic were from myself.

Yes. And David was also I think the one who suggested something else
than "!!" originally too.

I may have liked "!!" for being very idiomatic and traditional C, but
there were those pesky compilers that warn about "integer in bool
context" or whatever the annoying warning was when then doing the
"multiply by zero" to turn a constant expression into a constant zero
expression.

So that

  #define is_const(x) __is_const_zero(0 * (x))

causes issues when 'x' is not an integer expression (think
"is_const(NULL)" or "is_const(1 == 2)".

Side note: I think "(x) == 0" will make sparse unhappy when 'x' is a
pointer, because it results that horrid "use integer zero as NULL
without a cast" thing when the plain zero gets implicitly cast to a
pointer. Which is a really nasty and broken C pattern and should never
have been silent.

I think David suggested using ((x)?0:0) at some point. Silly
nonsensical and complex expression, but maybe that finally gets rid of
all the warnings:

     #define is_const(x) __is_const_zero((x)?0:0)

might work regardless of the type of 'x'.

Or does that trigger some odd case too?

            Linus
