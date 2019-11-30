Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D589F10DD91
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2019 13:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BFF6E096;
	Sat, 30 Nov 2019 12:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1116E096
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2019 12:05:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19405414-1500050 
 for multiple; Sat, 30 Nov 2019 12:05:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Nov 2019 12:05:03 +0000
Message-Id: <20191130120503.1609483-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Push the flush_pd before the
 set-context
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

TW92ZSBvdXIgIndhaXQgZm9yIHRoZSBQRCBsb2FkIHRvIGNvbXBsZXRlIiBwYXJhbm9pYSBiZWZv
cmUgdGhlCk1JX1NFVF9DT05URVhUIGp1c3QgaW4gY2FzZSB0aGUgY29udGV4dCByZXN0b3JlIHRy
aWVzIHRvIGFjY2VzcyBsb2NhbAphZGRyZXNzZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jpbmdfc3VibWlzc2lvbi5jICAgfCAyOCArKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBmOTc3ZmMyN2Iw
MDEuLmRjZGVlZjBhNzc2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ19zdWJtaXNzaW9uLmMKQEAgLTE1OTEsMjQgKzE1OTEsMTEgQEAgc3RhdGljIGludCBzd2l0
Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlHRU1fQlVHX09OKEhBU19FWEVD
TElTVFMocnEtPmk5MTUpKTsKIAogCWlmICh2bSkgewotCQlyZXQgPSBsb2FkX3BkX2RpcihycSwg
aTkxNV92bV90b19wcGd0dCh2bSkpOwotCQlpZiAocmV0KQotCQkJcmV0dXJuIHJldDsKLQl9Ci0K
LQlpZiAoY2UtPnN0YXRlKSB7Ci0JCUdFTV9CVUdfT04ocnEtPmVuZ2luZS0+aWQgIT0gUkNTMCk7
Ci0KLQkJaWYgKCFycS0+ZW5naW5lLT5kZWZhdWx0X3N0YXRlKQotCQkJaHdfZmxhZ3MgPSBNSV9S
RVNUT1JFX0lOSElCSVQ7CisJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHJxLT5l
bmdpbmU7CiAKLQkJcmV0ID0gbWlfc2V0X2NvbnRleHQocnEsIGh3X2ZsYWdzKTsKKwkJcmV0ID0g
bG9hZF9wZF9kaXIocnEsIGk5MTVfdm1fdG9fcHBndHQodm0pKTsKIAkJaWYgKHJldCkKIAkJCXJl
dHVybiByZXQ7Ci0JfQotCi0JaWYgKHZtKSB7Ci0JCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSA9IHJxLT5lbmdpbmU7CiAKIAkJcmV0ID0gZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBFTUlU
X0lOVkFMSURBVEUpOwogCQlpZiAocmV0KQpAQCAtMTYzNSw2ICsxNjIyLDE3IEBAIHN0YXRpYyBp
bnQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCQlyZXR1cm4gcmV0
OwogCX0KIAorCWlmIChjZS0+c3RhdGUpIHsKKwkJR0VNX0JVR19PTihycS0+ZW5naW5lLT5pZCAh
PSBSQ1MwKTsKKworCQlpZiAoIXJxLT5lbmdpbmUtPmRlZmF1bHRfc3RhdGUpCisJCQlod19mbGFn
cyA9IE1JX1JFU1RPUkVfSU5ISUJJVDsKKworCQlyZXQgPSBtaV9zZXRfY29udGV4dChycSwgaHdf
ZmxhZ3MpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9CisKIAlyZXQgPSByZW1hcF9s
MyhycSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKLS0gCjIuMjQuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
