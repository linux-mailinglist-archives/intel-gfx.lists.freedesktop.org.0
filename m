Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA9A5C0C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 20:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3642E8928D;
	Mon,  2 Sep 2019 18:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F1989272
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 18:07:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 11:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,460,1559545200"; d="scan'208";a="198617091"
Received: from hildebru-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.224])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2019 11:07:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 21:08:13 +0300
Message-Id: <0677b1d143c4bb488a9de301451c786ac052dda0.1567446845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1567446845.git.jani.nikula@intel.com>
References: <cover.1567446845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: add INTEL_NUM_PIPES() and use it
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWJzdHJhY3QgYXdheSBkaXJlY3QgYWNjZXNzIHRvIC0+bnVtX3BpcGVzIHRvIGFsbG93IGZ1cnRo
ZXIKcmVmYWN0b3JpbmcuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KCkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgIHwgMTIgKysrKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaCAgIHwgIDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9scGVfYXVkaW8uYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAg
ICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgICAgICAgfCAgNCArKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAg
ICAgICAgICAgICAgIHwgIDYgKysrLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggZTY2MWUyMDk5MTE4Li5lNDgwZmZlMGFlNmUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC03MTg4LDcgKzcxODgs
NyBAQCBzdGF0aWMgaW50IGlyb25sYWtlX2NoZWNrX2ZkaV9sYW5lcyhzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCBlbnVtIHBpcGUgcGlwZSwKIAkJfQogCX0KIAotCWlmIChJTlRFTF9JTkZPKGRldl9w
cml2KS0+bnVtX3BpcGVzID09IDIpCisJaWYgKElOVEVMX05VTV9QSVBFUyhkZXZfcHJpdikgPT0g
MikKIAkJcmV0dXJuIDA7CiAKIAkvKiBJdnlicmlkZ2UgMyBwaXBlIGlzIHJlYWxseSBjb21wbGlj
YXRlZCAqLwpAQCAtOTU3Miw3ICs5NTcyLDcgQEAgc3RhdGljIHZvaWQgaXJvbmxha2VfY29tcHV0
ZV9kcGxsKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCSAqIGNsZWFyIGlmIGl0JydzIGEgd2lu
IG9yIGxvc3MgcG93ZXIgd2lzZS4gTm8gcG9pbnQgaW4gZG9pbmcKIAkgKiB0aGlzIG9uIElMSyBh
dCBhbGwgc2luY2UgaXQgaGFzIGEgZml4ZWQgRFBMTDwtPnBpcGUgbWFwcGluZy4KIAkgKi8KLQlp
ZiAoSU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9waXBlcyA9PSAzICYmCisJaWYgKElOVEVMX05V
TV9QSVBFUyhkZXZfcHJpdikgPT0gMyAmJgogCSAgICBpbnRlbF9jcnRjX2hhc190eXBlKGNydGNf
c3RhdGUsIElOVEVMX09VVFBVVF9BTkFMT0cpKQogCQlkcGxsIHw9IERQTExfU0RWT19ISUdIX1NQ
RUVEOwogCkBAIC0xMzg2Myw3ICsxMzg2Myw3IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9k
ZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCiAJCQlpZiAo
c2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwK
IAkJCQkJCQllbnRyaWVzLAotCQkJCQkJCUlOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXMs
IGkpKQorCQkJCQkJCUlOVEVMX05VTV9QSVBFUyhkZXZfcHJpdiksIGkpKQogCQkJCWNvbnRpbnVl
OwogCiAJCQl1cGRhdGVkIHw9IGNtYXNrOwpAQCAtMTYyMTQsOCArMTYyMTQsOCBAQCBpbnQgaW50
ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJfQogCiAJRFJNX0RFQlVH
X0tNUygiJWQgZGlzcGxheSBwaXBlJXMgYXZhaWxhYmxlLlxuIiwKLQkJICAgICAgSU5URUxfSU5G
TyhkZXZfcHJpdiktPm51bV9waXBlcywKLQkJICAgICAgSU5URUxfSU5GTyhkZXZfcHJpdiktPm51
bV9waXBlcyA+IDEgPyAicyIgOiAiIik7CisJCSAgICAgIElOVEVMX05VTV9QSVBFUyhkZXZfcHJp
diksCisJCSAgICAgIElOVEVMX05VTV9QSVBFUyhkZXZfcHJpdikgPiAxID8gInMiIDogIiIpOwog
CiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgewogCQlyZXQgPSBpbnRlbF9jcnRjX2lu
aXQoZGV2X3ByaXYsIHBpcGUpOwpAQCAtMTczMDYsNyArMTczMDYsNyBAQCBpbnRlbF9kaXNwbGF5
X3ByaW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKm0sCiAJ
aWYgKCFlcnJvcikKIAkJcmV0dXJuOwogCi0JZXJyX3ByaW50ZihtLCAiTnVtIFBpcGVzOiAlZFxu
IiwgSU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9waXBlcyk7CisJZXJyX3ByaW50ZihtLCAiTnVt
IFBpcGVzOiAlZFxuIiwgSU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSk7CiAJaWYgKElTX0hBU1dF
TEwoZGV2X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpCiAJCWVycl9wcmludGYobSwg
IlBXUl9XRUxMX0NUTDI6ICUwOHhcbiIsCiAJCQkgICBlcnJvci0+cG93ZXJfd2VsbF9kcml2ZXIp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCAz
M2ZkNTIzYzQ2MjIuLmY0ZGRkZTE3MTY1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTMwNywxMCArMzA3LDEwIEBAIGVudW0gcGh5X2ZpYSB7
CiB9OwogCiAjZGVmaW5lIGZvcl9lYWNoX3BpcGUoX19kZXZfcHJpdiwgX19wKSBcCi0JZm9yICgo
X19wKSA9IDA7IChfX3ApIDwgSU5URUxfSU5GTyhfX2Rldl9wcml2KS0+bnVtX3BpcGVzOyAoX19w
KSsrKQorCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElOVEVMX05VTV9QSVBFUyhfX2Rldl9wcml2
KTsgKF9fcCkrKykKIAogI2RlZmluZSBmb3JfZWFjaF9waXBlX21hc2tlZChfX2Rldl9wcml2LCBf
X3AsIF9fbWFzaykgXAotCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElOVEVMX0lORk8oX19kZXZf
cHJpdiktPm51bV9waXBlczsgKF9fcCkrKykgXAorCWZvciAoKF9fcCkgPSAwOyAoX19wKSA8IElO
VEVMX05VTV9QSVBFUyhfX2Rldl9wcml2KTsgKF9fcCkrKykgXAogCQlmb3JfZWFjaF9pZigoX19t
YXNrKSAmIEJJVChfX3ApKQogCiAjZGVmaW5lIGZvcl9lYWNoX2NwdV90cmFuc2NvZGVyX21hc2tl
ZChfX2Rldl9wcml2LCBfX3QsIF9fbWFzaykgXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9scGVfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbHBlX2F1ZGlvLmMKaW5kZXggYjE5ODAwYjU4NDQyLi4wYjY3Zjc4ODdjZDAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHBlX2F1ZGlv
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9scGVfYXVkaW8uYwpA
QCAtMTE0LDcgKzExNCw3IEBAIGxwZV9hdWRpb19wbGF0ZGV2X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcGluZm8uc2l6ZV9kYXRhID0gc2l6ZW9mKCpwZGF0YSk7
CiAJcGluZm8uZG1hX21hc2sgPSBETUFfQklUX01BU0soMzIpOwogCi0JcGRhdGEtPm51bV9waXBl
cyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXM7CisJcGRhdGEtPm51bV9waXBlcyA9
IElOVEVMX05VTV9QSVBFUyhkZXZfcHJpdik7CiAJcGRhdGEtPm51bV9wb3J0cyA9IElTX0NIRVJS
WVZJRVcoZGV2X3ByaXYpID8gMyA6IDI7IC8qIEIsQyxEIG9yIEIsQyAqLwogCXBkYXRhLT5wb3J0
WzBdLnBpcGUgPSAtMTsKIAlwZGF0YS0+cG9ydFsxXS5waXBlID0gLTE7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwppbmRleCBiZWMyNTk0MmQ3N2QuLmNhZDRkNmJhMmQyYyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCkBAIC0zNDAsNyArMzQwLDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rl
c2V0X3Byb2JlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAKIAlpZiAoSEFTX0RJU1BMQVkoZGV2
X3ByaXYpKSB7CiAJCXJldCA9IGRybV92YmxhbmtfaW5pdCgmZGV2X3ByaXYtPmRybSwKLQkJCQkg
ICAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0+bnVtX3BpcGVzKTsKKwkJCQkgICAgICBJTlRFTF9O
VU1fUElQRVMoZGV2X3ByaXYpKTsKIAkJaWYgKHJldCkKIAkJCWdvdG8gb3V0OwogCX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IGRiNzQ4MDgzMWU1Mi4uZjRmYzcyZTIxMThjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIxODIsNyArMjE4Miw5IEBAIElTX1NVQlBMQVRGT1JNKGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBHVF9GUkVRVUVOQ1lf
TVVMVElQTElFUiA1MAogI2RlZmluZSBHRU45X0ZSRVFfU0NBTEVSIDMKIAotI2RlZmluZSBIQVNf
RElTUExBWShkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXMgPiAwKQor
I2RlZmluZSBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpIChJTlRFTF9JTkZPKGRldl9wcml2KS0+
bnVtX3BpcGVzKQorCisjZGVmaW5lIEhBU19ESVNQTEFZKGRldl9wcml2KSAoSU5URUxfTlVNX1BJ
UEVTKGRldl9wcml2KSA+IDApCiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF92dGRfYWN0aXZl
KHZvaWQpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA0ZmE5YmM4M2M4YjQuLjYyMTFm
OWQ3NGYzYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0xOTA5LDcgKzE5MDksNyBAQCBz
dGF0aWMgaW50IHZsdl9jb21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCiAKIAlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPCB3bV9zdGF0ZS0+bnVtX2xldmVs
czsgbGV2ZWwrKykgewogCQljb25zdCBzdHJ1Y3QgZzR4X3BpcGVfd20gKnJhdyA9ICZjcnRjX3N0
YXRlLT53bS52bHYucmF3W2xldmVsXTsKLQkJY29uc3QgaW50IHNyX2ZpZm9fc2l6ZSA9IElOVEVM
X0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXMgKiA1MTIgLSAxOworCQljb25zdCBpbnQgc3JfZmlm
b19zaXplID0gSU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSAqIDUxMiAtIDE7CiAKIAkJaWYgKCF2
bHZfcmF3X2NydGNfd21faXNfdmFsaWQoY3J0Y19zdGF0ZSwgbGV2ZWwpKQogCQkJYnJlYWs7CkBA
IC0yNjQ4LDcgKzI2NDgsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGlsa19wbGFuZV93bV9tYXgo
Y29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJLyogSFNXIGFsbG93
cyBMUDErIHdhdGVybWFya3MgZXZlbiB3aXRoIG11bHRpcGxlIHBpcGVzICovCiAJaWYgKGxldmVs
ID09IDAgfHwgY29uZmlnLT5udW1fcGlwZXNfYWN0aXZlID4gMSkgewotCQlmaWZvX3NpemUgLz0g
SU5URUxfSU5GTyhkZXZfcHJpdiktPm51bV9waXBlczsKKwkJZmlmb19zaXplIC89IElOVEVMX05V
TV9QSVBFUyhkZXZfcHJpdik7CiAKIAkJLyoKIAkJICogRm9yIHNvbWUgcmVhc29uIHRoZSBub24g
c2VsZiByZWZyZXNoCkBAIC05NzI4LDcgKzk3MjgsNyBAQCB2b2lkIGludGVsX2luaXRfcG0oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlkZXZfcHJpdi0+ZGlzcGxheS51cGRh
dGVfd20gPSBpOXh4X3VwZGF0ZV93bTsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuZ2V0X2ZpZm9fc2l6
ZSA9IGk5eHhfZ2V0X2ZpZm9fc2l6ZTsKIAl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMikp
IHsKLQkJaWYgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXMgPT0gMSkgeworCQlpZiAo
SU5URUxfTlVNX1BJUEVTKGRldl9wcml2KSA9PSAxKSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS51
cGRhdGVfd20gPSBpODQ1X3VwZGF0ZV93bTsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmdldF9maWZv
X3NpemUgPSBpODQ1X2dldF9maWZvX3NpemU7CiAJCX0gZWxzZSB7Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
