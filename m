Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FF51ACFE4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 20:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D8A6EAA4;
	Thu, 16 Apr 2020 18:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16936EAA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 18:45:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20925058-1500050 
 for multiple; Thu, 16 Apr 2020 19:45:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 19:45:21 +0100
Message-Id: <20200416184522.21812-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Move gpu energy
 measurement into its own little lib
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

TW92ZSB0aGUgaGFuZHkgdXRpbGl0eSB0byBtZWFzdXJlIHRoZSBHUFUgZW5lcmd5IGNvbnN1bXB0
aW9uIHVzaW5nIFJBUEwKbXNyIGludG8gYSBjb21tb24gbGliIHNvIHRoYXQgaXQgY2FuIGJlIHJl
dXNlZCBlYXNpbHkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAg
IHwgIDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYyAgIHwgMjUg
KysrKystLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9s
aWJyYXBsLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmggfCAxMyArKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdl
ZCwgNDYgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmgKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCmluZGV4IGZhOGQ3OGU0MGRhZC4uZGM4MGExZDRkYzliIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZQpAQCAtMjU4LDcgKzI1OCw4IEBAIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1Qp
ICs9IFwKIAlzZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5vIFwKIAlzZWxmdGVzdHMvaWd0X21tYXAu
byBcCiAJc2VsZnRlc3RzL2lndF9yZXNldC5vIFwKLQlzZWxmdGVzdHMvaWd0X3NwaW5uZXIubwor
CXNlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5vIFwKKwlzZWxmdGVzdHMvbGlicmFwbC5vCiAKICMgdmly
dHVhbCBncHUgY29kZQogaTkxNS15ICs9IGk5MTVfdmdwdS5vCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3JjNi5jCmluZGV4IDA4YzNkYmQ0MWIxMi4uNWQ1OTU4OWQ4YTU0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYwpAQCAtMTEsMjIgKzExLDcgQEAKICNpbmNs
dWRlICJzZWxmdGVzdF9yYzYuaCIKIAogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5o
IgotCi1zdGF0aWMgdTY0IGVuZXJneV91SihzdHJ1Y3QgaW50ZWxfcmM2ICpyYzYpCi17Ci0JdW5z
aWduZWQgbG9uZyBsb25nIHBvd2VyOwotCXUzMiB1bml0czsKLQotCWlmIChyZG1zcmxfc2FmZShN
U1JfUkFQTF9QT1dFUl9VTklULCAmcG93ZXIpKQotCQlyZXR1cm4gMDsKLQotCXVuaXRzID0gKHBv
d2VyICYgMHgxZjAwKSA+PiA4OwotCi0JaWYgKHJkbXNybF9zYWZlKE1TUl9QUDFfRU5FUkdZX1NU
QVRVUywgJnBvd2VyKSkKLQkJcmV0dXJuIDA7Ci0KLQlyZXR1cm4gKDEwMDAwMDAgKiBwb3dlcikg
Pj4gdW5pdHM7IC8qIGNvbnZlcnQgdG8gdUogKi8KLX0KKyNpbmNsdWRlICJzZWxmdGVzdHMvbGli
cmFwbC5oIgogCiBzdGF0aWMgdTY0IHJjNl9yZXNpZGVuY3koc3RydWN0IGludGVsX3JjNiAqcmM2
KQogewpAQCAtNzQsOSArNTksOSBAQCBpbnQgbGl2ZV9yYzZfbWFudWFsKHZvaWQgKmFyZykKIAly
ZXNbMF0gPSByYzZfcmVzaWRlbmN5KHJjNik7CiAKIAlkdCA9IGt0aW1lX2dldCgpOwotCXJjMF9w
b3dlciA9IGVuZXJneV91SihyYzYpOworCXJjMF9wb3dlciA9IHN0X2VuZXJneV91SigpOwogCW1z
bGVlcCgyNTApOwotCXJjMF9wb3dlciA9IGVuZXJneV91SihyYzYpIC0gcmMwX3Bvd2VyOworCXJj
MF9wb3dlciA9IHN0X2VuZXJneV91SigpIC0gcmMwX3Bvd2VyOwogCWR0ID0ga3RpbWVfc3ViKGt0
aW1lX2dldCgpLCBkdCk7CiAJcmVzWzFdID0gcmM2X3Jlc2lkZW5jeShyYzYpOwogCWlmICgocmVz
WzFdIC0gcmVzWzBdKSA+PiAxMCkgewpAQCAtOTksOSArODQsOSBAQCBpbnQgbGl2ZV9yYzZfbWFu
dWFsKHZvaWQgKmFyZykKIAlyZXNbMF0gPSByYzZfcmVzaWRlbmN5KHJjNik7CiAJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9mbHVzaChyYzZfdG9fdW5jb3JlKHJjNiksIEZPUkNFV0FLRV9BTEwpOwog
CWR0ID0ga3RpbWVfZ2V0KCk7Ci0JcmM2X3Bvd2VyID0gZW5lcmd5X3VKKHJjNik7CisJcmM2X3Bv
d2VyID0gc3RfZW5lcmd5X3VKKCk7CiAJbXNsZWVwKDEwMCk7Ci0JcmM2X3Bvd2VyID0gZW5lcmd5
X3VKKHJjNikgLSByYzZfcG93ZXI7CisJcmM2X3Bvd2VyID0gc3RfZW5lcmd5X3VKKCkgLSByYzZf
cG93ZXI7CiAJZHQgPSBrdGltZV9zdWIoa3RpbWVfZ2V0KCksIGR0KTsKIAlyZXNbMV0gPSByYzZf
cmVzaWRlbmN5KHJjNik7CiAJaWYgKHJlc1sxXSA9PSByZXNbMF0pIHsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbGlicmFwbC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uMmEwYzlhYWU4NTkxCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwuYwpAQCAtMCwwICsxLDI2IEBACisvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9y
YXRpb24KKyAqLworCisjaW5jbHVkZSA8YXNtL21zci5oPgorCisjaW5jbHVkZSAibGlicmFwbC5o
IgorCit1NjQgc3RfZW5lcmd5X3VKKHZvaWQpCit7CisJdW5zaWduZWQgbG9uZyBsb25nIHBvd2Vy
OworCXUzMiB1bml0czsKKworCWlmIChyZG1zcmxfc2FmZShNU1JfUkFQTF9QT1dFUl9VTklULCAm
cG93ZXIpKQorCQlyZXR1cm4gMDsKKworCXVuaXRzID0gKHBvd2VyICYgMHgxZjAwKSA+PiA4Owor
CisJaWYgKHJkbXNybF9zYWZlKE1TUl9QUDFfRU5FUkdZX1NUQVRVUywgJnBvd2VyKSkKKwkJcmV0
dXJuIDA7CisKKwlyZXR1cm4gKDEwMDAwMDAgKiBwb3dlcikgPj4gdW5pdHM7IC8qIGNvbnZlcnQg
dG8gdUogKi8KK30KKworCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvbGlicmFwbC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYnJhcGwuaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmUwZDYzMzRiNDM2NwotLS0g
L2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmgK
QEAgLTAsMCArMSwxMyBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoK
KyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBT
RUxGVEVTVF9MSUJSQVBMX0gKKyNkZWZpbmUgU0VMRlRFU1RfTElCUkFQTF9ICisKKyNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgorCit1NjQgc3RfZW5lcmd5X3VKKHZvaWQpOworCisjZW5kaWYgLyog
U0VMRlRFU1RfTElCUkFQTF9IICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
