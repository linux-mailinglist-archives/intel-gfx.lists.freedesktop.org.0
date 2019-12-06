Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D96D114FA6
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 12:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257C66E0BC;
	Fri,  6 Dec 2019 11:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E4F96E0BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 11:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19482862-1500050 for multiple; Fri, 06 Dec 2019 11:16:18 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8d147892-12dc-b6d3-dfd7-f325b39d057a@linux.intel.com>
References: <20191205214159.829727-1-chris@chris-wilson.co.uk>
 <8d147892-12dc-b6d3-dfd7-f325b39d057a@linux.intel.com>
Message-ID: <157563097659.7796.13907363041935198774@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Dec 2019 11:16:16 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Claim vma while under closed_lock
 in i915_vma_parked()
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMi0wNiAxMToxMjo0MikKPiAKPiBPbiAwNS8x
Mi8yMDE5IDIxOjQxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZW1vdmUgdGhlIHZtYSB3ZSB3
aXNoIHRvIGRlc3Ryb3kgZnJvbSB0aGUgZ3QtPmNsb3NlZF9saXN0IHRvIGF2b2lkCj4gPiBoYXZp
bmcgdHdvIGk5MTVfdm1hX3BhcmtlZCgpIHRyeSBhbmQgZnJlZSBpdC4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDQgKysrLQo+ID4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYwo+ID4gaW5kZXggNmRiMzViOWRlYWQ4Li45Y2E2NjY0YzE5MGMgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4gPiBAQCAtMTA1Myw3ICsxMDUzLDkgQEAg
dm9pZCBpOTE1X3ZtYV9wYXJrZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiA+ICAgICAgICAgICAg
ICAgaWYgKCFrcmVmX2dldF91bmxlc3NfemVybygmb2JqLT5iYXNlLnJlZmNvdW50KSkKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICAgCj4gPiAtICAgICAgICAgICAgIGlm
ICghaTkxNV92bV90cnlvcGVuKHZtKSkgewo+ID4gKyAgICAgICAgICAgICBpZiAoaTkxNV92bV90
cnlvcGVuKHZtKSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGxpc3RfZGVsX2luaXQoJnZt
YS0+Y2xvc2VkX2xpbmspOwo+ID4gKyAgICAgICAgICAgICB9IGVsc2Ugewo+ID4gICAgICAgICAg
ICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICBvYmogPSBOVUxMOwo+ID4gICAgICAgICAgICAgICB9Cj4gPiAKPiAKPiBGaXhlcyAy
ODUwNzQ4ZWY4NzYzIEkgdGhpbmsuIFVudGlsIHRoZW4gdGhlcmUgd2FzIGEgbGlzdF9kZWxfaW5p
dCBpbiBoZXJlLgoKTm8uIFVudGlsIGFhNWU0NDUzZGMwNSAoImRybS9pOTE1L2dlbTogVHJ5IHRv
IGZsdXNoIHBlbmRpbmcgdW5iaW5kCmV2ZW50cyIpIHRoZXJlIGFzIG9ubHkgYSBzaW5nbGUgY2Fs
bGVyIChfX2d0X3BhcmspIHNvIHdlIGtuZXcgdGhlcmUKd291bGQgb25seSBiZSBvbmUgaXRlcmF0
b3IuIFN0aWxsLCBlaXRoZXIgd2F5LCB0aGVyZSdzIGdvaW5nIHRvIGJlIGEKbWFzc2l2ZSBmaXh1
cCBwYXRjaCBmb3IgSm9vbmFzIHRvIGFwcGx5LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
