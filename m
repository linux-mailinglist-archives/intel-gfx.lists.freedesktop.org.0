Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ECBE8BA2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDF86E42C;
	Tue, 29 Oct 2019 15:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E866E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:16:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="198942838"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 29 Oct 2019 08:16:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 17:16:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 17:16:13 +0200
Message-Id: <20191029151614.16929-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191029151614.16929-1-ville.syrjala@linux.intel.com>
References: <20191029151614.16929-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Refactor debugfs display info code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
bGwgdGhlIGNydGMgZHVtcGluZyBzdHVmZiBpbnRvIGEgbmljZSBmdW5jdGlvbiBzbyB0aGUKbG9v
cCBvdmVyIHRoZSBjcnRjcyBkb2Vzbid0IGxvb2sgbGlrZSBjcmFwLgoKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDUyICsrKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBhMzVhMzgzZjFkZDkuLjJl
Yzg5MzBiZTc3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTI2MzgsNiAr
MjYzOCwzMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zY2FsZXJfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCX0KIH0KIAorc3RhdGljIHZvaWQgaW50ZWxf
Y3J0Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnBy
aXZhdGUpOworCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJ
dG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKKworCXNlcV9wcmludGYobSwg
IkNSVEMgJWQ6IHBpcGU6ICVjLCBhY3RpdmU9JXMsIChzaXplPSVkeCVkKSwgZGl0aGVyPSVzLCBi
cHA9JWRcbiIsCisJCSAgIGNydGMtPmJhc2UuYmFzZS5pZCwgcGlwZV9uYW1lKGNydGMtPnBpcGUp
LAorCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSksCisJCSAgIGNydGNfc3RhdGUt
PnBpcGVfc3JjX3csIGNydGNfc3RhdGUtPnBpcGVfc3JjX2gsCisJCSAgIHllc25vKGNydGNfc3Rh
dGUtPmRpdGhlciksIGNydGNfc3RhdGUtPnBpcGVfYnBwKTsKKworCWlmIChjcnRjX3N0YXRlLT5i
YXNlLmFjdGl2ZSkgeworCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKKworCQlmb3Jf
ZWFjaF9lbmNvZGVyX29uX2NydGMoJmRldl9wcml2LT5kcm0sICZjcnRjLT5iYXNlLCBlbmNvZGVy
KQorCQkJaW50ZWxfZW5jb2Rlcl9pbmZvKG0sIGNydGMsIGVuY29kZXIpOworCisJCWludGVsX3Nj
YWxlcl9pbmZvKG0sIGNydGMpOworCQlpbnRlbF9wbGFuZV9pbmZvKG0sIGNydGMpOworCX0KKwor
CXNlcV9wcmludGYobSwgIlx0dW5kZXJydW4gcmVwb3J0aW5nOiBjcHU9JXMgcGNoPSVzXG4iLAor
CQkgICB5ZXNubyghY3J0Yy0+Y3B1X2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQpLAorCQkgICB5ZXNu
byghY3J0Yy0+cGNoX2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQpKTsKK30KKwogc3RhdGljIGludCBp
OTE1X2Rpc3BsYXlfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0
ZSk7CkBAIC0yNjUyLDMxICsyNjc5LDggQEAgc3RhdGljIGludCBpOTE1X2Rpc3BsYXlfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIAlzZXFfcHJpbnRmKG0sICJDUlRDIGlu
Zm9cbiIpOwogCXNlcV9wcmludGYobSwgIi0tLS0tLS0tLVxuIik7CiAJZm9yX2VhY2hfaW50ZWxf
Y3J0YyhkZXYsIGNydGMpIHsKLQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGU7Ci0KIAkJZHJtX21vZGVzZXRfbG9jaygmY3J0Yy0+YmFzZS5tdXRleCwgTlVMTCk7Ci0K
LQkJY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7Ci0K
LQkJc2VxX3ByaW50ZihtLCAiQ1JUQyAlZDogcGlwZTogJWMsIGFjdGl2ZT0lcywgKHNpemU9JWR4
JWQpLCBkaXRoZXI9JXMsIGJwcD0lZFxuIiwKLQkJCSAgIGNydGMtPmJhc2UuYmFzZS5pZCwgcGlw
ZV9uYW1lKGNydGMtPnBpcGUpLAotCQkJICAgeWVzbm8oY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUp
LAotCQkJICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdywgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCwK
LQkJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNfc3RhdGUtPnBpcGVfYnBwKTsK
LQotCQlpZiAoY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpIHsKLQkJCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyOwotCi0JCQlmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoZGV2LCAmY3J0Yy0+
YmFzZSwgZW5jb2RlcikKLQkJCQlpbnRlbF9lbmNvZGVyX2luZm8obSwgY3J0YywgZW5jb2Rlcik7
Ci0KLQkJCWludGVsX3NjYWxlcl9pbmZvKG0sIGNydGMpOwotCQkJaW50ZWxfcGxhbmVfaW5mbyht
LCBjcnRjKTsKLQkJfQotCi0JCXNlcV9wcmludGYobSwgIlx0dW5kZXJydW4gcmVwb3J0aW5nOiBj
cHU9JXMgcGNoPSVzIFxuIiwKLQkJCSAgIHllc25vKCFjcnRjLT5jcHVfZmlmb191bmRlcnJ1bl9k
aXNhYmxlZCksCi0JCQkgICB5ZXNubyghY3J0Yy0+cGNoX2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQp
KTsKKwkJaW50ZWxfY3J0Y19pbmZvKG0sIGNydGMpOwogCQlkcm1fbW9kZXNldF91bmxvY2soJmNy
dGMtPmJhc2UubXV0ZXgpOwogCX0KIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
