Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB4422B02
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 06:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891288915E;
	Mon, 20 May 2019 04:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229F48915E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 04:56:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 21:56:27 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com ([10.7.196.65])
 by orsmga005.jf.intel.com with ESMTP; 19 May 2019 21:56:27 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 19 May 2019 21:56:46 -0700
Message-Id: <20190520045646.27055-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
b24KY2FzZXMgd2l0aCBkaXNhYmxlZCBkaXNwbGF5cy4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgfCAxMDMgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA3MSBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YwppbmRleCAyYzdhNDMxOGQxM2MuLjkwNjkzMzI3MDY1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCkBAIC0yMTE3LDYgKzIxMTcsMTUgQEAgZ2V0X3N1c3BlbmRfbW9kZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGJvb2wgaGliZXJuYXRlKQogCXJldHVybiBJOTE1X0RSTV9T
VVNQRU5EX01FTTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZGlzcGxheV9zdXNwZW5kX2xhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVko
ZGV2X3ByaXYpKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSB8
fCBJU19HRU45X0xQKGRldl9wcml2KSkKKwkJYnh0X2VuYWJsZV9kYzkoZGV2X3ByaXYpOworfQor
CiBzdGF0aWMgaW50IGk5MTVfZHJtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCBib29sIGhpYmVybmF0aW9uKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGV2KTsKQEAgLTIxMzIsMTAgKzIxNDEsMTAgQEAgc3RhdGljIGludCBpOTE1
X2RybV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlv
bikKIAlpbnRlbF9wb3dlcl9kb21haW5zX3N1c3BlbmQoZGV2X3ByaXYsCiAJCQkJICAgIGdldF9z
dXNwZW5kX21vZGUoZGV2X3ByaXYsIGhpYmVybmF0aW9uKSk7CiAKKwlpbnRlbF9kaXNwbGF5X3N1
c3BlbmRfbGF0ZShkZXZfcHJpdik7CisKIAlyZXQgPSAwOwotCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKQotCQlieHRfZW5hYmxlX2RjOShkZXZf
cHJpdik7Ci0JZWxzZSBpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRl
dl9wcml2KSkKKwlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9w
cml2KSkKIAkJaHN3X2VuYWJsZV9wYzgoZGV2X3ByaXYpOwogCWVsc2UgaWYgKElTX1ZBTExFWVZJ
RVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQlyZXQgPSB2bHZfc3Vz
cGVuZF9jb21wbGV0ZShkZXZfcHJpdik7CkBAIC0yMjY1LDYgKzIyNzQsMTcgQEAgc3RhdGljIGlu
dCBpOTE1X2RybV9yZXN1bWUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlyZXR1cm4gMDsKIH0K
IAorc3RhdGljIHZvaWQgaW50ZWxfZGlzcGxheV9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQly
ZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSB8fCBJU19HRU45X0xQKGRl
dl9wcml2KSkgeworCQlnZW45X3Nhbml0aXplX2RjX3N0YXRlKGRldl9wcml2KTsKKwkJYnh0X2Rp
c2FibGVfZGM5KGRldl9wcml2KTsKKwl9Cit9CisKIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1l
X2Vhcmx5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwpAQCAtMjMyNywxMCArMjM0Nyw5IEBAIHN0YXRp
YyBpbnQgaTkxNV9kcm1fcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAKIAlp
OTE1X2NoZWNrX2FuZF9jbGVhcl9mYXVsdHMoZGV2X3ByaXYpOwogCi0JaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEgfHwgSVNfR0VOOV9MUChkZXZfcHJpdikpIHsKLQkJZ2VuOV9zYW5pdGl6
ZV9kY19zdGF0ZShkZXZfcHJpdik7Ci0JCWJ4dF9kaXNhYmxlX2RjOShkZXZfcHJpdik7Ci0JfSBl
bHNlIGlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7
CisJaW50ZWxfZGlzcGxheV9yZXN1bWVfZWFybHkoZGV2X3ByaXYpOworCisJaWYgKElTX0hBU1dF
TEwoZGV2X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKIAkJaHN3X2Rpc2FibGVf
cGM4KGRldl9wcml2KTsKIAl9CiAKQEAgLTI4NjgsNiArMjg4NywyMCBAQCBzdGF0aWMgaW50IHZs
dl9yZXN1bWVfcHJlcGFyZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJcmV0
dXJuIHJldDsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfcnVudGltZV9kaXNwbGF5X3N1c3BlbmQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVko
ZGV2X3ByaXYpKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkg
eworCQlpY2xfZGlzcGxheV9jb3JlX3VuaW5pdChkZXZfcHJpdik7CisJCWJ4dF9lbmFibGVfZGM5
KGRldl9wcml2KTsKKwl9IGVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CisJCWJ4dF9k
aXNwbGF5X2NvcmVfdW5pbml0KGRldl9wcml2KTsKKwkJYnh0X2VuYWJsZV9kYzkoZGV2X3ByaXYp
OworCX0KK30KKwogc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmlj
ZSAqa2RldikKIHsKIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoa2Rldik7CkBA
IC0yODk3LDE0ICsyOTMwLDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxfcnVudGltZV9zdXNwZW5kKHN0
cnVjdCBkZXZpY2UgKmtkZXYpCiAKIAlpbnRlbF91bmNvcmVfc3VzcGVuZCgmZGV2X3ByaXYtPnVu
Y29yZSk7CiAKKwlpbnRlbF9ydW50aW1lX2Rpc3BsYXlfc3VzcGVuZChkZXZfcHJpdik7CisKIAly
ZXQgPSAwOwotCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Ci0JCWljbF9kaXNwbGF5
X2NvcmVfdW5pbml0KGRldl9wcml2KTsKLQkJYnh0X2VuYWJsZV9kYzkoZGV2X3ByaXYpOwotCX0g
ZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpIHsKLQkJYnh0X2Rpc3BsYXlfY29yZV91bmlu
aXQoZGV2X3ByaXYpOwotCQlieHRfZW5hYmxlX2RjOShkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJ
U19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKSB7CisJaWYgKElT
X0hBU1dFTEwoZGV2X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKIAkJaHN3X2Vu
YWJsZV9wYzgoZGV2X3ByaXYpOwogCX0gZWxzZSBpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikg
fHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpIHsKIAkJcmV0ID0gdmx2X3N1c3BlbmRfY29tcGxl
dGUoZGV2X3ByaXYpOwpAQCAtMjk2Niw2ICsyOTk1LDMxIEBAIHN0YXRpYyBpbnQgaW50ZWxfcnVu
dGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmtkZXYpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRp
YyB2b2lkIGludGVsX3J1bnRpbWVfZGlzcGxheV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQoreworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47
CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQlieHRfZGlzYWJsZV9kYzko
ZGV2X3ByaXYpOworCQlpY2xfZGlzcGxheV9jb3JlX2luaXQoZGV2X3ByaXYsIHRydWUpOworCQlp
ZiAoZGV2X3ByaXYtPmNzci5kbWNfcGF5bG9hZCkgeworCQkJaWYgKGRldl9wcml2LT5jc3IuYWxs
b3dlZF9kY19tYXNrICYKKwkJCSAgICBEQ19TVEFURV9FTl9VUFRPX0RDNikKKwkJCQlza2xfZW5h
YmxlX2RjNihkZXZfcHJpdik7CisJCQllbHNlIGlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNf
bWFzayAmCisJCQkJIERDX1NUQVRFX0VOX1VQVE9fREM1KQorCQkJCWdlbjlfZW5hYmxlX2RjNShk
ZXZfcHJpdik7CisJCX0KKwl9IGVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKSB7CisJCWJ4
dF9kaXNhYmxlX2RjOShkZXZfcHJpdik7CisJCWJ4dF9kaXNwbGF5X2NvcmVfaW5pdChkZXZfcHJp
diwgdHJ1ZSk7CisJCWlmIChkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2FkICYmCisJCSAgICAoZGV2
X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sgJiBEQ19TVEFURV9FTl9VUFRPX0RDNSkpCisJCQln
ZW45X2VuYWJsZV9kYzUoZGV2X3ByaXYpOworCX0KK30KKwogc3RhdGljIGludCBpbnRlbF9ydW50
aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICprZGV2KQogewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2
ID0gdG9fcGNpX2RldihrZGV2KTsKQEAgLTI5ODYsMjQgKzMwNDAsOSBAQCBzdGF0aWMgaW50IGlu
dGVsX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmtkZXYpCiAJaWYgKGludGVsX3VuY29y
ZV91bmNsYWltZWRfbW1pbygmZGV2X3ByaXYtPnVuY29yZSkpCiAJCURSTV9ERUJVR19EUklWRVIo
IlVuY2xhaW1lZCBhY2Nlc3MgZHVyaW5nIHN1c3BlbmQsIGJpb3M/XG4iKTsKIAotCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKSB7Ci0JCWJ4dF9kaXNhYmxlX2RjOShkZXZfcHJpdik7Ci0J
CWljbF9kaXNwbGF5X2NvcmVfaW5pdChkZXZfcHJpdiwgdHJ1ZSk7Ci0JCWlmIChkZXZfcHJpdi0+
Y3NyLmRtY19wYXlsb2FkKSB7Ci0JCQlpZiAoZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sg
JgotCQkJICAgIERDX1NUQVRFX0VOX1VQVE9fREM2KQotCQkJCXNrbF9lbmFibGVfZGM2KGRldl9w
cml2KTsKLQkJCWVsc2UgaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYKLQkJCQkg
RENfU1RBVEVfRU5fVVBUT19EQzUpCi0JCQkJZ2VuOV9lbmFibGVfZGM1KGRldl9wcml2KTsKLQkJ
fQotCX0gZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpIHsKLQkJYnh0X2Rpc2FibGVfZGM5
KGRldl9wcml2KTsKLQkJYnh0X2Rpc3BsYXlfY29yZV9pbml0KGRldl9wcml2LCB0cnVlKTsKLQkJ
aWYgKGRldl9wcml2LT5jc3IuZG1jX3BheWxvYWQgJiYKLQkJICAgIChkZXZfcHJpdi0+Y3NyLmFs
bG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9fREM1KSkKLQkJCWdlbjlfZW5hYmxlX2Rj
NShkZXZfcHJpdik7Ci0JfSBlbHNlIGlmIChJU19IQVNXRUxMKGRldl9wcml2KSB8fCBJU19CUk9B
RFdFTEwoZGV2X3ByaXYpKSB7CisJaW50ZWxfcnVudGltZV9kaXNwbGF5X3Jlc3VtZShkZXZfcHJp
dik7CisKKwlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgfHwgSVNfQlJPQURXRUxMKGRldl9wcml2
KSkgewogCQloc3dfZGlzYWJsZV9wYzgoZGV2X3ByaXYpOwogCX0gZWxzZSBpZiAoSVNfVkFMTEVZ
VklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpIHsKIAkJcmV0ID0gdmx2
X3Jlc3VtZV9wcmVwYXJlKGRldl9wcml2LCB0cnVlKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
