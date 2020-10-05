Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9434283F57
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 21:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEED89FD9;
	Mon,  5 Oct 2020 19:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E6089F31
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 19:11:04 +0000 (UTC)
IronPort-SDR: aWIltCuGvLx1p+AkqmQjae9BXhekQols1PLRJsvAvQQEF+zbRzVQBkRD3VreYTjrrQWghTujkx
 MUs/lCSA3YIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161246223"
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="161246223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP; 05 Oct 2020 12:06:41 -0700
IronPort-SDR: +sd6It5qy7lQYO8I80wCBSZk+EbT0lZoAvdmpFQ/lTFNXOX71faMxB0JrgBSREB/NCWeqqgKve
 DtezJ/UZ4Igg==
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="516360641"
Received: from rsubr11-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.181.248])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 10:51:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Oct 2020 10:54:47 -0700
Message-Id: <20201005175447.93430-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI] drm/i915/display/ehl: Limit eDP to HBR2
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

UmVjZW50IHVwZGF0ZSBpbiBkb2N1bWVudGF0aW9uIGRlZmVhdHVyZWQgZURQIEhCUjMgZm9yIEVI
TCBhbmQgSlNMLgoKdjI6Ci0gUmVtb3ZlIGRlYWQgY29kZSBpbiBlaGxfZ2V0X2NvbWJvX2J1Zl90
cmFucygpCgp2MzoKLSBSZWJhc2UKCkJTcGVjOiAzMjI0NwpDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0Bp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
IDkgKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgIHwg
MTEgKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBi
NGM1MjAzNDhiM2IuLjJjODVkNDIwMjg0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCkBAIC0xMTQyLDEzICsxMTQyLDggQEAgZWhsX2dldF9jb21ib19idWZfdHJh
bnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCiAJaWYgKGRl
dl9wcml2LT52YnQuZWRwLmxvd192c3dpbmcpIHsKLQkJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2sgPiA1NDAwMDApIHsKLQkJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMyk7Ci0JCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2VkcF9oYnIzOwotCQl9IGVsc2UgewotCQkJKm5fZW50cmllcyA9IEFSUkFZ
X1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyKTsKLQkJCXJldHVy
biBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjI7Ci0JCX0KKwkJKm5fZW50
cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIy
KTsKKwkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMjsKIAl9
CiAKIAlyZXR1cm4gZWhsX2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgY3J0Y19zdGF0
ZSwgbl9lbnRyaWVzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRl
eCA3NDI5NTk3YjU3YmUuLjRhZTc5ZTM5YzcwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwpAQCAtMjc3LDEzICsyNzcsMjAgQEAgc3RhdGljIGludCBpY2xfbWF4X3Nv
dXJjZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOwogCiAJaWYgKGlu
dGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSAmJgotCSAgICAhSVNfRUxLSEFSVExBS0Uo
ZGV2X3ByaXYpICYmCiAJICAgICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQogCQlyZXR1cm4g
NTQwMDAwOwogCiAJcmV0dXJuIDgxMDAwMDsKIH0KIAorc3RhdGljIGludCBlaGxfbWF4X3NvdXJj
ZV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCit7CisJaWYgKGludGVsX2RwX2lzX2Vk
cChpbnRlbF9kcCkpCisJCXJldHVybiA1NDAwMDA7CisKKwlyZXR1cm4gODEwMDAwOworfQorCiBz
dGF0aWMgdm9pZAogaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQogewpAQCAtMzE4LDYgKzMyNSw4IEBAIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJc2l6ZSA9IEFSUkFZX1NJWkUoY25sX3JhdGVz
KTsKIAkJaWYgKElTX0dFTihkZXZfcHJpdiwgMTApKQogCQkJbWF4X3JhdGUgPSBjbmxfbWF4X3Nv
dXJjZV9yYXRlKGludGVsX2RwKTsKKwkJZWxzZSBpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYp
KQorCQkJbWF4X3JhdGUgPSBlaGxfbWF4X3NvdXJjZV9yYXRlKGludGVsX2RwKTsKIAkJZWxzZQog
CQkJbWF4X3JhdGUgPSBpY2xfbWF4X3NvdXJjZV9yYXRlKGludGVsX2RwKTsKIAl9IGVsc2UgaWYg
KElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
