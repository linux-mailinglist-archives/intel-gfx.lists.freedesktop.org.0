Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB775146D36
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 16:45:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4C36FD92;
	Thu, 23 Jan 2020 15:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A043E6FD90;
 Thu, 23 Jan 2020 15:45:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 07:45:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="229882178"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 23 Jan 2020 07:45:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jan 2020 17:45:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 23 Jan 2020 17:45:41 +0200
Message-Id: <20200123154542.12271-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123154542.12271-1-ville.syrjala@linux.intel.com>
References: <20200123154542.12271-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Include the AUX CH name in the
 debug messages
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IG1ha2UgaXQgZWFzaWVyIHRvIGZpZ3VyZSBvdXQgd2hhdCBjYXVzZWQgYSBwYXJ0aWN1bGFyIGRl
YnVnCm1lc3NhZ2UgbGV0J3MgcHJpbnQgb3V0IGF1eC0+bmFtZS4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTkgKysrKysrKysrKystLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDE3OTU5NjNlMTg2Ni4uOTQx
ZjBmNmQ1NWMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0x
MTg2LDcgKzExODYsNyBAQCBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCiAJdHJhY2VfaTkxNV9yZWdfcncoZmFsc2UsIGNoX2N0bCwgc3RhdHVzLCBzaXpl
b2Yoc3RhdHVzKSwgdHJ1ZSk7CiAKIAlpZiAoIWRvbmUpCi0JCURSTV9FUlJPUigiJXMgZGlkIG5v
dCBjb21wbGV0ZSBvciB0aW1lb3V0IHdpdGhpbiAldW1zIChzdGF0dXMgMHglMDh4KVxuIiwKKwkJ
RFJNX0VSUk9SKCIlczogZGlkIG5vdCBjb21wbGV0ZSBvciB0aW1lb3V0IHdpdGhpbiAldW1zIChz
dGF0dXMgMHglMDh4KVxuIiwKIAkJCSAgaW50ZWxfZHAtPmF1eC5uYW1lLCB0aW1lb3V0X21zLCBz
dGF0dXMpOwogI3VuZGVmIEMKIApAQCAtMTM3Myw4ICsxMzczLDggQEAgaW50ZWxfZHBfYXV4X3hm
ZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJY29uc3QgdTMyIHN0YXR1cyA9IGludGVs
X3VuY29yZV9yZWFkKHVuY29yZSwgY2hfY3RsKTsKIAogCQlpZiAoc3RhdHVzICE9IGludGVsX2Rw
LT5hdXhfYnVzeV9sYXN0X3N0YXR1cykgewotCQkJV0FSTigxLCAiZHBfYXV4X2NoIG5vdCBzdGFy
dGVkIHN0YXR1cyAweCUwOHhcbiIsCi0JCQkgICAgIHN0YXR1cyk7CisJCQlXQVJOKDEsICIlczog
bm90IHN0YXJ0ZWQgc3RhdHVzIDB4JTA4eFxuIiwKKwkJCSAgICAgaW50ZWxfZHAtPmF1eC5uYW1l
LCBzdGF0dXMpOwogCQkJaW50ZWxfZHAtPmF1eF9idXN5X2xhc3Rfc3RhdHVzID0gc3RhdHVzOwog
CQl9CiAKQEAgLTE0MzUsNyArMTQzNSw4IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJfQogCiAJaWYgKChzdGF0dXMgJiBEUF9BVVhfQ0hfQ1RMX0RPTkUp
ID09IDApIHsKLQkJRFJNX0VSUk9SKCJkcF9hdXhfY2ggbm90IGRvbmUgc3RhdHVzIDB4JTA4eFxu
Iiwgc3RhdHVzKTsKKwkJRFJNX0VSUk9SKCIlczogbm90IGRvbmUgc3RhdHVzIDB4JTA4eFxuIiwK
KwkJCSAgaW50ZWxfZHAtPmF1eC5uYW1lLCBzdGF0dXMpOwogCQlyZXQgPSAtRUJVU1k7CiAJCWdv
dG8gb3V0OwogCX0KQEAgLTE0NDUsNyArMTQ0Niw4IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJICogVGltZW91dHMgb2NjdXIgd2hlbiB0aGUgc2luayBp
cyBub3QgY29ubmVjdGVkCiAJICovCiAJaWYgKHN0YXR1cyAmIERQX0FVWF9DSF9DVExfUkVDRUlW
RV9FUlJPUikgewotCQlEUk1fRVJST1IoImRwX2F1eF9jaCByZWNlaXZlIGVycm9yIHN0YXR1cyAw
eCUwOHhcbiIsIHN0YXR1cyk7CisJCURSTV9FUlJPUigiJXM6IHJlY2VpdmUgZXJyb3Igc3RhdHVz
IDB4JTA4eFxuIiwKKwkJCSAgaW50ZWxfZHAtPmF1eC5uYW1lLCBzdGF0dXMpOwogCQlyZXQgPSAt
RUlPOwogCQlnb3RvIG91dDsKIAl9CkBAIC0xNDUzLDcgKzE0NTUsOCBAQCBpbnRlbF9kcF9hdXhf
eGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCS8qIFRpbWVvdXRzIG9jY3VyIHdoZW4g
dGhlIGRldmljZSBpc24ndCBjb25uZWN0ZWQsIHNvIHRoZXkncmUKIAkgKiAibm9ybWFsIiAtLSBk
b24ndCBmaWxsIHRoZSBrZXJuZWwgbG9nIHdpdGggdGhlc2UgKi8KIAlpZiAoc3RhdHVzICYgRFBf
QVVYX0NIX0NUTF9USU1FX09VVF9FUlJPUikgewotCQlEUk1fREVCVUdfS01TKCJkcF9hdXhfY2gg
dGltZW91dCBzdGF0dXMgMHglMDh4XG4iLCBzdGF0dXMpOworCQlEUk1fREVCVUdfS01TKCIlczog
dGltZW91dCBzdGF0dXMgMHglMDh4XG4iLAorCQkJICAgICAgaW50ZWxfZHAtPmF1eC5uYW1lLCBz
dGF0dXMpOwogCQlyZXQgPSAtRVRJTUVET1VUOwogCQlnb3RvIG91dDsKIAl9CkBAIC0xNDY4LDgg
KzE0NzEsOCBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAog
CSAqIGRybSBsYXllciB0YWtlcyBjYXJlIGZvciB0aGUgbmVjZXNzYXJ5IHJldHJpZXMuCiAJICov
CiAJaWYgKHJlY3ZfYnl0ZXMgPT0gMCB8fCByZWN2X2J5dGVzID4gMjApIHsKLQkJRFJNX0RFQlVH
X0tNUygiRm9yYmlkZGVuIHJlY3ZfYnl0ZXMgPSAlZCBvbiBhdXggdHJhbnNhY3Rpb25cbiIsCi0J
CQkgICAgICByZWN2X2J5dGVzKTsKKwkJRFJNX0RFQlVHX0tNUygiJXM6IEZvcmJpZGRlbiByZWN2
X2J5dGVzID0gJWQgb24gYXV4IHRyYW5zYWN0aW9uXG4iLAorCQkJICAgICAgaW50ZWxfZHAtPmF1
eC5uYW1lLCByZWN2X2J5dGVzKTsKIAkJcmV0ID0gLUVCVVNZOwogCQlnb3RvIG91dDsKIAl9Ci0t
IAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
