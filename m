Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A55610A350
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778C46E45E;
	Tue, 26 Nov 2019 17:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDE06E45E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:25:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19347781-1500050 for multiple; Tue, 26 Nov 2019 17:25:11 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
 <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
 <157478894313.18552.6870774925616835042@skylake-alporthouse-com>
In-Reply-To: <157478894313.18552.6870774925616835042@skylake-alporthouse-com>
Message-ID: <157478910493.18552.10671765314502666049@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 17:25:04 +0000
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjYgMTc6MjI6MjMpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxNzowNDo0MykKPiA+IAo+ID4gT24gMjYvMTEvMjAxOSAx
NToyNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiA+
ID4gaW5kZXggZTU1MTJmMjZlMjBhLi5mNmU2NjE0MjhiMDIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV92bWEuYwo+ID4gPiBAQCAtOTA1LDYgKzkwNSwxMiBAQCBpbnQgaTkxNV92bWFf
cGluKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZs
YWdzKQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgX19pOTE1X3ZtYV9zZXRfbWFwX2FuZF9m
ZW5jZWFibGUodm1hKTsKPiA+ID4gICAgICAgfQo+ID4gPiAgIAo+ID4gPiArICAgICAvKiBTb21l
Ym9keSBlbHNlIG1hbmFnZWQgdG8gZ2F6dW1wIG91ciBwbGFjZW1lbnQ/ICovCj4gPiA+ICsgICAg
IGlmIChpOTE1X3ZtYV9taXNwbGFjZWQodm1hLCBzaXplLCBhbGlnbm1lbnQsIGZsYWdzKSkgewo+
ID4gPiArICAgICAgICAgICAgIGVyciA9IC1FQUdBSU47Cj4gPiA+ICsgICAgICAgICAgICAgZ290
byBlcnJfYWN0aXZlOwo+ID4gPiArICAgICB9Cj4gPiA+ICsKPiA+IAo+ID4gV2hhdCBhYm91dCBv
dGhlciBjYWxsZXJzPyBUaGV5IHdpbGwgbm90IGJlIGV4cGVjdGluZyB0aGlzLgo+IAo+IFRoZSBv
dGhlciBwYXRocyBzaG91bGQgYmUgcXVpdGUgaGFwcHkgd2l0aCAtRUFHQUlOIGZyb20gdm1hX3Bp
biwgaXQncwo+IGFscmVhZHkgcGFydCBvZiB0aGVpciByZXRyeSBwcm9jZWR1cmUuIElmIG5vdCwg
dGhlcmUncyBhbHdheXMgbW9yZSBkdWN0Cj4gdGFwZS4gSG9wZWZ1bGx5IHRoZSByZXBsYWNlbWVu
dCBpcyBtdWNoIHNpbXBsZXIgKHN0b3AgbGF1Z2hpbmcgYmFjawo+IHRoZXJlKS4KClRoZSBhbHRl
cm5hdGl2ZSBoZXJlIGlzIHRvIHB1bGwgaW4gX19pOTE1X3ZtYV91bmJpbmQoKSwgd2hpY2ggbWln
aHQgYmUKcGxhdXNpYmxlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
