Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E90225AB0B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 14:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95976E4AA;
	Wed,  2 Sep 2020 12:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231886E4AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 12:21:45 +0000 (UTC)
IronPort-SDR: Ga/vTM+/yNXxetRhLfaf5He3ItYb2mhhtDFMZ3cT9G79QgUki2p+4MO4pCBGBW5rF6TLnC9QyD
 wMEdh12Iz5IA==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="145106182"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="145106182"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 05:21:44 -0700
IronPort-SDR: ciT84CaCpwdgUXbVkJTDS0KHtanko5/+YWixDueUMveTSM69ERpOjbe6Ii0LpJE167fUmLh+Sb
 Th16K7LbiKSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="338908300"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 02 Sep 2020 05:21:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Sep 2020 15:21:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Sep 2020 15:21:41 +0300
Message-Id: <20200902122141.15181-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove the old global state stuff
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggdGhlIGRidWYgY29kZSBtb3N0bHkgY29udmVydGVkIG92ZXIgdG8gdGhlIG5ldyBnbG9iYWwg
c3RhdGUKaGFuZGxpbmcgd2UgY2FuIHJlbW92ZSB0aGUgbGVmdG92ZXJzIG9mIHRoZSBvbGQgZ2xv
YmFsIHN0YXRlCnN0dWZmLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pYy5jICAgfCAzOSAtLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oICAgfCAgNCAtLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMjIgLS0tLS0tLS0tLS0KIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA3IC0tLS0KIDQgZmlsZXMg
Y2hhbmdlZCwgNzIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljLmMKaW5kZXggNjMwZjQ5YjdhYTAxLi44NmJlMDMyYmNmOTYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwpAQCAtNTI3LDggKzUyNyw2
IEBAIHZvaWQgaW50ZWxfYXRvbWljX3N0YXRlX2NsZWFyKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzKQogCWludGVsX2F0b21pY19jbGVhcl9nbG9iYWxfc3RhdGUoc3RhdGUpOwogCiAJc3RhdGUt
PmRwbGxfc2V0ID0gc3RhdGUtPm1vZGVzZXQgPSBmYWxzZTsKLQlzdGF0ZS0+Z2xvYmFsX3N0YXRl
X2NoYW5nZWQgPSBmYWxzZTsKLQlzdGF0ZS0+YWN0aXZlX3BpcGVzID0gMDsKIH0KIAogc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKgpAQCAtNTQyLDQwICs1NDAsMyBAQCBpbnRlbF9hdG9taWNfZ2V0
X2NydGNfc3RhdGUoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJcmV0dXJuIHRv
X2ludGVsX2NydGNfc3RhdGUoY3J0Y19zdGF0ZSk7CiB9Ci0KLWludCBfaW50ZWxfYXRvbWljX2xv
Y2tfZ2xvYmFsX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQotewotCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2
KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKLQotCXN0YXRlLT5nbG9iYWxfc3RhdGVfY2hh
bmdlZCA9IHRydWU7Ci0KLQlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRj
KSB7Ci0JCWludCByZXQ7Ci0KLQkJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmY3J0Yy0+YmFzZS5t
dXRleCwKLQkJCQkgICAgICAgc3RhdGUtPmJhc2UuYWNxdWlyZV9jdHgpOwotCQlpZiAocmV0KQot
CQkJcmV0dXJuIHJldDsKLQl9Ci0KLQlyZXR1cm4gMDsKLX0KLQotaW50IF9pbnRlbF9hdG9taWNf
c2VyaWFsaXplX2dsb2JhbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkK
LXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5i
YXNlLmRldik7Ci0Jc3RydWN0IGludGVsX2NydGMgKmNydGM7Ci0KLQlzdGF0ZS0+Z2xvYmFsX3N0
YXRlX2NoYW5nZWQgPSB0cnVlOwotCi0JZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRy
bSwgY3J0YykgewotCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKLQotCQlj
cnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY3J0
Yyk7Ci0JCWlmIChJU19FUlIoY3J0Y19zdGF0ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihjcnRjX3N0
YXRlKTsKLQl9Ci0KLQlyZXR1cm4gMDsKLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pYy5oCmluZGV4IDExMTQ2MjkyYjA2Zi4uMjg1ZGUwNzAxMWRjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgKQEAgLTU2LDggKzU2LDQg
QEAgaW50IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKIAkJ
CSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAKLWludCBfaW50
ZWxfYXRvbWljX2xvY2tfZ2xvYmFsX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKTsKLQotaW50IF9pbnRlbF9hdG9taWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7Ci0KICNlbmRpZiAvKiBfX0lOVEVMX0FUT01JQ19I
X18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5k
ZXggZGM2MjJhZjg2OTVjLi41NTNlNDQ0MDQ0MmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDYzNiwxNiArMTQ2MzYsOCBAQCB1OCBpbnRl
bF9jYWxjX2FjdGl2ZV9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIHN0
YXRpYyBpbnQgaW50ZWxfbW9kZXNldF9jaGVja3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShz
dGF0ZS0+YmFzZS5kZXYpOwotCWludCByZXQ7CiAKIAlzdGF0ZS0+bW9kZXNldCA9IHRydWU7Ci0J
c3RhdGUtPmFjdGl2ZV9waXBlcyA9IGludGVsX2NhbGNfYWN0aXZlX3BpcGVzKHN0YXRlLCBkZXZf
cHJpdi0+YWN0aXZlX3BpcGVzKTsKLQotCWlmIChzdGF0ZS0+YWN0aXZlX3BpcGVzICE9IGRldl9w
cml2LT5hY3RpdmVfcGlwZXMpIHsKLQkJcmV0ID0gX2ludGVsX2F0b21pY19sb2NrX2dsb2JhbF9z
dGF0ZShzdGF0ZSk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCX0KIAogCWlmIChJU19I
QVNXRUxMKGRldl9wcml2KSkKIAkJcmV0dXJuIGhzd19tb2RlX3NldF9wbGFuZXNfd29ya2Fyb3Vu
ZChzdGF0ZSk7CkBAIC0xNTc1OSwxNCArMTU3NTEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9t
aWNfdHJhY2tfZmJzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQkJCQlwbGFu
ZS0+ZnJvbnRidWZmZXJfYml0KTsKIH0KIAotc3RhdGljIHZvaWQgYXNzZXJ0X2dsb2JhbF9zdGF0
ZV9sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOwotCi0JZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwg
Y3J0YykKLQkJZHJtX21vZGVzZXRfbG9ja19hc3NlcnRfaGVsZCgmY3J0Yy0+YmFzZS5tdXRleCk7
Ci19Ci0KIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAogCQkJICAgICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpfc3RhdGUsCiAJCQkgICAg
ICAgYm9vbCBub25ibG9jaykKQEAgLTE1ODQyLDEyICsxNTgyNiw2IEBAIHN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWludGVsX3NoYXJlZF9k
cGxsX3N3YXBfc3RhdGUoc3RhdGUpOwogCWludGVsX2F0b21pY190cmFja19mYnMoc3RhdGUpOwog
Ci0JaWYgKHN0YXRlLT5nbG9iYWxfc3RhdGVfY2hhbmdlZCkgewotCQlhc3NlcnRfZ2xvYmFsX3N0
YXRlX2xvY2tlZChkZXZfcHJpdik7Ci0KLQkJZGV2X3ByaXYtPmFjdGl2ZV9waXBlcyA9IHN0YXRl
LT5hY3RpdmVfcGlwZXM7Ci0JfQotCiAJZHJtX2F0b21pY19zdGF0ZV9nZXQoJnN0YXRlLT5iYXNl
KTsKIAlJTklUX1dPUksoJnN0YXRlLT5iYXNlLmNvbW1pdF93b3JrLCBpbnRlbF9hdG9taWNfY29t
bWl0X3dvcmspOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCmluZGV4IDQxM2I2MDMzN2EwYi4uNjBmNjYwMTNlNTEzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApA
QCAtNDgxLDggKzQ4MSw2IEBAIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgewogCiAJYm9vbCBk
cGxsX3NldCwgbW9kZXNldDsKIAotCXU4IGFjdGl2ZV9waXBlczsKLQogCXN0cnVjdCBpbnRlbF9z
aGFyZWRfZHBsbF9zdGF0ZSBzaGFyZWRfZHBsbFtJOTE1X05VTV9QTExTXTsKIAogCS8qCkBAIC00
OTMsMTEgKzQ5MSw2IEBAIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgewogCiAJYm9vbCBycHNf
aW50ZXJhY3RpdmU7CiAKLQkvKgotCSAqIGFjdGl2ZV9waXBlcwotCSAqLwotCWJvb2wgZ2xvYmFs
X3N0YXRlX2NoYW5nZWQ7Ci0KIAlzdHJ1Y3QgaTkxNV9zd19mZW5jZSBjb21taXRfcmVhZHk7CiAK
IAlzdHJ1Y3QgbGxpc3Rfbm9kZSBmcmVlZDsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
