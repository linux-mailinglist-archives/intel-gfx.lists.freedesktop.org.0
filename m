Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B09EFAC806
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 19:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188EB89DBD;
	Sat,  7 Sep 2019 17:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE48589DBD
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 17:21:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 10:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="191111459"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Sep 2019 10:21:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 22:44:42 +0530
Message-Id: <20190907171443.16181-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190907171443.16181-1-anshuman.gupta@intel.com>
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 6/7] drm/i915/tgl: switch between dc3co and
 dc5 based on display idleness
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

REMzQ08gaXMgdXNlZnVsIHBvd2VyIHN0YXRlLCB3aGVuIERNQyBkZXRlY3RzIFBTUjIgaWRsZSBm
cmFtZQp3aGlsZSBhbiBhY3RpdmUgdmlkZW8gcGxheWJhY2ssIHBsYXlpbmcgMzBmcHMgdmlkZW8g
b24gNjBoeiBwYW5lbAppcyB0aGUgY2xhc3NpYyBleGFtcGxlIG9mIHRoaXMgdXNlIGNhc2UuCkRD
NSBhbmQgREM2IHNhdmVzIG1vcmUgcG93ZXIsIGJ1dCBjYW4ndCBiZSBlbnRlcmVkIGR1cmluZyB2
aWRlbwpwbGF5YmFjayBiZWNhdXNlIHRoZXJlIGFyZSBub3QgZW5vdWdoIGlkbGUgZnJhbWVzIGlu
IGEgcm93IHRvIG1lZXQKbW9zdCBQU1IyIHBhbmVsIGRlZXAgc2xlZXAgZW50cnkgcmVxdWlyZW1l
bnQgdHlwaWNhbGx5IDQgZnJhbWVzLgoKSXQgd2lsbCBiZSB3b3J0aHkgdG8gZW5hYmxlIERDM0NP
IGFmdGVyIGNvbXBsZXRpb24gb2YgZWFjaCBmbGlwCmFuZCBzd2l0Y2ggYmFjayB0byBEQzUgd2hl
biBkaXNwbGF5IGlzIGlkbGUsIGFzIGRyaXZlciBkb2Vzbid0CmRpZmZlcmVudGlhdGUgYmV0d2Vl
biB2aWRlbyBwbGF5YmFjayBhbmQgYSBub3JtYWwgZmxpcC4KSXQgaXMgc2FmZXIgdG8gYWxsb3cg
REM1IGFmdGVyIDYgaWRsZSBmcmFtZSwgYXMgUFNSMiByZXF1aXJlcwptaW5pbXVtIDYgaWRsZSBm
cmFtZS4KCnYyOiBjYWxjdWxhdGVkIHMvdyBzdGF0ZSB0byBzd2l0Y2ggb3ZlciBkYzNjbyB3aGVu
IHRoZXJlIGlzIGFuCiAgICB1cGRhdGUuIFtJbXJlXQogICAgdXNlZCBjYW5jZWxfZGVsYXllZF93
b3JrX3N5bmMoKSBpbiBvcmRlciB0byBhdm9pZCBhbnkgcmFjZQogICAgd2l0aCBhbHJlYWR5IHNj
aGVkdWxlZCBkZWxheWVkIHdvcmsuIFtJbXJlXQp2MzogY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5j
KCkgbWF5IGJsb2NrZWQgdGhlIGNvbW1pdCB3b3JrLgogICAgSGVuY2UgZHJvcHBpbmcgaXQsIGRj
NV9pZGxlX3RocmVhZCgpIGNoZWNrcyB0aGUgdmFsaWQgd2FrZXJlZiBiZWZvcmUKICAgIHB1dHRp
bmcgdGhlIHJlZmVyZW5jZSBjb3VudCwgd2hpY2ggYXZvaWRzIGFueSBjaGFuY2VzIG9mIGRyb3Bw
aW5nCiAgICBhIHplcm8gd2FrZXJlZi4gW0ltcmUgKElSQyldCnY0OiB1c2UgZnJvbnRidWZmZXIg
Zmx1c2ggbWVjaGFuaXNtLiBbSW1yZV0KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1
cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDIgKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgNzkgKysrKysrKysrKysrKysrKysrKwogLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDYgKysKIC4uLi9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jICB8ICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxICsKIDUgZmlsZXMgY2hhbmdlZCwg
ODkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggODQ0ODhmODdkMDU4Li4yNzU0ZThlZTY5M2YgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNjIwNiw2ICsxNjIwNiw3
IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlpbml0
X2xsaXN0X2hlYWQoJmRldl9wcml2LT5hdG9taWNfaGVscGVyLmZyZWVfbGlzdCk7CiAJSU5JVF9X
T1JLKCZkZXZfcHJpdi0+YXRvbWljX2hlbHBlci5mcmVlX3dvcmssCiAJCSAgaW50ZWxfYXRvbWlj
X2hlbHBlcl9mcmVlX3N0YXRlX3dvcmtlcik7CisJSU5JVF9ERUxBWUVEX1dPUksoJmRldl9wcml2
LT5jc3IuaWRsZV93b3JrLCB0Z2xfZGM1X2lkbGVfdGhyZWFkKTsKIAogCWludGVsX2luaXRfcXVp
cmtzKGRldl9wcml2KTsKIApAQCAtMTcxNDcsNiArMTcxNDgsNyBAQCB2b2lkIGludGVsX21vZGVz
ZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWZsdXNoX3dvcmtxdWV1
ZShkZXZfcHJpdi0+bW9kZXNldF93cSk7CiAKIAlmbHVzaF93b3JrKCZkZXZfcHJpdi0+YXRvbWlj
X2hlbHBlci5mcmVlX3dvcmspOworCWZsdXNoX2RlbGF5ZWRfd29yaygmZGV2X3ByaXYtPmNzci5p
ZGxlX3dvcmspOwogCVdBUk5fT04oIWxsaXN0X2VtcHR5KCZkZXZfcHJpdi0+YXRvbWljX2hlbHBl
ci5mcmVlX2xpc3QpKTsKIAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IGVjY2UxMThiNWIwZS4uYzExMGYwNGM5NzMz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYwpAQCAtMjAsNiArMjAsNyBAQAogI2luY2x1ZGUgImludGVsX3NpZGViYW5kLmgiCiAj
aW5jbHVkZSAiaW50ZWxfdGMuaCIKICNpbmNsdWRlICJpbnRlbF9wbS5oIgorI2luY2x1ZGUgImlu
dGVsX3Bzci5oIgogCiBib29sIGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbF9pc19lbmFibGVkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkJIGVudW0gaTkxNV9wb3dlcl93
ZWxsX2lkIHBvd2VyX3dlbGxfaWQpOwpAQCAtNzczLDYgKzc3NCwyNyBAQCBzdGF0aWMgdm9pZCBn
ZW45X3NldF9kY19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBz
dGF0ZSkKIAlkZXZfcHJpdi0+Y3NyLmRjX3N0YXRlID0gdmFsICYgbWFzazsKIH0KIAorc3RhdGlj
IHUzMiBpbnRlbF9nZXRfZnJhbWVfdGltZV91cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3N0YXRlKQoreworCXUzMiBwaXhlbF9yYXRlLCBjcnRjX2h0b3RhbCwgY3J0Y192dG90YWw7
CisJdTMyIGZyYW1ldGltZV91czsKKworCWlmICghY3N0YXRlIHx8ICFjc3RhdGUtPmJhc2UuYWN0
aXZlKQorCQlyZXR1cm4gMDsKKworCXBpeGVsX3JhdGUgPSBjc3RhdGUtPnBpeGVsX3JhdGU7CisK
KwlpZiAoV0FSTl9PTihwaXhlbF9yYXRlID09IDApKQorCQlyZXR1cm4gMDsKKworCWNydGNfaHRv
dGFsID0gY3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19odG90YWw7CisJY3J0Y192dG90
YWwgPSBjc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbDsKKwlmcmFtZXRpbWVf
dXMgPSBESVZfUk9VTkRfVVAoY3J0Y19odG90YWwgKiBjcnRjX3Z0b3RhbCAqIDEwMDBVTEwsCisJ
CQkJICAgIHBpeGVsX3JhdGUpOworCisJcmV0dXJuIGZyYW1ldGltZV91czsKK30KKwogdm9pZCB0
Z2xfZGlzYWJsZV9wc3IyX3RyYW5zY29kZXJfZXhpdGxpbmUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNzdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOwpAQCAtODE3LDYgKzgzOSw0OSBAQCB2
b2lkIHRnbF9lbmFibGVfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjc3RhdGUpCiAJSTkxNV9XUklURShFWElUTElORShjc3RhdGUtPmNwdV90
cmFuc2NvZGVyKSwgdmFsKTsKIH0KIAordm9pZCB0Z2xfZGMzY29fZmx1c2goc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkgICAgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9i
aXRzLCBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pCit7CisJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNzdGF0ZTsKKwl1MzIgZGVsYXk7CisJdW5zaWduZWQgaW50IGJ1c3lfZnJvbnRidWZmZXJf
Yml0czsKKworCWlmICghSVNfVElHRVJMQUtFKGRldl9wcml2KSkKKwkJcmV0dXJuOworCisJaWYg
KG9yaWdpbiAhPSBPUklHSU5fRkxJUCkKKwkJcmV0dXJuOworCisJaWYgKCFkZXZfcHJpdi0+Y3Ny
LmRjM2NvX2NydGMpCisJCXJldHVybjsKKworCWNzdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUo
ZGV2X3ByaXYtPmNzci5kYzNjb19jcnRjLT5iYXNlLnN0YXRlKTsKKwlmcm9udGJ1ZmZlcl9iaXRz
ICY9CisJCUlOVEVMX0ZST05UQlVGRkVSX0FMTF9NQVNLKGRldl9wcml2LT5jc3IuZGMzY29fY3J0
Yy0+cGlwZSk7CisJYnVzeV9mcm9udGJ1ZmZlcl9iaXRzICY9IH5mcm9udGJ1ZmZlcl9iaXRzOwor
CisJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPnBzci5sb2NrKTsKKworCWlmICghZGV2X3ByaXYtPnBz
ci5wc3IyX2VuYWJsZWQgfHwgIWRldl9wcml2LT5wc3IuYWN0aXZlKQorCQlnb3RvIHVubG9jazsK
KworCS8qCisJICogQXQgZXZlcnkgZmxpcCBmcm9udGJ1ZmZlciBmbHVzaCBmaXJzdCBjYW5jZWwg
dGhlIGRlbGF5ZWQgd29yaywKKwkgKiB3aGVuIGRlbGF5ZWQgc2NoZWR1bGVzIHRoYXQgbWVhbnMg
ZGlzcGxheSBoYXMgYmVlbiBpZGxlCisJICogZm9yIHRoZSA2IGlkbGUgZnJhbWUuCisJICovCisJ
aWYgKCFidXN5X2Zyb250YnVmZmVyX2JpdHMpIHsKKwkJY2FuY2VsX2RlbGF5ZWRfd29yaygmZGV2
X3ByaXYtPmNzci5pZGxlX3dvcmspOworCQl0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZShkZXZfcHJp
diwgRENfU1RBVEVfRU5fREMzQ08sIGZhbHNlKTsKKwkJZGVsYXkgPSBEQzVfUkVRX0lETEVfRlJB
TUVTICogaW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3N0YXRlKTsKKwkJc2NoZWR1bGVfZGVsYXll
ZF93b3JrKCZkZXZfcHJpdi0+Y3NyLmlkbGVfd29yaywKKwkJCQkgICAgICB1c2Vjc190b19qaWZm
aWVzKGRlbGF5KSk7CisJfQorCit1bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+cHNy
LmxvY2spOworfQorCiBzdGF0aWMgYm9vbCB0Z2xfZGMzY29faXNfZWRwX2Nvbm5lY3RlZChzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9hdG9taWNf
c3RhdGUgKnN0YXRlID0gY3J0Y19zdGF0ZS0+YmFzZS5zdGF0ZTsKQEAgLTg4MCw2ICs5NDUsMTQg
QEAgdm9pZCB0Z2xfZGMzY29fY3J0Y19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCX0KIH0KIAordm9pZCB0Z2xfZGM1X2lkbGVfdGhyZWFkKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PQorCQljb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpkZXZfcHJpdiksIGNzci5pZGxlX3dvcmsu
d29yayk7CisKKwl0Z2xfc2V0X3RhcmdldF9kY19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRU5f
VVBUT19EQzYsIHRydWUpOworfQorCiBzdGF0aWMgdm9pZCB0Z2xfYWxsb3dfZGMzY28oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWlmICghZGV2X3ByaXYtPnBzci5zaW5r
X3BzcjJfc3VwcG9ydCkKQEAgLTExNTUsNiArMTIyOCw5IEBAIHZvaWQgdGdsX3NldF90YXJnZXRf
ZGNfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgc3RhdGUsCiAJ
aWYgKHN0YXRlID09IGRldl9wcml2LT5jc3IubWF4X2RjX3N0YXRlKQogCQlnb3RvIHVubG9jazsK
IAorCWlmICghcHNyMl9kZWVwX3NsZWVwKQorCQl0Z2xfcHNyMl9kZWVwX3NsZWVwX2Rpc2FibGUo
ZGV2X3ByaXYpOworCiAJaWYgKCFkY19vZmZfZW5hYmxlZCkgewogCQkvKgogCQkgKiBOZWVkIHRv
IGRpc2FibGUgdGhlIERDIG9mZiBwb3dlciB3ZWxsIHRvCkBAIC0xMTY3LDYgKzEyNDMsOSBAQCB2
b2lkIHRnbF9zZXRfdGFyZ2V0X2RjX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgdTMyIHN0YXRlLAogCX0KIAkJZGV2X3ByaXYtPmNzci5tYXhfZGNfc3RhdGUgPSBzdGF0
ZTsKIAorCWlmIChwc3IyX2RlZXBfc2xlZXApCisJCXRnbF9wc3IyX2RlZXBfc2xlZXBfZW5hYmxl
KGRldl9wcml2KTsKKwogdW5sb2NrOgogCW11dGV4X3VubG9jaygmcG93ZXJfZG9tYWlucy0+bG9j
ayk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5oCmluZGV4IGQ3N2E1YTUzZjU0My4uZGYwOTZkNjRjNzQ0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaApAQCAtOSw2
ICs5LDkgQEAKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCiAjaW5jbHVkZSAiaW50ZWxfcnVu
dGltZV9wbS5oIgogI2luY2x1ZGUgImk5MTVfcmVnLmgiCisjaW5jbHVkZSAiaW50ZWxfZnJvbnRi
dWZmZXIuaCIKKworI2RlZmluZSBEQzVfUkVRX0lETEVfRlJBTUVTCTYKIAogc3RydWN0IGRybV9p
OTE1X3ByaXZhdGU7CiBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKQEAgLTI2Niw2ICsyNjksOSBAQCB2
b2lkIHRnbF9kYzNjb19jcnRjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIHZvaWQgdGdsX2RjM2NvX2NydGNfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIHRnbF9kaXNhYmxlX3BzcjJfdHJhbnNjb2Rl
cl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqc3RhdGUpOwogdm9pZCB0
Z2xfZW5hYmxlX3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqc3RhdGUpOwordm9pZCB0Z2xfZGMzY29fZmx1c2goc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAorCQkgICAgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRzLCBl
bnVtIGZiX29wX29yaWdpbiBvcmlnaW4pOwordm9pZCB0Z2xfZGM1X2lkbGVfdGhyZWFkKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yayk7CiAKIGNvbnN0IGNoYXIgKgogaW50ZWxfZGlzcGxheV9wb3dl
cl9kb21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYwppbmRl
eCBmYzQwZGMxZmRiY2MuLmMzYjEwZjZlNDM4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYwpAQCAtOTAsNiArOTAsNyBAQCBzdGF0aWMg
dm9pZCBmcm9udGJ1ZmZlcl9mbHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAlt
aWdodF9zbGVlcCgpOwogCWludGVsX2VkcF9kcnJzX2ZsdXNoKGk5MTUsIGZyb250YnVmZmVyX2Jp
dHMpOwogCWludGVsX3Bzcl9mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOwor
CXRnbF9kYzNjb19mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOwogCWludGVs
X2ZiY19mbHVzaChpOTE1LCBmcm9udGJ1ZmZlcl9iaXRzLCBvcmlnaW4pOwogfQogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAppbmRleCAzMjE4YjAzMTk4NTIuLmZlNzExMTlhNDU4ZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCkBAIC0zMzgsNiArMzM4LDcgQEAgc3RydWN0IGludGVsX2NzciB7CiAJ
dTMyIGRjX3N0YXRlOwogCXUzMiBtYXhfZGNfc3RhdGU7CiAJdTMyIGFsbG93ZWRfZGNfbWFzazsK
KwlzdHJ1Y3QgZGVsYXllZF93b3JrIGlkbGVfd29yazsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJl
ZjsKIAkvKiBjYWNoZSB0aGUgY3J0YyBvbiB3aGljaCBEQzNDTyB3aWxsIGJlIGFsbG93ZWQgKi8K
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqZGMzY29fY3J0YzsKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
