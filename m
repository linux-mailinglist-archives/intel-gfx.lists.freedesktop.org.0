Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8387FE503F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A526EAA0;
	Fri, 25 Oct 2019 15:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F226EA96
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 15:37:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18964861-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 16:37:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:37:28 +0100
Message-Id: <20191025153728.23689-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191025153728.23689-1-chris@chris-wilson.co.uk>
References: <20191025153728.23689-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 7/7] drm/i915/selftests: add sanity selftest for
 huge-GTT-pages
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

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKTm93IHRoYXQgZm9y
IGFsbCB0aGUgcmVsZXZhbnQgYmFja2VuZHMgd2UgZG8gcmFuZG9taXNlZCB0ZXN0aW5nLCB3ZSBu
ZWVkCnRvIG1ha2Ugc3VyZSB3ZSBzdGlsbCBzYW5pdHkgY2hlY2sgdGhlIG9idmlvdXMgY2FzZXMg
dGhhdCBtaWdodCBibG93IHVwLApzdWNoIHRoYXQgaW50cm9kdWNpbmcgYSB0ZW1wb3JhcnkgcmVn
cmVzc2lvbiBpcyBsZXNzIGxpa2VseS4gIEFsc28KcmF0aGVyIHRoYW4gZG8gdGhpcyBmb3IgZXZl
cnkgYmFja2VuZCwganVzdCBsaW1pdCB0byBvdXIgdHdvIG1lbW9yeQp0eXBlczogc3lzdGVtIGFu
ZCBsb2NhbC4KClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogLi4uL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyAgIHwgOTkgKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDk5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCmluZGV4IGI3Nzc5OTk2NTViMC4u
Njg4YzQ5YTI0ZjMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2h1Z2VfcGFnZXMuYwpAQCAtMTM0Miw2ICsxMzQyLDEyIEBAIGlndF9jcmVhdGVfaW50ZXJuYWwo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBzaXplLCB1MzIgZmxhZ3MpCiAJcmV0
dXJuIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CiB9CiAKK3N0
YXRpYyBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCitpZ3RfY3JlYXRlX3N5c3RlbShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIHNpemUsIHUzMiBmbGFncykKK3sKKwlyZXR1
cm4gaHVnZV9wYWdlc19vYmplY3QoaTkxNSwgc2l6ZSwgc2l6ZSk7Cit9CisKIHN0YXRpYyBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCiBpZ3RfY3JlYXRlX2xvY2FsKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCB1MzIgc2l6ZSwgdTMyIGZsYWdzKQogewpAQCAtMTQ1Miw2ICsxNDU4
LDk4IEBAIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X3Ntb2tlX2h1Z2Uodm9pZCAqYXJnKQogCXJldHVy
biBlcnI7CiB9CiAKK3N0YXRpYyBpbnQgaWd0X3BwZ3R0X3Nhbml0eV9jaGVjayh2b2lkICphcmcp
Cit7CisJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsKKwl1bnNpZ25lZCBpbnQgc3VwcG9ydGVkID0g
SU5URUxfSU5GTyhpOTE1KS0+cGFnZV9zaXplczsKKwlzdHJ1Y3QgeworCQlpZ3RfY3JlYXRlX2Zu
IGZuOworCQl1bnNpZ25lZCBpbnQgZmxhZ3M7CisJfSBiYWNrZW5kc1tdID0geworCQl7IGlndF9j
cmVhdGVfc3lzdGVtLCAwLCAgICAgICAgICAgICAgICAgICAgICAgIH0sCisJCXsgaWd0X2NyZWF0
ZV9sb2NhbCwgIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUywgfSwKKwl9OworCXN0cnVjdCB7CisJ
CXUzMiBzaXplOworCQl1MzIgcGFnZXM7CisJfSBjb21ib3NbXSA9IHsKKwkJeyBTWl82NEssCQlT
Wl82NEsJCX0sCisJCXsgU1pfMk0sCQlTWl8yTQkJfSwKKwkJeyBTWl8yTSwJCVNaXzY0SwkJfSwK
KwkJeyBTWl8yTSAtIFNaXzY0SywJU1pfNjRLCQl9LAorCQl7IFNaXzJNIC0gU1pfNEssCVNaXzY0
SyB8IFNaXzRLCX0sCisJCXsgU1pfMk0gKyBTWl80SywJU1pfNjRLIHwgU1pfNEsJfSwKKwkJeyBT
Wl8yTSArIFNaXzRLLAlTWl8yTSAgfCBTWl80Swl9LAorCQl7IFNaXzJNICsgU1pfNjRLLAlTWl8y
TSAgfCBTWl82NEsgfSwKKwl9OworCWludCBpLCBqOworCWludCBlcnI7CisKKwlpZiAoc3VwcG9y
dGVkID09IEk5MTVfR1RUX1BBR0VfU0laRV80SykKKwkJcmV0dXJuIDA7CisKKwkvKgorCSAqIFNh
bml0eSBjaGVjayB0aGF0IHRoZSBIVyBiZWhhdmVzIHdpdGggYSBsaW1pdGVkIHNldCBvZiBjb21i
aW5hdGlvbnMuCisJICogV2UgYWxyZWFkeSBoYXZlIGEgYnVuY2ggb2YgcmFuZG9taXNlZCB0ZXN0
aW5nLCB3aGljaCBzaG91bGQgZ2l2ZSB1cworCSAqIGEgZGVjZW50IGFtb3VudCBvZiB2YXJpYXRp
b24gYmV0d2VlbiBydW5zLCBob3dldmVyIHdlIHNob3VsZCBrZWVwCisJICogdGhpcyB0byBsaW1p
dCB0aGUgY2hhbmNlcyBvZiBpbnRyb2R1Y2luZyBhIHRlbXBvcmFyeSByZWdyZXNzaW9uLCBieQor
CSAqIHRlc3RpbmcgdGhlIG1vc3Qgb2J2aW91cyBjYXNlcyB0aGF0IG1pZ2h0IG1ha2Ugc29tZXRo
aW5nIGJsb3cgdXAuCisJICovCisKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShiYWNrZW5k
cyk7ICsraSkgeworCQlmb3IgKGogPSAwOyBqIDwgQVJSQVlfU0laRShjb21ib3MpOyArK2opIHsK
KwkJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJCQl1MzIgc2l6ZSA9IGNvbWJv
c1tqXS5zaXplOworCQkJdTMyIHBhZ2VzID0gY29tYm9zW2pdLnBhZ2VzOworCisJCQlvYmogPSBi
YWNrZW5kc1tpXS5mbihpOTE1LCBzaXplLCBiYWNrZW5kc1tpXS5mbGFncyk7CisJCQlpZiAoSVNf
RVJSKG9iaikpIHsKKwkJCQllcnIgPSBQVFJfRVJSKG9iaik7CisJCQkJaWYgKGVyciA9PSAtRU5P
REVWKSB7CisJCQkJCXByX2luZm8oIkRldmljZSBsYWNrcyBsb2NhbCBtZW1vcnksIHNraXBwaW5n
XG4iKTsKKwkJCQkJZXJyID0gMDsKKwkJCQkJYnJlYWs7CisJCQkJfQorCisJCQkJcmV0dXJuIGVy
cjsKKwkJCX0KKworCQkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCQkJ
aWYgKGVycikgeworCQkJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKwkJCQlnb3RvIG91dDsK
KwkJCX0KKworCQkJR0VNX0JVR19PTihwYWdlcyA+IG9iai0+YmFzZS5zaXplKTsKKwkJCXBhZ2Vz
ID0gcGFnZXMgJiBzdXBwb3J0ZWQ7CisKKwkJCWlmIChwYWdlcykKKwkJCQlvYmotPm1tLnBhZ2Vf
c2l6ZXMuc2cgPSBwYWdlczsKKworCQkJZXJyID0gaWd0X3dyaXRlX2h1Z2UoY3R4LCBvYmopOwor
CisJCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKwkJCV9faTkxNV9nZW1fb2Jq
ZWN0X3B1dF9wYWdlcyhvYmosIEk5MTVfTU1fTk9STUFMKTsKKwkJCWk5MTVfZ2VtX29iamVjdF9w
dXQob2JqKTsKKworCQkJaWYgKGVycikgeworCQkJCXByX2VycigiJXMgd3JpdGUtaHVnZSBmYWls
ZWQgd2l0aCBzaXplPSV1IHBhZ2VzPSV1IGk9JWQsIGo9JWRcbiIsCisJCQkJICAgICAgIF9fZnVu
Y19fLCBzaXplLCBwYWdlcywgaSwgaik7CisJCQkJZ290byBvdXQ7CisJCQl9CisJCX0KKworCQlj
b25kX3Jlc2NoZWQoKTsKKwl9CisKK291dDoKKwlpZiAoZXJyID09IC1FTk9NRU0pCisJCWVyciA9
IDA7CisKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0aWMgaW50IGlndF9wcGd0dF9waW5fdXBkYXRl
KHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4ID0gYXJnOwpAQCAt
MTgxMiw2ICsxOTEwLDcgQEAgaW50IGk5MTVfZ2VtX2h1Z2VfcGFnZV9saXZlX3NlbGZ0ZXN0cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJU1VCVEVTVChpZ3RfdG1wZnNfZmFsbGJh
Y2spLAogCQlTVUJURVNUKGlndF9wcGd0dF9leGhhdXN0X2h1Z2UpLAogCQlTVUJURVNUKGlndF9w
cGd0dF9zbW9rZV9odWdlKSwKKwkJU1VCVEVTVChpZ3RfcHBndHRfc2FuaXR5X2NoZWNrKSwKIAl9
OwogCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
OwotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
