Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA643BF8A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 00:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB91890D5;
	Mon, 10 Jun 2019 22:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F38890D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 22:34:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 15:27:39 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga001.jf.intel.com with ESMTP; 10 Jun 2019 15:27:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 15:27:26 -0700
Message-Id: <20190610222726.18808-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_1409120013:icl,ehl
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

VGhpcyBjaGlja2VuIGJpdCBzaG91bGQgYmUgc2V0IGJlZm9yZSBlbmFibGluZyBGQkMgdG8gYXZv
aWQgc2NyZWVuCmNvcnJ1cHRpb24gd2hlbiB0aGUgcGxhbmUgc2l6ZSBoYXMgb2RkIHZlcnRpY2Fs
IGFuZCBob3Jpem9udGFsCmRpbWVuc2lvbnMuICBJdCBpcyBzYWZlIHRvIGxlYXZlIHRoZSBiaXQg
c2V0IGV2ZW4gd2hlbiBGQkMgaXMgZGlzYWJsZWQuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMgfCA0ICsr
KysKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggN2EyNjc2NmJhODRkLi4yYWYwNDU2ODQ0OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtMzE1MCw2ICszMTUwLDggQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogCiAv
KiBGcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBmb3IgSXJvbmxha2UgKi8KICNkZWZpbmUgSUxLX0RQ
RkNfQ0JfQkFTRQlfTU1JTygweDQzMjAwKQorI2RlZmluZSBJTEtfRFBGQ19DSElDS0VOCV9NTUlP
KDB4NDMyMjQpCisjZGVmaW5lICAgSUxLX0RQRkNfQ0hJQ0tFTl9TUEFSRTE0CVJFR19CSVQoMTQp
CiAjZGVmaW5lIElMS19EUEZDX0NPTlRST0wJX01NSU8oMHg0MzIwOCkKICNkZWZpbmUgICBGQkNf
Q1RMX0ZBTFNFX0NPTE9SCSgxIDw8IDEwKQogLyogVGhlIGJpdCAyOC04IGlzIHJlc2VydmVkICov
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2ZiYy5jCmluZGV4IDU2NzlmMmZmZmI3Yy4uODc1YWQ4M2MzZDMy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYwpAQCAtMzQ0LDYgKzM0NCwxMCBAQCBzdGF0aWMg
dm9pZCBnZW43X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJCQkgICBIU1dfRkJDUV9ESVMpOwogCX0KIAorCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkK
KwkJLyogV2FfMTQwOTEyMDAxMzppY2wsZWhsICovCisJCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJ
Q0tFTiwgSUxLX0RQRkNfQ0hJQ0tFTl9TUEFSRTE0KTsKKwogCUk5MTVfV1JJVEUoSUxLX0RQRkNf
Q09OVFJPTCwgZHBmY19jdGwgfCBEUEZDX0NUTF9FTik7CiAKIAlpbnRlbF9mYmNfcmVjb21wcmVz
cyhkZXZfcHJpdik7Ci0tIAoyLjE0LjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
