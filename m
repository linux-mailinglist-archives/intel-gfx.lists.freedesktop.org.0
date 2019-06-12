Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F15C42EC6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2C58981B;
	Wed, 12 Jun 2019 18:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5DAA8981B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 18:36:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 11:36:38 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by orsmga003.jf.intel.com with ESMTP; 12 Jun 2019 11:36:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 11:36:31 -0700
Message-Id: <20190612183631.30540-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.14.5
In-Reply-To: <20190612182745.GO13184@mdroper-desk.amr.corp.intel.com>
References: <20190612182745.GO13184@mdroper-desk.amr.corp.intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915: Add Wa_1409120013:icl,ehl
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
ZXMuICAoQ2xpbnQpCgp2MzoKIC0gVGhlIGNoaWNrZW4gcmVnaXN0ZXIgd2FzIGFscmVhZHkgZGVm
aW5lZCAoYWxvbmcgd2l0aCBhIGZldyBvdGhlcgogICBnZW45LXNwZWNpZmljIGJpdHMpIGZhcnRo
ZXIgZG93bi4gIEp1c3QgYWRkIHRoZSBuZXcgYml0IGRlZmluaXRpb24KICAgdGhlcmUuICAoQ2xp
bnQpCgpDYzogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9mYmMuYyB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBlZGY5ZjkzOTM0YTEuLjM2OGVlNzE3NTgwYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0zMTYzLDYgKzMxNjMsNyBAQCBlbnVtIGk5MTVf
cG93ZXJfd2VsbF9pZCB7CiAjZGVmaW5lIElMS19EUEZDX0ZFTkNFX1lPRkYJX01NSU8oMHg0MzIx
OCkKICNkZWZpbmUgSUxLX0RQRkNfQ0hJQ0tFTglfTU1JTygweDQzMjI0KQogI2RlZmluZSAgIElM
S19EUEZDX0RJU0FCTEVfRFVNTVkwICgxIDw8IDgpCisjZGVmaW5lICAgSUxLX0RQRkNfQ0hJQ0tF
Tl9DT01QX0RVTU1ZX1BJWEVMCSgxIDw8IDE0KQogI2RlZmluZSAgIElMS19EUEZDX05VS0VfT05f
QU5ZX01PRElGSUNBVElPTgkoMSA8PCAyMykKICNkZWZpbmUgSUxLX0ZCQ19SVF9CQVNFCQlfTU1J
TygweDIxMjgpCiAjZGVmaW5lICAgSUxLX0ZCQ19SVF9WQUxJRAkoMSA8PCAwKQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9mYmMuYwppbmRleCA1Njc5ZjJmZmZiN2MuLmQzNmNhZGEyY2M3ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZmJjLmMKQEAgLTM0NCw2ICszNDQsMTAgQEAgc3RhdGljIHZvaWQgZ2VuN19m
YmNfYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJICAgSFNX
X0ZCQ1FfRElTKTsKIAl9CiAKKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCisJCS8qIFdhXzE0
MDkxMjAwMTM6aWNsLGVobCAqLworCQlJOTE1X1dSSVRFKElMS19EUEZDX0NISUNLRU4sIElMS19E
UEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7CisKIAlJOTE1X1dSSVRFKElMS19EUEZDX0NP
TlRST0wsIGRwZmNfY3RsIHwgRFBGQ19DVExfRU4pOwogCiAJaW50ZWxfZmJjX3JlY29tcHJlc3Mo
ZGV2X3ByaXYpOwotLSAKMi4xNC41CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
