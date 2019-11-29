Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1555510D9C1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13FF6EA39;
	Fri, 29 Nov 2019 18:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF316EA39
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="292714450"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Nov 2019 10:54:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:29 +0200
Message-Id: <20191129185434.25549-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Refactor debugfs display info
 code
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
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBiNGZmZmNjZTJkMTIuLjI4
ZjQ1ZjI1Y2ZjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTI2MzgsNiAr
MjYzOCwzMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zY2FsZXJfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUg
Km0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCX0KIH0KIAorc3RhdGljIHZvaWQgaW50ZWxf
Y3J0Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnBy
aXZhdGUpOworCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJ
dG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKKworCXNlcV9wcmludGYobSwg
IkNSVEMgJWQ6IHBpcGU6ICVjLCBhY3RpdmU9JXMsIChzaXplPSVkeCVkKSwgZGl0aGVyPSVzLCBi
cHA9JWRcbiIsCisJCSAgIGNydGMtPmJhc2UuYmFzZS5pZCwgcGlwZV9uYW1lKGNydGMtPnBpcGUp
LAorCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5ody5hY3RpdmUpLAorCQkgICBjcnRjX3N0YXRlLT5w
aXBlX3NyY193LCBjcnRjX3N0YXRlLT5waXBlX3NyY19oLAorCQkgICB5ZXNubyhjcnRjX3N0YXRl
LT5kaXRoZXIpLCBjcnRjX3N0YXRlLT5waXBlX2JwcCk7CisKKwlpZiAoY3J0Y19zdGF0ZS0+aHcu
YWN0aXZlKSB7CisJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOworCisJCWZvcl9lYWNo
X2VuY29kZXJfb25fY3J0YygmZGV2X3ByaXYtPmRybSwgJmNydGMtPmJhc2UsIGVuY29kZXIpCisJ
CQlpbnRlbF9lbmNvZGVyX2luZm8obSwgY3J0YywgZW5jb2Rlcik7CisKKwkJaW50ZWxfc2NhbGVy
X2luZm8obSwgY3J0Yyk7CisJCWludGVsX3BsYW5lX2luZm8obSwgY3J0Yyk7CisJfQorCisJc2Vx
X3ByaW50ZihtLCAiXHR1bmRlcnJ1biByZXBvcnRpbmc6IGNwdT0lcyBwY2g9JXNcbiIsCisJCSAg
IHllc25vKCFjcnRjLT5jcHVfZmlmb191bmRlcnJ1bl9kaXNhYmxlZCksCisJCSAgIHllc25vKCFj
cnRjLT5wY2hfZmlmb191bmRlcnJ1bl9kaXNhYmxlZCkpOworfQorCiBzdGF0aWMgaW50IGk5MTVf
ZGlzcGxheV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsK
QEAgLTI2NTIsMzEgKzI2NzksOCBAQCBzdGF0aWMgaW50IGk5MTVfZGlzcGxheV9pbmZvKHN0cnVj
dCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCXNlcV9wcmludGYobSwgIkNSVEMgaW5mb1xu
Iik7CiAJc2VxX3ByaW50ZihtLCAiLS0tLS0tLS0tXG4iKTsKIAlmb3JfZWFjaF9pbnRlbF9jcnRj
KGRldiwgY3J0YykgewotCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZTsKLQogCQlkcm1fbW9kZXNldF9sb2NrKCZjcnRjLT5iYXNlLm11dGV4LCBOVUxMKTsKLQotCQlj
cnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKLQotCQlz
ZXFfcHJpbnRmKG0sICJDUlRDICVkOiBwaXBlOiAlYywgYWN0aXZlPSVzLCAoc2l6ZT0lZHglZCks
IGRpdGhlcj0lcywgYnBwPSVkXG4iLAotCQkJICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBwaXBlX25h
bWUoY3J0Yy0+cGlwZSksCi0JCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5ody5hY3RpdmUpLAotCQkJ
ICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdywgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCwKLQkJCSAg
IHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNfc3RhdGUtPnBpcGVfYnBwKTsKLQotCQlp
ZiAoY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSB7Ci0JCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlcjsKLQotCQkJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVu
Y29kZXIpCi0JCQkJaW50ZWxfZW5jb2Rlcl9pbmZvKG0sIGNydGMsIGVuY29kZXIpOwotCi0JCQlp
bnRlbF9zY2FsZXJfaW5mbyhtLCBjcnRjKTsKLQkJCWludGVsX3BsYW5lX2luZm8obSwgY3J0Yyk7
Ci0JCX0KLQotCQlzZXFfcHJpbnRmKG0sICJcdHVuZGVycnVuIHJlcG9ydGluZzogY3B1PSVzIHBj
aD0lcyBcbiIsCi0JCQkgICB5ZXNubyghY3J0Yy0+Y3B1X2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQp
LAotCQkJICAgeWVzbm8oIWNydGMtPnBjaF9maWZvX3VuZGVycnVuX2Rpc2FibGVkKSk7CisJCWlu
dGVsX2NydGNfaW5mbyhtLCBjcnRjKTsKIAkJZHJtX21vZGVzZXRfdW5sb2NrKCZjcnRjLT5iYXNl
Lm11dGV4KTsKIAl9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
