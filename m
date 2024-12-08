Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D911F9E830E
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2024 02:59:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAB410E251;
	Sun,  8 Dec 2024 01:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="FI/xMRdb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8191410E251
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Dec 2024 01:58:59 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-5d3ecae02beso437940a12.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 17:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733623138; x=1734227938;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EZjbRKhMOCLvsh/fbuGewVnDsfkV1Y6IoPuC3JohNPQ=;
 b=FI/xMRdbIReqoWIslfiZ6DU52okF1rcsht0UE2Cy4E+IyfvMzXNl83K+KPJmr5lPYH
 KeNdW+RCqPwwY+vuj9l4Uil+quzoG8IDGztx+4GOukbLLwOxrePlbzpHemx92n2MWMCQ
 F5QAFrcZqBW5D6AbcFIE0iUed/G9Ywz+yLe94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733623138; x=1734227938;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EZjbRKhMOCLvsh/fbuGewVnDsfkV1Y6IoPuC3JohNPQ=;
 b=IGGmMK3Doh542LC0WokkEQk6S0YSwoRTBltDlIJ1i1nEjKnZBcWw0YmBfRN57dJRuQ
 LdjYHkM7TcTD6G2bD2UfurwrQdhaigpjNeS69kZm/b6xlwqTZHxOIFA0ELqNMr56fHkV
 /8BozO90OTrzn5xV3A2sb0ZOEB9wbIcTa62sHlOiBFhoKRGoVv63s++R/tQBp+v1zgwN
 pKvjmxdzcbPU9h17KJ9ZA9r6nde5hH1g9PHcZIqjMUhm1d40VszBPG5amGbAWlNyHJ8H
 6kCySy2mKCnreP1TPJ3G8qxQTgl9axz5wpvSSq1WZdnnSU1bNM9iYG/x2XQdLZVbn4h6
 fAlw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6Sb+1tvxHADeZpyH1/bgYC4PWwdgWIICwjgIjGK8PU1i1PpYMC9ripRV8HzRVKNBPqpTEgR0T0W4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzTFQ9yZsFexDJ3Nj+idKyGP8WrojG/2InLCy6bl30iCh7pzNJK
 LmW3Ze7TeeCRS4L3pRo1HaYO7AC0235I9e+ctyPP3pS48HLsKrHPNj59RJfKtlO+yOrEyHd/fJN
 9f4SpCg==
X-Gm-Gg: ASbGnctXKRN7DynqflJVi7JJmIX2aXatUMBVA7Q2fYZc1t2UtFSM+qgXdrjHfrFriy0
 ORlcih0zh77V03S0OftMUJwTFJ73fgg3TkSzeIjf18lN+Y/oy9aTA59xZZ+aBbx7DLAgkBX1f+W
 gjVFE4eEfnyUw23nwprlH/FxSzeanUCoDdYy9WOA93cAC4zvSRi/iYdfRPg1GiNM8b+agKnMDVs
 p164ei73hVy4B3gGx58qhgxwRU/Ob0ReDNCPM0kZEg8M0R3TV0JM34MDfHrCHnqzl/LFu3B4D2T
 kFGHrqiuar7vvcivAkd4FoAv
X-Google-Smtp-Source: AGHT+IEYY5fo/CE3K1bwhMkiZhPcxzy0t4HyQLG3MKoNBi1pRVkpBj2SbH/4Y7W6b2jv8gzAHtEdDw==
X-Received: by 2002:a05:6402:5215:b0:5d0:bde9:2992 with SMTP id
 4fb4d7f45d1cf-5d3be7f04aamr5970048a12.26.1733623137727; 
 Sat, 07 Dec 2024 17:58:57 -0800 (PST)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com.
 [209.85.218.53]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5d14b608c8dsm4146533a12.48.2024.12.07.17.58.54
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2024 17:58:55 -0800 (PST)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-a9a0ef5179dso434867166b.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 17:58:54 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXj8um3dwAjZ3bEivodNqfiU9JPtU72w+v9zDXX20hXLVfTI2qD3F0kkYpmmscJhLh/sHGimGXg/LI=@lists.freedesktop.org
X-Received: by 2002:a17:907:84c8:b0:aa6:2fc7:71aa with SMTP id
 a640c23a62f3a-aa63a24f1famr565813866b.55.1733623133832; Sat, 07 Dec 2024
 17:58:53 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <abdd7862f136aa676b2d2c324369f4a43ff9909c.camel@gwdg.de>
 <CAMZ6RqKzGiRNMeLsQKRNrxvW_bXB-kEi11udQ82kKX6tGCrqcg@mail.gmail.com>
 <9607300dfca5d71ca9570b1e1de0864e524f356b.camel@gwdg.de>
 <344b4cf41a474377b3d2cbf6302de703@AcuMS.aculab.com>
 <9a0c041b6143ba07c2b3e524572fccd841f5374b.camel@gwdg.de>
 <CAHk-=wjpVXEjX16PP=-hi4CgLqEGJ_U-WvKWq+J3C+FW-hSSfg@mail.gmail.com>
 <0a2996a7c63930b9d9a8d3792358dd9e494e27c1.camel@gwdg.de>
 <CAHk-=wjsfYYKBYuW8_6yKjdwHih0MMa2GwUJh_LHcuUNFR7-QA@mail.gmail.com>
 <9d9567dbdaf39688bbd0d240e29dec826a5931ee.camel@gwdg.de>
In-Reply-To: <9d9567dbdaf39688bbd0d240e29dec826a5931ee.camel@gwdg.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 7 Dec 2024 17:58:37 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgVGmj+nAju2XuWWD_FZHdeytRW2XX5D-L3MqDuRRciVg@mail.gmail.com>
Message-ID: <CAHk-=wgVGmj+nAju2XuWWD_FZHdeytRW2XX5D-L3MqDuRRciVg@mail.gmail.com>
Subject: Re: [PATCH 02/10] compiler.h: add is_const() as a replacement of
 __is_constexpr()
To: Martin Uecker <muecker@gwdg.de>
Cc: David Laight <David.Laight@aculab.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
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

On Sat, 7 Dec 2024 at 15:52, Martin Uecker <muecker@gwdg.de> wrote:
>
> Can you point me to some horror stories?

So the main issues tended to be about various static verification tools.

Ranging from things like the stackleak plugin for gcc, where handling
VLA's and alloca() (which are pretty much the same thing with
different syntax) was just very much added complexity, to perhaps
overly simplistic tools that literally just check the stack usage by
parsing "objdump --disassemble" output and then building up
approximate "this is the combined deepest stack" call chain
approximations.

And even in the *basic* infrastructure like gcc itself, VLA's simply
made -Wframe-larger-than= just simply not work.

I also have this memory of bad code generation (again, this is 5=
years ago, so take this with a pinch of salt: dim memories), where gcc
wouldn't end up re-using VLA stack slots, so VLA's made the frame
bigger for that reason or something like that.

We explicitly use "-fconserve-stack" to get gcc to reuse spill slots,
because gcc has been known to sometimes makes insanely piggish stack
frames when it just creates a spill slot for *everything*, even if the
spills aren't live at the same time (think big functions with lots of
case statements).

We also had several cases of the VLA's just being silly, when a simple
constant-sized allocation just worked fine and didn't generate
pointless extra code.

Pretty much none of the code core actually ever wanted VLA's, so the
end result was that we had these bad patterns mainly in random drivers
etc. Don't do that.

                Linus
