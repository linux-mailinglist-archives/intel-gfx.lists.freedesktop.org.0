Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA91A07CC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 08:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C606E52C;
	Tue,  7 Apr 2020 06:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0361B6E52D;
 Tue,  7 Apr 2020 06:54:28 +0000 (UTC)
IronPort-SDR: eDyJzQ5cBjOM7eNNLFA16/scOuyXN2200U4jjf4v8LknBnCxYBIxFIwP7PvhV9wGCsk/Y0aKmg
 oA/Mvbck1r0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 23:54:28 -0700
IronPort-SDR: IYPP7xf7PA7rvsARoS+UdhR/Es/GkMrMXEedBgCwsCEboch9lJKgxyOB6cfy9lOj1z17+k8VZK
 IEMhX5HaIDEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="451114737"
Received: from unknown (HELO jeevan-desktop.iind.intel.com) ([10.223.74.85])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2020 23:54:25 -0700
From: Jeevan B <jeevan.b@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 12:20:06 +0530
Message-Id: <1586242207-23214-4-git-send-email-jeevan.b@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/amdgpu: utilize subconnector property
 for DP through atombios
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
Cc: David Zhou <David1.Zhou@amd.com>, jani.nikula@intel.com,
 Oleg Vasilev <oleg.vasilev@intel.com>, amd-gfx@lists.freedesktop.org,
 Jeevan B <jeevan.b@intel.com>, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogT2xlZyBWYXNpbGV2IDxvbGVnLnZhc2lsZXZAaW50ZWwuY29tPgoKU2luY2UgRFAtc3Bl
