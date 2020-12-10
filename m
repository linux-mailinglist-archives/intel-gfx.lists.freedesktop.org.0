Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1F52D61DE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 17:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955B36EA9B;
	Thu, 10 Dec 2020 16:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 938206EA9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 16:31:13 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id x16so6360942oic.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 08:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n7pb4XV/9MCA9vxlveSWupE9v2y/Bahql4h0Z7uaO3Y=;
 b=GJzpjIDEedd/4H3jkMUBC8KqHXJ2Wsja0pU5Oc4sAU6CZvYiQPIiLxuOOD25oTbxUu
 wn21V/X34Q3lasCbQ2rOzZJmrassXGj78uwdnjd7vkIV9IzLIcFa9Pqhp307wC61bU59
 Tu5vNvNQtaGQY2MrxR+VQHHCxFH6wyB7frGmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n7pb4XV/9MCA9vxlveSWupE9v2y/Bahql4h0Z7uaO3Y=;
 b=Zg0rj9X81wvc1Sejzi9m5KNWbfVQxcDx3JE+jHOyncsiReY/zTJalGThbm2Xw2godq
 +P9uO6VD8tqSRYic5oC+7fhUM3Un7//fWJRSq4GHQwVTl7P9GV0W672kB7I0mSKLeaNq
 6AWaq51YVi1cE7g8C2wZ4ND29G90nUjOV/EfL1FOvpkfZQVz+06dDIx0GuUq5Y4QoYYC
 SviL7ilvqfejQAfsFtExcb0SmwmOWWGTpSfQfNx9KOHhqnGMVjzkP+KrTKJt+QjeCVWJ
 hSyO99C0Sn+ln9PFRbzD/mN9PeYkK0fvScMf7sZNKH77dKU0dFCKZurYYxyX1oKrmEBP
 SucA==
X-Gm-Message-State: AOAM533vRznH659D9yJCGMorJ6t60twEkwvAOJb6fu5cLJLemdJvljj5
 NsMHpR84FaTJalvYK6KTJhUXc6MGkGySEHZ+F30b3A==
X-Google-Smtp-Source: ABdhPJzE0ukMJutRuaYyth0UCnvvudZx6z3oqxOqZMLhlFCbh26OdWj5gA8bhAyEmOr0NpJPtggIqXROsmoBoTjNeAk=
X-Received: by 2002:aca:4d08:: with SMTP id a8mr6066657oib.128.1607617872955; 
 Thu, 10 Dec 2020 08:31:12 -0800 (PST)
MIME-Version: 1.0
References: <20201210041755.29088-1-airlied@gmail.com>
 <20201210041755.29088-7-airlied@gmail.com>
 <X9I8XieR98LFRNaY@intel.com>
In-Reply-To: <X9I8XieR98LFRNaY@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 10 Dec 2020 17:31:02 +0100
Message-ID: <CAKMK7uEhULy_2iAHE4U=iUjWmS4EwufXmbYeTzf=pSSOPNDHxw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: refactor pll code out into
 intel_dpll_legacy.c
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgNDoxOCBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0
IDAyOjE3OjUyUE0gKzEwMDAsIERhdmUgQWlybGllIHdyb3RlOgo+ID4gRnJvbTogRGF2ZSBBaXJs
aWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiA+Cj4gPiBUaGlzIHB1bGxzIGEgbGFyZ2UgY2h1bmsg
b2YgdGhlIHBsbCBjYWxjdWxhdGlvbiBjb2RlIG91dCBvZgo+ID4gaW50ZWxfZGlzcGxheS5jIHRv
IGEgbmV3IGZpbGUuCj4gPgo+ID4gT25lIGZ1bmN0aW9uIG1ha3NlIHNlbnNlIHRvIGJlIGFuIGlu
bGluZSwgb3RoZXJ3aXNlIHRoaXMKPiA+IGlzIHByZXR0eSBtdWNoIGEgc3RyYWlnaHQgY29weSBj
b3Zlci4gYWxzbyBhbGwgdGhlCj4gPiByZW1haW5pbmcgaG9va3MgZm9yIGc0NSBhbmQgb2xkZXIg
ZW5kIHVwIHRoZSBzYW1lIG5vdy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEFpcmxpZSA8
YWlybGllZEByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUgICAgICAgICAgICAgICAgIHwgICAgMSArCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMTM5MyArLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAgMTMgKy0KPiA+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgICA1ICsK
PiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9sZWdhY3kuYyAgfCAxMzcw
ICsrKysrKysrKysrKysrKysKPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDEzOTggaW5zZXJ0aW9ucygr
KSwgMTM4NCBkZWxldGlvbnMoLSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX2xlZ2FjeS5jCj4gPgo+IDxzbmlwPgo+ID4gK3N0
YXRpYyBpbnQgaHN3X2NydGNfY29tcHV0ZV9jbG9jayhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gPiArICAgICBzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9Cj4gPiArICAgICAgICAgICAgIHRvX2ludGVsX2F0b21p
Y19zdGF0ZShjcnRjX3N0YXRlLT51YXBpLnN0YXRlKTsKPiA+ICsKPiA+ICsgICAgIGlmICghaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKSB8fAo+ID4gKyAg
ICAgICAgIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiA+ICsgICAgICAgICAgICAgc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlu
dGVsX2dldF9jcnRjX25ld19lbmNvZGVyKHN0YXRlLCBjcnRjX3N0YXRlKTsKPiA+ICsKPiA+ICsg
ICAgICAgICAgICAgaWYgKCFpbnRlbF9yZXNlcnZlX3NoYXJlZF9kcGxscyhzdGF0ZSwgY3J0Yywg
ZW5jb2RlcikpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRv
IGZpbmQgUExMIGZvciBwaXBlICVjXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBpcGVfbmFtZShjcnRjLT5waXBlKSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsgICAgIH0KPiA+ICsKPiA+
ICsgICAgIHJldHVybiAwOwo+ID4gK30KPgo+IElmIHlvdSdyZSBtb3ZpbmcgdGhpcyB0aGVuIHRo
ZSAibGVnYWN5IiBpbiB0aGUgZmluZSBuYW1lIGlzIGp1c3QKPiB3cm9uZy4gSSBndWVzcyBqdXN0
IGNhbGwgaXQgaW50ZWxfZHBsbC5jIGlmIHdlIGxhY2sgYSBiZXR0ZXIgaWRlYT8KCkFoIHllcyBJ
IG1pc3NlZCB0aGF0IGl0J3MgYWxzbyBwdWxsaW5nIHRoZSBpbGsvaHN3IHN0dWZmIHdoaWNoIHVz
ZXMKdGhlIGludGVsX2RwbGxfbWdyLmMgc3R1ZmYuIFByb2JhYmx5IG1vcmUgc3BsaXR0aW5nIHRv
IGRvIGV2ZW50dWFsbHksCmJ1dCBqdXN0IGludGVsX2RwbGwuYyBzb3VuZHMgcmVhc29uYWJsZSBm
b3Igbm93LgotRGFuaWVsCgo+Cj4gLS0KPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCgotLSAKRGFu
aWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
