Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5E64318F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 00:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C488925D;
	Wed, 12 Jun 2019 22:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8314589255
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 22:10:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16882166-1500050 for multiple; Wed, 12 Jun 2019 23:10:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
 <20190612183748.7693-2-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190612183748.7693-2-daniele.ceraolospurio@intel.com>
Message-ID: <156037742058.10298.14177010806149156346@skylake-alporthouse-com>
Date: Wed, 12 Jun 2019 23:10:20 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: prefer i915_runtime_pm in
 intel_runtime function
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTEyIDE5OjM3OjQwKQo+IEFz
IGEgZmlyc3Qgc3RlcCB0b3dhcmRzIHVwZGF0aW5nIHRoZSBjb2RlIHRvIHdvcmsgb24gdGhlIHJ1
bnRpbWVfcG0KPiBzdHJ1Y3R1cmUgaW5zdGVhZCBvZiBpOTE1LCByZXdvcmsgYWxsIHRoZSBpbnRl
cm5hbHMgdG8gdXNlIGFuZCBwYXNzCj4gYXJvdW5kIHRoYXQuCj4gCj4gdjI6IGFkZCBjb21tZW50
IGZvciBrZGV2IChKYW5pKSwgbW92ZSBycG0gaW5pdCBhZnRlciBwZGV2IGluaXQgZm9yCj4gbW9j
a19kZXZpY2UKPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgICAgfCAgIDIgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cnYuaCAgICAgICAgICAgICAgfCAgMTAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cnVudGltZV9wbS5jICAgICAgIHwgMTIyICsrKysrKysrLS0tLS0tLS0tLQo+ICAuLi4vZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyAgfCAgIDQgKy0KPiAgNCBmaWxlcyBj
aGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspLCA3MCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKPiBpbmRleCAwZWE3Zjc4YWUyMjcuLjNlNzE4NjM2MmJiMCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0xMDczLDYgKzEwNzMsOCBAQCBzdHJ1Y3Qgc2tsX3dt
X3BhcmFtcyB7Cj4gICAqLwo+ICBzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtIHsKPiAgICAgICAgIGF0
b21pY190IHdha2VyZWZfY291bnQ7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICprZGV2OyAvKiBw
b2ludHMgdG8gaTkxNS0+ZHJtLnBkZXYtPmRldiAqLwo+ICsgICAgICAgYm9vbCBhdmFpbGFibGU7
Cj4gICAgICAgICBib29sIHN1c3BlbmRlZDsKPiAgICAgICAgIGJvb2wgaXJxc19lbmFibGVkOwo+
ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAo+IGluZGV4IDNlMzM3MzE3Zjc3ZS4uYWVjNDBh
ZGY0ODc2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKPiBAQCAtMTY1NiwxMyArMTY1
NiwxNyBAQCBfX19fYXNzZXJ0X3JwbV93YWtlbG9ja19oZWxkKHN0cnVjdCBpOTE1X3J1bnRpbWVf
cG0gKnJwbSwgaW50IHdha2VyZWZfY291bnQpCj4gIH0KPiAgCj4gIHN0YXRpYyBpbmxpbmUgdm9p
ZAo+IC1hc3NlcnRfcnBtX3Jhd193YWtlcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gK19fYXNzZXJ0X3JwbV9yYXdfd2FrZXJlZl9oZWxkKHN0cnVjdCBpOTE1X3J1bnRp
bWVfcG0gKnJwbSkKCk91ciBuYW1pbmcgc2NoZW1lIHdvdWxkIG1ha2UgdGhpcyBpbnRlbF9ydW50
aW1lX3BtIGFzIGl0IGlzIG1vcmUgSFcKZmFjaW5nIHRoYW4gdXNlci4gUGx1cywgSmFuaSB3aWxs
IHBvaW50IG91dCBpdCdzIGludGVsX3J1bnRpbWVfcG0uYwotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
