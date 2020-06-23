Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A11206123
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 23:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188456E7FE;
	Tue, 23 Jun 2020 21:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2126E7F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 21:01:37 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id b15so2643030edy.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 14:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=S7zR3Ei0/UJNmndQE17QtVzubVgc7RyMkrbiy+07qPA=;
 b=oY9dnUIJHon5ElFWVFVisccA9V6ebkCqofF6aZgs+TjklYilC/SGNWbz96FAOl3WnY
 l2pAPHTAu/tFHoolJWAEIwKPEdE+pJbK5dAQvRgroXrX6lGKEP5/KGR4EmWPaYcBOho/
 dhEu0zX9lp+KW1gC6FCSDXAXoX/2YdzwyJkwG1dZUvPTfqQ7Lm4OUy0SBffun8BkoYu8
 kMnL/nAedeEWf5eEob3BJv4ZVqUIDeb775Gl+uNn4IyIdLtZFwPZ0MLzxaM8gW1jInJV
 QWpdro7f4Vv8Ws2eU1T9dDJsw5VxdzfTamuyyzZwiDQJPPCNiq6yKsTQZ7gU2cEI0yne
 xYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S7zR3Ei0/UJNmndQE17QtVzubVgc7RyMkrbiy+07qPA=;
 b=S/IYrqlAXULAq/SM/3EUqaewaebZ1QAsSlNcgynwoxNWJ4KCpDlO31rKbxskb6YHP8
 IcE/9wVKjDJ4yqKsQqnXcrmPbGHgqMOeflvj4QkHpDHMDPfDhs1wxe8IvbooziqlWBBd
 cpl9CrPiFFoN+NkBGmIsunzhxTd351/jKSvCl95BVY2cEG7wrNfRQqJHwlrplzZRuDwz
 6VFoKeaxeQD8Rw5y7y6VB4s130PPTF9818WGcbOP4Q6jc9+UZK/565lXsnc8XnKnTfJr
 PXTappFfkwzD8xcbzmJjvQieK09XOnaDnVxov1xn6cjR68M1fD59uARlESEa09wjPxEJ
 +10w==
X-Gm-Message-State: AOAM530jOqA8NzW1uZGjb59/1iV3bMGYcLfMQen51+rJ20utfoxQwW70
 h2tH2SJuFaViDU/rDwle200/+GdwZa1WfXZBonk=
X-Google-Smtp-Source: ABdhPJyDo1ejwp+y50ytyGJnM0jhlxrCAHpBQb+cNrIdrOy9vblbQ96UUG0KDAzob9FDmLriWXFeYiFRaxT9pb6fFR8=
X-Received: by 2002:a50:f08c:: with SMTP id v12mr651657edl.119.1592946096225; 
 Tue, 23 Jun 2020 14:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
In-Reply-To: <159290661156.6856.12185315246799210214@build.alporthouse.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 24 Jun 2020 07:01:24 +1000
Message-ID: <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMyBKdW4gMjAyMCBhdCAyMDowMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
ICgyMDIwLTA2LTIzIDEwOjMzOjIwKQo+ID4gSGksIENocmlzIQo+ID4KPiA+IE9uIDYvMjIvMjAg
MTE6NTkgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gSW4gb3JkZXIgdG8gYWN0dWFsbHkg
aGFuZGxlIGV2aWN0aW9uIGFuZCB3aGF0IG5vdCwgd2UgbmVlZCB0byBwcm9jZXNzCj4gPiA+IGFs
bCB0aGUgb2JqZWN0cyB0b2dldGhlciB1bmRlciBhIGNvbW1vbiBsb2NrLCByZXNlcnZhdGlvbl93
d19jbGFzcy4gQXMKPiA+ID4gc3VjaCwgZG8gYSBtZW1vcnkgcmVzZXJ2YXRpb24gcGFzcyBhZnRl
ciBsb29raW5nIHVwIHRoZSBvYmplY3Qvdm1hLAo+ID4gPiB3aGljaCB0aGVuIGZlZWRzIGludG8g
dGhlIHJlc3Qgb2YgZXhlY2J1ZiBbcmVsb2NhdGlvbiwgY21kcGFyc2luZywKPiA+ID4gZmx1c2hp
bmcgYW5kIG9mYyBleGVjdXRpb25dLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4gLS0tCj4gPiA+ICAgLi4uL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgOTEgKysrKysrKysrKysr
KystLS0tLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAyMSBkZWxl
dGlvbnMoLSkKPiA+ID4KPiA+IFdoaWNoIHRyZWUgaXMgdGhpcyBhZ2FpbnN0PyBUaGUgc2VyaWVz
IGRvZXNuJ3QgYXBwbHkgY2xlYW5seSBhZ2FpbnN0Cj4gPiBkcm0tdGlwPwo+Cj4gSXQncyBjb250
aW51aW5nIG9uIGZyb20gdGhlIHNjaGVkdWxlciBwYXRjaGVzLCB0aGUgYnVnIGZpeGVzIGFuZCB0
aGUKPiBpcmlzLWRlZmVycmVkLWZlbmNlIHdvcmsuIEkgdGhvdWdodCB0aHJvd2luZyBhbGwgb2Yg
dGhvc2Ugb2xkIHBhdGNoZXMKPiBpbnRvIHRoZSBwaWxlIHdvdWxkIGhhdmUgYmVlbiBkaXN0cmFj
dGluZy4KPgo+ID4gLi4uCj4gPgo+ID4gPiArc3RhdGljIGludCBlYl9yZXNlcnZlX21tKHN0cnVj
dCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ID4gPiArewo+ID4gPiArICAgICBjb25zdCB1NjQgaWR4
ID0gZWItPmNvbnRleHQtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0Owo+ID4gPiArICAgICBzdHJ1
Y3Qgd3dfYWNxdWlyZV9jdHggYWNxdWlyZTsKPiA+ID4gKyAgICAgc3RydWN0IGViX3ZtYSAqZXY7
Cj4gPiA+ICsgICAgIGludCBlcnI7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZWItPm1tX2ZlbmNlID0g
X19kbWFfZmVuY2VfY3JlYXRlX3Byb3h5KDAsIDApOwo+ID4gPiArICAgICBpZiAoIWViLT5tbV9m
ZW5jZSkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+Cj4gPiBXaGVyZSBh
cmUgdGhlIHByb3h5IGZlbmNlIGZ1bmN0aW9ucyBkZWZpbmVkPwo+Cj4gSW4gZG1hLWZlbmNlLXBy
b3h5LmMgOykKClRoZSBkbWEtZmVuY2UtcHJveHkgdGhhdCBDaHJpc3RpYW4gTkFLZWQgYmVmb3Jl
PwoKRGF2ZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
