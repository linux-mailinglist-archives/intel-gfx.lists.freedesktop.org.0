Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF4F8B66
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C78C6EA88;
	Tue, 12 Nov 2019 09:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5628C6EA8D
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:09:19 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id 94so13681603oty.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 01:09:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oHPKlhKO7XCkjzMpQFqzFclixAEBxx1FP1Cib9aUIt0=;
 b=FcRk+geMYJl13RBo6MjIDNJW47c4tWcx9nmj9qqFezF1mtClxvQnVHUh/0jYPhIqYF
 xCkTuTY7uQHdGQE4nYdz0rzfDltulx3vqzzLMVJoeDINC87jCD6y2fkNmKqAmHMBjhpn
 39iw7lm2Rl9nNWepasXxA1WQ76Jb7nPRo2586bpDYGoadnXyEsSepudGcXhNTJeQAxfM
 zwssNNtz5jUWUAE2tyTwyn5lUKKuQj4BO2xpouQ815sVqtWTCnDQVQVI1ezZI1RfzSDq
 KmO1vZ31tyQ/EWydCugmk60ZDoaCAlevw2ono9hZK8FPuRSCV9ozXpucLO1Sm912G3F5
 QXrw==
X-Gm-Message-State: APjAAAXYCEWGFrAJ5RM67gSoJJDKTsykWm1m0eZUyWKIYHZftDMtEe+V
 ylt+wv771sMO/vpPAMieIxr5TTqUfiD/6LSf9ZRYhA==
X-Google-Smtp-Source: APXvYqxWSUfmQNdvctBvqvm85EKWYdHBsiXYTCfi0ftmMPCvgtA2sF1Cv5gyecUpE0AbnZ8p5aLaaGfCRxKiYiPvMQo=
X-Received: by 2002:a9d:6649:: with SMTP id q9mr8533283otm.106.1573549758145; 
 Tue, 12 Nov 2019 01:09:18 -0800 (PST)
MIME-Version: 1.0
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190718145407.21352-4-chris@chris-wilson.co.uk>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 12 Nov 2019 10:09:06 +0100
Message-ID: <CAKMK7uEgFS8FAatJBzsEid72sy2_h8x2WsyhsZuyyfaoD1Lg0Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Francisco Jerez <currojerez@riseup.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=oHPKlhKO7XCkjzMpQFqzFclixAEBxx1FP1Cib9aUIt0=;
 b=dIMZSpm21n4Lvj7LNSVE3iXH8GIQCXuc3mlVLSXlQsySgf7fipjpWs11JR1/RPRcI9
 N/Ip5mFgfWkRU+kPigYweaN9SrtcqiGMLihWrALL4n4IKxnX0Ct+UuZV1ML5Xg6T3wwf
 5jcjaq2dc6AUDFu+sgoabnCxikipL9632C0Y8=
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgNDo1NCBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBFbnN1cmUgdGhhdCB3ZSBmbHVzaCBhbnkgY2FjaGUg
ZGlydCBvdXQgdG8gbWFpbiBtZW1vcnkgYmVmb3JlIHRoZSB1c2VyCj4gY2hhbmdlcyB0aGUgY2Fj
aGUtbGV2ZWwgYXMgdGhleSBtYXkgZWxlY3QgdG8gYnlwYXNzIHRoZSBjYWNoZSAoZXZlbiBhZnRl
cgo+IGRlY2xhcmluZyB0aGVpciBhY2Nlc3MgY2FjaGUtY29oZXJlbnQpIHZpYSB1c2Ugb2YgdW5w
cml2aWxlZ2VkIE1PQ1MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyB8IDUgKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kb21haW4uYwo+IGluZGV4IDJlM2NlMmE2OTY1My4uNWQ0MWU3NjlhNDI4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwo+IEBAIC0y
NzcsNiArMjc3LDExIEBAIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2xldmVsKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4KPiAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50
cnkodm1hLCAmb2JqLT52bWEubGlzdCwgb2JqX2xpbmspCj4gICAgICAgICAgICAgICAgIHZtYS0+
bm9kZS5jb2xvciA9IGNhY2hlX2xldmVsOwo+ICsKPiArICAgICAgIC8qIEZsdXNoIGFueSBwcmV2
aW91cyBjYWNoZSBkaXJ0IGluIGNhc2Ugb2YgY2FjaGUgYnlwYXNzICovCj4gKyAgICAgICBpZiAo
b2JqLT5jYWNoZV9kaXJ0eSAmIH5vYmotPmNhY2hlX2NvaGVyZW50KQo+ICsgICAgICAgICAgICAg
ICBpOTE1X2dlbV9jbGZsdXNoX29iamVjdChvYmosIEk5MTVfQ0xGTFVTSF9TWU5DKTsKCkkgdGhp
bmsgd3JpdGluZyBvdXQgdGhlIGJpdCBsb2dpYyBpbnN0ZWFkIG9mIGltcGxpY2l0bHkgcmVseWlu
ZyBvbiB0aGUKI2RlZmluZXMgd291bGQgYmUgbXVjaCBiZXR0ZXIsIGkuZS4gJiYgIShjYWNoZV9j
b2hlcmVudCAmCkNPSEVSRU5UX0ZPUl9SRUFEKS4gUGx1cyBJIHRoaW5rIHdlIG9ubHkgbmVlZCB0
byBzZXQgY2FjaGVfZGlydHkgPQp0cnVlIGlmIHdlIGRvbid0IGZsdXNoIGhlcmUgYWxyZWFkeSwg
dG8gYXZvaWQgZG91YmxlIGZsdXNoaW5nPwotRGFuaWVsCgo+ICsKPiAgICAgICAgIGk5MTVfZ2Vt
X29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgY2FjaGVfbGV2ZWwpOwo+ICAgICAgICAg
b2JqLT5jYWNoZV9kaXJ0eSA9IHRydWU7IC8qIEFsd2F5cyBpbnZhbGlkYXRlIHN0YWxlIGNhY2hl
bGluZXMgKi8KPgo+IC0tCj4gMi4yMi4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgoKLS0KRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxv
Zy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
