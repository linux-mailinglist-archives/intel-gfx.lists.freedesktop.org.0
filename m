Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10056A4B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F456E427;
	Wed, 26 Jun 2019 13:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C6E6E427
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:22:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17031508-1500050 for multiple; Wed, 26 Jun 2019 14:22:46 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <878sto5w4q.fsf@gaia.fi.intel.com>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <878sto5w4q.fsf@gaia.fi.intel.com>
Message-ID: <156155536290.2637.6433622051425648885@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 14:22:42 +0100
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Serialise nop reset
 with retirement
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI2IDE0OjExOjQ5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJbiBvcmRlciBmb3Ig
dGhlIHJlc2V0IGNvdW50IHRvIGJlIGFjY3VyYXRlIGFjcm9zcyBvdXIgc2VsZnRlc3QsIHdlIG5l
ZWQKPiA+IHRvIHByZXZlbnQgdGhlIGJhY2tncm91bmQgcmV0aXJlIHdvcmtlciBmcm9tIG1vZGlm
eWluZyBvdXIgZXhwZWN0ZWQKPiA+IHN0YXRlLgo+ID4KPiAKPiBPaywgdG8gc3VtbWFyaXplIHRo
ZSBpcmMgZGlzY3Vzc2lvbiB3ZSBoYWQ6IFRoZSBhYm92ZSBob2xkcyB0cnVlCj4gZm9yIGlndF9y
ZXNldF9lbmdpbmVfbm9wIG9ubHkuIEFzIHRoZXJlIGlzIG5vIHJhY2UgaW4KPiBnbG9iYWwgcmVz
ZXQgcGF0aC4uLmN1cnJlbnRseS4KPiAKPiBCdXQgdGhlcmUgaXMgaW50ZW50IHRvd2FyZHMgc3lt
bWV0cnkgb24gYm90aCBwYXRocwo+IHNvIGl0IG1ha2VzIHNlbnNlIHRvIGtlZXAgdGhlIHRlc3Rz
IGFsaWduZWQuCj4gCj4gVGhlIGNvbW1pdCBtc2cgY291bGQgYmUgZW5oYW5jZWQgb24gdGhpcyBy
ZWdhcmQuCj4gCj4gQWxzbyB3aGlsZSBsb29raW5nIHRocm91Z2ggdGhpcywgd2UgZG8gaW5jcmVh
c2UKPiB0aGUgcmVzZXRfY291bnQgcmF0aGVyIGVhcmx5IGJlZm9yZSB0aGUgZmFpbHBhdGhzLgo+
IGV2ZW4gd2l0aCB0aGUgcmVzZXRzIGRpc2FibGVkIGl0IGdldHMgaW5jcmVtZW50ZWQuCj4gU28g
bm93IGl0IGlzIG1vcmUgb2YgYSBhdHRlbXB0ZWQgcmVzZXQgY291bnQuCgpXZSBkb24ndCBleHBl
Y3QgaXQgdG8gZmFpbCwgYW5kIGlmIGl0IGRvZXMgd2Ugd2VkZ2UgYW5kIHJlcG9ydCAtRUlPIG5v
dApqdXN0IGEgYm9yaW5nIC1FSU5WQUwgKG9yIGluIHRoZW9yeSB3ZSBkbyAtLSB0aGF0J3MgZ2Vu
ZXJhbGx5IHRoZQphcHByb2FjaCB3ZSB0YWtlIGVsc2V3aGVyZSwgdHJlYXRpbmcgdGhlIEdQVSBn
b2luZyBzb3V0aCBhcyBhIG1vcmUKc2V2ZXJlIGZhaWx1cmUgdGhhbiB0aGUgdGVzdCBpdHNlbGYg
ZmFpbGluZyB0byBmdWxmaWwgaXRzIGNvbnRyYWN0KS4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
