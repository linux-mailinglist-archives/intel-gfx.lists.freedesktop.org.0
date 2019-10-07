Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20555CED3F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 22:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543E06E0F1;
	Mon,  7 Oct 2019 20:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AAC6E0F1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 20:16:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18756694-1500050 for multiple; Mon, 07 Oct 2019 21:16:31 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68CE6C156@fmsmsx120.amr.corp.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
 <AD48BB7FB99B174FBCC69E228F58B3B68CE6C156@fmsmsx120.amr.corp.intel.com>
Message-ID: <157047938955.5063.12889178651560443170@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 21:16:29 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMTAtMDcgMTc6NTU6MTYpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNl
c0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBYmRpZWwKPiA+IEphbnVsZ3Vl
Cj4gPiBTZW50OiBNb25kYXksIE9jdG9iZXIgNywgMjAxOSAyOjE5IEFNCj4gPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjIgMy81XSBk
cm0vaTkxNTogSW50cm9kdWNlCj4gPiBEUk1fSTkxNV9HRU1fTU1BUF9PRkZTRVQKPiA+IAo+ID4g
VGhpcyBpcyByZWFsbHkganVzdCBhbiBhbGlhcyBvZiBtbWFwX2d0dC4gQWRkIGEgbmV3IENQVSBt
bWFwCj4gPiBpbXBsZW1lbnRhdGlvbiB0aGF0IGFsbG93cyBtdWx0aXBsZSBmYXVsdCBoYW5kbGVy
cyB0aGF0IGRlcGVuZHMgb24KPiA+IHRoZSBvYmplY3QncyBiYWNraW5nIHBhZ2VzLgo+ID4gCj4g
PiBOb3RlIHRoYXQgd2UgbXVsdGlwbGV4IG1tYXBfZ3R0IGFuZCBtbWFwX29mZnNldCB0aHJvdWdo
IHRoZSBzYW1lIGlvY3RsLAo+ID4gYW5kIHVzZSB0aGUgemVybyBleHRlbmRpbmcgYmVoYXZpb3Vy
IG9mIGRybSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4KPiA+IHRoZW0sIHdoZW4gd2UgaW5zcGVj
dCB0aGUgZmxhZ3MuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJk
aWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgICAgfCAzNiArKysrKysrKysrKysrKysrKy0t
Cj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgIDMg
KysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAg
MiArLQo+ID4gIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8
IDI4ICsrKysrKysrKysrKysrKwo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBIb3cgZG9lcyB0aGUgbGFiZWwgJ29mZnNldCcgZml0IGlu
dG8gdGhpcyBBUEkgaWYgaXQncyByZWFsbHkgYWJvdXQgbXVsdGlwbGUgZmF1bHQgaGFuZGxlcnM/
Cj4gQ291bGQgZG8gd2l0aCBhIG11Y2ggYmV0dGVyIGRlc2NyaXB0aW9uIGhlcmUgSSB0aGluay4g
V2hvIHdvdWxkIHVzZSB0aGlzLCBhbmQgd2h5LCB3b3VsZCBoZWxwIGEgbG90LgoKVGhlIGlvY3Rs
IHJldHVybnMgdGhlIG9mZnNldCBpbnRvIHRoZSBkZXZpY2UgZmQgdXNlcnBhY2UgdXNlcyB3aXRo
Cm1tYXAoMikuIEhlbmNlIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQX09GRlNFVC4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
