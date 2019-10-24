Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33361E3E03
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 23:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C786E7E5;
	Thu, 24 Oct 2019 21:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CDD6E7E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 21:16:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18955107-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 22:16:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 22:16:42 +0100
Message-Id: <20191024211642.7688-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024211642.7688-1-chris@chris-wilson.co.uk>
References: <20191024211642.7688-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Extract the GuC interrupt handlers
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

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpQdWxsIHRoZSBHdUMgaW50
ZXJydXB0IGhhbmRsZXJzIG91dCBvZiBpOTE1X2lycS5jLiBUaGV5IG5vdyB1c2UgdGhlIEdUCmlu
dGVycnVwdCBmYWNpbGl0aWVzIHJhdGhlciB0aGFuIHRoZSBjZW50cmFsIGRpc3BhdGNoLgoKQmFz
ZWQgb24gYSBwYXRjaCBieSBDaHJpcyBXaWxzb24uCgpTaWduZWQtb2ZmLWJ5OiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwg
ODkgKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jICAgICAgICB8IDkzIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5oICAgICAgICB8ICA5IC0tLQogMyBmaWxlcyBjaGFuZ2VkLCA4OSBp
bnNlcnRpb25zKCspLCAxMDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWMuYwppbmRleCAzN2Y3YmNiZjdkYWMuLmYxMjk1OTE4MjE4MiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKQEAgLTQsNiArNCw4IEBACiAgKi8KIAogI2luY2x1
ZGUgImd0L2ludGVsX2d0LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfaXJxLmgiCisjaW5jbHVk
ZSAiZ3QvaW50ZWxfZ3RfcG1faXJxLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3VjLmgiCiAjaW5jbHVk
ZSAiaW50ZWxfZ3VjX2Fkcy5oIgogI2luY2x1ZGUgImludGVsX2d1Y19zdWJtaXNzaW9uLmgiCkBA
IC03Nyw2ICs3OSw5MyBAQCB2b2lkIGludGVsX2d1Y19pbml0X3NlbmRfcmVncyhzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpCiAJZ3VjLT5zZW5kX3JlZ3MuZndfZG9tYWlucyA9IGZ3X2RvbWFpbnM7CiB9
CiAKK3N0YXRpYyB2b2lkIGdlbjlfcmVzZXRfZ3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1
YyAqZ3VjKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKKworCWFz
c2VydF9ycG1fd2FrZWxvY2tfaGVsZCgmZ3QtPmk5MTUtPnJ1bnRpbWVfcG0pOworCisJc3Bpbl9s
b2NrX2lycSgmZ3QtPmlycV9sb2NrKTsKKwlnZW42X2d0X3BtX3Jlc2V0X2lpcihndCwgZ3QtPnBt
X2d1Y19ldmVudHMpOworCXNwaW5fdW5sb2NrX2lycSgmZ3QtPmlycV9sb2NrKTsKK30KKworc3Rh
dGljIHZvaWQgZ2VuOV9lbmFibGVfZ3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKKworCWFzc2VydF9y
cG1fd2FrZWxvY2tfaGVsZCgmZ3QtPmk5MTUtPnJ1bnRpbWVfcG0pOworCisJc3Bpbl9sb2NrX2ly
cSgmZ3QtPmlycV9sb2NrKTsKKwlpZiAoIWd1Yy0+aW50ZXJydXB0cy5lbmFibGVkKSB7CisJCVdB
Uk5fT05fT05DRShpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCBHRU44X0dUX0lJUigyKSkg
JgorCQkJICAgICBndC0+cG1fZ3VjX2V2ZW50cyk7CisJCWd1Yy0+aW50ZXJydXB0cy5lbmFibGVk
ID0gdHJ1ZTsKKwkJZ2VuNl9ndF9wbV9lbmFibGVfaXJxKGd0LCBndC0+cG1fZ3VjX2V2ZW50cyk7
CisJfQorCXNwaW5fdW5sb2NrX2lycSgmZ3QtPmlycV9sb2NrKTsKK30KKworc3RhdGljIHZvaWQg
Z2VuOV9kaXNhYmxlX2d1Y19pbnRlcnJ1cHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKK3sKKwlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7CisKKwlhc3NlcnRfcnBtX3dha2Vs
b2NrX2hlbGQoJmd0LT5pOTE1LT5ydW50aW1lX3BtKTsKKworCXNwaW5fbG9ja19pcnEoJmd0LT5p
cnFfbG9jayk7CisJZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQgPSBmYWxzZTsKKworCWdlbjZfZ3Rf
cG1fZGlzYWJsZV9pcnEoZ3QsIGd0LT5wbV9ndWNfZXZlbnRzKTsKKworCXNwaW5fdW5sb2NrX2ly
cSgmZ3QtPmlycV9sb2NrKTsKKwlpbnRlbF9zeW5jaHJvbml6ZV9pcnEoZ3QtPmk5MTUpOworCisJ
Z2VuOV9yZXNldF9ndWNfaW50ZXJydXB0cyhndWMpOworfQorCitzdGF0aWMgdm9pZCBnZW4xMV9y
ZXNldF9ndWNfaW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCit7CisJc3RydWN0IGlu
dGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOworCisJc3Bpbl9sb2NrX2lycSgmZ3QtPmlycV9s
b2NrKTsKKwlnZW4xMV9ndF9yZXNldF9vbmVfaWlyKGd0LCAwLCBHRU4xMV9HVUMpOworCXNwaW5f
dW5sb2NrX2lycSgmZ3QtPmlycV9sb2NrKTsKK30KKworc3RhdGljIHZvaWQgZ2VuMTFfZW5hYmxl
X2d1Y19pbnRlcnJ1cHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKK3sKKwlzdHJ1Y3QgaW50ZWxf
Z3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7CisKKwlzcGluX2xvY2tfaXJxKCZndC0+aXJxX2xvY2sp
OworCWlmICghZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQpIHsKKwkJdTMyIGV2ZW50cyA9IFJFR19G
SUVMRF9QUkVQKEVOR0lORTFfTUFTSywgR1VDX0lOVFJfR1VDMkhPU1QpOworCisJCVdBUk5fT05f
T05DRShnZW4xMV9ndF9yZXNldF9vbmVfaWlyKGd0LCAwLCBHRU4xMV9HVUMpKTsKKwkJaW50ZWxf
dW5jb3JlX3dyaXRlKGd0LT51bmNvcmUsCisJCQkJICAgR0VOMTFfR1VDX1NHX0lOVFJfRU5BQkxF
LCBldmVudHMpOworCQlpbnRlbF91bmNvcmVfd3JpdGUoZ3QtPnVuY29yZSwKKwkJCQkgICBHRU4x
MV9HVUNfU0dfSU5UUl9NQVNLLCB+ZXZlbnRzKTsKKwkJZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQg
PSB0cnVlOworCX0KKwlzcGluX3VubG9ja19pcnEoJmd0LT5pcnFfbG9jayk7Cit9CisKK3N0YXRp
YyB2b2lkIGdlbjExX2Rpc2FibGVfZ3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKKworCXNwaW5fbG9j
a19pcnEoJmd0LT5pcnFfbG9jayk7CisJZ3VjLT5pbnRlcnJ1cHRzLmVuYWJsZWQgPSBmYWxzZTsK
KworCWludGVsX3VuY29yZV93cml0ZShndC0+dW5jb3JlLCBHRU4xMV9HVUNfU0dfSU5UUl9NQVNL
LCB+MCk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKGd0LT51bmNvcmUsIEdFTjExX0dVQ19TR19JTlRS
X0VOQUJMRSwgMCk7CisKKwlzcGluX3VubG9ja19pcnEoJmd0LT5pcnFfbG9jayk7CisJaW50ZWxf
c3luY2hyb25pemVfaXJxKGd0LT5pOTE1KTsKKworCWdlbjExX3Jlc2V0X2d1Y19pbnRlcnJ1cHRz
KGd1Yyk7Cit9CisKIHZvaWQgaW50ZWxfZ3VjX2luaXRfZWFybHkoc3RydWN0IGludGVsX2d1YyAq
Z3VjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2d0KGd1Yykt
Pmk5MTU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCA1OTg5MjRiM2M1NTYuLmVlZWE5OWEx
MWIwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0zMjEsOTkgKzMyMSw2IEBAIHZvaWQg
aWxrX3VwZGF0ZV9kaXNwbGF5X2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJfQogfQogCi1zdGF0aWMgaTkxNV9yZWdfdCBnZW42X3BtX2lpcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCi17Ci0JV0FSTl9PTl9PTkNFKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpOwotCi0JcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPj0gOCA/IEdFTjhfR1RfSUlS
KDIpIDogR0VONl9QTUlJUjsKLX0KLQotdm9pZCBnZW45X3Jlc2V0X2d1Y19pbnRlcnJ1cHRzKHN0
cnVjdCBpbnRlbF9ndWMgKmd1YykKLXsKLQlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0
KGd1Yyk7Ci0KLQlhc3NlcnRfcnBtX3dha2Vsb2NrX2hlbGQoZ3QtPnVuY29yZS0+cnBtKTsKLQot
CXNwaW5fbG9ja19pcnEoJmd0LT5pcnFfbG9jayk7Ci0JZ2VuNl9ndF9wbV9yZXNldF9paXIoZ3Qs
IGd0LT5wbV9ndWNfZXZlbnRzKTsKLQlzcGluX3VubG9ja19pcnEoJmd0LT5pcnFfbG9jayk7Ci19
Ci0KLXZvaWQgZ2VuOV9lbmFibGVfZ3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQotewotCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsKLQotCWFzc2VydF9y
cG1fd2FrZWxvY2tfaGVsZChndC0+dW5jb3JlLT5ycG0pOwotCi0Jc3Bpbl9sb2NrX2lycSgmZ3Qt
PmlycV9sb2NrKTsKLQlpZiAoIWd1Yy0+aW50ZXJydXB0cy5lbmFibGVkKSB7Ci0JCVdBUk5fT05f
T05DRShpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLAotCQkJCQkgICAgICAgZ2VuNl9wbV9p
aXIoZ3QtPmk5MTUpKSAmCi0JCQkgICAgIGd0LT5wbV9ndWNfZXZlbnRzKTsKLQkJZ3VjLT5pbnRl
cnJ1cHRzLmVuYWJsZWQgPSB0cnVlOwotCQlnZW42X2d0X3BtX2VuYWJsZV9pcnEoZ3QsIGd0LT5w
bV9ndWNfZXZlbnRzKTsKLQl9Ci0Jc3Bpbl91bmxvY2tfaXJxKCZndC0+aXJxX2xvY2spOwotfQot
Ci12b2lkIGdlbjlfZGlzYWJsZV9ndWNfaW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMp
Ci17Ci0Jc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOwotCi0JYXNzZXJ0X3Jw
bV93YWtlbG9ja19oZWxkKGd0LT51bmNvcmUtPnJwbSk7Ci0KLQlzcGluX2xvY2tfaXJxKCZndC0+
aXJxX2xvY2spOwotCWd1Yy0+aW50ZXJydXB0cy5lbmFibGVkID0gZmFsc2U7Ci0KLQlnZW42X2d0
X3BtX2Rpc2FibGVfaXJxKGd0LCBndC0+cG1fZ3VjX2V2ZW50cyk7Ci0KLQlzcGluX3VubG9ja19p
cnEoJmd0LT5pcnFfbG9jayk7Ci0JaW50ZWxfc3luY2hyb25pemVfaXJxKGd0LT5pOTE1KTsKLQot
CWdlbjlfcmVzZXRfZ3VjX2ludGVycnVwdHMoZ3VjKTsKLX0KLQotdm9pZCBnZW4xMV9yZXNldF9n
dWNfaW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCi17Ci0Jc3RydWN0IGludGVsX2d0
ICpndCA9IGd1Y190b19ndChndWMpOwotCi0Jc3Bpbl9sb2NrX2lycSgmZ3QtPmlycV9sb2NrKTsK
LQlnZW4xMV9ndF9yZXNldF9vbmVfaWlyKGd0LCAwLCBHRU4xMV9HVUMpOwotCXNwaW5fdW5sb2Nr
X2lycSgmZ3QtPmlycV9sb2NrKTsKLX0KLQotdm9pZCBnZW4xMV9lbmFibGVfZ3VjX2ludGVycnVw
dHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKQotewotCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNf
dG9fZ3QoZ3VjKTsKLQotCXNwaW5fbG9ja19pcnEoJmd0LT5pcnFfbG9jayk7Ci0JaWYgKCFndWMt
PmludGVycnVwdHMuZW5hYmxlZCkgewotCQl1MzIgZXZlbnRzID0gUkVHX0ZJRUxEX1BSRVAoRU5H
SU5FMV9NQVNLLCBHVUNfSU5UUl9HVUMySE9TVCk7Ci0KLQkJV0FSTl9PTl9PTkNFKGdlbjExX2d0
X3Jlc2V0X29uZV9paXIoZ3QsIDAsIEdFTjExX0dVQykpOwotCQlpbnRlbF91bmNvcmVfd3JpdGUo
Z3QtPnVuY29yZSwgR0VOMTFfR1VDX1NHX0lOVFJfRU5BQkxFLCBldmVudHMpOwotCQlpbnRlbF91
bmNvcmVfd3JpdGUoZ3QtPnVuY29yZSwgR0VOMTFfR1VDX1NHX0lOVFJfTUFTSywgfmV2ZW50cyk7
Ci0JCWd1Yy0+aW50ZXJydXB0cy5lbmFibGVkID0gdHJ1ZTsKLQl9Ci0Jc3Bpbl91bmxvY2tfaXJx
KCZndC0+aXJxX2xvY2spOwotfQotCi12b2lkIGdlbjExX2Rpc2FibGVfZ3VjX2ludGVycnVwdHMo
c3RydWN0IGludGVsX2d1YyAqZ3VjKQotewotCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9f
Z3QoZ3VjKTsKLQotCXNwaW5fbG9ja19pcnEoJmd0LT5pcnFfbG9jayk7Ci0JZ3VjLT5pbnRlcnJ1
cHRzLmVuYWJsZWQgPSBmYWxzZTsKLQotCWludGVsX3VuY29yZV93cml0ZShndC0+dW5jb3JlLCBH
RU4xMV9HVUNfU0dfSU5UUl9NQVNLLCB+MCk7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKGd0LT51bmNv
cmUsIEdFTjExX0dVQ19TR19JTlRSX0VOQUJMRSwgMCk7Ci0KLQlzcGluX3VubG9ja19pcnEoJmd0
LT5pcnFfbG9jayk7Ci0JaW50ZWxfc3luY2hyb25pemVfaXJxKGd0LT5pOTE1KTsKLQotCWdlbjEx
X3Jlc2V0X2d1Y19pbnRlcnJ1cHRzKGd1Yyk7Ci19Ci0KIC8qKgogICogYmR3X3VwZGF0ZV9wb3J0
X2lycSAtIHVwZGF0ZSBERSBwb3J0IGludGVycnVwdAogICogQGRldl9wcml2OiBkcml2ZXIgcHJp
dmF0ZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmgKaW5kZXggZDBkOTFjNmUwMGQ3Li44MTJjNDdhOWMy
ZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuaApAQCAtMTcsOSArMTcsNiBAQCBzdHJ1Y3QgZHJt
X2RldmljZTsKIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlOwogc3RydWN0IGRybV9pOTE1X3ByaXZh
dGU7CiBzdHJ1Y3QgaW50ZWxfY3J0YzsKLXN0cnVjdCBpbnRlbF9jcnRjOwotc3RydWN0IGludGVs
X2d0Owotc3RydWN0IGludGVsX2d1YzsKIHN0cnVjdCBpbnRlbF91bmNvcmU7CiAKIHZvaWQgaW50
ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKQEAgLTEwMywx
MiArMTAwLDYgQEAgdm9pZCBnZW44X2lycV9wb3dlcl93ZWxsX3Bvc3RfZW5hYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICAgIHU4IHBpcGVfbWFzayk7CiB2b2lk
IGdlbjhfaXJxX3Bvd2VyX3dlbGxfcHJlX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCQkJCSAgICAgdTggcGlwZV9tYXNrKTsKLXZvaWQgZ2VuOV9yZXNldF9ndWNf
aW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwotdm9pZCBnZW45X2VuYWJsZV9ndWNf
aW50ZXJydXB0cyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpOwotdm9pZCBnZW45X2Rpc2FibGVfZ3Vj
X2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKLXZvaWQgZ2VuMTFfcmVzZXRfZ3Vj
X2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKLXZvaWQgZ2VuMTFfZW5hYmxlX2d1
Y19pbnRlcnJ1cHRzKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7Ci12b2lkIGdlbjExX2Rpc2FibGVf
Z3VjX2ludGVycnVwdHMoc3RydWN0IGludGVsX2d1YyAqZ3VjKTsKIAogYm9vbCBpOTE1X2dldF9j
cnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUs
CiAJCQkgICAgICBib29sIGluX3ZibGFua19pcnEsIGludCAqdnBvcywgaW50ICpocG9zLAotLSAK
Mi4yNC4wLnJjMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
