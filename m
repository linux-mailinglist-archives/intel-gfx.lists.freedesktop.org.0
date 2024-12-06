Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1AE9E785F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 19:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A39910F16E;
	Fri,  6 Dec 2024 18:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="B6oghmzw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532D110F16E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 18:52:53 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-aa55da18f89so325349366b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 10:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733511171; x=1734115971;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WGtbOaTCTsAvyUDr9a4PNqlmY0QlpNlNkPLsZ0+zYxc=;
 b=B6oghmzwGbCFD3BagKky/XXZG9GaIGVlIM6DW1rlUIQprjw1ilndtOoFDOcU2ic6xX
 lmTmqCjnV+j87SvHepiPlbpVBOeig2iG62ayTw4irxi5MGV5m9Iz5JlwX0Ejk5vsJY4j
 zyo3BBopMxfaz7XnxsaEoGge84170kaPbLlyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733511171; x=1734115971;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WGtbOaTCTsAvyUDr9a4PNqlmY0QlpNlNkPLsZ0+zYxc=;
 b=BXNnqxl1h8D+fiT4kWeWqmZV1l3LPbSdT77dUXB8qQwD1nYTmeDeS9SGf2Z2ugxl6c
 AHyQkYoV2s+zd7vM8dQuyKE+CQtA0w9qIRu/yz+K/su8mxnyga0nz96tGFAKpUryI4bx
 yn53bMzd+7qKuTfh6vF/ofyHuWkmUKfi+Wm1+zsDUwB8ou0KiS/im8lpb/JvuaVNUKaq
 39+3isA95cE5sOeF8EgskBZo5qt3F2UaD2Q905lgc0ot6zptynZsWgXDDr4Pq06F7BPi
 E6ry6ZSnfD0DzR/aIeRQb99jzcWhintmH8gf7rMEiQ4IZ86Qwnf0jahhsVMH0u1iQ50Z
 BawA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7LuDZi085YXWLpYj+EjKy4AMl6dMGkebdzZcjhHUNUszx+C9IqEb//wttfsDH9nTukFPvOjJZi5E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyZEg6LdxjY4qy7hW2/kWG3lo7N34kfqAge1t5Ni0Fmr2qJT565
 QxOUcc+jF/Od3qWWFGD1mtDFJqvq9hj9P0wUHYRYZlF6cP1IfchSAjuxV9t5fAZNiKk6iGmW7wF
 bh6NFpg==
X-Gm-Gg: ASbGncvhyru6HpcSmJqm6XExU93Lp3Ccjhtb7hyEtnOYs3uOaYg8JsQ/qxnYtkk0QAo
 Z4ytIoDjjQWR9LS6fXUA93H5YK46e0iOIGTzocgHbgMthzzmKV0Cali5rYz6TVipDmy4iDn/hub
 ctJQULbZjmzF8g1dmEAcuBSj3XNq7axDK8PWCLgYiv3va6KUvMB7TV500AsBBJ/O5DMaMCZl/0V
 s1mfVZcWmZiCiyH2NZuYsg/lXoXyLjpWS7q5WvRzn6B+W5W0BJmK3Sa061gbkz6Ghi6UfwFxU95
 swFm5AqRQpjQM1JSgeC9oTAw
X-Google-Smtp-Source: AGHT+IEN+ILsueqx0yTuF6uvkkaMaF2zeX/vt+ptWhPWlcmEGrE26Rkvxc4+MpIhGdN7NUcZV9jvwQ==
X-Received: by 2002:a17:906:1ba2:b0:aa6:1e68:3b76 with SMTP id
 a640c23a62f3a-aa63a015075mr259112466b.23.1733511171234; 
 Fri, 06 Dec 2024 10:52:51 -0800 (PST)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com.
 [209.85.218.41]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa62602cf1dsm281103366b.129.2024.12.06.10.52.49
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2024 10:52:49 -0800 (PST)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-aa55da18f89so325345566b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 10:52:49 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWyNNKkTL/i+Z2GCiJVQYBAq4QcnxzsFUpewJ4rG0O/fNq0M0BP0n3rt1TXv+OFxZy+4U0n/GXtht8=@lists.freedesktop.org
X-Received: by 2002:a17:906:1ba2:b0:aa5:451c:ce1e with SMTP id
 a640c23a62f3a-aa63a0aa48amr290776466b.32.1733511169269; Fri, 06 Dec 2024
 10:52:49 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
 <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
In-Reply-To: <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 6 Dec 2024 10:52:32 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
Message-ID: <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: Vincent Mailhol <vincent.mailhol@gmail.com>
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

On Fri, 6 Dec 2024 at 10:31, Vincent Mailhol <vincent.mailhol@gmail.com> wrote:
>
> > causes issues when 'x' is not an integer expression (think
> > "is_const(NULL)" or "is_const(1 == 2)".
>
> But 1 == 2 already has an integer type as proven by:

Yeah, I was confused about exactly what triggers that odd
'-Wint-in-bool-context'.

It's not about some actual bool type, it's literally a random
collection of integer operations used with logical ops.

So it's things like "!(var<<2)" that generate that warning, because
some compiler person at some point went "maybe that left shift should
have been just a comparison instead '<'".

But it turns out that "(var <<2)?0:0" _also_ triggers that warning.

End result: I have *no* idea how to shut that crazy warning up for
this case, if we want to have some generic macro that says "is this
constant". Because it damn well is perfectly sane to ask "is (a << 3)
a constant expression".

How very annoying.

This may be a case of "we just need to disable that incorrect compiler
warning". Or does anybody see a workaround?

             Linus

              Linus
