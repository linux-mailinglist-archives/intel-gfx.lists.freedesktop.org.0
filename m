Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8876CF91B5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA40D6EA49;
	Tue, 12 Nov 2019 14:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9506EA49
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="234877850"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 12 Nov 2019 06:15:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:59 +0200
Message-Id: <20191112141503.1116-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Change watermark hook calling
 convention
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgcGFzcyB0aGUgYXRvbWljX3N0YXRlK2NydGMgdG8gdGhlIHdhdGVybWFya3MgaG9va3MuIEVl
YXNpZXIKdGltZSBmb3IgdGhlIGNhbGxlciB3aGVuIGl0IGRvZXNuJ3QgaGF2ZSB0byB0aGluayB3
aGF0IHRvIHBhc3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMzIgKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgICAgfCAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyAgICAgICAgICAgICAgfCA2MyArKysrKysrKysrKy0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2Vk
LCA1MyBpbnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGZmYWRmZDkwYzNjZi4uNzdiNzM5Y2Rh
MDUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtNjE3Nyw5ICs2MTc3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAJICogd2UnbGwgY29udGlu
dWUgdG8gdXBkYXRlIHdhdGVybWFya3MgdGhlIG9sZCB3YXksIGlmIGZsYWdzIHRlbGwKIAkgKiB1
cyB0by4KIAkgKi8KLQlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzICE9
IE5VTEwpCi0JCWRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcyhpbnRlbF9zdGF0
ZSwKLQkJCQkJCSAgICAgcGlwZV9jb25maWcpOworCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5pbml0
aWFsX3dhdGVybWFya3MpCisJCWRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcyhp
bnRlbF9zdGF0ZSwgY3J0Yyk7CiAJZWxzZSBpZiAocGlwZV9jb25maWctPnVwZGF0ZV93bV9wcmUp
CiAJCWludGVsX3VwZGF0ZV93YXRlcm1hcmtzKGNydGMpOwogfQpAQCAtNjUyNyw4ICs2NTI2LDgg
QEAgc3RhdGljIHZvaWQgaXJvbmxha2VfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnLAogCS8qIHVwZGF0ZSBEU1BDTlRSIHRvIGNvbmZpZ3VyZSBnYW1tYSBm
b3IgcGlwZSBib3R0b20gY29sb3IgKi8KIAlpbnRlbF9kaXNhYmxlX3ByaW1hcnlfcGxhbmUocGlw
ZV9jb25maWcpOwogCi0JaWYgKGRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcyAh
PSBOVUxMKQotCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3Moc3RhdGUsIHBp
cGVfY29uZmlnKTsKKwlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKQor
CQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3Moc3RhdGUsIGludGVsX2NydGMp
OwogCWludGVsX2VuYWJsZV9waXBlKHBpcGVfY29uZmlnKTsKIAogCWlmIChwaXBlX2NvbmZpZy0+
aGFzX3BjaF9lbmNvZGVyKQpAQCAtNjY3MSw4ICs2NjcwLDggQEAgc3RhdGljIHZvaWQgaGFzd2Vs
bF9jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCiAJaWYg
KCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCiAJCWludGVsX2RkaV9lbmFibGVf
dHJhbnNjb2Rlcl9mdW5jKHBpcGVfY29uZmlnKTsKIAotCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5p
bml0aWFsX3dhdGVybWFya3MgIT0gTlVMTCkKLQkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93
YXRlcm1hcmtzKHN0YXRlLCBwaXBlX2NvbmZpZyk7CisJaWYgKGRldl9wcml2LT5kaXNwbGF5Lmlu
aXRpYWxfd2F0ZXJtYXJrcykKKwkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtz
KHN0YXRlLCBpbnRlbF9jcnRjKTsKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQog
CQlpY2xfcGlwZV9tYnVzX2VuYWJsZShpbnRlbF9jcnRjKTsKQEAgLTcwNjIsNyArNzA2MSw3IEBA
IHN0YXRpYyB2b2lkIHZhbGxleXZpZXdfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnLAogCS8qIHVwZGF0ZSBEU1BDTlRSIHRvIGNvbmZpZ3VyZSBnYW1tYSBm
b3IgcGlwZSBib3R0b20gY29sb3IgKi8KIAlpbnRlbF9kaXNhYmxlX3ByaW1hcnlfcGxhbmUocGlw
ZV9jb25maWcpOwogCi0JZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRl
LCBwaXBlX2NvbmZpZyk7CisJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0
YXRlLCBpbnRlbF9jcnRjKTsKIAlpbnRlbF9lbmFibGVfcGlwZShwaXBlX2NvbmZpZyk7CiAKIAlp
bnRlbF9jcnRjX3ZibGFua19vbihwaXBlX2NvbmZpZyk7CkBAIC03MTE3LDkgKzcxMTYsOCBAQCBz
dGF0aWMgdm9pZCBpOXh4X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBl
X2NvbmZpZywKIAkvKiB1cGRhdGUgRFNQQ05UUiB0byBjb25maWd1cmUgZ2FtbWEgZm9yIHBpcGUg
Ym90dG9tIGNvbG9yICovCiAJaW50ZWxfZGlzYWJsZV9wcmltYXJ5X3BsYW5lKHBpcGVfY29uZmln
KTsKIAotCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3MgIT0gTlVMTCkK
LQkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLAotCQkJCQkJICAg
ICBwaXBlX2NvbmZpZyk7CisJaWYgKGRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJr
cykKKwkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLCBpbnRlbF9j
cnRjKTsKIAllbHNlCiAJCWludGVsX3VwZGF0ZV93YXRlcm1hcmtzKGludGVsX2NydGMpOwogCWlu
dGVsX2VuYWJsZV9waXBlKHBpcGVfY29uZmlnKTsKQEAgLTE0MjkxLDYgKzE0Mjg5LDcgQEAgc3Rh
dGljIHZvaWQgY29tbWl0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLAogCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwK
IAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7CisJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT51
YXBpLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
c3RhdGUtPmJhc2UuZGV2KTsKIAlib29sIG1vZGVzZXQgPSBuZWVkc19tb2Rlc2V0KG5ld19jcnRj
X3N0YXRlKTsKIApAQCAtMTQzMTQsOCArMTQzMTMsNyBAQCBzdGF0aWMgdm9pZCBjb21taXRfcGlw
ZV9jb25maWcoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJfQogCiAJaWYgKGRl
dl9wcml2LT5kaXNwbGF5LmF0b21pY191cGRhdGVfd2F0ZXJtYXJrcykKLQkJZGV2X3ByaXYtPmRp
c3BsYXkuYXRvbWljX3VwZGF0ZV93YXRlcm1hcmtzKHN0YXRlLAotCQkJCQkJCSAgIG5ld19jcnRj
X3N0YXRlKTsKKwkJZGV2X3ByaXYtPmRpc3BsYXkuYXRvbWljX3VwZGF0ZV93YXRlcm1hcmtzKHN0
YXRlLCBjcnRjKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2NydGMoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCkBAIC0xNDQxOSw4ICsxNDQxNyw3IEBAIHN0YXRpYyB2b2lkIGludGVs
X29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LAogCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSAmJgogCSAgICAhSEFTX0dNQ0goZGV2
X3ByaXYpICYmCiAJICAgIGRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcykKLQkJ
ZGV2X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLAotCQkJCQkJICAgICBu
ZXdfY3J0Y19zdGF0ZSk7CisJCWRldl9wcml2LT5kaXNwbGF5LmluaXRpYWxfd2F0ZXJtYXJrcyhz
dGF0ZSwgY3J0Yyk7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX3RyYW5zX3BvcnRfc3luY19tb2Rl
c2V0X2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLApAQCAtMTQ4NzAs
OCArMTQ4NjcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJICovCiAJZm9yX2VhY2hfbmV3X2ludGVsX2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7CiAJCWlmIChkZXZf
cHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93YXRlcm1hcmtzKQotCQkJZGV2X3ByaXYtPmRpc3BsYXku
b3B0aW1pemVfd2F0ZXJtYXJrcyhzdGF0ZSwKLQkJCQkJCQkgICAgICBuZXdfY3J0Y19zdGF0ZSk7
CisJCQlkZXZfcHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93YXRlcm1hcmtzKHN0YXRlLCBjcnRjKTsK
IAl9CiAKIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywg
b2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7CkBAIC0xNjgyNiw3ICsxNjgyMiw3
IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX3dhdGVybWFya3Moc3RydWN0IGRybV9kZXZpY2UgKmRl
dikKIAkvKiBXcml0ZSBjYWxjdWxhdGVkIHdhdGVybWFyayB2YWx1ZXMgYmFjayAqLwogCWZvcl9l
YWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKGludGVsX3N0YXRlLCBjcnRjLCBjcnRjX3N0YXRl
LCBpKSB7CiAJCWNydGNfc3RhdGUtPndtLm5lZWRfcG9zdHZibF91cGRhdGUgPSB0cnVlOwotCQlk
ZXZfcHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93YXRlcm1hcmtzKGludGVsX3N0YXRlLCBjcnRjX3N0
YXRlKTsKKwkJZGV2X3ByaXYtPmRpc3BsYXkub3B0aW1pemVfd2F0ZXJtYXJrcyhpbnRlbF9zdGF0
ZSwgY3J0Yyk7CiAKIAkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKS0+d20g
PSBjcnRjX3N0YXRlLT53bTsKIAl9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA3ZTBmNjdi
YWJlMjAuLjAwZmU0ZWQ0ZmI5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yNzMsMTEg
KzI3MywxMSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZGlzcGxheV9mdW5jcyB7CiAJaW50ICgqY29tcHV0
ZV9waXBlX3dtKShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiAJaW50ICgq
Y29tcHV0ZV9pbnRlcm1lZGlhdGVfd20pKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKIAl2b2lkICgqaW5pdGlhbF93YXRlcm1hcmtzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKLQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
CisJCQkJICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOwogCXZvaWQgKCphdG9taWNfdXBkYXRl
X3dhdGVybWFya3MpKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJCQkgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOworCQkJCQkgc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpOwogCXZvaWQgKCpvcHRpbWl6ZV93YXRlcm1hcmtzKShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKLQkJCQkgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOworCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CiAJaW50ICgqY29tcHV0
ZV9nbG9iYWxfd2F0ZXJtYXJrcykoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwog
CXZvaWQgKCp1cGRhdGVfd20pKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKIAlpbnQgKCptb2Rl
c2V0X2NhbGNfY2RjbGspKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCmluZGV4IDJkMzg5ZTQzN2U4Ny4uYjE4MDM0MmY2M2E2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKQEAgLTE1MjAsMTAgKzE1MjAsMTEgQEAgc3RhdGljIHZvaWQgZzR4
X3Byb2dyYW1fd2F0ZXJtYXJrcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB9
CiAKIHN0YXRpYyB2b2lkIGc0eF9pbml0aWFsX3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsCi0JCQkJICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCisJCQkJICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpCiB7Ci0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7
Ci0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVh
cGkuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7CisJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKIAog
CW11dGV4X2xvY2soJmRldl9wcml2LT53bS53bV9tdXRleCk7CiAJY3J0Yy0+d20uYWN0aXZlLmc0
eCA9IGNydGNfc3RhdGUtPndtLmc0eC5pbnRlcm1lZGlhdGU7CkBAIC0xNTMyLDEwICsxNTMzLDEx
IEBAIHN0YXRpYyB2b2lkIGc0eF9pbml0aWFsX3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsCiB9CiAKIHN0YXRpYyB2b2lkIGc0eF9vcHRpbWl6ZV93YXRlcm1hcmtz
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJCSAgICBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKKwkJCQkgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMp
CiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0
YXRlLT51YXBpLmNydGMtPmRldik7Ci0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsKIAogCWlmICghY3J0Y19zdGF0ZS0+d20ubmVlZF9wb3N0dmJsX3Vw
ZGF0ZSkKIAkJcmV0dXJuOwpAQCAtMTkxNSwxMSArMTkxNywxMiBAQCBzdGF0aWMgaW50IHZsdl9j
b21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJKCgo
dmFsdWUpIDw8IERTUEFSQl8gIyMgcGxhbmUgIyMgX1NISUZUX1ZMVikgJiBEU1BBUkJfICMjIHBs
YW5lICMjIF9NQVNLX1ZMVikKIAogc3RhdGljIHZvaWQgdmx2X2F0b21pY191cGRhdGVfZmlmbyhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsK
LQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGMtPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZGV2X3ByaXYt
PnVuY29yZTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJ
CWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCWNvbnN0IHN0
cnVjdCB2bHZfZmlmb19zdGF0ZSAqZmlmb19zdGF0ZSA9CiAJCSZjcnRjX3N0YXRlLT53bS52bHYu
Zmlmb19zdGF0ZTsKIAlpbnQgc3ByaXRlMF9zdGFydCwgc3ByaXRlMV9zdGFydCwgZmlmb19zaXpl
OwpAQCAtMjEzOSwxMCArMjE0MiwxMSBAQCBzdGF0aWMgdm9pZCB2bHZfcHJvZ3JhbV93YXRlcm1h
cmtzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIH0KIAogc3RhdGljIHZvaWQg
dmx2X2luaXRpYWxfd2F0ZXJtYXJrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
LQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKKwkJCQkgICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKLQlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCWludGVsX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCiAJbXV0ZXhfbG9jaygmZGV2
X3ByaXYtPndtLndtX211dGV4KTsKIAljcnRjLT53bS5hY3RpdmUudmx2ID0gY3J0Y19zdGF0ZS0+
d20udmx2LmludGVybWVkaWF0ZTsKQEAgLTIxNTEsMTAgKzIxNTUsMTEgQEAgc3RhdGljIHZvaWQg
dmx2X2luaXRpYWxfd2F0ZXJtYXJrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IH0KIAogc3RhdGljIHZvaWQgdmx2X29wdGltaXplX3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCi0JCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQorCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+
ZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSA9CisJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMp
OwogCiAJaWYgKCFjcnRjX3N0YXRlLT53bS5uZWVkX3Bvc3R2YmxfdXBkYXRlKQogCQlyZXR1cm47
CkBAIC01NDkxLDExICs1NDk2LDEyIEBAIHNrbF9jb21wdXRlX3dtKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlKQogfQogCiBzdGF0aWMgdm9pZCBza2xfYXRvbWljX3VwZGF0ZV9jcnRj
X3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAotCQkJCSAgICAgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQogewotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRj
X3N0YXRlLT51YXBpLmNydGMpOwotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKLQlzdHJ1Y3Qgc2tsX3BpcGVfd20gKnBpcGVfd20g
PSAmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWw7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsKKwljb25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20gKnBpcGVfd20gPSAm
Y3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWw7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
OwogCiAJaWYgKChzdGF0ZS0+d21fcmVzdWx0cy5kaXJ0eV9waXBlcyAmIEJJVChjcnRjLT5waXBl
KSkgPT0gMCkKQEAgLTU1MDUsMTAgKzU1MTEsMTEgQEAgc3RhdGljIHZvaWQgc2tsX2F0b21pY191
cGRhdGVfY3J0Y193bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIH0KIAogc3Rh
dGljIHZvaWQgc2tsX2luaXRpYWxfd20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
Ci0JCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKKwkJCSAgIHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQogewotCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19z
dGF0ZShzdGF0ZSwgY3J0Yyk7CiAJc3RydWN0IHNrbF9kZGJfdmFsdWVzICpyZXN1bHRzID0gJnN0
YXRlLT53bV9yZXN1bHRzOwogCiAJaWYgKChyZXN1bHRzLT5kaXJ0eV9waXBlcyAmIEJJVChjcnRj
LT5waXBlKSkgPT0gMCkKQEAgLTU1MTcsNyArNTUyNCw3IEBAIHN0YXRpYyB2b2lkIHNrbF9pbml0
aWFsX3dtKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCW11dGV4X2xvY2soJmRl
dl9wcml2LT53bS53bV9tdXRleCk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hY3RpdmVfY2hh
bmdlZCkKLQkJc2tsX2F0b21pY191cGRhdGVfY3J0Y193bShzdGF0ZSwgY3J0Y19zdGF0ZSk7CisJ
CXNrbF9hdG9taWNfdXBkYXRlX2NydGNfd20oc3RhdGUsIGNydGMpOwogCiAJbXV0ZXhfdW5sb2Nr
KCZkZXZfcHJpdi0+d20ud21fbXV0ZXgpOwogfQpAQCAtNTU3MywxMCArNTU4MCwxMSBAQCBzdGF0
aWMgdm9pZCBpbGtfcHJvZ3JhbV93YXRlcm1hcmtzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIH0KIAogc3RhdGljIHZvaWQgaWxrX2luaXRpYWxfd2F0ZXJtYXJrcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGku
Y3J0Yy0+ZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0
Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSA9CisJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOwogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPndtLndtX211dGV4KTsKIAljcnRjLT53
bS5hY3RpdmUuaWxrID0gY3J0Y19zdGF0ZS0+d20uaWxrLmludGVybWVkaWF0ZTsKQEAgLTU1ODUs
MTAgKzU1OTMsMTEgQEAgc3RhdGljIHZvaWQgaWxrX2luaXRpYWxfd2F0ZXJtYXJrcyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIH0KIAogc3RhdGljIHZvaWQgaWxrX29wdGltaXpl
X3dhdGVybWFya3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCi0JCQkJICAgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorCQkJCSAgICBzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwljb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9CisJCWludGVsX2F0b21pY19nZXRf
bmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCiAJaWYgKCFjcnRjX3N0YXRlLT53bS5uZWVk
X3Bvc3R2YmxfdXBkYXRlKQogCQlyZXR1cm47Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
