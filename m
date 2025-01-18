Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6ADA15EFE
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 23:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA7F10E24D;
	Sat, 18 Jan 2025 22:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="FaMQB5Ar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4724310E24D
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 22:04:30 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-aaf900cc7fbso554587766b.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 14:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1737237868; x=1737842668;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=YB1GEf0GoTBVoPvw06gl5EWzQu13P/vkVxbv6WO+xeE=;
 b=FaMQB5ArSZtyBMHlfFv+6rq6ZDqrcY7ETbDL+h6gu1fGYla0Ss31jVotzij+yi3D08
 IkWLE5tqqN+LJFdccXRuxS4ODPWhY0WVRJec1/jp4YpfJ34EyNAwjF5Q6UIBRnNFEhbh
 bKH2qB0DJ4SkIOvTE0JRN03QlRSjR+ml2EXYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737237868; x=1737842668;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YB1GEf0GoTBVoPvw06gl5EWzQu13P/vkVxbv6WO+xeE=;
 b=OMDOEefdrq6Sb+a53sBeFABS/gfXvBPCgbH0eN67ZLDH9KA8iSA4jXKpTWFaepDGyI
 kQM65NMCelCNZB7EnJ+08y51kAske+JBIBf0oDNHUwlo3r8QZkFaguWbm3rlBPNMapG8
 UzjVS7dXjarDiMeOtHn3rriRWn4yo0fj1r138Ee99IWOSPM1iqWG101g6dnTUfufCJRS
 l88J2aW8PT9gIHvK19UMxmNowfUI39rtNvroqZT4zp0XkTFSJyc1GTCxNPDeequSWFfF
 d+yjJ9GbHiqUSil8jiv1uaWVGLGX7WZ/9DgP0zvX7BObkwORjQNq97FlDw9w0I1BD5tX
 NRrw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeMKGxfTHR+2D/wohGQ6lbSx0uicFINTFpShpkEM3ZUU6fZQUPBnLt3dAmNLYpKa5St++6ECrgi6E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwfDXlJ2rYHDTTG6s8I+5g4ZW994bZ2sDIm2TRolGCeOSPgEnmG
 VgI+Lk2ekjpc+Op1K3kSgxILuo1PatO+0amZmoi/oXVooa/PB3C46/hDwTkQMtIsC8ITm6C3bIm
 y3G8=
X-Gm-Gg: ASbGncsKZ1f1ltupKv4PkCfzQgGSVBKFXeVliwKqOCkkb3rN1dHLzTKpoC9dhufAaEH
 sQsImKQokO3IQN05bdZbOtdfDhy5XmZRDXD3cF4f51anmmajhwNSWBdiIfV4N2Jb+0sXhLo9TVO
 RigtzRiwclAm2twQhoPnaW7pBpPCwYU1MG6137XzZWrTgzrt/wIAcDGMxEqn7q8p1wbjoJWE3x1
 UgM40zWptXGVOTBlCjIa5IHkcETAQbjw08fX3VtKEHl3XcsNe8OdJtO1wh/aSvZd1tU/1dC/sri
 v0+dYYrjL4gGZBDM3/JafSiEjUD4PwDXGQeKxL5pfoFR
X-Google-Smtp-Source: AGHT+IHzrkgBPyWOxkWOTrpWNpQsO11siXtOFY/YIgydWvFl0mtlU/Q/cVJ7emOP9cdDXrpOCBmLbg==
X-Received: by 2002:a17:906:2693:b0:ab3:a026:b105 with SMTP id
 a640c23a62f3a-ab3a026b761mr375677966b.23.1737237868562; 
 Sat, 18 Jan 2025 14:04:28 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com.
 [209.85.218.45]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab384ce1a49sm396483666b.46.2025.01.18.14.04.26
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Jan 2025 14:04:27 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-ab34a170526so461632366b.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2025 14:04:26 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXocIt1pd7wPtfyES5QWKw2NJXoecXCDSFkLinVesEVa0uu22mvpEXMtzgvNGDdEX3LrShCjjKtLxg=@lists.freedesktop.org
X-Received: by 2002:a17:907:3602:b0:aa6:7220:f12f with SMTP id
 a640c23a62f3a-ab38b10cefdmr665797766b.18.1737237866493; Sat, 18 Jan 2025
 14:04:26 -0800 (PST)
MIME-Version: 1.0
References: <c50365d214e04f9ba256d417c8bebbc0@AcuMS.aculab.com>
 <34d53778977747f19cce2abb287bb3e6@AcuMS.aculab.com>
 <ce600782-1012-47e3-ba3d-41c5a4b7a7b7@roeck-us.net>
 <20250118170959.3aa56f4d@pumpkin>
 <29ef57a1-e4dd-4d5d-8726-f1f79c698b66@roeck-us.net>
 <CAHk-=whAxUvW-APU42yWfCKHF5NhPLoTida9Jo=A9ZGGgjb18Q@mail.gmail.com>
 <0f28a0b7-c24d-47d8-92f0-8957207ea309@roeck-us.net>
In-Reply-To: <0f28a0b7-c24d-47d8-92f0-8957207ea309@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 18 Jan 2025 14:04:10 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgLV3vk5TanOci16txzuQfQgxZHaGZjTWudLf2hKHZB=w@mail.gmail.com>
X-Gm-Features: AbW1kvZhcxgIQAYPCZcf728Ps39d9XCiTSxU-oFml2GX2TTEJHO14LUZUSWwEWU
Message-ID: <CAHk-=wgLV3vk5TanOci16txzuQfQgxZHaGZjTWudLf2hKHZB=w@mail.gmail.com>
Subject: Re: Buiild error in i915/xe
To: Guenter Roeck <linux@roeck-us.net>
Cc: David Laight <david.laight.linux@gmail.com>,
 David Laight <David.Laight@aculab.com>, Arnd Bergmann <arnd@kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, 
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, 
 "pedro.falcato@gmail.com" <pedro.falcato@gmail.com>,
 Mateusz Guzik <mjguzik@gmail.com>, 
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
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

On Sat, 18 Jan 2025 at 13:59, Guenter Roeck <linux@roeck-us.net> wrote:
>
> I am not sure what to do here. That kind of problem seems difficult
> to avoid, and I am sure we will hit it again elsewhere. Should I declare
> gcc 13.x off limits for parisc builds ?

No, I'm sure it can happen on other architectures too.

I think the only thing that makes parisc trigger this is that its
WARN_ON() is slightly different from others, and uses the
"__ret_warn_on" a few more times, and that just happens to make the
compiler decide to simplify all those tests.

Or something like that.

           Linus
