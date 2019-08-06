Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4C182F64
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60746E362;
	Tue,  6 Aug 2019 10:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52178920E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631801"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:25 +0300
Message-Id: <6c898ec6511af47c1c5b679e516dc757cd207146.1565085691.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/bw: make
 intel_atomic_get_bw_state() static
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gbmVlZCBmb3IgdGhpcyBmdW5jdGlvbiB0byBiZSBhY2Nlc3NpYmxlIG91dHNpZGUgb2YgaW50
ZWxfYncuYy4gQXZvaWQKaW5jbHVkaW5nIHRoZSBpOTE1X2Rydi5oIG1lZ2EgaGVhZGVyIGZyb20g
b3RoZXIgaGVhZGVyIGZpbGVzIHRvIG1ha2UKZnVydGhlciBoZWFkZXIgY2xlYW51cCBlYXNpZXIu
CgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDE0ICsrKysrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmggfCAxNSAtLS0tLS0t
LS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCmluZGV4IGVlNTJjNWI0
NjQzYi4uZTU5ZjhiZTdjOTk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5jCkBAIC0zMjIsNiArMzIyLDIwIEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfYndfZGF0
YV9yYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gZGF0YV9y
YXRlOwogfQogCitzdGF0aWMgc3RydWN0IGludGVsX2J3X3N0YXRlICoKK2ludGVsX2F0b21pY19n
ZXRfYndfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOwor
CXN0cnVjdCBkcm1fcHJpdmF0ZV9zdGF0ZSAqYndfc3RhdGU7CisKKwlid19zdGF0ZSA9IGRybV9h
dG9taWNfZ2V0X3ByaXZhdGVfb2JqX3N0YXRlKCZzdGF0ZS0+YmFzZSwKKwkJCQkJCSAgICAmZGV2
X3ByaXYtPmJ3X29iaik7CisJaWYgKElTX0VSUihid19zdGF0ZSkpCisJCXJldHVybiBFUlJfQ0FT
VChid19zdGF0ZSk7CisKKwlyZXR1cm4gdG9faW50ZWxfYndfc3RhdGUoYndfc3RhdGUpOworfQor
CiBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaAppbmRl
eCBlOWQ5YzZkNjNiYzMuLjlkYjEwYWYwMTJmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuaApAQCAtOCw3ICs4LDYgQEAKIAogI2luY2x1ZGUgPGRybS9kcm1fYXRvbWlj
Lmg+CiAKLSNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIK
IAogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CkBAIC0yNCwyMCArMjMsNiBAQCBzdHJ1Y3QgaW50
ZWxfYndfc3RhdGUgewogCiAjZGVmaW5lIHRvX2ludGVsX2J3X3N0YXRlKHgpIGNvbnRhaW5lcl9v
ZigoeCksIHN0cnVjdCBpbnRlbF9id19zdGF0ZSwgYmFzZSkKIAotc3RhdGljIGlubGluZSBzdHJ1
Y3QgaW50ZWxfYndfc3RhdGUgKgotaW50ZWxfYXRvbWljX2dldF9id19zdGF0ZShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Ci0Jc3RydWN0IGRybV9wcml2YXRlX3N0
YXRlICpid19zdGF0ZTsKLQotCWJ3X3N0YXRlID0gZHJtX2F0b21pY19nZXRfcHJpdmF0ZV9vYmpf
c3RhdGUoJnN0YXRlLT5iYXNlLAotCQkJCQkJICAgICZkZXZfcHJpdi0+Yndfb2JqKTsKLQlpZiAo
SVNfRVJSKGJ3X3N0YXRlKSkKLQkJcmV0dXJuIEVSUl9DQVNUKGJ3X3N0YXRlKTsKLQotCXJldHVy
biB0b19pbnRlbF9id19zdGF0ZShid19zdGF0ZSk7Ci19Ci0KIHZvaWQgaW50ZWxfYndfaW5pdF9o
dyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogaW50IGludGVsX2J3X2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIGludCBpbnRlbF9id19hdG9taWNf
Y2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
