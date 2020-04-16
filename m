Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79141AD1B3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 23:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4104C6EB73;
	Thu, 16 Apr 2020 21:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014486EB73
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 21:06:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20926625-1500050 
 for multiple; Thu, 16 Apr 2020 22:05:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 22:05:53 +0100
Message-Id: <20200416210553.10860-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200416210553.10860-1-chris@chris-wilson.co.uk>
References: <20200416210553.10860-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/selftests: Check power consumption
 at min/max frequencies
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBiYXNpYyBwcmVtaXNlIG9mIFJQUyBpcyB0aGF0IGF0IGxvd2VyIGZyZXF1ZW5jaWVzLCBub3Qg
b25seSBkbyB3ZSBydW4Kc2xvd2VyLCBidXQgd2Ugc2F2ZSBwb3dlciBjb21wYXJlZCB0byBoaWdo
ZXIgZnJlcXVlbmNpZXMuIEZvciBleGFtcGxlLAp3aGVuIGlkbGUsIHdlIHNldCB0aGUgbWluaW11
bSBmcmVxdWVuY3kganVzdCBpbiBjYXNlIHRoZXJlIGlzIHNvbWUKcmVzaWR1YWwgY3VycmVudC4g
U2luY2UgdGhlIHBvd2VyIGN1cnZlIHNob3VsZCBiZSBhIHBoeXNpY2FsCnJlbGF0aW9uc2hpcCwg
aWYgd2UgZmluZCBubyBwb3dlciBzYXZpbmcgaXQncyBsaWtlbHkgdGhhdCB3ZSd2ZSBicm9rZW4K
b3VyIGZyZXF1ZW5jeSBoYW5kbGluZywgc28gdGVzdCEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgfCAgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMgICB8IDEzMiArKysrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmggICB8ICAgMSAr
CiAzIGZpbGVzIGNoYW5nZWQsIDEzNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKaW5kZXggYzUwYmI1MDJmZTAzLi4wMTQxYzMzNGYyYWMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0uYwpAQCAtNTQsNiArNTQsNyBA
QCBpbnQgaW50ZWxfZ3RfcG1fbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKIAkJ
U1VCVEVTVChsaXZlX3JjNl9tYW51YWwpLAogCQlTVUJURVNUKGxpdmVfcnBzX2ludGVycnVwdCks
CisJCVNVQlRFU1QobGl2ZV9ycHNfcG93ZXIpLAogCQlTVUJURVNUKGxpdmVfZ3RfcmVzdW1lKSwK
IAl9OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jwcy5jCmluZGV4IDgzY2M0ZDFm
YzVkZS4uMDQ4NGFmNzA4YjI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9ycHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMu
YwpAQCAtMyw2ICszLDggQEAKICAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9u
CiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4L3NvcnQuaD4KKwogI2luY2x1ZGUgImludGVsX2VuZ2lu
ZV9wbS5oIgogI2luY2x1ZGUgImludGVsX2d0X2Nsb2NrX3V0aWxzLmgiCiAjaW5jbHVkZSAiaW50
ZWxfZ3RfcG0uaCIKQEAgLTEwLDYgKzEyLDcgQEAKICNpbmNsdWRlICJzZWxmdGVzdF9ycHMuaCIK
ICNpbmNsdWRlICJzZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuaCIKICNpbmNsdWRlICJzZWxmdGVz
dHMvaWd0X3NwaW5uZXIuaCIKKyNpbmNsdWRlICJzZWxmdGVzdHMvbGlicmFwbC5oIgogCiBzdGF0
aWMgdm9pZCBkdW1teV9ycHNfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKIHsKQEAgLTIy
OCwzICsyMzEsMTMyIEBAIGludCBsaXZlX3Jwc19pbnRlcnJ1cHQodm9pZCAqYXJnKQogCiAJcmV0
dXJuIGVycjsKIH0KKworc3RhdGljIHU2NCBfX21lYXN1cmVfcG93ZXIoaW50IGR1cmF0aW9uX21z
KQoreworCXU2NCBkRSwgZHQ7CisKKwlkdCA9IGt0aW1lX2dldCgpOworCWRFID0gbGlicmFwbF9l
bmVyZ3lfdUooKTsKKwl1c2xlZXBfcmFuZ2UoMTAwMCAqIGR1cmF0aW9uX21zLCAyMDAwICogZHVy
YXRpb25fbXMpOworCWRFID0gbGlicmFwbF9lbmVyZ3lfdUooKSAtIGRFOworCWR0ID0ga3RpbWVf
Z2V0KCkgLSBkdDsKKworCXJldHVybiBkaXY2NF91NjQoMTAwMCAqIDEwMDAgKiBkRSwgZHQpOwor
fQorCitzdGF0aWMgaW50IGNtcF91NjQoY29uc3Qgdm9pZCAqQSwgY29uc3Qgdm9pZCAqQikKK3sK
Kwljb25zdCB1NjQgKmEgPSBBLCAqYiA9IEI7CisKKwlpZiAoYSA8IGIpCisJCXJldHVybiAtMTsK
KwllbHNlIGlmIChhID4gYikKKwkJcmV0dXJuIDE7CisJZWxzZQorCQlyZXR1cm4gMDsKK30KKwor
c3RhdGljIHU2NCBtZWFzdXJlX3Bvd2VyX2F0KHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgaW50IGZy
ZXEpCit7CisJdTY0IHhbNV07CisJaW50IGk7CisKKwltdXRleF9sb2NrKCZycHMtPmxvY2spOwor
CUdFTV9CVUdfT04oIXJwcy0+YWN0aXZlKTsKKwlpbnRlbF9ycHNfc2V0KHJwcywgZnJlcSk7CisJ
bXV0ZXhfdW5sb2NrKCZycHMtPmxvY2spOworCisJbXNsZWVwKDIwKTsgLyogbW9yZSB0aGFuIGVu
b3VnaCB0aW1lIHRvIHN0YWJpbGlzZSEgKi8KKworCWZvciAoaSA9IDA7IGkgPCA1OyBpKyspCisJ
CXhbaV0gPSBfX21lYXN1cmVfcG93ZXIoNSk7CisKKwkvKiBBIHNpbXBsZSB0cmlhbmdsZSBmaWx0
ZXIgZm9yIGJldHRlciByZXN1bHQgc3RhYmlsaXR5ICovCisJc29ydCh4LCA1LCBzaXplb2YoKngp
LCBjbXBfdTY0LCBOVUxMKTsKKwlyZXR1cm4gZGl2X3U2NCh4WzFdICsgMiAqIHhbMl0gKyB4WzNd
LCA0KTsKK30KKworaW50IGxpdmVfcnBzX3Bvd2VyKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9ycHMgKnJwcyA9ICZndC0+cnBzOworCXZv
aWQgKCpzYXZlZF93b3JrKShzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyayk7CisJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCXN0cnVjdCBp
Z3Rfc3Bpbm5lciBzcGluOworCWludCBlcnIgPSAwOworCisJLyoKKwkgKiBPdXIgZnVuZGFtZW50
YWwgYXNzdW1wdGlvbiBpcyB0aGF0IHJ1bm5pbmcgYXQgbG93ZXIgZnJlcXVlbmN5CisJICogYWN0
dWFsbHkgc2F2ZXMgcG93ZXIuIExldCdzIHNlZSBpZiBvdXIgUkFQTCBtZWFzdXJlbWVudCBzdXBw
b3J0CisJICogdGhhdCB0aGVvcnkuCisJICovCisKKwlpZiAoIXJwcy0+ZW5hYmxlZCB8fCBycHMt
Pm1heF9mcmVxIDw9IHJwcy0+bWluX2ZyZXEpCisJCXJldHVybiAwOworCisJaWYgKCFsaWJyYXBs
X2VuZXJneV91SigpKQorCQlyZXR1cm4gMDsKKworCWlmIChpZ3Rfc3Bpbm5lcl9pbml0KCZzcGlu
LCBndCkpCisJCXJldHVybiAtRU5PTUVNOworCisJaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShn
dCk7CisJc2F2ZWRfd29yayA9IHJwcy0+d29yay5mdW5jOworCXJwcy0+d29yay5mdW5jID0gZHVt
bXlfcnBzX3dvcms7CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpIHsKKwkJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJCXU2NCBtaW4sIG1heDsKKworCQlpZiAoIWludGVsX2Vu
Z2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSkKKwkJCWNvbnRpbnVlOworCisJCXJxID0gaWd0
X3NwaW5uZXJfY3JlYXRlX3JlcXVlc3QoJnNwaW4sCisJCQkJCQllbmdpbmUtPmtlcm5lbF9jb250
ZXh0LAorCQkJCQkJTUlfTk9PUCk7CisJCWlmIChJU19FUlIocnEpKSB7CisJCQllcnIgPSBQVFJf
RVJSKHJxKTsKKwkJCWJyZWFrOworCQl9CisKKwkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisKKwkJ
aWYgKCFpZ3Rfd2FpdF9mb3Jfc3Bpbm5lcigmc3BpbiwgcnEpKSB7CisJCQlwcl9lcnIoIiVzOiBS
UFMgc3Bpbm5lciBkaWQgbm90IHN0YXJ0XG4iLAorCQkJICAgICAgIGVuZ2luZS0+bmFtZSk7CisJ
CQlpbnRlbF9ndF9zZXRfd2VkZ2VkKGVuZ2luZS0+Z3QpOworCQkJZXJyID0gLUVJTzsKKwkJCWJy
ZWFrOworCQl9CisKKwkJbWF4ID0gbWVhc3VyZV9wb3dlcl9hdChycHMsIHJwcy0+bWF4X2ZyZXEp
OworCQltaW4gPSBtZWFzdXJlX3Bvd2VyX2F0KHJwcywgcnBzLT5taW5fZnJlcSk7CisKKwkJaWd0
X3NwaW5uZXJfZW5kKCZzcGluKTsKKworCQlwcl9pbmZvKCIlczogbWluOiVsbHVtVyBAICV1TUh6
LCBtYXg6JWxsdW1XIEAgJXVNSHpcbiIsCisJCQllbmdpbmUtPm5hbWUsCisJCQltaW4sIGludGVs
X2dwdV9mcmVxKHJwcywgcnBzLT5taW5fZnJlcSksCisJCQltYXgsIGludGVsX2dwdV9mcmVxKHJw
cywgcnBzLT5tYXhfZnJlcSkpOworCQlpZiAobWluID49IG1heCkgeworCQkJcHJfZXJyKCIlczog
ZGlkIG5vdCBjb25zZXJ2ZSBwb3dlciB3aGVuIHNldHRpbmcgbG93ZXIgZnJlcXVlbmN5IVxuIiwK
KwkJCSAgICAgICBlbmdpbmUtPm5hbWUpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWJyZWFrOwor
CQl9CisKKwkJaWYgKGlndF9mbHVzaF90ZXN0KGd0LT5pOTE1KSkgeworCQkJZXJyID0gLUVJTzsK
KwkJCWJyZWFrOworCQl9CisJfQorCisJaWd0X3NwaW5uZXJfZmluaSgmc3Bpbik7CisKKwlpbnRl
bF9ndF9wbV93YWl0X2Zvcl9pZGxlKGd0KTsKKwlycHMtPndvcmsuZnVuYyA9IHNhdmVkX3dvcms7
CisKKwlyZXR1cm4gZXJyOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3RfcnBzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuaApp
bmRleCBhYmJhNjY0MjA5OTYuLmNhZDUxNWE3ZjBlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3RfcnBzLmgKQEAgLTcsNSArNyw2IEBACiAjZGVmaW5lIFNFTEZURVNUX1JQU19ICiAK
IGludCBsaXZlX3Jwc19pbnRlcnJ1cHQodm9pZCAqYXJnKTsKK2ludCBsaXZlX3Jwc19wb3dlcih2
b2lkICphcmcpOwogCiAjZW5kaWYgLyogU0VMRlRFU1RfUlBTX0ggKi8KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
