Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13471D2982
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 14:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2EC6E25B;
	Thu, 10 Oct 2019 12:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4776E25B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 12:31:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 05:31:09 -0700
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="197232057"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Oct 2019 05:31:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010103657.6961-1-chris@chris-wilson.co.uk>
 <20191010110252.17289-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <74de53a8-d323-1a7d-267e-256ae5d0c4ce@linux.intel.com>
Date: Thu, 10 Oct 2019 13:31:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010110252.17289-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check that registers
 are preserved between virtual engines
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzEwLzIwMTkgMTI6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBNYWtlIHN1cmUgdGhh
dCB3ZSBjb3B5IGFjcm9zcyB0aGUgcmVnaXN0ZXJzIGZyb20gb25lIGVuZ2luZSB0byB0aGUgbmV4
dCwKPiBhcyB3ZSBob3AgYXJvdW5kIGEgdmlydHVhbCBlbmdpbmUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gU2tpcCB0aGUgdGVzdCBv
biBnZW44IGFzIHRoZSBjb250ZXh0IGltYWdlIGlzIGRldm9pZCBvZiBDU19HUFIuCj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyB8IDE4MCArKysrKysrKysr
KysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTgwIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwo+IGluZGV4IDE5OGNmMmY3NTRm
NC4uOWVlMWZkZDE2YWZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJj
LmMKPiBAQCAtMTk1Miw2ICsxOTUyLDMzIEBAIHN0YXRpYyBpbnQgbGl2ZV92aXJ0dWFsX2VuZ2lu
ZSh2b2lkICphcmcpCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiArc3RhdGljIHN0cnVjdCBp
OTE1X3ZtYSAqY3JlYXRlX3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCkKPiArewo+ICsJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiArCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+
ICsJaW50IGVycjsKPiArCj4gKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFs
KGd0LT5pOTE1LCBQQUdFX1NJWkUpOwo+ICsJaWYgKElTX0VSUihvYmopKQo+ICsJCXJldHVybiBF
UlJfQ0FTVChvYmopOwo+ICsKPiArCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5
KG9iaiwgSTkxNV9DQUNISU5HX0NBQ0hFRCk7Cj4gKwo+ICsJdm1hID0gaTkxNV92bWFfaW5zdGFu
Y2Uob2JqLCAmZ3QtPmdndHQtPnZtLCBOVUxMKTsKPiArCWlmIChJU19FUlIodm1hKSkgewo+ICsJ
CWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKPiArCQlyZXR1cm4gdm1hOwo+ICsJfQo+ICsKPiAr
CWVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsIFBJTl9HTE9CQUwpOwo+ICsJaWYgKGVycikg
ewo+ICsJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKPiArCQlyZXR1cm4gRVJSX1BUUihlcnIp
Owo+ICsJfQo+ICsKPiArCXJldHVybiB2bWE7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IG1hc2tf
dmlydHVhbF9lbmdpbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gICAJCQkgICAg
ICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqKnNpYmxpbmdzLAo+ICAgCQkJICAgICAgIHVuc2ln
bmVkIGludCBuc2libGluZykKPiBAQCAtMjA3Niw2ICsyMTAzLDE1OCBAQCBzdGF0aWMgaW50IGxp
dmVfdmlydHVhbF9tYXNrKHZvaWQgKmFyZykKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICtz
dGF0aWMgaW50IHByZXNlcnZlZF92aXJ0dWFsX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiArCQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoqc2libGluZ3MsCj4g
KwkJCQkgICAgdW5zaWduZWQgaW50IG5zaWJsaW5nKQo+ICt7Cj4gKyNkZWZpbmUgQ1NfR1BSKGVu
Z2luZSwgbikgKChlbmdpbmUpLT5tbWlvX2Jhc2UgKyAweDYwMCArIChuKSAqIDQpCj4gKwo+ICsJ
c3RydWN0IGk5MTVfcmVxdWVzdCAqbGFzdCA9IE5VTEw7Cj4gKwlzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4Owo+ICsJc3RydWN0IGludGVsX2NvbnRleHQgKnZlOwo+ICsJc3RydWN0IGk5MTVf
dm1hICpzY3JhdGNoOwo+ICsJc3RydWN0IGlndF9saXZlX3Rlc3QgdDsKPiArCWNvbnN0IGludCBu
dW1fZ3ByID0gMTYgKiAyOyAvKiBlYWNoIEdQUiBpcyAyIGR3b3JkcyAqLwo+ICsJdW5zaWduZWQg
aW50IG47Cj4gKwlpbnQgZXJyID0gMDsKPiArCj4gKwljdHggPSBrZXJuZWxfY29udGV4dChpOTE1
KTsKPiArCWlmICghY3R4KQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiArCXNjcmF0Y2ggPSBj
cmVhdGVfc2NyYXRjaChzaWJsaW5nc1swXS0+Z3QpOwo+ICsJaWYgKElTX0VSUihzY3JhdGNoKSkg
ewo+ICsJCWVyciA9IFBUUl9FUlIoc2NyYXRjaCk7Cj4gKwkJZ290byBvdXRfY2xvc2U7Cj4gKwl9
Cj4gKwo+ICsJdmUgPSBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoY3R4LCBzaWJsaW5n
cywgbnNpYmxpbmcpOwo+ICsJaWYgKElTX0VSUih2ZSkpIHsKPiArCQllcnIgPSBQVFJfRVJSKHZl
KTsKPiArCQlnb3RvIG91dF9zY3JhdGNoOwo+ICsJfQo+ICsKPiArCWVyciA9IGludGVsX2NvbnRl
eHRfcGluKHZlKTsKPiArCWlmIChlcnIpCj4gKwkJZ290byBvdXRfcHV0Owo+ICsKPiArCWVyciA9
IGlndF9saXZlX3Rlc3RfYmVnaW4oJnQsIGk5MTUsIF9fZnVuY19fLCB2ZS0+ZW5naW5lLT5uYW1l
KTsKPiArCWlmIChlcnIpCj4gKwkJZ290byBvdXRfdW5waW47Cj4gKwo+ICsJZm9yIChuID0gMDsg
biA8IG51bV9ncHI7IG4rKykgewo+ICsJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9
IHNpYmxpbmdzW24gJSBuc2libGluZ107Cj4gKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4g
KwkJdTMyICpjczsKPiArCj4gKwkJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKHZlKTsKPiArCQlp
ZiAoSVNfRVJSKHJxKSkgewo+ICsJCQllcnIgPSBQVFJfRVJSKHJxKTsKPiArCQkJZ290byBvdXRf
ZW5kOwo+ICsJCX0KPiArCj4gKwkJaTkxNV9yZXF1ZXN0X3B1dChsYXN0KTsKPiArCQlsYXN0ID0g
aTkxNV9yZXF1ZXN0X2dldChycSk7Cj4gKwo+ICsJCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwg
OCk7Cj4gKwkJaWYgKElTX0VSUihjcykpIHsKPiArCQkJaTkxNV9yZXF1ZXN0X2FkZChycSk7Cj4g
KwkJCWVyciA9IFBUUl9FUlIoY3MpOwo+ICsJCQlnb3RvIG91dF9lbmQ7Cj4gKwkJfQo+ICsKPiAr
CQkqY3MrKyA9IE1JX1NUT1JFX1JFR0lTVEVSX01FTV9HRU44IHwgTUlfVVNFX0dHVFQ7Cj4gKwkJ
KmNzKysgPSBDU19HUFIoZW5naW5lLCBuKTsKPiArCQkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQo
c2NyYXRjaCkgKyBuICogc2l6ZW9mKHUzMik7Cj4gKwkJKmNzKysgPSAwOwo+ICsKPiArCQkqY3Mr
KyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpOwo+ICsJCSpjcysrID0gQ1NfR1BSKGVuZ2luZSwg
KG4gKyAxKSAlIG51bV9ncHIpOwo+ICsJCSpjcysrID0gbiArIDE7Cj4gKwo+ICsJCSpjcysrID0g
TUlfTk9PUDsKPiArCQlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKPiArCj4gKwkJLyogUmVz
dHJpY3QgdGhpcyByZXF1ZXN0IHRvIHJ1biBvbiBhIHBhcnRpY3VsYXIgZW5naW5lICovCj4gKwkJ
cnEtPmV4ZWN1dGlvbl9tYXNrID0gZW5naW5lLT5tYXNrOwo+ICsJCWk5MTVfcmVxdWVzdF9hZGQo
cnEpOwo+ICsJfQo+ICsKPiArCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChsYXN0LCAwLCBIWiAvIDUp
IDwgMCkgewo+ICsJCWVyciA9IC1FVElNRTsKPiArCX0gZWxzZSB7Cj4gKwkJdTMyICptYXAgPSBp
OTE1X2dlbV9vYmplY3RfcGluX21hcChzY3JhdGNoLT5vYmosIEk5MTVfTUFQX1dCKTsKPiArCj4g
KwkJZm9yIChuID0gMDsgbiA8IG51bV9ncHI7IG4rKykgewo+ICsJCQlpZiAobWFwW25dICE9IG4p
IHsKPiArCQkJCXByX2VycigiSW5jb3JyZWN0IHZhbHVlWyVkXSBmb3VuZCBmb3IgR1BSWyVkXVxu
IiwKPiArCQkJCSAgICAgICBtYXBbbl0sIG4pOwo+ICsJCQkJZXJyID0gLUVJTlZBTDsKPiArCQkJ
CWJyZWFrOwo+ICsJCQl9Cj4gKwkJfQo+ICsKPiArCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFw
KHNjcmF0Y2gtPm9iaik7Cj4gKwl9Cj4gKwo+ICtvdXRfZW5kOgo+ICsJaWYgKGlndF9saXZlX3Rl
c3RfZW5kKCZ0KSkKPiArCQllcnIgPSAtRUlPOwo+ICsJaTkxNV9yZXF1ZXN0X3B1dChsYXN0KTsK
PiArb3V0X3VucGluOgo+ICsJaW50ZWxfY29udGV4dF91bnBpbih2ZSk7Cj4gK291dF9wdXQ6Cj4g
KwlpbnRlbF9jb250ZXh0X3B1dCh2ZSk7Cj4gK291dF9zY3JhdGNoOgo+ICsJaTkxNV92bWFfdW5w
aW5fYW5kX3JlbGVhc2UoJnNjcmF0Y2gsIDApOwo+ICtvdXRfY2xvc2U6Cj4gKwlrZXJuZWxfY29u
dGV4dF9jbG9zZShjdHgpOwo+ICsJcmV0dXJuIGVycjsKPiArCj4gKyN1bmRlZiBDU19HUFIKPiAr
fQo+ICsKPiArc3RhdGljIGludCBsaXZlX3ZpcnR1YWxfcHJlc2VydmVkKHZvaWQgKmFyZykKPiAr
ewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Cj4gKwlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICpzaWJsaW5nc1tNQVhfRU5HSU5FX0lOU1RBTkNFICsgMV07Cj4gKwlzdHJ1
Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0Owo+ICsJdW5zaWduZWQgaW50IGNsYXNzLCBpbnN0
Owo+ICsKPiArCS8qCj4gKwkgKiBDaGVjayB0aGF0IHRoZSBjb250ZXh0IGltYWdlIHJldGFpbnMg
bm9uLXByaXZpbGVnZWQgKHVzZXIpIHJlZ2lzdGVycwo+ICsJICogZnJvbSBvbmUgZW5naW5lIHRv
IHRoZSBuZXh0LiBGb3IgdGhpcyB3ZSBjaGVjayB0aGF0IHRoZSBDU19HUFIKPiArCSAqIGFyZSBw
cmVzZXJ2ZWQuCj4gKwkgKi8KPiArCj4gKwlpZiAoVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkK
PiArCQlyZXR1cm4gMDsKPiArCj4gKwkvKiBBcyB3ZSB1c2UgQ1NfR1BSIHdlIGNhbm5vdCBydW4g
YmVmb3JlIHRoZXkgZXhpc3RlZCBvbiBhbGwgZW5naW5lcy4gKi8KPiArCWlmIChJTlRFTF9HRU4o
aTkxNSkgPCA5KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWZvciAoY2xhc3MgPSAwOyBjbGFzcyA8
PSBNQVhfRU5HSU5FX0NMQVNTOyBjbGFzcysrKSB7Cj4gKwkJaW50IG5zaWJsaW5nLCBlcnI7Cj4g
Kwo+ICsJCW5zaWJsaW5nID0gMDsKPiArCQlmb3IgKGluc3QgPSAwOyBpbnN0IDw9IE1BWF9FTkdJ
TkVfSU5TVEFOQ0U7IGluc3QrKykgewo+ICsJCQlpZiAoIWd0LT5lbmdpbmVfY2xhc3NbY2xhc3Nd
W2luc3RdKQo+ICsJCQkJY29udGludWU7Cj4gKwo+ICsJCQlzaWJsaW5nc1tuc2libGluZysrXSA9
IGd0LT5lbmdpbmVfY2xhc3NbY2xhc3NdW2luc3RdOwo+ICsJCX0KPiArCQlpZiAobnNpYmxpbmcg
PCAyKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJZXJyID0gcHJlc2VydmVkX3ZpcnR1YWxfZW5n
aW5lKGk5MTUsIHNpYmxpbmdzLCBuc2libGluZyk7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0dXJu
IGVycjsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgYm9u
ZF92aXJ0dWFsX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIAkJCSAg
ICAgICB1bnNpZ25lZCBpbnQgY2xhc3MsCj4gICAJCQkgICAgICAgc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqKnNpYmxpbmdzLAo+IEBAIC0yMjc3LDYgKzI0NTYsNyBAQCBpbnQgaW50ZWxfZXhlY2xp
c3RzX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCQlT
VUJURVNUKGxpdmVfcHJlZW1wdF9zbW9rZSksCj4gICAJCVNVQlRFU1QobGl2ZV92aXJ0dWFsX2Vu
Z2luZSksCj4gICAJCVNVQlRFU1QobGl2ZV92aXJ0dWFsX21hc2spLAo+ICsJCVNVQlRFU1QobGl2
ZV92aXJ0dWFsX3ByZXNlcnZlZCksCj4gICAJCVNVQlRFU1QobGl2ZV92aXJ0dWFsX2JvbmQpLAo+
ICAgCX07Cj4gICAKPiAKCkxvb2tzIG9rYXkuCgpDU19HUFIwIGlzIHRlc3RlZCBmb3IgemVybyBh
bmQgbmV2ZXIgd3JpdHRlbiB0byB3aGljaCBJIGhvcGUgY2FuIGJlIApyZWxpZWQgdXBvbi4gSW4g
dGhlIGRvY3MgSSBkaWQgbm90IHNlZSBpdCBpcyBndWFyYW50ZWVkIGJ1dCBtYXliZSBJIAptaXNz
ZWQgc29tZXRoaW5nLiBBbmQgbGFzdCB3cml0ZSBvZiBuICsgMSBpcyBuZXZlciByZWFkLWJhY2sg
YXMgd2VsbC4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
