Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C58BF095
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCB76EC4A;
	Thu, 26 Sep 2019 10:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9719A6EC4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:55:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 03:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="189971900"
Received: from dk-chv.jf.intel.com ([10.165.21.146])
 by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2019 03:55:22 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 03:55:12 -0700
Message-Id: <20190926105512.25818-1-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-10-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-10-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 9/9] Gen-12 display can decompress surfaces
 compressed by the media engine.
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

RGV0ZWN0IHRoZSBtb2RpZmllciBjb3JyZXNwb25kaW5nIHRvIG1lZGlhIGNvbXByZXNzaW9uIHRv
IGVuYWJsZQpkaXNwbGF5IGRlY29tcHJlc3Npb24gZm9yIFlVViBhbmQgeFJHQiBwYWNrZWQgZm9y
bWF0cy4gQSBuZXcgbW9kaWZpZXIgaXMKYWRkZWQgc28gdGhhdCB0aGUgZHJpdmVyIGNhbiBkaXN0
aW5ndWlzaCBiZXR3ZWVuIG1lZGlhIGFuZCByZW5kZXIKY29tcHJlc3NlZCBidWZmZXJzLiBVbmxp
a2UgcmVuZGVyIGRlY29tcHJlc3Npb24sIHBsYW5lIDYgYW5kICBwbGFuZSA3IGRvIG5vdApzdXBw
b3J0IG1lZGlhIGRlY29tcHJlc3Npb24uCgp2MjogRml4IGNoZWNrcGF0Y2ggd2FybmluZ3Mgb24g
Y29kZSBzdHlsZSAoTHVjYXMpCgpGcm9tIERLOgpTZXBhcmF0ZSBtb2RpZmllciBhcnJheSBmb3Ig
cGxhbmVzIHRoYXQgY2Fubm90IGRlY29tcHJlc3MgbWVkaWEgKFZpbGxlKQoKdjM6IFN1cHBvcnQg
cGxhbmFyIGZvcm1hdHMKdjQ6IFN3aXRjaCBwbGFuZSBvcmRlcgoKQ2M6IE5hbmxleSBHIENoZXJ5
IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5w
YW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jICB8IDI5MCArKysrKysrKysrKysrLS0tLS0KIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgIHwgIDU1ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8ICAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDI2
NyBpbnNlcnRpb25zKCspLCA4MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDhlYTU1ZDY3NDQyYy4uZGYzZWJhYTE2N2Fi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MTg4OCw2ICsxODg4LDIyIEBAIHN0YXRpYyB2b2lkIGludGVsX2Rpc2FibGVfcGlwZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpCiAJCWludGVsX3dhaXRfZm9y
X3BpcGVfb2ZmKG9sZF9jcnRjX3N0YXRlKTsKIH0KIAorYm9vbCBpc19jY3NfbW9kaWZpZXIodTY0
IG1vZGlmaWVyKQoreworCXJldHVybiBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxF
RF9HRU4xMl9SQ19DQ1MgfHwKKwkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfTUNfQ0NTIHx8CisJICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01P
RF9ZX1RJTEVEX0NDUyB8fAorCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZf
VElMRURfQ0NTOworfQorCitzdGF0aWMgYm9vbCBpc19jY3NfcGxhbmUoY29uc3Qgc3RydWN0IGRy
bV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkKK3sKKwlpZiAoIWlzX2Njc19tb2Rp
ZmllcihmYi0+bW9kaWZpZXIpKQorCQlyZXR1cm4gZmFsc2U7CisKKwlyZXR1cm4gY29sb3JfcGxh
bmUgPj0gZmItPmZvcm1hdC0+bnVtX3BsYW5lcyAvIDI7Cit9CisKIHN0YXRpYyB1bnNpZ25lZCBp
bnQgaW50ZWxfdGlsZV9zaXplKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKIAlyZXR1cm4gSVNfR0VOKGRldl9wcml2LCAyKSA/IDIwNDggOiA0MDk2OwpAQCAtMTkw
OCwxMSArMTkyNCwxMyBAQCBpbnRlbF90aWxlX3dpZHRoX2J5dGVzKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCiAJCWVsc2UKIAkJCXJldHVybiA1MTI7
CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M6Ci0JCWlmIChjb2xvcl9wbGFuZSA9
PSAxKQorCQlpZiAoaXNfY2NzX3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpCiAJCQlyZXR1cm4gMTI4
OwogCQkvKiBmYWxsIHRocm91Z2ggKi8KKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX01DX0NDUzoKKwkJLyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRF9HRU4xMl9SQ19DQ1M6Ci0JCWlmIChjb2xvcl9wbGFuZSA9PSAxKQorCQlpZiAoaXNf
Y2NzX3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpCiAJCQlyZXR1cm4gNjQ7CiAJCS8qIGZhbGwgdGhy
b3VnaCAqLwogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6CkBAIC0xOTIxLDcgKzE5Mzks
NyBAQCBpbnRlbF90aWxlX3dpZHRoX2J5dGVzKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIg
KmZiLCBpbnQgY29sb3JfcGxhbmUpCiAJCWVsc2UKIAkJCXJldHVybiA1MTI7CiAJY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOgotCQlpZiAoY29sb3JfcGxhbmUgPT0gMSkKKwkJaWYg
KGlzX2Njc19wbGFuZShmYiwgY29sb3JfcGxhbmUpKQogCQkJcmV0dXJuIDEyODsKIAkJLyogZmFs
bCB0aHJvdWdoICovCiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRUQ6CkBAIC0xOTQ5LDgg
KzE5NjcsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50CiBpbnRlbF90aWxlX2hlaWdodChjb25zdCBz
dHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3BsYW5lKQogewogCXN3aXRjaCAo
ZmItPm1vZGlmaWVyKSB7CisJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19D
Q1M6CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1M6Ci0JCWlmIChj
b2xvcl9wbGFuZSA9PSAxKQorCQlpZiAoaXNfY2NzX3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpCiAJ
CQlyZXR1cm4gMTsKIAkJLyogZmFsbCB0aHJvdWdoICovCiAJZGVmYXVsdDoKQEAgLTIwNTUsNiAr
MjA3NCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfc3VyZl9hbGlnbm1lbnQoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCiAJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDkpCiAJCQlyZXR1cm4gMjU2ICogMTAyNDsKIAkJcmV0dXJuIDA7CisJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1M6CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxF
RF9HRU4xMl9SQ19DQ1M6CiAJCXJldHVybiAxNiAqIDEwMjQ7CiAJY2FzZSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9DQ1M6CkBAIC0yMjU0LDEwICsyMjc0LDE3IEBAIHN0YXRpYyB1MzIgaW50ZWxf
YWRqdXN0X3RpbGVfb2Zmc2V0KGludCAqeCwgaW50ICp5LAogCXJldHVybiBuZXdfb2Zmc2V0Owog
fQogCi1zdGF0aWMgYm9vbCBpc19zdXJmYWNlX2xpbmVhcih1NjQgbW9kaWZpZXIsIGludCBjb2xv
cl9wbGFuZSkKK3N0YXRpYyBib29sIGlzX3N1cmZhY2VfbGluZWFyKGNvbnN0IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCiB7Ci0JcmV0dXJuIG1vZGlmaWVyID09
IERSTV9GT1JNQVRfTU9EX0xJTkVBUiB8fAotCSAgICAgICAobW9kaWZpZXIgPT0gSTkxNV9GT1JN
QVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTICYmIGNvbG9yX3BsYW5lID09IDEpOworCXN3aXRj
aCAoZmItPm1vZGlmaWVyKSB7CisJY2FzZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6CisJCXJldHVy
biB0cnVlOworCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgorCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTOgorCQlyZXR1cm4gaXNfY2Nz
X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSk7CisJZGVmYXVsdDoKKwkJcmV0dXJuIGZhbHNlOworCX0K
IH0KIAogc3RhdGljIHUzMiBpbnRlbF9hZGp1c3RfYWxpZ25lZF9vZmZzZXQoaW50ICp4LCBpbnQg
KnksCkBAIC0yMjcyLDcgKzIyOTksNyBAQCBzdGF0aWMgdTMyIGludGVsX2FkanVzdF9hbGlnbmVk
X29mZnNldChpbnQgKngsIGludCAqeSwKIAogCVdBUk5fT04obmV3X29mZnNldCA+IG9sZF9vZmZz
ZXQpOwogCi0JaWYgKCFpc19zdXJmYWNlX2xpbmVhcihmYi0+bW9kaWZpZXIsIGNvbG9yX3BsYW5l
KSkgeworCWlmICghaXNfc3VyZmFjZV9saW5lYXIoZmIsIGNvbG9yX3BsYW5lKSkgewogCQl1bnNp
Z25lZCBpbnQgdGlsZV9zaXplLCB0aWxlX3dpZHRoLCB0aWxlX2hlaWdodDsKIAkJdW5zaWduZWQg
aW50IHBpdGNoX3RpbGVzOwogCkBAIC0yMzQyLDcgKzIzNjksNyBAQCBzdGF0aWMgdTMyIGludGVs
X2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCWlmIChhbGlnbm1lbnQpCiAJCWFsaWdubWVudC0tOwogCi0JaWYgKCFpc19zdXJmYWNlX2xp
bmVhcihmYi0+bW9kaWZpZXIsIGNvbG9yX3BsYW5lKSkgeworCWlmICghaXNfc3VyZmFjZV9saW5l
YXIoZmIsIGNvbG9yX3BsYW5lKSkgewogCQl1bnNpZ25lZCBpbnQgdGlsZV9zaXplLCB0aWxlX3dp
ZHRoLCB0aWxlX2hlaWdodDsKIAkJdW5zaWduZWQgaW50IHRpbGVfcm93cywgdGlsZXMsIHBpdGNo
X3RpbGVzOwogCkBAIC0yNDQ1LDYgKzI0NzIsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVs
X2ZiX21vZGlmaWVyX3RvX3RpbGluZyh1NjQgZmJfbW9kaWZpZXIpCiAJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRDoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUzoKIAljYXNl
IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKKwljYXNlIEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUzoKIAkJcmV0dXJuIEk5MTVfVElMSU5HX1k7CiAJZGVm
YXVsdDoKIAkJcmV0dXJuIEk5MTVfVElMSU5HX05PTkU7CkBAIC0yNDk0LDYgKzI1MjIsMTMgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gZ2VuMTJfY2NzX2Zvcm1hdHNbXSA9
IHsKIAkgIC5jcHAgPSB7IDQsIDEsIH0sIC5oc3ViID0gMiwgLnZzdWIgPSAzMiwgLmhhc19hbHBo
YSA9IHRydWUgfSwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvIGdl
bjEyX21jX2Njc19mb3JtYXRzW10gPSB7CisJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9ZVVlWLCAu
bnVtX3BsYW5lcyA9IDIsCisJICAuY3BwID0geyAyLCAxLCB9LCAuaHN1YiA9IDQsIC52c3ViID0g
MzIsIC5pc195dXYgPSB0cnVlIH0sCisJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9OVjEyLCAubnVt
X3BsYW5lcyA9IDQsCisJICAuY3BwID0geyAxLCAyLCAxLCAxfSwgLmhzdWIgPSAyLCAudnN1YiA9
IDIsIC5pc195dXYgPSB0cnVlIH0sCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3Jt
YXRfaW5mbyAqCiBsb29rdXBfZm9ybWF0X2luZm8oY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5m
byBmb3JtYXRzW10sCiAJCSAgIGludCBudW1fZm9ybWF0cywgdTMyIGZvcm1hdCkKQEAgLTI1MTEs
MTIgKzI1NDYsMjEgQEAgbG9va3VwX2Zvcm1hdF9pbmZvKGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0
X2luZm8gZm9ybWF0c1tdLAogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gKgog
aW50ZWxfZ2V0X2Zvcm1hdF9pbmZvKGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICpjbWQp
CiB7CisJY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbzsKKwogCXN3aXRjaCAoY21k
LT5tb2RpZmllclswXSkgewogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOgogCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEX0NDUzoKIAkJcmV0dXJuIGxvb2t1cF9mb3JtYXRf
aW5mbyhza2xfY2NzX2Zvcm1hdHMsCiAJCQkJCSAgQVJSQVlfU0laRShza2xfY2NzX2Zvcm1hdHMp
LAogCQkJCQkgIGNtZC0+cGl4ZWxfZm9ybWF0KTsKKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEX0dFTjEyX01DX0NDUzoKKwkJaW5mbyA9IGxvb2t1cF9mb3JtYXRfaW5mbyhnZW4xMl9tY19j
Y3NfZm9ybWF0cywKKwkJCQkJICBBUlJBWV9TSVpFKGdlbjEyX21jX2Njc19mb3JtYXRzKSwKKwkJ
CQkJICBjbWQtPnBpeGVsX2Zvcm1hdCk7CisJCWlmIChpbmZvKQorCQkJcmV0dXJuIGluZm87CisJ
CS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJf
UkNfQ0NTOgogCQlyZXR1cm4gbG9va3VwX2Zvcm1hdF9pbmZvKGdlbjEyX2Njc19mb3JtYXRzLAog
CQkJCQkgIEFSUkFZX1NJWkUoZ2VuMTJfY2NzX2Zvcm1hdHMpLApAQCAtMjUyNiwxMyArMjU3MCw2
IEBAIGludGVsX2dldF9mb3JtYXRfaW5mbyhjb25zdCBzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiAq
Y21kKQogCX0KIH0KIAotYm9vbCBpc19jY3NfbW9kaWZpZXIodTY0IG1vZGlmaWVyKQotewotCXJl
dHVybiBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgfHwK
LQkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTIHx8Ci0JICAg
ICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M7Ci19Ci0KIHUzMiBp
bnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIAkJCSAgICAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2RpZmllcikKIHsKQEAgLTI1NzYs
NyArMjYxMyw3IEBAIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoY29uc3Qgc3RydWN0IGRybV9m
cmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGZiLT5kZXYpOwogCXUzMiB0aWxlX3dpZHRoOwogCi0JaWYg
KGlzX3N1cmZhY2VfbGluZWFyKGZiLT5tb2RpZmllciwgY29sb3JfcGxhbmUpKSB7CisJaWYgKGlz
X3N1cmZhY2VfbGluZWFyKGZiLCBjb2xvcl9wbGFuZSkpIHsKIAkJdTMyIG1heF9zdHJpZGUgPSBp
bnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRlKGRldl9wcml2LAogCQkJCQkJCSAgIGZiLT5mb3JtYXQt
PmZvcm1hdCwKIAkJCQkJCQkgICBmYi0+bW9kaWZpZXIpOwpAQCAtMjU5Miw3ICsyNjI5LDcgQEAg
aW50ZWxfZmJfc3RyaWRlX2FsaWdubWVudChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpm
YiwgaW50IGNvbG9yX3BsYW5lKQogCX0KIAogCXRpbGVfd2lkdGggPSBpbnRlbF90aWxlX3dpZHRo
X2J5dGVzKGZiLCBjb2xvcl9wbGFuZSk7Ci0JaWYgKGlzX2Njc19tb2RpZmllcihmYi0+bW9kaWZp
ZXIpICYmIGNvbG9yX3BsYW5lID09IDApIHsKKwlpZiAoaXNfY2NzX21vZGlmaWVyKGZiLT5tb2Rp
ZmllcikpIHsKIAkJLyoKIAkJICogRGlzcGxheSBXQSAjMDUzMTogc2tsLGJ4dCxrYmwsZ2xrCiAJ
CSAqCkBAIC0yNjAyLDcgKzI2MzksNyBAQCBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50KGNvbnN0
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCiAJCSAqIHJlcXVp
cmUgdGhlIGVudGlyZSBmYiB0byBhY2NvbW1vZGF0ZSB0aGF0IHRvIGF2b2lkCiAJCSAqIHBvdGVu
dGlhbCBydW50aW1lIGVycm9ycyBhdCBwbGFuZSBjb25maWd1cmF0aW9uIHRpbWUuCiAJCSAqLwot
CQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBmYi0+d2lkdGggPiAzODQwKQorCQlpZiAoSVNf
R0VOKGRldl9wcml2LCA5KSAmJiBjb2xvcl9wbGFuZSA9PSAwICYmIGZiLT53aWR0aCA+IDM4NDAp
CiAJCQl0aWxlX3dpZHRoICo9IDQ7CiAJCS8qCiAJCSAqIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2gg
bXVzdCBiZSBwYWRkZWQgdG8gYSBtdWx0aXBsZSBvZiBmb3VyCkBAIC0yNjgyLDI1ICsyNzE5LDc1
IEBAIHN0YXRpYyBib29sIGludGVsX3BsYW5lX25lZWRzX3JlbWFwKGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJcmV0dXJuIHN0cmlkZSA+IG1heF9zdHJpZGU7
CiB9CiAKK3N0YXRpYyB2b2lkCitpbnRlbF9mYl9wbGFuZV9nZXRfc3Vic2FtcGxpbmcoaW50ICpo
c3ViLCBpbnQgKnZzdWIsIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29s
b3JfcGxhbmUpCit7CisJaW50IGk7CisJc3RhdGljIGNvbnN0IHN0cnVjdCB7CisJCXUzMiBmb3Jt
YXQ7CisJCWludCB2c3ViWzRdOworCQlpbnQgaHN1Yls0XTsKKwl9IG1jX2Njc19zdWJzYW1wbGlu
Z1tdID0geyB7IC5oc3ViID0geyAxLCAyLCA4LCAxNiB9LAorCQkJCSAgICAgLnZzdWIgPSB7IDEs
IDIsIDMyLCAzMiB9LAorCQkJCSAgICAgLmZvcm1hdCA9IERSTV9GT1JNQVRfTlYxMiwgfSwKKwkJ
CQkgfTsKKworCSpoc3ViID0gZmItPmZvcm1hdC0+aHN1YjsKKwkqdnN1YiA9IGZiLT5mb3JtYXQt
PnZzdWI7CisKKwlpZiAoZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX01DX0NDUyAmJgorCSAgICBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzID09IDQpIHsKKwkJZm9y
IChpID0gMDsgaSA8IEFSUkFZX1NJWkUobWNfY2NzX3N1YnNhbXBsaW5nKTsgaSsrKSB7CisJCQlp
ZiAgKG1jX2Njc19zdWJzYW1wbGluZ1tpXS5mb3JtYXQgPT0gZmItPmZvcm1hdC0+Zm9ybWF0KSB7
CisJCQkJKmhzdWIgPSBtY19jY3Nfc3Vic2FtcGxpbmdbaV0uaHN1Yltjb2xvcl9wbGFuZV07CisJ
CQkJKnZzdWIgPSBtY19jY3Nfc3Vic2FtcGxpbmdbaV0udnN1Yltjb2xvcl9wbGFuZV07CisJCQkJ
YnJlYWs7CisJCQl9CisJCX0KKwkJV0FSTl9PTihpID09IEFSUkFZX1NJWkUobWNfY2NzX3N1YnNh
bXBsaW5nKSk7CisJfQorfQorCitzdGF0aWMgdm9pZAoraW50ZWxfZmJfcGxhbmVfZGltcyhpbnQg
KncsIGludCAqaCwgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkK
K3sKKwlpbnQgaHN1YiwgdnN1YjsKKworCWludGVsX2ZiX3BsYW5lX2dldF9zdWJzYW1wbGluZygm
aHN1YiwgJnZzdWIsIGZiLCBjb2xvcl9wbGFuZSk7CisJKncgPSBmYi0+d2lkdGgvaHN1YjsKKwkq
aCA9IGZiLT5oZWlnaHQvdnN1YjsKK30KKwogc3RhdGljIGludAotaW50ZWxfZmJfY2hlY2tfY2Nz
X3h5KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgeCwgaW50IHkpCitpbnRlbF9mYl9j
aGVja19jY3NfeHkoc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBhdXhfcGxhbmUsIGlu
dCB4LCBpbnQgeSkKIHsKIAlzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiID0gdG9f
aW50ZWxfZnJhbWVidWZmZXIoZmIpOwotCWludCBoc3ViID0gZmItPmZvcm1hdC0+aHN1YjsKLQlp
bnQgdnN1YiA9IGZiLT5mb3JtYXQtPnZzdWI7CisJaW50IGhzdWIsIHZzdWI7CisJaW50IGhzdWJf
bWFpbiwgdnN1Yl9tYWluOwogCWludCB0aWxlX3dpZHRoLCB0aWxlX2hlaWdodDsKIAlpbnQgY2Nz
X3gsIGNjc195OwogCWludCBtYWluX3gsIG1haW5feTsKKwlpbnQgbWFpbl9wbGFuZTsKKworCWlm
ICghaXNfY2NzX3BsYW5lKGZiLCBhdXhfcGxhbmUpKQorCQlyZXR1cm4gMDsKKworCW1haW5fcGxh
bmUgPSAoYXV4X3BsYW5lIC0gMSkgLyAyOworCWludGVsX3RpbGVfZGltcyhmYiwgYXV4X3BsYW5l
LCAmdGlsZV93aWR0aCwgJnRpbGVfaGVpZ2h0KTsKKwlpbnRlbF9mYl9wbGFuZV9nZXRfc3Vic2Ft
cGxpbmcoJmhzdWIsICZ2c3ViLCBmYiwgYXV4X3BsYW5lKTsKKwlpbnRlbF9mYl9wbGFuZV9nZXRf
c3Vic2FtcGxpbmcoJmhzdWJfbWFpbiwgJnZzdWJfbWFpbiwgZmIsCisJCQkJICAgICAgIG1haW5f
cGxhbmUpOwogCi0JaW50ZWxfdGlsZV9kaW1zKGZiLCAxLCAmdGlsZV93aWR0aCwgJnRpbGVfaGVp
Z2h0KTsKKwloc3ViIC89IGhzdWJfbWFpbjsKKwl2c3ViIC89IHZzdWJfbWFpbjsKIAogCXRpbGVf
d2lkdGggKj0gaHN1YjsKIAl0aWxlX2hlaWdodCAqPSB2c3ViOwogCiAJY2NzX3ggPSAoeCAqIGhz
dWIpICUgdGlsZV93aWR0aDsKIAljY3NfeSA9ICh5ICogdnN1YikgJSB0aWxlX2hlaWdodDsKLQlt
YWluX3ggPSBpbnRlbF9mYi0+bm9ybWFsWzBdLnggJSB0aWxlX3dpZHRoOwotCW1haW5feSA9IGlu
dGVsX2ZiLT5ub3JtYWxbMF0ueSAlIHRpbGVfaGVpZ2h0OworCW1haW5feCA9IGludGVsX2ZiLT5u
b3JtYWxbbWFpbl9wbGFuZV0ueCAlIHRpbGVfd2lkdGg7CisJbWFpbl95ID0gaW50ZWxfZmItPm5v
cm1hbFttYWluX3BsYW5lXS55ICUgdGlsZV9oZWlnaHQ7CiAKIAkvKgogCSogQ0NTIGRvZXNuJ3Qg
aGF2ZSBpdHMgb3duIHgveSBvZmZzZXQgcmVnaXN0ZXIsIHNvIHRoZSBpbnRyYSBDQ1MgdGlsZQpA
QCAtMjcxMCw4ICsyNzk3LDggQEAgaW50ZWxfZmJfY2hlY2tfY2NzX3h5KHN0cnVjdCBkcm1fZnJh
bWVidWZmZXIgKmZiLCBpbnQgeCwgaW50IHkpCiAJCURSTV9ERUJVR19LTVMoIkJhZCBDQ1MgeC95
IChtYWluICVkLCVkIGNjcyAlZCwlZCkgZnVsbCAobWFpbiAlZCwlZCBjY3MgJWQsJWQpXG4iLAog
CQkJICAgICAgbWFpbl94LCBtYWluX3ksCiAJCQkgICAgICBjY3NfeCwgY2NzX3ksCi0JCQkgICAg
ICBpbnRlbF9mYi0+bm9ybWFsWzBdLngsCi0JCQkgICAgICBpbnRlbF9mYi0+bm9ybWFsWzBdLnks
CisJCQkgICAgICBpbnRlbF9mYi0+bm9ybWFsW21haW5fcGxhbmVdLngsCisJCQkgICAgICBpbnRl
bF9mYi0+bm9ybWFsW21haW5fcGxhbmVdLnksCiAJCQkgICAgICB4LCB5KTsKIAkJcmV0dXJuIC1F
SU5WQUw7CiAJfQpAQCAtMjczOSw4ICsyODI2LDcgQEAgaW50ZWxfZmlsbF9mYl9pbmZvKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJaW50IHJldDsKIAogCQljcHAgPSBmYi0+
Zm9ybWF0LT5jcHBbaV07Ci0JCXdpZHRoID0gZHJtX2ZyYW1lYnVmZmVyX3BsYW5lX3dpZHRoKGZi
LT53aWR0aCwgZmIsIGkpOwotCQloZWlnaHQgPSBkcm1fZnJhbWVidWZmZXJfcGxhbmVfaGVpZ2h0
KGZiLT5oZWlnaHQsIGZiLCBpKTsKKwkJaW50ZWxfZmJfcGxhbmVfZGltcygmd2lkdGgsICZoZWln
aHQsIGZiLCBpKTsKIAogCQlyZXQgPSBpbnRlbF9mYl9vZmZzZXRfdG9feHkoJngsICZ5LCBmYiwg
aSk7CiAJCWlmIChyZXQpIHsKQEAgLTI3NDksMTEgKzI4MzUsOSBAQCBpbnRlbF9maWxsX2ZiX2lu
Zm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJcmV0dXJuIHJldDsKIAkJ
fQogCi0JCWlmIChpc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSAmJiBpID09IDEpIHsKLQkJ
CXJldCA9IGludGVsX2ZiX2NoZWNrX2Njc194eShmYiwgeCwgeSk7Ci0JCQlpZiAocmV0KQotCQkJ
CXJldHVybiByZXQ7Ci0JCX0KKwkJcmV0ID0gaW50ZWxfZmJfY2hlY2tfY2NzX3h5KGZiLCBpLCB4
LCB5KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CiAKIAkJLyoKIAkJICogVGhlIGZlbmNl
IChpZiB1c2VkKSBpcyBhbGlnbmVkIHRvIHRoZSBzdGFydCBvZiB0aGUgb2JqZWN0CkBAIC0zMzcx
LDYgKzM0NTUsNyBAQCBzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfd2lkdGgoY29uc3Qgc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIsCiAJCQlyZXR1cm4gNTEyMDsKIAljYXNlIEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0NDUzoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6CisJ
Y2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1M6CiAJCS8qIEZJWE1FIEFV
WCBwbGFuZT8gKi8KIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEOgogCWNhc2UgSTkxNV9G
T1JNQVRfTU9EX1lmX1RJTEVEOgpAQCAtMzQzMCwxNiArMzUxNSwxOCBAQCBzdGF0aWMgaW50IGlj
bF9tYXhfcGxhbmVfaGVpZ2h0KHZvaWQpCiB9CiAKIHN0YXRpYyBib29sIHNrbF9jaGVja19tYWlu
X2Njc19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLAot
CQkJCQkgICBpbnQgbWFpbl94LCBpbnQgbWFpbl95LCB1MzIgbWFpbl9vZmZzZXQpCisJCQkJCSAg
IGludCBtYWluX3gsIGludCBtYWluX3ksCisJCQkJCSAgIHUzMiBtYWluX29mZnNldCwgaW50IGF1
eF9wbGFuZSkKIHsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0
YXRlLT5iYXNlLmZiOwotCWludCBoc3ViID0gZmItPmZvcm1hdC0+aHN1YjsKLQlpbnQgdnN1YiA9
IGZiLT5mb3JtYXQtPnZzdWI7Ci0JaW50IGF1eF94ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
WzFdLng7Ci0JaW50IGF1eF95ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzFdLnk7Ci0JdTMy
IGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ub2Zmc2V0OwotCXUzMiBh
bGlnbm1lbnQgPSBpbnRlbF9zdXJmX2FsaWdubWVudChmYiwgMSk7Ci0KKwlpbnQgaHN1YjsKKwlp
bnQgdnN1YjsKKwlpbnQgYXV4X3ggPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbYXV4X3BsYW5l
XS54OworCWludCBhdXhfeSA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVthdXhfcGxhbmVdLnk7
CisJdTMyIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbYXV4X3BsYW5lXS5v
ZmZzZXQ7CisJdTMyIGFsaWdubWVudCA9IGludGVsX3N1cmZfYWxpZ25tZW50KGZiLCBhdXhfcGxh
bmUpOworCisJaW50ZWxfZmJfcGxhbmVfZ2V0X3N1YnNhbXBsaW5nKCZoc3ViLCAmdnN1YiwgZmIs
IGF1eF9wbGFuZSk7CiAJd2hpbGUgKGF1eF9vZmZzZXQgPj0gbWFpbl9vZmZzZXQgJiYgYXV4X3kg
PD0gbWFpbl95KSB7CiAJCWludCB4LCB5OwogCkBAIC0zNDUxLDcgKzM1MzgsNyBAQCBzdGF0aWMg
Ym9vbCBza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZQogCiAJCXggPSBhdXhfeCAvIGhzdWI7CiAJCXkgPSBhdXhfeSAvIHZz
dWI7Ci0JCWF1eF9vZmZzZXQgPSBpbnRlbF9wbGFuZV9hZGp1c3RfYWxpZ25lZF9vZmZzZXQoJngs
ICZ5LCBwbGFuZV9zdGF0ZSwgMSwKKwkJYXV4X29mZnNldCA9IGludGVsX3BsYW5lX2FkanVzdF9h
bGlnbmVkX29mZnNldCgmeCwgJnksIHBsYW5lX3N0YXRlLCBhdXhfcGxhbmUsCiAJCQkJCQkJICAg
ICAgIGF1eF9vZmZzZXQsIGF1eF9vZmZzZXQgLSBhbGlnbm1lbnQpOwogCQlhdXhfeCA9IHggKiBo
c3ViICsgYXV4X3ggJSBoc3ViOwogCQlhdXhfeSA9IHkgKiB2c3ViICsgYXV4X3kgJSB2c3ViOwpA
QCAtMzQ2MCw5ICszNTQ3LDkgQEAgc3RhdGljIGJvb2wgc2tsX2NoZWNrX21haW5fY2NzX2Nvb3Jk
aW5hdGVzKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUKIAlpZiAoYXV4X3gg
IT0gbWFpbl94IHx8IGF1eF95ICE9IG1haW5feSkKIAkJcmV0dXJuIGZhbHNlOwogCi0JcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lWzFdLm9mZnNldCA9IGF1eF9vZmZzZXQ7Ci0JcGxhbmVfc3RhdGUt
PmNvbG9yX3BsYW5lWzFdLnggPSBhdXhfeDsKLQlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0u
eSA9IGF1eF95OworCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVthdXhfcGxhbmVdLm9mZnNldCA9
IGF1eF9vZmZzZXQ7CisJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2F1eF9wbGFuZV0ueCA9IGF1
eF94OworCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVthdXhfcGxhbmVdLnkgPSBhdXhfeTsKIAog
CXJldHVybiB0cnVlOwogfQpAQCAtMzQ3OCw3ICszNTY1LDggQEAgc3RhdGljIGludCBza2xfY2hl
Y2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJ
aW50IGggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7CiAJ
aW50IG1heF93aWR0aDsKIAlpbnQgbWF4X2hlaWdodDsKLQl1MzIgYWxpZ25tZW50LCBvZmZzZXQs
IGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ub2Zmc2V0OworCWludCBh
dXhfcGxhbmUgPSBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzIC8gMjsKKwl1MzIgYWxpZ25tZW50LCBv
ZmZzZXQsIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbYXV4X3BsYW5lXS5v
ZmZzZXQ7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKIAkJbWF4X3dpZHRoID0g
aWNsX21heF9wbGFuZV93aWR0aChmYiwgMCwgcm90YXRpb24pOwpAQCAtMzUzNiw3ICszNjI0LDkg
QEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqcGxhbmVfc3RhdGUpCiAJICogdGhleSBtYXRjaCB3aXRoIHRoZSBtYWluIHN1cmZhY2Ug
eC95IG9mZnNldHMuCiAJICovCiAJaWYgKGlzX2Njc19tb2RpZmllcihmYi0+bW9kaWZpZXIpKSB7
Ci0JCXdoaWxlICghc2tsX2NoZWNrX21haW5fY2NzX2Nvb3JkaW5hdGVzKHBsYW5lX3N0YXRlLCB4
LCB5LCBvZmZzZXQpKSB7CisKKwkJd2hpbGUgKCFza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0
ZXMocGxhbmVfc3RhdGUsIHgsIHksCisJCQkJCQkgICAgICAgb2Zmc2V0LCBhdXhfcGxhbmUpKSB7
CiAJCQlpZiAob2Zmc2V0ID09IDApCiAJCQkJYnJlYWs7CiAKQEAgLTM1NDQsNyArMzYzNCw4IEBA
IHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKnBsYW5lX3N0YXRlKQogCQkJCQkJCQkgICBvZmZzZXQsIG9mZnNldCAtIGFsaWdubWVudCk7
CiAJCX0KIAotCQlpZiAoeCAhPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ueCB8fCB5ICE9
IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS55KSB7CisJCWlmICh4ICE9IHBsYW5lX3N0YXRl
LT5jb2xvcl9wbGFuZVthdXhfcGxhbmVdLnggfHwKKwkJICAgIHkgIT0gcGxhbmVfc3RhdGUtPmNv
bG9yX3BsYW5lW2F1eF9wbGFuZV0ueSkgewogCQkJRFJNX0RFQlVHX0tNUygiVW5hYmxlIHRvIGZp
bmQgc3VpdGFibGUgZGlzcGxheSBzdXJmYWNlIG9mZnNldCBkdWUgdG8gQ0NTXG4iKTsKIAkJCXJl
dHVybiAtRUlOVkFMOwogCQl9CkBAIC0zNTg3LDYgKzM2NzgsNDEgQEAgc3RhdGljIGludCBza2xf
Y2hlY2tfbnYxMl9hdXhfc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKKwlpZiAoaXNfY2NzX21vZGlmaWVyKGZiLT5t
b2RpZmllcikpIHsKKwkJaW50IGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVb
M10ub2Zmc2V0OworCQlpbnQgYWxpZ25tZW50ID0gaW50ZWxfc3VyZl9hbGlnbm1lbnQoZmIsIDEp
OworCisJCWlmIChvZmZzZXQgPiBhdXhfb2Zmc2V0KSB7CisJCQlpbnQgaHN1YiwgdnN1YjsKKwkJ
CWludCBtYWluX3ggPSB4LCBtYWluX3kgPSB5OworCisKKwkJCWludGVsX2ZiX3BsYW5lX2dldF9z
dWJzYW1wbGluZygmaHN1YiwgJnZzdWIsIGZiLCAxKTsKKwkJCXggPSBtYWluX3ggLyBoc3ViOwor
CQkJeSA9IG1haW5feSAvIHZzdWI7CisJCQlvZmZzZXQgPSBpbnRlbF9wbGFuZV9hZGp1c3RfYWxp
Z25lZF9vZmZzZXQoJngsICZ5LCBwbGFuZV9zdGF0ZSwgMSwKKwkJCQkJCQkJICAgb2Zmc2V0LAor
CQkJCQkJCQkgICBhdXhfb2Zmc2V0ICYgfihhbGlnbm1lbnQgLSAxKSk7CisJCQl4ID0geCAqIGhz
dWIgKyBtYWluX3ggJSBoc3ViOworCQkJeSA9IHkgKiB2c3ViICsgbWFpbl95ICUgdnN1YjsKKwor
CQl9CisKKwkJd2hpbGUgKCFza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0ZXMocGxhbmVfc3Rh
dGUsIHgsIHksIG9mZnNldCwgMykpIHsKKwkJCWlmIChvZmZzZXQgPT0gMCkKKwkJCQlicmVhazsK
KworCQkJb2Zmc2V0ID0gaW50ZWxfcGxhbmVfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwg
cGxhbmVfc3RhdGUsIDEsCisJCQkJCQkJCSAgIG9mZnNldCwgb2Zmc2V0IC0gYWxpZ25tZW50KTsK
KwkJfQorCisJCWlmICh4ICE9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVszXS54IHx8CisJCSAg
ICB5ICE9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVszXS55KSB7CisJCQlEUk1fREVCVUdfS01T
KCJVbmFibGUgdG8gZmluZCBzdWl0YWJsZSBkaXNwbGF5IHN1cmZhY2Ugb2Zmc2V0IGR1ZSB0byBD
Q1NcbiIpOworCQkJcmV0dXJuIC1FSU5WQUw7CisJCX0KKwl9CisKIAlwbGFuZV9zdGF0ZS0+Y29s
b3JfcGxhbmVbMV0ub2Zmc2V0ID0gb2Zmc2V0OwogCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsx
XS54ID0geDsKIAlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ueSA9IHk7CkBAIC0zNTk5LDE5
ICszNzI1LDMwIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX2Njc19hdXhfc3VyZmFjZShzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmJhc2UuZmI7CiAJaW50IHNyY194ID0gcGxhbmVfc3Rh
dGUtPmJhc2Uuc3JjLngxID4+IDE2OwogCWludCBzcmNfeSA9IHBsYW5lX3N0YXRlLT5iYXNlLnNy
Yy55MSA+PiAxNjsKLQlpbnQgaHN1YiA9IGZiLT5mb3JtYXQtPmhzdWI7Ci0JaW50IHZzdWIgPSBm
Yi0+Zm9ybWF0LT52c3ViOwotCWludCB4ID0gc3JjX3ggLyBoc3ViOwotCWludCB5ID0gc3JjX3kg
LyB2c3ViOwogCXUzMiBvZmZzZXQ7CisJaW50IGNjczsKIAotCWludGVsX2FkZF9mYl9vZmZzZXRz
KCZ4LCAmeSwgcGxhbmVfc3RhdGUsIDEpOwotCW9mZnNldCA9IGludGVsX3BsYW5lX2NvbXB1dGVf
YWxpZ25lZF9vZmZzZXQoJngsICZ5LCBwbGFuZV9zdGF0ZSwgMSk7CiAKLQlwbGFuZV9zdGF0ZS0+
Y29sb3JfcGxhbmVbMV0ub2Zmc2V0ID0gb2Zmc2V0OwotCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFu
ZVsxXS54ID0geCAqIGhzdWIgKyBzcmNfeCAlIGhzdWI7Ci0JcGxhbmVfc3RhdGUtPmNvbG9yX3Bs
YW5lWzFdLnkgPSB5ICogdnN1YiArIHNyY195ICUgdnN1YjsKKwlmb3IgKGNjcyA9IGZiLT5mb3Jt
YXQtPm51bV9wbGFuZXMgLyAyOyBjY3MgPCBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzOyBjY3MrKykg
eworCQlpbnQgaHN1YiwgdnN1YjsKKwkJaW50IG1haW5faHN1YiwgbWFpbl92c3ViOworCQlpbnQg
eCwgeTsKKworCQlpbnRlbF9mYl9wbGFuZV9nZXRfc3Vic2FtcGxpbmcoJmhzdWIsICZ2c3ViLCBm
YiwgY2NzKTsKKwkJaW50ZWxfZmJfcGxhbmVfZ2V0X3N1YnNhbXBsaW5nKCZtYWluX2hzdWIsICZt
YWluX3ZzdWIsIGZiLCAoY2NzIC0gMSkvIDIpOworCisJCWhzdWIgLz0gbWFpbl9oc3ViOworCQl2
c3ViIC89IG1haW5fdnN1YjsKKwkJeCA9IHNyY194IC8gaHN1YjsKKwkJeSA9IHNyY195IC8gdnN1
YjsKIAorCQlpbnRlbF9hZGRfZmJfb2Zmc2V0cygmeCwgJnksIHBsYW5lX3N0YXRlLCBjY3MpOwor
CQlvZmZzZXQgPSBpbnRlbF9wbGFuZV9jb21wdXRlX2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwKKwkJ
CQkJCQkgICAgcGxhbmVfc3RhdGUsIGNjcyk7CisJCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtj
Y3NdLm9mZnNldCA9IG9mZnNldDsKKwkJcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2Njc10ueCA9
IHggKiBoc3ViICsgc3JjX3ggJSBoc3ViOworCQlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbY2Nz
XS55ID0geSAqIHZzdWIgKyBzcmNfeSAlIHZzdWI7CisJfQogCXJldHVybiAwOwogfQogCkBAIC0z
NjE5LDYgKzM3NTYsNyBAQCBpbnQgc2tsX2NoZWNrX3BsYW5lX3N1cmZhY2Uoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIHsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVm
ZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5iYXNlLmZiOwogCWludCByZXQ7CisJYm9vbCBuZWVkc19h
dXggPSBmYWxzZTsKIAogCXJldCA9IGludGVsX3BsYW5lX2NvbXB1dGVfZ3R0KHBsYW5lX3N0YXRl
KTsKIAlpZiAocmV0KQpAQCAtMzYyOCwyMSArMzc2NiwzMSBAQCBpbnQgc2tsX2NoZWNrX3BsYW5l
X3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAkJcmV0dXJu
IDA7CiAKIAkvKgotCSAqIEhhbmRsZSB0aGUgQVVYIHN1cmZhY2UgZmlyc3Qgc2luY2UKLQkgKiB0
aGUgbWFpbiBzdXJmYWNlIHNldHVwIGRlcGVuZHMgb24gaXQuCisJICogSGFuZGxlIHRoZSBBVVgg
c3VyZmFjZSBmaXJzdCBzaW5jZSB0aGUgbWFpbiBzdXJmYWNlIHNldHVwIGRlcGVuZHMgb24KKwkg
KiBpdC4KIAkgKi8KLQlpZiAoZHJtX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGZiLT5m
b3JtYXQpKSB7Ci0JCXJldCA9IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHBsYW5lX3N0YXRl
KTsKKwlpZiAoaXNfY2NzX21vZGlmaWVyKGZiLT5tb2RpZmllcikpIHsKKwkJbmVlZHNfYXV4ID0g
dHJ1ZTsKKwkJcmV0ID0gc2tsX2NoZWNrX2Njc19hdXhfc3VyZmFjZShwbGFuZV9zdGF0ZSk7CiAJ
CWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwotCX0gZWxzZSBpZiAoaXNfY2NzX21vZGlmaWVyKGZi
LT5tb2RpZmllcikpIHsKLQkJcmV0ID0gc2tsX2NoZWNrX2Njc19hdXhfc3VyZmFjZShwbGFuZV9z
dGF0ZSk7CisJfQorCisJaWYgKGRybV9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihmYi0+
Zm9ybWF0KSkgeworCQluZWVkc19hdXggPSB0cnVlOworCQlyZXQgPSBza2xfY2hlY2tfbnYxMl9h
dXhfc3VyZmFjZShwbGFuZV9zdGF0ZSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwotCX0g
ZWxzZSB7Ci0JCXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQgPSB+MHhmZmY7Ci0J
CXBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS54ID0gMDsKLQkJcGxhbmVfc3RhdGUtPmNvbG9y
X3BsYW5lWzFdLnkgPSAwOworCX0KKworCWlmICghbmVlZHNfYXV4KSB7CisJCWludCBpOworCisJ
CWZvciAoaSA9IDE7IGkgPCBmYi0+Zm9ybWF0LT5udW1fcGxhbmVzOyBpKyspIHsKKwkJCXBsYW5l
X3N0YXRlLT5jb2xvcl9wbGFuZVtpXS5vZmZzZXQgPSB+MHhmZmY7CisJCQlwbGFuZV9zdGF0ZS0+
Y29sb3JfcGxhbmVbaV0ueCA9IDA7CisJCQlwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbaV0ueSA9
IDA7CisJCX0KIAl9CiAKIAlyZXQgPSBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHBsYW5lX3N0YXRl
KTsKQEAgLTQwMzAsNyArNDE3OCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgc2tsX3BsYW5lX3N0
cmlkZV9tdWx0KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAogCSAqIFRoZSBzdHJp
ZGUgaXMgZWl0aGVyIGV4cHJlc3NlZCBhcyBhIG11bHRpcGxlIG9mIDY0IGJ5dGVzIGNodW5rcyBm
b3IKIAkgKiBsaW5lYXIgYnVmZmVycyBvciBpbiBudW1iZXIgb2YgdGlsZXMgZm9yIHRpbGVkIGJ1
ZmZlcnMuCiAJICovCi0JaWYgKGlzX3N1cmZhY2VfbGluZWFyKGZiLT5tb2RpZmllciwgY29sb3Jf
cGxhbmUpKQorCWlmIChpc19zdXJmYWNlX2xpbmVhcihmYiwgY29sb3JfcGxhbmUpKQogCQlyZXR1
cm4gNjQ7CiAJZWxzZSBpZiAoZHJtX3JvdGF0aW9uXzkwX29yXzI3MChyb3RhdGlvbikpCiAJCXJl
dHVybiBpbnRlbF90aWxlX2hlaWdodChmYiwgY29sb3JfcGxhbmUpOwpAQCAtNDE2MCw2ICs0MzA4
LDggQEAgc3RhdGljIHUzMiBza2xfcGxhbmVfY3RsX3RpbGluZyh1NjQgZmJfbW9kaWZpZXIpCiAJ
CXJldHVybiBQTEFORV9DVExfVElMRURfWSB8CiAJCSAgICAgICBQTEFORV9DVExfUkVOREVSX0RF
Q09NUFJFU1NJT05fRU5BQkxFIHwKIAkJICAgICAgIFBMQU5FX0NUTF9DTEVBUl9DT0xPUl9ESVNB
QkxFOworCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTOgorCQlyZXR1
cm4gUExBTkVfQ1RMX1RJTEVEX1kgfCBQTEFORV9DVExfTUVESUFfREVDT01QUkVTU0lPTl9FTkFC
TEU7CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRUQ6CiAJCXJldHVybiBQTEFORV9DVExf
VElMRURfWUY7CiAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOgpAQCAtOTk2OCw2
ICsxMDExOCw4IEBAIHNreWxha2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjLAogCQkJZmItPm1vZGlmaWVyID0gSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MiA/CiAJCQkJSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTIDoKIAkJCQlJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M7CisJCWVsc2UgaWYgKHZhbCAmIFBMQU5FX0NUTF9NRURJ
QV9ERUNPTVBSRVNTSU9OX0VOQUJMRSkKKwkJCWZiLT5tb2RpZmllciA9IEk5MTVfRk9STUFUX01P
RF9ZX1RJTEVEX0dFTjEyX01DX0NDUzsKIAkJZWxzZQogCQkJZmItPm1vZGlmaWVyID0gSTkxNV9G
T1JNQVRfTU9EX1lfVElMRUQ7CiAJCWJyZWFrOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA5NzY2NjlmMDFhOGMuLjU5OThi
OTU5MjI1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKQEAgLTUzMCw3ICs1MzAsNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgewogCQkgKi8KIAkJdTMyIHN0cmlkZTsKIAkJaW50IHgsIHk7Ci0JfSBjb2xvcl9wbGFuZVsy
XTsKKwl9IGNvbG9yX3BsYW5lWzRdOwogCiAJLyogcGxhbmUgY29udHJvbCByZWdpc3RlciAqLwog
CXUzMiBjdGw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpp
bmRleCA5YjliNDFiMGZjOTEuLjc4OGQwZmM4ZDhlZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCkBAIC01MzIsMTEgKzUzMiwxMyBAQCBza2xfcHJvZ3Jh
bV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsKIAllbnVtIHBsYW5lX2lk
IHBsYW5lX2lkID0gcGxhbmUtPmlkOwogCWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7CisJ
Y29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+YmFzZS5mYjsK
KwlpbnQgYXV4X3BsYW5lID0gZmItPmZvcm1hdC0+bnVtX3BsYW5lcyAvIDIgKyBjb2xvcl9wbGFu
ZTsKIAljb25zdCBzdHJ1Y3QgZHJtX2ludGVsX3Nwcml0ZV9jb2xvcmtleSAqa2V5ID0gJnBsYW5l
X3N0YXRlLT5ja2V5OwogCXUzMiBzdXJmX2FkZHIgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVb
Y29sb3JfcGxhbmVdLm9mZnNldDsKIAl1MzIgc3RyaWRlID0gc2tsX3BsYW5lX3N0cmlkZShwbGFu
ZV9zdGF0ZSwgY29sb3JfcGxhbmUpOwotCXUzMiBhdXhfZGlzdCA9IHBsYW5lX3N0YXRlLT5jb2xv
cl9wbGFuZVsxXS5vZmZzZXQgLSBzdXJmX2FkZHI7Ci0JdTMyIGF1eF9zdHJpZGUgPSBza2xfcGxh
bmVfc3RyaWRlKHBsYW5lX3N0YXRlLCAxKTsKKwl1MzIgYXV4X2Rpc3QgPSBwbGFuZV9zdGF0ZS0+
Y29sb3JfcGxhbmVbYXV4X3BsYW5lXS5vZmZzZXQgLSBzdXJmX2FkZHI7CisJdTMyIGF1eF9zdHJp
ZGUgPSBza2xfcGxhbmVfc3RyaWRlKHBsYW5lX3N0YXRlLCBhdXhfcGxhbmUpOwogCWludCBjcnRj
X3ggPSBwbGFuZV9zdGF0ZS0+YmFzZS5kc3QueDE7CiAJaW50IGNydGNfeSA9IHBsYW5lX3N0YXRl
LT5iYXNlLmRzdC55MTsKIAl1MzIgeCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9w
bGFuZV0ueDsKQEAgLTU0NCw3ICs1NDYsNiBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50
ZWxfcGxhbmUgKnBsYW5lLAogCXUzMiBzcmNfdyA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0
ZS0+YmFzZS5zcmMpID4+IDE2OwogCXUzMiBzcmNfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVf
c3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKmxpbmtlZCA9IHBs
YW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lOwotCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmJhc2UuZmI7CiAJdTggYWxwaGEgPSBwbGFuZV9zdGF0
ZS0+YmFzZS5hbHBoYSA+PiA4OwogCXUzMiBwbGFuZV9jb2xvcl9jdGwgPSAwOwogCXVuc2lnbmVk
IGxvbmcgaXJxZmxhZ3M7CkBAIC02MTksOCArNjIwLDggQEAgc2tsX3Byb2dyYW1fcGxhbmUoc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEp
CiAJCUk5MTVfV1JJVEVfRlcoUExBTkVfQVVYX09GRlNFVChwaXBlLCBwbGFuZV9pZCksCi0JCQkg
ICAgICAocGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzFdLnkgPDwgMTYpIHwKLQkJCSAgICAgIHBs
YW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS54KTsKKwkJCSAgICAgIChwbGFuZV9zdGF0ZS0+Y29s
b3JfcGxhbmVbYXV4X3BsYW5lXS55IDw8IDE2KSB8CisJCQkgICAgICBwbGFuZV9zdGF0ZS0+Y29s
b3JfcGxhbmVbYXV4X3BsYW5lXS54KTsKIAogCS8qCiAJICogVGhlIGNvbnRyb2wgcmVnaXN0ZXIg
c2VsZi1hcm1zIGlmIHRoZSBwbGFuZSB3YXMgcHJldmlvdXNseQpAQCAtMTczNyw3ICsxNzM4LDgg
QEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUsCiAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9E
X1lmX1RJTEVEIHx8CiAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElM
RURfQ0NTIHx8CiAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVE
X0NDUyB8fAotCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX1JDX0NDUykpIHsKKwkgICAgIGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1MgfHwKKwkgICAgIGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9NQ19DQ1MpKSB7CiAJCURSTV9ERUJVR19LTVMoIlkvWWYgdGlsaW5n
IG5vdCBzdXBwb3J0ZWQgaW4gSUYtSUQgbW9kZVxuIik7CiAJCXJldHVybiAtRUlOVkFMOwogCX0K
QEAgLTIxNDksNyArMjE1MSwxNiBAQCBzdGF0aWMgY29uc3QgdTY0IHNrbF9wbGFuZV9mb3JtYXRf
bW9kaWZpZXJzX2Njc1tdID0gewogCURSTV9GT1JNQVRfTU9EX0lOVkFMSUQKIH07CiAKLXN0YXRp
YyBjb25zdCB1NjQgZ2VuMTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19jY3NbXSA9IHsKK3N0YXRp
YyBjb25zdCB1NjQgZ2VuMTJfcGxhbmVfZm9ybWF0X21vZGlmaWVyc19tY19jY3NbXSA9IHsKKwlJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1MsCisJSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTLAorCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVELAorCUk5MTVfRk9S
TUFUX01PRF9YX1RJTEVELAorCURSTV9GT1JNQVRfTU9EX0xJTkVBUiwKKwlEUk1fRk9STUFUX01P
RF9JTlZBTElECit9OworCitzdGF0aWMgY29uc3QgdTY0IGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2Rp
ZmllcnNfcmNfY2NzW10gPSB7CiAJSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NT
LAogCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVELAogCUk5MTVfRk9STUFUX01PRF9YX1RJTEVELApA
QCAtMjMwNSwxMCArMjMxNiwyMSBAQCBzdGF0aWMgYm9vbCBza2xfcGxhbmVfZm9ybWF0X21vZF9z
dXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCX0KIH0KIAorc3RhdGljIGJvb2wg
Z2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpCit7CisJ
cmV0dXJuIHBsYW5lX2lkIDwgUExBTkVfU1BSSVRFNDsKK30KKwogc3RhdGljIGJvb2wgZ2VuMTJf
cGxhbmVfZm9ybWF0X21vZF9zdXBwb3J0ZWQoc3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCQkJ
CQkgICAgIHUzMiBmb3JtYXQsIHU2NCBtb2RpZmllcikKIHsKKwlzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lID0gdG9faW50ZWxfcGxhbmUoX3BsYW5lKTsKKwogCXN3aXRjaCAobW9kaWZpZXIpIHsK
KwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUzoKKwkJaWYgKCFnZW4x
Ml9wbGFuZV9zdXBwb3J0c19tY19jY3MocGxhbmUtPmlkKSkKKwkJCXJldHVybiBmYWxzZTsKKwkJ
LyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6CiAJY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEOgpA
QCAtMjMyNiwxNCArMjM0OCwxNyBAQCBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9mb3JtYXRfbW9k
X3N1cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJCWlmIChpc19jY3NfbW9kaWZp
ZXIobW9kaWZpZXIpKQogCQkJcmV0dXJuIHRydWU7CiAJCS8qIGZhbGwgdGhyb3VnaCAqLwotCWNh
c2UgRFJNX0ZPUk1BVF9SR0I1NjU6Ci0JY2FzZSBEUk1fRk9STUFUX1hSR0IyMTAxMDEwOgotCWNh
c2UgRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMDoKIAljYXNlIERSTV9GT1JNQVRfWVVZVjoKIAljYXNl
IERSTV9GT1JNQVRfWVZZVToKIAljYXNlIERSTV9GT1JNQVRfVVlWWToKIAljYXNlIERSTV9GT1JN
QVRfVllVWToKKwkJaWYgKG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEy
X01DX0NDUykKKwkJCXJldHVybiB0cnVlOworCQkvKiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIERS
TV9GT1JNQVRfTlYxMjoKKwljYXNlIERSTV9GT1JNQVRfUkdCNTY1OgorCWNhc2UgRFJNX0ZPUk1B
VF9YUkdCMjEwMTAxMDoKKwljYXNlIERSTV9GT1JNQVRfWEJHUjIxMDEwMTA6CiAJY2FzZSBEUk1f
Rk9STUFUX1AwMTA6CiAJY2FzZSBEUk1fRk9STUFUX1AwMTI6CiAJY2FzZSBEUk1fRk9STUFUX1Aw
MTY6CkBAIC0yNDcwLDYgKzI0OTUsMTQgQEAgc3RhdGljIGNvbnN0IHUzMiAqaWNsX2dldF9wbGFu
ZV9mb3JtYXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAl9CiB9CiAKK3N0
YXRpYyBjb25zdCB1NjQgKmdlbjEyX2dldF9wbGFuZV9tb2RpZmllcnMoZW51bSBwbGFuZV9pZCBw
bGFuZV9pZCkKK3sKKwlpZiAoZ2VuMTJfcGxhbmVfc3VwcG9ydHNfbWNfY2NzKHBsYW5lX2lkKSkK
KwkJcmV0dXJuIGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfbWNfY2NzOworCWVsc2UKKwkJ
cmV0dXJuIGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfcmNfY2NzOworfQorCiBzdGF0aWMg
Ym9vbCBza2xfcGxhbmVfaGFzX2NjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkgICAgICBlbnVtIHBpcGUgcGlwZSwgZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkKIHsKQEAg
LTI1MzYsNyArMjU2OSw3IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCXBsYW5lLT5oYXNfY2NzID0gc2tsX3BsYW5lX2hh
c19jY3MoZGV2X3ByaXYsIHBpcGUsIHBsYW5lX2lkKTsKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgewotCQltb2RpZmllcnMgPSBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX2Nj
czsKKwkJbW9kaWZpZXJzID0gZ2VuMTJfZ2V0X3BsYW5lX21vZGlmaWVycyhwbGFuZV9pZCk7CiAJ
CXBsYW5lX2Z1bmNzID0gJmdlbjEyX3BsYW5lX2Z1bmNzOwogCX0gZWxzZSB7CiAJCWlmIChwbGFu
ZS0+aGFzX2NjcykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDUxOWNmYjBhNWM0Mi4uMDJl
YWVmOGFkYWMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTY2OTcsNiArNjY5Nyw3IEBA
IGVudW0gewogI2RlZmluZSAgIFBMQU5FX0NUTF9USUxFRF9ZCQkJKDQgPDwgMTApCiAjZGVmaW5l
ICAgUExBTkVfQ1RMX1RJTEVEX1lGCQkJKDUgPDwgMTApCiAjZGVmaW5lICAgUExBTkVfQ1RMX0ZM
SVBfSE9SSVpPTlRBTAkJKDEgPDwgOCkKKyNkZWZpbmUgICBQTEFORV9DVExfTUVESUFfREVDT01Q
UkVTU0lPTl9FTkFCTEUJKDEgPDwgNCkgLyogVEdMKyAqLwogI2RlZmluZSAgIFBMQU5FX0NUTF9B
TFBIQV9NQVNLCQkJKDB4MyA8PCA0KSAvKiBQcmUtR0xLICovCiAjZGVmaW5lICAgUExBTkVfQ1RM
X0FMUEhBX0RJU0FCTEUJCSgwIDw8IDQpCiAjZGVmaW5lICAgUExBTkVfQ1RMX0FMUEhBX1NXX1BS
RU1VTFRJUExZCSgyIDw8IDQpCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
