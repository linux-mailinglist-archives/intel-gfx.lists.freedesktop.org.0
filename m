Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55D72A0BB4
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524CE6E9D8;
	Fri, 30 Oct 2020 16:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FF06E9D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:50:59 +0000 (UTC)
IronPort-SDR: x8+GL2VjR26ZCZ0nwpx1dH/MRiJVzSeEhak8rwy7SMTe9zn8uXD9n01+SMJmQY4ljFtwL9r9HS
 s5xBBEvqLxvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="155609807"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="155609807"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:50:57 -0700
IronPort-SDR: J/hI29tnWOGtme/wJnxqFoGduD2nbpkPFFrQOKTiEH1UHaktBptfFhlgpZJqSjBrcA4vJwN8JP
 T14Ciw3BVpJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="304986954"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 30 Oct 2020 09:50:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:50:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:50:38 +0200
Message-Id: <20201030165045.5000-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Rename ilk watermark
 structs/enums
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bmFtZSBhbGwgdGhlIHdhdGVybWFyayByZWxhdGVkIHN0cnVjdHMvZW51bXMgc3BlY2lmaWMgdG8g
aWxrLWJkdwp0byBoYXZlIGFuIGlsa18gcHJlZml4IHJhdGhlciB0aGFuIGFuIGludGVsXyBwcmVm
aXguIFNob3VsZCBtYWtlIGl0Cmxlc3MgY29uZnVzaW5nIGZvciBldmVyeW9uZSB3aGVuIGl0J3Mg
Y2xlYXIgd2hlcmUgdGhlc2UgdGhpbmdzCmdldCB1c2VkLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMTIgKy0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8IDEwMiArKysrKysrKystLS0tLS0t
LS0KIDMgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNjIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAppbmRleCA0YzI1ZTJlNGY0ZWUuLjZiMzFhZjYwZDI0ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTY2NCw3ICs2NjQs
NyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zY2FsZXJfc3RhdGUgewogLyogRmxhZyB0byBpbmRpY2F0
ZSBtaXBpIGRzaSBwZXJpb2RpYyBjb21tYW5kIG1vZGUgd2hlcmUgd2UgZG8gbm90IGdldCBURSAq
LwogI2RlZmluZSBJOTE1X01PREVfRkxBR19EU0lfUEVSSU9ESUNfQ01EX01PREUgKDE8PDUpCiAK
LXN0cnVjdCBpbnRlbF93bV9sZXZlbCB7CitzdHJ1Y3QgaWxrX3dtX2xldmVsIHsKIAlib29sIGVu
YWJsZTsKIAl1MTYgcHJpX3ZhbDsKIAl1MTYgc3ByX3ZhbDsKQEAgLTY3Miw4ICs2NzIsOCBAQCBz
dHJ1Y3QgaW50ZWxfd21fbGV2ZWwgewogCXUxNiBmYmNfdmFsOwogfTsKIAotc3RydWN0IGludGVs
X3BpcGVfd20gewotCXN0cnVjdCBpbnRlbF93bV9sZXZlbCB3bVs1XTsKK3N0cnVjdCBpbGtfcGlw
ZV93bSB7CisJc3RydWN0IGlsa193bV9sZXZlbCB3bVs1XTsKIAlib29sIGZiY193bV9lbmFibGVk
OwogCWJvb2wgcGlwZV9lbmFibGVkOwogCWJvb2wgc3ByaXRlc19lbmFibGVkOwpAQCAtNzQ1LDEz
ICs3NDUsMTMgQEAgc3RydWN0IGludGVsX2NydGNfd21fc3RhdGUgewogCQkJICogc3dpdGNoaW5n
IGF3YXkgZnJvbSBhbmQgdGhlIG5ldwogCQkJICogY29uZmlndXJhdGlvbiB3ZSdyZSBzd2l0Y2hp
bmcgdG8uCiAJCQkgKi8KLQkJCXN0cnVjdCBpbnRlbF9waXBlX3dtIGludGVybWVkaWF0ZTsKKwkJ
CXN0cnVjdCBpbGtfcGlwZV93bSBpbnRlcm1lZGlhdGU7CiAKIAkJCS8qCiAJCQkgKiBPcHRpbWFs
IHdhdGVybWFya3MsIHByb2dyYW1tZWQgcG9zdC12YmxhbmsKIAkJCSAqIHdoZW4gdGhpcyBzdGF0
ZSBpcyBjb21taXR0ZWQuCiAJCQkgKi8KLQkJCXN0cnVjdCBpbnRlbF9waXBlX3dtIG9wdGltYWw7
CisJCQlzdHJ1Y3QgaWxrX3BpcGVfd20gb3B0aW1hbDsKIAkJfSBpbGs7CiAKIAkJc3RydWN0IHsK
QEAgLTExNDcsNyArMTE0Nyw3IEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsKIAlzdHJ1Y3QgewogCQkv
KiB3YXRlcm1hcmtzIGN1cnJlbnRseSBiZWluZyB1c2VkICAqLwogCQl1bmlvbiB7Ci0JCQlzdHJ1
Y3QgaW50ZWxfcGlwZV93bSBpbGs7CisJCQlzdHJ1Y3QgaWxrX3BpcGVfd20gaWxrOwogCQkJc3Ry
dWN0IHZsdl93bV9zdGF0ZSB2bHY7CiAJCQlzdHJ1Y3QgZzR4X3dtX3N0YXRlIGc0eDsKIAkJfSBh
Y3RpdmU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBiY2Q4NjUwNjAzZDguLjNhMWIzN2M1
NjBlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC03MjMsOSArNzIzLDkgQEAgc3RydWN0
IGludGVsX3ZidF9kYXRhIHsKIAlzdHJ1Y3Qgc2R2b19kZXZpY2VfbWFwcGluZyBzZHZvX21hcHBp
bmdzWzJdOwogfTsKIAotZW51bSBpbnRlbF9kZGJfcGFydGl0aW9uaW5nIHsKLQlJTlRFTF9EREJf
UEFSVF8xXzIsCi0JSU5URUxfRERCX1BBUlRfNV82LCAvKiBJVkIrICovCitlbnVtIGlsa19kZGJf
cGFydGl0aW9uaW5nIHsKKwlJTEtfRERCX1BBUlRfMV8yLAorCUlMS19EREJfUEFSVF81XzYsIC8q
IElWQisgKi8KIH07CiAKIHN0cnVjdCBpbGtfd21fdmFsdWVzIHsKQEAgLTczMyw3ICs3MzMsNyBA
QCBzdHJ1Y3QgaWxrX3dtX3ZhbHVlcyB7CiAJdTMyIHdtX2xwWzNdOwogCXUzMiB3bV9scF9zcHJb
M107CiAJYm9vbCBlbmFibGVfZmJjX3dtOwotCWVudW0gaW50ZWxfZGRiX3BhcnRpdGlvbmluZyBw
YXJ0aXRpb25pbmc7CisJZW51bSBpbGtfZGRiX3BhcnRpdGlvbmluZyBwYXJ0aXRpb25pbmc7CiB9
OwogCiBzdHJ1Y3QgZzR4X3BpcGVfd20gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggYTgy
ZmI4MTJiOGM3Li41MzY0MjAzMjdjNjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNjUs
NyArNjUsNyBAQCBzdHJ1Y3Qgc2tsX3dtX3BhcmFtcyB7CiB9OwogCiAvKiB1c2VkIGluIGNvbXB1
dGluZyB0aGUgbmV3IHdhdGVybWFya3Mgc3RhdGUgKi8KLXN0cnVjdCBpbnRlbF93bV9jb25maWcg
eworc3RydWN0IGlsa193bV9jb25maWcgewogCXVuc2lnbmVkIGludCBudW1fcGlwZXNfYWN0aXZl
OwogCWJvb2wgc3ByaXRlc19lbmFibGVkOwogCWJvb2wgc3ByaXRlc19zY2FsZWQ7CkBAIC0yNjk0
LDggKzI2OTQsOCBAQCBzdGF0aWMgdTE2IGlsa19mYmNfd21fcmVnX21heChjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAvKiBDYWxjdWxhdGUgdGhlIG1heGltdW0gcHJp
bWFyeS9zcHJpdGUgcGxhbmUgd2F0ZXJtYXJrICovCiBzdGF0aWMgdTE2IGlsa19wbGFuZV93bV9t
YXgoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICAgIGludCBs
ZXZlbCwKLQkJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfd21fY29uZmlnICpjb25maWcsCi0JCQkg
ICAgZW51bSBpbnRlbF9kZGJfcGFydGl0aW9uaW5nIGRkYl9wYXJ0aXRpb25pbmcsCisJCQkgICAg
Y29uc3Qgc3RydWN0IGlsa193bV9jb25maWcgKmNvbmZpZywKKwkJCSAgICBlbnVtIGlsa19kZGJf
cGFydGl0aW9uaW5nIGRkYl9wYXJ0aXRpb25pbmcsCiAJCQkgICAgYm9vbCBpc19zcHJpdGUpCiB7
CiAJdTE2IGZpZm9fc2l6ZSA9IGlsa19kaXNwbGF5X2ZpZm9fc2l6ZShkZXZfcHJpdik7CkBAIC0y
NzE5LDcgKzI3MTksNyBAQCBzdGF0aWMgdTE2IGlsa19wbGFuZV93bV9tYXgoY29uc3Qgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJaWYgKGNvbmZpZy0+c3ByaXRlc19lbmFi
bGVkKSB7CiAJCS8qIGxldmVsIDAgaXMgYWx3YXlzIGNhbGN1bGF0ZWQgd2l0aCAxOjEgc3BsaXQg
Ki8KLQkJaWYgKGxldmVsID4gMCAmJiBkZGJfcGFydGl0aW9uaW5nID09IElOVEVMX0REQl9QQVJU
XzVfNikgeworCQlpZiAobGV2ZWwgPiAwICYmIGRkYl9wYXJ0aXRpb25pbmcgPT0gSUxLX0REQl9Q
QVJUXzVfNikgewogCQkJaWYgKGlzX3Nwcml0ZSkKIAkJCQlmaWZvX3NpemUgKj0gNTsKIAkJCWZp
Zm9fc2l6ZSAvPSA2OwpAQCAtMjczNSw3ICsyNzM1LDcgQEAgc3RhdGljIHUxNiBpbGtfcGxhbmVf
d21fbWF4KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIC8qIENhbGN1
bGF0ZSB0aGUgbWF4aW11bSBjdXJzb3IgcGxhbmUgd2F0ZXJtYXJrICovCiBzdGF0aWMgdTE2IGls
a19jdXJzb3Jfd21fbWF4KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IAkJCSAgICAgaW50IGxldmVsLAotCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfd21fY29uZmln
ICpjb25maWcpCisJCQkgICAgIGNvbnN0IHN0cnVjdCBpbGtfd21fY29uZmlnICpjb25maWcpCiB7
CiAJLyogSFNXIExQMSsgd2F0ZXJtYXJrcyB3LyBtdWx0aXBsZSBwaXBlcyAqLwogCWlmIChsZXZl
bCA+IDAgJiYgY29uZmlnLT5udW1fcGlwZXNfYWN0aXZlID4gMSkKQEAgLTI3NDcsOCArMjc0Nyw4
IEBAIHN0YXRpYyB1MTYgaWxrX2N1cnNvcl93bV9tYXgoY29uc3Qgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCiBzdGF0aWMgdm9pZCBpbGtfY29tcHV0ZV93bV9tYXhpbXVtcyhj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJICAgIGludCBsZXZl
bCwKLQkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX3dtX2NvbmZpZyAqY29uZmlnLAotCQkJCSAg
ICBlbnVtIGludGVsX2RkYl9wYXJ0aXRpb25pbmcgZGRiX3BhcnRpdGlvbmluZywKKwkJCQkgICAg
Y29uc3Qgc3RydWN0IGlsa193bV9jb25maWcgKmNvbmZpZywKKwkJCQkgICAgZW51bSBpbGtfZGRi
X3BhcnRpdGlvbmluZyBkZGJfcGFydGl0aW9uaW5nLAogCQkJCSAgICBzdHJ1Y3QgaWxrX3dtX21h
eGltdW1zICptYXgpCiB7CiAJbWF4LT5wcmkgPSBpbGtfcGxhbmVfd21fbWF4KGRldl9wcml2LCBs
ZXZlbCwgY29uZmlnLCBkZGJfcGFydGl0aW9uaW5nLCBmYWxzZSk7CkBAIC0yNzY5LDcgKzI3Njks
NyBAQCBzdGF0aWMgdm9pZCBpbGtfY29tcHV0ZV93bV9yZWdfbWF4aW11bXMoY29uc3Qgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiBzdGF0aWMgYm9vbCBpbGtfdmFsaWRhdGVf
d21fbGV2ZWwoaW50IGxldmVsLAogCQkJCSAgY29uc3Qgc3RydWN0IGlsa193bV9tYXhpbXVtcyAq
bWF4LAotCQkJCSAgc3RydWN0IGludGVsX3dtX2xldmVsICpyZXN1bHQpCisJCQkJICBzdHJ1Y3Qg
aWxrX3dtX2xldmVsICpyZXN1bHQpCiB7CiAJYm9vbCByZXQ7CiAKQEAgLTI4MTUsNyArMjgxNSw3
IEBAIHN0YXRpYyB2b2lkIGlsa19jb21wdXRlX3dtX2xldmVsKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwcmlzdGF0ZSwKIAkJCQkgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpzcHJzdGF0
ZSwKIAkJCQkgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpjdXJzdGF0ZSwKLQkJCQkg
c3RydWN0IGludGVsX3dtX2xldmVsICpyZXN1bHQpCisJCQkJIHN0cnVjdCBpbGtfd21fbGV2ZWwg
KnJlc3VsdCkKIHsKIAl1MTYgcHJpX2xhdGVuY3kgPSBkZXZfcHJpdi0+d20ucHJpX2xhdGVuY3lb
bGV2ZWxdOwogCXUxNiBzcHJfbGF0ZW5jeSA9IGRldl9wcml2LT53bS5zcHJfbGF0ZW5jeVtsZXZl
bF07CkBAIC0zMTE0LDEwICszMTE0LDEwIEBAIHN0YXRpYyB2b2lkIHNrbF9zZXR1cF93bV9sYXRl
bmN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIH0KIAogc3RhdGljIGJvb2wg
aWxrX3ZhbGlkYXRlX3BpcGVfd20oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAotCQkJCSBzdHJ1Y3QgaW50ZWxfcGlwZV93bSAqcGlwZV93bSkKKwkJCQkgc3RydWN0IGls
a19waXBlX3dtICpwaXBlX3dtKQogewogCS8qIExQMCB3YXRlcm1hcmsgbWF4aW11bXMgZGVwZW5k
IG9uIHRoaXMgcGlwZSBhbG9uZSAqLwotCWNvbnN0IHN0cnVjdCBpbnRlbF93bV9jb25maWcgY29u
ZmlnID0geworCWNvbnN0IHN0cnVjdCBpbGtfd21fY29uZmlnIGNvbmZpZyA9IHsKIAkJLm51bV9w
aXBlc19hY3RpdmUgPSAxLAogCQkuc3ByaXRlc19lbmFibGVkID0gcGlwZV93bS0+c3ByaXRlc19l
bmFibGVkLAogCQkuc3ByaXRlc19zY2FsZWQgPSBwaXBlX3dtLT5zcHJpdGVzX3NjYWxlZCwKQEAg
LTMxMjUsNyArMzEyNSw3IEBAIHN0YXRpYyBib29sIGlsa192YWxpZGF0ZV9waXBlX3dtKGNvbnN0
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlzdHJ1Y3QgaWxrX3dtX21heGlt
dW1zIG1heDsKIAogCS8qIExQMCB3YXRlcm1hcmtzIGFsd2F5cyB1c2UgMS8yIEREQiBwYXJ0aXRp
b25pbmcgKi8KLQlpbGtfY29tcHV0ZV93bV9tYXhpbXVtcyhkZXZfcHJpdiwgMCwgJmNvbmZpZywg
SU5URUxfRERCX1BBUlRfMV8yLCAmbWF4KTsKKwlpbGtfY29tcHV0ZV93bV9tYXhpbXVtcyhkZXZf
cHJpdiwgMCwgJmNvbmZpZywgSUxLX0REQl9QQVJUXzFfMiwgJm1heCk7CiAKIAkvKiBBdCBsZWFz
dCBMUDAgbXVzdCBiZSB2YWxpZCAqLwogCWlmICghaWxrX3ZhbGlkYXRlX3dtX2xldmVsKDAsICZt
YXgsICZwaXBlX3dtLT53bVswXSkpIHsKQEAgLTMxNDEsNyArMzE0MSw3IEBAIHN0YXRpYyBpbnQg
aWxrX2NvbXB1dGVfcGlwZV93bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3Rh
dGUtPnVhcGkuY3J0Yy0+ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVs
X2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKLQlzdHJ1Y3QgaW50ZWxfcGlwZV93bSAqcGlw
ZV93bTsKKwlzdHJ1Y3QgaWxrX3BpcGVfd20gKnBpcGVfd207CiAJc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZTsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOwog
CWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcHJpc3RhdGUgPSBOVUxMOwpAQCAtMzE4
OSw3ICszMTg5LDcgQEAgc3RhdGljIGludCBpbGtfY29tcHV0ZV9waXBlX3dtKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCWlsa19jb21wdXRlX3dtX3JlZ19tYXhpbXVtcyhk
ZXZfcHJpdiwgMSwgJm1heCk7CiAKIAlmb3IgKGxldmVsID0gMTsgbGV2ZWwgPD0gdXNhYmxlX2xl
dmVsOyBsZXZlbCsrKSB7Ci0JCXN0cnVjdCBpbnRlbF93bV9sZXZlbCAqd20gPSAmcGlwZV93bS0+
d21bbGV2ZWxdOworCQlzdHJ1Y3QgaWxrX3dtX2xldmVsICp3bSA9ICZwaXBlX3dtLT53bVtsZXZl
bF07CiAKIAkJaWxrX2NvbXB1dGVfd21fbGV2ZWwoZGV2X3ByaXYsIGNydGMsIGxldmVsLCBjcnRj
X3N0YXRlLAogCQkJCSAgICAgcHJpc3RhdGUsIHNwcnN0YXRlLCBjdXJzdGF0ZSwgd20pOwpAQCAt
MzIxNywxMiArMzIxNywxMiBAQCBzdGF0aWMgaW50IGlsa19jb21wdXRlX2ludGVybWVkaWF0ZV93
bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3c3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2Ny
dGMgKmludGVsX2NydGMgPSB0b19pbnRlbF9jcnRjKG5ld3N0YXRlLT51YXBpLmNydGMpOwogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoaW50ZWxfY3J0Yy0+YmFz
ZS5kZXYpOwotCXN0cnVjdCBpbnRlbF9waXBlX3dtICphID0gJm5ld3N0YXRlLT53bS5pbGsuaW50
ZXJtZWRpYXRlOworCXN0cnVjdCBpbGtfcGlwZV93bSAqYSA9ICZuZXdzdGF0ZS0+d20uaWxrLmlu
dGVybWVkaWF0ZTsKIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICppbnRlbF9zdGF0ZSA9CiAJ
CXRvX2ludGVsX2F0b21pY19zdGF0ZShuZXdzdGF0ZS0+dWFwaS5zdGF0ZSk7CiAJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZHN0YXRlID0KIAkJaW50ZWxfYXRvbWljX2dldF9vbGRf
Y3J0Y19zdGF0ZShpbnRlbF9zdGF0ZSwgaW50ZWxfY3J0Yyk7Ci0JY29uc3Qgc3RydWN0IGludGVs
X3BpcGVfd20gKmIgPSAmb2xkc3RhdGUtPndtLmlsay5vcHRpbWFsOworCWNvbnN0IHN0cnVjdCBp
bGtfcGlwZV93bSAqYiA9ICZvbGRzdGF0ZS0+d20uaWxrLm9wdGltYWw7CiAJaW50IGxldmVsLCBt
YXhfbGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsKIAogCS8qCkBAIC0zMjQwLDgg
KzMyNDAsOCBAQCBzdGF0aWMgaW50IGlsa19jb21wdXRlX2ludGVybWVkaWF0ZV93bShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3c3RhdGUpCiAJYS0+c3ByaXRlc19zY2FsZWQgfD0gYi0+c3By
aXRlc19zY2FsZWQ7CiAKIAlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZl
bCsrKSB7Ci0JCXN0cnVjdCBpbnRlbF93bV9sZXZlbCAqYV93bSA9ICZhLT53bVtsZXZlbF07Ci0J
CWNvbnN0IHN0cnVjdCBpbnRlbF93bV9sZXZlbCAqYl93bSA9ICZiLT53bVtsZXZlbF07CisJCXN0
cnVjdCBpbGtfd21fbGV2ZWwgKmFfd20gPSAmYS0+d21bbGV2ZWxdOworCQljb25zdCBzdHJ1Y3Qg
aWxrX3dtX2xldmVsICpiX3dtID0gJmItPndtW2xldmVsXTsKIAogCQlhX3dtLT5lbmFibGUgJj0g
Yl93bS0+ZW5hYmxlOwogCQlhX3dtLT5wcmlfdmFsID0gbWF4KGFfd20tPnByaV92YWwsIGJfd20t
PnByaV92YWwpOwpAQCAtMzI3NCwxNSArMzI3NCwxNSBAQCBzdGF0aWMgaW50IGlsa19jb21wdXRl
X2ludGVybWVkaWF0ZV93bShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3c3RhdGUpCiAgKi8K
IHN0YXRpYyB2b2lkIGlsa19tZXJnZV93bV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCiAJCQkgICAgICAgaW50IGxldmVsLAotCQkJICAgICAgIHN0cnVjdCBpbnRlbF93
bV9sZXZlbCAqcmV0X3dtKQorCQkJICAgICAgIHN0cnVjdCBpbGtfd21fbGV2ZWwgKnJldF93bSkK
IHsKIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsKIAogCXJldF93bS0+ZW5h
YmxlID0gdHJ1ZTsKIAogCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGludGVs
X2NydGMpIHsKLQkJY29uc3Qgc3RydWN0IGludGVsX3BpcGVfd20gKmFjdGl2ZSA9ICZpbnRlbF9j
cnRjLT53bS5hY3RpdmUuaWxrOwotCQljb25zdCBzdHJ1Y3QgaW50ZWxfd21fbGV2ZWwgKndtID0g
JmFjdGl2ZS0+d21bbGV2ZWxdOworCQljb25zdCBzdHJ1Y3QgaWxrX3BpcGVfd20gKmFjdGl2ZSA9
ICZpbnRlbF9jcnRjLT53bS5hY3RpdmUuaWxrOworCQljb25zdCBzdHJ1Y3QgaWxrX3dtX2xldmVs
ICp3bSA9ICZhY3RpdmUtPndtW2xldmVsXTsKIAogCQlpZiAoIWFjdGl2ZS0+cGlwZV9lbmFibGVk
KQogCQkJY29udGludWU7CkBAIC0zMzA2LDkgKzMzMDYsOSBAQCBzdGF0aWMgdm9pZCBpbGtfbWVy
Z2Vfd21fbGV2ZWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogICogTWVyZ2Ug
YWxsIGxvdyBwb3dlciB3YXRlcm1hcmtzIGZvciBhbGwgYWN0aXZlIHBpcGVzLgogICovCiBzdGF0
aWMgdm9pZCBpbGtfd21fbWVyZ2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAot
CQkJIGNvbnN0IHN0cnVjdCBpbnRlbF93bV9jb25maWcgKmNvbmZpZywKKwkJCSBjb25zdCBzdHJ1
Y3QgaWxrX3dtX2NvbmZpZyAqY29uZmlnLAogCQkJIGNvbnN0IHN0cnVjdCBpbGtfd21fbWF4aW11
bXMgKm1heCwKLQkJCSBzdHJ1Y3QgaW50ZWxfcGlwZV93bSAqbWVyZ2VkKQorCQkJIHN0cnVjdCBp
bGtfcGlwZV93bSAqbWVyZ2VkKQogewogCWludCBsZXZlbCwgbWF4X2xldmVsID0gaWxrX3dtX21h
eF9sZXZlbChkZXZfcHJpdik7CiAJaW50IGxhc3RfZW5hYmxlZF9sZXZlbCA9IG1heF9sZXZlbDsK
QEAgLTMzMjMsNyArMzMyMyw3IEBAIHN0YXRpYyB2b2lkIGlsa193bV9tZXJnZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAkvKiBtZXJnZSBlYWNoIFdNMSsgbGV2ZWwgKi8K
IAlmb3IgKGxldmVsID0gMTsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKSB7Ci0JCXN0cnVj
dCBpbnRlbF93bV9sZXZlbCAqd20gPSAmbWVyZ2VkLT53bVtsZXZlbF07CisJCXN0cnVjdCBpbGtf
d21fbGV2ZWwgKndtID0gJm1lcmdlZC0+d21bbGV2ZWxdOwogCiAJCWlsa19tZXJnZV93bV9sZXZl
bChkZXZfcHJpdiwgbGV2ZWwsIHdtKTsKIApAQCAtMzM1MywxNCArMzM1MywxNCBAQCBzdGF0aWMg
dm9pZCBpbGtfd21fbWVyZ2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlm
IChJU19HRU4oZGV2X3ByaXYsIDUpICYmICFtZXJnZWQtPmZiY193bV9lbmFibGVkICYmCiAJICAg
IGludGVsX2ZiY19pc19hY3RpdmUoZGV2X3ByaXYpKSB7CiAJCWZvciAobGV2ZWwgPSAyOyBsZXZl
bCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKLQkJCXN0cnVjdCBpbnRlbF93bV9sZXZlbCAqd20g
PSAmbWVyZ2VkLT53bVtsZXZlbF07CisJCQlzdHJ1Y3QgaWxrX3dtX2xldmVsICp3bSA9ICZtZXJn
ZWQtPndtW2xldmVsXTsKIAogCQkJd20tPmVuYWJsZSA9IGZhbHNlOwogCQl9CiAJfQogfQogCi1z
dGF0aWMgaW50IGlsa193bV9scF90b19sZXZlbChpbnQgd21fbHAsIGNvbnN0IHN0cnVjdCBpbnRl
bF9waXBlX3dtICpwaXBlX3dtKQorc3RhdGljIGludCBpbGtfd21fbHBfdG9fbGV2ZWwoaW50IHdt
X2xwLCBjb25zdCBzdHJ1Y3QgaWxrX3BpcGVfd20gKnBpcGVfd20pCiB7CiAJLyogTFAxLExQMixM
UDMgbGV2ZWxzIGFyZSBlaXRoZXIgMSwyLDMgb3IgMSwzLDQgKi8KIAlyZXR1cm4gd21fbHAgKyAo
d21fbHAgPj0gMiAmJiBwaXBlX3dtLT53bVs0XS5lbmFibGUpOwpAQCAtMzM3NywxMSArMzM3Nywx
MSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGlsa193bV9scF9sYXRlbmN5KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIH0KIAogc3RhdGljIHZvaWQgaWxrX2NvbXB1dGVfd21fcmVz
dWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkJICAgY29uc3Qgc3Ry
dWN0IGludGVsX3BpcGVfd20gKm1lcmdlZCwKLQkJCQkgICBlbnVtIGludGVsX2RkYl9wYXJ0aXRp
b25pbmcgcGFydGl0aW9uaW5nLAorCQkJCSAgIGNvbnN0IHN0cnVjdCBpbGtfcGlwZV93bSAqbWVy
Z2VkLAorCQkJCSAgIGVudW0gaWxrX2RkYl9wYXJ0aXRpb25pbmcgcGFydGl0aW9uaW5nLAogCQkJ
CSAgIHN0cnVjdCBpbGtfd21fdmFsdWVzICpyZXN1bHRzKQogewotCXN0cnVjdCBpbnRlbF9jcnRj
ICppbnRlbF9jcnRjOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCWludCBsZXZlbCwgd21f
bHA7CiAKIAlyZXN1bHRzLT5lbmFibGVfZmJjX3dtID0gbWVyZ2VkLT5mYmNfd21fZW5hYmxlZDsK
QEAgLTMzODksNyArMzM4OSw3IEBAIHN0YXRpYyB2b2lkIGlsa19jb21wdXRlX3dtX3Jlc3VsdHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJLyogTFAxKyByZWdpc3RlciB2
YWx1ZXMgKi8KIAlmb3IgKHdtX2xwID0gMTsgd21fbHAgPD0gMzsgd21fbHArKykgewotCQljb25z
dCBzdHJ1Y3QgaW50ZWxfd21fbGV2ZWwgKnI7CisJCWNvbnN0IHN0cnVjdCBpbGtfd21fbGV2ZWwg
KnI7CiAKIAkJbGV2ZWwgPSBpbGtfd21fbHBfdG9fbGV2ZWwod21fbHAsIG1lcmdlZCk7CiAKQEAg
LTM0MjYsMTAgKzM0MjYsOSBAQCBzdGF0aWMgdm9pZCBpbGtfY29tcHV0ZV93bV9yZXN1bHRzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAl9CiAKIAkvKiBMUDAgcmVnaXN0ZXIg
dmFsdWVzICovCi0JZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYtPmRybSwgaW50ZWxfY3J0
YykgewotCQllbnVtIHBpcGUgcGlwZSA9IGludGVsX2NydGMtPnBpcGU7Ci0JCWNvbnN0IHN0cnVj
dCBpbnRlbF9waXBlX3dtICpwaXBlX3dtID0gJmludGVsX2NydGMtPndtLmFjdGl2ZS5pbGs7Ci0J
CWNvbnN0IHN0cnVjdCBpbnRlbF93bV9sZXZlbCAqciA9ICZwaXBlX3dtLT53bVswXTsKKwlmb3Jf
ZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7CisJCWNvbnN0IHN0cnVjdCBp
bGtfd21fbGV2ZWwgKnIgPSAmY3J0Yy0+d20uYWN0aXZlLmlsay53bVswXTsKKwkJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOwogCiAJCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
IXItPmVuYWJsZSkpCiAJCQljb250aW51ZTsKQEAgLTM0NDMsMTAgKzM0NDIsMTAgQEAgc3RhdGlj
IHZvaWQgaWxrX2NvbXB1dGVfd21fcmVzdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAKIC8qIEZpbmQgdGhlIHJlc3VsdCB3aXRoIHRoZSBoaWdoZXN0IGxldmVsIGVuYWJs
ZWQuIENoZWNrIGZvciBlbmFibGVfZmJjX3dtIGluCiAgKiBjYXNlIGJvdGggYXJlIGF0IHRoZSBz
YW1lIGxldmVsLiBQcmVmZXIgcjEgaW4gY2FzZSB0aGV5J3JlIHRoZSBzYW1lLiAqLwotc3RhdGlj
IHN0cnVjdCBpbnRlbF9waXBlX3dtICoKK3N0YXRpYyBzdHJ1Y3QgaWxrX3BpcGVfd20gKgogaWxr
X2ZpbmRfYmVzdF9yZXN1bHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkg
ICAgIHN0cnVjdCBpbnRlbF9waXBlX3dtICpyMSwKLQkJICAgICBzdHJ1Y3QgaW50ZWxfcGlwZV93
bSAqcjIpCisJCSAgICAgc3RydWN0IGlsa19waXBlX3dtICpyMSwKKwkJICAgICBzdHJ1Y3QgaWxr
X3BpcGVfd20gKnIyKQogewogCWludCBsZXZlbCwgbWF4X2xldmVsID0gaWxrX3dtX21heF9sZXZl
bChkZXZfcHJpdik7CiAJaW50IGxldmVsMSA9IDAsIGxldmVsMiA9IDA7CkBAIC0zNTgwLDE0ICsz
NTc5LDE0IEBAIHN0YXRpYyB2b2lkIGlsa193cml0ZV93bV92YWx1ZXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAogCWlmIChkaXJ0eSAmIFdNX0RJUlRZX0REQikgewogCQlpZiAo
SVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewogCQkJdmFs
ID0gSTkxNV9SRUFEKFdNX01JU0MpOwotCQkJaWYgKHJlc3VsdHMtPnBhcnRpdGlvbmluZyA9PSBJ
TlRFTF9EREJfUEFSVF8xXzIpCisJCQlpZiAocmVzdWx0cy0+cGFydGl0aW9uaW5nID09IElMS19E
REJfUEFSVF8xXzIpCiAJCQkJdmFsICY9IH5XTV9NSVNDX0RBVEFfUEFSVElUSU9OXzVfNjsKIAkJ
CWVsc2UKIAkJCQl2YWwgfD0gV01fTUlTQ19EQVRBX1BBUlRJVElPTl81XzY7CiAJCQlJOTE1X1dS
SVRFKFdNX01JU0MsIHZhbCk7CiAJCX0gZWxzZSB7CiAJCQl2YWwgPSBJOTE1X1JFQUQoRElTUF9B
UkJfQ1RMMik7Ci0JCQlpZiAocmVzdWx0cy0+cGFydGl0aW9uaW5nID09IElOVEVMX0REQl9QQVJU
XzFfMikKKwkJCWlmIChyZXN1bHRzLT5wYXJ0aXRpb25pbmcgPT0gSUxLX0REQl9QQVJUXzFfMikK
IAkJCQl2YWwgJj0gfkRJU1BfREFUQV9QQVJUSVRJT05fNV82OwogCQkJZWxzZQogCQkJCXZhbCB8
PSBESVNQX0RBVEFfUEFSVElUSU9OXzVfNjsKQEAgLTYxMzUsMTMgKzYxMzQsMTMgQEAgc2tsX2Nv
bXB1dGVfd20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB9CiAKIHN0YXRpYyB2
b2lkIGlsa19jb21wdXRlX3dtX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCi0JCQkJICBzdHJ1Y3QgaW50ZWxfd21fY29uZmlnICpjb25maWcpCisJCQkJICBzdHJ1Y3Qg
aWxrX3dtX2NvbmZpZyAqY29uZmlnKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCiAJ
LyogQ29tcHV0ZSB0aGUgY3VycmVudGx5IF9hY3RpdmVfIGNvbmZpZyAqLwogCWZvcl9lYWNoX2lu
dGVsX2NydGMoJmRldl9wcml2LT5kcm0sIGNydGMpIHsKLQkJY29uc3Qgc3RydWN0IGludGVsX3Bp
cGVfd20gKndtID0gJmNydGMtPndtLmFjdGl2ZS5pbGs7CisJCWNvbnN0IHN0cnVjdCBpbGtfcGlw
ZV93bSAqd20gPSAmY3J0Yy0+d20uYWN0aXZlLmlsazsKIAogCQlpZiAoIXdtLT5waXBlX2VuYWJs
ZWQpCiAJCQljb250aW51ZTsKQEAgLTYxNTQsMjEgKzYxNTMsMjEgQEAgc3RhdGljIHZvaWQgaWxr
X2NvbXB1dGVfd21fY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAog
c3RhdGljIHZvaWQgaWxrX3Byb2dyYW1fd2F0ZXJtYXJrcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiB7Ci0Jc3RydWN0IGludGVsX3BpcGVfd20gbHBfd21fMV8yID0ge30sIGxw
X3dtXzVfNiA9IHt9LCAqYmVzdF9scF93bTsKKwlzdHJ1Y3QgaWxrX3BpcGVfd20gbHBfd21fMV8y
ID0ge30sIGxwX3dtXzVfNiA9IHt9LCAqYmVzdF9scF93bTsKIAlzdHJ1Y3QgaWxrX3dtX21heGlt
dW1zIG1heDsKLQlzdHJ1Y3QgaW50ZWxfd21fY29uZmlnIGNvbmZpZyA9IHt9OworCXN0cnVjdCBp
bGtfd21fY29uZmlnIGNvbmZpZyA9IHt9OwogCXN0cnVjdCBpbGtfd21fdmFsdWVzIHJlc3VsdHMg
PSB7fTsKLQllbnVtIGludGVsX2RkYl9wYXJ0aXRpb25pbmcgcGFydGl0aW9uaW5nOworCWVudW0g
aWxrX2RkYl9wYXJ0aXRpb25pbmcgcGFydGl0aW9uaW5nOwogCiAJaWxrX2NvbXB1dGVfd21fY29u
ZmlnKGRldl9wcml2LCAmY29uZmlnKTsKIAotCWlsa19jb21wdXRlX3dtX21heGltdW1zKGRldl9w
cml2LCAxLCAmY29uZmlnLCBJTlRFTF9EREJfUEFSVF8xXzIsICZtYXgpOworCWlsa19jb21wdXRl
X3dtX21heGltdW1zKGRldl9wcml2LCAxLCAmY29uZmlnLCBJTEtfRERCX1BBUlRfMV8yLCAmbWF4
KTsKIAlpbGtfd21fbWVyZ2UoZGV2X3ByaXYsICZjb25maWcsICZtYXgsICZscF93bV8xXzIpOwog
CiAJLyogNS82IHNwbGl0IG9ubHkgaW4gc2luZ2xlIHBpcGUgY29uZmlnIG9uIElWQisgKi8KIAlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3ICYmCiAJICAgIGNvbmZpZy5udW1fcGlwZXNfYWN0
aXZlID09IDEgJiYgY29uZmlnLnNwcml0ZXNfZW5hYmxlZCkgewotCQlpbGtfY29tcHV0ZV93bV9t
YXhpbXVtcyhkZXZfcHJpdiwgMSwgJmNvbmZpZywgSU5URUxfRERCX1BBUlRfNV82LCAmbWF4KTsK
KwkJaWxrX2NvbXB1dGVfd21fbWF4aW11bXMoZGV2X3ByaXYsIDEsICZjb25maWcsIElMS19EREJf
UEFSVF81XzYsICZtYXgpOwogCQlpbGtfd21fbWVyZ2UoZGV2X3ByaXYsICZjb25maWcsICZtYXgs
ICZscF93bV81XzYpOwogCiAJCWJlc3RfbHBfd20gPSBpbGtfZmluZF9iZXN0X3Jlc3VsdChkZXZf
cHJpdiwgJmxwX3dtXzFfMiwgJmxwX3dtXzVfNik7CkBAIC02MTc3LDcgKzYxNzYsNyBAQCBzdGF0
aWMgdm9pZCBpbGtfcHJvZ3JhbV93YXRlcm1hcmtzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAl9CiAKIAlwYXJ0aXRpb25pbmcgPSAoYmVzdF9scF93bSA9PSAmbHBfd21fMV8y
KSA/Ci0JCSAgICAgICBJTlRFTF9EREJfUEFSVF8xXzIgOiBJTlRFTF9EREJfUEFSVF81XzY7CisJ
CSAgICAgICBJTEtfRERCX1BBUlRfMV8yIDogSUxLX0REQl9QQVJUXzVfNjsKIAogCWlsa19jb21w
dXRlX3dtX3Jlc3VsdHMoZGV2X3ByaXYsIGJlc3RfbHBfd20sIHBhcnRpdGlvbmluZywgJnJlc3Vs
dHMpOwogCkBAIC02Mjc5LDExICs2Mjc4LDEwIEBAIHZvaWQgc2tsX3dtX2dldF9od19zdGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2b2lkIGlsa19waXBl
X3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKLQlzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShkZXYpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbGtfd21fdmFsdWVzICpo
dyA9ICZkZXZfcHJpdi0+d20uaHc7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwotCXN0cnVjdCBpbnRl
bF9waXBlX3dtICphY3RpdmUgPSAmY3J0Y19zdGF0ZS0+d20uaWxrLm9wdGltYWw7CisJc3RydWN0
IGlsa19waXBlX3dtICphY3RpdmUgPSAmY3J0Y19zdGF0ZS0+d20uaWxrLm9wdGltYWw7CiAJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCiAJaHctPndtX3BpcGVbcGlwZV0gPSBJOTE1X1JF
QUQoV00wX1BJUEVfSUxLKHBpcGUpKTsKQEAgLTY3NTcsMTAgKzY3NTUsMTAgQEAgdm9pZCBpbGtf
d21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCWlm
IChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQogCQlody0+
cGFydGl0aW9uaW5nID0gKEk5MTVfUkVBRChXTV9NSVNDKSAmIFdNX01JU0NfREFUQV9QQVJUSVRJ
T05fNV82KSA/Ci0JCQlJTlRFTF9EREJfUEFSVF81XzYgOiBJTlRFTF9EREJfUEFSVF8xXzI7CisJ
CQlJTEtfRERCX1BBUlRfNV82IDogSUxLX0REQl9QQVJUXzFfMjsKIAllbHNlIGlmIChJU19JVllC
UklER0UoZGV2X3ByaXYpKQogCQlody0+cGFydGl0aW9uaW5nID0gKEk5MTVfUkVBRChESVNQX0FS
Ql9DVEwyKSAmIERJU1BfREFUQV9QQVJUSVRJT05fNV82KSA/Ci0JCQlJTlRFTF9EREJfUEFSVF81
XzYgOiBJTlRFTF9EREJfUEFSVF8xXzI7CisJCQlJTEtfRERCX1BBUlRfNV82IDogSUxLX0REQl9Q
QVJUXzFfMjsKIAogCWh3LT5lbmFibGVfZmJjX3dtID0KIAkJIShJOTE1X1JFQUQoRElTUF9BUkJf
Q1RMKSAmIERJU1BfRkJDX1dNX0RJUyk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
