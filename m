Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779F7292CFC
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 19:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967E36E953;
	Mon, 19 Oct 2020 17:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A6F6E953
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 17:39:45 +0000 (UTC)
IronPort-SDR: 1XO6cBLXJKJjN6D65DZIXCJKJXk1CX7MFY2qsz/5ANtXS/tUyo0wLElXg3iYJ4W8ZkUcWQ1MzC
 PZWeipMql/Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154010810"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154010810"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:39:44 -0700
IronPort-SDR: cdi4v5ZflzcdgsUXq2ahopzINqLRf9UO55DfkRAhgWlI5qYZKvx2vp/FcJikHRWjCJM2+Hn+bO
 94Gu5+Mfr3Ow==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="315740432"
Received: from sankarvi-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.43.146])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 10:39:44 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 10:39:06 -0700
Message-Id: <20201019173906.18892-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI] drm/i915/display: Program DBUF_CTL tracker
 state service
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

VGhpcyBzZXF1ZW5jZSBpcyBub3QgcGFydCBvZiAiU2VxdWVuY2VzIHRvIEluaXRpYWxpemUgRGlz
cGxheSIgYnV0CmFzIG5vdGVkIGluIHRoZSBNQnVzIHBhZ2UgdGhlIERCVUZfQ1RMLlRyYWNrZXJf
c3RhdGVfc2VydmljZSBuZWVkcwp0byBiZSBzZXQgdG8gOC4KCkJTcGVjOiA0OTIxMwpSZXZpZXdl
ZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxNCArKysr
KysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAg
ICAgICAgfCAxNCArKysrKysrKystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggNDU4MDZjZmM2NzlhLi5iNjRiNzc2N2Y0Njcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jCkBAIC00NzcxLDYgKzQ3NzEsMTcgQEAgc3RhdGljIHZvaWQgZ2VuOV9kYnVmX2Rpc2Fi
bGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWdlbjlfZGJ1Zl9zbGljZXNf
dXBkYXRlKGRldl9wcml2LCAwKTsKIH0KIAorc3RhdGljIHZvaWQgZ2VuMTJfZGJ1Zl9zbGljZXNf
Y29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwljb25zdCBpbnQg
bnVtX3NsaWNlcyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fc3VwcG9ydGVkX2RidWZfc2xp
Y2VzOworCWVudW0gZGJ1Zl9zbGljZSBzbGljZTsKKworCWZvciAoc2xpY2UgPSBEQlVGX1MxOyBz
bGljZSA8IChEQlVGX1MxICsgbnVtX3NsaWNlcyk7IHNsaWNlKyspCisJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgREJVRl9DVExfUyhzbGljZSksCisJCQkgICAgIERCVUZfVFJBQ0tFUl9TVEFURV9T
RVJWSUNFX01BU0ssCisJCQkgICAgIERCVUZfVFJBQ0tFUl9TVEFURV9TRVJWSUNFKDgpKTsKK30K
Kwogc3RhdGljIHZvaWQgaWNsX21idXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiB7CiAJdW5zaWduZWQgbG9uZyBhYm94X3JlZ3MgPSBJTlRFTF9JTkZPKGRldl9wcml2
KS0+YWJveF9tYXNrOwpAQCAtNTM0MCw2ICs1MzUxLDkgQEAgc3RhdGljIHZvaWQgaWNsX2Rpc3Bs
YXlfY29yZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkvKiA0LiBF
bmFibGUgQ0RDTEsuICovCiAJaW50ZWxfY2RjbGtfaW5pdF9odyhkZXZfcHJpdik7CiAKKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJZ2VuMTJfZGJ1Zl9zbGljZXNfY29uZmlnKGRl
dl9wcml2KTsKKwogCS8qIDUuIEVuYWJsZSBEQlVGLiAqLwogCWdlbjlfZGJ1Zl9lbmFibGUoZGV2
X3ByaXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2ZDk3ZTYyODZjMmQuLmMzODkw
MWUyZjgxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03OTI3LDExICs3OTI3LDE1IEBA
IGVudW0gewogI2RlZmluZSBESVNQX0FSQl9DVEwyCV9NTUlPKDB4NDUwMDQpCiAjZGVmaW5lICBE
SVNQX0RBVEFfUEFSVElUSU9OXzVfNgkoMSA8PCA2KQogI2RlZmluZSAgRElTUF9JUENfRU5BQkxF
CQkoMSA8PCAzKQotI2RlZmluZSBfREJVRl9DVExfUzEJCQkweDQ1MDA4Ci0jZGVmaW5lIF9EQlVG
X0NUTF9TMgkJCTB4NDRGRTgKLSNkZWZpbmUgREJVRl9DVExfUyhzbGljZSkJCV9NTUlPKF9QSUNL
X0VWRU4oc2xpY2UsIF9EQlVGX0NUTF9TMSwgX0RCVUZfQ1RMX1MyKSkKLSNkZWZpbmUgIERCVUZf
UE9XRVJfUkVRVUVTVAkJKDEgPDwgMzEpCi0jZGVmaW5lICBEQlVGX1BPV0VSX1NUQVRFCQkoMSA8
PCAzMCkKKworI2RlZmluZSBfREJVRl9DVExfUzEJCQkJMHg0NTAwOAorI2RlZmluZSBfREJVRl9D
VExfUzIJCQkJMHg0NEZFOAorI2RlZmluZSBEQlVGX0NUTF9TKHNsaWNlKQkJCV9NTUlPKF9QSUNL
X0VWRU4oc2xpY2UsIF9EQlVGX0NUTF9TMSwgX0RCVUZfQ1RMX1MyKSkKKyNkZWZpbmUgIERCVUZf
UE9XRVJfUkVRVUVTVAkJCVJFR19CSVQoMzEpCisjZGVmaW5lICBEQlVGX1BPV0VSX1NUQVRFCQkJ
UkVHX0JJVCgzMCkKKyNkZWZpbmUgIERCVUZfVFJBQ0tFUl9TVEFURV9TRVJWSUNFX01BU0sJUkVH
X0dFTk1BU0soMjMsIDE5KQorI2RlZmluZSAgREJVRl9UUkFDS0VSX1NUQVRFX1NFUlZJQ0UoeCkJ
CVJFR19GSUVMRF9QUkVQKERCVUZfVFJBQ0tFUl9TVEFURV9TRVJWSUNFX01BU0ssIHgpCisKICNk
ZWZpbmUgR0VON19NU0dfQ1RMCV9NTUlPKDB4NDUwMTApCiAjZGVmaW5lICBXQUlUX0ZPUl9QQ0hf
UkVTRVRfQUNLCQkoMSA8PCAxKQogI2RlZmluZSAgV0FJVF9GT1JfUENIX0ZMUl9BQ0sJCSgxIDw8
IDApCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
