Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B5189FDA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0AB889C69;
	Mon, 12 Aug 2019 13:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F6289C13
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 13:39:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17969915-1500050 
 for multiple; Mon, 12 Aug 2019 14:39:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 14:38:58 +0100
Message-Id: <20190812133915.18824-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/18] drm/i915/guc: Use a local
 cancel_port_requests
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

U2luY2UgZXhlY2xpc3RhIGFuZCB0aGUgZ3VjIGhhdmUgZGl2ZXJnZWQgaW4gdGhlaXIgcG9ydCB0
cmFja2luZywgd2UKY2Fubm90IHNpbXBseSByZXVzZSB0aGUgZXhlY2xpc3RzIGNhbmNlbGxhdGlv
biBjb2RlIGFzIGl0IGxlYWRzIHRvCnVuYmFsYW5jZWQgcmVmZXJlbmNlIGNvdW50aW5nLiBVc2Ug
YSBsb2NhbCBzaW1wbGVyIHJvdXRpbmUgZm9yIHRoZSBndWMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggICAgICAgIHwgIDMgLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAgNiArKy0tLQogLi4uL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMjMgKysrKysrKysrKystLS0tLS0t
LQogMyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IGUxMjI4YjBlNTc3Zi4uNGI2
YTFjZjgwNzA2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApAQCAtMTM2
LDkgKzEzNiw2IEBAIGV4ZWNsaXN0c19hY3RpdmUoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9l
eGVjbGlzdHMgKmV4ZWNsaXN0cykKIAlyZXR1cm4gUkVBRF9PTkNFKCpleGVjbGlzdHMtPmFjdGl2
ZSk7CiB9CiAKLXZvaWQKLWV4ZWNsaXN0c19jYW5jZWxfcG9ydF9yZXF1ZXN0cyhzdHJ1Y3QgaW50
ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cyk7Ci0KIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKgogZXhlY2xpc3RzX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKHN0cnVjdCBpbnRl
bF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCmluZGV4IGI5NzA0N2Q1OGQzZC4uNWMyNmM0YWUxMzliIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwpAQCAtMTI5Nyw4ICsxMjk3LDggQEAgc3RhdGljIHZvaWQgZXhlY2xp
c3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCX0KIH0KIAotdm9p
ZAotZXhlY2xpc3RzX2NhbmNlbF9wb3J0X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhl
Y2xpc3RzICogY29uc3QgZXhlY2xpc3RzKQorc3RhdGljIHZvaWQKK2NhbmNlbF9wb3J0X3JlcXVl
c3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzKQogewog
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKiBjb25zdCAqcG9ydCwgKnJxOwogCkBAIC0yMzU1LDcgKzIz
NTUsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAogdW53aW5kOgogCS8qIFB1c2ggYmFjayBhbnkg
aW5jb21wbGV0ZSByZXF1ZXN0cyBmb3IgcmVwbGF5IGFmdGVyIHRoZSByZXNldC4gKi8KLQlleGVj
bGlzdHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhlY2xpc3RzKTsKKwljYW5jZWxfcG9ydF9yZXF1
ZXN0cyhleGVjbGlzdHMpOwogCV9fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoZW5naW5lKTsK
IH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1
Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNz
aW9uLmMKaW5kZXggNDQ5Y2E2MzU3MDE4Li5hMzdhZmM2MjY2ZWMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwpAQCAtNTE3LDExICs1
MTcsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2NoZWR1bGVfaW4oc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIGludCBpZHgpCiB7CiAJdHJhY2VfaTkxNV9yZXF1ZXN0X2luKHJxLCBp
ZHgpOwogCi0JaWYgKCFycS0+aHdfY29udGV4dC0+aW5mbGlnaHQpCi0JCXJxLT5od19jb250ZXh0
LT5pbmZsaWdodCA9IHJxLT5lbmdpbmU7Ci0JaW50ZWxfY29udGV4dF9pbmZsaWdodF9pbmMocnEt
Pmh3X2NvbnRleHQpOwogCWludGVsX2d0X3BtX2dldChycS0+ZW5naW5lLT5ndCk7Ci0KIAlyZXR1
cm4gaTkxNV9yZXF1ZXN0X2dldChycSk7CiB9CiAKQEAgLTUyOSwxMCArNTI1LDYgQEAgc3RhdGlj
IHZvaWQgc2NoZWR1bGVfb3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewogCXRyYWNlX2k5
MTVfcmVxdWVzdF9vdXQocnEpOwogCi0JaW50ZWxfY29udGV4dF9pbmZsaWdodF9kZWMocnEtPmh3
X2NvbnRleHQpOwotCWlmICghaW50ZWxfY29udGV4dF9pbmZsaWdodF9jb3VudChycS0+aHdfY29u
dGV4dCkpCi0JCXJxLT5od19jb250ZXh0LT5pbmZsaWdodCA9IE5VTEw7Ci0KIAlpbnRlbF9ndF9w
bV9wdXQocnEtPmVuZ2luZS0+Z3QpOwogCWk5MTVfcmVxdWVzdF9wdXQocnEpOwogfQpAQCAtNjM2
LDYgKzYyOCwxNyBAQCBzdGF0aWMgdm9pZCBndWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiAJX190YXNrbGV0X2Rpc2FibGVfc3luY19vbmNlKCZleGVjbGlz
dHMtPnRhc2tsZXQpOwogfQogCitzdGF0aWMgdm9pZAorY2FuY2VsX3BvcnRfcmVxdWVzdHMoc3Ry
dWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKiBjb25zdCBleGVjbGlzdHMpCit7CisJc3RydWN0
IGk5MTVfcmVxdWVzdCAqIGNvbnN0ICpwb3J0LCAqcnE7CisKKwlmb3IgKHBvcnQgPSBleGVjbGlz
dHMtPmFjdGl2ZTsgKHJxID0gKnBvcnQpOyBwb3J0KyspCisJCXNjaGVkdWxlX291dChycSk7CisJ
ZXhlY2xpc3RzLT5hY3RpdmUgPQorCQltZW1zZXQoZXhlY2xpc3RzLT5pbmZsaWdodCwgMCwgc2l6
ZW9mKGV4ZWNsaXN0cy0+aW5mbGlnaHQpKTsKK30KKwogc3RhdGljIHZvaWQgZ3VjX3Jlc2V0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogewogCXN0cnVjdCBp
bnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xp
c3RzOwpAQCAtNjQ0LDcgKzY0Nyw3IEBAIHN0YXRpYyB2b2lkIGd1Y19yZXNldChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAogCXNwaW5fbG9ja19pcnFzYXZl
KCZlbmdpbmUtPmFjdGl2ZS5sb2NrLCBmbGFncyk7CiAKLQlleGVjbGlzdHNfY2FuY2VsX3BvcnRf
cmVxdWVzdHMoZXhlY2xpc3RzKTsKKwljYW5jZWxfcG9ydF9yZXF1ZXN0cyhleGVjbGlzdHMpOwog
CiAJLyogUHVzaCBiYWNrIGFueSBpbmNvbXBsZXRlIHJlcXVlc3RzIGZvciByZXBsYXkgYWZ0ZXIg
dGhlIHJlc2V0LiAqLwogCXJxID0gZXhlY2xpc3RzX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3Rz
KGV4ZWNsaXN0cyk7CkBAIC02ODcsNyArNjkwLDcgQEAgc3RhdGljIHZvaWQgZ3VjX2NhbmNlbF9y
ZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJc3Bpbl9sb2NrX2lycXNh
dmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZsYWdzKTsKIAogCS8qIENhbmNlbCB0aGUgcmVxdWVz
dHMgb24gdGhlIEhXIGFuZCBjbGVhciB0aGUgRUxTUCB0cmFja2VyLiAqLwotCWV4ZWNsaXN0c19j
YW5jZWxfcG9ydF9yZXF1ZXN0cyhleGVjbGlzdHMpOworCWNhbmNlbF9wb3J0X3JlcXVlc3RzKGV4
ZWNsaXN0cyk7CiAKIAkvKiBNYXJrIGFsbCBleGVjdXRpbmcgcmVxdWVzdHMgYXMgc2tpcHBlZC4g
Ki8KIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMsIHNj
aGVkLmxpbmspIHsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
