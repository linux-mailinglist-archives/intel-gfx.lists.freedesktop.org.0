Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F5495CE1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 13:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E666E77F;
	Tue, 20 Aug 2019 11:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CDA6E77F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 11:06:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 04:06:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="183166346"
Received: from sorvi.fi.intel.com ([10.237.72.159])
 by orsmga006.jf.intel.com with ESMTP; 20 Aug 2019 04:06:18 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 14:06:31 +0300
Message-Id: <20190820110631.15793-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Lower cdclk for sub 4k resolutions
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8gYWNoaWV2ZSBpbXByb3ZlZCBwb3dlciBzYXZpbmdzIHdlIGNhbiB0dW5lIGRv
d24gQ0QgY2xvY2sgZnJlcXVlbmN5CmZvciBzdWIgNGsgcmVzb2x1dGlvbnMuIFRoZSBtYXhpbXVt
IENEIGNsb2NrIGZyZXF1ZW5jeSBmb3Igc3ViIDRrCnJlc29sdXRpb25zIGlzIHNldCB0byAxNzIu
OCBNSHouCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDI2ICsr
KysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuaCB8ICAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCmlu
ZGV4IGQwYmM0MmU1MDM5Yy4uMWQ2YzdiYzc5NDcwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0yNjEwLDYgKzI2MTAsMjQgQEAgc3RhdGljIGludCBp
bnRlbF9jb21wdXRlX21heF9kb3RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQlyZXR1cm4gbWF4X2NkY2xrX2ZyZXEqOTAvMTAwOwogfQogCitib29sIG1vZGVfaXNfNGso
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZzsKKworCWZvcl9l
YWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMpIHsKKwkJcGlwZV9jb25maWcgPSB0
b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOworCisJCWlmIChwaXBlX2NvbmZp
Zy0+YmFzZS5hY3RpdmUpIHsKKwkJCWlmIChwaXBlX2NvbmZpZy0+cGlwZV9zcmNfdyA+PSBXSURU
SF80SyAmJgorCQkJICAgIHBpcGVfY29uZmlnLT5waXBlX3NyY19oID49IEhFSUdIVF80SykKKwkJ
CQlyZXR1cm4gdHJ1ZTsKKwkJfQorCX0KKworCXJldHVybiBmYWxzZTsKK30KKwogLyoqCiAgKiBp
bnRlbF91cGRhdGVfbWF4X2NkY2xrIC0gRGV0ZXJtaW5lIHRoZSBtYXhpbXVtIHN1cHBvcnQgQ0RD
TEsgZnJlcXVlbmN5CiAgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCkBAIC0yNjIwLDcgKzI2Mzgs
MTMgQEAgc3RhdGljIGludCBpbnRlbF9jb21wdXRlX21heF9kb3RjbGsoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogICovCiB2b2lkIGludGVsX3VwZGF0ZV9tYXhfY2RjbGsoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCWlmIChJU19FTEtIQVJUTEFLRShk
ZXZfcHJpdikpIHsKKwkvKgorCSAqIFVzZSBsb3dlciBDRENMSyBmcmVxdWVuY3kgb24gVGlnZXJs
YWtlIHdoZW4gc2VsZWN0ZWQKKwkgKiBtb2RlIGlzIGxlc3MgdGhhbiA0ay4KKwkgKi8KKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMiAmJiAhbW9kZV9pc180ayhkZXZfcHJpdikpIHsKKwkJ
ZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxID0gMTcyODAwOworCX0gZWxzZSBpZiAoSVNfRUxLSEFS
VExBS0UoZGV2X3ByaXYpKSB7CiAJCWlmIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmID09IDI0MDAw
KQogCQkJZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxID0gNTUyMDAwOwogCQllbHNlCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgKaW5kZXggNGQ2ZjdmNWY4OTMwLi5j
ZWZiNTE0NmRkY2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmgKQEAgLTE1LDYgKzE1LDkgQEAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsKIHN0cnVjdCBp
bnRlbF9jZGNsa19zdGF0ZTsKIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogCisjZGVmaW5lIFdJ
RFRIXzRLICAzODYwCisjZGVmaW5lIEhFSUdIVF80SyAyMTYwCisKIGludCBpbnRlbF9jcnRjX2Nv
bXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsKIHZvaWQgaW50ZWxfY2RjbGtfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
CiB2b2lkIGludGVsX2NkY2xrX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
