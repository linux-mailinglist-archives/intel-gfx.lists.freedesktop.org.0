Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841C46F05
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 10:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAD189686;
	Sat, 15 Jun 2019 08:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD34896B0
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 08:35:06 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id i21so4667637ljj.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 01:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4UGJplWLvvT5x1fjk7+b6sV+beIBCNNCp9T/x8pW9UM=;
 b=Tx2yBDMaWIEYUSOMC5oymqcf/zSdFSIykrLQPWxv3RQKZ0LafHzbbAAGy/7nKduX26
 /YemVO0azyYYhrhhN3j2muTh9BtVz426fljOrwLGxD5c0ByaKMXUrL2skC9pH+No4Yh5
 yJnKjAsdZnttok/gz9z4qA/3GpgSt8d0ekV/3XC1pOBHQgAXI1CM2VU9kknbbUtf0+NH
 RuE1Uu2EsBaN8j3sPk3ABFzLK5A7hDI2qDkp4uQ/7GKJOZDN+MjHnFHxJDXS4vk8eAg7
 nOhl5c96CDYAA2BeM2uHCkL2Tn3mWUYsrgA6rICXpHZdiDFJvsP8Gw0IZE8+PtXSXNqC
 Widg==
X-Gm-Message-State: APjAAAWQcYQhpYh4EK/LKcw1vy/Tt+r/Nzm/CAV24R6iWBYbQ3AmvGGm
 36HDE4gTR8decC/402lZw+pLUwfu/01sibk9SYfc6Q==
X-Google-Smtp-Source: APXvYqxy2MrJH9NPydUGhEMJDEPHa0TqD063Gp/roBOhux9SJyWlNw7hnbh5DT7CAA/tF8sGAQXdjeqYCebRLeubUjU=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr31505723ljg.62.1560587705256; 
 Sat, 15 Jun 2019 01:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-33-daniel.vetter@ffwll.ch>
In-Reply-To: <20190614203615.12639-33-daniel.vetter@ffwll.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 10:34:53 +0200
Message-ID: <CACRpkdaoGHaNT6dQEfMnCcuzUsJDNp=7=zc9Nrz5yAH6KiWWwQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=4UGJplWLvvT5x1fjk7+b6sV+beIBCNNCp9T/x8pW9UM=;
 b=u9v21nexEihQtuYqpEdqGjaEdLDnYrat+GD9BFefFrlljSxE0gK6+3ajVtmRUB+bHB
 LL+0iYYvnQCVaJyU5qD4f6SdBd8wnpmhQBbQqXaPV2ZBDxE6t8qSSob2KG/WzDh/2uGs
 COntPigZVXw22kpqShTirAWqMW0d6xH9sue8mieI4lTWvtxRFROafJPbxtPbXGqRaFa/
 9ldl1nAbps7lpmeyuIOIEZJc76cQzbxQ/9HaUkcV4nEV/gJAFjbj4ZTsLUWDPvoKmNJE
 wqv1XUE5U0nIWy0ltL1Mz61UhcOf9UEgbcVu+0LrRAakruSKkoEQfSKcrhpmSRLIUHQB
 o0EA==
Subject: Re: [Intel-gfx] [PATCH 32/59] drm/tve2000: Drop
 drm_gem_prime_export/import
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTA6MzYgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cgo+IFRoZXkncmUgdGhlIGRlZmF1bHQuCj4KPiBBc2lkZTog
V291bGQgYmUgcmVhbGx5IG5pY2UgdG8gc3dpdGNoIHRoZSBvdGhlcnMgb3ZlciB0bwo+IGRybV9n
ZW1fb2JqZWN0X2Z1bmNzLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFy
by5vcmc+CgpXaGVuIHlvdSB3cml0ZSAiV291bGQgYmUgcmVhbGx5IG5pY2UgdG8gc3dpdGNoIHRo
ZSBvdGhlcnMgb3ZlciB0bwpkcm1fZ2VtX29iamVjdF9mdW5jcy4iIGFyZSB5b3UgcmVmZXJyaW5n
IHRvIHRoZSBvdGhlcgpkcm0gZHJpdmVyIGZ1bmN0aW9uIGNhbGxlZCBieSB0aGlzIG9uZSBkcml2
ZXIsIG9yIGFyZSB5b3UKcmVmZXJyaW5nIHRvIG90aGVyIGRyaXZlcnMgbm90IHVzaW5nIHRoZXNl
IGZ1bmN0aW9ucz8KCklmIHRoZSBmb3JtZXIgYW5kIGlmIHRoZXJlIGlzIHNvbWUgbmljZSB1cHN0
cmVhbSBjb21taXQKSSBzaG91bGQgYmUgbG9va2luZyBhdCBmb3IgaW5zcGlyYXRpb24gSSBjYW4g
dGFrZSBhIHN0YWIgYXQKZml4aW5nIHRoaXMgZHJpdmVyLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
