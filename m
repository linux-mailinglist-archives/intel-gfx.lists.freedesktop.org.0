Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2ED115EE7
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 23:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910166E24D;
	Sat,  7 Dec 2019 22:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E776E24D
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 22:15:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19498509-1500050 
 for multiple; Sat, 07 Dec 2019 22:14:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 22:14:53 +0000
Message-Id: <20191207221453.2802627-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Account for preallocation in
 asserts
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

T3VyIGFzc2VydHMgYWxsb3cgZm9yIHRoZSBQREVzIHRvIGJlIGFsbG9jYXRlZCBjb25jdXJyZW50
bHksIGJ1dCB3ZSBkaWQKbm90IGFjY291bnQgZm9yIHRoZSBhbGlhc2luZy1wcGd0dCB0byBiZSBw
cmVhbGxvY2F0ZWQgb24gdG9wLgoKVGVzdGNhc2U6IGlndC9nZW1fcHBndHQgI2JzdwpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YwppbmRleCA2YTIxODM0NDJmZWQuLmJlMzY3MTllNzk4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMKQEAgLTUzLDYgKzUzLDggQEAKICNkZWZpbmUgREJHKC4uLikKICNlbmRpZgog
CisjZGVmaW5lIE5BTExPQyAzIC8qIDEgbm9ybWFsLCAxIGZvciBjb25jdXJyZW50IHRocmVhZHMs
IDEgZm9yIHByZWFsbG9jYXRpb24gKi8KKwogLyoqCiAgKiBET0M6IEdsb2JhbCBHVFQgdmlld3MK
ICAqCkBAIC03OTMsNyArNzk1LDcgQEAgX19zZXRfcGRfZW50cnkoc3RydWN0IGk5MTVfcGFnZV9k
aXJlY3RvcnkgKiBjb25zdCBwZCwKIAkgICAgICAgdTY0ICgqZW5jb2RlKShjb25zdCBkbWFfYWRk
cl90LCBjb25zdCBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwpKQogewogCS8qIEVhY2ggdGhyZWFkIHBy
ZS1waW5zIHRoZSBwZCwgYW5kIHdlIG1heSBoYXZlIGEgdGhyZWFkIHBlciBwZGUuICovCi0JR0VN
X0JVR19PTihhdG9taWNfcmVhZChweF91c2VkKHBkKSkgPiAyICogQVJSQVlfU0laRShwZC0+ZW50
cnkpKTsKKwlHRU1fQlVHX09OKGF0b21pY19yZWFkKHB4X3VzZWQocGQpKSA+IE5BTExPQyAqIEFS
UkFZX1NJWkUocGQtPmVudHJ5KSk7CiAKIAlhdG9taWNfaW5jKHB4X3VzZWQocGQpKTsKIAlwZC0+
ZW50cnlbaWR4XSA9IHRvOwpAQCAtMTEyOCw3ICsxMTMwLDcgQEAgc3RhdGljIGludCBfX2dlbjhf
cHBndHRfYWxsb2Moc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqIGNvbnN0IHZtLAogCiAJCQlh
dG9taWNfYWRkKGNvdW50LCAmcHQtPnVzZWQpOwogCQkJLyogQWxsIG90aGVyIHBkZXMgbWF5IGJl
IHNpbXVsdGFuZW91c2x5IHJlbW92ZWQgKi8KLQkJCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJnB0
LT51c2VkKSA+IDIgKiBJOTE1X1BERVMpOworCQkJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmcHQt
PnVzZWQpID4gTkFMTE9DICogSTkxNV9QREVTKTsKIAkJCSpzdGFydCArPSBjb3VudDsKIAkJfQog
CX0gd2hpbGUgKGlkeCsrLCAtLWxlbik7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
