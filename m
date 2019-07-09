Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3632E63888
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 17:21:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A0C898E1;
	Tue,  9 Jul 2019 15:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F07898E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 15:21:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17187056-1500050 for multiple; Tue, 09 Jul 2019 16:21:25 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190707210024.26192-6-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
Message-ID: <156268568371.9375.14457299625332012878@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 16:21:23 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDcgMjI6MDA6MTgpCj4gVGhlIHJhZGl4IGxl
dmVscyBvZiBlYWNoIHBhZ2UgZGlyZWN0b3J5IGFyZSBlYXNpbHkgZGV0ZXJtaW5lZCBzbyByZXBs
YWNlCj4gdGhlIG51bWVyb3VzIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCBwcmVjb21wdXRlZCBk
ZXJpdmVkIGNvbnN0YW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMzkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
Cj4gaW5kZXggMmZjNjBlOGFjZDlhLi4yNzEzMDU3MDVjMWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYwo+IEBAIC04NjgsNiArODY4LDQ1IEBAIHN0YXRpYyBpbnQgZ2VuOF9w
cGd0dF9ub3RpZnlfdmd0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwgYm9vbCBjcmVhdGUpCj4g
ICAgICAgICByZXR1cm4gMDsKPiAgfQo+ICAKPiArLyogSW5kZXggc2hpZnRzIGludG8gdGhlIHBh
Z2V0YWJsZSBhcmUgb2Zmc2V0IGJ5IEdFTjhfUFRFX1NISUZUIFsxMl0gKi8KPiArI2RlZmluZSBn
ZW44X3BkX3NoaWZ0KGx2bCkgKChsdmwpICogaWxvZzIoSTkxNV9QREVTKSkKPiArI2RlZmluZSBn
ZW44X3BkX2luZGV4KGksIGx2bCkgaTkxNV9wZGVfaW5kZXgoKGkpLCBnZW44X3BkX3NoaWZ0KGx2
bCkpCj4gKyNkZWZpbmUgX19nZW44X3B0ZV9zaGlmdChsdmwpIChHRU44X1BURV9TSElGVCArIGdl
bjhfcGRfc2hpZnQobHZsKSkKPiArI2RlZmluZSBfX2dlbjhfcHRlX2luZGV4KGEsIGx2bCkgaTkx
NV9wZGVfaW5kZXgoKGEpLCBfX2dlbjhfcHRlX3NoaWZ0KGx2bCkpCj4gKwo+ICtzdGF0aWMgaW5s
aW5lIHVuc2lnbmVkIGludAo+ICtnZW44X3BkX3JhbmdlKHU2NCBhZGRyLCB1NjQgZW5kLCBpbnQg
bHZsLCB1bnNpZ25lZCBpbnQgKmlkeCkKPiArewo+ICsgICAgICAgY29uc3QgaW50IHNoaWZ0ID0g
Z2VuOF9wZF9zaGlmdChsdmwpOwo+ICsgICAgICAgY29uc3QgdTY0IG1hc2sgPSB+MHVsbCA8PCBn
ZW44X3BkX3NoaWZ0KGx2bCArIDEpOwo+ICsKPiArICAgICAgIEdFTV9CVUdfT04oYWRkciA+PSBl
bmQpOwo+ICsgICAgICAgZW5kICs9IH5tYXNrID4+IGdlbjhfcGRfc2hpZnQoMSk7Cj4gKwo+ICsg
ICAgICAgKmlkeCA9IGk5MTVfcGRlX2luZGV4KGFkZHIsIHNoaWZ0KTsKPiArICAgICAgIGlmICgo
YWRkciBeIGVuZCkgJiBtYXNrKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gSTkxNV9QREVTIC0g
KmlkeDsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgcmV0dXJuIGk5MTVfcGRlX2lu
ZGV4KGVuZCwgc2hpZnQpIC0gKmlkeDsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBib29sIGdl
bjhfcGRfc3Vic3VtZXModTY0IGFkZHIsIHU2NCBlbmQsIGludCBsdmwpCj4gK3sKPiArICAgICAg
IGNvbnN0IHU2NCBtYXNrID0gfjB1bGwgPDwgZ2VuOF9wZF9zaGlmdChsdmwgKyAxKTsKPiArCj4g
KyAgICAgICBHRU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKPiArICAgICAgIHJldHVybiAoYWRkciBe
IGVuZCkgJiBtYXNrICYmIChhZGRyICYgfm1hc2spID09IDA7Cj4gK30KPiArCj4gK3N0YXRpYyBp
bmxpbmUgdW5zaWduZWQgaW50IGdlbjhfcHRfY291bnQodTY0IGFkZHIsIHU2NCBlbmQpCj4gK3sK
PiArICAgICAgIEdFTV9CVUdfT04oYWRkciA+PSBlbmQpOwo+ICsgICAgICAgaWYgKChhZGRyIF4g
ZW5kKSAmIH5JOTE1X1BERV9NQVNLKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gSTkxNV9QREVT
IC0gKGFkZHIgJiBJOTE1X1BERV9NQVNLKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIGVuZCAtIGFkZHI7Cj4gK30KClNvIHRoaXMgaXMgdGhlIHF1ZXN0aW9uLCBkbyB5
b3Ugd2FudCB0aGVzZSBhcyA1MTIgYW5kIDB4MWZmPwoKT3IganVzdCBkZWZpbmUgZ2VuOF9wZF9z
aGlmdChsdmwpIGFzICgobHZsKSAqIGlsb2coNTEyKSkKCmFuZCB3b3JrIGZyb20gdGhlcmUuIEht
bS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
