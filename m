Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBA82FF661
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 21:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95D56E954;
	Thu, 21 Jan 2021 20:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528DE6E954
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 20:53:10 +0000 (UTC)
IronPort-SDR: nPDep6yR8L5OS/ha1BbfjnZy4kOtuarH+bWfkn57IXVIUr4lTBJvVOZsj0TVT3lbV8vYIVgXXj
 FHTZNqNUAr9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179429011"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="179429011"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 12:53:08 -0800
IronPort-SDR: uwmhq2qvBpdM2m9oVpVC1JVM7OvfXm2TqBWzn/9bUsIp9Z1UAyYRS0JBUkI5c42b3QdK/F3UHj
 WnLbTq1xG0UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="407447704"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 21 Jan 2021 12:53:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Jan 2021 22:53:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 22:52:55 +0200
Message-Id: <20210121205302.24897-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210121205302.24897-1-ville.syrjala@linux.intel.com>
References: <20210121205302.24897-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: Extract intel_crtc_ddb_weight()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoKSBkb2Vzbid0IGNhcmUgaG93IHRoZSB3
ZWlnaHRzCmZvciBkaXN0cmlidXRpbmcgdGhlIGRkYiBhcmUgY2FjbGN1bGF0ZWQgZm9yIGVhY2gg
cGlwZS4gUHV0IHRoYXQKY2FsY3VsYXRpb24gaW50byBhIHNlcGFyYXRlIGZ1bmN0aW9uIHNvIHRo
YXQgc3VjaCBtdW5kYW5lIGRldGFpbHMKYXJlIGhpZGRlbiBmcm9tIHZpZXcuCgp2Mjogcy9hZGp1
c3RlZF9tb2RlL3BpcGVfbW9kZS8KClJldmlld2VkLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIHwgNDUgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKaW5kZXggOTE4MGRiMWJmZGE3Li4zYjVlNjgzNmMyNDYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwpAQCAtNDA3Nyw2ICs0MDc3LDI0IEBAIHUzMiBza2xfZGRiX2RidWZf
c2xpY2VfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIHNs
aWNlX21hc2s7CiB9CiAKK3N0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfY3J0Y19kZGJfd2VpZ2h0
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21vZGUgPSAmY3J0Y19zdGF0ZS0+aHcucGlwZV9t
b2RlOworCWludCBoZGlzcGxheSwgdmRpc3BsYXk7CisKKwlpZiAoIWNydGNfc3RhdGUtPmh3LmFj
dGl2ZSkKKwkJcmV0dXJuIDA7CisKKwkvKgorCSAqIFdhdGVybWFyay9kZGIgcmVxdWlyZW1lbnQg
aGlnaGx5IGRlcGVuZHMgdXBvbiB3aWR0aCBvZiB0aGUKKwkgKiBmcmFtZWJ1ZmZlciwgU28gaW5z
dGVhZCBvZiBhbGxvY2F0aW5nIEREQiBlcXVhbGx5IGFtb25nIHBpcGVzCisJICogZGlzdHJpYnV0
ZSBEREIgYmFzZWQgb24gcmVzb2x1dGlvbi93aWR0aCBvZiB0aGUgZGlzcGxheS4KKwkgKi8KKwlk
cm1fbW9kZV9nZXRfaHZfdGltaW5nKHBpcGVfbW9kZSwgJmhkaXNwbGF5LCAmdmRpc3BsYXkpOwor
CisJcmV0dXJuIGhkaXNwbGF5OworfQorCiBzdGF0aWMgdTggc2tsX2NvbXB1dGVfZGJ1Zl9zbGlj
ZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJICB1OCBh
Y3RpdmVfcGlwZXMpOwogCkBAIC00MDkxLDcgKzQxMDksNyBAQCBza2xfZGRiX2dldF9waXBlX2Fs
bG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICppbnRlbF9zdGF0ZSA9IHRvX2ludGVsX2F0b21pY19zdGF0
ZShzdGF0ZSk7CiAJc3RydWN0IGRybV9jcnRjICpmb3JfY3J0YyA9IGNydGNfc3RhdGUtPnVhcGku
Y3J0YzsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKLQl1MzIgcGlwZV93aWR0aCA9
IDAsIHRvdGFsX3dpZHRoX2luX3JhbmdlID0gMCwgd2lkdGhfYmVmb3JlX3BpcGVfaW5fcmFuZ2Ug
PSAwOworCXVuc2lnbmVkIGludCBwaXBlX3dlaWdodCA9IDAsIHRvdGFsX3dlaWdodCA9IDAsIHdl
aWdodF9iZWZvcmVfcGlwZSA9IDA7CiAJZW51bSBwaXBlIGZvcl9waXBlID0gdG9faW50ZWxfY3J0
Yyhmb3JfY3J0YyktPnBpcGU7CiAJc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm5ld19kYnVmX3N0
YXRlID0KIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfZGJ1Zl9zdGF0ZShpbnRlbF9zdGF0ZSk7CkBA
IC00MTYwLDE4ICs0MTc4LDExIEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqLwogCWRkYl9yYW5nZV9zaXpl
ID0gaHdlaWdodDgoZGJ1Zl9zbGljZV9tYXNrKSAqIHNsaWNlX3NpemU7CiAKLQkvKgotCSAqIFdh
dGVybWFyay9kZGIgcmVxdWlyZW1lbnQgaGlnaGx5IGRlcGVuZHMgdXBvbiB3aWR0aCBvZiB0aGUK
LQkgKiBmcmFtZWJ1ZmZlciwgU28gaW5zdGVhZCBvZiBhbGxvY2F0aW5nIEREQiBlcXVhbGx5IGFt
b25nIHBpcGVzCi0JICogZGlzdHJpYnV0ZSBEREIgYmFzZWQgb24gcmVzb2x1dGlvbi93aWR0aCBv
ZiB0aGUgZGlzcGxheS4KLQkgKi8KIAl0b3RhbF9zbGljZV9tYXNrID0gZGJ1Zl9zbGljZV9tYXNr
OwogCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKGludGVsX3N0YXRlLCBjcnRjLCBj
cnRjX3N0YXRlLCBpKSB7Ci0JCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwaXBlX21v
ZGUgPQotCQkJJmNydGNfc3RhdGUtPmh3LnBpcGVfbW9kZTsKIAkJZW51bSBwaXBlIHBpcGUgPSBj
cnRjLT5waXBlOwotCQlpbnQgaGRpc3BsYXksIHZkaXNwbGF5OwotCQl1MzIgcGlwZV9kYnVmX3Ns
aWNlX21hc2s7CisJCXVuc2lnbmVkIGludCB3ZWlnaHQ7CisJCXU4IHBpcGVfZGJ1Zl9zbGljZV9t
YXNrOwogCiAJCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQogCQkJY29udGludWU7CkBAIC00
MTk4LDE0ICs0MjA5LDEzIEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlpZiAoZGJ1Zl9zbGljZV9tYXNrICE9
IHBpcGVfZGJ1Zl9zbGljZV9tYXNrKQogCQkJY29udGludWU7CiAKLQkJZHJtX21vZGVfZ2V0X2h2
X3RpbWluZyhwaXBlX21vZGUsICZoZGlzcGxheSwgJnZkaXNwbGF5KTsKLQotCQl0b3RhbF93aWR0
aF9pbl9yYW5nZSArPSBoZGlzcGxheTsKKwkJd2VpZ2h0ID0gaW50ZWxfY3J0Y19kZGJfd2VpZ2h0
KGNydGNfc3RhdGUpOworCQl0b3RhbF93ZWlnaHQgKz0gd2VpZ2h0OwogCiAJCWlmIChwaXBlIDwg
Zm9yX3BpcGUpCi0JCQl3aWR0aF9iZWZvcmVfcGlwZV9pbl9yYW5nZSArPSBoZGlzcGxheTsKKwkJ
CXdlaWdodF9iZWZvcmVfcGlwZSArPSB3ZWlnaHQ7CiAJCWVsc2UgaWYgKHBpcGUgPT0gZm9yX3Bp
cGUpCi0JCQlwaXBlX3dpZHRoID0gaGRpc3BsYXk7CisJCQlwaXBlX3dlaWdodCA9IHdlaWdodDsK
IAl9CiAKIAkvKgpAQCAtNDIyMCw5ICs0MjMwLDggQEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0
aW9uX2xpbWl0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQlyZXR1cm4g
cmV0OwogCX0KIAotCXN0YXJ0ID0gZGRiX3JhbmdlX3NpemUgKiB3aWR0aF9iZWZvcmVfcGlwZV9p
bl9yYW5nZSAvIHRvdGFsX3dpZHRoX2luX3JhbmdlOwotCWVuZCA9IGRkYl9yYW5nZV9zaXplICoK
LQkJKHdpZHRoX2JlZm9yZV9waXBlX2luX3JhbmdlICsgcGlwZV93aWR0aCkgLyB0b3RhbF93aWR0
aF9pbl9yYW5nZTsKKwlzdGFydCA9IGRkYl9yYW5nZV9zaXplICogd2VpZ2h0X2JlZm9yZV9waXBl
IC8gdG90YWxfd2VpZ2h0OworCWVuZCA9IGRkYl9yYW5nZV9zaXplICogKHdlaWdodF9iZWZvcmVf
cGlwZSArIHBpcGVfd2VpZ2h0KSAvIHRvdGFsX3dlaWdodDsKIAogCWFsbG9jLT5zdGFydCA9IG9m
ZnNldCArIHN0YXJ0OwogCWFsbG9jLT5lbmQgPSBvZmZzZXQgKyBlbmQ7Ci0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
