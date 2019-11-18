Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF89D100BC2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 19:50:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4956E7D7;
	Mon, 18 Nov 2019 18:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8266E7A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 18:49:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19246430-1500050 
 for multiple; Mon, 18 Nov 2019 18:49:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:49:42 +0000
Message-Id: <20191118184943.2593048-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118184943.2593048-1-chris@chris-wilson.co.uk>
References: <20191118184943.2593048-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/18] drm/i915/selftests: Exercise rc6 handling
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

UmVhZGluZyBmcm9tIENUWF9JTkZPIHVwc2V0cyByYzYsIHJlcXVpcmluZyB1cyB0byBkZXRlY3Qg
YW5kIHByZXZlbnQKcG9zc2libGUgcmM2IGNvbnRleHQgY29ycnVwdGlvbi4gUG9rZSBhdCB0aGUg
YmVhciEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmM2LmMgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgICAgICB8ICAxMyArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfcmM2LmMgICAgICAgIHwgMTQ2ICsrKysrKysrKysrKysrKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmggICAgICAgIHwgIDEyICsrCiAuLi4vZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDEgKwogNSBmaWxlcyBj
aGFuZ2VkLCAxNzYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yYzYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jj
Ni5jCmluZGV4IDk3N2E2MTdhMTk2ZC4uN2EwYmM2ZGRlMDA5IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yYzYuYwpAQCAtNzgzLDMgKzc4Myw3IEBAIHU2NCBpbnRlbF9yYzZfcmVzaWRlbmN5
X3VzKHN0cnVjdCBpbnRlbF9yYzYgKnJjNiwgaTkxNV9yZWdfdCByZWcpCiB7CiAJcmV0dXJuIERJ
Vl9ST1VORF9VUF9VTEwoaW50ZWxfcmM2X3Jlc2lkZW5jeV9ucyhyYzYsIHJlZyksIDEwMDApOwog
fQorCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCisjaW5jbHVkZSAi
c2VsZnRlc3RfcmM2LmMiCisjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9n
dF9wbS5jCmluZGV4IGQxNzUyZjE1NzAyYS4uMWQ1YmY5M2QxMjU4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKQEAgLTYsNiArNiw3IEBACiAgKi8KIAogI2luY2x1
ZGUgInNlbGZ0ZXN0X2xsYy5oIgorI2luY2x1ZGUgInNlbGZ0ZXN0X3JjNi5oIgogCiBzdGF0aWMg
aW50IGxpdmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKIHsKQEAgLTU4LDMgKzU5LDE1IEBAIGludCBp
bnRlbF9ndF9wbV9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAogCXJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCAmaTkxNS0+Z3QpOwogfQor
CitpbnQgaW50ZWxfZ3RfcG1fbGF0ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsK
KwkJU1VCVEVTVChsaXZlX3JjNl9jdHgpLAorCX07CisKKwlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2Vk
KCZpOTE1LT5ndCkpCisJCXJldHVybiAwOworCisJcmV0dXJuIGludGVsX2d0X2xpdmVfc3VidGVz
dHModGVzdHMsICZpOTE1LT5ndCk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9yYzYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jj
Ni5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYzhiNzI5ZjdlOTNl
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2
LmMKQEAgLTAsMCArMSwxNDYgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
CisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5j
bHVkZSAiaW50ZWxfY29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgorI2lu
Y2x1ZGUgImludGVsX2d0X3JlcXVlc3RzLmgiCisjaW5jbHVkZSAiaW50ZWxfcmluZy5oIgorI2lu
Y2x1ZGUgInNlbGZ0ZXN0X3JjNi5oIgorCisjaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfcmFuZG9t
LmgiCisKK3N0YXRpYyBjb25zdCB1MzIgKl9fbGl2ZV9yYzZfY3R4KHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSkKK3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwl1MzIgY29uc3QgKnJlc3Vs
dDsKKwl1MzIgY21kOworCXUzMiAqY3M7CisKKwlycSA9IGludGVsX2NvbnRleHRfY3JlYXRlX3Jl
cXVlc3QoY2UpOworCWlmIChJU19FUlIocnEpKQorCQlyZXR1cm4gRVJSX0NBU1QocnEpOworCisJ
Y3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA0KTsKKwlpZiAoSVNfRVJSKGNzKSkgeworCQlpOTE1
X3JlcXVlc3RfYWRkKHJxKTsKKwkJcmV0dXJuIGNzOworCX0KKworCWNtZCA9IE1JX1NUT1JFX1JF
R0lTVEVSX01FTSB8IE1JX1VTRV9HR1RUOworCWlmIChJTlRFTF9HRU4ocnEtPmk5MTUpID49IDgp
CisJCWNtZCsrOworCisJKmNzKysgPSBjbWQ7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNl
dChHRU44X1JDNl9DVFhfSU5GTyk7CisJKmNzKysgPSBjZS0+dGltZWxpbmUtPmh3c3Bfb2Zmc2V0
ICsgODsKKwkqY3MrKyA9IDA7CisJaW50ZWxfcmluZ19hZHZhbmNlKHJxLCBjcyk7CisKKwlyZXN1
bHQgPSBycS0+aHdzcF9zZXFubyArIDI7CisJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisKKwlyZXR1
cm4gcmVzdWx0OworfQorCitzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqKgorcmFuZG9t
aXNlZF9lbmdpbmVzKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCisJCSAgIHN0cnVjdCBybmRfc3RhdGUg
KnBybmcsCisJCSAgIHVuc2lnbmVkIGludCAqY291bnQpCit7CisJc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLCAqKmVuZ2luZXM7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50
IG47CisKKwluID0gMDsKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpCisJCW4rKzsK
KwlpZiAoIW4pCisJCXJldHVybiBOVUxMOworCisJZW5naW5lcyA9IGttYWxsb2NfYXJyYXkobiwg
c2l6ZW9mKCplbmdpbmVzKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFlbmdpbmVzKQorCQlyZXR1cm4g
TlVMTDsKKworCW4gPSAwOworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkKKwkJZW5n
aW5lc1tuKytdID0gZW5naW5lOworCisJaTkxNV9wcmFuZG9tX3NodWZmbGUoZW5naW5lcywgc2l6
ZW9mKCplbmdpbmVzKSwgbiwgcHJuZyk7CisKKwkqY291bnQgPSBuOworCXJldHVybiBlbmdpbmVz
OworfQorCitpbnQgbGl2ZV9yYzZfY3R4KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKiplbmdpbmVzOworCXVuc2lnbmVk
IGludCBuLCBjb3VudDsKKwlJOTE1X1JORF9TVEFURShwcm5nKTsKKwlpbnQgZXJyID0gMDsKKwor
CS8qIEEgcmVhZCBvZiBDVFhfSU5GTyB1cHNldHMgcmM2LiBQb2tlIHRoZSBiZWFyISAqLworCWlm
IChJTlRFTF9HRU4oZ3QtPmk5MTUpIDwgOCkKKwkJcmV0dXJuIDA7CisKKwllbmdpbmVzID0gcmFu
ZG9taXNlZF9lbmdpbmVzKGd0LCAmcHJuZywgJmNvdW50KTsKKwlpZiAoIWVuZ2luZXMpCisJCXJl
dHVybiAwOworCisJZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKyspIHsKKwkJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lID0gZW5naW5lc1tuXTsKKwkJaW50IHBhc3M7CisKKwkJZm9yIChw
YXNzID0gMDsgcGFzcyA8IDI7IHBhc3MrKykgeworCQkJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OworCQkJdW5zaWduZWQgaW50IHJlc2V0cyA9CisJCQkJaTkxNV9yZXNldF9lbmdpbmVfY291bnQo
Jmd0LT5pOTE1LT5ncHVfZXJyb3IsCisJCQkJCQkJZW5naW5lKTsKKwkJCWNvbnN0IHUzMiAqcmVz
OworCisJCQkvKiBVc2UgYSBzYWNyaWZpY2FsIGNvbnRleHQgKi8KKwkJCWNlID0gaW50ZWxfY29u
dGV4dF9jcmVhdGUoZW5naW5lLT5rZXJuZWxfY29udGV4dC0+Z2VtX2NvbnRleHQsCisJCQkJCQkg
IGVuZ2luZSk7CisJCQlpZiAoSVNfRVJSKGNlKSkgeworCQkJCWVyciA9IFBUUl9FUlIoY2UpOwor
CQkJCWdvdG8gb3V0OworCQkJfQorCisJCQlpbnRlbF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7CisJ
CQlyZXMgPSBfX2xpdmVfcmM2X2N0eChjZSk7CisJCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2lu
ZSk7CisJCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJCQlpZiAoSVNfRVJSKHJlcykpIHsKKwkJ
CQllcnIgPSBQVFJfRVJSKHJlcyk7CisJCQkJZ290byBvdXQ7CisJCQl9CisKKwkJCWlmIChpbnRl
bF9ndF93YWl0X2Zvcl9pZGxlKGd0LCBIWiAvIDUpID09IC1FVElNRSkgeworCQkJCWludGVsX2d0
X3NldF93ZWRnZWQoZ3QpOworCQkJCWVyciA9IC1FVElNRTsKKwkJCQlnb3RvIG91dDsKKwkJCX0K
KworCQkJaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZShndCk7CisJCQlwcl9kZWJ1ZygiJXM6IENU
WF9JTkZPPSUweFxuIiwKKwkJCQkgZW5naW5lLT5uYW1lLCBSRUFEX09OQ0UoKnJlcykpOworCisJ
CQlpZiAocmVzZXRzICE9CisJCQkgICAgaTkxNV9yZXNldF9lbmdpbmVfY291bnQoJmd0LT5pOTE1
LT5ncHVfZXJyb3IsCisJCQkJCQkgICAgZW5naW5lKSkgeworCQkJCXByX2VycigiJXM6IEdQVSBy
ZXNldCByZXF1aXJlZFxuIiwKKwkJCQkgICAgICAgZW5naW5lLT5uYW1lKTsKKwkJCQlhZGRfdGFp
bnRfZm9yX0NJKFRBSU5UX1dBUk4pOworCQkJCWVyciA9IC1FSU87CisJCQkJZ290byBvdXQ7CisJ
CQl9CisJCX0KKwl9CisKK291dDoKKwlrZnJlZShlbmdpbmVzKTsKKwlyZXR1cm4gZXJyOworfQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuaApuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLjIzMGM2YjRjN2RjMAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5oCkBAIC0wLDAgKzEsMTIgQEAKKy8qCisg
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkg
SW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIFNFTEZURVNUX1JDNl9ICisjZGVmaW5l
IFNFTEZURVNUX1JDNl9ICisKK2ludCBsaXZlX3JjNl9jdHgodm9pZCAqYXJnKTsKKworI2VuZGlm
IC8qIFNFTEZURVNUX1JDNl9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAppbmRleCAxMWI0MGJjNThlNmQuLmJlZmY1OWVl
OWY2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2
ZV9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9s
aXZlX3NlbGZ0ZXN0cy5oCkBAIC0zOSwzICszOSw0IEBAIHNlbGZ0ZXN0KGhhbmdjaGVjaywgaW50
ZWxfaGFuZ2NoZWNrX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZXhlY2xpc3RzLCBpbnRlbF9l
eGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChndWMsIGludGVsX2d1Y19saXZlX3Nl
bGZ0ZXN0KQogc2VsZnRlc3QocGVyZiwgaTkxNV9wZXJmX2xpdmVfc2VsZnRlc3RzKQorc2VsZnRl
c3QobGF0ZV9ndF9wbSwgaW50ZWxfZ3RfcG1fbGF0ZV9zZWxmdGVzdHMpCi0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
