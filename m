Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BFA61EE7
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 14:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A8B89D5F;
	Mon,  8 Jul 2019 12:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 216AF89D56;
 Mon,  8 Jul 2019 12:53:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 05:53:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="248807637"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 08 Jul 2019 05:53:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Jul 2019 15:53:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 15:53:14 +0300
Message-Id: <20190708125325.16576-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
References: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/19] drm/i915: Stop using
 drm_atomic_helper_check_planes()
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IG5lZWQgdG8gaW5zZXJ0IHN0dWZmIGJldHdlZW4gdGhlIHBsYW5lIGFuZCBjcnRjIC5hdG9taWNf
Y2hlY2soKQpkcm1fYXRvbWljX2hlbHBlcl9jaGVja19wbGFuZXMoKSBkb2Vzbid0IGFsbG93IHVz
IHRvIGRvIHRoYXQgc28Kc3RvcCB1c2luZyBpdCBhbmQgaGFuZCByb2xsIHRoZSBsb29wcyBpbnN0
ZWFkLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMgfCAxMCArLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmggfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCA1NyArKysrKysrKysrKysrKystLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlv
bnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2F0b21pY19wbGFuZS5jCmluZGV4IDdmZjE5YjUyNGY5ZC4uZDc0OTM1NTFiMjhj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMKQEAgLTE5NCwxNCArMTk0LDExIEBAIGdldF9jcnRjX2Zyb21fc3RhdGVzKGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlLAogCXJldHVybiBOVUxMOwog
fQogCi1zdGF0aWMgaW50IGludGVsX3BsYW5lX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX3BsYW5l
ICpfcGxhbmUsCi0JCQkJICAgIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKl9uZXdfcGxhbmVfc3Rh
dGUpCitpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLAorCQkJICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKQogewotCXN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShfcGxhbmUpOwotCXN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0KLQkJdG9faW50ZWxfYXRvbWljX3N0YXRlKF9uZXdf
cGxhbmVfc3RhdGUtPnN0YXRlKTsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFu
ZV9zdGF0ZSA9Ci0JCXRvX2ludGVsX3BsYW5lX3N0YXRlKF9uZXdfcGxhbmVfc3RhdGUpOworCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOwogCWNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlID0KIAkJaW50ZWxfYXRvbWlj
X2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9CkBAIC0zNjgsNSArMzY1LDQgQEAgdm9pZCBpOXh4X3VwZGF0ZV9wbGFuZXNfb25fY3J0
YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIGNvbnN0IHN0cnVjdCBkcm1fcGxh
bmVfaGVscGVyX2Z1bmNzIGludGVsX3BsYW5lX2hlbHBlcl9mdW5jcyA9IHsKIAkucHJlcGFyZV9m
YiA9IGludGVsX3ByZXBhcmVfcGxhbmVfZmIsCiAJLmNsZWFudXBfZmIgPSBpbnRlbF9jbGVhbnVw
X3BsYW5lX2ZiLAotCS5hdG9taWNfY2hlY2sgPSBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2ssCiB9
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNf
cGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmgKaW5kZXggY2I3ZWY0ZjllYWZkLi5kYzg1YWYwMmU5YjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaApAQCAtNDEsNiArNDEsOCBA
QCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXwogCQkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxh
bmVfc3RhdGUsCiAJCQkJCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqaW50ZWxfc3RhdGUpOwor
aW50IGludGVsX3BsYW5lX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwKKwkJCSAgICAgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSk7CiBpbnQgaW50ZWxfcGxh
bmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGUsCiAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAogCQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0
ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
NTYzNWYyMDc5ZTRjLi41YTQyY2JmYTcyYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMTczMywxNSArMTE3MzMsMTQgQEAgc3RhdGljIGJv
b2wgYzhfcGxhbmVzX2NoYW5nZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlKQogCXJldHVybiAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5lcyAhPSAhbmV3X2Ny
dGNfc3RhdGUtPmM4X3BsYW5lczsKIH0KIAotc3RhdGljIGludCBpbnRlbF9jcnRjX2F0b21pY19j
aGVjayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjLAotCQkJCSAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0
ZSAqX2NydGNfc3RhdGUpCitzdGF0aWMgaW50IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQogewotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhfY3J0Yyk7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQotCQl0b19pbnRl
bF9jcnRjX3N0YXRlKF9jcnRjX3N0YXRlKTsKLQlpbnQgcmV0OworCQlpbnRlbF9hdG9taWNfZ2V0
X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAlib29sIG1vZGVfY2hhbmdlZCA9IG5lZWRz
X21vZGVzZXQoY3J0Y19zdGF0ZSk7CisJaW50IHJldDsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpIDwgNSAmJiAhSVNfRzRYKGRldl9wcml2KSAmJgogCSAgICBtb2RlX2NoYW5nZWQgJiYgIWNy
dGNfc3RhdGUtPmJhc2UuYWN0aXZlKQpAQCAtMTE4MTMsMTAgKzExODEyLDYgQEAgc3RhdGljIGlu
dCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjLAogCXJldHVy
biByZXQ7CiB9CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfaGVscGVyX2Z1bmNzIGlu
dGVsX2hlbHBlcl9mdW5jcyA9IHsKLQkuYXRvbWljX2NoZWNrID0gaW50ZWxfY3J0Y19hdG9taWNf
Y2hlY2ssCi19OwotCiBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3VwZGF0ZV9jb25uZWN0b3Jf
YXRvbWljX3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yOwpAQCAtMTM0NTcsNiArMTM0NTIsNDIgQEAgc3RhdGljIHZvaWQg
aW50ZWxfY3J0Y19jaGVja19mYXN0c2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpv
bGRfY3J0Y19zdGEKIAluZXdfY3J0Y19zdGF0ZS0+aGFzX2RycnMgPSBvbGRfY3J0Y19zdGF0ZS0+
aGFzX2RycnM7CiB9CiAKK3N0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX3BsYW5lcyhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlOworCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7CisJaW50IGksIHJl
dDsKKworCWZvcl9lYWNoX25ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIHBs
YW5lX3N0YXRlLCBpKSB7CisJCXJldCA9IGludGVsX3BsYW5lX2F0b21pY19jaGVjayhzdGF0ZSwg
cGxhbmUpOworCQlpZiAocmV0KSB7CisJCQlEUk1fREVCVUdfQVRPTUlDKCJbUExBTkU6JWQ6JXNd
IGF0b21pYyBkcml2ZXIgY2hlY2sgZmFpbGVkXG4iLAorCQkJCQkgcGxhbmUtPmJhc2UuYmFzZS5p
ZCwgcGxhbmUtPmJhc2UubmFtZSk7CisJCQlyZXR1cm4gcmV0OworCQl9CisJfQorCisJcmV0dXJu
IDA7Cit9CisKK3N0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX2NydGNzKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCWludCBpOworCisJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJ
aW50IHJldCA9IGludGVsX2NydGNfYXRvbWljX2NoZWNrKHN0YXRlLCBjcnRjKTsKKwkJaWYgKHJl
dCkgeworCQkJRFJNX0RFQlVHX0FUT01JQygiW0NSVEM6JWQ6JXNdIGF0b21pYyBkcml2ZXIgY2hl
Y2sgZmFpbGVkXG4iLAorCQkJCQkgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUp
OworCQkJcmV0dXJuIHJldDsKKwkJfQorCX0KKworCXJldHVybiAwOworfQorCiAvKioKICAqIGlu
dGVsX2F0b21pY19jaGVjayAtIHZhbGlkYXRlIHN0YXRlIG9iamVjdAogICogQGRldjogZHJtIGRl
dmljZQpAQCAtMTM1MjAsNyArMTM1NTEsMTEgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hl
Y2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAKLQly
ZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jaGVja19wbGFuZXMoZGV2LCAmc3RhdGUtPmJhc2UpOwor
CXJldCA9IGludGVsX2F0b21pY19jaGVja19wbGFuZXMoc3RhdGUpOworCWlmIChyZXQpCisJCWdv
dG8gZmFpbDsKKworCXJldCA9IGludGVsX2F0b21pY19jaGVja19jcnRjcyhzdGF0ZSk7CiAJaWYg
KHJldCkKIAkJZ290byBmYWlsOwogCkBAIC0xNTA1MSw4ICsxNTA4Niw2IEBAIHN0YXRpYyBpbnQg
aW50ZWxfY3J0Y19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBw
aXBlIHBpcGUpCiAJCWRldl9wcml2LT5wbGFuZV90b19jcnRjX21hcHBpbmdbaTl4eF9wbGFuZV0g
PSBpbnRlbF9jcnRjOwogCX0KIAotCWRybV9jcnRjX2hlbHBlcl9hZGQoJmludGVsX2NydGMtPmJh
c2UsICZpbnRlbF9oZWxwZXJfZnVuY3MpOwotCiAJaW50ZWxfY29sb3JfaW5pdChpbnRlbF9jcnRj
KTsKIAogCVdBUk5fT04oZHJtX2NydGNfaW5kZXgoJmludGVsX2NydGMtPmJhc2UpICE9IGludGVs
X2NydGMtPnBpcGUpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
