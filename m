Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11298AC9E1
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 01:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C929989D57;
	Sat,  7 Sep 2019 23:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31E089D4A;
 Sat,  7 Sep 2019 23:22:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 16:22:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="177981197"
Received: from helsinki.fi.intel.com ([10.237.66.149])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 16:22:31 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Sep 2019 02:22:20 +0300
Message-Id: <20190907232226.9064-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907232226.9064-1-gwan-gyeong.mun@intel.com>
References: <20190907232226.9064-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/7] drm/i915/dp: Extend program of VSC
 Header and DB for Colorimetry Format
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
Cc: imirkin@alum.mit.edu, dri-devel@lists.freedesktop.org
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
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCB8ICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyAgICAgIHwgNjggKysrKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuaCAgICAgIHwgIDMgKwogNCBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRp
b25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCAxZmUwYmYwMWU1ODAuLjQ5YzM1YWY1ODNmOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNjEwLDcgKzM2MTAsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9lbmFibGVfZGRpX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CiAJaW50ZWxfZWRwX2JhY2tsaWdodF9vbihjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIAlpbnRl
bF9wc3JfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKLQlpbnRlbF9kcF95Y2Jjcl80MjBf
ZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9kcF92c2NfZW5hYmxlKGludGVs
X2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKIAlpbnRlbF9lZHBfZHJyc19lbmFibGUoaW50
ZWxfZHAsIGNydGNfc3RhdGUpOwogCiAJaWYgKGNydGNfc3RhdGUtPmhhc19hdWRpbykKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5kZXggMzNmZDUyM2M0
NjIyLi44ZGU2M2JlNzU2MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oCkBAIC01MjYsOCArNTI2LDYgQEAgdm9pZCBpbnRlbF9kcF9nZXRfbV9uKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
cGlwZV9jb25maWcpOwogdm9pZCBpbnRlbF9kcF9zZXRfbV9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkgICAgICBlbnVtIGxpbmtfbV9uX3NldCBtX24pOwot
dm9pZCBpbnRlbF9kcF95Y2Jjcl80MjBfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
Ci0JCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwog
aW50IGludGVsX2RvdGNsb2NrX2NhbGN1bGF0ZShpbnQgbGlua19mcmVxLCBjb25zdCBzdHJ1Y3Qg
aW50ZWxfbGlua19tX24gKm1fbik7CiBib29sIGJ4dF9maW5kX2Jlc3RfZHBsbChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCXN0cnVjdCBkcGxsICpiZXN0X2Nsb2NrKTsK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA1NjczZWQ3NWU0Mjgu
Ljc3NmJlM2UxNmFjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpA
QCAtNDQ0Niw4ICs0NDQ2LDkgQEAgdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogfQogCiBzdGF0aWMgdm9pZAotaW50ZWxfcGl4ZWxfZW5j
b2Rpbmdfc2V0dXBfdnNjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkgICAgICAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCitpbnRlbF9kcF9zZXR1cF92
c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCSAgICAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwogCXN0cnVjdCBk
cF9zZHAgdnNjX3NkcCA9IHt9OwpAQCAtNDQ2OCwxMyArNDQ2OSw1NSBAQCBpbnRlbF9waXhlbF9l
bmNvZGluZ19zZXR1cF92c2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkgKi8KIAl2c2Nf
c2RwLnNkcF9oZWFkZXIuSEIzID0gMHgxMzsKIAotCS8qCi0JICogWUNiQ3IgNDIwID0gM2ggREIx
Nls3OjRdIElUVS1SIEJULjYwMSA9IDBoLCBJVFUtUiBCVC43MDkgPSAxaAotCSAqIERCMTZbMzow
XSBEUCAxLjRhIHNwZWMsIFRhYmxlIDItMTIwCi0JICovCi0JdnNjX3NkcC5kYlsxNl0gPSAweDMg
PDwgNDsgLyogMHgzIDw8IDQgLCBZQ2JDciA0MjAqLwotCS8qIFJHQi0+WUNCQ1IgY29sb3IgY29u
dmVyc2lvbiB1c2VzIHRoZSBCVC43MDkgY29sb3Igc3BhY2UuICovCi0JdnNjX3NkcC5kYlsxNl0g
fD0gMHgxOyAvKiAweDEsIElUVS1SIEJULjcwOSAqLworCS8qIERQIDEuNGEgc3BlYywgVGFibGUg
Mi0xMjAgKi8KKwlzd2l0Y2ggKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQpIHsKKwljYXNlIElO
VEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0NDQ6CisJCXZzY19zZHAuZGJbMTZdID0gMHgxIDw8IDQ7
IC8qIFlDYkNyIDQ0NCA6IERCMTZbNzo0XSA9IDFoICovCisJCWJyZWFrOworCWNhc2UgSU5URUxf
T1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMDoKKwkJdnNjX3NkcC5kYlsxNl0gPSAweDMgPDwgNDsgLyog
WUNiQ3IgNDIwIDogREIxNls3OjRdID0gM2ggKi8KKwkJYnJlYWs7CisJY2FzZSBJTlRFTF9PVVRQ
VVRfRk9STUFUX1JHQjoKKwlkZWZhdWx0OgorCQkvKiBSR0I6IERCMTZbNzo0XSA9IDBoICovCisJ
CWJyZWFrOworCX0KKworCXN3aXRjaCAoY29ubl9zdGF0ZS0+Y29sb3JzcGFjZSkgeworCWNhc2Ug
RFJNX01PREVfQ09MT1JJTUVUUllfQlQ3MDlfWUNDOgorCQl2c2Nfc2RwLmRiWzE2XSB8PSAweDE7
CisJCWJyZWFrOworCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfWFZZQ0NfNjAxOgorCQl2c2Nf
c2RwLmRiWzE2XSB8PSAweDI7CisJCWJyZWFrOworCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllf
WFZZQ0NfNzA5OgorCQl2c2Nfc2RwLmRiWzE2XSB8PSAweDM7CisJCWJyZWFrOworCWNhc2UgRFJN
X01PREVfQ09MT1JJTUVUUllfU1lDQ182MDE6CisJCXZzY19zZHAuZGJbMTZdIHw9IDB4NDsKKwkJ
YnJlYWs7CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9PUFlDQ182MDE6CisJCXZzY19zZHAu
ZGJbMTZdIHw9IDB4NTsKKwkJYnJlYWs7CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIw
MjBfQ1lDQzoKKwljYXNlIERSTV9NT0RFX0NPTE9SSU1FVFJZX0JUMjAyMF9SR0I6CisJCXZzY19z
ZHAuZGJbMTZdIHw9IDB4NjsKKwkJYnJlYWs7CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9C
VDIwMjBfWUNDOgorCQl2c2Nfc2RwLmRiWzE2XSB8PSAweDc7CisJCWJyZWFrOworCWNhc2UgRFJN
X01PREVfQ09MT1JJTUVUUllfRENJX1AzX1JHQl9ENjU6CisJY2FzZSBEUk1fTU9ERV9DT0xPUklN
RVRSWV9EQ0lfUDNfUkdCX1RIRUFURVI6CisJCXZzY19zZHAuZGJbMTZdIHw9IDB4NDsgLyogRENJ
LVAzIChTTVBURSBSUCA0MzEtMikgKi8KKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJLyogc1JHQiAo
SUVDIDYxOTY2LTItMSkgLyBJVFUtUiBCVC42MDE6IERCMTZbMDozXSA9IDBoICovCisKKwkJLyog
UkdCLT5ZQ0JDUiBjb2xvciBjb252ZXJzaW9uIHVzZXMgdGhlIEJULjcwOSBjb2xvciBzcGFjZS4g
Ki8KKwkJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1B
VF9ZQ0JDUjQyMCkKKwkJCXZzY19zZHAuZGJbMTZdIHw9IDB4MTsgLyogMHgxLCBJVFUtUiBCVC43
MDkgKi8KKwkJYnJlYWs7CisJfQogCiAJLyoKIAkgKiBGb3IgcGl4ZWwgZW5jb2RpbmcgZm9ybWF0
cyBZQ2JDcjQ0NCwgWUNiQ3I0MjIsIFlDYkNyNDIwLCBhbmQgWSBPbmx5LApAQCAtNDUyNiwxMyAr
NDU2OSwxNCBAQCBpbnRlbF9waXhlbF9lbmNvZGluZ19zZXR1cF92c2Moc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKIAkJCWNydGNfc3RhdGUsIERQX1NEUF9WU0MsICZ2c2Nfc2RwLCBzaXplb2Yo
dnNjX3NkcCkpOwogfQogCi12b2lkIGludGVsX2RwX3ljYmNyXzQyMF9lbmFibGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwKLQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3ZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAorCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAorCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQogewog
CWlmIChjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBVVF9GT1JNQVRfWUNC
Q1I0MjApCiAJCXJldHVybjsKIAotCWludGVsX3BpeGVsX2VuY29kaW5nX3NldHVwX3ZzYyhpbnRl
bF9kcCwgY3J0Y19zdGF0ZSk7CisJaW50ZWxfZHBfc2V0dXBfdnNjX3NkcChpbnRlbF9kcCwgY3J0
Y19zdGF0ZSwgY29ubl9zdGF0ZSk7CiB9CiAKIHN0YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9s
aW5rX3RyYWluaW5nKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmgKaW5kZXggZTAxZDFmODk0MDlkLi5iZTEzY2IzOTVlZjggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKQEAgLTExMiw2ICsxMTIsOSBA
QCBib29sIGludGVsX2RwX3JlYWRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIGJv
b2wgaW50ZWxfZHBfZ2V0X2NvbG9yaW1ldHJ5X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKTsKIGludCBpbnRlbF9kcF9saW5rX3JlcXVpcmVkKGludCBwaXhlbF9jbG9jaywgaW50IGJw
cCk7CiBpbnQgaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShpbnQgbWF4X2xpbmtfY2xvY2ssIGludCBt
YXhfbGFuZXMpOwordm9pZCBpbnRlbF9kcF92c2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCisJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJ
CQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOwogYm9vbCBp
bnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KTsKIAogc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFz
ayhpbnQgbGFuZV9jb3VudCkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
