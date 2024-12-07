Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CD39E818A
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 19:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB4810E66C;
	Sat,  7 Dec 2024 18:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="JAoSQ5rj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80FA10E649
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 18:26:22 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-5cf9ef18ae9so7321398a12.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 10:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733595981; x=1734200781;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=V/vNc5nALUWVUmfD8b/aC22BtPTbXjUkByw6MJHP530=;
 b=JAoSQ5rj2wHtIeKEyVESdbXazjjKlSLD8fK1569GJiVMCrg0gA3b6P9BgjqJPk/G2G
 rPw35RsxgWKA45extTdLEjiKI7I9S0ACPLPcVakp1nMt4/NlmLfumBaPHyrhIAuQEX+F
 JD80TOCkyz+plH40K1mD5sh1nl/xnIRh459nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733595981; x=1734200781;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V/vNc5nALUWVUmfD8b/aC22BtPTbXjUkByw6MJHP530=;
 b=ED2zeWTmF3Dd84lTE7x/HJvt3ulsKRnQpQ5giiS1D2H1N/YRH53jwjxvlyljlBRd05
 6X29WrdK960uAnmMvQxH5631xZueft+da+GXmv4lmb2zESpYy/pq9A+o5HCUOudv+hM0
 7bP+osU/TlL0aYONLJjaaE8xpf1KWG1kfbzJ0uzF2FSiajw85gDLwp+RwvaHUEXuN9Ls
 7yePh+X1RAugv/B6bqJS9rSOXCoWbbg8ARPCGCdqT3tRfYyIszlyIAehu9QYt5x1pcNd
 b248TvOSEpMhg8+tINfZkD1AhB5KT9RmCWjzmlRCf45JNLMiYdUrL/emvN2GnvG3AoEY
 v13w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzUL/R6F46UfYPF4zxcZap3hmMvAhqKVlCAi4qobKQcixWyVw3UITJ4d5x9Lg8THkKIDSMHGF+KbM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwtP0o0YoAOZYzXPkfa21idSWH4MegrPM0nK/CmANGEW5u0vWU/
 /O4YUS9xtwXkvQzFor5SZiypbtnijaM5iyBZ89R+ZMP6zqzdenaShiarGF3CHaxIQONujB8pz99
 Civgh3Q==
X-Gm-Gg: ASbGncu8f7jdE+uSp+nAkUHnHNr84cpFNa9qGXhGhiKLNHwkjWXHyE+WTTHzG5NqJy3
 vCkNYZCGGhGjc7lMpTSLDeSRzoDpaoAmdRkwXheVvSeneoiCHBh1hnEwzlPU1VDmuu+GgcXMONd
 XGL9NzWujQoeKdBVYuZNpC5YIC/QvrVhNGU4Vr+bEIEhvvYZeGKFpsQAhHiLkm1zn8+Etylp7gw
 GueurnKReaWN8pVR/uZKMDUUtWiXFDQ2JNNpgv3x8x2tQup5K3fVrR7csqreTIEplAUqacYAcB+
 jZ5npC/sMpMaV6xFx5u2OnsM
X-Google-Smtp-Source: AGHT+IGlE94yLoiWtXcuvBWbhetodT+c5tdlhdxtvfvgt9tueZRz//JxqdrgKG4ro1qCrv4vrGBM2Q==
X-Received: by 2002:a17:907:962a:b0:a99:fcbe:c96b with SMTP id
 a640c23a62f3a-aa621a26c71mr1004860566b.25.1733595981051; 
 Sat, 07 Dec 2024 10:26:21 -0800 (PST)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com.
 [209.85.208.48]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa652737a61sm112323066b.58.2024.12.07.10.26.18
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2024 10:26:18 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-5cf9ef18ae9so7321371a12.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 10:26:18 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCU/A77Dwzfy4cw81ewdLGfuhbZfHlk8Pdi1gADjg5DD4CZiYReLoXO0Jb8QV8vHUa8Ans/XkiLnjQg=@lists.freedesktop.org
X-Received: by 2002:a17:906:32c2:b0:a9e:85f8:2a3a with SMTP id
 a640c23a62f3a-aa6373494a2mr765427966b.2.1733595978237; Sat, 07 Dec 2024
 10:26:18 -0800 (PST)
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
In-Reply-To: <9a0c041b6143ba07c2b3e524572fccd841f5374b.camel@gwdg.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 7 Dec 2024 10:26:01 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjpVXEjX16PP=-hi4CgLqEGJ_U-WvKWq+J3C+FW-hSSfg@mail.gmail.com>
Message-ID: <CAHk-=wjpVXEjX16PP=-hi4CgLqEGJ_U-WvKWq+J3C+FW-hSSfg@mail.gmail.com>
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

On Sat, 7 Dec 2024 at 05:07, Martin Uecker <muecker@gwdg.de> wrote:
>
> VLA use *less* stack than a fixed size arrays with fixed bound.

Not really. You end up with tons of problems, not the least of which
is how to actually analyze the stack size. It also gets *very* nasty
to have code that declares the VLA size using an argument that is then
checked afterwards - and if you have a strong preference for
"declarations before code", you end up with *horrific* issues.

And even if you are super-careful, and you solved the analysis
problem, in practice VLAs will cause huge stack issues simply due to
code generation issues.  The compiler will end up doing extra
alignment and extra frame handling and saving, to the point where any
advantages the VLA would bring is completely dwarfed by all the
disadvantages.

We went through this. We are so *much* better off without VLAs that
it's not even funny.

Now when the compiler says "your stack size is big", you just look
"Oh, that struct should be allocated with kmalloc, not on the stack".
Boom. Done.

            Linus
