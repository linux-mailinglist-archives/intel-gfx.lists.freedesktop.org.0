Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C352673B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 17:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A6C489C1B;
	Wed, 22 May 2019 15:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482A989BFF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 15:48:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16643217-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 16:48:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 16:48:45 +0100
Message-Id: <20190522154849.7960-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522154849.7960-1-chris@chris-wilson.co.uk>
References: <20190522154849.7960-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/15] drm/i915: Move GEM object waiting to its own
 file
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
YmplY3Qgd2FpdApkZWNvbXBvc2l0aW9uIGludG8gaXRzIG93biBmaWxlLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBN
aWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgICA4ICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgICB8IDI3NyArKysrKysrKysrKysrKysrKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8ICAgNyAtCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgfCAyNTQgLS0tLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oICAgICAgICAgIHwgIDEwIC0K
IDYgZmlsZXMgY2hhbmdlZCwgMjg2IGluc2VydGlvbnMoKyksIDI3MSBkZWxldGlvbnMoLSkKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5j
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCBlNTM0OGMzNTU5ODcuLmE0Y2MyZjdmOWJjNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTEwNSw2ICsxMDUsNyBAQCBnZW0teSArPSBcCiAJZ2VtL2k5
MTVfZ2VtX3N0b2xlbi5vIFwKIAlnZW0vaTkxNV9nZW1fdGlsaW5nLm8gXAogCWdlbS9pOTE1X2dl
bV91c2VycHRyLm8gXAorCWdlbS9pOTE1X2dlbV93YWl0Lm8gXAogCWdlbS9pOTE1X2dlbWZzLm8K
IGk5MTUteSArPSBcCiAJICAkKGdlbS15KSBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKaW5kZXggYjA0ODg1MTdlOTQ1Li41MjMzZWMzYTA1NmQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTQ0MSw0ICs0NDEsMTIg
QEAgc3RhdGljIGlubGluZSB2b2lkIF9fc3RhcnRfY3B1X3dyaXRlKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCiAJCW9iai0+Y2FjaGVfZGlydHkgPSB0cnVlOwogfQogCitpbnQgaTkx
NV9nZW1fb2JqZWN0X3dhaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSB1
bnNpZ25lZCBpbnQgZmxhZ3MsCisJCQkgbG9uZyB0aW1lb3V0KTsKK2ludCBpOTE1X2dlbV9vYmpl
Y3Rfd2FpdF9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCSAg
dW5zaWduZWQgaW50IGZsYWdzLAorCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAq
YXR0cik7CisjZGVmaW5lIEk5MTVfUFJJT1JJVFlfRElTUExBWSBJOTE1X1VTRVJfUFJJT1JJVFko
STkxNV9QUklPUklUWV9NQVgpCisKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV93YWl0LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5mZWQ1
Yzc1MWVmMzcKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fd2FpdC5jCkBAIC0wLDAgKzEsMjc3IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE2IEludGVsIENvcnBvcmF0aW9uCisg
Ki8KKworI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPgorI2luY2x1ZGUgPGxpbnV4
L2ppZmZpZXMuaD4KKworI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZS5oIgorCisjaW5jbHVkZSAi
aTkxNV9nZW1faW9jdGxzLmgiCisjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0LmgiCisKK3N0YXRp
YyBsb25nCitpOTE1X2dlbV9vYmplY3Rfd2FpdF9mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwKKwkJCSAgIHVuc2lnbmVkIGludCBmbGFncywKKwkJCSAgIGxvbmcgdGltZW91dCkKK3sKKwlC
VUlMRF9CVUdfT04oSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUgIT0gMHgxKTsKKworCWlmICh0ZXN0
X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQorCQlyZXR1
cm4gdGltZW91dDsKKworCWlmIChkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkpCisJCXJldHVybiBp
OTE1X3JlcXVlc3Rfd2FpdCh0b19yZXF1ZXN0KGZlbmNlKSwgZmxhZ3MsIHRpbWVvdXQpOworCisJ
cmV0dXJuIGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsCisJCQkJICAgICAgZmxhZ3MgJiBJ
OTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKKwkJCQkgICAgICB0aW1lb3V0KTsKK30KKworc3RhdGlj
IGxvbmcKK2k5MTVfZ2VtX29iamVjdF93YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCByZXNlcnZhdGlv
bl9vYmplY3QgKnJlc3YsCisJCQkJIHVuc2lnbmVkIGludCBmbGFncywKKwkJCQkgbG9uZyB0aW1l
b3V0KQoreworCXVuc2lnbmVkIGludCBzZXEgPSBfX3JlYWRfc2VxY291bnRfYmVnaW4oJnJlc3Yt
PnNlcSk7CisJc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKKwlib29sIHBydW5lX2ZlbmNlcyA9IGZh
bHNlOworCisJaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgeworCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICoqc2hhcmVkOworCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7CisJCWludCByZXQ7CisKKwkJcmV0
ID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNfcmN1KHJlc3YsCisJCQkJCQkJJmV4Y2ws
ICZjb3VudCwgJnNoYXJlZCk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCisJCWZvciAo
aSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7CisJCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dh
aXRfZmVuY2Uoc2hhcmVkW2ldLAorCQkJCQkJCSAgICAgZmxhZ3MsIHRpbWVvdXQpOworCQkJaWYg
KHRpbWVvdXQgPCAwKQorCQkJCWJyZWFrOworCisJCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7
CisJCX0KKworCQlmb3IgKDsgaSA8IGNvdW50OyBpKyspCisJCQlkbWFfZmVuY2VfcHV0KHNoYXJl
ZFtpXSk7CisJCWtmcmVlKHNoYXJlZCk7CisKKwkJLyoKKwkJICogSWYgYm90aCBzaGFyZWQgZmVu
Y2VzIGFuZCBhbiBleGNsdXNpdmUgZmVuY2UgZXhpc3QsCisJCSAqIHRoZW4gYnkgY29uc3RydWN0
aW9uIHRoZSBzaGFyZWQgZmVuY2VzIG11c3QgYmUgbGF0ZXIKKwkJICogdGhhbiB0aGUgZXhjbHVz
aXZlIGZlbmNlLiBJZiB3ZSBzdWNjZXNzZnVsbHkgd2FpdCBmb3IKKwkJICogYWxsIHRoZSBzaGFy
ZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhlIGV4Y2x1c2l2ZSBmZW5jZQorCQkgKiBtdXN0IGFs
bCBiZSBzaWduYWxlZC4gSWYgYWxsIHRoZSBzaGFyZWQgZmVuY2VzIGFyZQorCQkgKiBzaWduYWxl
ZCwgd2UgY2FuIHBydW5lIHRoZSBhcnJheSBhbmQgcmVjb3ZlciB0aGUKKwkJICogZmxvYXRpbmcg
cmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3JlcXVlc3RzLgorCQkgKi8KKwkJcHJ1bmVfZmVuY2Vz
ID0gY291bnQgJiYgdGltZW91dCA+PSAwOworCX0gZWxzZSB7CisJCWV4Y2wgPSByZXNlcnZhdGlv
bl9vYmplY3RfZ2V0X2V4Y2xfcmN1KHJlc3YpOworCX0KKworCWlmIChleGNsICYmIHRpbWVvdXQg
Pj0gMCkKKwkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGV4Y2wsIGZsYWdz
LCB0aW1lb3V0KTsKKworCWRtYV9mZW5jZV9wdXQoZXhjbCk7CisKKwkvKgorCSAqIE9wcG9ydHVu
aXN0aWNhbGx5IHBydW5lIHRoZSBmZW5jZXMgaWZmIHdlIGtub3cgdGhleSBoYXZlICphbGwqIGJl
ZW4KKwkgKiBzaWduYWxlZCBhbmQgdGhhdCB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0IGhhcyBub3Qg
YmVlbiBjaGFuZ2VkIChpLmUuCisJICogbm8gbmV3IGZlbmNlcyBoYXZlIGJlZW4gYWRkZWQpLgor
CSAqLworCWlmIChwcnVuZV9mZW5jZXMgJiYgIV9fcmVhZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+
c2VxLCBzZXEpKSB7CisJCWlmIChyZXNlcnZhdGlvbl9vYmplY3RfdHJ5bG9jayhyZXN2KSkgewor
CQkJaWYgKCFfX3JlYWRfc2VxY291bnRfcmV0cnkoJnJlc3YtPnNlcSwgc2VxKSkKKwkJCQlyZXNl
cnZhdGlvbl9vYmplY3RfYWRkX2V4Y2xfZmVuY2UocmVzdiwgTlVMTCk7CisJCQlyZXNlcnZhdGlv
bl9vYmplY3RfdW5sb2NrKHJlc3YpOworCQl9CisJfQorCisJcmV0dXJuIHRpbWVvdXQ7Cit9CisK
K3N0YXRpYyB2b2lkIF9fZmVuY2Vfc2V0X3ByaW9yaXR5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LAorCQkJCSBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQoreworCXN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKworCWlm
IChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpIHx8ICFkbWFfZmVuY2VfaXNfaTkxNShmZW5j
ZSkpCisJCXJldHVybjsKKworCXJxID0gdG9fcmVxdWVzdChmZW5jZSk7CisJZW5naW5lID0gcnEt
PmVuZ2luZTsKKworCWxvY2FsX2JoX2Rpc2FibGUoKTsKKwlyY3VfcmVhZF9sb2NrKCk7IC8qIFJD
VSBzZXJpYWxpc2F0aW9uIGZvciBzZXQtd2VkZ2VkIHByb3RlY3Rpb24gKi8KKwlpZiAoZW5naW5l
LT5zY2hlZHVsZSkKKwkJZW5naW5lLT5zY2hlZHVsZShycSwgYXR0cik7CisJcmN1X3JlYWRfdW5s
b2NrKCk7CisJbG9jYWxfYmhfZW5hYmxlKCk7IC8qIGtpY2sgdGhlIHRhc2tsZXRzIGlmIHF1ZXVl
cyB3ZXJlIHJlcHJpb3JpdGlzZWQgKi8KK30KKworc3RhdGljIHZvaWQgZmVuY2Vfc2V0X3ByaW9y
aXR5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAorCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpOTE1
X3NjaGVkX2F0dHIgKmF0dHIpCit7CisJLyogUmVjdXJzZSBvbmNlIGludG8gYSBmZW5jZS1hcnJh
eSAqLworCWlmIChkbWFfZmVuY2VfaXNfYXJyYXkoZmVuY2UpKSB7CisJCXN0cnVjdCBkbWFfZmVu
Y2VfYXJyYXkgKmFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsKKwkJaW50IGk7CisK
KwkJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyBpKyspCisJCQlfX2ZlbmNlX3Nl
dF9wcmlvcml0eShhcnJheS0+ZmVuY2VzW2ldLCBhdHRyKTsKKwl9IGVsc2UgeworCQlfX2ZlbmNl
X3NldF9wcmlvcml0eShmZW5jZSwgYXR0cik7CisJfQorfQorCitpbnQKK2k5MTVfZ2VtX29iamVj
dF93YWl0X3ByaW9yaXR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkgICAg
ICB1bnNpZ25lZCBpbnQgZmxhZ3MsCisJCQkgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9h
dHRyICphdHRyKQoreworCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7CisKKwlpZiAoZmxhZ3MgJiBJ
OTE1X1dBSVRfQUxMKSB7CisJCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQ7CisJCXVuc2lnbmVk
IGludCBjb3VudCwgaTsKKwkJaW50IHJldDsKKworCQlyZXQgPSByZXNlcnZhdGlvbl9vYmplY3Rf
Z2V0X2ZlbmNlc19yY3Uob2JqLT5yZXN2LAorCQkJCQkJCSZleGNsLCAmY291bnQsICZzaGFyZWQp
OworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKworCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7
IGkrKykgeworCQkJZmVuY2Vfc2V0X3ByaW9yaXR5KHNoYXJlZFtpXSwgYXR0cik7CisJCQlkbWFf
ZmVuY2VfcHV0KHNoYXJlZFtpXSk7CisJCX0KKworCQlrZnJlZShzaGFyZWQpOworCX0gZWxzZSB7
CisJCWV4Y2wgPSByZXNlcnZhdGlvbl9vYmplY3RfZ2V0X2V4Y2xfcmN1KG9iai0+cmVzdik7CisJ
fQorCisJaWYgKGV4Y2wpIHsKKwkJZmVuY2Vfc2V0X3ByaW9yaXR5KGV4Y2wsIGF0dHIpOworCQlk
bWFfZmVuY2VfcHV0KGV4Y2wpOworCX0KKwlyZXR1cm4gMDsKK30KKworLyoqCisgKiBXYWl0cyBm
b3IgcmVuZGVyaW5nIHRvIHRoZSBvYmplY3QgdG8gYmUgY29tcGxldGVkCisgKiBAb2JqOiBpOTE1
IGdlbSBvYmplY3QKKyAqIEBmbGFnczogaG93IHRvIHdhaXQgKHVuZGVyIGEgbG9jaywgZm9yIGFs
bCByZW5kZXJpbmcgb3IganVzdCBmb3Igd3JpdGVzIGV0YykKKyAqIEB0aW1lb3V0OiBob3cgbG9u
ZyB0byB3YWl0CisgKi8KK2ludAoraTkxNV9nZW1fb2JqZWN0X3dhaXQoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKKwkJICAgICB1bnNpZ25lZCBpbnQgZmxhZ3MsCisJCSAgICAgbG9u
ZyB0aW1lb3V0KQoreworCW1pZ2h0X3NsZWVwKCk7CisJR0VNX0JVR19PTih0aW1lb3V0IDwgMCk7
CisKKwl0aW1lb3V0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfcmVzZXJ2YXRpb24ob2JqLT5yZXN2
LCBmbGFncywgdGltZW91dCk7CisJcmV0dXJuIHRpbWVvdXQgPCAwID8gdGltZW91dCA6IDA7Cit9
CisKK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBuc2Vjc190b19qaWZmaWVzX3RpbWVvdXQo
Y29uc3QgdTY0IG4pCit7CisJLyogbnNlY3NfdG9famlmZmllczY0KCkgZG9lcyBub3QgZ3VhcmQg
YWdhaW5zdCBvdmVyZmxvdyAqLworCWlmIChOU0VDX1BFUl9TRUMgJSBIWiAmJgorCSAgICBkaXZf
dTY0KG4sIE5TRUNfUEVSX1NFQykgPj0gTUFYX0pJRkZZX09GRlNFVCAvIEhaKQorCQlyZXR1cm4g
TUFYX0pJRkZZX09GRlNFVDsKKworCXJldHVybiBtaW5fdCh1NjQsIE1BWF9KSUZGWV9PRkZTRVQs
IG5zZWNzX3RvX2ppZmZpZXM2NChuKSArIDEpOworfQorCitzdGF0aWMgdW5zaWduZWQgbG9uZyB0
b193YWl0X3RpbWVvdXQoczY0IHRpbWVvdXRfbnMpCit7CisJaWYgKHRpbWVvdXRfbnMgPCAwKQor
CQlyZXR1cm4gTUFYX1NDSEVEVUxFX1RJTUVPVVQ7CisKKwlpZiAodGltZW91dF9ucyA9PSAwKQor
CQlyZXR1cm4gMDsKKworCXJldHVybiBuc2Vjc190b19qaWZmaWVzX3RpbWVvdXQodGltZW91dF9u
cyk7Cit9CisKKy8qKgorICogaTkxNV9nZW1fd2FpdF9pb2N0bCAtIGltcGxlbWVudHMgRFJNX0lP
Q1RMX0k5MTVfR0VNX1dBSVQKKyAqIEBkZXY6IGRybSBkZXZpY2UgcG9pbnRlcgorICogQGRhdGE6
IGlvY3RsIGRhdGEgYmxvYgorICogQGZpbGU6IGRybSBmaWxlIHBvaW50ZXIKKyAqCisgKiBSZXR1
cm5zIDAgaWYgc3VjY2Vzc2Z1bCwgZWxzZSBhbiBlcnJvciBpcyByZXR1cm5lZCB3aXRoIHRoZSBy
ZW1haW5pbmcgdGltZSBpbgorICogdGhlIHRpbWVvdXQgcGFyYW1ldGVyLgorICogIC1FVElNRTog
b2JqZWN0IGlzIHN0aWxsIGJ1c3kgYWZ0ZXIgdGltZW91dAorICogIC1FUkVTVEFSVFNZUzogc2ln
bmFsIGludGVycnVwdGVkIHRoZSB3YWl0CisgKiAgLUVOT05FTlQ6IG9iamVjdCBkb2Vzbid0IGV4
aXN0CisgKiBBbHNvIHBvc3NpYmxlLCBidXQgcmFyZToKKyAqICAtRUFHQUlOOiBpbmNvbXBsZXRl
LCByZXN0YXJ0IHN5c2NhbGwKKyAqICAtRU5PTUVNOiBkYW1uCisgKiAgLUVOT0RFVjogSW50ZXJu
YWwgSVJRIGZhaWwKKyAqICAtRT86IFRoZSBhZGQgcmVxdWVzdCBmYWlsZWQKKyAqCisgKiBUaGUg
d2FpdCBpb2N0bCB3aXRoIGEgdGltZW91dCBvZiAwIHJlaW1wbGVtZW50cyB0aGUgYnVzeSBpb2N0
bC4gV2l0aCBhbnkKKyAqIG5vbi16ZXJvIHRpbWVvdXQgcGFyYW1ldGVyIHRoZSB3YWl0IGlvY3Rs
IHdpbGwgd2FpdCBmb3IgdGhlIGdpdmVuIG51bWJlciBvZgorICogbmFub3NlY29uZHMgb24gYW4g
b2JqZWN0IGJlY29taW5nIHVuYnVzeS4gU2luY2UgdGhlIHdhaXQgaXRzZWxmIGRvZXMgc28KKyAq
IHdpdGhvdXQgaG9sZGluZyBzdHJ1Y3RfbXV0ZXggdGhlIG9iamVjdCBtYXkgYmVjb21lIHJlLWJ1
c2llZCBiZWZvcmUgdGhpcworICogZnVuY3Rpb24gY29tcGxldGVzLiBBIHNpbWlsYXIgYnV0IHNo
b3J0ZXIgKiByYWNlIGNvbmRpdGlvbiBleGlzdHMgaW4gdGhlIGJ1c3kKKyAqIGlvY3RsCisgKi8K
K2ludAoraTkxNV9nZW1fd2FpdF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpk
YXRhLCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV93YWl0
ICphcmdzID0gZGF0YTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCWt0aW1l
X3Qgc3RhcnQ7CisJbG9uZyByZXQ7CisKKwlpZiAoYXJncy0+ZmxhZ3MgIT0gMCkKKwkJcmV0dXJu
IC1FSU5WQUw7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwKGZpbGUsIGFyZ3MtPmJv
X2hhbmRsZSk7CisJaWYgKCFvYmopCisJCXJldHVybiAtRU5PRU5UOworCisJc3RhcnQgPSBrdGlt
ZV9nZXQoKTsKKworCXJldCA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwKKwkJCQkgICBJOTE1
X1dBSVRfSU5URVJSVVBUSUJMRSB8CisJCQkJICAgSTkxNV9XQUlUX1BSSU9SSVRZIHwKKwkJCQkg
ICBJOTE1X1dBSVRfQUxMLAorCQkJCSAgIHRvX3dhaXRfdGltZW91dChhcmdzLT50aW1lb3V0X25z
KSk7CisKKwlpZiAoYXJncy0+dGltZW91dF9ucyA+IDApIHsKKwkJYXJncy0+dGltZW91dF9ucyAt
PSBrdGltZV90b19ucyhrdGltZV9zdWIoa3RpbWVfZ2V0KCksIHN0YXJ0KSk7CisJCWlmIChhcmdz
LT50aW1lb3V0X25zIDwgMCkKKwkJCWFyZ3MtPnRpbWVvdXRfbnMgPSAwOworCisJCS8qCisJCSAq
IEFwcGFyZW50bHkga3RpbWUgaXNuJ3QgYWNjdXJhdGUgZW5vdWdoIGFuZCBvY2Nhc2lvbmFsbHkg
aGFzIGEKKwkJICogYml0IG9mIG1pc21hdGNoIGluIHRoZSBqaWZmaWVzPC0+bnNlY3M8LT5rdGlt
ZSBsb29wLiBTbyBwYXRjaAorCQkgKiB0aGluZ3MgdXAgdG8gbWFrZSB0aGUgdGVzdCBoYXBweS4g
V2UgYWxsb3cgdXAgdG8gMSBqaWZmeS4KKwkJICoKKwkJICogVGhpcyBpcyBhIHJlZ3Jlc3Npb24g
ZnJvbSB0aGUgdGltZXNwZWMtPmt0aW1lIGNvbnZlcnNpb24uCisJCSAqLworCQlpZiAocmV0ID09
IC1FVElNRSAmJiAhbnNlY3NfdG9famlmZmllcyhhcmdzLT50aW1lb3V0X25zKSkKKwkJCWFyZ3Mt
PnRpbWVvdXRfbnMgPSAwOworCisJCS8qIEFza2VkIHRvIHdhaXQgYmV5b25kIHRoZSBqaWZmaWUv
c2NoZWR1bGVyIHByZWNpc2lvbj8gKi8KKwkJaWYgKHJldCA9PSAtRVRJTUUgJiYgYXJncy0+dGlt
ZW91dF9ucykKKwkJCXJldCA9IC1FQUdBSU47CisJfQorCisJaTkxNV9nZW1fb2JqZWN0X3B1dChv
YmopOworCXJldHVybiByZXQ7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA4OWZiZjk5
MjdlNmMuLjRkYjVhZTE0Njk4YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yNzQ3LDEz
ICsyNzQ3LDYgQEAgdm9pZCBpOTE1X2dlbV9zdXNwZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2VtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpOwogdm9pZCBpOTE1X2dlbV9yZXN1bWUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQoc3RydWN0IHZt
X2ZhdWx0ICp2bWYpOwotaW50IGk5MTVfZ2VtX29iamVjdF93YWl0KHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCi0JCQkgdW5zaWduZWQgaW50IGZsYWdzLAotCQkJIGxvbmcgdGltZW91
dCk7Ci1pbnQgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKLQkJCQkgIHVuc2lnbmVkIGludCBmbGFncywKLQkJCQkgIGNvbnN0IHN0
cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpOwotI2RlZmluZSBJOTE1X1BSSU9SSVRZX0RJU1BM
QVkgSTkxNV9VU0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfTUFYKQogCiBpbnQgaTkxNV9nZW1f
b3BlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxl
KTsKIHZvaWQgaTkxNV9nZW1fcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZDBiY2ZlZjU2MDhj
Li41OTc2MjRiZDkxZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTI1LDE3OCArMTI1
LDYgQEAgaW50IGk5MTVfZ2VtX29iamVjdF91bmJpbmQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKIAlyZXR1cm4gcmV0OwogfQogCi1zdGF0aWMgbG9uZwotaTkxNV9nZW1fb2JqZWN0
X3dhaXRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsCi0JCQkgICB1bnNpZ25lZCBpbnQg
ZmxhZ3MsCi0JCQkgICBsb25nIHRpbWVvdXQpCi17Ci0JQlVJTERfQlVHX09OKEk5MTVfV0FJVF9J
TlRFUlJVUFRJQkxFICE9IDB4MSk7Ci0KLQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lH
TkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKLQkJcmV0dXJuIHRpbWVvdXQ7Ci0KLQlpZiAoZG1h
X2ZlbmNlX2lzX2k5MTUoZmVuY2UpKQotCQlyZXR1cm4gaTkxNV9yZXF1ZXN0X3dhaXQodG9fcmVx
dWVzdChmZW5jZSksIGZsYWdzLCB0aW1lb3V0KTsKLQotCXJldHVybiBkbWFfZmVuY2Vfd2FpdF90
aW1lb3V0KGZlbmNlLAotCQkJCSAgICAgIGZsYWdzICYgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUs
Ci0JCQkJICAgICAgdGltZW91dCk7Ci19Ci0KLXN0YXRpYyBsb25nCi1pOTE1X2dlbV9vYmplY3Rf
d2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2LAotCQkJCSB1
bnNpZ25lZCBpbnQgZmxhZ3MsCi0JCQkJIGxvbmcgdGltZW91dCkKLXsKLQl1bnNpZ25lZCBpbnQg
c2VxID0gX19yZWFkX3NlcWNvdW50X2JlZ2luKCZyZXN2LT5zZXEpOwotCXN0cnVjdCBkbWFfZmVu
Y2UgKmV4Y2w7Ci0JYm9vbCBwcnVuZV9mZW5jZXMgPSBmYWxzZTsKLQotCWlmIChmbGFncyAmIEk5
MTVfV0FJVF9BTEwpIHsKLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsKLQkJdW5zaWduZWQg
aW50IGNvdW50LCBpOwotCQlpbnQgcmV0OwotCi0JCXJldCA9IHJlc2VydmF0aW9uX29iamVjdF9n
ZXRfZmVuY2VzX3JjdShyZXN2LAotCQkJCQkJCSZleGNsLCAmY291bnQsICZzaGFyZWQpOwotCQlp
ZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQotCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykg
ewotCQkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKLQkJ
CQkJCQkgICAgIGZsYWdzLCB0aW1lb3V0KTsKLQkJCWlmICh0aW1lb3V0IDwgMCkKLQkJCQlicmVh
azsKLQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQl9Ci0KLQkJZm9yICg7IGkgPCBj
b3VudDsgaSsrKQotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwotCQlrZnJlZShzaGFyZWQp
OwotCi0JCS8qCi0JCSAqIElmIGJvdGggc2hhcmVkIGZlbmNlcyBhbmQgYW4gZXhjbHVzaXZlIGZl
bmNlIGV4aXN0LAotCQkgKiB0aGVuIGJ5IGNvbnN0cnVjdGlvbiB0aGUgc2hhcmVkIGZlbmNlcyBt
dXN0IGJlIGxhdGVyCi0JCSAqIHRoYW4gdGhlIGV4Y2x1c2l2ZSBmZW5jZS4gSWYgd2Ugc3VjY2Vz
c2Z1bGx5IHdhaXQgZm9yCi0JCSAqIGFsbCB0aGUgc2hhcmVkIGZlbmNlcywgd2Uga25vdyB0aGF0
IHRoZSBleGNsdXNpdmUgZmVuY2UKLQkJICogbXVzdCBhbGwgYmUgc2lnbmFsZWQuIElmIGFsbCB0
aGUgc2hhcmVkIGZlbmNlcyBhcmUKLQkJICogc2lnbmFsZWQsIHdlIGNhbiBwcnVuZSB0aGUgYXJy
YXkgYW5kIHJlY292ZXIgdGhlCi0JCSAqIGZsb2F0aW5nIHJlZmVyZW5jZXMgb24gdGhlIGZlbmNl
cy9yZXF1ZXN0cy4KLQkJICovCi0JCXBydW5lX2ZlbmNlcyA9IGNvdW50ICYmIHRpbWVvdXQgPj0g
MDsKLQl9IGVsc2UgewotCQlleGNsID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9leGNsX3JjdShy
ZXN2KTsKLQl9Ci0KLQlpZiAoZXhjbCAmJiB0aW1lb3V0ID49IDApCi0JCXRpbWVvdXQgPSBpOTE1
X2dlbV9vYmplY3Rfd2FpdF9mZW5jZShleGNsLCBmbGFncywgdGltZW91dCk7Ci0KLQlkbWFfZmVu
Y2VfcHV0KGV4Y2wpOwotCi0JLyoKLQkgKiBPcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVu
Y2VzIGlmZiB3ZSBrbm93IHRoZXkgaGF2ZSAqYWxsKiBiZWVuCi0JICogc2lnbmFsZWQgYW5kIHRo
YXQgdGhlIHJlc2VydmF0aW9uIG9iamVjdCBoYXMgbm90IGJlZW4gY2hhbmdlZCAoaS5lLgotCSAq
IG5vIG5ldyBmZW5jZXMgaGF2ZSBiZWVuIGFkZGVkKS4KLQkgKi8KLQlpZiAocHJ1bmVfZmVuY2Vz
ICYmICFfX3JlYWRfc2VxY291bnRfcmV0cnkoJnJlc3YtPnNlcSwgc2VxKSkgewotCQlpZiAocmVz
ZXJ2YXRpb25fb2JqZWN0X3RyeWxvY2socmVzdikpIHsKLQkJCWlmICghX19yZWFkX3NlcWNvdW50
X3JldHJ5KCZyZXN2LT5zZXEsIHNlcSkpCi0JCQkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9leGNs
X2ZlbmNlKHJlc3YsIE5VTEwpOwotCQkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhyZXN2KTsK
LQkJfQotCX0KLQotCXJldHVybiB0aW1lb3V0OwotfQotCi1zdGF0aWMgdm9pZCBfX2ZlbmNlX3Nl
dF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKLQkJCQkgY29uc3Qgc3RydWN0IGk5
MTVfc2NoZWRfYXR0ciAqYXR0cikKLXsKLQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKLQlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0KLQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KGZlbmNlKSB8fCAhZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpKQotCQlyZXR1cm47Ci0KLQlycSA9
IHRvX3JlcXVlc3QoZmVuY2UpOwotCWVuZ2luZSA9IHJxLT5lbmdpbmU7Ci0KLQlsb2NhbF9iaF9k
aXNhYmxlKCk7Ci0JcmN1X3JlYWRfbG9jaygpOyAvKiBSQ1Ugc2VyaWFsaXNhdGlvbiBmb3Igc2V0
LXdlZGdlZCBwcm90ZWN0aW9uICovCi0JaWYgKGVuZ2luZS0+c2NoZWR1bGUpCi0JCWVuZ2luZS0+
c2NoZWR1bGUocnEsIGF0dHIpOwotCXJjdV9yZWFkX3VubG9jaygpOwotCWxvY2FsX2JoX2VuYWJs
ZSgpOyAvKiBraWNrIHRoZSB0YXNrbGV0cyBpZiBxdWV1ZXMgd2VyZSByZXByaW9yaXRpc2VkICov
Ci19Ci0KLXN0YXRpYyB2b2lkIGZlbmNlX3NldF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwKLQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQotewot
CS8qIFJlY3Vyc2Ugb25jZSBpbnRvIGEgZmVuY2UtYXJyYXkgKi8KLQlpZiAoZG1hX2ZlbmNlX2lz
X2FycmF5KGZlbmNlKSkgewotCQlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSA9IHRvX2Rt
YV9mZW5jZV9hcnJheShmZW5jZSk7Ci0JCWludCBpOwotCi0JCWZvciAoaSA9IDA7IGkgPCBhcnJh
eS0+bnVtX2ZlbmNlczsgaSsrKQotCQkJX19mZW5jZV9zZXRfcHJpb3JpdHkoYXJyYXktPmZlbmNl
c1tpXSwgYXR0cik7Ci0JfSBlbHNlIHsKLQkJX19mZW5jZV9zZXRfcHJpb3JpdHkoZmVuY2UsIGF0
dHIpOwotCX0KLX0KLQotaW50Ci1pOTE1X2dlbV9vYmplY3Rfd2FpdF9wcmlvcml0eShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAotCQkJICAgICAgdW5zaWduZWQgaW50IGZsYWdzLAot
CQkJICAgICAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0cikKLXsKLQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpleGNsOwotCi0JaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewotCQlzdHJ1
Y3QgZG1hX2ZlbmNlICoqc2hhcmVkOwotCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Ci0JCWludCBy
ZXQ7Ci0KLQkJcmV0ID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNfcmN1KG9iai0+cmVz
diwKLQkJCQkJCQkmZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKLQkJaWYgKHJldCkKLQkJCXJldHVy
biByZXQ7Ci0KLQkJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKyspIHsKLQkJCWZlbmNlX3NldF9w
cmlvcml0eShzaGFyZWRbaV0sIGF0dHIpOwotCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwot
CQl9Ci0KLQkJa2ZyZWUoc2hhcmVkKTsKLQl9IGVsc2UgewotCQlleGNsID0gcmVzZXJ2YXRpb25f
b2JqZWN0X2dldF9leGNsX3JjdShvYmotPnJlc3YpOwotCX0KLQotCWlmIChleGNsKSB7Ci0JCWZl
bmNlX3NldF9wcmlvcml0eShleGNsLCBhdHRyKTsKLQkJZG1hX2ZlbmNlX3B1dChleGNsKTsKLQl9
Ci0JcmV0dXJuIDA7Ci19Ci0KLS8qKgotICogV2FpdHMgZm9yIHJlbmRlcmluZyB0byB0aGUgb2Jq
ZWN0IHRvIGJlIGNvbXBsZXRlZAotICogQG9iajogaTkxNSBnZW0gb2JqZWN0Ci0gKiBAZmxhZ3M6
IGhvdyB0byB3YWl0ICh1bmRlciBhIGxvY2ssIGZvciBhbGwgcmVuZGVyaW5nIG9yIGp1c3QgZm9y
IHdyaXRlcyBldGMpCi0gKiBAdGltZW91dDogaG93IGxvbmcgdG8gd2FpdAotICovCi1pbnQKLWk5
MTVfZ2VtX29iamVjdF93YWl0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCi0JCSAg
ICAgdW5zaWduZWQgaW50IGZsYWdzLAotCQkgICAgIGxvbmcgdGltZW91dCkKLXsKLQltaWdodF9z
bGVlcCgpOwotCUdFTV9CVUdfT04odGltZW91dCA8IDApOwotCi0JdGltZW91dCA9IGk5MTVfZ2Vt
X29iamVjdF93YWl0X3Jlc2VydmF0aW9uKG9iai0+cmVzdiwgZmxhZ3MsIHRpbWVvdXQpOwotCXJl
dHVybiB0aW1lb3V0IDwgMCA/IHRpbWVvdXQgOiAwOwotfQotCiBzdGF0aWMgaW50CiBpOTE1X2dl
bV9waHlzX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkgICAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fcHdyaXRlICphcmdzLApAQCAtMTA5Nyw4OCArOTI1LDYgQEAgdm9p
ZCBpOTE1X2dlbV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCX0KIH0KIAotc3RhdGljIHVuc2lnbmVkIGxvbmcgdG9fd2FpdF90aW1lb3V0KHM2NCB0
aW1lb3V0X25zKQotewotCWlmICh0aW1lb3V0X25zIDwgMCkKLQkJcmV0dXJuIE1BWF9TQ0hFRFVM
RV9USU1FT1VUOwotCi0JaWYgKHRpbWVvdXRfbnMgPT0gMCkKLQkJcmV0dXJuIDA7Ci0KLQlyZXR1
cm4gbnNlY3NfdG9famlmZmllc190aW1lb3V0KHRpbWVvdXRfbnMpOwotfQotCi0vKioKLSAqIGk5
MTVfZ2VtX3dhaXRfaW9jdGwgLSBpbXBsZW1lbnRzIERSTV9JT0NUTF9JOTE1X0dFTV9XQUlUCi0g
KiBAZGV2OiBkcm0gZGV2aWNlIHBvaW50ZXIKLSAqIEBkYXRhOiBpb2N0bCBkYXRhIGJsb2IKLSAq
IEBmaWxlOiBkcm0gZmlsZSBwb2ludGVyCi0gKgotICogUmV0dXJucyAwIGlmIHN1Y2Nlc3NmdWws
IGVsc2UgYW4gZXJyb3IgaXMgcmV0dXJuZWQgd2l0aCB0aGUgcmVtYWluaW5nIHRpbWUgaW4KLSAq
IHRoZSB0aW1lb3V0IHBhcmFtZXRlci4KLSAqICAtRVRJTUU6IG9iamVjdCBpcyBzdGlsbCBidXN5
IGFmdGVyIHRpbWVvdXQKLSAqICAtRVJFU1RBUlRTWVM6IHNpZ25hbCBpbnRlcnJ1cHRlZCB0aGUg
d2FpdAotICogIC1FTk9ORU5UOiBvYmplY3QgZG9lc24ndCBleGlzdAotICogQWxzbyBwb3NzaWJs
ZSwgYnV0IHJhcmU6Ci0gKiAgLUVBR0FJTjogaW5jb21wbGV0ZSwgcmVzdGFydCBzeXNjYWxsCi0g
KiAgLUVOT01FTTogZGFtbgotICogIC1FTk9ERVY6IEludGVybmFsIElSUSBmYWlsCi0gKiAgLUU/
OiBUaGUgYWRkIHJlcXVlc3QgZmFpbGVkCi0gKgotICogVGhlIHdhaXQgaW9jdGwgd2l0aCBhIHRp
bWVvdXQgb2YgMCByZWltcGxlbWVudHMgdGhlIGJ1c3kgaW9jdGwuIFdpdGggYW55Ci0gKiBub24t
emVybyB0aW1lb3V0IHBhcmFtZXRlciB0aGUgd2FpdCBpb2N0bCB3aWxsIHdhaXQgZm9yIHRoZSBn
aXZlbiBudW1iZXIgb2YKLSAqIG5hbm9zZWNvbmRzIG9uIGFuIG9iamVjdCBiZWNvbWluZyB1bmJ1
c3kuIFNpbmNlIHRoZSB3YWl0IGl0c2VsZiBkb2VzIHNvCi0gKiB3aXRob3V0IGhvbGRpbmcgc3Ry
dWN0X211dGV4IHRoZSBvYmplY3QgbWF5IGJlY29tZSByZS1idXNpZWQgYmVmb3JlIHRoaXMKLSAq
IGZ1bmN0aW9uIGNvbXBsZXRlcy4gQSBzaW1pbGFyIGJ1dCBzaG9ydGVyICogcmFjZSBjb25kaXRp
b24gZXhpc3RzIGluIHRoZSBidXN5Ci0gKiBpb2N0bAotICovCi1pbnQKLWk5MTVfZ2VtX3dhaXRf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwgc3RydWN0IGRybV9maWxl
ICpmaWxlKQotewotCXN0cnVjdCBkcm1faTkxNV9nZW1fd2FpdCAqYXJncyA9IGRhdGE7Ci0Jc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlrdGltZV90IHN0YXJ0OwotCWxvbmcgcmV0
OwotCi0JaWYgKGFyZ3MtPmZsYWdzICE9IDApCi0JCXJldHVybiAtRUlOVkFMOwotCi0Jb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBhcmdzLT5ib19oYW5kbGUpOwotCWlmICghb2Jq
KQotCQlyZXR1cm4gLUVOT0VOVDsKLQotCXN0YXJ0ID0ga3RpbWVfZ2V0KCk7Ci0KLQlyZXQgPSBp
OTE1X2dlbV9vYmplY3Rfd2FpdChvYmosCi0JCQkJICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUg
fAotCQkJCSAgIEk5MTVfV0FJVF9QUklPUklUWSB8Ci0JCQkJICAgSTkxNV9XQUlUX0FMTCwKLQkJ
CQkgICB0b193YWl0X3RpbWVvdXQoYXJncy0+dGltZW91dF9ucykpOwotCi0JaWYgKGFyZ3MtPnRp
bWVvdXRfbnMgPiAwKSB7Ci0JCWFyZ3MtPnRpbWVvdXRfbnMgLT0ga3RpbWVfdG9fbnMoa3RpbWVf
c3ViKGt0aW1lX2dldCgpLCBzdGFydCkpOwotCQlpZiAoYXJncy0+dGltZW91dF9ucyA8IDApCi0J
CQlhcmdzLT50aW1lb3V0X25zID0gMDsKLQotCQkvKgotCQkgKiBBcHBhcmVudGx5IGt0aW1lIGlz
bid0IGFjY3VyYXRlIGVub3VnaCBhbmQgb2NjYXNpb25hbGx5IGhhcyBhCi0JCSAqIGJpdCBvZiBt
aXNtYXRjaCBpbiB0aGUgamlmZmllczwtPm5zZWNzPC0+a3RpbWUgbG9vcC4gU28gcGF0Y2gKLQkJ
ICogdGhpbmdzIHVwIHRvIG1ha2UgdGhlIHRlc3QgaGFwcHkuIFdlIGFsbG93IHVwIHRvIDEgamlm
ZnkuCi0JCSAqCi0JCSAqIFRoaXMgaXMgYSByZWdyZXNzaW9uIGZyb20gdGhlIHRpbWVzcGVjLT5r
dGltZSBjb252ZXJzaW9uLgotCQkgKi8KLQkJaWYgKHJldCA9PSAtRVRJTUUgJiYgIW5zZWNzX3Rv
X2ppZmZpZXMoYXJncy0+dGltZW91dF9ucykpCi0JCQlhcmdzLT50aW1lb3V0X25zID0gMDsKLQot
CQkvKiBBc2tlZCB0byB3YWl0IGJleW9uZCB0aGUgamlmZmllL3NjaGVkdWxlciBwcmVjaXNpb24/
ICovCi0JCWlmIChyZXQgPT0gLUVUSU1FICYmIGFyZ3MtPnRpbWVvdXRfbnMpCi0JCQlyZXQgPSAt
RUFHQUlOOwotCX0KLQotCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKLQlyZXR1cm4gcmV0Owot
fQotCiBzdGF0aWMgaW50IHdhaXRfZm9yX2VuZ2luZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCiB7CiAJaWYgKHdhaXRfZm9yKGludGVsX2VuZ2luZXNfYXJlX2lkbGUoaTkxNSksIEk5
MTVfSURMRV9FTkdJTkVTX1RJTUVPVVQpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3V0aWxzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKaW5k
ZXggZTUyODY2MDg0ODkxLi4yOTg3MjE5YTYzMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmgKQEAgLTIyMCwxNiArMjIwLDYgQEAgc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIG1zZWNz
X3RvX2ppZmZpZXNfdGltZW91dChjb25zdCB1bnNpZ25lZCBpbnQgbSkKIAlyZXR1cm4gbWluX3Qo
dW5zaWduZWQgbG9uZywgTUFYX0pJRkZZX09GRlNFVCwgaiArIDEpOwogfQogCi1zdGF0aWMgaW5s
aW5lIHVuc2lnbmVkIGxvbmcgbnNlY3NfdG9famlmZmllc190aW1lb3V0KGNvbnN0IHU2NCBuKQot
ewotCS8qIG5zZWNzX3RvX2ppZmZpZXM2NCgpIGRvZXMgbm90IGd1YXJkIGFnYWluc3Qgb3ZlcmZs
b3cgKi8KLQlpZiAoTlNFQ19QRVJfU0VDICUgSFogJiYKLQkgICAgZGl2X3U2NChuLCBOU0VDX1BF
Ul9TRUMpID49IE1BWF9KSUZGWV9PRkZTRVQgLyBIWikKLQkJcmV0dXJuIE1BWF9KSUZGWV9PRkZT
RVQ7Ci0KLSAgICAgICAgcmV0dXJuIG1pbl90KHU2NCwgTUFYX0pJRkZZX09GRlNFVCwgbnNlY3Nf
dG9famlmZmllczY0KG4pICsgMSk7Ci19Ci0KIC8qCiAgKiBJZiB5b3UgbmVlZCB0byB3YWl0IFgg
bWlsbGlzZWNvbmRzIGJldHdlZW4gZXZlbnRzIEEgYW5kIEIsIGJ1dCBldmVudCBCCiAgKiBkb2Vz
bid0IGhhcHBlbiBleGFjdGx5IGFmdGVyIGV2ZW50IEEsIHlvdSByZWNvcmQgdGhlIHRpbWVzdGFt
cCAoamlmZmllcykgb2YKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
