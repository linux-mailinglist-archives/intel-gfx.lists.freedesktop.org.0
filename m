Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DDD391644
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117696ECB4;
	Wed, 26 May 2021 11:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCAC6ECA6;
 Wed, 26 May 2021 11:33:29 +0000 (UTC)
IronPort-SDR: DkiTDG/I2L7ijkhR0jsMSjyNbe2u258gWhf4rvawCZ08/79KXqvoUkZwbos50yrlEhrJB9e9+V
 l7gfrctYYn8A==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627298"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627298"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:29 -0700
IronPort-SDR: CLYGnvNrj3mxpJFW5YJMnNvBUhdEXSrodcVDGv10AzYS7HHyG1cc2IpnMxGVORBcsc+0t+JCHa
 yOicJfLaVO5g==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457900"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:27 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:52 +0200
Message-Id: <20210526113259.1661914-9-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 08/15] drm/ttm: Use drm_memcpy_from_wc_dbm
 for TTM bo moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGZhc3Qgd2MgbWVtY3B5IGZvciByZWFkaW5nIG91dCBvZiB3YyBtZW1vcnkgZm9yIFRUTSBi
byBtb3Zlcy4KCkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tCnY0OgotIENsYXJpZnkgd2hlbiB3
ZSB0cnkgZHJtX21lbWNweV9mcm9tX3djX2RibSAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQot
IEJlIHBhcmFub2lkIGFib3V0IHdoZW4gZHJtX21lbWNweV9mcm9tX3djX2RibSBtYXkgZmFpbCAo
UmVwb3J0ZWQgYnkKICBNYXR0aGV3IEF1bGQpCi0tLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdXRpbC5jIHwgMTQgKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90
dG1fYm9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCmluZGV4IDZh
Yzc3NDRhMWE1Yy4uZWJmZjYwM2E5N2Y0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9ib191dGlsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCkBA
IC0zMSw2ICszMSw3IEBACiAKICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9ib19kcml2ZXIuaD4KICNp
bmNsdWRlIDxkcm0vdHRtL3R0bV9wbGFjZW1lbnQuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX21lbWNw
eS5oPgogI2luY2x1ZGUgPGRybS9kcm1fdm1hX21hbmFnZXIuaD4KICNpbmNsdWRlIDxsaW51eC9k
bWEtYnVmLW1hcC5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CkBAIC05MSw2ICs5Miw3IEBAIHZv
aWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCiAJY29uc3Qg
c3RydWN0IHR0bV9rbWFwX2l0ZXJfb3BzICpzcmNfb3BzID0gc3JjX2l0ZXItPm9wczsKIAlzdHJ1
Y3QgdHRtX3R0ICp0dG0gPSBiby0+dHRtOwogCXN0cnVjdCBkbWFfYnVmX21hcCBzcmNfbWFwLCBk
c3RfbWFwOworCWJvb2wgd2NfbWVtY3B5OwogCXBnb2ZmX3QgaTsKIAogCS8qIFNpbmdsZSBUVE0g
bW92ZS4gTk9QICovCkBAIC0xMTQsMTEgKzExNiwyMSBAQCB2b2lkIHR0bV9tb3ZlX21lbWNweShz
dHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAogCQlyZXR1cm47CiAJfQogCisJLyoKKwkgKiBD
b25kaXRpb24gdGhpcyBvbiBzcmMgYmVpbmcgV0MgaWYgbmVlZGVkLiBIb3dldmVyIGk5MTUgcGVy
ZgorCSAqIHNlbGZ0ZXN0IGluZGljYXRlcyB0aGF0IGZvciBQQUdFX1NJWkUgY2h1bmtzLCB3Y19t
ZW1jcHkKKwkgKiBvdXRwZXJmb3JtcyBtZW1jcHkoKSBvbiBhbGwgY2FzZXMgZXhjZXB0IFdCLT5X
QiB3aGVyZSByZXN1bHRzCisJICogYXJlIHNpbWlsYXIuCisJICovCisJd2NfbWVtY3B5ID0gZHJt
X2hhc19tZW1jcHlfZnJvbV93YygpOworCiAJZm9yIChpID0gMDsgaSA8IG51bV9wYWdlczsgKytp
KSB7CiAJCWRzdF9vcHMtPm1hcF9sb2NhbChkc3RfaXRlciwgJmRzdF9tYXAsIGkpOwogCQlzcmNf
b3BzLT5tYXBfbG9jYWwoc3JjX2l0ZXIsICZzcmNfbWFwLCBpKTsKIAotCQlpZiAoIXNyY19tYXAu
aXNfaW9tZW0gJiYgIWRzdF9tYXAuaXNfaW9tZW0pIHsKKwkJaWYgKHdjX21lbWNweSAmJiBkcm1f
bWVtY3B5X2Zyb21fd2NfZGJtKCZkc3RfbWFwLCAmc3JjX21hcCwgUEFHRV9TSVpFKSkgeworCQkJ
OworCQl9IGVsc2UgaWYgKCFzcmNfbWFwLmlzX2lvbWVtICYmICFkc3RfbWFwLmlzX2lvbWVtKSB7
CiAJCQltZW1jcHkoZHN0X21hcC52YWRkciwgc3JjX21hcC52YWRkciwgUEFHRV9TSVpFKTsKIAkJ
fSBlbHNlIGlmICghc3JjX21hcC5pc19pb21lbSkgewogCQkJZG1hX2J1Zl9tYXBfbWVtY3B5X3Rv
KCZkc3RfbWFwLCBzcmNfbWFwLnZhZGRyLAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
