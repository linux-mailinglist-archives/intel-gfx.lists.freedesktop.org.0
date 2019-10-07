Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2F2CED42
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 22:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98516E1A2;
	Mon,  7 Oct 2019 20:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2126E11E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 20:18:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18756705-1500050 for multiple; Mon, 07 Oct 2019 21:17:57 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157047938955.5063.12889178651560443170@skylake-alporthouse-com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
 <20191007091920.2176-3-abdiel.janulgue@linux.intel.com>
 <AD48BB7FB99B174FBCC69E228F58B3B68CE6C156@fmsmsx120.amr.corp.intel.com>
 <157047938955.5063.12889178651560443170@skylake-alporthouse-com>
Message-ID: <157047947235.5063.7532373381340301714@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 21:17:52 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMDcgMjE6MTY6MjkpCj4gUXVvdGluZyBCbG9v
bWZpZWxkLCBKb24gKDIwMTktMTAtMDcgMTc6NTU6MTYpCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgQWJkaWVsCj4gPiA+IEphbnVsZ3VlCj4gPiA+
IFNlbnQ6IE1vbmRheSwgT2N0b2JlciA3LCAyMDE5IDI6MTkgQU0KPiA+ID4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gQ2M6IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cj4gPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MiAzLzVd
IGRybS9pOTE1OiBJbnRyb2R1Y2UKPiA+ID4gRFJNX0k5MTVfR0VNX01NQVBfT0ZGU0VUCj4gPiA+
IAo+ID4gPiBUaGlzIGlzIHJlYWxseSBqdXN0IGFuIGFsaWFzIG9mIG1tYXBfZ3R0LiBBZGQgYSBu
ZXcgQ1BVIG1tYXAKPiA+ID4gaW1wbGVtZW50YXRpb24gdGhhdCBhbGxvd3MgbXVsdGlwbGUgZmF1
bHQgaGFuZGxlcnMgdGhhdCBkZXBlbmRzIG9uCj4gPiA+IHRoZSBvYmplY3QncyBiYWNraW5nIHBh
Z2VzLgo+ID4gPiAKPiA+ID4gTm90ZSB0aGF0IHdlIG11bHRpcGxleCBtbWFwX2d0dCBhbmQgbW1h
cF9vZmZzZXQgdGhyb3VnaCB0aGUgc2FtZSBpb2N0bCwKPiA+ID4gYW5kIHVzZSB0aGUgemVybyBl
eHRlbmRpbmcgYmVoYXZpb3VyIG9mIGRybSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4KPiA+ID4g
dGhlbSwgd2hlbiB3ZSBpbnNwZWN0IHRoZSBmbGFncy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
ID4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFu
LmMgICAgICB8IDM2ICsrKysrKysrKysrKysrKysrLS0KPiA+ID4gIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oICB8ICAzICsrCj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgfCAgMiArLQo+ID4gPiAgaW5jbHVkZS91
YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAgIHwgMjggKysrKysrKysrKysrKysr
Cj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IEhvdyBkb2VzIHRoZSBsYWJlbCAnb2Zmc2V0JyBmaXQgaW50byB0aGlzIEFQSSBp
ZiBpdCdzIHJlYWxseSBhYm91dCBtdWx0aXBsZSBmYXVsdCBoYW5kbGVycz8KPiA+IENvdWxkIGRv
IHdpdGggYSBtdWNoIGJldHRlciBkZXNjcmlwdGlvbiBoZXJlIEkgdGhpbmsuIFdobyB3b3VsZCB1
c2UgdGhpcywgYW5kIHdoeSwgd291bGQgaGVscCBhIGxvdC4KPiAKPiBUaGUgaW9jdGwgcmV0dXJu
cyB0aGUgb2Zmc2V0IGludG8gdGhlIGRldmljZSBmZCB1c2VycGFjZSB1c2VzIHdpdGgKPiBtbWFw
KDIpLiBIZW5jZSBEUk1fSU9DVExfSTkxNV9HRU1fTU1BUF9PRkZTRVQuCgpZZWFoLCB0aGF0IHNo
b3VsZCBoYXZlIGJlZW4gZXhwbGFpbmVkIGluIHRoZSBjaGFuZ2Vsb2cgd2h5IHRoZSBuYW1lIHdh
cwpjaG9zZW4gdG8gcmVmbGVjdCBleHBlY3RlZCB1c2FnZS4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
