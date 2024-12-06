Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0152F9E7884
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 20:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965E510F178;
	Fri,  6 Dec 2024 19:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="a3t3jTpg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EE010F178
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 19:03:08 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-5d10f713ef0so6315150a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 11:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1733511786; x=1734116586;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CnspTgT+QlMaq72RnxBUxeYja+eFoihpXPIoDsPSZVk=;
 b=a3t3jTpg/fCfbR0KMXAgo8kNNkY8UCZyQ7ESTpSKX9owZzl3UGKFj5SAaUEWRq6Bgj
 WNtXQcKhCKRBqDPVjrAoXgjClPdCIEE95JdcF/YGsZuLq7VEbNxrPsagY2OvvJBM9GaZ
 glG7DQ7nCtdXgYaoptNKpidAlPqJuy+gWHb1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733511786; x=1734116586;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CnspTgT+QlMaq72RnxBUxeYja+eFoihpXPIoDsPSZVk=;
 b=qMvR+d5vwth18Hi4xD5BY0YXQxnuav+mMj3yzy4iwWq3nunm6nbt7NFqJEkremgUzA
 KpjFoCQJTPSOe2osw5FiZ1eZMX9wo7L9uAQbFmvhBG+PSH5QTkQ4xwKx5r1sLeUCyGM2
 EepgCbk+76ynX2EkiShRAWm2DhgoW0qSjQ6RmLB31QHcpihKY39QQ58EfPGnIXhtfA3D
 UV++nAopJcZO5Hk+ttqVeC+qZ5+CWsS7kRlVyCz3oxpdvX8/W0dw5/oxhhOzF2z9R54T
 Kxu0lTTd3nTtyU1CY74Xae0A3onBHM/6rMX2N+9EeId50xhbPL8wZ+sfg+lte8LGc6k4
 PUkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbnpQmi4X0IqcRxaNKhNUmu5V/gmKx9ipmY5WvCsEYw5Y2ViZFVM2zr91qLCauohvyc8WPIhHbgkE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzbpa1U/9UGZ6yGocCncxnuBYiWqMiBS4Rd5KNTZT9e17tbqmWP
 AfNruvXXIDG+5mnV2aXzjUiQpPgG7vPglP/4x3KbxtKNGEpkcq9h2NMxULdbMN2u4y0hRz4R5Zn
 VeqQWXg==
X-Gm-Gg: ASbGncuoHDabnn6THcwiE1JBAWQol4u5mvcbJ9g5LiOPVWX+J3G1qLRhu3q5W5pS3a/
 v6VDetFihc7UVGxfRaPqkYqJGfwAwCJBk9AR//dtLpE3RLF1gr2AxOprSps/hkrg7aRa1bAMXfq
 3MATr1NP3vUBNE+eWK9h+wesyZlTu6R8y19wpw3MVNjafDsIVauWOe1p/JVcF7t8G4liKk8u7yb
 0YlqfSLrQy1kRSi5NxPujZvXCBEF+5KmGQz/GJgXjXNbu2y249zwafkIYzieggQ6Y6oWg0LtQOs
 H4Gu+TvSlNijc1d6Kjpr36Id
X-Google-Smtp-Source: AGHT+IF8Jktm2v5Axnzwwn6IvRi/Sq0ZnaxhWdgQ/CQaTyZoC2byXNFYBhfA1NMb7LbtH0QWLej2QQ==
X-Received: by 2002:a17:906:18b2:b0:aa5:358c:73af with SMTP id
 a640c23a62f3a-aa637353522mr440278566b.6.1733511786081; 
 Fri, 06 Dec 2024 11:03:06 -0800 (PST)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com.
 [209.85.218.54]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa62601b3edsm279323866b.100.2024.12.06.11.03.04
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2024 11:03:05 -0800 (PST)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-aa560a65fd6so423812166b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Dec 2024 11:03:04 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXtcqC3BSFg0rKEKDzWFMFIw6jlyVTWN4f5HDgPb+UX/aMps0qqPUcCE4kXyEjkrhIRbvIpOMF9hIg=@lists.freedesktop.org
X-Received: by 2002:a17:906:9c18:b0:a9e:b5d0:4714 with SMTP id
 a640c23a62f3a-aa6375f5cd6mr310802966b.21.1733511783880; Fri, 06 Dec 2024
 11:03:03 -0800 (PST)
MIME-Version: 1.0
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr>
 <1d807c7471b9434aa8807e6e86c964ec@AcuMS.aculab.com>
 <CAMZ6RqLJLP+4d8f5gLfBdFeDVgqy23O+Eo8HRgKCthqBjSHaaw@mail.gmail.com>
 <9ef03cebb4dd406885d8fdf79aaef043@AcuMS.aculab.com>
 <CAHk-=wjmeU6ahyuwAymqkSpxX-gCNa3Qc70UXjgnxNiC8eiyOw@mail.gmail.com>
 <CAMZ6Rq+SzTA25XcMZnMnOJcrrq1VZpeT1xceinarqbXgDDo8VA@mail.gmail.com>
 <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
In-Reply-To: <CAHk-=wiP8111QZZJNbcDNsYQ_JC-xvwRKr0qV9UdKn3HKK+-4Q@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 6 Dec 2024 11:02:46 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjk_thfjRnAYRoGX7LjJ8AyiPTmBqjJEPu6JiKDLG2isg@mail.gmail.com>
Message-ID: <CAHk-=wjk_thfjRnAYRoGX7LjJ8AyiPTmBqjJEPu6JiKDLG2isg@mail.gmail.com>
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

On Fri, 6 Dec 2024 at 10:52, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> This may be a case of "we just need to disable that incorrect compiler
> warning". Or does anybody see a workaround?

Hmm. The "== 0" thing does work, but as mentioned, that causes (more
valid, imho) warnings with pointers.

And it's not necessarily require that a pointer expression actually be
marked as a constant, as for the fact that these macros often get used
in various arbitrary contexts where things *might* be pointers, even
if "not constant" is a perfectly fine answer.

We do actually consciously use __builtin_constant_p() on pointers.
It's very convenient for format strings in particular, where
__builtin_constant_p() is a good test for a constant string, which
sometimes gets treated differently.

And in fact, dealing with NULL pointers statically might be worth it
too, so I do think it's worth keeping in mind.

               Linus
