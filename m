Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A93F91B4
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29D76EA7D;
	Tue, 12 Nov 2019 14:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90E76EA49
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="287558237"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 12 Nov 2019 06:15:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:57 +0200
Message-Id: <20191112141503.1116-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Move crtc_state to tighter scope
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoKSBkb2Vzbid0IG5lZWQgdGhlIGNydGNfc3RhdGUg
YXQgdGhlCnRvcCBsZXZlbCBzY29wZS4gTW92ZSBpdCB0byB3aGVyZSBpdCdzIG5lZWRlZC4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAx
MSArKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDg5ZDE1MGI0NTUyMC4uZTUyZWE5NjQzNzkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTc3MTYsNyArMTc3MTYsNiBAQCBpbnRlbF9t
b2Rlc2V0X3NldHVwX2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkgICAgIHN0
cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCAqY3R4KQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZTsKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YzsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKQEAgLTE3NzQ5LDcg
KzE3NzQ4LDggQEAgaW50ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAogCSAqIHdhaXRzLCBzbyB3ZSBuZWVkIHZibGFuayBpbnRlcnJ1cHRzIHJlc3RvcmVk
IGJlZm9yZWhhbmQuCiAJICovCiAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwg
Y3J0YykgewotCQljcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0
YXRlKTsKKwkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQkJdG9faW50
ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKIAogCQlkcm1fY3J0Y192YmxhbmtfcmVz
ZXQoJmNydGMtPmJhc2UpOwogCkBAIC0xNzc2Myw3ICsxNzc2Myw5IEBAIGludGVsX21vZGVzZXRf
c2V0dXBfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJaW50ZWxfc2FuaXRpemVf
ZW5jb2RlcihlbmNvZGVyKTsKIAogCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0s
IGNydGMpIHsKLQkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5z
dGF0ZSk7CisJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJCWNydGNf
c3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOworCiAJCWludGVs
X3Nhbml0aXplX2NydGMoY3J0YywgY3R4KTsKIAkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjcnRj
X3N0YXRlLCBOVUxMLCAiW3NldHVwX2h3X3N0YXRlXSIpOwogCX0KQEAgLTE3Nzk2LDkgKzE3Nzk4
LDEwIEBAIGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAl9CiAKIAlmb3JfZWFjaF9pbnRlbF9jcnRjKGRldiwgY3J0YykgeworCQlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMt
PmJhc2Uuc3RhdGUpOwogCQl1NjQgcHV0X2RvbWFpbnM7CiAKLQkJY3J0Y19zdGF0ZSA9IHRvX2lu
dGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7CiAJCXB1dF9kb21haW5zID0gbW9kZXNl
dF9nZXRfY3J0Y19wb3dlcl9kb21haW5zKGNydGNfc3RhdGUpOwogCQlpZiAoV0FSTl9PTihwdXRf
ZG9tYWlucykpCiAJCQltb2Rlc2V0X3B1dF9wb3dlcl9kb21haW5zKGRldl9wcml2LCBwdXRfZG9t
YWlucyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
