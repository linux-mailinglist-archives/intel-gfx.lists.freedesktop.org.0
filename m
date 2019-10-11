Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA3DD48D9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 22:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5726EC8E;
	Fri, 11 Oct 2019 20:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83556EC8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 20:09:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 13:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="207501256"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 11 Oct 2019 13:09:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 23:09:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 23:09:42 +0300
Message-Id: <20191011200949.7839-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
References: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Nuke the useless changed param
 from skl_ddb_add_affected_pipes()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNo
YW5nZWQ9PXRydWUganVzdCBtZWFucyB3ZSBoYXZlIHNvbWUgY3J0Y3MgaW4gdGhlIHN0YXRlLiBB
bGwgdGhlCnN0dWZmIGZvbGxvd2luZyB0aGlzIG9ubHkgb3BlcmF0ZXMgb24gY3J0Y3MgaW4gdGhl
IHN0YXRlIGFueXdheSBzbwp0aGVyZSBpcyBubyBwb2ludCBpbiBoYXZpbmcgdGhpcyBib29sLgoK
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMzAgKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAy
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBiMzA2ZTIzMzhmNWEu
LjQ5NTY4MjcwYTg5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC01NDI0LDM1ICs1NDI0
LDE0IEBAIHNrbF9wcmludF93bV9jaGFuZ2VzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogfQogCiBzdGF0aWMgaW50Ci1za2xfZGRiX2FkZF9hZmZlY3RlZF9waXBlcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgYm9vbCAqY2hhbmdlZCkKK3NrbF9kZGJfYWRkX2Fm
ZmVjdGVkX3BpcGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogewogCXN0cnVj
dCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7CiAJY29uc3Qgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwogCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwogCXUzMiByZWFs
bG9jX3BpcGVzID0gcGlwZXNfbW9kaWZpZWQoc3RhdGUpOwotCWludCByZXQsIGk7Ci0KLQkvKgot
CSAqIFdoZW4gd2UgZGlzdHJ1c3QgYmlvcyB3bSB3ZSBhbHdheXMgbmVlZCB0byByZWNvbXB1dGUg
dG8gc2V0IHRoZQotCSAqIGV4cGVjdGVkIEREQiBhbGxvY2F0aW9ucyBmb3IgZWFjaCBDUlRDLgot
CSAqLwotCWlmIChkZXZfcHJpdi0+d20uZGlzdHJ1c3RfYmlvc193bSkKLQkJKCpjaGFuZ2VkKSA9
IHRydWU7Ci0KLQkvKgotCSAqIElmIHRoaXMgdHJhbnNhY3Rpb24gaXNuJ3QgYWN0dWFsbHkgdG91
Y2hpbmcgYW55IENSVEMncywgZG9uJ3QKLQkgKiBib3RoZXIgd2l0aCB3YXRlcm1hcmsgY2FsY3Vs
YXRpb24uICBOb3RlIHRoYXQgaWYgd2UgcGFzcyB0aGlzCi0JICogdGVzdCwgd2UncmUgZ3VhcmFu
dGVlZCB0byBob2xkIGF0IGxlYXN0IG9uZSBDUlRDIHN0YXRlIG11dGV4LAotCSAqIHdoaWNoIG1l
YW5zIHdlIGNhbiBzYWZlbHkgdXNlIHZhbHVlcyBsaWtlIGRldl9wcml2LT5hY3RpdmVfcGlwZXMK
LQkgKiBzaW5jZSBhbnkgcmFjaW5nIGNvbW1pdHMgdGhhdCB3YW50IHRvIHVwZGF0ZSB0aGVtIHdv
dWxkIG5lZWQgdG8KLQkgKiBob2xkIF9hbGxfIENSVEMgc3RhdGUgbXV0ZXhlcy4KLQkgKi8KLQlm
b3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwg
aSkKLQkJKCpjaGFuZ2VkKSA9IHRydWU7Ci0KLQlpZiAoISpjaGFuZ2VkKQotCQlyZXR1cm4gMDsK
KwlpbnQgcmV0OwogCiAJLyoKIAkgKiBJZiB0aGlzIGlzIG91ciBmaXJzdCBhdG9taWMgdXBkYXRl
IGZvbGxvd2luZyBoYXJkd2FyZSByZWFkb3V0LApAQCAtNTU3NiwxNCArNTU1NSwxMyBAQCBza2xf
Y29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlOwogCXN0cnVjdCBza2xfZGRiX3ZhbHVlcyAqcmVzdWx0cyA9ICZzdGF0
ZS0+d21fcmVzdWx0czsKLQlib29sIGNoYW5nZWQgPSBmYWxzZTsKIAlpbnQgcmV0LCBpOwogCiAJ
LyogQ2xlYXIgYWxsIGRpcnR5IGZsYWdzICovCiAJcmVzdWx0cy0+ZGlydHlfcGlwZXMgPSAwOwog
Ci0JcmV0ID0gc2tsX2RkYl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RhdGUsICZjaGFuZ2VkKTsKLQlp
ZiAocmV0IHx8ICFjaGFuZ2VkKQorCXJldCA9IHNrbF9kZGJfYWRkX2FmZmVjdGVkX3BpcGVzKHN0
YXRlKTsKKwlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCiAJLyoKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
