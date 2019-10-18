Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98729DC1ED
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 11:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E708959D;
	Fri, 18 Oct 2019 09:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316F28959D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 09:55:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18879935-1500050 for multiple; Fri, 18 Oct 2019 10:55:27 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191018090751.28295-2-matthew.auld@intel.com>
References: <20191018090751.28295-1-matthew.auld@intel.com>
 <20191018090751.28295-2-matthew.auld@intel.com>
Message-ID: <157139252539.10597.2325368777714568055@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 10:55:25 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: treat shmem as a region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTggMTA6MDc6NTApCj4gQ29udmVydCBzaG1l
bSB0byBhbiBpbnRlbF9tZW1vcnlfcmVnaW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGll
bC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX21lbW9yeV9yZWdpb24uaAo+IGluZGV4IDJjMTY1YTdhNWFiNC4uNDliMDU5YTJiZTcw
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
aAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAo+IEBA
IC0xOCwxMyArMTgsMzkgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7Cj4gIHN0cnVjdCBp
bnRlbF9tZW1vcnlfcmVnaW9uOwo+ICBzdHJ1Y3Qgc2dfdGFibGU7Cj4gIAo+ICsvKioKPiArICog
IEJhc2UgbWVtb3J5IHR5cGUKPiArICovCj4gK2VudW0gaW50ZWxfbWVtb3J5X3R5cGUgewo+ICsg
ICAgICAgSU5URUxfTUVNT1JZX1NZU1RFTSA9IDAsCj4gKyAgICAgICBJTlRFTF9NRU1PUllfTE9D
QUwsCj4gKyAgICAgICBJTlRFTF9NRU1PUllfU1RPTEVOLAo+ICt9Owo+ICsKPiAgZW51bSBpbnRl
bF9yZWdpb25faWQgewo+IC0gICAgICAgSU5URUxfUkVHSU9OX1VOS05PV04gPSAwLCAvKiBTaG91
bGQgYmUgbGFzdCAqLwo+ICsgICAgICAgSU5URUxfUkVHSU9OX1NNRU0gPSAwLAo+ICsgICAgICAg
SU5URUxfUkVHSU9OX0xNRU0sCj4gKyAgICAgICBJTlRFTF9SRUdJT05fU1RPTEVOLAo+ICsgICAg
ICAgSU5URUxfUkVHSU9OX1VOS05PV04sIC8qIFNob3VsZCBiZSBsYXN0ICovCj4gIH07Cj4gIAo+
ICsjZGVmaW5lIFJFR0lPTl9TTUVNICAgICBCSVQoSU5URUxfUkVHSU9OX1NNRU0pCj4gKyNkZWZp
bmUgUkVHSU9OX0xNRU0gICAgIEJJVChJTlRFTF9SRUdJT05fTE1FTSkKPiArI2RlZmluZSBSRUdJ
T05fU1RPTEVOICAgQklUKElOVEVMX1JFR0lPTl9TVE9MRU4pCgpJIHdvdWxkIGhhdmUgdm90ZWQg
Zm9yIGVhY2ggdHlwZSBhbmQgcmVnaW9uIGJlaW5nIGFkZGVkIGFzIHRoZXkgYXJlCmludHJvZHVj
ZWQuIEhtbSwgaW5kZWVkLCBJIHdvdWxkIHN0aWxsIGRvIHNvIGFzIG1lbnRpb25pbmcgTE1FTSBh
dCB0aGlzCnBvaW50IGlzIHN0aWxsIHByZW1hdHVyZS4KCj4gKwo+ICsjZGVmaW5lIElOVEVMX01F
TU9SWV9UWVBFX1NISUZUIDE2Cj4gKwo+ICsjZGVmaW5lIE1FTU9SWV9UWVBFX0ZST01fUkVHSU9O
KHIpIChpbG9nMigocikgPj4gSU5URUxfTUVNT1JZX1RZUEVfU0hJRlQpKQo+ICsjZGVmaW5lIE1F
TU9SWV9JTlNUQU5DRV9GUk9NX1JFR0lPTihyKSAoaWxvZzIoKHIpICYgMHhmZmZmKSkKCk1vdmUg
dGhlIGVtcHR5IGVudW0gaW50ZWxfbWVtb3J5X3R5cGUge30gYW5kIHRoZSBkZWZpbmVzIGludG8g
dGhlIGZpcnN0CnBhdGNoIGFzIHBhcnQgb2YgdGhlIGluZnJhc3RydWN0dXJlLgoKSWYgd2UgY2Fu
IGludHJvZHVjZSB0aGUgbmV3IGVudW1zIGFzIHdlIGludHJvZHVjZSB0aGUgbmV3IHJlZ2lvbnMg
dGhhdApib2RlcyB3ZWxsIGZvciB0aGUgZnV0dXJlIHdoZW4gb3VyIHBsYW5zIGluZXZpdGFibHkg
aGF2ZSB0byBjaGFuZ2UuClByZWZlcmFibHkgd2l0aCB0aGF0IHNwbGl0LApSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
