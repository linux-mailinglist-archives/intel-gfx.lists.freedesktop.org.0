Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC21DBE925
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 01:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF07E6EEDB;
	Wed, 25 Sep 2019 23:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0166EEB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 23:45:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 16:45:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; d="scan'208";a="201422303"
Received: from josouza-mobl.jf.intel.com ([10.7.200.160])
 by orsmga002.jf.intel.com with ESMTP; 25 Sep 2019 16:45:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:45:06 -0700
Message-Id: <20190925234509.29505-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925234509.29505-1-jose.souza@intel.com>
References: <20190925234509.29505-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/tc: Update DP_MODE programming
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CgpCU3Bl
YyB3YXMgdXBkYXRlZChyMTQ2NTQ4KSB3aXRoIGEgbmV3IE1HX0RQX01PREUgUHJvZ3JhbW1pbmcg
dGFibGUsCm5vdyB0YWtpbmcgaW4gY29uc2lkZXJhdGlvbiB0aGUgcGluIGFzc2lnbm1lbnQgYW5k
IGFsbG93aW5nIHVzIHRvCm9wdGltaXplIHBvd2VyIGJ5IHNodXR0aW5nIGRvd24gYXZhaWxhYmxl
IGJ1dCBub3QgbmVlZGVkIGxhbmVzLgoKSXQgd2FzIHRlc3RlZCBvbiBJQ0wgYW5kIFRHTCwgd2l0
aCBhZGFwdG9ycyB0aGF0IHVzZWQgcGluIGFzc2lnbm1lbnQKQyBhbmQgQiwgcmV2ZXJzaW5nIHRo
ZSBjb25uZWN0b3IgYW5kIGdvaW5nIHRvIGRpZmZlcmVudCBtb2RlcyB0ZXN0aW5nCnRoZSBub3Qg
bmVlZGVkIGxhbmUgc2h1dGRvd24uCgpCU3BlYzogMjE3MzUKQlNwZWM6IDQ5MjkyCgpDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gQSBUYXlsb3IgPGNsaW50
b24uYS50YXlsb3JAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgODIgKysrKysrKysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgIHwgMTUgKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgIHwgIDUgKysKIDQgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9u
cygrKSwgMzcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKaW5kZXggYWE0NzBjNzBhMTk4Li4zMTZjZWRiMTY5MzUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzA5NSw3ICszMDk1LDggQEAgc3RhdGljIHZv
aWQgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRl
bF9kaWdfcG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAllbnVtIHBvcnQgcG9ydCA9IGlu
dGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Ci0JdTMyIGxuMCwgbG4xLCBsYW5lX21hc2s7CisJdTMy
IGxuMCwgbG4xLCBwaW5fYXNzaWdubWVudDsKKwl1OCB3aWR0aDsKIAogCWlmIChpbnRlbF9kaWdf
cG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpCiAJCXJldHVybjsKQEAgLTMxMDMsNTAg
KzMxMDQsNTcgQEAgc3RhdGljIHZvaWQgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKIAlsbjAgPSBJOTE1X1JFQUQoTUdfRFBf
TU9ERSgwLCBwb3J0KSk7CiAJbG4xID0gSTkxNV9SRUFEKE1HX0RQX01PREUoMSwgcG9ydCkpOwog
Ci0Jc3dpdGNoIChpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSkgewotCWNhc2UgVENfUE9SVF9EUF9B
TFQ6Ci0JCWxuMCAmPSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NG
R19EUF9YMl9NT0RFKTsKLQkJbG4xICY9IH4oTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8IE1H
X0RQX01PREVfQ0ZHX0RQX1gyX01PREUpOworCWxuMCAmPSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gx
X01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFKTsKKwlsbjEgJj0gfihNR19EUF9NT0RF
X0NGR19EUF9YMV9NT0RFIHwgTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERSk7CiAKLQkJbGFuZV9t
YXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKGludGVsX2RpZ19wb3J0KTsKKwkvKiBE
UFBBVEMgKi8KKwlwaW5fYXNzaWdubWVudCA9IGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25t
ZW50X21hc2soaW50ZWxfZGlnX3BvcnQpOworCXdpZHRoID0gaW50ZWxfZGlnX3BvcnQtPmRwLmxh
bmVfY291bnQ7CiAKLQkJc3dpdGNoIChsYW5lX21hc2spIHsKLQkJY2FzZSAweDE6Ci0JCWNhc2Ug
MHg0OgotCQkJYnJlYWs7Ci0JCWNhc2UgMHgyOgorCXN3aXRjaCAocGluX2Fzc2lnbm1lbnQpIHsK
KwljYXNlIDB4MDoKKwkJV0FSTl9PTihpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JU
X0xFR0FDWSk7CisJCWlmICh3aWR0aCA9PSAxKSB7CisJCQlsbjEgfD0gTUdfRFBfTU9ERV9DRkdf
RFBfWDFfTU9ERTsKKwkJfSBlbHNlIHsKKwkJCWxuMCB8PSBNR19EUF9NT0RFX0NGR19EUF9YMl9N
T0RFOworCQkJbG4xIHw9IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7CisJCX0KKwkJYnJlYWs7
CisJY2FzZSAweDE6CisJCWlmICh3aWR0aCA9PSA0KSB7CisJCQlsbjAgfD0gTUdfRFBfTU9ERV9D
RkdfRFBfWDJfTU9ERTsKKwkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFOworCQl9
CisJCWJyZWFrOworCWNhc2UgMHgyOgorCQlpZiAod2lkdGggPT0gMikgeworCQkJbG4wIHw9IE1H
X0RQX01PREVfQ0ZHX0RQX1gyX01PREU7CisJCQlsbjEgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDJf
TU9ERTsKKwkJfQorCQlicmVhazsKKwljYXNlIDB4MzoKKwljYXNlIDB4NToKKwkJaWYgKHdpZHRo
ID09IDEpIHsKIAkJCWxuMCB8PSBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFOwotCQkJYnJlYWs7
Ci0JCWNhc2UgMHgzOgotCQkJbG4wIHw9IE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfAotCQkJ
ICAgICAgIE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7Ci0JCQlicmVhazsKLQkJY2FzZSAweDg6
CiAJCQlsbjEgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERTsKLQkJCWJyZWFrOwotCQljYXNl
IDB4QzoKLQkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwKLQkJCSAgICAgICBN
R19EUF9NT0RFX0NGR19EUF9YMl9NT0RFOwotCQkJYnJlYWs7Ci0JCWNhc2UgMHhGOgotCQkJbG4w
IHw9IE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfAotCQkJICAgICAgIE1HX0RQX01PREVfQ0ZH
X0RQX1gyX01PREU7Ci0JCQlsbjEgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8Ci0JCQkg
ICAgICAgTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsKLQkJCWJyZWFrOwotCQlkZWZhdWx0Ogot
CQkJTUlTU0lOR19DQVNFKGxhbmVfbWFzayk7CisJCX0gZWxzZSB7CisJCQlsbjAgfD0gTUdfRFBf
TU9ERV9DRkdfRFBfWDJfTU9ERTsKKwkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RF
OwogCQl9CiAJCWJyZWFrOwotCi0JY2FzZSBUQ19QT1JUX0xFR0FDWToKLQkJbG4wIHw9IE1HX0RQ
X01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFOwotCQlsbjEg
fD0gTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7
CisJY2FzZSAweDQ6CisJY2FzZSAweDY6CisJCWlmICh3aWR0aCA9PSAxKSB7CisJCQlsbjAgfD0g
TUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERTsKKwkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9Y
MV9NT0RFOworCQl9IGVsc2UgeworCQkJbG4wIHw9IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7
CisJCQlsbjEgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsKKwkJfQogCQlicmVhazsKLQog
CWRlZmF1bHQ6Ci0JCU1JU1NJTkdfQ0FTRShpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSk7Ci0JCXJl
dHVybjsKKwkJTUlTU0lOR19DQVNFKHBpbl9hc3NpZ25tZW50KTsKIAl9CiAKIAlJOTE1X1dSSVRF
KE1HX0RQX01PREUoMCwgcG9ydCksIGxuMCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMKaW5kZXggZjkyM2Y5Y2JkMzNjLi43NzczMTY5YjczMzEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTY3LDYgKzY3LDIxIEBAIHUzMiBpbnRlbF90
Y19wb3J0X2dldF9sYW5lX21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
CiAJcmV0dXJuIGxhbmVfbWFzayA+PiBEUF9MQU5FX0FTU0lHTk1FTlRfU0hJRlQoZGlnX3BvcnQt
PnRjX3BoeV9maWFfaWR4KTsKIH0KIAordTMyIGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25t
ZW50X21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2
KTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOworCXUzMiBw
aW5fbWFzazsKKworCXBpbl9tYXNrID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAorCQkJCSAg
ICAgUE9SVF9UWF9ERkxFWFBBMShkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOworCisJV0FSTl9PTihw
aW5fbWFzayA9PSAweGZmZmZmZmZmKTsKKworCXJldHVybiAocGluX21hc2sgJiBEUF9QSU5fQVNT
SUdOTUVOVF9NQVNLKGRpZ19wb3J0LT50Y19waHlfZmlhX2lkeCkpID4+CisJICAgICAgIERQX1BJ
Tl9BU1NJR05NRU5UX1NISUZUKGRpZ19wb3J0LT50Y19waHlfZmlhX2lkeCk7Cit9CisKIGludCBp
bnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICpkaWdfcG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
ZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oCmluZGV4IDc4M2Q3NTUzMTQzNS4uNDYzZjFiM2M4MzZmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCkBAIC0xMyw2ICsxMyw3IEBAIHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQ7CiAKIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFz
ayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7Cit1MzIgaW50ZWxfdGNfcG9y
dF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCk7CiBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogdm9pZCBpbnRlbF90Y19wb3J0X3NldF9maWFfbGFu
ZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJCQkgICAgICBp
bnQgcmVxdWlyZWRfbGFuZXMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZTc1MmRlOTQ3
MGJkLi5iY2Y0NDljMWQxNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTE4NTcsNiAr
MTE4NTcsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFBPUlRfVFhfREZMRVhE
UENTU1MoZmlhKQkJX01NSU9fRklBKChmaWEpLCAweDAwODk0KQogI2RlZmluZSAgIERQX1BIWV9N
T0RFX1NUQVRVU19OT1RfU0FGRShpZHgpCSgxIDw8IChpZHgpKQogCisjZGVmaW5lIFBPUlRfVFhf
REZMRVhQQTEoZmlhKQkJCV9NTUlPX0ZJQSgoZmlhKSwgMHgwMDg4MCkKKyNkZWZpbmUgICBEUF9Q
SU5fQVNTSUdOTUVOVF9TSElGVChpZHgpCQkoKGlkeCkgKiA0KQorI2RlZmluZSAgIERQX1BJTl9B
U1NJR05NRU5UX01BU0soaWR4KQkJKDB4ZiA8PCAoKGlkeCkgKiA0KSkKKyNkZWZpbmUgICBEUF9Q
SU5fQVNTSUdOTUVOVChpZHgsIHgpCQkoKHgpIDw8ICgoaWR4KSAqIDQpKQorCiAvKiBUaGlzIHJl
Z2lzdGVyIGNvbnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAq
LwogI2RlZmluZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAogI2RlZmluZSBEU0JTTF9J
TlNUQU5DRShwaXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
