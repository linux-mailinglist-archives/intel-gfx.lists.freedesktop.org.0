Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57874E62FB
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 15:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E8F6E245;
	Sun, 27 Oct 2019 14:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F1D6E245
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 14:22:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Oct 2019 07:22:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,236,1569308400"; d="scan'208";a="204980408"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Oct 2019 07:22:42 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.148.241])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9REMf68022888; Sun, 27 Oct 2019 14:22:41 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 14:22:28 +0000
Message-Id: <20191027142228.15764-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Collect user engines at
 driver_register phase
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

VGhlcmUgaXMgbm8gbmVlZCB0byBhZGQgZW5naW5lcyB0byBlYXJseSB1YWJpIGxpc3Qgb25lIGJ5
IG9uZQpkdXJpbmcgZW5naW5lIHNldHVwLCB3ZSBjYW4gY29sbGVjdCBhbGwgZW5naW5lcyB3aGls
ZSBkb2luZyBmaW5hbApyZW5hbWVzIGF0IGRyaXZlcl9yZWdpc3RlciBwaGFzZS4gVGhpcyB3aWxs
IGFsc28gdW5ibG9jayB1cyBpbgpjYXNlIHdlIHdvdWxkIG5lZWQgdG8gZG8gc29tZSBsYXRlIG1v
ZGlmaWNhdGlvbnMgb2YgdGhlIGVuZ2luZQpsaXN0IGFmdGVyIGVuZ2luZSBzZXR1cCBidXQgYmVm
b3JlIHN0YXJ0aW5nIHVhYmkgcmVnaXN0cmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNl
ci5jIHwgMTUgKysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdXNlci5oIHwgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUu
YyAgICAgICB8ICAyIC0tCiA0IGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRl
eCA5Y2MxZWE2NTE5ZWMuLjEyMDU2YWQzMGIxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMKQEAgLTM0Miw3ICszNDIsNiBAQCBzdGF0aWMgaW50IGludGVsX2Vu
Z2luZV9zZXR1cChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBlbnVtIGludGVsX2VuZ2luZV9pZCBpZCkK
IAlndC0+ZW5naW5lX2NsYXNzW2luZm8tPmNsYXNzXVtpbmZvLT5pbnN0YW5jZV0gPSBlbmdpbmU7
CiAJZ3QtPmVuZ2luZVtpZF0gPSBlbmdpbmU7CiAKLQlpbnRlbF9lbmdpbmVfYWRkX3VzZXIoZW5n
aW5lKTsKIAlndC0+aTkxNS0+ZW5naW5lW2lkXSA9IGVuZ2luZTsKIAogCXJldHVybiAwOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKaW5kZXggN2Y3MTUwYTcz
M2Y0Li5lOTIzMWUyN2NkZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV91c2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3VzZXIuYwpAQCAtMzUsMTAgKzM1LDIwIEBAIGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTggY2xhc3MsIHU4IGluc3RhbmNlKQogCXJl
dHVybiBOVUxMOwogfQogCi12b2lkIGludGVsX2VuZ2luZV9hZGRfdXNlcihzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCitzdGF0aWMgdm9pZCBhZGRfZW5naW5lKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAorCQkgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogewogCWxsaXN0X2FkZCgoc3RydWN0IGxsaXN0X25vZGUgKikmZW5naW5lLT51YWJpX25vZGUs
Ci0JCSAgKHN0cnVjdCBsbGlzdF9oZWFkICopJmVuZ2luZS0+aTkxNS0+dWFiaV9lbmdpbmVzKTsK
KwkJICAoc3RydWN0IGxsaXN0X2hlYWQgKikmaTkxNS0+dWFiaV9lbmdpbmVzKTsKK30KKworc3Rh
dGljIHZvaWQgYWRkX2VuZ2luZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJ
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCWVudW0gaW50ZWxfZW5naW5lX2lkIGlk
OworCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpCisJCWFkZF9lbmdpbmUoaTkx
NSwgZW5naW5lKTsKIH0KIAogc3RhdGljIGNvbnN0IHU4IHVhYmlfY2xhc3Nlc1tdID0gewpAQCAt
MTkwLDYgKzIwMCw3IEBAIHZvaWQgaW50ZWxfZW5naW5lc19kcml2ZXJfcmVnaXN0ZXIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJc3RydWN0IHJiX25vZGUgKipwLCAqcHJldjsKIAlM
SVNUX0hFQUQoZW5naW5lcyk7CiAKKwlhZGRfZW5naW5lcyhpOTE1KTsKIAlzb3J0X2VuZ2luZXMo
aTkxNSwgJmVuZ2luZXMpOwogCiAJcHJldiA9IE5VTEw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3VzZXIuaAppbmRleCBmODQ1ZWExY2JmYWEuLjdmYjA3ZmE5ODQ5NCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5oCkBAIC0xNyw3
ICsxNyw2IEBAIGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgdTggY2xhc3MsIHU4IGluc3RhbmNlKTsKIAogdW5zaWduZWQgaW50IGludGVsX2Vu
Z2luZXNfaGFzX2NvbnRleHRfaXNvbGF0aW9uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsKIAotdm9pZCBpbnRlbF9lbmdpbmVfYWRkX3VzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKTsKIHZvaWQgaW50ZWxfZW5naW5lc19kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOwogCiBjb25zdCBjaGFyICppbnRlbF9lbmdpbmVfY2xhc3NfcmVw
cih1OCBjbGFzcyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2Vu
Z2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwppbmRleCA4M2Y1
NDlkMjAzYTAuLmMzNjQ5MGEwMGI1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvbW9ja19lbmdpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2lu
ZS5jCkBAIC0yNzcsOCArMjc3LDYgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqbW9ja19lbmdp
bmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJdGltZXJfc2V0dXAoJmVuZ2luZS0+
aHdfZGVsYXksIGh3X2RlbGF5X2NvbXBsZXRlLCAwKTsKIAlJTklUX0xJU1RfSEVBRCgmZW5naW5l
LT5od19xdWV1ZSk7CiAKLQlpbnRlbF9lbmdpbmVfYWRkX3VzZXIoJmVuZ2luZS0+YmFzZSk7Ci0K
IAlyZXR1cm4gJmVuZ2luZS0+YmFzZTsKIH0KIAotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
