Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A75A342E6E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78CC4897B5;
	Wed, 12 Jun 2019 18:16:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BA689817
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:16:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:16:08 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2019 11:16:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 11:16:02 -0700
Message-Id: <20190612181602.18438-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
In-Reply-To: <d6411e0c-b530-dce6-dabc-c6d940ff359a@intel.com>
References: <d6411e0c-b530-dce6-dabc-c6d940ff359a@intel.com>
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add Wa_1409120013:icl,ehl
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
c2V0IGV2ZW4gd2hlbiBGQkMgaXMgZGlzYWJsZWQuCgp2MjoKIC0gVGhlIGJzcGVjJ3MgbmFtZSBm
b3IgdGhpcyBiaXQgb24gdGhlc2UgcGxhdGZvcm1zICgiU3BhcmUgMTQiKSBpcwogICBwcmV0dHkg
bWVhbmluZ2xlc3MuICBMZXQncyByZW5hbWUgdGhlIGJpdCBkZWZpbml0aW9uIHRvIHNvbWV0aGlu
ZwogICB0aGF0IG1vcmUgYWNjdXJhdGVseSByZWZsZWN0cyB3aGF0IHRoZSBiaXQgcmVhbGx5IGRv
ZXMuICAoQ2xpbnQpCgpDYzogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggIHwgMiArKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZWRmOWY5MzkzNGExLi41NDY1
NGE1NzhjODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMzE1MCw2ICszMTUwLDggQEAg
ZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogCiAvKiBGcmFtZWJ1ZmZlciBjb21wcmVzc2lvbiBm
b3IgSXJvbmxha2UgKi8KICNkZWZpbmUgSUxLX0RQRkNfQ0JfQkFTRQlfTU1JTygweDQzMjAwKQor
I2RlZmluZSBJTEtfRFBGQ19DSElDS0VOCV9NTUlPKDB4NDMyMjQpCisjZGVmaW5lICAgSUxLX0RQ
RkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMCVJFR19CSVQoMTQpCiAjZGVmaW5lIElMS19EUEZD
X0NPTlRST0wJX01NSU8oMHg0MzIwOCkKICNkZWZpbmUgICBGQkNfQ1RMX0ZBTFNFX0NPTE9SCSgx
IDw8IDEwKQogLyogVGhlIGJpdCAyOC04IGlzIHJlc2VydmVkICovCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2ZiYy5jCmluZGV4IDU2NzlmMmZmZmI3Yy4uZDM2Y2FkYTJjYzdkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9mYmMuYwpAQCAtMzQ0LDYgKzM0NCwxMCBAQCBzdGF0aWMgdm9pZCBnZW43X2ZiY19hY3Rp
dmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQkgICBIU1dfRkJDUV9E
SVMpOwogCX0KIAorCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwkJLyogV2FfMTQwOTEyMDAx
MzppY2wsZWhsICovCisJCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ0hJQ0tFTiwgSUxLX0RQRkNfQ0hJ
Q0tFTl9DT01QX0RVTU1ZX1BJWEVMKTsKKwogCUk5MTVfV1JJVEUoSUxLX0RQRkNfQ09OVFJPTCwg
ZHBmY19jdGwgfCBEUEZDX0NUTF9FTik7CiAKIAlpbnRlbF9mYmNfcmVjb21wcmVzcyhkZXZfcHJp
dik7Ci0tIAoyLjE0LjUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
