Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF4149685
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 03:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E55A6E0C6;
	Tue, 18 Jun 2019 01:01:23 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD836E0BA
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 01:01:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 18:01:09 -0700
X-ExtLoop1: 1
Received: from relo-linux-5.ra.intel.com ([10.54.133.84])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2019 18:01:09 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Mon, 17 Jun 2019 18:01:08 -0700
Message-Id: <20190618010108.27499-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190618010108.27499-1-John.C.Harrison@Intel.com>
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Update workarounds selftest for
 read only regs
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

RnJvbTogIlJvYmVydCBNLiBGb3NoYSIgPHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4KClVwZGF0
ZXMgdGhlIGxpdmVfd29ya2Fyb3VuZHMgc2VsZnRlc3QgdG8gaGFuZGxlIHdoaXRlbGlzdGVkCnJl
Z2lzdGVycyB0aGF0IGFyZSBmbGFnZ2VkIGFzIHJlYWQgb25seS4KClNpZ25lZC1vZmYtYnk6IFJv
YmVydCBNLiBGb3NoYSA8cm9iZXJ0Lm0uZm9zaGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAgICB8IDQzICsrKysrKysrKysrKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCmluZGV4IGM4
ZDMzNWQ2M2Y5Yy4uZWI2ZDNhYTJjOGNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKQEAgLTQwOCw2ICs0MDgsMjkgQEAgc3RhdGljIGJvb2wg
d29fcmVnaXN0ZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCB1MzIgcmVnKQogCXJl
dHVybiBmYWxzZTsKIH0KIAorc3RhdGljIGJvb2wgcm9fcmVnaXN0ZXIodTMyIHJlZykKK3sKKwlp
ZiAocmVnICYgUklOR19GT1JDRV9UT19OT05QUklWX1JEKQorCQlyZXR1cm4gdHJ1ZTsKKworCXJl
dHVybiBmYWxzZTsKK30KKworc3RhdGljIGludCB3aGl0ZWxpc3Rfd3JpdGFibGVfY291bnQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludCBjb3VudCA9IGVuZ2luZS0+d2hp
dGVsaXN0LmNvdW50OworCWludCBpOworCisJZm9yIChpID0gMDsgaSA8IGVuZ2luZS0+d2hpdGVs
aXN0LmNvdW50OyBpKyspIHsKKwkJdTMyIHJlZyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KGVuZ2lu
ZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVnKTsKKworCQlpZiAocm9fcmVnaXN0ZXIocmVnKSkKKwkJ
CWNvdW50LS07CisJfQorCisJcmV0dXJuIGNvdW50OworfQorCiBzdGF0aWMgaW50IGNoZWNrX2Rp
cnR5X3doaXRlbGlzdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJCSBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CkBAIC00NjMsNiArNDg2LDkgQEAgc3RhdGljIGlu
dCBjaGVja19kaXJ0eV93aGl0ZWxpc3Qoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkJ
aWYgKHdvX3JlZ2lzdGVyKGVuZ2luZSwgcmVnKSkKIAkJCWNvbnRpbnVlOwogCisJCWlmIChyb19y
ZWdpc3RlcihyZWcpKQorCQkJY29udGludWU7CisKIAkJc3JtID0gTUlfU1RPUkVfUkVHSVNURVJf
TUVNOwogCQlscm0gPSBNSV9MT0FEX1JFR0lTVEVSX01FTTsKIAkJaWYgKElOVEVMX0dFTihjdHgt
Pmk5MTUpID49IDgpCkBAIC03MzQsOSArNzYwLDEzIEBAIHN0YXRpYyBpbnQgcmVhZF93aGl0ZWxp
c3RlZF9yZWdpc3RlcnMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAogCWZvciAoaSA9
IDA7IGkgPCBlbmdpbmUtPndoaXRlbGlzdC5jb3VudDsgaSsrKSB7CiAJCXU2NCBvZmZzZXQgPSBy
ZXN1bHRzLT5ub2RlLnN0YXJ0ICsgc2l6ZW9mKHUzMikgKiBpOworCQl1MzIgcmVnID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcpOworCisJCS8qIENs
ZWFyIFJEIG9ubHkgYW5kIFdSIG9ubHkgZmxhZ3MgKi8KKwkJcmVnICY9IH4oUklOR19GT1JDRV9U
T19OT05QUklWX1JEIHwgUklOR19GT1JDRV9UT19OT05QUklWX1dSKTsKIAogCQkqY3MrKyA9IHNy
bTsKLQkJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChlbmdpbmUtPndoaXRlbGlzdC5saXN0
W2ldLnJlZyk7CisJCSpjcysrID0gcmVnOwogCQkqY3MrKyA9IGxvd2VyXzMyX2JpdHMob2Zmc2V0
KTsKIAkJKmNzKysgPSB1cHBlcl8zMl9iaXRzKG9mZnNldCk7CiAJfQpAQCAtNzY5LDkgKzc5OSwx
NCBAQCBzdGF0aWMgaW50IHNjcnViX3doaXRlbGlzdGVkX3JlZ2lzdGVycyhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LAogCQlnb3RvIGVycl9iYXRjaDsKIAl9CiAKLQkqY3MrKyA9IE1JX0xP
QURfUkVHSVNURVJfSU1NKGVuZ2luZS0+d2hpdGVsaXN0LmNvdW50KTsKKwkqY3MrKyA9IE1JX0xP
QURfUkVHSVNURVJfSU1NKHdoaXRlbGlzdF93cml0YWJsZV9jb3VudChlbmdpbmUpKTsKIAlmb3Ig
KGkgPSAwOyBpIDwgZW5naW5lLT53aGl0ZWxpc3QuY291bnQ7IGkrKykgewotCQkqY3MrKyA9IGk5
MTVfbW1pb19yZWdfb2Zmc2V0KGVuZ2luZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVnKTsKKwkJdTMy
IHJlZyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KGVuZ2luZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVn
KTsKKworCQlpZiAocm9fcmVnaXN0ZXIocmVnKSkKKwkJCWNvbnRpbnVlOworCisJCSpjcysrID0g
cmVnOwogCQkqY3MrKyA9IDB4ZmZmZmZmZmY7CiAJfQogCSpjcysrID0gTUlfQkFUQ0hfQlVGRkVS
X0VORDsKQEAgLTk1Niw3ICs5OTEsNyBAQCBzdGF0aWMgaW50IGxpdmVfaXNvbGF0ZWRfd2hpdGVs
aXN0KHZvaWQgKmFyZykKIAl9CiAKIAlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkg
ewotCQlpZiAoIWVuZ2luZS0+d2hpdGVsaXN0LmNvdW50KQorCQlpZiAoIXdoaXRlbGlzdF93cml0
YWJsZV9jb3VudChlbmdpbmUpKQogCQkJY29udGludWU7CiAKIAkJLyogUmVhZCBkZWZhdWx0IHZh
bHVlcyAqLwotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
