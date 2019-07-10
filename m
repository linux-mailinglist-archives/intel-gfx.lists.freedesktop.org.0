Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B064B7D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 19:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DEC6E119;
	Wed, 10 Jul 2019 17:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D696E118
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 17:29:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17203749-1500050 for multiple; Wed, 10 Jul 2019 18:29:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-8-chris@chris-wilson.co.uk>
 <87y315q2ro.fsf@gaia.fi.intel.com>
In-Reply-To: <87y315q2ro.fsf@gaia.fi.intel.com>
Message-ID: <156277973908.12280.4134560676010889429@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 18:28:59 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/gtt: Use NULL to encode
 scratch shadow entries
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE3OjIxOjE1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiArICAgICBwZCA9IGFsbG9j
X3BkKHZtKTsKPiA+ICsgICAgIGlmIChJU19FUlIocGQpKQo+ID4gICAgICAgICAgICAgICByZXR1
cm4gcGQ7Cj4gPiAtICAgICB9Cj4gPiAtCj4gPiAtICAgICAvKiAzbHZsICovCj4gPiAtICAgICBw
ZCA9IF9fYWxsb2NfcGQoKTsKPiA+IC0gICAgIGlmICghcGQpCj4gPiAtICAgICAgICAgICAgIHJl
dHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ID4gLQo+ID4gLSAgICAgcGQtPmVudHJ5W0dFTjhfM0xW
TF9QRFBFU10gPSBOVUxMOwo+IAo+IE9rIHlvdSBkb250IGxpa2UgdGhlIHNlbnRyeS4gUGVyaGFw
cyB5b3UgY291bGQgd3JpdGUKPiBhIGZldyBzb290aGluZyB3b3JkcyBob3cgbm9pc2lseSB3ZSBj
cmFzaCBpZiB3ZQo+IHJ1biBsb25nIG9uIHRoaXMgcnVud2F5LiBJZiB0aGUgdG93ZXIgc2VlcyBh
bmQKPiBzZW5kcyBmaXJldHJ1Y2tzLCBpdCBpcyBmaW5lLgoKSXQncyBhIHRpZ2h0IGFsbG9jYXRp
b24gKG9yIGJlY29tZXMgb25lIGEgcGF0Y2ggb3IgdHdvIGRvd24pOyB5b3UgaGF2ZSB0bwplbmFi
bGUgc2xhYl9kZWJ1ZyB0byBzZWUgZmlyZXdvcmtzIGluIHRoZSByZWR6b25lLiBPciBrYXNhbiB0
byBkZXRlY3QKdGhlIG91dC1vZi1ib3VuZHMgd3JpdGUuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
