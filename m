Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165F8380D66
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C9E6F390;
	Fri, 14 May 2021 15:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C1D6F381
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:22 +0000 (UTC)
IronPort-SDR: 6ZhnXXorLczYFKdGSo2+rfRfeID+xcD9C1P9hPTsKmpvXp3RO2Yd5sLs9aieYvE/klz13AYkdL
 GzwbAJIyi7RQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243926"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243926"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: jz+m4enCCsttngymyFmAtYy8oVSl1SUVXJFwNwtyztVdHEkMXxcbgqM9YKDPB/ZjilEB0vEx7/
 kCuncmt1o3MA==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796576"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:03 -0700
Message-Id: <20210514153711.2359617-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/19] drm/i915: Move intel_modeset_all_pipes()
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
dmUgaW50ZWxfbW9kZXNldF9hbGxfcGlwZXMoKSB0byBhIGNlbnRyYWwgcGxhY2Ugc28gdGhhdCB3
ZSBjYW4KdXNlIGl0IGVsc2V3aGVyZSBhcyB3ZWxsLiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCgpD
YzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgICB8IDM4
IC0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMzkgaW5z
ZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCmluZGV4IGQ0MDEyNjA2MTAzOC4uYzlmMTQ4NGYzODExIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0yMzc1LDQ0ICsyMzc1
LDYgQEAgc3RhdGljIGludCBieHRfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdCBpbnRlbF9jZGNs
a19zdGF0ZSAqY2RjbGtfc3RhdGUpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgaW50ZWxf
bW9kZXNldF9hbGxfcGlwZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCi17Ci0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpOwotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwotCi0JLyoKLQkgKiBBZGQgYWxsIHBpcGVz
IHRvIHRoZSBzdGF0ZSwgYW5kIGZvcmNlCi0JICogYSBtb2Rlc2V0IG9uIGFsbCB0aGUgYWN0aXZl
IG9uZXMuCi0JICovCi0JZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgY3J0Yykg
ewotCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKLQkJaW50IHJldDsKLQot
CQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwg
Y3J0Yyk7Ci0JCWlmIChJU19FUlIoY3J0Y19zdGF0ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihjcnRj
X3N0YXRlKTsKLQotCQlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSB8fAotCQkgICAgZHJtX2F0
b21pY19jcnRjX25lZWRzX21vZGVzZXQoJmNydGNfc3RhdGUtPnVhcGkpKQotCQkJY29udGludWU7
Ci0KLQkJY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOwotCi0JCXJldCA9IGRy
bV9hdG9taWNfYWRkX2FmZmVjdGVkX2Nvbm5lY3RvcnMoJnN0YXRlLT5iYXNlLAotCQkJCQkJCSAm
Y3J0Yy0+YmFzZSk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCXJldCA9IGludGVs
X2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsKLQkJaWYgKHJldCkKLQkJ
CXJldHVybiByZXQ7Ci0KLQkJY3J0Y19zdGF0ZS0+dXBkYXRlX3BsYW5lcyB8PSBjcnRjX3N0YXRl
LT5hY3RpdmVfcGxhbmVzOwotCX0KLQotCXJldHVybiAwOwotfQotCiBzdGF0aWMgaW50IGZpeGVk
X21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUgKmNkY2xrX3N0YXRl
KQogewogCWludCBtaW5fY2RjbGs7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDNhYjhhZjM1NWI4Yy4uYjVmZDcyMTEzN2QzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtOTAzMyw2ICs5MDMz
LDQ0IEBAIGludGVsX21vZGVzZXRfdmVyaWZ5X2Rpc2FibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAl2ZXJpZnlfZGlzYWJsZWRfZHBsbF9zdGF0ZShkZXZfcHJpdik7CiB9
CiAKK2ludCBpbnRlbF9tb2Rlc2V0X2FsbF9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KHN0YXRlLT5iYXNlLmRldik7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisKKwkvKgorCSAq
IEFkZCBhbGwgcGlwZXMgdG8gdGhlIHN0YXRlLCBhbmQgZm9yY2UKKwkgKiBhIG1vZGVzZXQgb24g
YWxsIHRoZSBhY3RpdmUgb25lcy4KKwkgKi8KKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJp
di0+ZHJtLCBjcnRjKSB7CisJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOwor
CQlpbnQgcmV0OworCisJCWNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUo
JnN0YXRlLT5iYXNlLCBjcnRjKTsKKwkJaWYgKElTX0VSUihjcnRjX3N0YXRlKSkKKwkJCXJldHVy
biBQVFJfRVJSKGNydGNfc3RhdGUpOworCisJCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIHx8
CisJCSAgICBkcm1fYXRvbWljX2NydGNfbmVlZHNfbW9kZXNldCgmY3J0Y19zdGF0ZS0+dWFwaSkp
CisJCQljb250aW51ZTsKKworCQljcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7
CisKKwkJcmV0ID0gZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfY29ubmVjdG9ycygmc3RhdGUtPmJh
c2UsCisJCQkJCQkJICZjcnRjLT5iYXNlKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisK
KwkJcmV0ID0gaW50ZWxfYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUsIGNydGMpOwor
CQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKworCQljcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVz
IHw9IGNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7CisJfQorCisJcmV0dXJuIDA7Cit9CisKIHN0
YXRpYyB2b2lkCiBpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5kZXggYmQ2OWFmZmM3OTFjLi5jOWRiYWYwNzRkNzcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC02
NDYsNiArNjQ2LDcgQEAgdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmVfbm9pcnEoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9y
ZW1vdmVfbm9nZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF9k
aXNwbGF5X3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKIHZvaWQgaW50ZWxfaW5pdF9w
Y2hfcmVmY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CitpbnQgaW50ZWxf
bW9kZXNldF9hbGxfcGlwZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwogCiAv
KiBtb2Rlc2V0dGluZyBhc3NlcnRzICovCiB2b2lkIGFzc2VydF9wYW5lbF91bmxvY2tlZChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0tIAoyLjI1LjQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
