Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D397564781
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 15:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B6D89830;
	Wed, 10 Jul 2019 13:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB00289048
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 13:49:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 06:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="186144605"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2019 06:49:18 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3AAD15C1E95; Wed, 10 Jul 2019 16:49:05 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190707210024.26192-6-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 16:49:05 +0300
Message-ID: <87pnmiq9ta.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/gtt: Compute the radix for
 gen8 page table levels
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIHJh
ZGl4IGxldmVscyBvZiBlYWNoIHBhZ2UgZGlyZWN0b3J5IGFyZSBlYXNpbHkgZGV0ZXJtaW5lZCBz
byByZXBsYWNlCj4gdGhlIG51bWVyb3VzIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCBwcmVjb21w
dXRlZCBkZXJpdmVkIGNvbnN0YW50cy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYwo+IGluZGV4IDJmYzYwZThhY2Q5YS4uMjcxMzA1NzA1YzFjIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtODY4LDYgKzg2OCw0NSBAQCBzdGF0aWMgaW50IGdl
bjhfcHBndHRfbm90aWZ5X3ZndChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIGJvb2wgY3JlYXRl
KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gKy8qIEluZGV4IHNoaWZ0cyBpbnRvIHRoZSBwYWdl
dGFibGUgYXJlIG9mZnNldCBieSBHRU44X1BURV9TSElGVCBbMTJdICovCj4gKyNkZWZpbmUgZ2Vu
OF9wZF9zaGlmdChsdmwpICgobHZsKSAqIGlsb2cyKEk5MTVfUERFUykpCgpDb3VsZCBiZSBqdXN0
IChsdmwpICogOS4gQnV0IGxvb2tpbmcgYXQgaWxvZzIoKSBpdCB3aWxsIGJlCnNvIGJvdGggYXJl
IGZpbmUuCgo+ICsjZGVmaW5lIGdlbjhfcGRfaW5kZXgoaSwgbHZsKSBpOTE1X3BkZV9pbmRleCgo
aSksIGdlbjhfcGRfc2hpZnQobHZsKSkKPiArI2RlZmluZSBfX2dlbjhfcHRlX3NoaWZ0KGx2bCkg
KEdFTjhfUFRFX1NISUZUICsgZ2VuOF9wZF9zaGlmdChsdmwpKQo+ICsjZGVmaW5lIF9fZ2VuOF9w
dGVfaW5kZXgoYSwgbHZsKSBpOTE1X3BkZV9pbmRleCgoYSksIF9fZ2VuOF9wdGVfc2hpZnQobHZs
KSkKPiArCj4gK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50Cj4gK2dlbjhfcGRfcmFuZ2UodTY0
IGFkZHIsIHU2NCBlbmQsIGludCBsdmwsIHVuc2lnbmVkIGludCAqaWR4KQoKSSB3YXMgZW5vdWdo
IGNvbmZ1c2VkIChldmVuIHRobyB0aGUgbGFzdCBmdW5jdGlvbiByZXZlYWxzCml0IGNsZWFybHkp
IHRoYXQgaW4gaXJjIHdlIGNvbmNsdWRlZCB0aGF0IGFkZHIgYXMgYQpmaXJzdCBwYXJhbWV0ZXIg
aXMgbWlzbGVhZGluZyBhbmQgY29udmVyZ2VkIG9uICdzdGFydCcKCj4gK3sKPiArCWNvbnN0IGlu
dCBzaGlmdCA9IGdlbjhfcGRfc2hpZnQobHZsKTsKPiArCWNvbnN0IHU2NCBtYXNrID0gfjB1bGwg
PDwgZ2VuOF9wZF9zaGlmdChsdmwgKyAxKTsKPiArCj4gKwlHRU1fQlVHX09OKGFkZHIgPj0gZW5k
KTsKPiArCWVuZCArPSB+bWFzayA+PiBnZW44X3BkX3NoaWZ0KDEpOwo+ICsKPiArCSppZHggPSBp
OTE1X3BkZV9pbmRleChhZGRyLCBzaGlmdCk7Cj4gKwlpZiAoKGFkZHIgXiBlbmQpICYgbWFzaykK
PiArCQlyZXR1cm4gSTkxNV9QREVTIC0gKmlkeDsKPiArCWVsc2UKPiArCQlyZXR1cm4gaTkxNV9w
ZGVfaW5kZXgoZW5kLCBzaGlmdCkgLSAqaWR4Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW5saW5lIGJv
b2wgZ2VuOF9wZF9zdWJzdW1lcyh1NjQgYWRkciwgdTY0IGVuZCwgaW50IGx2bCkKPiArewoKSnVz
dCBhIHN1Z2dlc3Rpb24gZ2VuOF9wZF9jb250YWlucygpIGZvciBlbXBoYXNpcyBvbiBleGNsdXNp
dml0eS4KQnV0IHdlbGwsIHRoaXMgaXMgZmluZSB0b28uIEkgZ3Vlc3Mgd2hhdCByZWFkcyBiZXR0
ZXIgaW4gY2FsbHNpdGUsCih3aGljaCB3ZSBkb250IHNlZSB5ZXQhKQoKPiArCWNvbnN0IHU2NCBt
YXNrID0gfjB1bGwgPDwgZ2VuOF9wZF9zaGlmdChsdmwgKyAxKTsKPiArCj4gKwlHRU1fQlVHX09O
KGFkZHIgPj0gZW5kKTsKPiArCXJldHVybiAoYWRkciBeIGVuZCkgJiBtYXNrICYmIChhZGRyICYg
fm1hc2spID09IDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGdlbjhf
cHRfY291bnQodTY0IGFkZHIsIHU2NCBlbmQpCj4gK3sKPiArCUdFTV9CVUdfT04oYWRkciA+PSBl
bmQpOwo+ICsJaWYgKChhZGRyIF4gZW5kKSAmIH5JOTE1X1BERV9NQVNLKQo+ICsJCXJldHVybiBJ
OTE1X1BERVMgLSAoYWRkciAmIEk5MTVfUERFX01BU0spOwoKT2ssIEkgeWllbGQgb24gNTEyLiBJ
OTE1X1BERVMgaXMgZmluZSBhcyBpdCBhdGxlYXN0CmNvdXBsZXMgaXQgdG8gbWFzayA6TwoKV2l0
aCBzL2FkZHIvc3RhcnQsCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gKwllbHNlCj4gKwkJcmV0dXJuIGVu
ZCAtIGFkZHI7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGdlbjhfZnJlZV9wYWdlX3RhYmxlcyhz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgCQkJCSAgc3RydWN0IGk5MTVfcGFnZV9k
aXJlY3RvcnkgKnBkKQo+ICB7Cj4gLS0gCj4gMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
