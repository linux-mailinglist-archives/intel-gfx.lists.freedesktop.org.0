Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B64E87A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 15:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08316E863;
	Fri, 21 Jun 2019 13:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1196E863
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 13:06:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16979305-1500050 
 for multiple; Fri, 21 Jun 2019 14:05:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 14:05:41 +0100
Message-Id: <20190621130544.24226-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621130544.24226-1-chris@chris-wilson.co.uk>
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Track i915_active using
 debugobjects
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJvdmlkZSBydW50aW1lIGFzc2VydHMgYW5kIHRyYWNraW5nIG9mIGk5MTVfYWN0aXZlIHZpYSBk
ZWJ1Z29iamVjdHMuCkZvciBleGFtcGxlLCB0aGlzIHNob3VsZCBhbGxvdyB1cyB0byBjaGVjayB0
aGF0IHRoZSBpOTE1X2FjdGl2ZSBpcyBvbmx5CmFjdGl2ZSB3aGVuIHdlIGV4cGVjdCBpdCB0byBi
ZSBhbmQgaXMgbmV2ZXIgZnJlZWQgdG9vIGVhcmx5LgoKT25lIGNvbnNlcXVlbmNlIGlzIHRoYXQs
IGZvciBzaW1wbGljaXR5LCB3ZSBubyBsb25nZXIgYWxsb3cgaTkxNV9hY3RpdmUKdG8gYmUgb24t
c3RhY2sgd2hpY2ggb25seSBhZmZlY3RlZCB0aGUgc2VsZnRlc3RzLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyAgICAgICAgICAgfCA2NiArKysrKysrKysrKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMgfCA3OCArKysrKysr
KysrKysrKystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMjMgaW5zZXJ0aW9ucygrKSwgMjEgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggMjkzZTViY2M0YjZj
Li5lYjkxYTYyNWM3MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtNCw2ICs0
LDggQEAKICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2lu
Y2x1ZGUgPGxpbnV4L2RlYnVnb2JqZWN0cy5oPgorCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5l
X3BtLmgiCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgpAQCAtMzEsNiArMzMsNTUgQEAgc3RydWN0
IGFjdGl2ZV9ub2RlIHsKIAl1NjQgdGltZWxpbmU7CiB9OwogCisjaWYgSVNfRU5BQkxFRChDT05G
SUdfRFJNX0k5MTVfREVCVUdfR0VNKSAmJiBJU19FTkFCTEVEKENPTkZJR19ERUJVR19PQkpFQ1RT
KQorCitzdGF0aWMgdm9pZCAqYWN0aXZlX2RlYnVnX2hpbnQodm9pZCAqYWRkcikKK3sKKwlzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZiA9IGFkZHI7CisKKwlyZXR1cm4gKHZvaWQgKilyZWYtPnJldGly
ZSA/OiAodm9pZCAqKXJlZjsKK30KKworc3RhdGljIHN0cnVjdCBkZWJ1Z19vYmpfZGVzY3IgYWN0
aXZlX2RlYnVnX2Rlc2MgPSB7CisJLm5hbWUgPSAiaTkxNV9hY3RpdmUiLAorCS5kZWJ1Z19oaW50
ID0gYWN0aXZlX2RlYnVnX2hpbnQsCit9OworCitzdGF0aWMgdm9pZCBkZWJ1Z19hY3RpdmVfaW5p
dChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKK3sKKwlkZWJ1Z19vYmplY3RfaW5pdChyZWYsICZh
Y3RpdmVfZGVidWdfZGVzYyk7Cit9CisKK3N0YXRpYyB2b2lkIGRlYnVnX2FjdGl2ZV9hY3RpdmF0
ZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKK3sKKwlkZWJ1Z19vYmplY3RfYWN0aXZhdGUocmVm
LCAmYWN0aXZlX2RlYnVnX2Rlc2MpOworfQorCitzdGF0aWMgdm9pZCBkZWJ1Z19hY3RpdmVfZGVh
Y3RpdmF0ZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKK3sKKwlkZWJ1Z19vYmplY3RfZGVhY3Rp
dmF0ZShyZWYsICZhY3RpdmVfZGVidWdfZGVzYyk7Cit9CisKK3N0YXRpYyB2b2lkIGRlYnVnX2Fj
dGl2ZV9maW5pKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQoreworCWRlYnVnX29iamVjdF9mcmVl
KHJlZiwgJmFjdGl2ZV9kZWJ1Z19kZXNjKTsKK30KKworc3RhdGljIHZvaWQgZGVidWdfYWN0aXZl
X2Fzc2VydChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKK3sKKwlkZWJ1Z19vYmplY3RfYXNzZXJ0
X2luaXQocmVmLCAmYWN0aXZlX2RlYnVnX2Rlc2MpOworfQorCisjZWxzZQorCitzdGF0aWMgaW5s
aW5lIHZvaWQgZGVidWdfYWN0aXZlX2luaXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpIHsgfQor
c3RhdGljIGlubGluZSB2b2lkIGRlYnVnX2FjdGl2ZV9hY3RpdmF0ZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZikgeyB9CitzdGF0aWMgaW5saW5lIHZvaWQgZGVidWdfYWN0aXZlX2RlYWN0aXZhdGUo
c3RydWN0IGk5MTVfYWN0aXZlICpyZWYpIHsgfQorc3RhdGljIGlubGluZSB2b2lkIGRlYnVnX2Fj
dGl2ZV9maW5pKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKSB7IH0KK3N0YXRpYyBpbmxpbmUgdm9p
ZCBkZWJ1Z19hY3RpdmVfYXNzZXJ0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKSB7IH0KKworI2Vu
ZGlmCisKIHN0YXRpYyB2b2lkCiBfX2FjdGl2ZV9wYXJrKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
KQogewpAQCAtNTAsNiArMTAxLDggQEAgX19hY3RpdmVfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmKQogCWlmICgtLXJlZi0+Y291bnQpCiAJCXJldHVybjsKIAorCWRlYnVnX2FjdGl2ZV9k
ZWFjdGl2YXRlKHJlZik7CisKIAkvKiByZXR1cm4gdGhlIHVudXNlZCBub2RlcyB0byBvdXIgc2xh
YmNhY2hlICovCiAJX19hY3RpdmVfcGFyayhyZWYpOwogCkBAIC0xNTUsNiArMjA4LDggQEAgdm9p
ZCBpOTE1X2FjdGl2ZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkgICAg
ICBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKIAkJICAgICAgdm9pZCAoKnJldGlyZSkoc3RydWN0
IGk5MTVfYWN0aXZlICpyZWYpKQogeworCWRlYnVnX2FjdGl2ZV9pbml0KHJlZik7CisKIAlyZWYt
Pmk5MTUgPSBpOTE1OwogCXJlZi0+cmV0aXJlID0gcmV0aXJlOwogCXJlZi0+dHJlZSA9IFJCX1JP
T1Q7CkBAIC0xOTEsMTMgKzI0NiwyMSBAQCBpbnQgaTkxNV9hY3RpdmVfcmVmKHN0cnVjdCBpOTE1
X2FjdGl2ZSAqcmVmLAogCiBib29sIGk5MTVfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGk5MTVfYWN0
aXZlICpyZWYpCiB7CisJZGVidWdfYWN0aXZlX2Fzc2VydChyZWYpOwogCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoQktMKHJlZikpOwotCXJldHVybiAhcmVmLT5jb3VudCsrOworCisJaWYgKHJlZi0+Y291
bnQrKykKKwkJcmV0dXJuIGZhbHNlOworCisJZGVidWdfYWN0aXZlX2FjdGl2YXRlKHJlZik7CisJ
cmV0dXJuIHRydWU7CiB9CiAKIHZvaWQgaTkxNV9hY3RpdmVfcmVsZWFzZShzdHJ1Y3QgaTkxNV9h
Y3RpdmUgKnJlZikKIHsKKwlkZWJ1Z19hY3RpdmVfYXNzZXJ0KHJlZik7CiAJbG9ja2RlcF9hc3Nl
cnRfaGVsZChCS0wocmVmKSk7CisKIAlfX2FjdGl2ZV9yZXRpcmUocmVmKTsKIH0KIApAQCAtMjYw
LDYgKzMyMyw3IEBAIGludCBpOTE1X3JlcXVlc3RfYXdhaXRfYWN0aXZlKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKICNpZiBJU19FTkFCTEVEKENPTkZJ
R19EUk1fSTkxNV9ERUJVR19HRU0pCiB2b2lkIGk5MTVfYWN0aXZlX2Zpbmkoc3RydWN0IGk5MTVf
YWN0aXZlICpyZWYpCiB7CisJZGVidWdfYWN0aXZlX2ZpbmkocmVmKTsKIAlHRU1fQlVHX09OKGk5
MTVfYWN0aXZlX3JlcXVlc3RfaXNzZXQoJnJlZi0+bGFzdCkpOwogCUdFTV9CVUdfT04oIVJCX0VN
UFRZX1JPT1QoJnJlZi0+dHJlZSkpOwogCUdFTV9CVUdfT04ocmVmLT5jb3VudCk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jCmluZGV4IGMwYjM1MzdhNWZh
Ni4uOTg0OTNiY2M5MWYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9hY3RpdmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9hY3RpdmUuYwpAQCAtMTYsMjggKzE2LDUxIEBAIHN0cnVjdCBsaXZlX2FjdGl2ZSB7CiAJYm9v
bCByZXRpcmVkOwogfTsKIAotc3RhdGljIHZvaWQgX19saXZlX2FjdGl2ZV9yZXRpcmUoc3RydWN0
IGk5MTVfYWN0aXZlICpiYXNlKQorc3RhdGljIHZvaWQgX19saXZlX2ZyZWUoc3RydWN0IGxpdmVf
YWN0aXZlICphY3RpdmUpCit7CisJaTkxNV9hY3RpdmVfZmluaSgmYWN0aXZlLT5iYXNlKTsKKwlr
ZnJlZShhY3RpdmUpOworfQorCitzdGF0aWMgdm9pZCBfX2xpdmVfcmV0aXJlKHN0cnVjdCBpOTE1
X2FjdGl2ZSAqYmFzZSkKIHsKIAlzdHJ1Y3QgbGl2ZV9hY3RpdmUgKmFjdGl2ZSA9IGNvbnRhaW5l
cl9vZihiYXNlLCB0eXBlb2YoKmFjdGl2ZSksIGJhc2UpOwogCiAJYWN0aXZlLT5yZXRpcmVkID0g
dHJ1ZTsKIH0KIAotc3RhdGljIGludCBfX2xpdmVfYWN0aXZlX3NldHVwKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAotCQkJICAgICAgIHN0cnVjdCBsaXZlX2FjdGl2ZSAqYWN0aXZlKQor
c3RhdGljIHN0cnVjdCBsaXZlX2FjdGl2ZSAqX19saXZlX2FsbG9jKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQoreworCXN0cnVjdCBsaXZlX2FjdGl2ZSAqYWN0aXZlOworCisJYWN0aXZl
ID0ga3phbGxvYyhzaXplb2YoKmFjdGl2ZSksIEdGUF9LRVJORUwpOworCWlmICghYWN0aXZlKQor
CQlyZXR1cm4gTlVMTDsKKworCWk5MTVfYWN0aXZlX2luaXQoaTkxNSwgJmFjdGl2ZS0+YmFzZSwg
X19saXZlX3JldGlyZSk7CisKKwlyZXR1cm4gYWN0aXZlOworfQorCitzdGF0aWMgc3RydWN0IGxp
dmVfYWN0aXZlICoKK19fbGl2ZV9hY3RpdmVfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1
X3N3X2ZlbmNlICpzdWJtaXQ7CisJc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmU7CiAJZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7CiAJdW5zaWduZWQgaW50IGNvdW50ID0gMDsKIAlpbnQgZXJyID0g
MDsKIAotCXN1Ym1pdCA9IGhlYXBfZmVuY2VfY3JlYXRlKEdGUF9LRVJORUwpOwotCWlmICghc3Vi
bWl0KQotCQlyZXR1cm4gLUVOT01FTTsKKwlhY3RpdmUgPSBfX2xpdmVfYWxsb2MoaTkxNSk7CisJ
aWYgKCFhY3RpdmUpCisJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCi0JaTkxNV9hY3RpdmVf
aW5pdChpOTE1LCAmYWN0aXZlLT5iYXNlLCBfX2xpdmVfYWN0aXZlX3JldGlyZSk7Ci0JYWN0aXZl
LT5yZXRpcmVkID0gZmFsc2U7CisJc3VibWl0ID0gaGVhcF9mZW5jZV9jcmVhdGUoR0ZQX0tFUk5F
TCk7CisJaWYgKCFzdWJtaXQpIHsKKwkJa2ZyZWUoYWN0aXZlKTsKKwkJcmV0dXJuIEVSUl9QVFIo
LUVOT01FTSk7CisJfQogCiAJaWYgKCFpOTE1X2FjdGl2ZV9hY3F1aXJlKCZhY3RpdmUtPmJhc2Up
KSB7CiAJCXByX2VycigiRmlyc3QgaTkxNV9hY3RpdmVfYWNxdWlyZSBzaG91bGQgcmVwb3J0IGJl
aW5nIGlkbGVcbiIpOwpAQCAtODQsNjQgKzEwNyw3OSBAQCBzdGF0aWMgaW50IF9fbGl2ZV9hY3Rp
dmVfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJaTkxNV9zd19mZW5jZV9j
b21taXQoc3VibWl0KTsKIAloZWFwX2ZlbmNlX3B1dChzdWJtaXQpOwogCi0JcmV0dXJuIGVycjsK
KwkvKiBYWFggbGVha3MgbGl2ZV9hY3RpdmUgb24gZXJyb3IgKi8KKwlyZXR1cm4gZXJyID8gRVJS
X1BUUihlcnIpIDogYWN0aXZlOwogfQogCiBzdGF0aWMgaW50IGxpdmVfYWN0aXZlX3dhaXQodm9p
ZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwotCXN0cnVj
dCBsaXZlX2FjdGl2ZSBhY3RpdmU7CisJc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmU7CiAJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7Ci0JaW50IGVycjsKKwlpbnQgZXJyID0gMDsKIAogCS8qIENo
ZWNrIHRoYXQgd2UgZ2V0IGEgY2FsbGJhY2sgd2hlbiByZXF1ZXN0cyByZXRpcmUgdXBvbiB3YWl0
aW5nICovCiAKIAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAl3YWtlcmVm
ID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCi0JZXJyID0gX19s
aXZlX2FjdGl2ZV9zZXR1cChpOTE1LCAmYWN0aXZlKTsKKwlhY3RpdmUgPSBfX2xpdmVfYWN0aXZl
X3NldHVwKGk5MTUpOworCWlmIChJU19FUlIoYWN0aXZlKSkgeworCQllcnIgPSBQVFJfRVJSKGFj
dGl2ZSk7CisJCWdvdG8gZXJyOworCX0KIAotCWk5MTVfYWN0aXZlX3dhaXQoJmFjdGl2ZS5iYXNl
KTsKLQlpZiAoIWFjdGl2ZS5yZXRpcmVkKSB7CisJaTkxNV9hY3RpdmVfd2FpdCgmYWN0aXZlLT5i
YXNlKTsKKwlpZiAoIWFjdGl2ZS0+cmV0aXJlZCkgewogCQlwcl9lcnIoImk5MTVfYWN0aXZlIG5v
dCByZXRpcmVkIGFmdGVyIHdhaXRpbmchXG4iKTsKIAkJZXJyID0gLUVJTlZBTDsKIAl9CiAKLQlp
OTE1X2FjdGl2ZV9maW5pKCZhY3RpdmUuYmFzZSk7CisJX19saXZlX2ZyZWUoYWN0aXZlKTsKKwog
CWlmIChpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKSkKIAkJZXJyID0gLUVJ
TzsKIAorZXJyOgogCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtl
cmVmKTsKIAltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCiAJcmV0dXJu
IGVycjsKIH0KIAogc3RhdGljIGludCBsaXZlX2FjdGl2ZV9yZXRpcmUodm9pZCAqYXJnKQogewog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwotCXN0cnVjdCBsaXZlX2FjdGl2
ZSBhY3RpdmU7CisJc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmU7CiAJaW50ZWxfd2FrZXJlZl90
IHdha2VyZWY7Ci0JaW50IGVycjsKKwlpbnQgZXJyID0gMDsKIAogCS8qIENoZWNrIHRoYXQgd2Ug
Z2V0IGEgY2FsbGJhY2sgd2hlbiByZXF1ZXN0cyBhcmUgaW5kaXJlY3RseSByZXRpcmVkICovCiAK
IAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAl3YWtlcmVmID0gaW50ZWxf
cnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCi0JZXJyID0gX19saXZlX2FjdGl2
ZV9zZXR1cChpOTE1LCAmYWN0aXZlKTsKKwlhY3RpdmUgPSBfX2xpdmVfYWN0aXZlX3NldHVwKGk5
MTUpOworCWlmIChJU19FUlIoYWN0aXZlKSkgeworCQllcnIgPSBQVFJfRVJSKGFjdGl2ZSk7CisJ
CWdvdG8gZXJyOworCX0KIAogCS8qIHdhaXRzIGZvciAmIHJldGlyZXMgYWxsIHJlcXVlc3RzICov
CiAJaWYgKGlndF9mbHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9MT0NLRUQpKQogCQllcnIgPSAt
RUlPOwogCi0JaWYgKCFhY3RpdmUucmV0aXJlZCkgeworCWlmICghYWN0aXZlLT5yZXRpcmVkKSB7
CiAJCXByX2VycigiaTkxNV9hY3RpdmUgbm90IHJldGlyZWQgYWZ0ZXIgZmx1c2hpbmchXG4iKTsK
IAkJZXJyID0gLUVJTlZBTDsKIAl9CiAKLQlpOTE1X2FjdGl2ZV9maW5pKCZhY3RpdmUuYmFzZSk7
CisJX19saXZlX2ZyZWUoYWN0aXZlKTsKKworZXJyOgogCWludGVsX3J1bnRpbWVfcG1fcHV0KCZp
OTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIAltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOworCiAJcmV0dXJuIGVycjsKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
