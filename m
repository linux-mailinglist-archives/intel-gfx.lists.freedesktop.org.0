Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCC528720
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 21:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915CC6E062;
	Thu, 23 May 2019 19:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE7E6E062
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 19:19:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 12:19:09 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com ([10.7.196.65])
 by orsmga002.jf.intel.com with ESMTP; 23 May 2019 12:19:09 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 12:19:35 -0700
Message-Id: <20190523191935.19857-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: We don't need display's suspend/resume
 operations when !HAS_DISPLAY
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VzcGVuZCByZXN1bWUgaXMgYnJva2VuIGlmIHdlIHRyeSB0byBlbmFibGUvZGlzYWJsZSBkYzkg
b24KY2FzZXMgd2l0aCBkaXNhYmxlZCBkaXNwbGF5cy4KCnYyOiBNYWtlIGNoZWNrcGF0Y2ggaGFw
cHk6Ci06Nzg6IFdBUk5JTkc6QlJBQ0VTOiBicmFjZXMge30gYXJlIG5vdCBuZWNlc3NhcnkgZm9y
IHNpbmdsZSBzdGF0ZW1lbnQgYmxvY2tzCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAx
MDQgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3MSBp
bnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRl
eCA4M2QyZWI5ZTc0Y2IuLjAxMDBjN2U5NDBjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBA
IC0yMTE4LDYgKzIxMTgsMTUgQEAgZ2V0X3N1c3BlbmRfbW9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGJvb2wgaGliZXJuYXRlKQogCXJldHVybiBJOTE1X0RSTV9TVVNQRU5E
X01FTTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZGlzcGxheV9zdXNwZW5kX2xhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVkoZGV2X3By
aXYpKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSB8fCBJU19H
RU45X0xQKGRldl9wcml2KSkKKwkJYnh0X2VuYWJsZV9kYzkoZGV2X3ByaXYpOworfQorCiBzdGF0
aWMgaW50IGk5MTVfZHJtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBib29s
IGhpYmVybmF0aW9uKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZGV2KTsKQEAgLTIxMzMsMTAgKzIxNDIsMTAgQEAgc3RhdGljIGludCBpOTE1X2RybV9z
dXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikKIAlp
bnRlbF9wb3dlcl9kb21haW5zX3N1c3BlbmQoZGV2X3ByaXYsCiAJCQkJICAgIGdldF9zdXNwZW5k
X21vZGUoZGV2X3ByaXYsIGhpYmVybmF0aW9uKSk7CiAKKwlpbnRlbF9kaXNwbGF5X3N1c3BlbmRf
bGF0ZShkZXZfcHJpdik7CisKIAlyZXQgPSAwOwotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKQotCQlieHRfZW5hYmxlX2RjOShkZXZfcHJpdik7
Ci0JZWxzZSBpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2
KSkKKwlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkK
IAkJaHN3X2VuYWJsZV9wYzgoZGV2X3ByaXYpOwogCWVsc2UgaWYgKElTX1ZBTExFWVZJRVcoZGV2
X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQlyZXQgPSB2bHZfc3VzcGVuZF9j
b21wbGV0ZShkZXZfcHJpdik7CkBAIC0yMjY2LDYgKzIyNzUsMTcgQEAgc3RhdGljIGludCBpOTE1
X2RybV9yZXN1bWUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlyZXR1cm4gMDsKIH0KIAorc3Rh
dGljIHZvaWQgaW50ZWxfZGlzcGxheV9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47
CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSB8fCBJU19HRU45X0xQKGRldl9wcml2
KSkgeworCQlnZW45X3Nhbml0aXplX2RjX3N0YXRlKGRldl9wcml2KTsKKwkJYnh0X2Rpc2FibGVf
ZGM5KGRldl9wcml2KTsKKwl9Cit9CisKIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lX2Vhcmx5
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShkZXYpOwpAQCAtMjMyOCwxMiArMjM0OCwxMCBAQCBzdGF0aWMgaW50
IGk5MTVfZHJtX3Jlc3VtZV9lYXJseShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCiAJaTkxNV9j
aGVja19hbmRfY2xlYXJfZmF1bHRzKGRldl9wcml2KTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7Ci0JCWdlbjlfc2FuaXRpemVfZGNf
c3RhdGUoZGV2X3ByaXYpOwotCQlieHRfZGlzYWJsZV9kYzkoZGV2X3ByaXYpOwotCX0gZWxzZSBp
ZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgeworCWlu
dGVsX2Rpc3BsYXlfcmVzdW1lX2Vhcmx5KGRldl9wcml2KTsKKworCWlmIChJU19IQVNXRUxMKGRl
dl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQogCQloc3dfZGlzYWJsZV9wYzgoZGV2
X3ByaXYpOwotCX0KIAogCWludGVsX3VuY29yZV9zYW5pdGl6ZShkZXZfcHJpdik7CiAKQEAgLTI4
NjksNiArMjg4NywyMCBAQCBzdGF0aWMgaW50IHZsdl9yZXN1bWVfcHJlcGFyZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIHZvaWQg
aW50ZWxfcnVudGltZV9kaXNwbGF5X3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKKwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQlpY2xfZGlzcGxheV9jb3JlX3VuaW5p
dChkZXZfcHJpdik7CisJCWJ4dF9lbmFibGVfZGM5KGRldl9wcml2KTsKKwl9IGVsc2UgaWYgKElT
X0dFTjlfTFAoZGV2X3ByaXYpKSB7CisJCWJ4dF9kaXNwbGF5X2NvcmVfdW5pbml0KGRldl9wcml2
KTsKKwkJYnh0X2VuYWJsZV9kYzkoZGV2X3ByaXYpOworCX0KK30KKwogc3RhdGljIGludCBpbnRl
bF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqa2RldikKIHsKIAlzdHJ1Y3QgcGNpX2Rl
diAqcGRldiA9IHRvX3BjaV9kZXYoa2Rldik7CkBAIC0yODk4LDE0ICsyOTMwLDEwIEBAIHN0YXRp
YyBpbnQgaW50ZWxfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmtkZXYpCiAKIAlpbnRl
bF91bmNvcmVfc3VzcGVuZCgmZGV2X3ByaXYtPnVuY29yZSk7CiAKKwlpbnRlbF9ydW50aW1lX2Rp
c3BsYXlfc3VzcGVuZChkZXZfcHJpdik7CisKIAlyZXQgPSAwOwotCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKSB7Ci0JCWljbF9kaXNwbGF5X2NvcmVfdW5pbml0KGRldl9wcml2KTsKLQkJ
Ynh0X2VuYWJsZV9kYzkoZGV2X3ByaXYpOwotCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJp
dikpIHsKLQkJYnh0X2Rpc3BsYXlfY29yZV91bmluaXQoZGV2X3ByaXYpOwotCQlieHRfZW5hYmxl
X2RjOShkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19C
Uk9BRFdFTEwoZGV2X3ByaXYpKSB7CisJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpIHx8IElTX0JS
T0FEV0VMTChkZXZfcHJpdikpIHsKIAkJaHN3X2VuYWJsZV9wYzgoZGV2X3ByaXYpOwogCX0gZWxz
ZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikp
IHsKIAkJcmV0ID0gdmx2X3N1c3BlbmRfY29tcGxldGUoZGV2X3ByaXYpOwpAQCAtMjk2Nyw2ICsy
OTk1LDMxIEBAIHN0YXRpYyBpbnQgaW50ZWxfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2Ug
KmtkZXYpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX3J1bnRpbWVfZGlzcGxh
eV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMSkgeworCQlieHRfZGlzYWJsZV9kYzkoZGV2X3ByaXYpOworCQlpY2xfZGlzcGxheV9j
b3JlX2luaXQoZGV2X3ByaXYsIHRydWUpOworCQlpZiAoZGV2X3ByaXYtPmNzci5kbWNfcGF5bG9h
ZCkgeworCQkJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYKKwkJCSAgICBEQ19T
VEFURV9FTl9VUFRPX0RDNikKKwkJCQlza2xfZW5hYmxlX2RjNihkZXZfcHJpdik7CisJCQllbHNl
IGlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmCisJCQkJIERDX1NUQVRFX0VOX1VQ
VE9fREM1KQorCQkJCWdlbjlfZW5hYmxlX2RjNShkZXZfcHJpdik7CisJCX0KKwl9IGVsc2UgaWYg
KElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CisJCWJ4dF9kaXNhYmxlX2RjOShkZXZfcHJpdik7CisJ
CWJ4dF9kaXNwbGF5X2NvcmVfaW5pdChkZXZfcHJpdiwgdHJ1ZSk7CisJCWlmIChkZXZfcHJpdi0+
Y3NyLmRtY19wYXlsb2FkICYmCisJCSAgICAoZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sg
JiBEQ19TVEFURV9FTl9VUFRPX0RDNSkpCisJCQlnZW45X2VuYWJsZV9kYzUoZGV2X3ByaXYpOwor
CX0KK30KKwogc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpr
ZGV2KQogewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2RldihrZGV2KTsKQEAgLTI5
ODcsMjQgKzMwNDAsOSBAQCBzdGF0aWMgaW50IGludGVsX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBk
ZXZpY2UgKmtkZXYpCiAJaWYgKGludGVsX3VuY29yZV91bmNsYWltZWRfbW1pbygmZGV2X3ByaXYt
PnVuY29yZSkpCiAJCURSTV9ERUJVR19EUklWRVIoIlVuY2xhaW1lZCBhY2Nlc3MgZHVyaW5nIHN1
c3BlbmQsIGJpb3M/XG4iKTsKIAotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Ci0J
CWJ4dF9kaXNhYmxlX2RjOShkZXZfcHJpdik7Ci0JCWljbF9kaXNwbGF5X2NvcmVfaW5pdChkZXZf
cHJpdiwgdHJ1ZSk7Ci0JCWlmIChkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2FkKSB7Ci0JCQlpZiAo
ZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sgJgotCQkJICAgIERDX1NUQVRFX0VOX1VQVE9f
REM2KQotCQkJCXNrbF9lbmFibGVfZGM2KGRldl9wcml2KTsKLQkJCWVsc2UgaWYgKGRldl9wcml2
LT5jc3IuYWxsb3dlZF9kY19tYXNrICYKLQkJCQkgRENfU1RBVEVfRU5fVVBUT19EQzUpCi0JCQkJ
Z2VuOV9lbmFibGVfZGM1KGRldl9wcml2KTsKLQkJfQotCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChk
ZXZfcHJpdikpIHsKLQkJYnh0X2Rpc2FibGVfZGM5KGRldl9wcml2KTsKLQkJYnh0X2Rpc3BsYXlf
Y29yZV9pbml0KGRldl9wcml2LCB0cnVlKTsKLQkJaWYgKGRldl9wcml2LT5jc3IuZG1jX3BheWxv
YWQgJiYKLQkJICAgIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VO
X1VQVE9fREM1KSkKLQkJCWdlbjlfZW5hYmxlX2RjNShkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJ
U19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7CisJaW50ZWxf
cnVudGltZV9kaXNwbGF5X3Jlc3VtZShkZXZfcHJpdik7CisKKwlpZiAoSVNfSEFTV0VMTChkZXZf
cHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewogCQloc3dfZGlzYWJsZV9wYzgoZGV2
X3ByaXYpOwogCX0gZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZ
VklFVyhkZXZfcHJpdikpIHsKIAkJcmV0ID0gdmx2X3Jlc3VtZV9wcmVwYXJlKGRldl9wcml2LCB0
cnVlKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
