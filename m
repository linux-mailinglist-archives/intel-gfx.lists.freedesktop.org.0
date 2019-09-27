Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26137C03D4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 13:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279A16EE59;
	Fri, 27 Sep 2019 11:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667116EE59
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 11:06:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18638168-1500050 for multiple; Fri, 27 Sep 2019 12:06:06 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-6-chris@chris-wilson.co.uk>
 <88f1d5bc-ec67-cdb6-3ccc-ab7a11fdce62@linux.intel.com>
In-Reply-To: <88f1d5bc-ec67-cdb6-3ccc-ab7a11fdce62@linux.intel.com>
Message-ID: <156958236242.32596.17347039010961579650@skylake-alporthouse-com>
Date: Fri, 27 Sep 2019 12:06:02 +0100
Subject: Re: [Intel-gfx] [PATCH 05/27] drm/i915: Pull i915_vma_pin under the
 vm->mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNyAwOTo0Nzo1OSkKPiAKPiBPbiAyNS8w
OS8yMDE5IDExOjAxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAtaW50IF9faTkxNV92bWFfZG9f
cGluKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+ID4gLSAgICAgICAgICAgICAgICAgICB1NjQgc2l6
ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQo+ID4gK3N0YXRpYyBib29sIHRyeV9xYWRfcGlu
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCj4gCj4gV2hhdCBkb2Vz
IHRoZSBRQUQgc3RhbmQgZm9yPwoKcXVpY2sgYW5kIGRpcnR5Cgpbc25pcF0KCj4gSGlnaCBsZXZl
bCBjb25jZXB0IGxvb2tzIG9rYXkgdG8gbWUsIGFuZCB0aGUgbG93IGxldmVsIGRldGFpbHMgYXMg
d2VsbC4gCj4gQnV0IGl0IGlzIHNvIGh1Z2UgdGhhdCBJIGNhbm5vdCBndWFyYW50ZWUgSSBoYXZl
bid0IG1pc3NlZCBzb21ldGhpbmcgaW4gCj4gdGhlIG1pZGRsZS4gU28gZm9yIGFueSBoeXBvdGhl
dGljYWwgbWlzc2VkIHRoaW5nIGluIHRoYXQgbGFzdCB0aGlyZCwgSSAKPiBwdXQgbXkgZmFpdGgg
dGhhdCBiZWZvcmUgcmVsZWFzZSB3ZSBjYXRjaCBpdCBhbmQgZml4IGl0LgoKSXQncyBzdWNoIGEg
aHVnZSBzZWlzbWljIHNoaWZ0LCB0aGF0IHdlIHdpbGwgaGF2ZSB0byBtYWtlIGFnYWluIGJlZm9y
ZQp0b28gbG9uZywgdGhhdCBzb21lIGxpdHRsZSBkZXRhaWwgd2lsbCBoYXZlIHNsaXBwZWQgdGhy
b3VnaC4gQWxsIHdlIGNhbgpkbyBpcyB0byBob3BlIHRvIGNhcHR1cmUgYW55dGhpbmcgdGhhdCBl
c2NhcGVzIHRoZSBtYW55IG1hY2hpbmUgbW9udGhzCm9mIHRlc3RpbmcgKGJ1dCB3YXMgaXQgdGVz
dGluZyB0aGUgcmlnaHQgdGhpbmc/Pz8pIGludG8gYSByZWdyZXNzaW9uCnRlc3QgdG8gbWFrZSBz
dXJlIHRoZSBuZXh0IHdhdmUgb2YgY2hhbmdlcyBpcyBiZXR0ZXIuCgpQbHVzIHdlIGNhbiBsb29r
IGZvcndhcmQgdG8gYWxsIHRoZSBvcHBvcnR1bml0aWVzIHRvIG9wdGltaXNlIHRoZSBjb2RlCmFs
bCBvdmVyIGFnYWluLiA6fAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
