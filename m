Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572311137A4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 23:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2C36F50D;
	Wed,  4 Dec 2019 22:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C4C6F525
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 22:32:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19463524-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 22:32:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 22:32:46 +0000
Message-Id: <20191204223246.4156260-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204223246.4156260-1-chris@chris-wilson.co.uk>
References: <20191204223246.4156260-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Bump the PP_DIR invalidation for
 Baytrail
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

SW52YWxpZGF0ZSB0aGUgcmluZyBUTEIgYW5kIGluY3JlYXNlIHRoZSBkZWxheSByZXF1aXJlZCBm
b3IgQmF5dHJhaWwuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lv
bi5jICAgfCAzOSArKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IDQyZTM0MDViOTk5Ni4uOWYyNzI4OWI3MjQ5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpA
QCAtMTM5Niw2ICsxMzk2LDI1IEBAIHN0YXRpYyBpbnQgbG9hZF9wZF9kaXIoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEsIGNvbnN0IHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCkKIAlyZXR1cm4gMDsK
IH0KIAorc3RhdGljIGludCBmbHVzaF90bGIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCit7CisJ
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqIGNvbnN0IGVuZ2luZSA9IHJxLT5lbmdpbmU7
CisJdTMyICpjczsKKworCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgNCk7CisJaWYgKElTX0VS
UihjcykpCisJCXJldHVybiBQVFJfRVJSKGNzKTsKKworCSpjcysrID0gTUlfTE9BRF9SRUdJU1RF
Ul9JTU0oMSk7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5HX0lOU1RQTShlbmdp
bmUtPm1taW9fYmFzZSkpOworCSpjcysrID0gX01BU0tFRF9CSVRfRU5BQkxFKElOU1RQTV9UTEJf
SU5WQUxJREFURSk7CisKKwkqY3MrKyA9IE1JX05PT1A7CisJaW50ZWxfcmluZ19hZHZhbmNlKHJx
LCBjcyk7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGlubGluZSBpbnQgbWlfc2V0X2NvbnRl
eHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHJxLT5pOTE1OwpAQCAtMTU4OCwxNiArMTYwNywyOCBAQCBzdGF0
aWMgaW50IHN3aXRjaF9jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQkgKiBwb3N0
LXN5bmMgb3AsIHRoaXMgZXh0cmEgcGFzcyBhcHBlYXJzIHZpdGFsIGJlZm9yZSBhCiAJCSAqIG1t
IHN3aXRjaCEKIAkJICovCi0JCWRvIHsKLQkJCXJldCA9IHJxLT5lbmdpbmUtPmVtaXRfZmx1c2go
cnEsIEVNSVRfRkxVU0gpOwotCQkJaWYgKHJldCkKLQkJCQlyZXR1cm4gcmV0OworCQlyZXQgPSBy
cS0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBFTUlUX0lOVkFMSURBVEUpOworCQlpZiAocmV0KQor
CQkJcmV0dXJuIHJldDsKKworCQlyZXQgPSBmbHVzaF90bGIocnEpOworCQlpZiAocmV0KQorCQkJ
cmV0dXJuIHJldDsKIAorCQlkbyB7CiAJCQlyZXQgPSBsb2FkX3BkX2RpcihycSwgaTkxNV92bV90
b19wcGd0dCh2bSkpOwogCQkJaWYgKHJldCkKIAkJCQlyZXR1cm4gcmV0OwogCQl9IHdoaWxlICgt
LWxvb3BzKTsKIAorCQlyZXQgPSBmbHVzaF90bGIocnEpOworCQlpZiAocmV0KQorCQkJcmV0dXJu
IHJldDsKKworCQlyZXQgPSBycS0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBFTUlUX0ZMVVNIKTsK
KwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisKIAkJcmV0ID0gcnEtPmVuZ2luZS0+ZW1pdF9m
bHVzaChycSwgRU1JVF9JTlZBTElEQVRFKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7Ci0t
IAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
