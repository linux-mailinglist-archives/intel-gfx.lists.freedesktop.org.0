Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63110E94E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 12:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6A06E169;
	Mon,  2 Dec 2019 11:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1240589C88
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 11:08:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19425633-1500050 
 for multiple; Mon, 02 Dec 2019 11:08:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 11:08:36 +0000
Message-Id: <20191202110836.2342685-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202110836.2342685-1-chris@chris-wilson.co.uk>
References: <20191202110836.2342685-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Simplify rc6 w/a application
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

UXVpdGUgc2ltcGx5IHdlIG9ubHkgbmVlZCB0byBjaGVjayBmb3IgcHJpb3IgY29ycnVwdGlvbiBv
biBlbmFibGluZyByYzYKb24gbW9kdWxlIGxvYWQgYW5kIHJlc3VtZSwgc28gYnkgaG9va2luZyBp
bnRvIHRoZSBjb21tb24gZW50cnkgcG9pbnRzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmM2LmMgICAgICAgfCA1OSArKystLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmggICAgICAgfCAgMiAtCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yYzZfdHlwZXMuaCB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMgICAgICAgICAgIHwgIDIgLQogNCBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDU4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JjNi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKaW5kZXgg
ZjU4Njc0ZjRhYWVjLi40ZGM4MjE5NmIyODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JjNi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jj
Ni5jCkBAIC00ODgsNjMgKzQ4OCwxOCBAQCBzdGF0aWMgdm9pZCBycG1fcHV0KHN0cnVjdCBpbnRl
bF9yYzYgKnJjNikKIAlyYzYtPndha2VyZWYgPSBmYWxzZTsKIH0KIAotc3RhdGljIGJvb2wgaW50
ZWxfcmM2X2N0eF9jb3JydXB0ZWQoc3RydWN0IGludGVsX3JjNiAqcmM2KQotewotCXJldHVybiAh
aW50ZWxfdW5jb3JlX3JlYWQocmM2X3RvX3VuY29yZShyYzYpLCBHRU44X1JDNl9DVFhfSU5GTyk7
Ci19Ci0KLXN0YXRpYyB2b2lkIGludGVsX3JjNl9jdHhfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfcmM2
ICpyYzYpCi17Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSByYzZfdG9faTkxNShy
YzYpOwotCi0JaWYgKCFORUVEU19SQzZfQ1RYX0NPUlJVUFRJT05fV0EoaTkxNSkpCi0JCXJldHVy
bjsKLQotCWlmIChpbnRlbF9yYzZfY3R4X2NvcnJ1cHRlZChyYzYpKSB7Ci0JCURSTV9JTkZPKCJS
QzYgY29udGV4dCBjb3JydXB0ZWQsIGRpc2FibGluZyBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnRc
biIpOwotCQlyYzYtPmN0eF9jb3JydXB0ZWQgPSB0cnVlOwotCX0KLX0KLQotLyoqCi0gKiBpbnRl
bF9yYzZfY3R4X3dhX3Jlc3VtZSAtIHN5c3RlbSByZXN1bWUgc2VxdWVuY2UgZm9yIHRoZSBSQzYg
Q1RYIFdBCi0gKiBAcmM2OiByYzYgc3RhdGUKLSAqCi0gKiBQZXJmb3JtIGFueSBzdGVwcyBuZWVk
ZWQgdG8gcmUtaW5pdCB0aGUgUkM2IENUWCBXQSBhZnRlciBzeXN0ZW0gcmVzdW1lLgotICovCi12
b2lkIGludGVsX3JjNl9jdHhfd2FfcmVzdW1lKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKLXsKLQlp
ZiAocmM2LT5jdHhfY29ycnVwdGVkICYmICFpbnRlbF9yYzZfY3R4X2NvcnJ1cHRlZChyYzYpKSB7
Ci0JCURSTV9JTkZPKCJSQzYgY29udGV4dCByZXN0b3JlZCwgcmUtZW5hYmxpbmcgcnVudGltZSBw
b3dlciBtYW5hZ2VtZW50XG4iKTsKLQkJcmM2LT5jdHhfY29ycnVwdGVkID0gZmFsc2U7Ci0JfQot
fQotCi0vKioKLSAqIGludGVsX3JjNl9jdHhfd2FfY2hlY2sgLSBjaGVjayBmb3IgYSBuZXcgUkM2
IENUWCBjb3JydXB0aW9uCi0gKiBAcmM2OiByYzYgc3RhdGUKLSAqCi0gKiBDaGVjayBpZiBhbiBS
QzYgQ1RYIGNvcnJ1cHRpb24gaGFzIGhhcHBlbmVkIHNpbmNlIHRoZSBsYXN0IGNoZWNrIGFuZCBp
ZiBzbwotICogZGlzYWJsZSBSQzYgYW5kIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4KLSovCi1z
dGF0aWMgYm9vbCBpbnRlbF9yYzZfY3R4X3dhX2NoZWNrKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikK
K3N0YXRpYyBib29sIHBjdHhfY29ycnVwdGVkKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHJjNl90b19pOTE1KHJjNik7CiAKIAlpZiAo
IU5FRURTX1JDNl9DVFhfQ09SUlVQVElPTl9XQShpOTE1KSkKIAkJcmV0dXJuIGZhbHNlOwogCi0J
aWYgKHJjNi0+Y3R4X2NvcnJ1cHRlZCkKLQkJcmV0dXJuIGZhbHNlOwotCi0JaWYgKCFpbnRlbF9y
YzZfY3R4X2NvcnJ1cHRlZChyYzYpKQorCWlmIChpbnRlbF91bmNvcmVfcmVhZChyYzZfdG9fdW5j
b3JlKHJjNiksIEdFTjhfUkM2X0NUWF9JTkZPKSkKIAkJcmV0dXJuIGZhbHNlOwogCiAJZGV2X25v
dGljZShpOTE1LT5kcm0uZGV2LAogCQkgICAiUkM2IGNvbnRleHQgY29ycnVwdGlvbiwgZGlzYWJs
aW5nIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudFxuIik7Ci0KLQlyYzYtPmN0eF9jb3JydXB0ZWQg
PSB0cnVlOwotCiAJcmV0dXJuIHRydWU7CiB9CiAKQEAgLTU3Miw4ICs1MjcsNiBAQCB2b2lkIGlu
dGVsX3JjNl9pbml0KHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIAlpZiAoIXJjNl9zdXBwb3J0ZWQo
cmM2KSkKIAkJcmV0dXJuOwogCi0JaW50ZWxfcmM2X2N0eF93YV9pbml0KHJjNik7Ci0KIAlpZiAo
SVNfQ0hFUlJZVklFVyhpOTE1KSkKIAkJZXJyID0gY2h2X3JjNl9pbml0KHJjNik7CiAJZWxzZSBp
ZiAoSVNfVkFMTEVZVklFVyhpOTE1KSkKQEAgLTYwOCw5ICs1NjEsNiBAQCB2b2lkIGludGVsX3Jj
Nl9lbmFibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KQogCiAJR0VNX0JVR19PTihyYzYtPmVuYWJs
ZWQpOwogCi0JaWYgKHJjNi0+Y3R4X2NvcnJ1cHRlZCkKLQkJcmV0dXJuOwotCiAJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAogCWlmIChJU19DSEVS
UllWSUVXKGk5MTUpKQpAQCAtNjMxLDYgKzU4MSw5IEBAIHZvaWQgaW50ZWxfcmM2X2VuYWJsZShz
dHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCh1bmNv
cmUsIEZPUkNFV0FLRV9BTEwpOwogCisJaWYgKHVubGlrZWx5KHBjdHhfY29ycnVwdGVkKHJjNikp
KQorCQlyZXR1cm47CisKIAkvKiByYzYgaXMgcmVhZHksIHJ1bnRpbWUtcG0gaXMgZ28hICovCiAJ
cnBtX3B1dChyYzYpOwogCXJjNi0+ZW5hYmxlZCA9IHRydWU7CkBAIC02NTQsNyArNjA3LDcgQEAg
dm9pZCBpbnRlbF9yYzZfcGFyayhzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCiAJaWYgKCFyYzYtPmVu
YWJsZWQpCiAJCXJldHVybjsKIAotCWlmICh1bmxpa2VseShpbnRlbF9yYzZfY3R4X3dhX2NoZWNr
KHJjNikpKSB7CisJaWYgKHVubGlrZWx5KHBjdHhfY29ycnVwdGVkKHJjNikpKSB7CiAJCWludGVs
X3JjNl9kaXNhYmxlKHJjNik7CiAJCXJldHVybjsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JjNi5oCmluZGV4IGYyODIxNTc2YmZkMy4uOWYwZjIzZmNhOGFmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yYzYuaApAQCAtMjUsNiArMjUsNCBAQCB2b2lkIGludGVsX3JjNl9kaXNhYmxl
KHN0cnVjdCBpbnRlbF9yYzYgKnJjNik7CiB1NjQgaW50ZWxfcmM2X3Jlc2lkZW5jeV9ucyhzdHJ1
Y3QgaW50ZWxfcmM2ICpyYzYsIGk5MTVfcmVnX3QgcmVnKTsKIHU2NCBpbnRlbF9yYzZfcmVzaWRl
bmN5X3VzKHN0cnVjdCBpbnRlbF9yYzYgKnJjNiwgaTkxNV9yZWdfdCByZWcpOwogCi12b2lkIGlu
dGVsX3JjNl9jdHhfd2FfcmVzdW1lKHN0cnVjdCBpbnRlbF9yYzYgKnJjNik7Ci0KICNlbmRpZiAv
KiBJTlRFTF9SQzZfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmM2X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzZfdHlwZXMu
aAppbmRleCA5ZjNkNTY4MTdjOTcuLjYwZGVjYWUxYWJjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmM2X3R5cGVzLmgKQEAgLTI1LDcgKzI1LDYgQEAgc3RydWN0IGludGVsX3Jj
NiB7CiAJYm9vbCBzdXBwb3J0ZWQgOiAxOwogCWJvb2wgZW5hYmxlZCA6IDE7CiAJYm9vbCB3YWtl
cmVmIDogMTsKLQlib29sIGN0eF9jb3JydXB0ZWQgOiAxOwogfTsKIAogI2VuZGlmIC8qIElOVEVM
X1JDNl9UWVBFU19IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBmNTA5ZDgyNmZjYzcu
LjM0MzQ0YjYzMmUxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xODE3LDggKzE4MTcs
NiBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQog
CiAJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiAK
LQlpbnRlbF9yYzZfY3R4X3dhX3Jlc3VtZSgmZGV2X3ByaXYtPmd0LnJjNik7Ci0KIAlpbnRlbF9n
dF9zYW5pdGl6ZSgmZGV2X3ByaXYtPmd0LCB0cnVlKTsKIAogCXJldCA9IGk5MTVfZ2d0dF9lbmFi
bGVfaHcoZGV2X3ByaXYpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
