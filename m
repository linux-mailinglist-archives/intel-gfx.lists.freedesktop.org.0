Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D2A67992
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3366E3D3;
	Sat, 13 Jul 2019 10:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395086E3D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:00:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17265480-1500050 
 for multiple; Sat, 13 Jul 2019 11:00:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Jul 2019 11:00:15 +0100
Message-Id: <20190713100016.8026-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190713100016.8026-1-chris@chris-wilson.co.uk>
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/guc: prefer intel_gt in guc
 interrupt functions
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KCldlIGNhbiBnZXQgcmlkIG9mIGEgZmV3IG1vcmUgZ3VjX3RvX2k5MTUgYW5kIHN0YXJ0
IGNvbXBhcnRtZW50YWxpemluZwppbnRlcnJ1cHQgbWFuYWdlbWVudCBhIGJpdCBtb3JlLiBXZSBz
aG91bGQgYmUgYWJsZSB0byBtb3ZlIG1vcmUgY29kZSBpbgp0aGUgZnV0dXJlIG9uY2UgdGhlIGd0
X3BtIGNvZGUgaXMgYWxzbyBtb3ZlZCBhY3Jvc3MgdG8gZ3QuCgpTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggfCAgMiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgIDEgLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICB8IDczICsrKysrKysrKysrKystLS0tLS0tLS0tLQog
MyBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAppbmRleCBkM2I5MGM2ZWU4Y2YuLjM0
ZDRhODY4ZTRmMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
dHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCkBA
IC03NCw2ICs3NCw4IEBAIHN0cnVjdCBpbnRlbF9ndCB7CiAKIAl1MzIgcG1faW1yOwogCXUzMiBw
bV9pZXI7CisKKwl1MzIgcG1fZ3VjX2V2ZW50czsKIH07CiAKIGVudW0gaW50ZWxfZ3Rfc2NyYXRj
aF9maWVsZCB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA4NzAwNDUyY2IxYjMuLjk1OTU5
OWRmYTU3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNDAwLDcgKzE0MDAsNiBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJfTsKIAl1MzIgZ3RfaXJxX21hc2s7CiAJdTMyIHBt
X3Jwc19ldmVudHM7Ci0JdTMyIHBtX2d1Y19ldmVudHM7CiAJdTMyIHBpcGVzdGF0X2lycV9tYXNr
W0k5MTVfTUFYX1BJUEVTXTsKIAogCXN0cnVjdCBpOTE1X2hvdHBsdWcgaG90cGx1ZzsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCmluZGV4IDc4Yzc0OGNiOWRmOC4uOTFmOGM4MTAyOGMzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKQEAgLTQyLDYgKzQyLDggQEAKICNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX2xwZV9hdWRpby5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfcHNyLmgiCiAKKyNpbmNs
dWRlICJndC9pbnRlbF9ndC5oIgorCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJp
OTE1X2lycS5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKQEAgLTYwMSw4NSArNjAzLDkwIEBA
IHZvaWQgZ2VuNl9kaXNhYmxlX3Jwc19pbnRlcnJ1cHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAogdm9pZCBnZW45X3Jlc2V0X2d1Y19pbnRlcnJ1cHRzKHN0cnVjdCBpbnRl
bF9ndWMgKmd1YykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBndWNf
dG9faTkxNShndWMpOworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCi0JYXNzZXJ0X3JwbV93
YWtlbG9ja19oZWxkKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CisJYXNzZXJ0X3JwbV93YWtlbG9j
a19oZWxkKCZpOTE1LT5ydW50aW1lX3BtKTsKIAotCXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT5p
cnFfbG9jayk7Ci0JZ2VuNl9yZXNldF9wbV9paXIoZGV2X3ByaXYsIGRldl9wcml2LT5wbV9ndWNf
ZXZlbnRzKTsKLQlzcGluX3VubG9ja19pcnEoJmRldl9wcml2LT5pcnFfbG9jayk7CisJc3Bpbl9s
b2NrX2lycSgmaTkxNS0+aXJxX2xvY2spOworCWdlbjZfcmVzZXRfcG1faWlyKGk5MTUsIGd0LT5w
bV9ndWNfZXZlbnRzKTsKKwlzcGluX3VubG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsKIH0KIAog
dm9pZCBnZW45X2VuYWJsZV9ndWNfaW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsK
KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7CisJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKIAotCWFzc2VydF9ycG1fd2FrZWxvY2tfaGVsZCgm
ZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCWFzc2VydF9ycG1fd2FrZWxvY2tfaGVsZCgmaTkxNS0+
cnVudGltZV9wbSk7CiAKLQlzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOworCXNw
aW5fbG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsKIAlpZiAoIWd1Yy0+aW50ZXJydXB0cy5lbmFi
bGVkKSB7Ci0JCVdBUk5fT05fT05DRShJOTE1X1JFQUQoZ2VuNl9wbV9paXIoZGV2X3ByaXYpKSAm
Ci0JCQkJICAgICAgIGRldl9wcml2LT5wbV9ndWNfZXZlbnRzKTsKKwkJV0FSTl9PTl9PTkNFKGlu
dGVsX3VuY29yZV9yZWFkKGd0LT51bmNvcmUsIGdlbjZfcG1faWlyKGk5MTUpKSAmCisJCQkgICAg
IGd0LT5wbV9ndWNfZXZlbnRzKTsKIAkJZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQgPSB0cnVlOwot
CQlnZW42X2VuYWJsZV9wbV9pcnEoJmRldl9wcml2LT5ndCwgZGV2X3ByaXYtPnBtX2d1Y19ldmVu
dHMpOworCQlnZW42X2VuYWJsZV9wbV9pcnEoZ3QsIGd0LT5wbV9ndWNfZXZlbnRzKTsKIAl9Ci0J
c3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOworCXNwaW5fdW5sb2NrX2lycSgm
aTkxNS0+aXJxX2xvY2spOwogfQogCiB2b2lkIGdlbjlfZGlzYWJsZV9ndWNfaW50ZXJydXB0cyhz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gZ3VjX3RvX2k5MTUoZ3VjKTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0
KGd1Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKIAotCWFz
c2VydF9ycG1fd2FrZWxvY2tfaGVsZCgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCWFzc2VydF9y
cG1fd2FrZWxvY2tfaGVsZCgmaTkxNS0+cnVudGltZV9wbSk7CiAKLQlzcGluX2xvY2tfaXJxKCZk
ZXZfcHJpdi0+aXJxX2xvY2spOworCXNwaW5fbG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsKIAln
dWMtPmludGVycnVwdHMuZW5hYmxlZCA9IGZhbHNlOwogCi0JZ2VuNl9kaXNhYmxlX3BtX2lycSgm
ZGV2X3ByaXYtPmd0LCBkZXZfcHJpdi0+cG1fZ3VjX2V2ZW50cyk7CisJZ2VuNl9kaXNhYmxlX3Bt
X2lycShndCwgZ3QtPnBtX2d1Y19ldmVudHMpOwogCi0Jc3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJp
di0+aXJxX2xvY2spOwotCWludGVsX3N5bmNocm9uaXplX2lycShkZXZfcHJpdik7CisJc3Bpbl91
bmxvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7CisJaW50ZWxfc3luY2hyb25pemVfaXJxKGk5MTUp
OwogCiAJZ2VuOV9yZXNldF9ndWNfaW50ZXJydXB0cyhndWMpOwogfQogCiB2b2lkIGdlbjExX3Jl
c2V0X2d1Y19pbnRlcnJ1cHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHsKLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7CisJc3RydWN0IGludGVsX2d0
ICpndCA9IGd1Y190b19ndChndWMpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
Z3QtPmk5MTU7CiAKIAlzcGluX2xvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Ci0JZ2VuMTFfcmVz
ZXRfb25lX2lpcigmaTkxNS0+Z3QsIDAsIEdFTjExX0dVQyk7CisJZ2VuMTFfcmVzZXRfb25lX2lp
cihndCwgMCwgR0VOMTFfR1VDKTsKIAlzcGluX3VubG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsK
IH0KIAogdm9pZCBnZW4xMV9lbmFibGVfZ3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAq
Z3VjKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGd1Y190b19pOTE1
KGd1Yyk7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOwogCi0Jc3Bpbl9s
b2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKKwlzcGluX2xvY2tfaXJxKCZndC0+aTkxNS0+
aXJxX2xvY2spOwogCWlmICghZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQpIHsKIAkJdTMyIGV2ZW50
cyA9IFJFR19GSUVMRF9QUkVQKEVOR0lORTFfTUFTSywgR1VDX0lOVFJfR1VDMkhPU1QpOwogCi0J
CVdBUk5fT05fT05DRShnZW4xMV9yZXNldF9vbmVfaWlyKCZkZXZfcHJpdi0+Z3QsIDAsIEdFTjEx
X0dVQykpOwotCQlJOTE1X1dSSVRFKEdFTjExX0dVQ19TR19JTlRSX0VOQUJMRSwgZXZlbnRzKTsK
LQkJSTkxNV9XUklURShHRU4xMV9HVUNfU0dfSU5UUl9NQVNLLCB+ZXZlbnRzKTsKKwkJV0FSTl9P
Tl9PTkNFKGdlbjExX3Jlc2V0X29uZV9paXIoZ3QsIDAsIEdFTjExX0dVQykpOworCQlpbnRlbF91
bmNvcmVfd3JpdGUoZ3QtPnVuY29yZSwgR0VOMTFfR1VDX1NHX0lOVFJfRU5BQkxFLCBldmVudHMp
OworCQlpbnRlbF91bmNvcmVfd3JpdGUoZ3QtPnVuY29yZSwgR0VOMTFfR1VDX1NHX0lOVFJfTUFT
SywgfmV2ZW50cyk7CiAJCWd1Yy0+aW50ZXJydXB0cy5lbmFibGVkID0gdHJ1ZTsKIAl9Ci0Jc3Bp
bl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOworCXNwaW5fdW5sb2NrX2lycSgmZ3Qt
Pmk5MTUtPmlycV9sb2NrKTsKIH0KIAogdm9pZCBnZW4xMV9kaXNhYmxlX2d1Y19pbnRlcnJ1cHRz
KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSBndWNfdG9faTkxNShndWMpOworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9f
Z3QoZ3VjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCi0J
c3Bpbl9sb2NrX2lycSgmZGV2X3ByaXYtPmlycV9sb2NrKTsKKwlzcGluX2xvY2tfaXJxKCZpOTE1
LT5pcnFfbG9jayk7CiAJZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQgPSBmYWxzZTsKIAotCUk5MTVf
V1JJVEUoR0VOMTFfR1VDX1NHX0lOVFJfTUFTSywgfjApOwotCUk5MTVfV1JJVEUoR0VOMTFfR1VD
X1NHX0lOVFJfRU5BQkxFLCAwKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUoZ3QtPnVuY29yZSwgR0VO
MTFfR1VDX1NHX0lOVFJfTUFTSywgfjApOworCWludGVsX3VuY29yZV93cml0ZShndC0+dW5jb3Jl
LCBHRU4xMV9HVUNfU0dfSU5UUl9FTkFCTEUsIDApOwogCi0Jc3Bpbl91bmxvY2tfaXJxKCZkZXZf
cHJpdi0+aXJxX2xvY2spOwotCWludGVsX3N5bmNocm9uaXplX2lycShkZXZfcHJpdik7CisJc3Bp
bl91bmxvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7CisJaW50ZWxfc3luY2hyb25pemVfaXJxKGk5
MTUpOwogCiAJZ2VuMTFfcmVzZXRfZ3VjX2ludGVycnVwdHMoZ3VjKTsKIH0KQEAgLTQ3NTcsNyAr
NDc2NCw3IEBAIHZvaWQgaW50ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCiAJLyogcHJlLWdlbjExIHRoZSBndWMgaXJxcyBiaXRzIGFyZSBpbiB0aGUgdXBw
ZXIgMTYgYml0cyBvZiB0aGUgcG0gcmVnICovCiAJaWYgKEhBU19HVUNfU0NIRUQoZGV2X3ByaXYp
ICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKLQkJZGV2X3ByaXYtPnBtX2d1Y19ldmVudHMg
PSBHVUNfSU5UUl9HVUMySE9TVCA8PCAxNjsKKwkJZGV2X3ByaXYtPmd0LnBtX2d1Y19ldmVudHMg
PSBHVUNfSU5UUl9HVUMySE9TVCA8PCAxNjsKIAogCS8qIExldCdzIHRyYWNrIHRoZSBlbmFibGVk
IHJwcyBldmVudHMgKi8KIAlpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikpCi0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
