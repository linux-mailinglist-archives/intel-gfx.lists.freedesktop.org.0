Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24913FE69D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 21:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBDD16EA7E;
	Fri, 15 Nov 2019 20:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980246EA7E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 20:51:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 12:51:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="199322308"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga008.jf.intel.com with ESMTP; 15 Nov 2019 12:51:38 -0800
Date: Fri, 15 Nov 2019 12:52:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191115205249.GA21445@mdroper-desk1.amr.corp.intel.com>
References: <20191111205024.22853-1-lucas.demarchi@intel.com>
 <20191111205024.22853-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111205024.22853-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsb: fix extra warning on
 error path handling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMTI6NTA6MjVQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFdoZW4gd2UgY2FsbCBpbnRlbF9kc2JfZ2V0KCksIHRoZSBkc2IgaW5pdGlhbGl6
YXRpb24gbWF5IGZhaWwgZm9yCj4gdmFyaW91cyByZWFzb25zLiBXZSBhbHJlYWR5IGxvZyB0aGUg
ZXJyb3IgbWVzc2FnZSBpbiB0aGF0IHBhdGgsIG1ha2luZwo+IGl0IHVubmVjZXNzYXJ5IHRvIHRy
aWdnZXIgYSB3YXJuaW5nIHRoYXQgcmVmY291bnQgPT0gMCB3aGVuIGNhbGxpbmcKPiBpbnRlbF9k
c2JfcHV0KCkuCj4gCj4gU28gaGVyZSB3ZSBzaW1wbGlmeSB0aGUgbG9naWMgYW5kIGRvIGxhenkg
c2h1dGRvd246IGxlYXZpbmcgdGhlIGV4dHJhCj4gcmVmY291bnQgYWxpdmUgc28gd2hlbiB3ZSBj
YWxsIGludGVsX2RzYl9wdXQoKSB3ZSBlbmQgdXAgY2FsbGluZwo+IGk5MTVfdm1hX3VucGluX2Fu
ZF9yZWxlYXNlKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+CgpEdWUgdG8gdGhlIGxhY2sgb2YgYW55IGFjdHVhbCBjb25jdXJy
ZW5jeSwgaXQgc2VlbXMgbGlrZSB3ZSBjb3VsZApldmVudHVhbGx5IGdldCByaWQgb2YgdGhlIHdo
b2xlIGdldC9wdXQgZGVzaWduIGFuZCBqdXN0IGFsbG9jYXRlIHRoZQpidWZmZXIgb25jZSAoYW5k
IHBpbiBpdCBkdXJpbmcgdGhlIHByZXBhcmUgc3RlcCkuICBCdXQgdGhpcyBzZWVtcyBnb29kCmVu
b3VnaCBmb3Igbm93LgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDIxICsrKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMKPiBpbmRleCA0ZmVlYmJlYjBiMGMuLjg1OGFmNmJlOWMzNiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+IEBAIC0xMDIsNiArMTAy
LDcgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgCXN0cnVjdCBp
bnRlbF9kc2IgKmRzYiA9ICZjcnRjLT5kc2I7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwo+ICAJc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4gKwl1MzIgKmJ1ZjsKPiAgCWludGVs
X3dha2VyZWZfdCB3YWtlcmVmOwo+ICAKPiAgCWlmICghSEFTX0RTQihpOTE1KSkKPiBAQCAtMTEw
LDcgKzExMSw2IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIAlp
ZiAoKytkc2ItPnJlZmNvdW50ICE9IDEpCj4gIAkJcmV0dXJuIGRzYjsKPiAgCj4gLQlkc2ItPmlk
ID0gRFNCMTsKPiAgCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGlt
ZV9wbSk7Cj4gIAo+ICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1
LCBEU0JfQlVGX1NJWkUpOwo+IEBAIC0xMjMsMjIgKzEyMywyOSBAQCBpbnRlbF9kc2JfZ2V0KHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAJaWYgKElTX0VSUih2bWEpKSB7Cj4gIAkJRFJNX0VS
Uk9SKCJWbWEgY3JlYXRpb24gZmFpbGVkXG4iKTsKPiAgCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7Cj4gLQkJZHNiLT5yZWZjb3VudC0tOwo+ICAJCWdvdG8gZXJyOwo+ICAJfQo+ICAKPiAtCWRz
Yi0+Y21kX2J1ZiA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9X
Qyk7Cj4gLQlpZiAoSVNfRVJSKGRzYi0+Y21kX2J1ZikpIHsKPiArCWJ1ZiA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9XQyk7Cj4gKwlpZiAoSVNfRVJSKGJ1Zikp
IHsKPiAgCQlEUk1fRVJST1IoIkNvbW1hbmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZFxuIik7Cj4g
LQkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJnZtYSwgMCk7Cj4gLQkJZHNiLT5jbWRfYnVm
ID0gTlVMTDsKPiAtCQlkc2ItPnJlZmNvdW50LS07Cj4gIAkJZ290byBlcnI7Cj4gIAl9Cj4gKwo+
ICsJZHNiLT5pZCA9IERTQjE7Cj4gIAlkc2ItPnZtYSA9IHZtYTsKPiArCWRzYi0+Y21kX2J1ZiA9
IGJ1ZjsKPiAgCj4gIGVycjoKPiArCS8qCj4gKwkgKiBTZXQgY21kX2J1ZiB0byBOVUxMIHNvIHRo
ZSB3cml0ZXMgcGFzcy10aHJvdWdoLCBidXQgbGVhdmUgdGhlCj4gKwkgKiBkYW5nbGluZyByZWZj
b3VudCB0byBiZSByZW1vdmVkIGxhdGVyIGJ5IHRoZSBjb3JyZXNwb25kaW5nCj4gKwkgKiBpbnRl
bF9kc2JfcHV0KCk6IHRoZSBpbXBvcnRhbnQgZXJyb3IgbWVzc2FnZSB3aWxsIGFscmVhZHkgYmUK
PiArCSAqIGxvZ2dlZCBhYm92ZS4KPiArCSAqLwo+ICsJZHNiLT5jbWRfYnVmID0gTlVMTDsKPiAg
CWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiArCj4g
IAlyZXR1cm4gZHNiOwo+ICB9Cj4gIAo+IC0tIAo+IDIuMjQuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCk1hdHQgUm9wZXIKR3Jh
cGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRl
bCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
