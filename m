Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55FF9A4EF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 03:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027F96E49C;
	Fri, 23 Aug 2019 01:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686FB6E030;
 Fri, 23 Aug 2019 01:35:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 18:35:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="203614202"
Received: from helsinki.fi.intel.com ([10.237.66.174])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 18:34:58 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 04:34:56 +0300
Message-Id: <20190823013501.14256-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823013501.14256-1-gwan-gyeong.mun@intel.com>
References: <20190823013501.14256-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dp: Extend program of VSC Header
 and DB for Colorimetry Format
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgcmVmYWN0b3JzIGFuZCByZW5hbWVzIGEgZnVuY3Rpb24gd2hpY2ggaGFuZGxlZCB2c2Mgc2Rw
IGhlYWRlciBhbmQgZGF0YQpibG9jayBzZXR1cCBmb3Igc3VwcG9ydGluZyBjb2xvcmltZXRyeSBm
b3JtYXQuCkZ1bmN0aW9uIGludGVsX2RwX3NldHVwX3ZzY19zZHAgaGFuZGxlcyB2c2Mgc2RwIGhl
YWRlciBhbmQgZGF0YSBibG9jawpzZXR1cCBmb3IgcGl4ZWwgZW5jb2RpbmcgLyBjb2xvcmltZXRy
eSBmb3JtYXQuCkluIG9yZGVyIHRvIHVzZSBjb2xvcnNwYWNlIGluZm9ybWF0aW9uIG9mIGEgY29u
bmVjdG9yLCBpdCBhZGRzIGFuIGFyZ3VtZW50Cm9mIGRybV9jb25uZWN0b3Jfc3RhdGUgdHlwZS4K
ClNldHVwIFZTQyBoZWFkZXIgYW5kIGRhdGEgYmxvY2sgaW4gZnVuY3Rpb24gaW50ZWxfZHBfc2V0
dXBfdnNjX3NkcCBmb3IKcGl4ZWwgZW5jb2RpbmcgLyBjb2xvcmltZXRyeSBmb3JtYXQgYXMgcGVy
IGRwIDEuNGEgc3BlYywgc2VjdGlvbiAyLjIuNS43LjEsCnRhYmxlIDItMTE5OiBWU0MgU0RQIEhl
YWRlciBCeXRlcywgc2VjdGlvbiAyLjIuNS43LjUsCnRhYmxlIDItMTIwOiBWU0MgU0RQIFBheWxv
YWQgZm9yIERCMTYgdGhyb3VnaCBEQjE4LgoKU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oIHwgIDIgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jICAgICAgfCA2OCArKysrKysrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAgfCAgMyArCiA0IGZpbGVzIGNoYW5nZWQsIDYw
IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IDhlYjJiM2VjMDFlZC4uNGY3ZWEwYTM1OTc2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM0NzUsNyArMzQ3NSw3IEBA
IHN0YXRpYyB2b2lkIGludGVsX2VuYWJsZV9kZGlfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiAKIAlpbnRlbF9lZHBfYmFja2xpZ2h0X29uKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUp
OwogCWludGVsX3Bzcl9lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwotCWludGVsX2RwX3lj
YmNyXzQyMF9lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOworCWludGVsX2RwX3ZzY19lbmFi
bGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwogCWludGVsX2VkcF9kcnJzX2Vu
YWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+aGFzX2F1ZGlv
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCBl
NTdlNjk2OTA1MWQuLjdiZDU5MjQxZmMzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTQ5OSw4ICs0OTksNiBAQCB2b2lkIGludGVsX2RwX2dl
dF9tX24oc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZyk7CiB2b2lkIGludGVsX2RwX3NldF9tX24oY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCSAgICAgIGVudW0gbGlua19tX25fc2V0
IG1fbik7Ci12b2lkIGludGVsX2RwX3ljYmNyXzQyMF9lbmFibGUoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKLQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSk7CiBpbnQgaW50ZWxfZG90Y2xvY2tfY2FsY3VsYXRlKGludCBsaW5rX2ZyZXEsIGNvbnN0
IHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9uKTsKIGJvb2wgYnh0X2ZpbmRfYmVzdF9kcGxsKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJc3RydWN0IGRwbGwgKmJlc3Rf
Y2xvY2spOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDVjNDVh
M2JiMTAyZC4uNTVkNWFiOTcwNjFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCkBAIC00NDA5LDggKzQ0MDksOSBAQCB1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2Nv
dW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB9CiAKIHN0YXRpYyB2b2lkCi1pbnRlbF9w
aXhlbF9lbmNvZGluZ19zZXR1cF92c2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKLQkJCSAg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK2ludGVsX2Rw
X3NldHVwX3ZzY19zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJICAgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkgICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7CiAJ
c3RydWN0IGRwX3NkcCB2c2Nfc2RwID0ge307CkBAIC00NDMxLDEzICs0NDMyLDU1IEBAIGludGVs
X3BpeGVsX2VuY29kaW5nX3NldHVwX3ZzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCSAq
LwogCXZzY19zZHAuc2RwX2hlYWRlci5IQjMgPSAweDEzOwogCi0JLyoKLQkgKiBZQ2JDciA0MjAg
PSAzaCBEQjE2Wzc6NF0gSVRVLVIgQlQuNjAxID0gMGgsIElUVS1SIEJULjcwOSA9IDFoCi0JICog
REIxNlszOjBdIERQIDEuNGEgc3BlYywgVGFibGUgMi0xMjAKLQkgKi8KLQl2c2Nfc2RwLmRiWzE2
XSA9IDB4MyA8PCA0OyAvKiAweDMgPDwgNCAsIFlDYkNyIDQyMCovCi0JLyogUkdCLT5ZQ0JDUiBj
b2xvciBjb252ZXJzaW9uIHVzZXMgdGhlIEJULjcwOSBjb2xvciBzcGFjZS4gKi8KLQl2c2Nfc2Rw
LmRiWzE2XSB8PSAweDE7IC8qIDB4MSwgSVRVLVIgQlQuNzA5ICovCisJLyogRFAgMS40YSBzcGVj
LCBUYWJsZSAyLTEyMCAqLworCXN3aXRjaCAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCkgewor
CWNhc2UgSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQ0NDoKKwkJdnNjX3NkcC5kYlsxNl0gPSAw
eDEgPDwgNDsgLyogWUNiQ3IgNDQ0IDogREIxNls3OjRdID0gMWggKi8KKwkJYnJlYWs7CisJY2Fz
ZSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwOgorCQl2c2Nfc2RwLmRiWzE2XSA9IDB4MyA8
PCA0OyAvKiBZQ2JDciA0MjAgOiBEQjE2Wzc6NF0gPSAzaCAqLworCQlicmVhazsKKwljYXNlIElO
VEVMX09VVFBVVF9GT1JNQVRfUkdCOgorCWRlZmF1bHQ6CisJCS8qIFJHQjogREIxNls3OjRdID0g
MGggKi8KKwkJYnJlYWs7CisJfQorCisJc3dpdGNoIChjb25uX3N0YXRlLT5jb2xvcnNwYWNlKSB7
CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDcwOV9ZQ0M6CisJCXZzY19zZHAuZGJbMTZd
IHw9IDB4MTsKKwkJYnJlYWs7CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9YVllDQ182MDE6
CisJCXZzY19zZHAuZGJbMTZdIHw9IDB4MjsKKwkJYnJlYWs7CisJY2FzZSBEUk1fTU9ERV9DT0xP
UklNRVRSWV9YVllDQ183MDk6CisJCXZzY19zZHAuZGJbMTZdIHw9IDB4MzsKKwkJYnJlYWs7CisJ
Y2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9TWUNDXzYwMToKKwkJdnNjX3NkcC5kYlsxNl0gfD0g
MHg0OworCQlicmVhazsKKwljYXNlIERSTV9NT0RFX0NPTE9SSU1FVFJZX09QWUNDXzYwMToKKwkJ
dnNjX3NkcC5kYlsxNl0gfD0gMHg1OworCQlicmVhazsKKwljYXNlIERSTV9NT0RFX0NPTE9SSU1F
VFJZX0JUMjAyMF9DWUNDOgorCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1JHQjoK
KwkJdnNjX3NkcC5kYlsxNl0gfD0gMHg2OworCQlicmVhazsKKwljYXNlIERSTV9NT0RFX0NPTE9S
SU1FVFJZX0JUMjAyMF9ZQ0M6CisJCXZzY19zZHAuZGJbMTZdIHw9IDB4NzsKKwkJYnJlYWs7CisJ
Y2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX0Q2NToKKwljYXNlIERSTV9NT0RF
X0NPTE9SSU1FVFJZX0RDSV9QM19SR0JfVEhFQVRFUjoKKwkJdnNjX3NkcC5kYlsxNl0gfD0gMHg0
OyAvKiBEQ0ktUDMgKFNNUFRFIFJQIDQzMS0yKSAqLworCQlicmVhazsKKwlkZWZhdWx0OgorCQkv
KiBzUkdCIChJRUMgNjE5NjYtMi0xKSAvIElUVS1SIEJULjYwMTogREIxNlswOjNdID0gMGggKi8K
KworCQkvKiBSR0ItPllDQkNSIGNvbG9yIGNvbnZlcnNpb24gdXNlcyB0aGUgQlQuNzA5IGNvbG9y
IHNwYWNlLiAqLworCQlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQ
VVRfRk9STUFUX1lDQkNSNDIwKQorCQkJdnNjX3NkcC5kYlsxNl0gfD0gMHgxOyAvKiAweDEsIElU
VS1SIEJULjcwOSAqLworCQlicmVhazsKKwl9CiAKIAkvKgogCSAqIEZvciBwaXhlbCBlbmNvZGlu
ZyBmb3JtYXRzIFlDYkNyNDQ0LCBZQ2JDcjQyMiwgWUNiQ3I0MjAsIGFuZCBZIE9ubHksCkBAIC00
NDg5LDEzICs0NTMyLDE0IEBAIGludGVsX3BpeGVsX2VuY29kaW5nX3NldHVwX3ZzYyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLAogCQkJY3J0Y19zdGF0ZSwgRFBfU0RQX1ZTQywgJnZzY19zZHAs
IHNpemVvZih2c2Nfc2RwKSk7CiB9CiAKLXZvaWQgaW50ZWxfZHBfeWNiY3JfNDIwX2VuYWJsZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAotCQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQordm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCisJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCisJCQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3Rh
dGUpCiB7CiAJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZP
Uk1BVF9ZQ0JDUjQyMCkKIAkJcmV0dXJuOwogCi0JaW50ZWxfcGl4ZWxfZW5jb2Rpbmdfc2V0dXBf
dnNjKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9kcF9zZXR1cF92c2Nfc2RwKGludGVs
X2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIH0KIAogc3RhdGljIHU4IGludGVsX2RwX2F1
dG90ZXN0X2xpbmtfdHJhaW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAppbmRleCA2NTdiYmIxZjVlZDAuLjkxYTBlZTYw
NThmZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaApAQCAtMTExLDYg
KzExMSw5IEBAIGJvb2wgaW50ZWxfZHBfcmVhZF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApOwogYm9vbCBpbnRlbF9kcF9nZXRfY29sb3JpbWV0cnlfc3RhdHVzKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOwogaW50IGludGVsX2RwX2xpbmtfcmVxdWlyZWQoaW50IHBpeGVsX2Nsb2Nr
LCBpbnQgYnBwKTsKIGludCBpbnRlbF9kcF9tYXhfZGF0YV9yYXRlKGludCBtYXhfbGlua19jbG9j
aywgaW50IG1heF9sYW5lcyk7Cit2b2lkIGludGVsX2RwX3ZzY19lbmFibGUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKKwkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKKwkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7
CiBib29sIGludGVsX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpOwogCiBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpbnRlbF9kcF91bnVzZWRf
bGFuZV9tYXNrKGludCBsYW5lX2NvdW50KQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
