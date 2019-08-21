Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B115898640
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 23:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E476E2F9;
	Wed, 21 Aug 2019 21:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B066EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 21:06:22 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id y62so2384171vsb.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 14:06:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kakd5iwORspIVAADbjpiKTA4vlUXY+vcfciw2nUu36A=;
 b=P/NAxpLiHyRX/NwTxEsUJ1j6tLx5LFOSxWKqtYml7xbBzQZmX0D9zCBcfIBMvFgHWe
 mYJxMGUlQX7r2Euhp9ZWSw9KZKe5UA7gcKX3Q0w8BvUdbP5AsLavb04L0BFxnaeXRdDZ
 NdADR7VrMOGCJ3b1z4P5srFY2rcXRlWL6yAzO1NJzVXYj2Fxf6MIYrWNVHtSMr5amK3u
 8d4PeGawx66igYvZxIMyg+rqDV3wF4YWipswz0XYTMWRas64vLsnyCK9nUgxv78Flu8A
 CYAT1uoXyZGkm+yG6NKHS+uwEL+aEF8o/JEes59b0VEN1vnuXaAKiauR0Fruwwsld0JI
 6ZDw==
X-Gm-Message-State: APjAAAVTrKmZQc6GGVxrzzPtKCt1SgWNT7/Zfi0TL5iBbBFYWRCNFAdq
 CnI59UjNZ0cm0QLAGsVHB8kHx88I8jvyJ52nU9o=
X-Google-Smtp-Source: APXvYqxUxBc3GfkZjEfFIm/GdwU7NYhuyjAy7x5qnQlSFE5EMeY6e9AeYf8ZA0OGWkH7a01LZYUBQyM2Ywltwr4f064=
X-Received: by 2002:a67:1c87:: with SMTP id c129mr9550044vsc.23.1566421581491; 
 Wed, 21 Aug 2019 14:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
 <20190821155728.2839-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190821155728.2839-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 22:05:55 +0100
Message-ID: <CAM0jSHO87Jnd5mLCTTgNBdZUSUN5UNa7XwT1ztjOOmDB2DOePw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Kakd5iwORspIVAADbjpiKTA4vlUXY+vcfciw2nUu36A=;
 b=dMScgwxpf0VgghUzhqnFb9uKNVYwd/QOBxw4K9xpThlwGUnZT/4WEUoTQb3qj25IGZ
 UVhKtxegx1GSIjX49UovJY7pLsEPtyNm67V0D6ckl32fZ4bdo8G0qEtks07cs6JrxA8K
 VfFgx8qYvKykzXJqpbbUSmKy9vr7XXSuG/T0UU3E6cXiWzRmMGT6Vba/oNCyw/p7BM6M
 ogMlLY63iyYnCSPkrqJDyQXwDiqoe4MPwAuEx711nzSp6pyS+anPaGM2FOTqI+LUe/7r
 pIkJg1qVB9J6Lt15i2jUs9p1sBzWRdezF4FDZBbC+zDgVUsfwSUmWN8rTFQK4jMJXwYg
 b2Zw==
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Replace i915_vma_put_fence()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAxNjo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXZvaWQgY2FsbGluZyBpOTE1X3ZtYV9wdXRfZmVuY2Uo
KSBieSB1c2luZyBvdXIgYWx0ZXJuYXRlIHBhdGhzIHRoYXQKPiBiaW5kIGEgc2Vjb25kYXJ5IHZt
YSBhdm9pZGluZyB0aGUgb3JpZ2luYWwgZmVuY2VkIHZtYS4gRm9yIHRoZSBmZXcKPiBpbnN0YW5j
ZXMgd2hlcmUgd2UgbmVlZCB0byByZWxlYXNlIHRoZSBmZW5jZSAoaS5lLiBvbiBiaW5kaW5nIHdo
ZW4gdGhlCj4gR0dUVCByYW5nZSBiZWNvbWVzIGludmFsaWQpLCByZXBsYWNlIHRoZSBwdXRfZmVu
Y2Ugd2l0aCBhIHJldm9rZV9mZW5jZS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKPHNuaXA+Cgo+IEBAIC01NTcsMjAgKzU1MywxNiBA
QCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKPiAgICAgICAgICAgICAgICAgd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHJwbSk7
Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIHZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbihv
YmosIE5VTEwsIDAsIDAsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
UElOX01BUFBBQkxFIHwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQ
SU5fTk9OQkxPQ0sgLyogTk9XQVJOICovIHwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBQSU5fTk9FVklDVCk7Cj4gKyAgICAgICB2bWEgPSBFUlJfUFRSKC1FTk9ERVYp
Owo+ICsgICAgICAgaWYgKGk5MTVfZ2VtX29iamVjdF9pc190aWxlZChvYmopKQo+ICsgICAgICAg
ICAgICAgICB2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLAoK
SG1tPwoKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
