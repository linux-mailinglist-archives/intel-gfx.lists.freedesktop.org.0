Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3A3A332A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A996E4CA;
	Thu, 10 Jun 2021 18:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587BD6EDCC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:32:49 +0000 (UTC)
IronPort-SDR: 4eyvck5Pf/jGy697LLL/oZzMwXYZ/GCFmR1tj3zoUl13bDwfTqzgt6SQ0+49URUz8WAYiLukxK
 MeMJLNinAqwg==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="203529385"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="203529385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:32:48 -0700
IronPort-SDR: vNw3o1xJl4WclvPLqlKapzVMgwGA4RdAx1I/sqbuXyiKVhnd/TYnp40oS1Gp4tPY74uGsQL5X/
 81L0KuDOB+hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="477442094"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 10 Jun 2021 11:32:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:32:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:30 +0300
Message-Id: <20210610183237.3920-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/fbc: Extract
 intel_fbc_program_cfb()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgdGhlIENGQiAoK0xMQikgcHJvZ3JhbW1pbmcgaW50byBhIHNlcGFyYXRlIGZ1bmN0aW9u
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwg
NDYgKysrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKaW5kZXggNzE1ZjVjNjBkOWM1Li4zYjBlM2U5MTNlZjkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNTA2LDEzICs1MDYsNyBAQCBzdGF0aWMgaW50
IGludGVsX2ZiY19hbGxvY19jZmIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CiAJZmJjLT5saW1pdCA9IHJldDsKIAotCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gNSkK
LQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElMS19EUEZDX0NCX0JBU0UsCi0JCQkgICAgICAg
ZmJjLT5jb21wcmVzc2VkX2ZiLnN0YXJ0KTsKLQllbHNlIGlmIChJU19HTTQ1KGRldl9wcml2KSkg
ewotCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBGQ19DQl9CQVNFLAotCQkJICAgICAgIGZi
Yy0+Y29tcHJlc3NlZF9mYi5zdGFydCk7Ci0JfSBlbHNlIHsKKwlpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpIDwgNSAmJiAhSVNfRzRYKGRldl9wcml2KSkgewogCQljb21wcmVzc2VkX2xsYiA9IGt6
YWxsb2Moc2l6ZW9mKCpjb21wcmVzc2VkX2xsYiksIEdGUF9LRVJORUwpOwogCQlpZiAoIWNvbXBy
ZXNzZWRfbGxiKQogCQkJZ290byBlcnJfZmI7CkBAIC01MjMsMTcgKzUxNyw2IEBAIHN0YXRpYyBp
bnQgaW50ZWxfZmJjX2FsbG9jX2NmYihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQlnb3RvIGVycl9mYjsKIAogCQlmYmMtPmNvbXByZXNzZWRfbGxiID0gY29tcHJlc3NlZF9s
bGI7Ci0KLQkJR0VNX0JVR19PTihyYW5nZV9vdmVyZmxvd3NfZW5kX3QodTY0LCBkZXZfcHJpdi0+
ZHNtLnN0YXJ0LAotCQkJCQkJIGZiYy0+Y29tcHJlc3NlZF9mYi5zdGFydCwKLQkJCQkJCSBVMzJf
TUFYKSk7Ci0JCUdFTV9CVUdfT04ocmFuZ2Vfb3ZlcmZsb3dzX2VuZF90KHU2NCwgZGV2X3ByaXYt
PmRzbS5zdGFydCwKLQkJCQkJCSBmYmMtPmNvbXByZXNzZWRfbGxiLT5zdGFydCwKLQkJCQkJCSBV
MzJfTUFYKSk7Ci0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBGQkNfQ0ZCX0JBU0UsCi0JCQkg
ICAgICAgZGV2X3ByaXYtPmRzbS5zdGFydCArIGZiYy0+Y29tcHJlc3NlZF9mYi5zdGFydCk7Ci0J
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBGQkNfTExfQkFTRSwKLQkJCSAgICAgICBkZXZfcHJp
di0+ZHNtLnN0YXJ0ICsgY29tcHJlc3NlZF9sbGItPnN0YXJ0KTsKIAl9CiAKIAlkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwKQEAgLTU1MSw2ICs1MzQsMzEgQEAgc3RhdGljIGludCBpbnRlbF9m
YmNfYWxsb2NfY2ZiKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4g
LUVOT1NQQzsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZmJjX3Byb2dyYW1fY2ZiKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlzdHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAm
ZGV2X3ByaXYtPmZiYzsKKworCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gNSkgeworCQlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUxLX0RQRkNfQ0JfQkFTRSwKKwkJCSAgICAgICBmYmMt
PmNvbXByZXNzZWRfZmIuc3RhcnQpOworCX0gZWxzZSBpZiAoSVNfR000NShkZXZfcHJpdikpIHsK
KwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQRkNfQ0JfQkFTRSwKKwkJCSAgICAgICBmYmMt
PmNvbXByZXNzZWRfZmIuc3RhcnQpOworCX0gZWxzZSB7CisJCUdFTV9CVUdfT04ocmFuZ2Vfb3Zl
cmZsb3dzX2VuZF90KHU2NCwgZGV2X3ByaXYtPmRzbS5zdGFydCwKKwkJCQkJCSBmYmMtPmNvbXBy
ZXNzZWRfZmIuc3RhcnQsCisJCQkJCQkgVTMyX01BWCkpOworCQlHRU1fQlVHX09OKHJhbmdlX292
ZXJmbG93c19lbmRfdCh1NjQsIGRldl9wcml2LT5kc20uc3RhcnQsCisJCQkJCQkgZmJjLT5jb21w
cmVzc2VkX2xsYi0+c3RhcnQsCisJCQkJCQkgVTMyX01BWCkpOworCisJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBGQkNfQ0ZCX0JBU0UsCisJCQkgICAgICAgZGV2X3ByaXYtPmRzbS5zdGFydCAr
IGZiYy0+Y29tcHJlc3NlZF9mYi5zdGFydCk7CisJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBG
QkNfTExfQkFTRSwKKwkJCSAgICAgICBkZXZfcHJpdi0+ZHNtLnN0YXJ0ICsgZmJjLT5jb21wcmVz
c2VkX2xsYi0+c3RhcnQpOworCX0KK30KKwogc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfY2xlYW51
cF9jZmIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpbnRl
bF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOwpAQCAtMTMwMiw2ICsxMzEwLDggQEAgdm9pZCBp
bnRlbF9mYmNfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWZiYy0+
bm9fZmJjX3JlYXNvbiA9ICJGQkMgZW5hYmxlZCBidXQgbm90IGFjdGl2ZSB5ZXRcbiI7CiAKIAlm
YmMtPmNydGMgPSBjcnRjOworCisJaW50ZWxfZmJjX3Byb2dyYW1fY2ZiKGRldl9wcml2KTsKIG91
dDoKIAltdXRleF91bmxvY2soJmZiYy0+bG9jayk7CiB9Ci0tIAoyLjMxLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
