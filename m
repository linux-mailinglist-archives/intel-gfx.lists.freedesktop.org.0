Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D00A18839
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 00:15:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1219E10E646;
	Tue, 21 Jan 2025 23:15:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="YLO4JiTt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E845310E646
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 23:15:28 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-aaecf50578eso1203369566b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 15:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1737501327; x=1738106127;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3CzgTo91p2JzpEW+JctKkaLkKIND/CdJFB7oWX/HWBA=;
 b=YLO4JiTtvrBCwWaTfU11QpnFvDD4pKoAbMxFnIMcgiEzFiiTkRkgG6W6W/Iw5rLYqU
 j1ogchRDOYqFQJip9bVu47XocAGe/R1mB+2BMniFAlW0PK+jgJpRHoCdt3C5z31yZWZ4
 9A8hrRpKhLX5lUzLx2yWO5Ylat6XjmBEvLGxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737501327; x=1738106127;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3CzgTo91p2JzpEW+JctKkaLkKIND/CdJFB7oWX/HWBA=;
 b=luOCnH3KIpMr98GcmZhk9IfCr1sJUG4CQlXB4HbCRq7Lx1kUz3eoaE6oYDcfUxR0TU
 7eU5Z+i1fj/8o/kzYhuc5SB1ZUQAa/RBci2s1tX/GUi+NaZsk79ls3532Jwc/dKqI5CD
 DBSkFeNUsPmLO8kTiSpUbJGgLXTdSdXZ+z3B6L3mF/VUM854PUoGfC8aFP412YtZjtng
 jOSX88JnfEmdXHeqpjz3VAzYXcdHB1xAsoyVm2kOlirVBrYPuJxSm7/+hN5fzk27MsQ0
 d/Wd6RvRqD+Urq6jrFiQmVzb/nezz2oUPKykb7Rqpv+iRwICXlY34dAGP+9aOzPdH9VG
 RJPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3848zVjKxT2ZOYgQlrcKjnAdUoC+cwnOJRH8Mvi7rh9At8gko+BgCilf0iJsYfUqNZuWT2FquRNc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSvsU30dVJiGPlQUN6So0jtt3wpfNdKY+GEdSSrgqOIlowd/q5
 NCk3u2IMs6NpH+06wAxoQIbz1FR9pIoAjr6zY6ZHroUeNgyUzgObPu2kqwj3DN+pqkS/8cB4+kH
 /G6Y=
X-Gm-Gg: ASbGncuHU/vM5PVDSmXDPJvTDMLT2gHmzCTftiwL5NFxXf6iqhWc1QBYH7YM2l8kv8d
 BHQcCRBX7OnU51u/1bEQPjZz7LlmXeFzGiCQgSfsey8SbXnmfqHPmdDw/aV4gnPi8QQMSkW26HJ
 ucmnGCckozo9XmtwawBJAdLqJOad3CVTtjHUnF/RbXe6wPhmwz2VPChaJN6uhxAeLXCo0Lcggxk
 SM/kjdLGS/yfsuydOUEQeeOW1yE+22SoLuZZ4pQu/M3xvzyC11gzDNBUCLwdELxtn79GwJiLpVO
 DzMeYDbBNz2mY4uYZHXa3xwAdJPaJZIH5KDoczyAeJ5N
X-Google-Smtp-Source: AGHT+IGBzoEKLYH1G8sawryi/eeuXyr/5vYrl6V7UZBKcdXykohFQXBEoiHNcgdliK4oLjIXK+fO5A==
X-Received: by 2002:a17:907:7f03:b0:ab2:d96d:6364 with SMTP id
 a640c23a62f3a-ab38b10ade0mr1648386266b.18.1737501327120; 
 Tue, 21 Jan 2025 15:15:27 -0800 (PST)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com.
 [209.85.218.43]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab384ce1bacsm821369166b.53.2025.01.21.15.15.25
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2025 15:15:25 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-ab2c9b8aecaso960864766b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 15:15:25 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCW9m1zu/2nwbmNO0Rr48TRCsEn7f4y3fA08PnSa6ZXTE0yxfRfjs+6FBSKF6IlNooXmvQr+pw2pBl4=@lists.freedesktop.org
X-Received: by 2002:a17:907:7f03:b0:ab2:d96d:6364 with SMTP id
 a640c23a62f3a-ab38b10ade0mr1648380366b.18.1737501325402; Tue, 21 Jan 2025
 15:15:25 -0800 (PST)
MIME-Version: 1.0
References: <20250121145203.2851237-1-linux@roeck-us.net>
 <Z5AmlJ8stVQ4L5jS@intel.com>
In-Reply-To: <Z5AmlJ8stVQ4L5jS@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 21 Jan 2025 15:15:09 -0800
X-Gmail-Original-Message-ID: <CAHk-=wix3Rgt+8yBHDdeb_F+c8TzL5aidtCiUEpF+TBc6SCLiQ@mail.gmail.com>
X-Gm-Features: AbW1kvYKV26mhyqOrtUvp86nodxXf2uwO8fs5mpSdjqoyzGKlqO6hShDhX9VCRY
Message-ID: <CAHk-=wix3Rgt+8yBHDdeb_F+c8TzL5aidtCiUEpF+TBc6SCLiQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/backlight: Return immediately when scale()
 finds invalid parameters
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, David Laight <david.laight.linux@gmail.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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

On Tue, 21 Jan 2025 at 14:59, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> I'm pushing this soon to drm-intel-next, unless Linus want to take
> this one directly to his tree

Let's just go through the proper channels and go through the drm tree.

Unless I've issed something, I think this is only an active issue on
parisc (and only with certain compiler versions at that), so it isn't
some super-urgent thing that needs to be expedited.

Thanks,
            Linus
