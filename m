Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE5A116167
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2019 11:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C956E02A;
	Sun,  8 Dec 2019 10:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98E86E02A
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Dec 2019 10:37:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19502030-1500050 
 for multiple; Sun, 08 Dec 2019 10:37:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Dec 2019 10:37:35 +0000
Message-Id: <20191208103735.2942903-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Turn vm off then on again for gen7
 mm switch
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

IkhhdmUgeW91IHRyaWVkIHN3aXRjaGluZyBpdCBvZmYgYW5kIG9uIGFnYWluPyIKClNldCB0aGUg
c2l6ZSBvZiB0aGUgbW0gdG8gMCB0byBkaXNhYmxlIGFsbCBQRCBjYWNoZWxpbmVzLCBiZWZvcmUK
ZW5hYmxpbmcgdGhlIHdob2xlIG1tIGFnYWluLiBMZXQncyBzZWUgaWYgdGhhdCB0cmlja3MgdGhl
IFRMQiBpbnRvCnJlbG9hZGluZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Np
b24uYyAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBmNjYyMjBmM2MwZTYuLmRlMTA1MDI1MDc4MiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9u
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMK
QEAgLTEzNjUsNyArMTM2NSw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dF9v
cHMgcmluZ19jb250ZXh0X29wcyA9IHsKIAkuZGVzdHJveSA9IHJpbmdfY29udGV4dF9kZXN0cm95
LAogfTsKIAotc3RhdGljIGludCBsb2FkX3BkX2RpcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwg
Y29uc3Qgc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQorc3RhdGljIGludCBsb2FkX3BkX2Rpcihz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3BwZ3R0
ICpwcGd0dCwKKwkJICAgICAgIHUzMiB2YWxpZCkKIHsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICogY29uc3QgZW5naW5lID0gcnEtPmVuZ2luZTsKIAl1MzIgKmNzOwpAQCAtMTM3Niw3
ICsxMzc4LDcgQEAgc3RhdGljIGludCBsb2FkX3BkX2RpcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSwgY29uc3Qgc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQogCiAJKmNzKysgPSBNSV9MT0FEX1JF
R0lTVEVSX0lNTSgxKTsKIAkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfUFBfRElS
X0RDTFYoZW5naW5lLT5tbWlvX2Jhc2UpKTsKLQkqY3MrKyA9IFBQX0RJUl9EQ0xWXzJHOworCSpj
cysrID0gdmFsaWQ7CiAKIAkqY3MrKyA9IE1JX1NUT1JFX1JFR0lTVEVSX01FTSB8IE1JX1NSTV9M
Uk1fR0xPQkFMX0dUVDsKIAkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfUFBfRElS
X0RDTFYoZW5naW5lLT5tbWlvX2Jhc2UpKTsKQEAgLTE1OTksOCArMTYwMSw2IEBAIHN0YXRpYyBp
bnQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJR0VNX0JVR19PTihI
QVNfRVhFQ0xJU1RTKHJxLT5pOTE1KSk7CiAKIAlpZiAodm0pIHsKLQkJaW50IGxvb3BzID0gNDsg
LyogMiBmb3IgSGFzd2VsbD8gNCBmb3IgQmF5dHJhaWwhICovCi0KIAkJLyoKIAkJICogTm90IG9u
bHkgZG8gd2UgbmVlZCBhIGZ1bGwgYmFycmllciAocG9zdC1zeW5jIHdyaXRlKSBhZnRlcgogCQkg
KiBpbnZhbGlkYXRpbmcgdGhlIFRMQnMsIGJ1dCB3ZSBuZWVkIHRvIHdhaXQgYSBsaXR0bGUgYml0
CkBAIC0xNjE3LDE2ICsxNjE3LDE4IEBAIHN0YXRpYyBpbnQgc3dpdGNoX2NvbnRleHQoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEpCiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCi0JCWRvIHsK
LQkJCXJldCA9IGxvYWRfcGRfZGlyKHJxLCBpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7Ci0JCQlpZiAo
cmV0KQotCQkJCXJldHVybiByZXQ7Ci0JCX0gd2hpbGUgKC0tbG9vcHMpOworCQlyZXQgPSBsb2Fk
X3BkX2RpcihycSwgaTkxNV92bV90b19wcGd0dCh2bSksIDApOworCQlpZiAocmV0KQorCQkJcmV0
dXJuIHJldDsKIAogCQlyZXQgPSBmbHVzaF90bGIocnEpOwogCQlpZiAocmV0KQogCQkJcmV0dXJu
IHJldDsKIAorCQlyZXQgPSBsb2FkX3BkX2RpcihycSwgaTkxNV92bV90b19wcGd0dCh2bSksIFBQ
X0RJUl9EQ0xWXzJHKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisKIAkJcmV0ID0gcnEt
PmVuZ2luZS0+ZW1pdF9mbHVzaChycSwgRU1JVF9GTFVTSCk7CiAJCWlmIChyZXQpCiAJCQlyZXR1
cm4gcmV0OwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
