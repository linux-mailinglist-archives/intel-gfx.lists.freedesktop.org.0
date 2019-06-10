Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 681283B932
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 18:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66E28914E;
	Mon, 10 Jun 2019 16:17:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B448914E
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 16:17:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16854692-1500050 for multiple; Mon, 10 Jun 2019 17:16:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
Message-ID: <156018341785.383.14827754445562949685@skylake-alporthouse-com>
Date: Mon, 10 Jun 2019 17:16:57 +0100
Subject: Re: [Intel-gfx] [RFC 08/14] drm/i915: Store backpointer to intel_gt
 in the engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMCAxNjo1NDoxMykKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+IGluZGV4IDAxMjIzODY0MjM3
YS4uMzQzYzQ0NTllOGEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3R5cGVzLmgKPiBAQCAtMzQsNiArMzQsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcmVnX3Rh
YmxlOwo+ICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dDsKPiAgc3RydWN0IGk5MTVfcmVxdWVzdDsK
PiAgc3RydWN0IGk5MTVfc2NoZWRfYXR0cjsKPiArc3RydWN0IGludGVsX2d0Owo+ICBzdHJ1Y3Qg
aW50ZWxfdW5jb3JlOwo+ICAKPiAgdHlwZWRlZiB1OCBpbnRlbF9lbmdpbmVfbWFza190Owo+IEBA
IC0yNjYsNiArMjY3LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgewo+ICAKPiAg
c3RydWN0IGludGVsX2VuZ2luZV9jcyB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNTsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9ndCAqZ3Q7CgpJJ2QgcHVzaCBmb3IgZ3Qg
YXMgYmVpbmcgdGhlIGJhY2twb2ludGVyLCBhbmQgaTkxNSBpdHMgZGlzdGFudCBncmFuZApwYXJl
bnQuIE5vdCBzdXJlIGhvdyBtdWNoIHBhaW4gdGhhdCB3b3VsZCBicmluZyBqdXN0IGZvciB0aGUg
ZWxpbWluYXRpb24Kb2Ygb25lIG1vcmUgZHJtX2k5MTVfcHJpdmF0ZSwgYnV0IHRoYXQncyBob3cg
SSBwaWN0dXJlIHRoZQplbmNhcHN1bGF0aW9uLgoKSSdtIHN1cmUgSSdtIG1pc3NpbmcgYSBsaW5r
IG9yIHR3byA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
