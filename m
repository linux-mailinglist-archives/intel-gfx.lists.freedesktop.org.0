Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B95169E81F4
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 21:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8002310E1D8;
	Sat,  7 Dec 2024 20:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="V3C/p09Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8898910E1D8
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 20:28:55 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-5d3ea065b79so499066a12.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 12:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733603333; x=1734208133;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HiZTKf4hCKQ8GKQ+oAO9V4GLtbxeasgvzn3MVqs40sY=;
 b=V3C/p09YlT5WH0RAt4cm6HXdzLSlwrANnqMnlGpE0pD52rYZr+hl5pODKjCnTGQ7nq
 b1qfBXv5fR744vSBAM7MIfdA5vVz+2hr5TytY0950d40DY+TUEUlyGSapQyHnh+5s+yx
 T4vkSvrJ6nU3Q68qR6PdS66dKdISxMch/kSfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733603333; x=1734208133;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HiZTKf4hCKQ8GKQ+oAO9V4GLtbxeasgvzn3MVqs40sY=;
 b=V9QJ1S/yxAon1WySpiUBfZRENEh35KQhRXfZIIX13bTuP4uTytQzKkUXt9YE++tIWo
 rJc3j+MLtTG3rg1wBV0o+Dc+sAaPzek/2cNza1sgiMOz5+b3otOjYvlSkTtZ5jTvqNt9
 DtMdEAXLs6XMOeImK7E0Jjz/hAtU2iu5EBhtr7uYhO4clferH7uNvbrkbrqgvNKNfpSu
 mAZTuVj/FQpStJgdf23KA4b9cIpSZd5lXPGS6J8/WPeg+9mnWucd5tnT05ff+sI3K3Q4
 hE0BbHh9+c3g4wl2IZbFm5OgTo6FCfKaEzOkSEeEDE6DE8t47xuRlykwWtDi4JIUGIsG
 N1Ag==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvOinIXV0lW0fWsalqJTUIsmfbyUbu0IccU7zm24b5EqNdrvQCGkDqlMSCfQJiV1S64fHHft5BTjc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwYwmyuvitwIqM+Ty6lHiJCoj8td6pNshTjftk/kdgulU0RzPTs
 nE1i+RDKY45AWKUGlZeMdMTZrTT43z0tF6jCQaBV6rQMgPn+NdJj/+KuRaZkAYEUxLYhX9J16Jp
 +mFukPQ==
X-Gm-Gg: ASbGncuBV1uRpcnsSHtqs9qemhceHzbOaB6+0k+IlO+4ezIMptMhncDf8O6B8pP12j1
 9uJ7yJomdp5FStwi5eJSmcLhqbcni4CnDVuGbV5t8gbUsyyy30l+D/TSkqdSqxLmA4FKUki4fhe
 XU0mlsHHTj5vFtQgRDrWzmmiOXK9fU3aCJkypvUL/x0s2SFtAuodEdwGHcEYkKY2obkIi4o6lmL
 gJCAVZg1KwIPsmtrxn0CK5ldOgnmRPoBhfLPP9BPbhN351SjW89hPkvApD9rqU85HVKRtL1oC4M
 /VI89dJs2H3ey2uxtDjunO24GFAe
X-Google-Smtp-Source: AGHT+IEsjRsBKbUzKYOj7x7iD7rKhBIVy+mFmwvodA7nPYaLTG95cOJkefTHNka+0w2Q4qUL8hOdxA==
X-Received: by 2002:a05:6402:4011:b0:5d0:8498:8bed with SMTP id
 4fb4d7f45d1cf-5d3be6d129cmr8555603a12.15.1733603333444; 
 Sat, 07 Dec 2024 12:28:53 -0800 (PST)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com.
 [209.85.218.43]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5d3d7047851sm1714562a12.65.2024.12.07.12.28.49
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2024 12:28:52 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-a9f1c590ecdso521827466b.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 12:28:49 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVqEVhgI3goMMmjvk75ebRXwCB22YwmREPitrexTQu+O+eEYwdNL3eb8tGSOSfQPPDz4OGPJE1LE9o=@lists.freedesktop.org
X-Received: by 2002:a17:906:5a52:b0:aa5:3853:553d with SMTP id
 a640c23a62f3a-aa63a21b715mr608706066b.46.1733603329136; Sat, 07 Dec 2024
 12:28:49 -0800 (PST)
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
In-Reply-To: <0a2996a7c63930b9d9a8d3792358dd9e494e27c1.camel@gwdg.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 7 Dec 2024 12:28:32 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjsfYYKBYuW8_6yKjdwHih0MMa2GwUJh_LHcuUNFR7-QA@mail.gmail.com>
Message-ID: <CAHk-=wjsfYYKBYuW8_6yKjdwHih0MMa2GwUJh_LHcuUNFR7-QA@mail.gmail.com>
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

On Sat, 7 Dec 2024 at 11:19, Martin Uecker <muecker@gwdg.de> wrote:
>
> But that all seem solvable issues on the compiler side.

You know, there was a whole *architecture* that was designed and
predicated on "it's all solvable on the compiler side".

That architecture was pure and utter *shit*.

Because no, it's not solvable on the compiler side.

Getting things like value range analysis right on the compiler side is
fundamentally hard.

It's hard to the point where either you only get it for the simple
cases - yes, I can show you a ton of real code where it's trivial - or
you need to have explicit markings in the source code to help the
compiler, and then you end up having to have the compiler (or some
other tool) validate those with asserts or whatever.

And random asserts ARE NOT ACCEPTABLE in the kernel outside of pure
debug builds.

They may be acceptable in most other situations, but in a kernel you
can't just say "we stop now because it turns out the analysis was
broken and the manual notes could be fooled by an attacker".

Now, would we want to have proper value *static* range analysis in the
kernel for other reasons? Oh yes. It would often be very nice to have
the ability to state "this value is trusted and is in this range", and
have it percolate all the way down, both for optimization purposes but
also for various sanity check purposes.

But it's simply not sanely available in the generic case.

> a) this is not guaranteed in a specific situation (-Wvla-larher-than)

We'd either get horrendous numbers of false positives that we then
have to manually add special code for, or

> b) transform the array automatically to fixed size array
> of size X *or* something smaller when it can show this.

we'd just do this by hand *once* and for all, and say "VLA's didn't work out".

So yeah. We did (b) by hand.

We used to have VLA's in the kernel. It was a disaster. We got rid of
them, because the (big) pain wasn't worth the (few) places it was
actually useful.

So we have been VLA-free for the last five years, and it's been good.

Simplify.

             Linus
