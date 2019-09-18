Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32661B6677
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 16:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFD56F3BE;
	Wed, 18 Sep 2019 14:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F9546F3BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 14:55:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18533833-1500050 
 for multiple; Wed, 18 Sep 2019 15:54:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 15:54:53 +0100
Message-Id: <20190918145453.8800-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190918145453.8800-1-chris@chris-wilson.co.uk>
References: <20190918145453.8800-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Protect timeline->hwsp
 dereferencing
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

QXMgbm90IG9ubHkgaXMgdGhlIHNpZ25hbC0+dGltZWxpbmUgdm9sYXRpbGUsIHNvIHdpbGwgYmUg
YWNxdWlyaW5nIHRoZQp0aW1lbGluZSdzIEhXU1AuIFdlIG11c3QgZmlyc3QgY2FyZWZ1bGx5IGFj
cXVpcmUgdGhlIHRpbWVsaW5lIGZyb20gdGhlCnNpZ25hbGluZyByZXF1ZXN0IGFuZCB0aGVuIGxv
Y2sgdGhlIHRpbWVsaW5lLiBXaXRoIHRoZSByZW1vdmFsIG9mIHRoZQpzdHJ1Y3RfbXV0ZXggc2Vy
aWFsaXNhdGlvbiBvZiByZXF1ZXN0IGNvbnN0cnVjdGlvbiwgd2UgY2FuIGhhdmUgbXVsdGlwbGUK
dGltZWxpbmVzIGFjdGl2ZSBhdCBvbmNlLCBhbmQgc28gd2UgbXVzdCBhdm9pZCB1c2luZyB0aGUg
bmVzdGVkIG11dGV4CmxvY2sgYXMgaXQgaXMgcXVpdGUgcG9zc2libGUgZm9yIGJvdGggdGltZWxp
bmVzIHRvIGJlIGVzdGFibGlzaGluZwpzZW1hcGhvcmVzIG9uIHRoZSBvdGhlciBhbmQgc28gZGVh
ZGxvY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyB8IDMyICsrKysr
KysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
dGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKaW5k
ZXggMmNlODFiZGY3Zjg2Li43YjFkNDA5OGRkMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfdGltZWxpbmUuYwpAQCAtNTAwLDE3ICs1MDAsMzIgQEAgaW50IGludGVsX3RpbWVsaW5l
X3JlYWRfaHdzcChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpmcm9tLAogCQkJICAgICBzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICp0bywKIAkJCSAgICAgdTMyICpod3NwKQogewotCXN0cnVjdCBpbnRlbF90aW1l
bGluZV9jYWNoZWxpbmUgKmNsID0gZnJvbS0+aHdzcF9jYWNoZWxpbmU7Ci0Jc3RydWN0IGludGVs
X3RpbWVsaW5lICp0bCA9IGZyb20tPnRpbWVsaW5lOworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAq
dGw7CiAJaW50IGVycjsKIAorCXJjdV9yZWFkX2xvY2soKTsKKwl0bCA9IHJjdV9kZXJlZmVyZW5j
ZShmcm9tLT50aW1lbGluZSk7CisJaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoZnJvbSkgfHwg
IWtyZWZfZ2V0X3VubGVzc196ZXJvKCZ0bC0+a3JlZikpCisJCXRsID0gTlVMTDsKKwlyY3VfcmVh
ZF91bmxvY2soKTsKKwlpZiAoIXRsKSAvKiBhbHJlYWR5IGNvbXBsZXRlZCAqLworCQlyZXR1cm4g
MTsKKwogCUdFTV9CVUdfT04ocmN1X2FjY2Vzc19wb2ludGVyKHRvLT50aW1lbGluZSkgPT0gdGwp
OwogCi0JbXV0ZXhfbG9ja19uZXN0ZWQoJnRsLT5tdXRleCwgU0lOR0xFX0RFUFRIX05FU1RJTkcp
OwotCWVyciA9IGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoZnJvbSk7Ci0JaWYgKCFlcnIpCisJZXJy
ID0gLUVCVVNZOworCWlmIChtdXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKSB7CisJCXN0cnVjdCBp
bnRlbF90aW1lbGluZV9jYWNoZWxpbmUgKmNsID0gZnJvbS0+aHdzcF9jYWNoZWxpbmU7CisKKwkJ
aWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQoZnJvbSkpIHsKKwkJCWVyciA9IDE7CisJCQlnb3Rv
IHVubG9jazsKKwkJfQorCiAJCWVyciA9IGNhY2hlbGluZV9yZWYoY2wsIHRvKTsKLQlpZiAoIWVy
cikgeworCQlpZiAoZXJyKQorCQkJZ290byB1bmxvY2s7CisKIAkJaWYgKGxpa2VseShjbCA9PSB0
bC0+aHdzcF9jYWNoZWxpbmUpKSB7CiAJCQkqaHdzcCA9IHRsLT5od3NwX29mZnNldDsKIAkJfSBl
bHNlIHsgLyogYWNyb3NzIGEgc2Vxbm8gd3JhcCwgcmVjb3ZlciB0aGUgb3JpZ2luYWwgb2Zmc2V0
ICovCkBAIC01MTgsOCArNTMzLDExIEBAIGludCBpbnRlbF90aW1lbGluZV9yZWFkX2h3c3Aoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKIAkJCQlwdHJfdW5tYXNrX2JpdHMoY2wtPnZhZGRyLCBD
QUNIRUxJTkVfQklUUykgKgogCQkJCUNBQ0hFTElORV9CWVRFUzsKIAkJfQorCit1bmxvY2s6CisJ
CW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsKIAl9Ci0JbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgp
OworCWludGVsX3RpbWVsaW5lX3B1dCh0bCk7CiAKIAlyZXR1cm4gZXJyOwogfQotLSAKMi4yMy4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
