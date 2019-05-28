Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12EA2C33F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 11:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378D26E0E1;
	Tue, 28 May 2019 09:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7A7989F06
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 09:30:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16703194-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:30:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 10:29:53 +0100
Message-Id: <20190528092956.14910-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528092956.14910-1-chris@chris-wilson.co.uk>
References: <20190528092956.14910-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 12/15] drm/i915: Move GEM object busy checking to
 its own file
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

Q29udGludWluZyB0aGUgZGVjbHV0dGVyaW5nIG9mIGk5MTVfZ2VtLmMgYnkgbW92aW5nIHRoZSBv
YmplY3QgYnVzeQpjaGVja2luZyBpbnRvIGl0cyBvd24gZmlsZS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMTM4ICsrKysrKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgIHwgMTI4IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxMzkgaW5zZXJ0aW9ucygrKSwgMTI4IGRlbGV0aW9u
cygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9idXN5LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IGE0ZWE2ZjZiMmFiNy4uZTFlZDUyNmI5
NmJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtODgsNiArODgsNyBAQCBpOTE1LXkgKz0gJChn
dC15KQogIyBHRU0gKEdyYXBoaWNzIEV4ZWN1dGlvbiBNYW5hZ2VtZW50KSBjb2RlCiBvYmoteSAr
PSBnZW0vCiBnZW0teSArPSBcCisJZ2VtL2k5MTVfZ2VtX2J1c3kubyBcCiAJZ2VtL2k5MTVfZ2Vt
X2NsZmx1c2gubyBcCiAJZ2VtL2k5MTVfZ2VtX2NvbnRleHQubyBcCiAJZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9i
dXN5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNWE1ZWRhMzAwM2U5Ci0tLSAvZGV2L251
bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwpAQCAtMCww
ICsxLDEzOCBAQAorLyoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBD
b3B5cmlnaHQgwqkgMjAxNC0yMDE2IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUg
Imd0L2ludGVsX2VuZ2luZS5oIgorCisjaW5jbHVkZSAiaTkxNV9nZW1faW9jdGxzLmgiCisjaW5j
bHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCisKK3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdTMyIF9f
YnVzeV9yZWFkX2ZsYWcodTggaWQpCit7CisJaWYgKGlkID09ICh1OClJOTE1X0VOR0lORV9DTEFT
U19JTlZBTElEKQorCQlyZXR1cm4gMHhmZmZmMDAwMHU7CisKKwlHRU1fQlVHX09OKGlkID49IDE2
KTsKKwlyZXR1cm4gMHgxMDAwMHUgPDwgaWQ7Cit9CisKK3N0YXRpYyBfX2Fsd2F5c19pbmxpbmUg
dTMyIF9fYnVzeV93cml0ZV9pZCh1OCBpZCkKK3sKKwkvKgorCSAqIFRoZSB1QUJJIGd1YXJhbnRl
ZXMgYW4gYWN0aXZlIHdyaXRlciBpcyBhbHNvIGFtb25nc3QgdGhlIHJlYWQKKwkgKiBlbmdpbmVz
LiBUaGlzIHdvdWxkIGJlIHRydWUgaWYgd2UgYWNjZXNzZWQgdGhlIGFjdGl2aXR5IHRyYWNraW5n
CisJICogdW5kZXIgdGhlIGxvY2ssIGJ1dCBhcyB3ZSBwZXJmb3JtIHRoZSBsb29rdXAgb2YgdGhl
IG9iamVjdCBhbmQKKwkgKiBpdHMgYWN0aXZpdHkgbG9ja2xlc3NseSB3ZSBjYW4gbm90IGd1YXJh
bnRlZSB0aGF0IHRoZSBsYXN0X3dyaXRlCisJICogYmVpbmcgYWN0aXZlIGltcGxpZXMgdGhhdCB3
ZSBoYXZlIHNldCB0aGUgc2FtZSBlbmdpbmUgZmxhZyBmcm9tCisJICogbGFzdF9yZWFkIC0gaGVu
Y2Ugd2UgYWx3YXlzIHNldCBib3RoIHJlYWQgYW5kIHdyaXRlIGJ1c3kgZm9yCisJICogbGFzdF93
cml0ZS4KKwkgKi8KKwlpZiAoaWQgPT0gKHU4KUk5MTVfRU5HSU5FX0NMQVNTX0lOVkFMSUQpCisJ
CXJldHVybiAweGZmZmZmZmZmdTsKKworCXJldHVybiAoaWQgKyAxKSB8IF9fYnVzeV9yZWFkX2Zs
YWcoaWQpOworfQorCitzdGF0aWMgX19hbHdheXNfaW5saW5lIHVuc2lnbmVkIGludAorX19idXN5
X3NldF9pZl9hY3RpdmUoY29uc3Qgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHUzMiAoKmZsYWcp
KHU4IGlkKSkKK3sKKwljb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKworCS8qCisJICog
V2UgaGF2ZSB0byBjaGVjayB0aGUgY3VycmVudCBodyBzdGF0dXMgb2YgdGhlIGZlbmNlIGFzIHRo
ZSB1QUJJCisJICogZ3VhcmFudGVlcyBmb3J3YXJkIHByb2dyZXNzLiBXZSBjb3VsZCByZWx5IG9u
IHRoZSBpZGxlIHdvcmtlcgorCSAqIHRvIGV2ZW50dWFsbHkgZmx1c2ggdXMsIGJ1dCB0byBtaW5p
bWlzZSBsYXRlbmN5IGp1c3QgYXNrIHRoZQorCSAqIGhhcmR3YXJlLgorCSAqCisJICogTm90ZSB3
ZSBvbmx5IHJlcG9ydCBvbiB0aGUgc3RhdHVzIG9mIG5hdGl2ZSBmZW5jZXMuCisJICovCisJaWYg
KCFkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkpCisJCXJldHVybiAwOworCisJLyogb3BlbmNvZGUg
dG9fcmVxdWVzdCgpIGluIG9yZGVyIHRvIGF2b2lkIGNvbnN0IHdhcm5pbmdzICovCisJcnEgPSBj
b250YWluZXJfb2YoZmVuY2UsIGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QsIGZlbmNlKTsKKwlp
ZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCisJCXJldHVybiAwOworCisJLyogQmV3YXJl
IHR5cGUtZXhwYW5zaW9uIGZvbGxpZXMhICovCisJQlVJTERfQlVHX09OKCF0eXBlY2hlY2sodTgs
IHJxLT5lbmdpbmUtPnVhYmlfY2xhc3MpKTsKKwlyZXR1cm4gZmxhZyhycS0+ZW5naW5lLT51YWJp
X2NsYXNzKTsKK30KKworc3RhdGljIF9fYWx3YXlzX2lubGluZSB1bnNpZ25lZCBpbnQKK2J1c3lf
Y2hlY2tfcmVhZGVyKGNvbnN0IHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQoreworCXJldHVybiBf
X2J1c3lfc2V0X2lmX2FjdGl2ZShmZW5jZSwgX19idXN5X3JlYWRfZmxhZyk7Cit9CisKK3N0YXRp
YyBfX2Fsd2F5c19pbmxpbmUgdW5zaWduZWQgaW50CitidXN5X2NoZWNrX3dyaXRlcihjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKK3sKKwlpZiAoIWZlbmNlKQorCQlyZXR1cm4gMDsKKwor
CXJldHVybiBfX2J1c3lfc2V0X2lmX2FjdGl2ZShmZW5jZSwgX19idXN5X3dyaXRlX2lkKTsKK30K
KworaW50CitpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCisJCSAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCit7CisJc3RydWN0IGRybV9pOTE1
X2dlbV9idXN5ICphcmdzID0gZGF0YTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OworCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdDsKKwl1bnNpZ25lZCBpbnQg
c2VxOworCWludCBlcnI7CisKKwllcnIgPSAtRU5PRU5UOworCXJjdV9yZWFkX2xvY2soKTsKKwlv
YmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwX3JjdShmaWxlLCBhcmdzLT5oYW5kbGUpOworCWlm
ICghb2JqKQorCQlnb3RvIG91dDsKKworCS8qCisJICogQSBkaXNjcmVwYW5jeSBoZXJlIGlzIHRo
YXQgd2UgZG8gbm90IHJlcG9ydCB0aGUgc3RhdHVzIG9mCisJICogbm9uLWk5MTUgZmVuY2VzLCBp
LmUuIGV2ZW4gdGhvdWdoIHdlIG1heSByZXBvcnQgdGhlIG9iamVjdCBhcyBpZGxlLAorCSAqIGEg
Y2FsbCB0byBzZXQtZG9tYWluIG1heSBzdGlsbCBzdGFsbCB3YWl0aW5nIGZvciBmb3JlaWduIHJl
bmRlcmluZy4KKwkgKiBUaGlzIGFsc28gbWVhbnMgdGhhdCB3YWl0LWlvY3RsIG1heSByZXBvcnQg
YW4gb2JqZWN0IGFzIGJ1c3ksCisJICogd2hlcmUgYnVzeS1pb2N0bCBjb25zaWRlcnMgaXQgaWRs
ZS4KKwkgKgorCSAqIFdlIHRyYWRlIHRoZSBhYmlsaXR5IHRvIHdhcm4gb2YgZm9yZWlnbiBmZW5j
ZXMgdG8gcmVwb3J0IG9uIHdoaWNoCisJICogaTkxNSBlbmdpbmVzIGFyZSBhY3RpdmUgZm9yIHRo
ZSBvYmplY3QuCisJICoKKwkgKiBBbHRlcm5hdGl2ZWx5LCB3ZSBjYW4gdHJhZGUgdGhhdCBleHRy
YSBpbmZvcm1hdGlvbiBvbiByZWFkL3dyaXRlCisJICogYWN0aXZpdHkgd2l0aAorCSAqCWFyZ3Mt
PmJ1c3kgPQorCSAqCQkhcmVzZXJ2YXRpb25fb2JqZWN0X3Rlc3Rfc2lnbmFsZWRfcmN1KG9iai0+
cmVzdiwgdHJ1ZSk7CisJICogdG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1c3luZXNzLiBUaGlzIGlz
IHdoYXQgdGhlIHdhaXQtaW9jdGwgZG9lcy4KKwkgKgorCSAqLworcmV0cnk6CisJc2VxID0gcmF3
X3JlYWRfc2VxY291bnQoJm9iai0+cmVzdi0+c2VxKTsKKworCS8qIFRyYW5zbGF0ZSB0aGUgZXhj
bHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAqLworCWFyZ3MtPmJ1
c3kgPSBidXN5X2NoZWNrX3dyaXRlcihyY3VfZGVyZWZlcmVuY2Uob2JqLT5yZXN2LT5mZW5jZV9l
eGNsKSk7CisKKwkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdp
bmVzICovCisJbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPnJlc3YtPmZlbmNlKTsKKwlpZiAo
bGlzdCkgeworCQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50ID0gbGlzdC0+c2hhcmVkX2NvdW50
LCBpOworCisJCWZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgeworCQkJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UgPQorCQkJCXJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0p
OworCisJCQlhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKKwkJfQorCX0K
KworCWlmIChhcmdzLT5idXN5ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+cmVzdi0+c2Vx
LCBzZXEpKQorCQlnb3RvIHJldHJ5OworCisJZXJyID0gMDsKK291dDoKKwlyY3VfcmVhZF91bmxv
Y2soKTsKKwlyZXR1cm4gZXJyOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggYTQ2MDU2
M2U0YmI1Li42YWY0NDg3MzYwMzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTE0Miwx
MzQgKzExNDIsNiBAQCBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKIAlyZXR1cm4gdm1hOwogfQogCi1zdGF0aWMgX19hbHdheXNfaW5saW5l
IHUzMiBfX2J1c3lfcmVhZF9mbGFnKHU4IGlkKQotewotCWlmIChpZCA9PSAodTgpSTkxNV9FTkdJ
TkVfQ0xBU1NfSU5WQUxJRCkKLQkJcmV0dXJuIDB4ZmZmZjAwMDB1OwotCi0JR0VNX0JVR19PTihp
ZCA+PSAxNik7Ci0JcmV0dXJuIDB4MTAwMDB1IDw8IGlkOwotfQotCi1zdGF0aWMgX19hbHdheXNf
aW5saW5lIHUzMiBfX2J1c3lfd3JpdGVfaWQodTggaWQpCi17Ci0JLyoKLQkgKiBUaGUgdUFCSSBn
dWFyYW50ZWVzIGFuIGFjdGl2ZSB3cml0ZXIgaXMgYWxzbyBhbW9uZ3N0IHRoZSByZWFkCi0JICog
ZW5naW5lcy4gVGhpcyB3b3VsZCBiZSB0cnVlIGlmIHdlIGFjY2Vzc2VkIHRoZSBhY3Rpdml0eSB0
cmFja2luZwotCSAqIHVuZGVyIHRoZSBsb2NrLCBidXQgYXMgd2UgcGVyZm9ybSB0aGUgbG9va3Vw
IG9mIHRoZSBvYmplY3QgYW5kCi0JICogaXRzIGFjdGl2aXR5IGxvY2tsZXNzbHkgd2UgY2FuIG5v
dCBndWFyYW50ZWUgdGhhdCB0aGUgbGFzdF93cml0ZQotCSAqIGJlaW5nIGFjdGl2ZSBpbXBsaWVz
IHRoYXQgd2UgaGF2ZSBzZXQgdGhlIHNhbWUgZW5naW5lIGZsYWcgZnJvbQotCSAqIGxhc3RfcmVh
ZCAtIGhlbmNlIHdlIGFsd2F5cyBzZXQgYm90aCByZWFkIGFuZCB3cml0ZSBidXN5IGZvcgotCSAq
IGxhc3Rfd3JpdGUuCi0JICovCi0JaWYgKGlkID09ICh1OClJOTE1X0VOR0lORV9DTEFTU19JTlZB
TElEKQotCQlyZXR1cm4gMHhmZmZmZmZmZnU7Ci0KLQlyZXR1cm4gKGlkICsgMSkgfCBfX2J1c3lf
cmVhZF9mbGFnKGlkKTsKLX0KLQotc3RhdGljIF9fYWx3YXlzX2lubGluZSB1bnNpZ25lZCBpbnQK
LV9fYnVzeV9zZXRfaWZfYWN0aXZlKGNvbnN0IHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1MzIg
KCpmbGFnKSh1OCBpZCkpCi17Ci0JY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Ci0KLQkv
KgotCSAqIFdlIGhhdmUgdG8gY2hlY2sgdGhlIGN1cnJlbnQgaHcgc3RhdHVzIG9mIHRoZSBmZW5j
ZSBhcyB0aGUgdUFCSQotCSAqIGd1YXJhbnRlZXMgZm9yd2FyZCBwcm9ncmVzcy4gV2UgY291bGQg
cmVseSBvbiB0aGUgaWRsZSB3b3JrZXIKLQkgKiB0byBldmVudHVhbGx5IGZsdXNoIHVzLCBidXQg
dG8gbWluaW1pc2UgbGF0ZW5jeSBqdXN0IGFzayB0aGUKLQkgKiBoYXJkd2FyZS4KLQkgKgotCSAq
IE5vdGUgd2Ugb25seSByZXBvcnQgb24gdGhlIHN0YXR1cyBvZiBuYXRpdmUgZmVuY2VzLgotCSAq
LwotCWlmICghZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpKQotCQlyZXR1cm4gMDsKLQotCS8qIG9w
ZW5jb2RlIHRvX3JlcXVlc3QoKSBpbiBvcmRlciB0byBhdm9pZCBjb25zdCB3YXJuaW5ncyAqLwot
CXJxID0gY29udGFpbmVyX29mKGZlbmNlLCBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0LCBmZW5j
ZSk7Ci0JaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKQotCQlyZXR1cm4gMDsKLQotCS8q
IEJld2FyZSB0eXBlLWV4cGFuc2lvbiBmb2xsaWVzISAqLwotCUJVSUxEX0JVR19PTighdHlwZWNo
ZWNrKHU4LCBycS0+ZW5naW5lLT51YWJpX2NsYXNzKSk7Ci0JcmV0dXJuIGZsYWcocnEtPmVuZ2lu
ZS0+dWFiaV9jbGFzcyk7Ci19Ci0KLXN0YXRpYyBfX2Fsd2F5c19pbmxpbmUgdW5zaWduZWQgaW50
Ci1idXN5X2NoZWNrX3JlYWRlcihjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKLXsKLQly
ZXR1cm4gX19idXN5X3NldF9pZl9hY3RpdmUoZmVuY2UsIF9fYnVzeV9yZWFkX2ZsYWcpOwotfQot
Ci1zdGF0aWMgX19hbHdheXNfaW5saW5lIHVuc2lnbmVkIGludAotYnVzeV9jaGVja193cml0ZXIo
Y29uc3Qgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCi17Ci0JaWYgKCFmZW5jZSkKLQkJcmV0dXJu
IDA7Ci0KLQlyZXR1cm4gX19idXN5X3NldF9pZl9hY3RpdmUoZmVuY2UsIF9fYnVzeV93cml0ZV9p
ZCk7Ci19Ci0KLWludAotaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAotCQkgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQotewotCXN0cnVjdCBk
cm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKLQlzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgKmxpc3Q7Ci0JdW5zaWdu
ZWQgaW50IHNlcTsKLQlpbnQgZXJyOwotCi0JZXJyID0gLUVOT0VOVDsKLQlyY3VfcmVhZF9sb2Nr
KCk7Ci0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cF9yY3UoZmlsZSwgYXJncy0+aGFuZGxl
KTsKLQlpZiAoIW9iaikKLQkJZ290byBvdXQ7Ci0KLQkvKgotCSAqIEEgZGlzY3JlcGFuY3kgaGVy
ZSBpcyB0aGF0IHdlIGRvIG5vdCByZXBvcnQgdGhlIHN0YXR1cyBvZgotCSAqIG5vbi1pOTE1IGZl
bmNlcywgaS5lLiBldmVuIHRob3VnaCB3ZSBtYXkgcmVwb3J0IHRoZSBvYmplY3QgYXMgaWRsZSwK
LQkgKiBhIGNhbGwgdG8gc2V0LWRvbWFpbiBtYXkgc3RpbGwgc3RhbGwgd2FpdGluZyBmb3IgZm9y
ZWlnbiByZW5kZXJpbmcuCi0JICogVGhpcyBhbHNvIG1lYW5zIHRoYXQgd2FpdC1pb2N0bCBtYXkg
cmVwb3J0IGFuIG9iamVjdCBhcyBidXN5LAotCSAqIHdoZXJlIGJ1c3ktaW9jdGwgY29uc2lkZXJz
IGl0IGlkbGUuCi0JICoKLQkgKiBXZSB0cmFkZSB0aGUgYWJpbGl0eSB0byB3YXJuIG9mIGZvcmVp
Z24gZmVuY2VzIHRvIHJlcG9ydCBvbiB3aGljaAotCSAqIGk5MTUgZW5naW5lcyBhcmUgYWN0aXZl
IGZvciB0aGUgb2JqZWN0LgotCSAqCi0JICogQWx0ZXJuYXRpdmVseSwgd2UgY2FuIHRyYWRlIHRo
YXQgZXh0cmEgaW5mb3JtYXRpb24gb24gcmVhZC93cml0ZQotCSAqIGFjdGl2aXR5IHdpdGgKLQkg
KglhcmdzLT5idXN5ID0KLQkgKgkJIXJlc2VydmF0aW9uX29iamVjdF90ZXN0X3NpZ25hbGVkX3Jj
dShvYmotPnJlc3YsIHRydWUpOwotCSAqIHRvIHJlcG9ydCB0aGUgb3ZlcmFsbCBidXN5bmVzcy4g
VGhpcyBpcyB3aGF0IHRoZSB3YWl0LWlvY3RsIGRvZXMuCi0JICoKLQkgKi8KLXJldHJ5OgotCXNl
cSA9IHJhd19yZWFkX3NlcWNvdW50KCZvYmotPnJlc3YtPnNlcSk7Ci0KLQkvKiBUcmFuc2xhdGUg
dGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdpbmUgKi8KLQlh
cmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIocmN1X2RlcmVmZXJlbmNlKG9iai0+cmVzdi0+
ZmVuY2VfZXhjbCkpOwotCi0JLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQg
b2YgZW5naW5lcyAqLwotCWxpc3QgPSByY3VfZGVyZWZlcmVuY2Uob2JqLT5yZXN2LT5mZW5jZSk7
Ci0JaWYgKGxpc3QpIHsKLQkJdW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJl
ZF9jb3VudCwgaTsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKLQkJ
CXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KLQkJCQlyY3VfZGVyZWZlcmVuY2UobGlzdC0+c2hh
cmVkW2ldKTsKLQotCQkJYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3JlYWRlcihmZW5jZSk7Ci0J
CX0KLQl9Ci0KLQlpZiAoYXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnJl
c3YtPnNlcSwgc2VxKSkKLQkJZ290byByZXRyeTsKLQotCWVyciA9IDA7Ci1vdXQ6Ci0JcmN1X3Jl
YWRfdW5sb2NrKCk7Ci0JcmV0dXJuIGVycjsKLX0KLQogaW50CiBpOTE1X2dlbV90aHJvdHRsZV9p
b2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQkJc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXYpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
