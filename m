Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82F746F3B
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 11:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417FC892A6;
	Sat, 15 Jun 2019 09:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60FC892A6
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 09:14:50 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id e189so3700081oib.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 02:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7nFGT83KUMQga2ToUSrlRH9JDnT55s8cSq0IgVm+6LE=;
 b=XAwct4yjjGl/MWE35RLQLwR9DGpEmMxyGIA0weihkAjh/NghMiMyZDGlwNTFSTQJK5
 vkGpZC2mql+p+EHDuMwKbSHwQ+mTadToZfKVFxLOHHWC1zKJyeFaOEXRA4Lb9IJpm6eP
 8nAkplwYqOLTbk25E1JHC+Fzbq6pb+PMPXYMFQ/sBepGP+F3vTE4SWP6vzcnwCyZ4zCx
 EB3HAy6tfhf8Isv1X3vhzEAWLqeTQxOkbDwT0MOuvWSO0lVIjhm3EcgCTKe3TLMxHyhv
 gv+6GtOf82j3lhOhC1yhkZl8wFEqrD91BN4mhiv6e7MFfWG+zVKNwEhpwtRAyYnErGRE
 53lg==
X-Gm-Message-State: APjAAAU077eep3xagszIt/BaXoAPEpX3R6lrIp48C5EC8B6q5/AFSkiO
 UmF21wmrxyJpe3T+/48giTYkjVJCi04XcK69oiz/YA==
X-Google-Smtp-Source: APXvYqze3vt0iZ1v9GqjCAcwK0yeL7Fq8WIIsHgF5QNxL95/O3LLZrvzjyt5FO8owsKmJeBqTwx4cxbDCiCb7X7ESZI=
X-Received: by 2002:aca:b2d5:: with SMTP id b204mr4280774oif.101.1560590089581; 
 Sat, 15 Jun 2019 02:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-33-daniel.vetter@ffwll.ch>
 <CACRpkdaoGHaNT6dQEfMnCcuzUsJDNp=7=zc9Nrz5yAH6KiWWwQ@mail.gmail.com>
In-Reply-To: <CACRpkdaoGHaNT6dQEfMnCcuzUsJDNp=7=zc9Nrz5yAH6KiWWwQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 15 Jun 2019 11:14:36 +0200
Message-ID: <CAKMK7uF2YTm8znmqkTQHjBwv-NM=ikBe8HWasMKBsAze0UPNUg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=7nFGT83KUMQga2ToUSrlRH9JDnT55s8cSq0IgVm+6LE=;
 b=P/v3eCfOmc+dVqTZGiJdx4g4VEIvoCcKZBnWqIPlP+88YhGz4PsNqWZYk4S88zMs7K
 U5913z5gqtLUp9QhtXUQnrFrFf/jCYNP1mARjIqyOrjeRF/KgjMlc0N2+apeEd6dgsNB
 AOaeRvl2x8a5iIbaxv/col263y6ZACyOvZx4I=
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

T24gU2F0LCBKdW4gMTUsIDIwMTkgYXQgMTA6MzUgQU0gTGludXMgV2FsbGVpaiA8bGludXMud2Fs
bGVpakBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgSnVuIDE0LCAyMDE5IGF0IDEwOjM2
IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gPiBU
aGV5J3JlIHRoZSBkZWZhdWx0Lgo+ID4KPiA+IEFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0
byBzd2l0Y2ggdGhlIG90aGVycyBvdmVyIHRvCj4gPiBkcm1fZ2VtX29iamVjdF9mdW5jcy4KPiA+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KPiA+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4KPiBS
ZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+Cj4g
V2hlbiB5b3Ugd3JpdGUgIldvdWxkIGJlIHJlYWxseSBuaWNlIHRvIHN3aXRjaCB0aGUgb3RoZXJz
IG92ZXIgdG8KPiBkcm1fZ2VtX29iamVjdF9mdW5jcy4iIGFyZSB5b3UgcmVmZXJyaW5nIHRvIHRo
ZSBvdGhlcgo+IGRybSBkcml2ZXIgZnVuY3Rpb24gY2FsbGVkIGJ5IHRoaXMgb25lIGRyaXZlciwg
b3IgYXJlIHlvdQo+IHJlZmVycmluZyB0byBvdGhlciBkcml2ZXJzIG5vdCB1c2luZyB0aGVzZSBm
dW5jdGlvbnM/Cj4KPiBJZiB0aGUgZm9ybWVyIGFuZCBpZiB0aGVyZSBpcyBzb21lIG5pY2UgdXBz
dHJlYW0gY29tbWl0Cj4gSSBzaG91bGQgYmUgbG9va2luZyBhdCBmb3IgaW5zcGlyYXRpb24gSSBj
YW4gdGFrZSBhIHN0YWIgYXQKPiBmaXhpbmcgdGhpcyBkcml2ZXIuCgpUaGVyZSdzIGEgcGlsZSBv
ZiBjYWxsYmFja3MgaW4gZHJtX2RyaXZlciBhcm91bmQgZ2VtIG9iamVjdCBoYW5kbGluZwp3aGlj
aCB3ZSB3YW50IHRvIG1vdmUgb3ZlciB0byBkcm1fZ2VtX29iamVjdF9mdW5jcy4gUGF0Y2ggMiBp
biB0aGlzCnNlcmllcyBoZXJlIGhhcyBhIHByZXR0eSBiaWcgZG9jIHVwZGF0ZS4gVGhlIGhvb2tz
IGhhdmUgZXhhY3RseSB0aGUKc2FtZSBmdW5jdGlvbiBzaWduYXR1cmUgKGF0IGxlYXN0IGFmdGVy
IHRoaXMgc2VyaWVzKSBhbmQgc2VtYW50aWNzLApqdXN0IHN0b3JlZCBzb21ld2hlcmUgZWxzZS4g
Rm9yIHRoZSBkcml2ZXJzIHVzaW5nIGhlbHBlcnMgdGhpcyBzaG91bGQKYW1vdW50IHRvIGp1c3Qg
Y3JlYXRpbmcgYW4gZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24gdGFibGUgZm9yCmRybV9nZW1fb2Jq
ZWN0X2Z1bmNzIGFuZCB1c2luZyBpdCBldmVyeXdoZXJlLgoKQXNpZGU6IEluIGdlbmVyYWwgdGhl
IGNoYW90aWMgcGlsZSBvZiBob29rcyBpbiBzdHJ1Y3QgZHJtX2RyaXZlciBpcwpsYXJnZWx5IGRl
cHJlY2F0ZWQuIFRoZXJlJ3MgYSBmZXcgdGhpbmdzIHdoZXJlIHdlIGRvbid0IHlldCBoYXZlIG1v
cmUKZm9jdXNlZCB2dGFibGVzLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
