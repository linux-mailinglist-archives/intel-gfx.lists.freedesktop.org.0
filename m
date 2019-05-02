Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D731B1138E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 08:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC7B892B6;
	Thu,  2 May 2019 06:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4C4892B6
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 06:54:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 23:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,420,1549958400"; d="scan'208";a="296301545"
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by orsmga004.jf.intel.com with ESMTP; 01 May 2019 23:54:54 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 12:04:05 +0530
Message-Id: <1556778847-7796-2-git-send-email-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556778847-7796-1-git-send-email-vandita.kulkarni@intel.com>
References: <1556778847-7796-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] [v3 2/4] drm/i915: Refactor bdw_get_pipemisc_bpp
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSBiZHdfZ2V0X3BpcGVtaXNjX2JwcCBhbG9uZ3NpZGUgYmR3X3NldF9waXBlbWlzYwoKU2ln
bmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgMjIgKysrKysrKysr
KysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jICAgICAgIHwgMjIgLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZGQ2NWQ3Yy4uMmU1
ODY3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtODkzNiw2ICs4OTM2
LDI4IEBAIHN0YXRpYyB2b2lkIGJkd19zZXRfcGlwZW1pc2MoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJSTkxNV9XUklURShQSVBFTUlTQyhjcnRjLT5waXBlKSwg
dmFsKTsKIH0KIAoraW50IGJkd19nZXRfcGlwZW1pc2NfYnBwKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+YmFzZS5kZXYpOworCXUzMiB0bXA7CisKKwl0bXAgPSBJOTE1X1JFQUQoUElQRU1JU0MoY3J0
Yy0+cGlwZSkpOworCisJc3dpdGNoICh0bXAgJiBQSVBFTUlTQ19ESVRIRVJfQlBDX01BU0spIHsK
KwljYXNlIFBJUEVNSVNDX0RJVEhFUl82X0JQQzoKKwkJcmV0dXJuIDE4OworCWNhc2UgUElQRU1J
U0NfRElUSEVSXzhfQlBDOgorCQlyZXR1cm4gMjQ7CisJY2FzZSBQSVBFTUlTQ19ESVRIRVJfMTBf
QlBDOgorCQlyZXR1cm4gMzA7CisJY2FzZSBQSVBFTUlTQ19ESVRIRVJfMTJfQlBDOgorCQlyZXR1
cm4gMzY7CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKHRtcCk7CisJCXJldHVybiAwOworCX0K
K30KKwogaW50IGlyb25sYWtlX2dldF9sYW5lc19yZXF1aXJlZChpbnQgdGFyZ2V0X2Nsb2NrLCBp
bnQgbGlua19idywgaW50IGJwcCkKIHsKIAkvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAppbmRl
eCA1N2FlMzk2Li5iYTc1ODQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtMTc1OSw2
ICsxNzU5LDcgQEAgdTMyIHNrbF9wbGFuZV9zdHJpZGUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSwKIHVuc2lnbmVkIGludCBpOXh4X3BsYW5lX21heF9zdHJpZGUo
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCQkgICB1MzIgcGl4ZWxfZm9ybWF0LCB1NjQg
bW9kaWZpZXIsCiAJCQkJICAgdW5zaWduZWQgaW50IHJvdGF0aW9uKTsKK2ludCBiZHdfZ2V0X3Bp
cGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CiAKIC8qIGludGVsX3J1bnRpbWVf
cG0uYyAqLwogc3RhdGljIGlubGluZSB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS92bHZfZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMKaW5kZXggYmM1
Yjc4Mi4uODk1ZWExYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYwpAQCAtMjYyLDI4ICsyNjIsNiBA
QCBzdGF0aWMgdm9pZCBiYW5kX2dhcF9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJdmx2X2ZsaXNkc2lfcHV0KGRldl9wcml2KTsKIH0KIAotc3RhdGljIGludCBiZHdf
Z2V0X3BpcGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKLXsKLQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQl1MzIg
dG1wOwotCi0JdG1wID0gSTkxNV9SRUFEKFBJUEVNSVNDKGNydGMtPnBpcGUpKTsKLQotCXN3aXRj
aCAodG1wICYgUElQRU1JU0NfRElUSEVSX0JQQ19NQVNLKSB7Ci0JY2FzZSBQSVBFTUlTQ19ESVRI
RVJfNl9CUEM6Ci0JCXJldHVybiAxODsKLQljYXNlIFBJUEVNSVNDX0RJVEhFUl84X0JQQzoKLQkJ
cmV0dXJuIDI0OwotCWNhc2UgUElQRU1JU0NfRElUSEVSXzEwX0JQQzoKLQkJcmV0dXJuIDMwOwot
CWNhc2UgUElQRU1JU0NfRElUSEVSXzEyX0JQQzoKLQkJcmV0dXJuIDM2OwotCWRlZmF1bHQ6Ci0J
CU1JU1NJTkdfQ0FTRSh0bXApOwotCQlyZXR1cm4gMDsKLQl9Ci19Ci0KIHN0YXRpYyBpbnQgaW50
ZWxfZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJ
CSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCiAJCQkJICAgIHN0cnVj
dCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQotLSAKMS45LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
