Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233FF347B7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DF4896E7;
	Tue,  4 Jun 2019 13:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50DB8958E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:11:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 06:11:46 -0700
X-ExtLoop1: 1
Received: from bblokx-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.139.199])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2019 06:11:45 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 16:11:34 +0300
Message-Id: <20190604131140.12647-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/7] drm/i915/perf: introduce a versioning of
 the i915-perf uapi
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

UmVwb3J0aW5nIHRoaXMgdmVyc2lvbiB3aWxsIGhlbHAgYXBwbGljYXRpb24gZmlndXJlIG91dCB3
aGF0IGxldmVsIG9mCnRoZSBzdXBwb3J0IHRoZSBydW5uaW5nIGtlcm5lbCBwcm92aWRlcy4KClNp
Z25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgIDMgKysrCiBpbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpp
bmRleCAxYWY2NzUxZTFiMzYuLjllZDRkMDAxNmVlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CkBAIC00NzQsNiArNDc0LDkgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJY2FzZSBJOTE1X1BBUkFNX01NQVBfR1RU
X0NPSEVSRU5UOgogCQl2YWx1ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfY29oZXJlbnRf
Z2d0dDsKIAkJYnJlYWs7CisJY2FzZSBJOTE1X1BBUkFNX1BFUkZfUkVWSVNJT046CisJCXZhbHVl
ID0gMTsKKwkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJRFJNX0RFQlVHKCJVbmtub3duIHBhcmFtZXRl
ciAlZFxuIiwgcGFyYW0tPnBhcmFtKTsKIAkJcmV0dXJuIC1FSU5WQUw7CmRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgK
aW5kZXggMzI4ZDA1ZTc3ZDlmLi5lMjdhOGVkYTkxMjEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFw
aS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTYx
MCw2ICs2MTAsMTMgQEAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dhaXQgewogICogU2Vl
IEk5MTVfRVhFQ19GRU5DRV9PVVQgYW5kIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQuCiAgKi8KICNk
ZWZpbmUgSTkxNV9QQVJBTV9IQVNfRVhFQ19TVUJNSVRfRkVOQ0UgNTMKKworLyoKKyAqIFJldmlz
aW9uIG9mIHRoZSBpOTE1LXBlcmYgdUFQSS4gVGhlIHZhbHVlIHJldHVybmVkIGhlbHBzIGRldGVy
bWluZSB3aGF0CisgKiBpOTE1LXBlcmYgZmVhdHVyZXMgYXJlIGF2YWlsYWJsZS4gU2VlIGRybV9p
OTE1X3BlcmZfcHJvcGVydHlfaWQuCisgKi8KKyNkZWZpbmUgSTkxNV9QQVJBTV9QRVJGX1JFVklT
SU9OCTU0CisKIC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxsIGRv
Y3VtZW50ZWQgKi8KIAogdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFyYW0gewpAQCAtMTg0
MywyMyArMTg1MCwzMSBAQCBlbnVtIGRybV9pOTE1X3BlcmZfcHJvcGVydHlfaWQgewogCSAqIE9w
ZW4gdGhlIHN0cmVhbSBmb3IgYSBzcGVjaWZpYyBjb250ZXh0IGhhbmRsZSAoYXMgdXNlZCB3aXRo
CiAJICogZXhlY2J1ZmZlcjIpLiBBIHN0cmVhbSBvcGVuZWQgZm9yIGEgc3BlY2lmaWMgY29udGV4
dCB0aGlzIHdheQogCSAqIHdvbid0IHR5cGljYWxseSByZXF1aXJlIHJvb3QgcHJpdmlsZWdlcy4K
KwkgKgorCSAqIFRoaXMgcHJvcGVydHkgaXMgYXZhaWxhYmxlIGluIHBlcmYgcmV2aXNpb24gMS4K
IAkgKi8KIAlEUk1fSTkxNV9QRVJGX1BST1BfQ1RYX0hBTkRMRSA9IDEsCiAKIAkvKioKIAkgKiBB
IHZhbHVlIG9mIDEgcmVxdWVzdHMgdGhlIGluY2x1c2lvbiBvZiByYXcgT0EgdW5pdCByZXBvcnRz
IGFzCiAJICogcGFydCBvZiBzdHJlYW0gc2FtcGxlcy4KKwkgKgorCSAqIFRoaXMgcHJvcGVydHkg
aXMgYXZhaWxhYmxlIGluIHBlcmYgcmV2aXNpb24gMS4KIAkgKi8KIAlEUk1fSTkxNV9QRVJGX1BS
T1BfU0FNUExFX09BLAogCiAJLyoqCiAJICogVGhlIHZhbHVlIHNwZWNpZmllcyB3aGljaCBzZXQg
b2YgT0EgdW5pdCBtZXRyaWNzIHNob3VsZCBiZQogCSAqIGJlIGNvbmZpZ3VyZWQsIGRlZmluaW5n
IHRoZSBjb250ZW50cyBvZiBhbnkgT0EgdW5pdCByZXBvcnRzLgorCSAqCisJICogVGhpcyBwcm9w
ZXJ0eSBpcyBhdmFpbGFibGUgaW4gcGVyZiByZXZpc2lvbiAxLgogCSAqLwogCURSTV9JOTE1X1BF
UkZfUFJPUF9PQV9NRVRSSUNTX1NFVCwKIAogCS8qKgogCSAqIFRoZSB2YWx1ZSBzcGVjaWZpZXMg
dGhlIHNpemUgYW5kIGxheW91dCBvZiBPQSB1bml0IHJlcG9ydHMuCisJICoKKwkgKiBUaGlzIHBy
b3BlcnR5IGlzIGF2YWlsYWJsZSBpbiBwZXJmIHJldmlzaW9uIDEuCiAJICovCiAJRFJNX0k5MTVf
UEVSRl9QUk9QX09BX0ZPUk1BVCwKIApAQCAtMTg2OSw2ICsxODg0LDggQEAgZW51bSBkcm1faTkx
NV9wZXJmX3Byb3BlcnR5X2lkIHsKIAkgKiBmcm9tIHRoaXMgZXhwb25lbnQgYXMgZm9sbG93czoK
IAkgKgogCSAqICAgODBucyAqIDJeKHBlcmlvZF9leHBvbmVudCArIDEpCisJICoKKwkgKiBUaGlz
IHByb3BlcnR5IGlzIGF2YWlsYWJsZSBpbiBwZXJmIHJldmlzaW9uIDEuCiAJICovCiAJRFJNX0k5
MTVfUEVSRl9QUk9QX09BX0VYUE9ORU5ULAogCkBAIC0xOTAwLDYgKzE5MTcsOCBAQCBzdHJ1Y3Qg
ZHJtX2k5MTVfcGVyZl9vcGVuX3BhcmFtIHsKICAqIHRvIGNsb3NlIGFuZCByZS1vcGVuIGEgc3Ry
ZWFtIHdpdGggdGhlIHNhbWUgY29uZmlndXJhdGlvbi4KICAqCiAgKiBJdCdzIHVuZGVmaW5lZCB3
aGV0aGVyIGFueSBwZW5kaW5nIGRhdGEgZm9yIHRoZSBzdHJlYW0gd2lsbCBiZSBsb3N0LgorICoK
KyAqIFRoaXMgaW9jdGwgaXMgYXZhaWxhYmxlIGluIHBlcmYgcmV2aXNpb24gMS4KICAqLwogI2Rl
ZmluZSBJOTE1X1BFUkZfSU9DVExfRU5BQkxFCV9JTygnaScsIDB4MCkKIApAQCAtMTkwNyw2ICsx
OTI2LDggQEAgc3RydWN0IGRybV9pOTE1X3BlcmZfb3Blbl9wYXJhbSB7CiAgKiBEaXNhYmxlIGRh
dGEgY2FwdHVyZSBmb3IgYSBzdHJlYW0uCiAgKgogICogSXQgaXMgYW4gZXJyb3IgdG8gdHJ5IGFu
ZCByZWFkIGEgc3RyZWFtIHRoYXQgaXMgZGlzYWJsZWQuCisgKgorICogVGhpcyBpb2N0bCBpcyBh
dmFpbGFibGUgaW4gcGVyZiByZXZpc2lvbiAxLgogICovCiAjZGVmaW5lIEk5MTVfUEVSRl9JT0NU
TF9ESVNBQkxFCV9JTygnaScsIDB4MSkKIAotLSAKMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
