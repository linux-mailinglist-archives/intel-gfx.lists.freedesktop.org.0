Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446B9BC862
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 15:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C194B893B8;
	Tue, 24 Sep 2019 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6080089354;
 Tue, 24 Sep 2019 12:59:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:56 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="363986576"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 15:59:01 +0300
Message-Id: <148b46005865597a19ba1ab368e2b764d36dc8be.1569329774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1569329774.git.jani.nikula@intel.com>
References: <cover.1569329774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: use drm_debug_enabled() to
 check for debug categories
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgYmV0dGVyIGFic3RyYWN0aW9uIG9mIHRoZSBkcm1fZGVidWcgZ2xvYmFsIHZhcmlhYmxl
IGluIHRoZQpmdXR1cmUuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYyAgICAgICAgICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5oICAgICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMu
YyAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAg
ICAgICAgICAgfCAyICstCiA2IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDVlY2Y1NDI3MDE4MS4uNjIxNDYwYjFhNTUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTIwNDEsNyArMTIwNDEsNyBAQCBzdGF0
aWMgdm9pZAogaW50ZWxfZHVtcF9pbmZvZnJhbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQkgICAgIGNvbnN0IHVuaW9uIGhkbWlfaW5mb2ZyYW1lICpmcmFtZSkKIHsKLQlp
ZiAoKGRybV9kZWJ1ZyAmIERSTV9VVF9LTVMpID09IDApCisJaWYgKCFkcm1fZGVidWdfZW5hYmxl
ZChEUk1fVVRfS01TKSkKIAkJcmV0dXJuOwogCiAJaGRtaV9pbmZvZnJhbWVfbG9nKEtFUk5fREVC
VUcsIGRldl9wcml2LT5kcm0uZGV2LCBmcmFtZSk7CkBAIC0xMjU1Nyw3ICsxMjU1Nyw3IEBAIHBp
cGVfY29uZmlnX2luZm9mcmFtZV9taXNtYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJCQkgICAgICAgY29uc3QgdW5pb24gaGRtaV9pbmZvZnJhbWUgKmIpCiB7CiAJaWYg
KGZhc3RzZXQpIHsKLQkJaWYgKChkcm1fZGVidWcgJiBEUk1fVVRfS01TKSA9PSAwKQorCQlpZiAo
IWRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9LTVMpKQogCQkJcmV0dXJuOwogCiAJCWRybV9kYmco
RFJNX1VUX0tNUywgImZhc3RzZXQgbWlzbWF0Y2ggaW4gJXMgaW5mb2ZyYW1lIiwgbmFtZSk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggODI5NTU5Zjk3NDQwLi5m
Njk2MDU1NTQwM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTE2ODUsNyArMTY4NSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX3ByaW50X3JhdGVzKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJY2hhciBzdHJbMTI4XTsgLyogRklYTUU6IHRvbyBi
aWcgZm9yIHN0YWNrPyAqLwogCi0JaWYgKChkcm1fZGVidWcgJiBEUk1fVVRfS01TKSA9PSAwKQor
CWlmICghZHJtX2RlYnVnX2VuYWJsZWQoRFJNX1VUX0tNUykpCiAJCXJldHVybjsKIAogCXNucHJp
bnRmX2ludF9hcnJheShzdHIsIHNpemVvZihzdHIpLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5k
ZXggYTllZTczYjYxZjRkLi41YWZmOTM2NDIzMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpA
QCAtMTQ1NSw3ICsxNDU1LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfdW5yZWdpc3Rlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2b2lkIGk5MTVfd2Vs
Y29tZV9tZXNzYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JaWYg
KGRybV9kZWJ1ZyAmIERSTV9VVF9EUklWRVIpIHsKKwlpZiAoZHJtX2RlYnVnX2VuYWJsZWQoRFJN
X1VUX0RSSVZFUikpIHsKIAkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1fZGVidWdfcHJpbnRl
cigiaTkxNSBkZXZpY2UgaW5mbzoiKTsKIAogCQlkcm1fcHJpbnRmKCZwLCAicGNpaWQ9MHglMDR4
IHJldj0weCUwMnggcGxhdGZvcm09JXMgKHN1YnBsYXRmb3JtPTB4JXgpIGdlbj0laVxuIiwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5oCmluZGV4IDE2N2E3YjU2ZWQ1Yi4uYTQ5YjM5ZTg5NmI3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmgKQEAgLTM0LDcgKzM0LDcgQEAgc3RydWN0IGRybV9pOTE1X3By
aXZhdGU7CiAKICNpZmRlZiBDT05GSUdfRFJNX0k5MTVfREVCVUdfR0VNCiAKLSNkZWZpbmUgR0VN
X1NIT1dfREVCVUcoKSAoZHJtX2RlYnVnICYgRFJNX1VUX0RSSVZFUikKKyNkZWZpbmUgR0VNX1NI
T1dfREVCVUcoKSBkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKQogCiAjZGVmaW5lIEdF
TV9CVUdfT04oY29uZGl0aW9uKSBkbyB7IGlmICh1bmxpa2VseSgoY29uZGl0aW9uKSkpIHsJXAog
CQlwcl9lcnIoIiVzOiVkIEdFTV9CVUdfT04oJXMpXG4iLCBcCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0
aWxzLmMKaW5kZXggMTZhY2RmN2JkYmU2Li5mNjY1NDBlMTU3OTMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3V0aWxzLmMKQEAgLTIzLDcgKzIzLDcgQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAogCXN0cnVjdCB2YV9mb3Jt
YXQgdmFmOwogCXZhX2xpc3QgYXJnczsKIAotCWlmIChpc19kZWJ1ZyAmJiAhKGRybV9kZWJ1ZyAm
IERSTV9VVF9EUklWRVIpKQorCWlmIChpc19kZWJ1ZyAmJiAhZHJtX2RlYnVnX2VuYWJsZWQoRFJN
X1VUX0RSSVZFUikpCiAJCXJldHVybjsKIAogCXZhX3N0YXJ0KGFyZ3MsIGZtdCk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCA2YWE0MGY1NDYyMjYuLjNkNGNjZGY4NDlhNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC01MzQyLDcgKzUzNDIsNyBAQCBza2xfcHJpbnRfd21fY2hhbmdl
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YzsKIAlpbnQgaTsKIAotCWlmICgoZHJtX2RlYnVnICYgRFJNX1VUX0tNUykgPT0gMCkKKwlp
ZiAoIWRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9LTVMpKQogCQlyZXR1cm47CiAKIAlmb3JfZWFj
aF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUs
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
