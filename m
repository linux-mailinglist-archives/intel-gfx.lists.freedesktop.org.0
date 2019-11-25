Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE801096F5
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 00:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786D989D7C;
	Mon, 25 Nov 2019 23:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BE289D7C
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 23:38:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 15:38:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="260538799"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.225])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Nov 2019 15:38:37 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 15:38:26 -0800
Message-Id: <20191125233826.161899-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Force the state compute phase
 once to enable PSR
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
Cc: s.zharkoff@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVjZW50IGltcHJvdmVtZW50cyBpbiB0aGUgc3RhdGUgdHJhY2tpbmcgaW4gaTkxNSBjYXVzZWQg
UFNSIHRvIG5vdCBiZQplbmFibGVkIHdoZW4gcmV1c2luZyBmaXJtd2FyZS9CSU9TIG1vZGVzZXQs
IHRoaXMgaXMgZHVlIHRvIGFsbCBpbml0aWFsCmNvbW1pdHMgcmV0dXJuaW5nIGVhbGllciBpbiBp
bnRlbF9hdG9taWNfY2hlY2soKSBhcyBuZWVkc19tb2Rlc2V0KCkKaXMgYWx3YXlzIGZhbHNlLgoK
VG8gZml4IHRoYXQgaGVyZSBmb3JjaW5nIHRoZSBzdGF0ZSBjb21wdXRlIHBoYXNlIGluIENSVEMg
dGhhdCBpcwpkcml2aW5nIHRoZSBlRFAgdGhhdCBzdXBwb3J0cyBQU1Igb25jZS4gRW5hYmxlIG9y
IGRpc2FibGUgUFNSIGRvIG5vdApyZXF1aXJlIGEgZnVsbG1vZGVzZXQsIHNvIHVzZXIgd2lsbCBz
dGlsbCBleHBlcmllbmNlIGdsaXRjaCBmcmVlIGJvb3QKcHJvY2VzcyBwbHVzIHRoZSBwb3dlciBz
YXZpbmdzIHRoYXQgUFNSIGJyaW5ncy4KCkl0IHdhcyB0cmllZCB0byBzZXQgbW9kZV9jaGFuZ2Vk
IGluIGludGVsX2luaXRpYWxfY29tbWl0KCkgYnV0IGF0CnRoaXMgcG9pbnQgdGhlIGNvbm5lY3Rv
cnMgYXJlIG5vdCByZWdpc3RlcmVkIGNhdXNpbmcgYSBjcmFzaCB3aGVuCmNvbXB1dGluZyBlbmNv
ZGVyIHN0YXRlLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTExMjI1MwpSZXBvcnRlZC1ieTogPHMuemhhcmtvZmZAZ21haWwuY29tPgpDYzog
R3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIHwgIDYgKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICB8IDMyICsrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCAgICB8ICA1
ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAgMSAr
CiA0IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwppbmRleCBmZDAwMjZmYzM2MTguLjZiNTc0ODhkOTIz
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCkBAIC0z
Nyw2ICszNyw3IEBACiAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiCiAjaW5jbHVkZSAiaW50ZWxf
ZGlzcGxheV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX2hkY3AuaCIKKyNpbmNsdWRlICJpbnRl
bF9wc3IuaCIKICNpbmNsdWRlICJpbnRlbF9zcHJpdGUuaCIKIAogLyoqCkBAIC0xMjcsNiArMTI4
LDcgQEAgaW50IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubiwKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUg
Km9sZF9jb25uX3N0YXRlID0KIAkJdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUob2xk
X3N0YXRlKTsKIAlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJaW50IHJldDsK
IAogCWludGVsX2hkY3BfYXRvbWljX2NoZWNrKGNvbm4sIG9sZF9zdGF0ZSwgbmV3X3N0YXRlKTsK
IApAQCAtMTQ5LDYgKzE1MSwxMCBAQCBpbnQgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWlj
X2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAogCQkJb2xkX2Nvbm5fc3RhdGUtPmJh
c2UuaGRyX291dHB1dF9tZXRhZGF0YSkpCiAJCWNydGNfc3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRy
dWU7CiAKKwlyZXQgPSBpbnRlbF9wc3JfYXRvbWljX2NoZWNrKGNvbm4sIHN0YXRlKTsKKwlpZiAo
cmV0KQorCQlyZXR1cm4gcmV0OworCiAJcmV0dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGMxZDEzMzM2MmI3Ni4uYTFhY2FlOGQ3MmY3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTE0NDQsMyArMTQ0
NCwzNSBAQCBib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiAKIAlyZXR1cm4gcmV0OwogfQorCitpbnQKK2ludGVsX3Bzcl9hdG9taWNfY2hlY2soc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm4sCisJCSAgICAgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAq
c3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
b25uLT5kZXYpOworCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlOworCXN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0OworCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmludGVsX2Nvbm47CisJc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCisJ
aWYgKCFDQU5fUFNSKGRldl9wcml2KSkKKwkJcmV0dXJuIDA7CisKKwljb25uX3N0YXRlID0gZHJt
X2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwgY29ubik7CisJaWYgKCFjb25u
X3N0YXRlLT5jcnRjKQorCQlyZXR1cm4gMDsKKworCWludGVsX2Nvbm4gPSB0b19pbnRlbF9jb25u
ZWN0b3IoY29ubik7CisJZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoJmludGVsX2Nvbm4tPmVu
Y29kZXItPmJhc2UpOworCWlmIChkZXZfcHJpdi0+cHNyLmRwICE9ICZkaWdfcG9ydC0+ZHApCisJ
CXJldHVybiAwOworCisJaWYgKGRldl9wcml2LT5wc3IuaW5pdGlhbGx5X3Byb2JlZCkKKwkJcmV0
dXJuIDA7CisKKwljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3Rh
dGUsIGNvbm5fc3RhdGUtPmNydGMpOworCWNydGNfc3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRydWU7
CisJZGV2X3ByaXYtPnBzci5pbml0aWFsbHlfcHJvYmVkID0gdHJ1ZTsKKworCXJldHVybiAwOwor
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgKaW5kZXggNDZlNGRlOGI4
Y2Q1Li5iMzUzNWU1NzUyYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuaApAQCAtNiw2ICs2LDkgQEAKICNpZm5kZWYgX19JTlRFTF9QU1JfSF9fCiAjZGVmaW5lIF9f
SU5URUxfUFNSX0hfXwogCisjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KKyNpbmNsdWRlIDxk
cm0vZHJtX2Nvbm5lY3Rvci5oPgorCiAjaW5jbHVkZSAiaW50ZWxfZnJvbnRidWZmZXIuaCIKIAog
c3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CkBAIC0zNSw1ICszOCw3IEBAIHZvaWQgaW50ZWxfcHNy
X3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOwogaW50IGludGVsX3Bzcl93
YWl0X2Zvcl9pZGxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZSwKIAkJCSAgICB1MzIgKm91dF92YWx1ZSk7CiBib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApOworaW50IGludGVsX3Bzcl9hdG9taWNfY2hlY2soc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm4sCisJCQkgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3Rh
dGUpOwogCiAjZW5kaWYgLyogX19JTlRFTF9QU1JfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAppbmRleCBmZGFlNWE5MTliYzguLmQ4MzQ5MjRiYTdjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCkBAIC01MDgsNiArNTA4LDcgQEAgc3RydWN0IGk5MTVfcHNyIHsKIAlib29sIGRjM2NvX2Vu
YWJsZWQ7CiAJdTMyIGRjM2NvX2V4aXRfZGVsYXk7CiAJc3RydWN0IGRlbGF5ZWRfd29yayBpZGxl
X3dvcms7CisJYm9vbCBpbml0aWFsbHlfcHJvYmVkOwogfTsKIAogI2RlZmluZSBRVUlSS19MVkRT
X1NTQ19ESVNBQkxFICgxPDwxKQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
