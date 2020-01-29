Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C79614D061
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DEB6F62D;
	Wed, 29 Jan 2020 18:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F072B6F62A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:20:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 10:20:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="309481479"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Jan 2020 10:20:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 20:20:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 20:20:33 +0200
Message-Id: <20200129182034.26138-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/dsb: Introduce
 intel_dsb_align_tail()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIERTQiB0YWlsIGNhY2hlbGluZSBhbGlnbm1lbnQgdG8gYSBoZWxwZXIuIE5vIG5lZWQg
dG8gcG9sbHV0ZQp0aGUgY2FsbGVyIHdpdGggbXVuZGFuZSBkZXRhaWxzIGxpa2UgdGhpcy4KClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDIwICsr
KysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwppbmRl
eCA0NWFjZmQ5MWVlNzQuLjU2NzkwZmFlNjM4NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jCkBAIC0yNTQsNiArMjU0LDE4IEBAIHZvaWQgaW50ZWxfZHNiX3JlZ193
cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogCQkJ
ICAgICAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KHJlZyk7CiB9CiAKK3N0YXRpYyB1MzIgaW50ZWxf
ZHNiX2FsaWduX3RhaWwoc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXUzMiB0YWlsOworCisJ
dGFpbCA9IEFMSUdOKGRzYi0+ZnJlZV9wb3MgKiA0LCBDQUNIRUxJTkVfQllURVMpOworCWlmICh0
YWlsID4gZHNiLT5mcmVlX3BvcyAqIDQpCisJCW1lbXNldCgmZHNiLT5jbWRfYnVmW2RzYi0+ZnJl
ZV9wb3NdLCAwLAorCQkgICAgICAgKHRhaWwgLSBkc2ItPmZyZWVfcG9zICogNCkpOworCisJcmV0
dXJuIHRhaWw7Cit9CisKIC8qKgogICogaW50ZWxfZHNiX2NvbW1pdCgpIC0gVHJpZ2dlciB3b3Jr
bG9hZCBleGVjdXRpb24gb2YgRFNCLgogICogQGRzYjogaW50ZWxfZHNiIHN0cnVjdHVyZS4KQEAg
LTI2OSwxNCArMjgxLDEwIEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IpCiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCXUzMiB0YWlsOwogCi0JaWYg
KCFkc2ItPmZyZWVfcG9zKQorCXRhaWwgPSBpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOworCWlm
ICh0YWlsID09IDApCiAJCXJldHVybjsKIAotCXRhaWwgPSBBTElHTihkc2ItPmZyZWVfcG9zICog
NCwgQ0FDSEVMSU5FX0JZVEVTKTsKLQlpZiAodGFpbCA+IGRzYi0+ZnJlZV9wb3MgKiA0KQotCQlt
ZW1zZXQoJmRzYi0+Y21kX2J1Zltkc2ItPmZyZWVfcG9zXSwgMCwKLQkJICAgICAgICh0YWlsIC0g
ZHNiLT5mcmVlX3BvcyAqIDQpKTsKLQogCWlmIChpc19kc2JfYnVzeShkc2IpKSB7CiAJCURSTV9F
UlJPUigiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7CiAJCWdvdG8gcmVzZXQ7Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
