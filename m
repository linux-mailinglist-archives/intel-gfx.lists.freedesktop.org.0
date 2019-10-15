Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA83D7C19
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C73F6E866;
	Tue, 15 Oct 2019 16:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F6E891D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:40:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 09:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279240738"
Received: from unknown (HELO ldmartin-desk1.intel.com) ([10.24.11.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Oct 2019 09:40:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 09:40:26 -0700
Message-Id: <20191015164029.18431-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015164029.18431-1-lucas.demarchi@intel.com>
References: <20191015164029.18431-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 v2 2/5] drm/i915: fix port checks for MST
 support on gen >= 11
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

Qm90aCBJY2UgTGFrZSBhbmQgRWxraGFydCBMYWtlIChnZW4gMTEpIHN1cHBvcnQgTVNUIG9uIGFs
bCBleHRlcm5hbApjb25uZWN0aW9ucyBleGNlcHQgRERJIEEuIFRpZ2VyIExha2UgKGdlbiAxMikg
c3VwcG9ydHMgb24gYWxsIGV4dGVybmFsCmNvbm5lY3Rpb25zLgoKTW92ZSB0aGUgY2hlY2sgdG8g
aGFwcGVuIGluc2lkZSBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KCkgYW5kIGFkZApzcGVjaWZp
YyBwbGF0Zm9ybSBjaGVja3MuCgp2MjogUmVwbGFjZSAhPSB3aXRoID09IGNoZWNrcyBmb3IgcG9y
dHMgb24gZ2VuIDwgMTEgKFZpbGxlKQoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICAgICB8ICA3ICsrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMgfCAyMiArKysrKysrKysrKysrKystLS0tLS0KIDIgZmlsZXMgY2hh
bmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDY1OTRmMmFmMTI1Ny4uNDE1ZDBmMmMyNzUxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC03MjcxLDExICs3Mjcx
LDggQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQsCiAJCWludGVsX2Nvbm5lY3Rvci0+Z2V0X2h3X3N0YXRlID0gaW50ZWxf
Y29ubmVjdG9yX2dldF9od19zdGF0ZTsKIAogCS8qIGluaXQgTVNUIG9uIHBvcnRzIHRoYXQgY2Fu
IHN1cHBvcnQgaXQgKi8KLQlpZiAoSEFTX0RQX01TVChkZXZfcHJpdikgJiYgIWludGVsX2RwX2lz
X2VkcChpbnRlbF9kcCkgJiYKLQkgICAgKHBvcnQgPT0gUE9SVF9CIHx8IHBvcnQgPT0gUE9SVF9D
IHx8Ci0JICAgICBwb3J0ID09IFBPUlRfRCB8fCBwb3J0ID09IFBPUlRfRikpCi0JCWludGVsX2Rw
X21zdF9lbmNvZGVyX2luaXQoaW50ZWxfZGlnX3BvcnQsCi0JCQkJCSAgaW50ZWxfY29ubmVjdG9y
LT5iYXNlLmJhc2UuaWQpOworCWludGVsX2RwX21zdF9lbmNvZGVyX2luaXQoaW50ZWxfZGlnX3Bv
cnQsCisJCQkJICBpbnRlbF9jb25uZWN0b3ItPmJhc2UuYmFzZS5pZCk7CiAKIAlpZiAoIWludGVs
X2VkcF9pbml0X2Nvbm5lY3RvcihpbnRlbF9kcCwgaW50ZWxfY29ubmVjdG9yKSkgewogCQlpbnRl
bF9kcF9hdXhfZmluaShpbnRlbF9kcCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYwppbmRleCAyMjAzYmUyOGVhMDEuLmVhMDYyZmVhOGE0NCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCkBAIC02NTUsMjEgKzY1NSwz
MSBAQCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3RpdmVfbGlua3Moc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiBpbnQKIGludGVsX2RwX21zdF9lbmNvZGVyX2luaXQo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2Jhc2Vf
aWQpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGludGVsX2Rp
Z19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmlu
dGVsX2RpZ19wb3J0LT5kcDsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UuYmFzZS5kZXY7CisJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFz
ZS5wb3J0OwogCWludCByZXQ7CiAKLQlpbnRlbF9kcC0+Y2FuX21zdCA9IHRydWU7CisJaWYgKCFI
QVNfRFBfTVNUKGk5MTUpIHx8IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCisJCXJldHVybiAw
OworCisJaWYgKElOVEVMX0dFTihpOTE1KSA8PSAxMSAmJiBwb3J0ID09IFBPUlRfQSkKKwkJcmV0
dXJuIDA7CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTEgJiYgcG9ydCA9PSBQT1JUX0UpCisJ
CXJldHVybiAwOworCiAJaW50ZWxfZHAtPm1zdF9tZ3IuY2JzID0gJm1zdF9jYnM7CiAKIAkvKiBj
cmVhdGUgZW5jb2RlcnMgKi8KIAlpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2RlcnMoaW50
ZWxfZGlnX3BvcnQpOwotCXJldCA9IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2luaXQoJmludGVs
X2RwLT5tc3RfbWdyLCBkZXYsCisJcmV0ID0gZHJtX2RwX21zdF90b3BvbG9neV9tZ3JfaW5pdCgm
aW50ZWxfZHAtPm1zdF9tZ3IsICZpOTE1LT5kcm0sCiAJCQkJCSAgICZpbnRlbF9kcC0+YXV4LCAx
NiwgMywgY29ubl9iYXNlX2lkKTsKLQlpZiAocmV0KSB7Ci0JCWludGVsX2RwLT5jYW5fbXN0ID0g
ZmFsc2U7CisJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKLQl9CisKKwlpbnRlbF9kcC0+Y2FuX21z
dCA9IHRydWU7CisKIAlyZXR1cm4gMDsKIH0KIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
