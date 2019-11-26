Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FD510A344
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8F66E45D;
	Tue, 26 Nov 2019 17:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD93A6E45D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:22:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19347752-1500050 for multiple; Tue, 26 Nov 2019 17:22:29 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
 <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
In-Reply-To: <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
Message-ID: <157478894313.18552.6870774925616835042@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 17:22:23 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Double check vma placement upon
 gaining the vm lock
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxNzowNDo0MykKPiAKPiBPbiAyNi8x
MS8yMDE5IDE1OjI2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1h
LmMKPiA+IGluZGV4IGU1NTEyZjI2ZTIwYS4uZjZlNjYxNDI4YjAyIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYwo+ID4gQEAgLTkwNSw2ICs5MDUsMTIgQEAgaW50IGk5MTVfdm1hX3Bp
bihzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBhbGlnbm1lbnQsIHU2NCBmbGFn
cykKPiA+ICAgICAgICAgICAgICAgICAgICAgICBfX2k5MTVfdm1hX3NldF9tYXBfYW5kX2ZlbmNl
YWJsZSh2bWEpOwo+ID4gICAgICAgfQo+ID4gICAKPiA+ICsgICAgIC8qIFNvbWVib2R5IGVsc2Ug
bWFuYWdlZCB0byBnYXp1bXAgb3VyIHBsYWNlbWVudD8gKi8KPiA+ICsgICAgIGlmIChpOTE1X3Zt
YV9taXNwbGFjZWQodm1hLCBzaXplLCBhbGlnbm1lbnQsIGZsYWdzKSkgewo+ID4gKyAgICAgICAg
ICAgICBlcnIgPSAtRUFHQUlOOwo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9hY3RpdmU7Cj4g
PiArICAgICB9Cj4gPiArCj4gCj4gV2hhdCBhYm91dCBvdGhlciBjYWxsZXJzPyBUaGV5IHdpbGwg
bm90IGJlIGV4cGVjdGluZyB0aGlzLgoKVGhlIG90aGVyIHBhdGhzIHNob3VsZCBiZSBxdWl0ZSBo
YXBweSB3aXRoIC1FQUdBSU4gZnJvbSB2bWFfcGluLCBpdCdzCmFscmVhZHkgcGFydCBvZiB0aGVp
ciByZXRyeSBwcm9jZWR1cmUuIElmIG5vdCwgdGhlcmUncyBhbHdheXMgbW9yZSBkdWN0CnRhcGUu
IEhvcGVmdWxseSB0aGUgcmVwbGFjZW1lbnQgaXMgbXVjaCBzaW1wbGVyIChzdG9wIGxhdWdoaW5n
IGJhY2sKdGhlcmUpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
