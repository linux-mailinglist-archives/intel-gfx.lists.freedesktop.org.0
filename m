Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A942F9EEF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 13:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C82989A20;
	Mon, 18 Jan 2021 12:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31D389B7D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 12:00:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23627897-1500050 
 for multiple; Mon, 18 Jan 2021 11:59:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 11:59:29 +0000
Message-Id: <20210118115929.23509-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Apply interactive priority to
 explicit flip fences
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

Q3VycmVudGx5LCBpZiBhIG1vZGVzZXQvcGFnZWZsaXAgbmVlZHMgdG8gd2FpdCBmb3IgcmVuZGVy
IGNvbXBsZXRpb24gdG8KYW4gb2JqZWN0LCB3ZSBib29zdCB0aGUgcHJpb3JpdHkgb2YgdGhhdCBy
ZW5kZXJpbmcgYWJvdmUgYWxsIG90aGVyIHdvcmsuCldlIGNhbiBhcHBseSB0aGUgc2FtZSBpbnRl
cmFjdGl2ZSBwcmlvcml0eSBib29zdGluZyB0byBleHBsaWNpdCBmZW5jZXMKdGhhdCB3ZSBjYW4g
dW53cmFwIGludG8gYSBuYXRpdmUgaTkxNV9yZXF1ZXN0IChpLmUuIHN5bmNfZmlsZSkuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTYgKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgfCAgMyArKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgICAgfCA0OSArKysrKysrKysrKysrKy0tLS0tLQogMyBm
aWxlcyBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGI3Mjg3OTJlMGMy
Ny4uM2E2YjJlNzljNjhiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtMTM1MTQsMTUgKzEzNTE0LDYgQEAgdm9pZCBpbnRlbF9wbGFuZV91bnBp
bl9mYihzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSkKIAkJaW50ZWxf
dW5waW5fZmJfdm1hKHZtYSwgb2xkX3BsYW5lX3N0YXRlLT5mbGFncyk7CiB9CiAKLXN0YXRpYyB2
b2lkIGZiX29ial9idW1wX3JlbmRlcl9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQotewotCXN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgYXR0ciA9IHsKLQkJLnByaW9yaXR5
ID0gSTkxNV9VU0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfRElTUExBWSksCi0JfTsKLQotCWk5
MTVfZ2VtX29iamVjdF93YWl0X3ByaW9yaXR5KG9iaiwgMCwgJmF0dHIpOwotfQotCiAvKioKICAq
IGludGVsX3ByZXBhcmVfcGxhbmVfZmIgLSBQcmVwYXJlIGZiIGZvciB1c2FnZSBvbiBwbGFuZQog
ICogQF9wbGFuZTogZHJtIHBsYW5lIHRvIHByZXBhcmUgZm9yCkBAIC0xMzUzOSw2ICsxMzUzMCw5
IEBAIGludAogaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUs
CiAJCSAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpfbmV3X3BsYW5lX3N0YXRlKQogewor
CXN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgYXR0ciA9IHsKKwkJLnByaW9yaXR5ID0gSTkxNV9VU0VS
X1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfRElTUExBWSksCisJfTsKIAlzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUoX3BsYW5lKTsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKm5ld19wbGFuZV9zdGF0ZSA9CiAJCXRvX2ludGVsX3BsYW5lX3N0YXRlKF9uZXdfcGxh
bmVfc3RhdGUpOwpAQCAtMTM1NzgsNiArMTM1NzIsOCBAQCBpbnRlbF9wcmVwYXJlX3BsYW5lX2Zi
KHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwKIAl9CiAKIAlpZiAobmV3X3BsYW5lX3N0YXRlLT51
YXBpLmZlbmNlKSB7IC8qIGV4cGxpY2l0IGZlbmNpbmcgKi8KKwkJaTkxNV9nZW1fZmVuY2Vfd2Fp
dF9wcmlvcml0eShuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UsCisJCQkJCSAgICAgJmF0dHIp
OwogCQlyZXQgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZSgmc3RhdGUtPmNvbW1pdF9y
ZWFkeSwKIAkJCQkJCSAgICBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmVuY2UsCiAJCQkJCQkgICAg
aTkxNV9mZW5jZV90aW1lb3V0KGRldl9wcml2KSwKQEAgLTEzNTk5LDcgKzEzNTk1LDcgQEAgaW50
ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJaWYgKHJldCkK
IAkJcmV0dXJuIHJldDsKIAotCWZiX29ial9idW1wX3JlbmRlcl9wcmlvcml0eShvYmopOworCWk5
MTVfZ2VtX29iamVjdF93YWl0X3ByaW9yaXR5KG9iaiwgMCwgJmF0dHIpOwogCWk5MTVfZ2VtX29i
amVjdF9mbHVzaF9mcm9udGJ1ZmZlcihvYmosIE9SSUdJTl9ESVJUWUZCKTsKIAogCWlmICghbmV3
X3BsYW5lX3N0YXRlLT51YXBpLmZlbmNlKSB7IC8qIGltcGxpY2l0IGZlbmNpbmcgKi8KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCBiZTE0NDg2ZjYzYTcu
LjMxZDA1YmZhNTdjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuaApAQCAtNTEyLDYgKzUxMiw5IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX3N0YXJ0X2NwdV93
cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCQlvYmotPmNhY2hlX2RpcnR5
ID0gdHJ1ZTsKIH0KIAordm9pZCBpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5KHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLAorCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0
cik7CisKIGludCBpOTE1X2dlbV9vYmplY3Rfd2FpdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqLAogCQkJIHVuc2lnbmVkIGludCBmbGFncywKIAkJCSBsb25nIHRpbWVvdXQpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMKaW5kZXggYzFiMTNhYzUwZDBmLi4z
MDc4ZjNhMjg2NGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV93YWl0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwpA
QCAtNSw2ICs1LDcgQEAKICAqLwogCiAjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWFycmF5Lmg+
CisjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLWNoYWluLmg+CiAjaW5jbHVkZSA8bGludXgvamlm
Zmllcy5oPgogCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lLmgiCkBAIC00NCw4ICs0NSw3IEBA
IGk5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwK
IAkJdW5zaWduZWQgaW50IGNvdW50LCBpOwogCQlpbnQgcmV0OwogCi0JCXJldCA9IGRtYV9yZXN2
X2dldF9mZW5jZXNfcmN1KHJlc3YsCi0JCQkJCQkJJmV4Y2wsICZjb3VudCwgJnNoYXJlZCk7CisJ
CXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHJlc3YsICZleGNsLCAmY291bnQsICZzaGFy
ZWQpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIApAQCAtOTEsMzkgKzkxLDYwIEBAIGk5
MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwKIAly
ZXR1cm4gdGltZW91dDsKIH0KIAotc3RhdGljIHZvaWQgX19mZW5jZV9zZXRfcHJpb3JpdHkoc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UsCi0JCQkJIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIg
KmF0dHIpCitzdGF0aWMgYm9vbCBmZW5jZV9zZXRfcHJpb3JpdHkoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsCisJCQkgICAgICAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0cikKIHsK
IAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmU7CiAKIAlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSB8fCAhZG1hX2ZlbmNlX2lz
X2k5MTUoZmVuY2UpKQotCQlyZXR1cm47CisJCXJldHVybiBmYWxzZTsKIAogCXJxID0gdG9fcmVx
dWVzdChmZW5jZSk7CiAJZW5naW5lID0gcnEtPmVuZ2luZTsKIAotCWxvY2FsX2JoX2Rpc2FibGUo
KTsKIAlyY3VfcmVhZF9sb2NrKCk7IC8qIFJDVSBzZXJpYWxpc2F0aW9uIGZvciBzZXQtd2VkZ2Vk
IHByb3RlY3Rpb24gKi8KIAlpZiAoZW5naW5lLT5zY2hlZHVsZSkKIAkJZW5naW5lLT5zY2hlZHVs
ZShycSwgYXR0cik7CiAJcmN1X3JlYWRfdW5sb2NrKCk7Ci0JbG9jYWxfYmhfZW5hYmxlKCk7IC8q
IGtpY2sgdGhlIHRhc2tsZXRzIGlmIHF1ZXVlcyB3ZXJlIHJlcHJpb3JpdGlzZWQgKi8KKworCXJl
dHVybiB0cnVlOwogfQogCi1zdGF0aWMgdm9pZCBmZW5jZV9zZXRfcHJpb3JpdHkoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UsCi0JCQkgICAgICAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAq
YXR0cikKK3N0YXRpYyBpbmxpbmUgYm9vbCBfX2RtYV9mZW5jZV9pc19jaGFpbihjb25zdCBzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIHsKKwlyZXR1cm4gZmVuY2UtPm9wcyAhPSAmZG1hX2ZlbmNl
X2NoYWluX29wczsKK30KKwordm9pZCBpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5KHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlLAorCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAq
YXR0cikKK3sKKwlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkKKwkJcmV0dXJuOwor
CisJbG9jYWxfYmhfZGlzYWJsZSgpOworCiAJLyogUmVjdXJzZSBvbmNlIGludG8gYSBmZW5jZS1h
cnJheSAqLwogCWlmIChkbWFfZmVuY2VfaXNfYXJyYXkoZmVuY2UpKSB7CiAJCXN0cnVjdCBkbWFf
ZmVuY2VfYXJyYXkgKmFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsKIAkJaW50IGk7
CiAKIAkJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyBpKyspCi0JCQlfX2ZlbmNl
X3NldF9wcmlvcml0eShhcnJheS0+ZmVuY2VzW2ldLCBhdHRyKTsKKwkJCWZlbmNlX3NldF9wcmlv
cml0eShhcnJheS0+ZmVuY2VzW2ldLCBhdHRyKTsKKwl9IGVsc2UgaWYgKF9fZG1hX2ZlbmNlX2lz
X2NoYWluKGZlbmNlKSkgeworCQlzdHJ1Y3QgZG1hX2ZlbmNlICppdGVyOworCisJCWRtYV9mZW5j
ZV9jaGFpbl9mb3JfZWFjaChpdGVyLCBmZW5jZSkgeworCQkJaWYgKCFmZW5jZV9zZXRfcHJpb3Jp
dHkodG9fZG1hX2ZlbmNlX2NoYWluKGl0ZXIpLT5mZW5jZSwKKwkJCQkJCWF0dHIpKQorCQkJCWJy
ZWFrOworCQl9CisJCWRtYV9mZW5jZV9wdXQoaXRlcik7CiAJfSBlbHNlIHsKLQkJX19mZW5jZV9z
ZXRfcHJpb3JpdHkoZmVuY2UsIGF0dHIpOworCQlmZW5jZV9zZXRfcHJpb3JpdHkoZmVuY2UsIGF0
dHIpOwogCX0KKworCWxvY2FsX2JoX2VuYWJsZSgpOyAvKiBraWNrIHRoZSB0YXNrbGV0cyBpZiBx
dWV1ZXMgd2VyZSByZXByaW9yaXRpc2VkICovCiB9CiAKIGludApAQCAtMTM5LDEyICsxNjAsMTIg
QEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIAkJaW50IHJldDsKIAogCQlyZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzX3JjdShv
YmotPmJhc2UucmVzdiwKLQkJCQkJCQkmZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKKwkJCQkJICAg
ICAgJmV4Y2wsICZjb3VudCwgJnNoYXJlZCk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0Owog
CiAJCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCQlmZW5jZV9zZXRfcHJpb3JpdHko
c2hhcmVkW2ldLCBhdHRyKTsKKwkJCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoc2hhcmVk
W2ldLCBhdHRyKTsKIAkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKIAkJfQogCkBAIC0xNTQs
NyArMTc1LDcgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAl9CiAKIAlpZiAoZXhjbCkgewotCQlmZW5jZV9zZXRfcHJpb3Jp
dHkoZXhjbCwgYXR0cik7CisJCWk5MTVfZ2VtX2ZlbmNlX3dhaXRfcHJpb3JpdHkoZXhjbCwgYXR0
cik7CiAJCWRtYV9mZW5jZV9wdXQoZXhjbCk7CiAJfQogCXJldHVybiAwOwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
