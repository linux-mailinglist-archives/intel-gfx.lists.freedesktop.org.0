Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A820210A393
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0FB6E17E;
	Tue, 26 Nov 2019 17:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FF26E17E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:50:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19348122-1500050 for multiple; Tue, 26 Nov 2019 17:50:55 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
 <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
 <157478894313.18552.6870774925616835042@skylake-alporthouse-com>
 <157478910493.18552.10671765314502666049@skylake-alporthouse-com>
 <6ba7582e-ba64-f237-abe8-2c3c5c2374de@linux.intel.com>
In-Reply-To: <6ba7582e-ba64-f237-abe8-2c3c5c2374de@linux.intel.com>
Message-ID: <157479064839.18552.13977025354602788166@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 17:50:48 +0000
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxNzozMzowOSkKPiAKPiBPbiAyNi8x
MS8yMDE5IDE3OjI1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0xMS0yNiAxNzoyMjoyMykKPiA+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5
LTExLTI2IDE3OjA0OjQzKQo+ID4+Pgo+ID4+PiBPbiAyNi8xMS8yMDE5IDE1OjI2LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiA+Pj4+IGluZGV4IGU1
NTEyZjI2ZTIwYS4uZjZlNjYxNDI4YjAyIDEwMDY0NAo+ID4+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV92bWEuYwo+ID4+Pj4gQEAgLTkwNSw2ICs5MDUsMTIgQEAgaW50IGk5MTVfdm1hX3BpbihzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBhbGlnbm1lbnQsIHU2NCBmbGFncykKPiA+
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgX19pOTE1X3ZtYV9zZXRfbWFwX2FuZF9mZW5jZWFi
bGUodm1hKTsKPiA+Pj4+ICAgICAgICB9Cj4gPj4+PiAgICAKPiA+Pj4+ICsgICAgIC8qIFNvbWVi
b2R5IGVsc2UgbWFuYWdlZCB0byBnYXp1bXAgb3VyIHBsYWNlbWVudD8gKi8KPiA+Pj4+ICsgICAg
IGlmIChpOTE1X3ZtYV9taXNwbGFjZWQodm1hLCBzaXplLCBhbGlnbm1lbnQsIGZsYWdzKSkgewo+
ID4+Pj4gKyAgICAgICAgICAgICBlcnIgPSAtRUFHQUlOOwo+ID4+Pj4gKyAgICAgICAgICAgICBn
b3RvIGVycl9hY3RpdmU7Cj4gPj4+PiArICAgICB9Cj4gPj4+PiArCj4gPj4+Cj4gPj4+IFdoYXQg
YWJvdXQgb3RoZXIgY2FsbGVycz8gVGhleSB3aWxsIG5vdCBiZSBleHBlY3RpbmcgdGhpcy4KPiA+
Pgo+ID4+IFRoZSBvdGhlciBwYXRocyBzaG91bGQgYmUgcXVpdGUgaGFwcHkgd2l0aCAtRUFHQUlO
IGZyb20gdm1hX3BpbiwgaXQncwo+ID4+IGFscmVhZHkgcGFydCBvZiB0aGVpciByZXRyeSBwcm9j
ZWR1cmUuIElmIG5vdCwgdGhlcmUncyBhbHdheXMgbW9yZSBkdWN0Cj4gPj4gdGFwZS4gSG9wZWZ1
bGx5IHRoZSByZXBsYWNlbWVudCBpcyBtdWNoIHNpbXBsZXIgKHN0b3AgbGF1Z2hpbmcgYmFjawo+
ID4+IHRoZXJlKS4KPiA+IAo+ID4gVGhlIGFsdGVybmF0aXZlIGhlcmUgaXMgdG8gcHVsbCBpbiBf
X2k5MTVfdm1hX3VuYmluZCgpLCB3aGljaCBtaWdodCBiZQo+ID4gcGxhdXNpYmxlLgo+IAo+IFRv
IG1ha2UgdW5iaW5kIGFuZCBwaW4gYXRvbWljPyBZb3UnZCBuZWVkIHVubG9ja2VkIHZtYV9waW4g
YXMgd2VsbC4gT3IgCj4gc29tZSBkaWZmZXJlbnQgaWRlYT8KCk9yaWdpbmFsbHkgSSBoYWQgcGxh
bm5lZCBmb3IgYW4gdW5sb2NrZWQgdm1hX3Bpbiwgc28gdGhhdCB3ZSB3b3VsZCB0YWtlCnRoZSBs
b2NrIG9uY2UgaW4gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKCkgYW5kIGRvIHRoZSBtaWdyYXRp
b24gdGhlcmUuCkN1cnJlbnQgcGxhbiBmb3IgcXVpY2sgZml4IGlzIHRvIGFkZAoKCWlmIChpOTE1
X3ZtYV9taXNwbGFjZWQoKSB7CgkJZXJyID0gX19pOTE1X3ZtYV9iaW5kKCk7CgkJaWYgKGVycikK
CQkJZ290byBmb287Cgl9Cgp0byBpOTE1X3ZtYV9waW4oKSBhbmQgc2VlIGhvdyBtYW55IGFwcGxl
IGNhcnRzIHRoYXQgdXBzZXRzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
