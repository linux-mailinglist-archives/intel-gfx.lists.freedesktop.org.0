Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BAA2778B4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177D56EB47;
	Thu, 24 Sep 2020 18:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6427A6EB4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:48:46 +0000 (UTC)
IronPort-SDR: a5ytqmzDewJ1bWxyYs0WagMkvYkyNbfjWpBG19InLoAqQ23fUw/2WSaxuYSojvVN/BtaKZgMvb
 2Y1N+KkCUZ9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="225447618"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="225447618"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:48:46 -0700
IronPort-SDR: ZyhT0S49YokKsbQe6+LCkCrRbpdHxgOuefhshU9tL9HuEnBbn3buLUoxoLjplStEvclWZd//Uc
 21H94IEkMXlQ==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="455469177"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:48:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 21:48:02 +0300
Message-Id: <20200924184805.294493-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200924184805.294493-1-imre.deak@intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915: Factor out a helper to disable
 the DPCD training pattern
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

VG8gcHJlcGFyZSBmb3IgYSBmb2xsb3ctdXAgTFRUUFIgY2hhbmdlIGZhY3RvciBvdXQgYSBoZWxw
ZXIgdG8gZGlzYWJsZQp0aGUgdHJhaW5pbmcgcGF0dGVybiBpbiBEUENELiBXZSdsbCBuZWVkIHRv
IGRvIHRoaXMgZm9yIGVhY2ggTFRUUFIKKHdpdGhvdXQgcHJvZ3JhbW1pbmcgdGhlIHBvcnQgdG8g
b3V0cHV0IHRoZSBpZGxlIHBhdHRlcm4pIHdoZW4gdHJhaW5pbmcKaW4gTFRUUFIgbm9uLXRyYW5z
cGFyZW50IG1vZGUuCgpXaGlsZSBhdCBpdCBhbHNvIG1vdmUgdGhlIGRpc2FibGUtbGluay10cmFp
bmluZyBsb2dpYyBmcm9tCmludGVsX2RwX3NldF9saW5rX3RyYWluKCkgdG8gaW50ZWxfZHBfc3Rv
cF9saW5rX3RyYWluKCksIHNpbmNlIHRoZQpsYXR0ZXIgaXMgdGhlIG9ubHkgdXNlciBvZiB0aGlz
LgoKdjI6Ci0gTW92ZSB0aGUgZGlzYWJsZS1saW5rLXRyYWluaW5nIGxvZ2ljIHRvIGludGVsX2Rw
X3N0b3BfbGlua190cmFpbigpCiAgKFZpbGxlKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMgfCAzMiArKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRleCA3OGIwZjE2NWZhZGQu
LjM4ZDQ1NTM2NzBhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKQEAgLTkxLDI1ICs5MSwxNyBAQCBpbnRlbF9kcF9z
ZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJdTggZHBfdHJhaW5f
cGF0KQogewogCXU4IGJ1ZltzaXplb2YoaW50ZWxfZHAtPnRyYWluX3NldCkgKyAxXTsKLQlpbnQg
cmV0LCBsZW47CisJaW50IGxlbjsKIAogCWludGVsX2RwX3Byb2dyYW1fbGlua190cmFpbmluZ19w
YXR0ZXJuKGludGVsX2RwLCBkcF90cmFpbl9wYXQpOwogCiAJYnVmWzBdID0gZHBfdHJhaW5fcGF0
OwotCWlmIChpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuX3N5bWJvbChkcF90cmFpbl9wYXQpID09
Ci0JICAgIERQX1RSQUlOSU5HX1BBVFRFUk5fRElTQUJMRSkgewotCQkvKiBkb24ndCB3cml0ZSBE
UF9UUkFJTklOR19MQU5FeF9TRVQgb24gZGlzYWJsZSAqLwotCQlsZW4gPSAxOwotCX0gZWxzZSB7
Ci0JCS8qIERQX1RSQUlOSU5HX0xBTkV4X1NFVCBmb2xsb3cgRFBfVFJBSU5JTkdfUEFUVEVSTl9T
RVQgKi8KLQkJbWVtY3B5KGJ1ZiArIDEsIGludGVsX2RwLT50cmFpbl9zZXQsIGludGVsX2RwLT5s
YW5lX2NvdW50KTsKLQkJbGVuID0gaW50ZWxfZHAtPmxhbmVfY291bnQgKyAxOwotCX0KKwkvKiBE
UF9UUkFJTklOR19MQU5FeF9TRVQgZm9sbG93IERQX1RSQUlOSU5HX1BBVFRFUk5fU0VUICovCisJ
bWVtY3B5KGJ1ZiArIDEsIGludGVsX2RwLT50cmFpbl9zZXQsIGludGVsX2RwLT5sYW5lX2NvdW50
KTsKKwlsZW4gPSBpbnRlbF9kcC0+bGFuZV9jb3VudCArIDE7CiAKLQlyZXQgPSBkcm1fZHBfZHBj
ZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfVFJBSU5JTkdfUEFUVEVSTl9TRVQsCi0JCQkJYnVm
LCBsZW4pOwotCi0JcmV0dXJuIHJldCA9PSBsZW47CisJcmV0dXJuIGRybV9kcF9kcGNkX3dyaXRl
KCZpbnRlbF9kcC0+YXV4LCBEUF9UUkFJTklOR19QQVRURVJOX1NFVCwKKwkJCQkgYnVmLCBsZW4p
ID09IGxlbjsKIH0KIAogc3RhdGljIGJvb2wKQEAgLTM5Miw2ICszODQsMTMgQEAgaW50ZWxfZHBf
bGlua190cmFpbmluZ19jaGFubmVsX2VxdWFsaXphdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQogCXJldHVybiBjaGFubmVsX2VxOwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9kcF9kaXNh
YmxlX2RwY2RfdHJhaW5pbmdfcGF0dGVybihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQorewor
CXU4IHZhbCA9IERQX1RSQUlOSU5HX1BBVFRFUk5fRElTQUJMRTsKKworCXJldHVybiBkcm1fZHBf
ZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfVFJBSU5JTkdfUEFUVEVSTl9TRVQsICZ2YWws
IDEpID09IDE7Cit9CisKIC8qKgogICogaW50ZWxfZHBfc3RvcF9saW5rX3RyYWluIC0gc3RvcCBs
aW5rIHRyYWluaW5nCiAgKiBAaW50ZWxfZHA6IERQIHN0cnVjdApAQCAtNDExLDggKzQxMCw5IEBA
IHZvaWQgaW50ZWxfZHBfc3RvcF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiB7CiAJaW50ZWxfZHAtPmxpbmtfdHJhaW5lZCA9IHRydWU7CiAKLQlpbnRlbF9kcF9zZXRfbGlu
a190cmFpbihpbnRlbF9kcCwKLQkJCQlEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpOworCWlu
dGVsX2RwX3Byb2dyYW1fbGlua190cmFpbmluZ19wYXR0ZXJuKGludGVsX2RwLAorCQkJCQkgICAg
ICAgRFBfVFJBSU5JTkdfUEFUVEVSTl9ESVNBQkxFKTsKKwlpbnRlbF9kcF9kaXNhYmxlX2RwY2Rf
dHJhaW5pbmdfcGF0dGVybihpbnRlbF9kcCk7CiB9CiAKIHN0YXRpYyBib29sCi0tIAoyLjI1LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