Y2lmaWMgaW5mb3JtYXRpb24gaXMgc3RvcmVkIGluIGRyaXZlcidzIHN0cnVjdHVyZXMsIGV2ZXJ5
CmRyaXZlciBuZWVkcyB0byBpbXBsZW1lbnQgc3ViY29ubmVjdG9yIHByb3BlcnR5IGJ5IGl0c2Vs
Zi4KCnYyOiByZWJhc2UKCkNjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5j
b20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBE
YXZpZCAoQ2h1bk1pbmcpIFpob3UgPERhdmlkMS5aaG91QGFtZC5jb20+CkNjOiBhbWQtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpTaWduZWQtb2ZmLWJ5OiBKZWV2YW4gQiA8amVldmFuLmJAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBPbGVnIFZhc2lsZXYgPG9sZWcudmFzaWxldkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xsYWJvcmEuY29t
PgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAx
OTA4MjkxMTQ4NTQuMTUzOS02LW9sZWcudmFzaWxldkBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY29ubmVjdG9ycy5jIHwgMTAgKysrKysrKysrKwogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21vZGUuaCAgICAgICB8ICAxICsKIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2F0b21iaW9zX2RwLmMgICAgICAgfCAxOCArKysrKysrKysr
KysrKysrKy0KIDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jb25uZWN0
b3JzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY29ubmVjdG9ycy5jCmlu
ZGV4IGYzNTVkOWEuLjcxYWFkZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9jb25uZWN0b3JzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2Nvbm5lY3RvcnMuYwpAQCAtMjYsNiArMjYsNyBAQAogCiAjaW5jbHVkZSA8ZHJtL2Ry
bV9lZGlkLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9mYl9oZWxwZXIuaD4KKyNpbmNsdWRlIDxkcm0v
ZHJtX2RwX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+CiAjaW5j
bHVkZSA8ZHJtL2FtZGdwdV9kcm0uaD4KICNpbmNsdWRlICJhbWRncHUuaCIKQEAgLTE0MDUsNiAr
MTQwNiwxMCBAQCBhbWRncHVfY29ubmVjdG9yX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yLCBib29sIGZvcmNlKQogCQlwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChj
b25uZWN0b3ItPmRldi0+ZGV2KTsKIAl9CiAKKwlkcm1fZHBfc2V0X3N1YmNvbm5lY3Rvcl9wcm9w
ZXJ0eSgmYW1kZ3B1X2Nvbm5lY3Rvci0+YmFzZSwKKwkJCQkJIHJldCwKKwkJCQkJIGFtZGdwdV9k
aWdfY29ubmVjdG9yLT5kcGNkLAorCQkJCQkgYW1kZ3B1X2RpZ19jb25uZWN0b3ItPmRvd25zdHJl
YW1fcG9ydHMpOwogCXJldHVybiByZXQ7CiB9CiAKQEAgLTE5NTEsNiArMTk1NiwxMSBAQCBhbWRn
cHVfY29ubmVjdG9yX2FkZChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAlpZiAoaGFzX2F1
eCkKIAkJYW1kZ3B1X2F0b21iaW9zX2RwX2F1eF9pbml0KGFtZGdwdV9jb25uZWN0b3IpOwogCisJ
aWYgKGNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCB8fAor
CSAgICBjb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKSB7CisJCWRybV9t
b2RlX2FkZF9kcF9zdWJjb25uZWN0b3JfcHJvcGVydHkoJmFtZGdwdV9jb25uZWN0b3ItPmJhc2Up
OworCX0KKwogCXJldHVybjsKIAogZmFpbGVkOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X21vZGUuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9tb2RlLmgKaW5kZXggMzdiYTA3ZS4uMDRhNDMwZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X21vZGUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfbW9kZS5oCkBAIC00NjksNiArNDY5LDcgQEAgc3RydWN0IGFtZGdwdV9l
bmNvZGVyIHsKIHN0cnVjdCBhbWRncHVfY29ubmVjdG9yX2F0b21fZGlnIHsKIAkvKiBkaXNwbGF5
cG9ydCAqLwogCXU4IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdOworCXU4IGRvd25zdHJlYW1f
cG9ydHNbRFBfTUFYX0RPV05TVFJFQU1fUE9SVFNdOwogCXU4IGRwX3NpbmtfdHlwZTsKIAlpbnQg
ZHBfY2xvY2s7CiAJaW50IGRwX2xhbmVfY291bnQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hdG9tYmlvc19kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YXRvbWJpb3NfZHAuYwppbmRleCA5Yjc0Y2ZkLi45MDBiMjcyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hdG9tYmlvc19kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2F0b21iaW9zX2RwLmMKQEAgLTMyOCw2ICszMjgsMjIgQEAgc3RhdGljIHZvaWQg
YW1kZ3B1X2F0b21iaW9zX2RwX3Byb2JlX291aShzdHJ1Y3QgYW1kZ3B1X2Nvbm5lY3RvciAqYW1k
Z3B1X2Nvbm5lY3QKIAkJCSAgICAgIGJ1ZlswXSwgYnVmWzFdLCBidWZbMl0pOwogfQogCitzdGF0
aWMgdm9pZCBhbWRncHVfYXRvbWJpb3NfZHBfZHNfcG9ydHMoc3RydWN0IGFtZGdwdV9jb25uZWN0
b3IgKmFtZGdwdV9jb25uZWN0b3IpCit7CisJc3RydWN0IGFtZGdwdV9jb25uZWN0b3JfYXRvbV9k
aWcgKmRpZ19jb25uZWN0b3IgPSBhbWRncHVfY29ubmVjdG9yLT5jb25fcHJpdjsKKwlpbnQgcmV0
OworCisJaWYgKGRpZ19jb25uZWN0b3ItPmRwY2RbRFBfRFBDRF9SRVZdID4gMHgxMCkgeworCQly
ZXQgPSBkcm1fZHBfZHBjZF9yZWFkKCZhbWRncHVfY29ubmVjdG9yLT5kZGNfYnVzLT5hdXgsCisJ
CQkJICAgICAgIERQX0RPV05TVFJFQU1fUE9SVF8wLAorCQkJCSAgICAgICBkaWdfY29ubmVjdG9y
LT5kb3duc3RyZWFtX3BvcnRzLAorCQkJCSAgICAgICBEUF9NQVhfRE9XTlNUUkVBTV9QT1JUUyk7
CisJCWlmIChyZXQpCisJCQltZW1zZXQoZGlnX2Nvbm5lY3Rvci0+ZG93bnN0cmVhbV9wb3J0cywg
MCwKKwkJCSAgICAgICBEUF9NQVhfRE9XTlNUUkVBTV9QT1JUUyk7CisJfQorfQorCiBpbnQgYW1k
Z3B1X2F0b21iaW9zX2RwX2dldF9kcGNkKHN0cnVjdCBhbWRncHVfY29ubmVjdG9yICphbWRncHVf
Y29ubmVjdG9yKQogewogCXN0cnVjdCBhbWRncHVfY29ubmVjdG9yX2F0b21fZGlnICpkaWdfY29u
bmVjdG9yID0gYW1kZ3B1X2Nvbm5lY3Rvci0+Y29uX3ByaXY7CkBAIC0zNDMsNyArMzU5LDcgQEAg
aW50IGFtZGdwdV9hdG9tYmlvc19kcF9nZXRfZHBjZChzdHJ1Y3QgYW1kZ3B1X2Nvbm5lY3RvciAq
YW1kZ3B1X2Nvbm5lY3RvcikKIAkJCSAgICAgIGRpZ19jb25uZWN0b3ItPmRwY2QpOwogCiAJCWFt
ZGdwdV9hdG9tYmlvc19kcF9wcm9iZV9vdWkoYW1kZ3B1X2Nvbm5lY3Rvcik7Ci0KKwkJYW1kZ3B1
X2F0b21iaW9zX2RwX2RzX3BvcnRzKGFtZGdwdV9jb25uZWN0b3IpOwogCQlyZXR1cm4gMDsKIAl9
CiAKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
