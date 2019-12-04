Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9D2112DD4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 15:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3806E10E;
	Wed,  4 Dec 2019 14:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1182C6E10E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 14:57:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19458238-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 14:57:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 14:57:14 +0000
Message-Id: <20191204145714.3802838-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Bump the PP_DIR invalidation for
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
bi5jICAgfCAyOSArKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IDQyZTM0MDViOTk5Ni4uNDYwZTEwNDI3NmQ4IDEw
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
MTVfcHJpdmF0ZSAqaTkxNSA9IHJxLT5pOTE1OwpAQCAtMTU3OCw3ICsxNTk3LDcgQEAgc3RhdGlj
IGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlHRU1fQlVHX09O
KEhBU19FWEVDTElTVFMocnEtPmk5MTUpKTsKIAogCWlmICh2bSkgewotCQlpbnQgbG9vcHMgPSA0
OyAvKiAyIGZvciBIYXN3ZWxsPyA0IGZvciBCYXl0cmFpbCEgKi8KKwkJaW50IGxvb3BzID0gODsg
LyogMiBmb3IgSGFzd2VsbD8gOCBmb3IgQmF5dHJhaWwhICovCiAKIAkJLyoKIAkJICogTm90IG9u
bHkgZG8gd2UgbmVlZCBhIGZ1bGwgYmFycmllciAocG9zdC1zeW5jIHdyaXRlKSBhZnRlcgpAQCAt
MTU4OCw4ICsxNjA3LDEyIEBAIHN0YXRpYyBpbnQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCiAJCSAqIHBvc3Qtc3luYyBvcCwgdGhpcyBleHRyYSBwYXNzIGFwcGVhcnMg
dml0YWwgYmVmb3JlIGEKIAkJICogbW0gc3dpdGNoIQogCQkgKi8KKwkJcmV0ID0gcnEtPmVuZ2lu
ZS0+ZW1pdF9mbHVzaChycSwgRU1JVF9JTlZBTElEQVRFKTsKKwkJaWYgKHJldCkKKwkJCXJldHVy
biByZXQ7CisKIAkJZG8gewotCQkJcmV0ID0gcnEtPmVuZ2luZS0+ZW1pdF9mbHVzaChycSwgRU1J
VF9GTFVTSCk7CisJCQlyZXQgPSBmbHVzaF90bGIocnEpOwogCQkJaWYgKHJldCkKIAkJCQlyZXR1
cm4gcmV0OwogCkBAIC0xNTk4LDcgKzE2MjEsNyBAQCBzdGF0aWMgaW50IHN3aXRjaF9jb250ZXh0
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQkJCXJldHVybiByZXQ7CiAJCX0gd2hpbGUgKC0t
bG9vcHMpOwogCi0JCXJldCA9IHJxLT5lbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfSU5WQUxJ
REFURSk7CisJCXJldCA9IHJxLT5lbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfRkxVU0gpOwog
CQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAl9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
