Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB57A9C97A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539ED6E17E;
	Mon, 26 Aug 2019 06:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7CFC6E17F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174111975"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:32 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:03 +0530
Message-Id: <1566800772-18412-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 01/10] drm/i915/display: Add func to get
 gamma bit precision
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFjaCBwbGF0Zm9ybSBzdXBwb3J0cyBkaWZmZXJlbnQgZ2FtbWEgbW9kZXMgYW5kIGVhY2ggZ2Ft
bWEgbW9kZQpoYXMgZGlmZmVyZW50IGJpdCBwcmVjaXNpb24uIEFkZCBmdW5jL3BsYXRmb3JtIHRv
IGdldCBiaXQgcHJlY2lzaW9uCmNvcnJlc3BvbmRpbmcgdG8gZ2FtbWEgbW9kZS4KClNpZ25lZC1v
ZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNzkgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDgwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggNzFhMDIwMS4uZDJjMTI5NyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtMTM3MSw2
ICsxMzcxLDg1IEBAIHN0YXRpYyBpbnQgaWNsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IGk5eHhfZ2Ft
bWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQor
eworCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQorCQlyZXR1cm4gMDsKKworCXN3aXRj
aCAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgeworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6
CisJCXJldHVybiA4OworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgorCQlyZXR1cm4gMTY7
CisJZGVmYXVsdDoKKwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOworCQly
ZXR1cm4gMDsKKwl9Cit9CisKK3N0YXRpYyBpbnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoY3J0Y19zdGF0ZS0+
Y2dtX21vZGUgJiBDR01fUElQRV9NT0RFX0dBTU1BKQorCQlyZXR1cm4gMTA7CisJZWxzZQorCQly
ZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cit9CisKK3N0YXRpYyBpbnQg
Z2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKK3sKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuIDA7CisK
Kwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsKKwljYXNlIEdBTU1BX01PREVfTU9E
RV84QklUOgorCQlyZXR1cm4gODsKKwljYXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoKKwkJcmV0
dXJuIDEwOworCWRlZmF1bHQ6CisJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2Rl
KTsKKwkJcmV0dXJuIDA7CisJfQorfQorCitzdGF0aWMgaW50IGlsa19nYW1tYV9wcmVjaXNpb24o
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaWYgKCFjcnRj
X3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCXJldHVybiAwOworCisJaWYgKChjcnRjX3N0YXRlLT5j
c2NfbW9kZSAmIENTQ19QT1NJVElPTl9CRUZPUkVfR0FNTUEpID09IDApCisJCXJldHVybiAwOwor
CisJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7CisJY2FzZSBHQU1NQV9NT0RFX01P
REVfOEJJVDoKKwkJcmV0dXJuIDg7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6CisJCXJl
dHVybiAxMDsKKwlkZWZhdWx0OgorCQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9k
ZSk7CisJCXJldHVybiAwOworCX0KK30KKworaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRf
cHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorewor
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNl
LmNydGMpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+YmFzZS5kZXYpOworCisJaWYgKEhBU19HTUNIKGRldl9wcml2KSkgeworCQlpZiAoSVNfQ0hF
UlJZVklFVyhkZXZfcHJpdikpCisJCQlyZXR1cm4gY2h2X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0
YXRlKTsKKwkJZWxzZQorCQkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUp
OworCX0gZWxzZSB7CisJCWlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklM
QUtFKGRldl9wcml2KSkKKwkJCXJldHVybiBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUp
OworCQllbHNlIGlmIChJU19JUk9OTEFLRShkZXZfcHJpdikpCisJCQlyZXR1cm4gaWxrX2dhbW1h
X3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKKwl9CisKKwlyZXR1cm4gMDsKK30KKwogdm9pZCBpbnRl
bF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oCmluZGV4IDA1N2U4YWMuLjAyMjZkM2Eg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgKQEAgLTE0LDUg
KzE0LDYgQEAKIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY29sb3JfbG9hZF9sdXRzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfY29sb3JfZ2V0
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CitpbnQgaW50ZWxf
Y29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOwogCiAjZW5kaWYgLyogX19JTlRFTF9DT0xPUl9IX18gKi8KLS0gCjEu
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
