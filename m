Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40772C871F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 125A56E944;
	Wed,  2 Oct 2019 11:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD0D6E943
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:20:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692027-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:42 +0100
Message-Id: <20191002112000.12280-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/30] drm/i915: Merge wait_for_timelines with
 retire_request
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

d2FpdF9mb3JfdGltZWxpbmVzIGlzIGVzc2VudGlhbGx5IHRoZSBzYW1lIGxvb3AgYXMgcmV0aXJp
bmcgcmVxdWVzdHMKKHdpdGggYW4gZXh0cmEgdGltZW91dCksIHNvIG1lcmdlIHRoZSB0d28gaW50
byBvbmUgcm91dGluZS4KCnYyOiBpOTE1X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0IGFuZCBrZWVw
IFZUJ2Qgdy9hIGFzICFpbnRlcnJ1cHRpYmxlCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYyAgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wbS5jICAgICAgICB8ICA0ICstCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb250ZXh0LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
cG0uYyAgICAgICAgIHwgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
ICAgICAgICAgICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAg
ICAgICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAg
ICAgICAgIHwgNjcgKystLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZXZpY3QuYyAgICAgICAgIHwgMTIgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMgICAgICAgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jICAgICAgICAgICB8IDI2ICsrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5oICAgICAgICAgICB8ICA3ICstCiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pZ3RfZmx1c2hfdGVzdC5jICAgfCAgNCArLQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aWd0X2xpdmVfdGVzdC5jICAgIHwgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfZ2VtX2RldmljZS5jICB8ICAyICstCiAxNCBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25z
KCspLCA5NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYwppbmRleCBjMTk0MzFkNjA5ZmMuLjQxOGQwZDJiNWZhOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC00MzIsOSArNDMyLDcgQEAgc3RhdGljIGludCBj
cmVhdGVfbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAogCS8q
IEF0dGVtcHQgdG8gcmVhcCBzb21lIG1tYXAgc3BhY2UgZnJvbSBkZWFkIG9iamVjdHMgKi8KIAlk
byB7Ci0JCWVyciA9IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoaTkxNSwKLQkJCQkJICAgICBJOTE1
X1dBSVRfSU5URVJSVVBUSUJMRSwKLQkJCQkJICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CisJ
CWVyciA9IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQp
OwogCQlpZiAoZXJyKQogCQkJYnJlYWs7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BtLmMKaW5kZXggMjZmMzI1YmJmZTRkLi45MGIyMTEyNTdmMmQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC01OSw5ICs1OSw3IEBAIHN0YXRpYyBib29sIHN3aXRj
aF90b19rZXJuZWxfY29udGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJYm9vbCBy
ZXN1bHQgPSAhaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KTsKIAotCWlmIChpOTE1X2dlbV93YWl0X2Zv
cl9pZGxlKGd0LT5pOTE1LAotCQkJCSAgIEk5MTVfV0FJVF9GT1JfSURMRV9CT09TVCwKLQkJCQkg
ICBJOTE1X0dFTV9JRExFX1RJTUVPVVQpID09IC1FVElNRSkgeworCWlmIChpOTE1X2dlbV93YWl0
X2Zvcl9pZGxlKGd0LT5pOTE1LCBJOTE1X0dFTV9JRExFX1RJTUVPVVQpID09IC1FVElNRSkgewog
CQkvKiBYWFggaGlkZSB3YXJuaW5nIGZyb20gZ2VtX2VpbyAqLwogCQlpZiAoaTkxNV9tb2RwYXJh
bXMucmVzZXQpIHsKIAkJCWRldl9lcnIoZ3QtPmk5MTUtPmRybS5kZXYsCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4
IGY1NDAyYWFkOWI1YS4uZjkwMmFlZWUxNzU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMTEzNyw3ICsxMTM3
LDcgQEAgX19zc2V1X2ZpbmlzaChjb25zdCBjaGFyICpuYW1lLAogCiAJaWYgKChmbGFncyAmIFRF
U1RfSURMRSkgJiYgcmV0ID09IDApIHsKIAkJcmV0ID0gaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShj
ZS0+ZW5naW5lLT5pOTE1LAotCQkJCQkgICAgIDAsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKKwkJ
CQkJICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRleCBkNGNlZmRkMzg0MzEu
LmJkYjM0ZjAzZWM0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0x
OTYsOCArMTk2LDcgQEAgaW50IGludGVsX2d0X3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQog
CiBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9pZGxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0JaWYg
KGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoZ3QtPmk5MTUsIDAsCi0JCQkJICAgSTkxNV9HRU1fSURM
RV9USU1FT1VUKSA9PSAtRVRJTUUpIHsKKwlpZiAoaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShndC0+
aTkxNSwgSTkxNV9HRU1fSURMRV9USU1FT1VUKSA9PSAtRVRJTUUpIHsKIAkJLyoKIAkJICogRm9y
Y2libHkgY2FuY2VsIG91dHN0YW5kaW5nIHdvcmsgYW5kIGxlYXZlCiAJCSAqIHRoZSBncHUgcXVp
ZXQuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDdjNGJiYTIxYWRjZC4uNTg4
OGE2NThlMmI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMzYzNSw5ICsz
NjM1LDcgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkKIAkJaTkx
NV9yZXRpcmVfcmVxdWVzdHMoaTkxNSk7CiAKIAlpZiAodmFsICYgKERST1BfSURMRSB8IERST1Bf
QUNUSVZFKSkgewotCQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5MTUsCi0JCQkJCSAg
ICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCi0JCQkJCSAgICAgTUFYX1NDSEVEVUxFX1RJTUVP
VVQpOworCQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5MTUsIE1BWF9TQ0hFRFVMRV9U
SU1FT1VUKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAJfQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKaW5kZXggYWQzMTg1MmU0MzA5Li40NGYzNDYzZmY5ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaApAQCAtMjMyMSw4ICsyMzIxLDcgQEAgdm9pZCBpOTE1X2dlbV9kcml2ZXJfcmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpOTE1X2dlbV9kcml2ZXJf
dW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiB2b2lkIGk5MTVfZ2Vt
X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQg
aTkxNV9nZW1fZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKLWludCBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKLQkJCSAgIHVuc2lnbmVkIGludCBmbGFncywgbG9uZyB0aW1lb3V0KTsKK2ludCBp
OTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
bG9uZyB0aW1lb3V0KTsKIHZvaWQgaTkxNV9nZW1fc3VzcGVuZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dlbV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaTkxNV9nZW1fcmVzdW1lKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBlNGM1
NTNkOWFhMDcuLjdjODJmYzM5ZjY1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC04ODMs
NjEgKzg4Myw3IEBAIHZvaWQgaTkxNV9nZW1fcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCX0KIH0KIAotc3RhdGljIGxvbmcKLXdhaXRfZm9yX3RpbWVsaW5l
cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgd2FpdCwgbG9uZyB0aW1lb3V0KQot
ewotCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZndC0+dGltZWxpbmVz
OwotCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Ci0JdW5zaWduZWQgbG9uZyBmbGFnczsKLQot
CXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKLQlsaXN0X2Zvcl9l
YWNoX2VudHJ5KHRsLCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwgbGluaykgewotCQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZTsKLQotCQlmZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgmdGwt
Pmxhc3RfcmVxdWVzdCk7Ci0JCWlmICghZmVuY2UpCi0JCQljb250aW51ZTsKLQotCQlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsKLQotCQlpZiAoIWRtYV9m
ZW5jZV9pc19pOTE1KGZlbmNlKSkgewotCQkJdGltZW91dCA9IGRtYV9mZW5jZV93YWl0X3RpbWVv
dXQoZmVuY2UsCi0JCQkJCQkJIGZsYWdzICYgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCi0JCQkJ
CQkJIHRpbWVvdXQpOwotCQl9IGVsc2UgewotCQkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPSB0
b19yZXF1ZXN0KGZlbmNlKTsKLQotCQkJLyoKLQkJCSAqICJSYWNlLXRvLWlkbGUiLgotCQkJICoK
LQkJCSAqIFN3aXRjaGluZyB0byB0aGUga2VybmVsIGNvbnRleHQgaXMgb2Z0ZW4gdXNlZCBhcwot
CQkJICogYSBzeW5jaHJvbm91cyBzdGVwIHByaW9yIHRvIGlkbGluZywgZS5nLiBpbiBzdXNwZW5k
Ci0JCQkgKiBmb3IgZmx1c2hpbmcgYWxsIGN1cnJlbnQgb3BlcmF0aW9ucyB0byBtZW1vcnkgYmVm
b3JlCi0JCQkgKiBzbGVlcGluZy4gVGhlc2Ugd2Ugd2FudCB0byBjb21wbGV0ZSBhcyBxdWlja2x5
IGFzCi0JCQkgKiBwb3NzaWJsZSB0byBhdm9pZCBwcm9sb25nZWQgc3RhbGxzLCBzbyBhbGxvdyB0
aGUgZ3B1Ci0JCQkgKiB0byBib29zdCB0byBtYXhpbXVtIGNsb2Nrcy4KLQkJCSAqLwotCQkJaWYg
KGZsYWdzICYgSTkxNV9XQUlUX0ZPUl9JRExFX0JPT1NUKQotCQkJCWdlbjZfcnBzX2Jvb3N0KHJx
KTsKLQotCQkJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLCBmbGFncywgdGltZW91dCk7
Ci0JCX0KLQotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKLQkJaWYgKHRpbWVvdXQgPCAwKQotCQkJ
cmV0dXJuIHRpbWVvdXQ7Ci0KLQkJLyogcmVzdGFydCBhZnRlciByZWFjcXVpcmluZyB0aGUgbG9j
ayAqLwotCQlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Ci0JCXRs
ID0gbGlzdF9lbnRyeSgmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwgdHlwZW9mKCp0bCksIGxpbmsp
OwotCX0KLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsK
LQotCXJldHVybiB0aW1lb3V0OwotfQotCi1pbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCSAgIHVuc2lnbmVkIGludCBmbGFncywgbG9u
ZyB0aW1lb3V0KQoraW50IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIGxvbmcgdGltZW91dCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5
MTUtPmd0OwogCkBAIC05NDUsMTggKzg5MSwxMyBAQCBpbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlpZiAoIWludGVsX2d0X3BtX2lzX2F3
YWtlKGd0KSkKIAkJcmV0dXJuIDA7CiAKLQlkbyB7Ci0JCXRpbWVvdXQgPSB3YWl0X2Zvcl90aW1l
bGluZXMoZ3QsIGZsYWdzLCB0aW1lb3V0KTsKLQkJaWYgKHRpbWVvdXQgPCAwKQotCQkJcmV0dXJu
IHRpbWVvdXQ7Ci0KKwl3aGlsZSAoKHRpbWVvdXQgPSBpOTE1X3JldGlyZV9yZXF1ZXN0c190aW1l
b3V0KGk5MTUsIHRpbWVvdXQpKSA+IDApIHsKIAkJY29uZF9yZXNjaGVkKCk7CiAJCWlmIChzaWdu
YWxfcGVuZGluZyhjdXJyZW50KSkKIAkJCXJldHVybiAtRUlOVFI7CisJfQogCi0JfSB3aGlsZSAo
aTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkxNSkpOwotCi0JcmV0dXJuIDA7CisJcmV0dXJuIHRpbWVv
dXQ7CiB9CiAKIHN0cnVjdCBpOTE1X3ZtYSAqCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ldmljdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZXZp
Y3QuYwppbmRleCAwNTUyYmY5M2VlYTMuLjBhNDEyZjZkMDFkNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZXZpY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ldmljdC5jCkBAIC00Niw5ICs0Niw3IEBAIHN0YXRpYyBpbnQgZ2d0dF9mbHVz
aChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKiB0aGUgaG9wZXMgdGhhdCB3ZSBj
YW4gdGhlbiByZW1vdmUgY29udGV4dHMgYW5kIHRoZSBsaWtlIG9ubHkKIAkgKiBib3VuZCBieSB0
aGVpciBhY3RpdmUgcmVmZXJlbmNlLgogCSAqLwotCXJldHVybiBpOTE1X2dlbV93YWl0X2Zvcl9p
ZGxlKGk5MTUsCi0JCQkJICAgICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCi0JCQkJICAgICAg
TUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCXJldHVybiBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5
MTUsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKIH0KIAogc3RhdGljIGJvb2wKQEAgLTEyNiw2ICsx
MjQsOCBAQCBpOTE1X2dlbV9ldmljdF9zb21ldGhpbmcoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sCiAJCQkJICAgIG1pbl9zaXplLCBhbGlnbm1lbnQsIGNvbG9yLAogCQkJCSAgICBzdGFy
dCwgZW5kLCBtb2RlKTsKIAorCWk5MTVfcmV0aXJlX3JlcXVlc3RzKHZtLT5pOTE1KTsKKwogc2Vh
cmNoX2FnYWluOgogCWFjdGl2ZSA9IE5VTEw7CiAJSU5JVF9MSVNUX0hFQUQoJmV2aWN0aW9uX2xp
c3QpOwpAQCAtMjY0LDEzICsyNjQsMTMgQEAgaW50IGk5MTVfZ2VtX2V2aWN0X2Zvcl9ub2RlKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCiAJdHJhY2VfaTkxNV9nZW1fZXZpY3Rfbm9k
ZSh2bSwgdGFyZ2V0LCBmbGFncyk7CiAKLQkvKiBSZXRpcmUgYmVmb3JlIHdlIHNlYXJjaCB0aGUg
YWN0aXZlIGxpc3QuIEFsdGhvdWdoIHdlIGhhdmUKKwkvKgorCSAqIFJldGlyZSBiZWZvcmUgd2Ug
c2VhcmNoIHRoZSBhY3RpdmUgbGlzdC4gQWx0aG91Z2ggd2UgaGF2ZQogCSAqIHJlYXNvbmFibGUg
YWNjdXJhY3kgaW4gb3VyIHJldGlyZW1lbnQgbGlzdHMsIHdlIG1heSBoYXZlCiAJICogYSBzdHJh
eSBwaW4gKHByZXZlbnRpbmcgZXZpY3Rpb24pIHRoYXQgY2FuIG9ubHkgYmUgcmVzb2x2ZWQgYnkK
IAkgKiByZXRpcmluZy4KIAkgKi8KLQlpZiAoIShmbGFncyAmIFBJTl9OT05CTE9DSykpCi0JCWk5
MTVfcmV0aXJlX3JlcXVlc3RzKHZtLT5pOTE1KTsKKwlpOTE1X3JldGlyZV9yZXF1ZXN0cyh2bS0+
aTkxNSk7CiAKIAlpZiAoaTkxNV92bV9oYXNfY2FjaGVfY29sb3Jpbmcodm0pKSB7CiAJCS8qIEV4
cGFuZCBzZWFyY2ggdG8gY292ZXIgbmVpZ2hib3VyaW5nIGd1YXJkIHBhZ2VzIChvciBsYWNrISkg
Ki8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNzQ2MmQ4N2Y3YTQ4Li4wODJm
Y2Y5MDg1YTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0yNTI4LDcgKzI1
MjgsOSBAQCB2b2lkIGk5MTVfZ2VtX2d0dF9maW5pc2hfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmRldl9wcml2LT5nZ3R0
OwogCiAJaWYgKHVubGlrZWx5KGdndHQtPmRvX2lkbGVfbWFwcykpIHsKLQkJaWYgKGk5MTVfZ2Vt
X3dhaXRfZm9yX2lkbGUoZGV2X3ByaXYsIDAsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSkgeworCQkv
KiBYWFggVGhpcyBkb2VzIG5vdCBwcmV2ZW50IG1vcmUgcmVxdWVzdHMgYmVpbmcgc3VibWl0dGVk
ISAqLworCQlpZiAoaTkxNV9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChkZXZfcHJpdiwKKwkJCQkJ
CSAtTUFYX1NDSEVEVUxFX1RJTUVPVVQpKSB7CiAJCQlEUk1fRVJST1IoIkZhaWxlZCB0byB3YWl0
IGZvciBpZGxlOyBWVCdkIG1heSBoYW5nLlxuIik7CiAJCQkvKiBXYWl0IGEgYml0LCBpbiBob3Bl
cyBpdCBhdm9pZHMgdGhlIGhhbmcgKi8KIAkJCXVkZWxheSgxMCk7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jCmluZGV4IDRmZmU2MmE0MjE4Ni4uNTJmN2M0ZTViNjQ0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtMTUwOCwxMyArMTUwOCwxOSBAQCBsb25nIGk5MTVf
cmVxdWVzdF93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCXJldHVybiB0aW1lb3V0Owog
fQogCi1ib29sIGk5MTVfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQorbG9uZyBpOTE1X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBsb25nIHRpbWVvdXQpCiB7CiAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5l
cyAqdGltZWxpbmVzID0gJmk5MTUtPmd0LnRpbWVsaW5lczsKIAlzdHJ1Y3QgaW50ZWxfdGltZWxp
bmUgKnRsLCAqdG47CisJdW5zaWduZWQgbG9uZyBhY3RpdmVfY291bnQgPSAwOwogCXVuc2lnbmVk
IGxvbmcgZmxhZ3M7CisJYm9vbCBpbnRlcnJ1cHRpYmxlOwogCUxJU1RfSEVBRChmcmVlKTsKIAor
CWludGVycnVwdGlibGUgPSB0cnVlOworCWlmICh0aW1lb3V0IDwgMCkKKwkJdGltZW91dCA9IC10
aW1lb3V0LCBpbnRlcnJ1cHRpYmxlID0gZmFsc2U7CisKIAlzcGluX2xvY2tfaXJxc2F2ZSgmdGlt
ZWxpbmVzLT5sb2NrLCBmbGFncyk7CiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHRsLCB0biwg
JnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxpbmspIHsKIAkJaWYgKCFtdXRleF90cnlsb2NrKCZ0
bC0+bXV0ZXgpKQpAQCAtMTUyNSwxMyArMTUzMSwyNyBAQCBib29sIGk5MTVfcmV0aXJlX3JlcXVl
c3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQl0bC0+YWN0aXZlX2NvdW50Kys7
IC8qIHBpbiB0aGUgbGlzdCBlbGVtZW50ICovCiAJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRp
bWVsaW5lcy0+bG9jaywgZmxhZ3MpOwogCisJCWlmICh0aW1lb3V0ID4gMCkgeworCQkJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7CisKKwkJCWZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0KCZ0
bC0+bGFzdF9yZXF1ZXN0KTsKKwkJCWlmIChmZW5jZSkgeworCQkJCXRpbWVvdXQgPSBkbWFfZmVu
Y2Vfd2FpdF90aW1lb3V0KGZlbmNlLAorCQkJCQkJCQkgaW50ZXJydXB0aWJsZSwKKwkJCQkJCQkJ
IHRpbWVvdXQpOworCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQkJfQorCQl9CisKIAkJcmV0
aXJlX3JlcXVlc3RzKHRsKTsKIAogCQlzcGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2Nr
LCBmbGFncyk7CiAKIAkJLyogUmVzdW1lIGl0ZXJhdGlvbiBhZnRlciBkcm9wcGluZyBsb2NrICov
CiAJCWxpc3Rfc2FmZV9yZXNldF9uZXh0KHRsLCB0biwgbGluayk7Ci0JCWlmICghLS10bC0+YWN0
aXZlX2NvdW50KQorCQlpZiAoLS10bC0+YWN0aXZlX2NvdW50KQorCQkJYWN0aXZlX2NvdW50ICs9
ICEhcmN1X2FjY2Vzc19wb2ludGVyKHRsLT5sYXN0X3JlcXVlc3QuZmVuY2UpOworCQllbHNlCiAJ
CQlsaXN0X2RlbCgmdGwtPmxpbmspOwogCiAJCW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsKQEAg
LTE1NDcsNyArMTU2Nyw3IEBAIGJvb2wgaTkxNV9yZXRpcmVfcmVxdWVzdHMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHRsLCB0biwgJmZy
ZWUsIGxpbmspCiAJCV9faW50ZWxfdGltZWxpbmVfZnJlZSgmdGwtPmtyZWYpOwogCi0JcmV0dXJu
ICFsaXN0X2VtcHR5KCZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKKwlyZXR1cm4gYWN0aXZlX2Nv
dW50ID8gdGltZW91dCA6IDA7CiB9CiAKICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9T
RUxGVEVTVCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKaW5kZXggNjIxZmIzM2NkYTMw
Li4yNTZiMDcxNTE4MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCkBAIC0zMTAs
NyArMzEwLDYgQEAgbG9uZyBpOTE1X3JlcXVlc3Rfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwKICNkZWZpbmUgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUJQklUKDApCiAjZGVmaW5lIEk5MTVf
V0FJVF9QUklPUklUWQlCSVQoMSkgLyogc21hbGwgcHJpb3JpdHkgYnVtcCBmb3IgdGhlIHJlcXVl
c3QgKi8KICNkZWZpbmUgSTkxNV9XQUlUX0FMTAkJQklUKDIpIC8qIHVzZWQgYnkgaTkxNV9nZW1f
b2JqZWN0X3dhaXQoKSAqLwotI2RlZmluZSBJOTE1X1dBSVRfRk9SX0lETEVfQk9PU1QgQklUKDMp
CiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X3JlcXVlc3Rfc2lnbmFsZWQoY29uc3Qgc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEpCiB7CkBAIC00NjAsNiArNDU5LDEwIEBAIGk5MTVfcmVxdWVzdF9h
Y3RpdmVfdGltZWxpbmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCQkJCSBsb2NrZGVwX2lz
X2hlbGQoJnJxLT5lbmdpbmUtPmFjdGl2ZS5sb2NrKSk7CiB9CiAKLWJvb2wgaTkxNV9yZXRpcmVf
cmVxdWVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOworbG9uZyBpOTE1X3JldGly
ZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBsb25nIHRp
bWVvdXQpOworc3RhdGljIGlubGluZSB2b2lkIGk5MTVfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQoreworCWk5MTVfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQo
aTkxNSwgMCk7Cit9CiAKICNlbmRpZiAvKiBJOTE1X1JFUVVFU1RfSCAqLwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNoX3Rlc3QuYwppbmRleCAyYTVmYmU0NmVh
OWYuLmVkNDk2YmQ2ZDg0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2lndF9mbHVzaF90ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2lndF9mbHVzaF90ZXN0LmMKQEAgLTE4LDggKzE4LDcgQEAgaW50IGlndF9mbHVzaF90ZXN0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJY29uZF9yZXNjaGVkKCk7CiAKLQlpOTE1
X3JldGlyZV9yZXF1ZXN0cyhpOTE1KTsKLQlpZiAoaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShpOTE1
LCAwLCBIWiAvIDUpID09IC1FVElNRSkgeworCWlmIChpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5
MTUsIEhaIC8gNSkgPT0gLUVUSU1FKSB7CiAJCXByX2VycigiJXBTIHRpbWVkIG91dCwgY2FuY2Vs
bGluZyBhbGwgZnVydGhlciB0ZXN0aW5nLlxuIiwKIAkJICAgICAgIF9fYnVpbHRpbl9yZXR1cm5f
YWRkcmVzcygwKSk7CiAKQEAgLTMwLDcgKzI5LDYgQEAgaW50IGlndF9mbHVzaF90ZXN0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlpbnRlbF9ndF9zZXRfd2VkZ2VkKCZpOTE1LT5n
dCk7CiAJCXJldCA9IC1FSU87CiAJfQotCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUpOwogCiAJ
cmV0dXJuIHJldDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pZ3RfbGl2ZV90ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xp
dmVfdGVzdC5jCmluZGV4IDA0YTZmODhmZGY2NC4uZWFlOTBmOTdkZjZjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbGl2ZV90ZXN0LmMKQEAgLTIzLDkgKzIzLDcg
QEAgaW50IGlndF9saXZlX3Rlc3RfYmVnaW4oc3RydWN0IGlndF9saXZlX3Rlc3QgKnQsCiAJdC0+
ZnVuYyA9IGZ1bmM7CiAJdC0+bmFtZSA9IG5hbWU7CiAKLQllcnIgPSBpOTE1X2dlbV93YWl0X2Zv
cl9pZGxlKGk5MTUsCi0JCQkJICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKLQkJCQkgICAg
IE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKKwllcnIgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5
MTUsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKIAlpZiAoZXJyKSB7CiAJCXByX2VycigiJXMoJXMp
OiBmYWlsZWQgdG8gaWRsZSBiZWZvcmUsIHdpdGggZXJyPSVkISIsCiAJCSAgICAgICBmdW5jLCBu
YW1lLCBlcnIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfZ2VtX2RldmljZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2Vt
X2RldmljZS5jCmluZGV4IGE4YmU1ZGEyYjNjZi4uM2I1ODliYmIyYzJkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCkBAIC00NCw3ICs0
NCw3IEBAIHZvaWQgbW9ja19kZXZpY2VfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAJZG8gewogCQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkKIAkJCW1vY2tf
ZW5naW5lX2ZsdXNoKGVuZ2luZSk7Ci0JfSB3aGlsZSAoaTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkx
NSkpOworCX0gd2hpbGUgKGk5MTVfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoaTkxNSwgTUFYX1ND
SEVEVUxFX1RJTUVPVVQpKTsKIH0KIAogc3RhdGljIHZvaWQgbW9ja19kZXZpY2VfcmVsZWFzZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
