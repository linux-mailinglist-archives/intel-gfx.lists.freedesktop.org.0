Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A10821A93
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 17:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5D589829;
	Fri, 17 May 2019 15:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F8089829
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 15:31:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16591303-1500050 for multiple; Fri, 17 May 2019 16:31:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
 <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
 <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
 <155804656786.21432.5178995588934161825@skylake-alporthouse-com>
 <44810d46-e275-47dd-3879-4242568c0b14@intel.com>
In-Reply-To: <44810d46-e275-47dd-3879-4242568c0b14@intel.com>
Message-ID: <155810709932.16907.15569373153559544138@skylake-alporthouse-com>
Date: Fri, 17 May 2019 16:31:39 +0100
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: move and rename i915_runtime_pm
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA1LTE3IDE2OjI3OjI2KQo+IAo+
IAo+IE9uIDUvMTYvMTkgMzo0MiBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDUtMTYgMjM6MTA6MTApCj4gPj4gUXVvdGluZyBDaHJpcyBXaWxz
b24gKDIwMTktMDUtMTYgMjM6MDc6NDMpCj4gPj4+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyAoMjAxOS0wNS0xNiAyMjo1NjozMSkKPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ydW50aW1lX3BtLmgKPiA+Pj4+IGluZGV4IGI5NjRjYTdhZjljOC4uMGUzODE3Zjk3ODVlIDEw
MDY0NAo+ID4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5o
Cj4gPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKPiA+
Pj4+IEBAIC02LDYgKzYsNyBAQAo+ID4+Pj4gICAjaWZuZGVmIF9fSU5URUxfUlVOVElNRV9QTV9I
X18KPiA+Pj4+ICAgI2RlZmluZSBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4gPj4+PiAgIAo+ID4+
Pj4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPiA+Pj4KPiA+Pj4gVGhlcmUgZG9lc24ndCBz
ZWVtIHRvIGJlIGFueSBwZWVraW5nIGludG8gc3RydWN0IGRldmljZSwgc28gZG8gd2Ugbm90Cj4g
Pj4+IGp1c3QgbmVlZCB0aGUgc3RydWN0IGRldmljZSBmb3J3YXJkIGRlY2wgaGVyZT8KPiAKPiBU
cnVlLCB3aWxsIGZpeC4KPiAKPiA+Pgo+ID4+IEFuZCBhZGQgaXQgdG8gTWFrZWZpbGUuaGVhZGVy
c190ZXN0Cj4gPiAKPiA+IEhpbnQ6IHdlIG1heSBuZWVkIHRvIHNwbGl0IG91dCBpbnRlbF9kaXNw
bGF5X3Bvd2VyLltjaF0KPiA+IAo+IAo+IFNob3VsZCBJIGFkZCBpbnRlbF9kaXNwbGF5X3Bvd2Vy
LmggdG8gTWFrZWZpbGUuaGVhZGVyc190ZXN0IGFzIHdlbGw/IEl0IAo+IGRvZXMgY29tcGlsZSBv
biBpdHMgb3duLCBidXQgaXQnbGwgaGF2ZSB0byBpbmNsdWRlIGludGVsX2Rpc3BsYXkuaCwgCj4g
d2hpY2ggaXNuJ3Qgb24gdGhlIGxpc3QuCgpZZXMuIElmIHdlIGhhdmUgdG8gaW5jbHVkZSBpbnRl
bF9kaXNwbGF5LmgsIHRoYXQgbWVhbnMgd2hlbmV2ZXIgd2UgZ2V0CmFyb3VuZCB0byBzcGxpdHRp
bmcgaW50ZWxfZGlzcGxheS5oLCB3ZSB3aWxsIHJlbWVtYmVyIHRvIHVwZGF0ZQppbnRlbF9kaXNw
bGF5X3Bvd2VyLmguIFJhaW55IGRheSB0YXNrcyB3aWxsIGJlIHRvIGRlbGV0ZSAjaW5jbHVkZSBh
dApyYW5kb20gYW5kIHNlZSB3aGljaCBhcmUgc3RpbGwgcmVxdWlyZWQgaW4gaGVhZGVycy4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
