Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 683B35E13C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDA26E110;
	Wed,  3 Jul 2019 09:45:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7C46E108
 for <Intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 02:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="362563493"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.160])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jul 2019 02:45:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:45:16 +0100
Message-Id: <20190703094518.20201-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Rework some interrupt handling
 functions to take intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNvbWUgaW50
ZXJydXB0IGhhbmRsaW5nIGZ1bmN0aW9ucyBhbHJlYWR5IGhhdmUgZ3QgaW4gdGhlaXIgbmFtZXMK
c3VnZ2VzdGluZyB0aGVtIGFzIG9idmlvdXMgY2FuZGlkYXRlcyB0byBtYWtlIHRoZW0gdGFrZSBz
dHJ1Y3QgaW50ZWxfZ3QKaW5zdGVhZCBvZiBpOTE1LgoKU2lnbmVkLW9mZi1ieTogUGF1bG8gWmFu
b25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+CkNvLWRldmVsb3BlZC1ieTogUGF1bG8gWmFu
b25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkFja2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA4OCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCA3M2YwMzM4ZmFmOWYuLjk1MjA1M2U2MTFmOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0zMDUsMTcgKzMwNSwxNyBAQCB2b2lkIGk5MTVfaG90
cGx1Z19pbnRlcnJ1cHRfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
IH0KIAogc3RhdGljIHUzMgotZ2VuMTFfZ3RfZW5naW5lX2lkZW50aXR5KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICogY29uc3QgaTkxNSwKK2dlbjExX2d0X2VuZ2luZV9pZGVudGl0eShzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0LAogCQkJIGNvbnN0IHVuc2lnbmVkIGludCBiYW5rLCBjb25zdCB1bnNpZ25l
ZCBpbnQgYml0KTsKIAotc3RhdGljIGJvb2wgZ2VuMTFfcmVzZXRfb25lX2lpcihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5MTUsCitzdGF0aWMgYm9vbCBnZW4xMV9yZXNldF9vbmVf
aWlyKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCQkJY29uc3QgdW5zaWduZWQgaW50IGJhbmssCiAJ
CQkJY29uc3QgdW5zaWduZWQgaW50IGJpdCkKIHsKLQl2b2lkIF9faW9tZW0gKiBjb25zdCByZWdz
ID0gaTkxNS0+dW5jb3JlLnJlZ3M7CisJdm9pZCBfX2lvbWVtICogY29uc3QgcmVncyA9IGd0LT51
bmNvcmUtPnJlZ3M7CiAJdTMyIGR3OwogCi0JbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+aXJx
X2xvY2spOworCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmd0LT5pOTE1LT5pcnFfbG9jayk7CiAKIAlk
dyA9IHJhd19yZWdfcmVhZChyZWdzLCBHRU4xMV9HVF9JTlRSX0RXKGJhbmspKTsKIAlpZiAoZHcg
JiBCSVQoYml0KSkgewpAQCAtMzIzLDcgKzMyMyw3IEBAIHN0YXRpYyBib29sIGdlbjExX3Jlc2V0
X29uZV9paXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAogCQkgKiBBY2Nv
cmRpbmcgdG8gdGhlIEJTcGVjLCBEV19JSVIgYml0cyBjYW5ub3QgYmUgY2xlYXJlZCB3aXRob3V0
CiAJCSAqIGZpcnN0IHNlcnZpY2luZyB0aGUgU2VsZWN0b3IgJiBTaGFyZWQgSUlSIHJlZ2lzdGVy
cy4KIAkJICovCi0JCWdlbjExX2d0X2VuZ2luZV9pZGVudGl0eShpOTE1LCBiYW5rLCBiaXQpOwor
CQlnZW4xMV9ndF9lbmdpbmVfaWRlbnRpdHkoZ3QsIGJhbmssIGJpdCk7CiAKIAkJLyoKIAkJICog
V2UgbG9ja2VkIEdUIElOVCBEVyBieSByZWFkaW5nIGl0LiBJZiB3ZSB3YW50IHRvICh0cnkKQEAg
LTUyOCw3ICs1MjgsNyBAQCB2b2lkIGdlbjExX3Jlc2V0X3Jwc19pbnRlcnJ1cHRzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+
aXJxX2xvY2spOwogCi0Jd2hpbGUgKGdlbjExX3Jlc2V0X29uZV9paXIoZGV2X3ByaXYsIDAsIEdF
TjExX0dUUE0pKQorCXdoaWxlIChnZW4xMV9yZXNldF9vbmVfaWlyKCZkZXZfcHJpdi0+Z3QsIDAs
IEdFTjExX0dUUE0pKQogCQk7CiAKIAlkZXZfcHJpdi0+Z3RfcG0ucnBzLnBtX2lpciA9IDA7CkBA
IC01NTUsNyArNTU1LDcgQEAgdm9pZCBnZW42X2VuYWJsZV9ycHNfaW50ZXJydXB0cyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJV0FSTl9PTl9PTkNFKHJwcy0+cG1faWlyKTsK
IAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQotCQlXQVJOX09OX09OQ0UoZ2VuMTFf
cmVzZXRfb25lX2lpcihkZXZfcHJpdiwgMCwgR0VOMTFfR1RQTSkpOworCQlXQVJOX09OX09OQ0Uo
Z2VuMTFfcmVzZXRfb25lX2lpcigmZGV2X3ByaXYtPmd0LCAwLCBHRU4xMV9HVFBNKSk7CiAJZWxz
ZQogCQlXQVJOX09OX09OQ0UoSTkxNV9SRUFEKGdlbjZfcG1faWlyKGRldl9wcml2KSkgJiBkZXZf
cHJpdi0+cG1fcnBzX2V2ZW50cyk7CiAKQEAgLTYzNSw3ICs2MzUsNyBAQCB2b2lkIGdlbjlfZGlz
YWJsZV9ndWNfaW50ZXJydXB0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB2
b2lkIGdlbjExX3Jlc2V0X2d1Y19pbnRlcnJ1cHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogewogCXNwaW5fbG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsKLQlnZW4xMV9yZXNldF9v
bmVfaWlyKGk5MTUsIDAsIEdFTjExX0dVQyk7CisJZ2VuMTFfcmVzZXRfb25lX2lpcigmaTkxNS0+
Z3QsIDAsIEdFTjExX0dVQyk7CiAJc3Bpbl91bmxvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7CiB9
CiAKQEAgLTY0Niw3ICs2NDYsNyBAQCB2b2lkIGdlbjExX2VuYWJsZV9ndWNfaW50ZXJydXB0cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXUzMiBldmVudHMgPSBSRUdfRklF
TERfUFJFUChFTkdJTkUxX01BU0ssCiAJCQkJCSAgICBHRU4xMV9HVUNfSU5UUl9HVUMySE9TVCk7
CiAKLQkJV0FSTl9PTl9PTkNFKGdlbjExX3Jlc2V0X29uZV9paXIoZGV2X3ByaXYsIDAsIEdFTjEx
X0dVQykpOworCQlXQVJOX09OX09OQ0UoZ2VuMTFfcmVzZXRfb25lX2lpcigmZGV2X3ByaXYtPmd0
LCAwLCBHRU4xMV9HVUMpKTsKIAkJSTkxNV9XUklURShHRU4xMV9HVUNfU0dfSU5UUl9FTkFCTEUs
IGV2ZW50cyk7CiAJCUk5MTVfV1JJVEUoR0VOMTFfR1VDX1NHX0lOVFJfTUFTSywgfmV2ZW50cyk7
CiAJCWRldl9wcml2LT5ndWMuaW50ZXJydXB0cy5lbmFibGVkID0gdHJ1ZTsKQEAgLTMwMzMsMTQg
KzMwMzMsMTQgQEAgc3RhdGljIGlycXJldHVybl90IGdlbjhfaXJxX2hhbmRsZXIoaW50IGlycSwg
dm9pZCAqYXJnKQogfQogCiBzdGF0aWMgdTMyCi1nZW4xMV9ndF9lbmdpbmVfaWRlbnRpdHkoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAorZ2VuMTFfZ3RfZW5naW5lX2lkZW50
aXR5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCQkgY29uc3QgdW5zaWduZWQgaW50IGJhbmssIGNv
bnN0IHVuc2lnbmVkIGludCBiaXQpCiB7Ci0Jdm9pZCBfX2lvbWVtICogY29uc3QgcmVncyA9IGk5
MTUtPnVuY29yZS5yZWdzOworCXZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MgPSBndC0+dW5jb3Jl
LT5yZWdzOwogCXUzMiB0aW1lb3V0X3RzOwogCXUzMiBpZGVudDsKIAotCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJmk5MTUtPmlycV9sb2NrKTsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZndC0+aTkxNS0+
aXJxX2xvY2spOwogCiAJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9JSVJfUkVHX1NFTEVDVE9S
KGJhbmspLCBCSVQoYml0KSk7CiAKQEAgLTMwNjcsOSArMzA2NywxMSBAQCBnZW4xMV9ndF9lbmdp
bmVfaWRlbnRpdHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAogfQogCiBz
dGF0aWMgdm9pZAotZ2VuMTFfb3RoZXJfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKiBjb25zdCBpOTE1LAotCQkJY29uc3QgdTggaW5zdGFuY2UsIGNvbnN0IHUxNiBpaXIpCitn
ZW4xMV9vdGhlcl9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBjb25zdCB1OCBpbnN0
YW5jZSwKKwkJCWNvbnN0IHUxNiBpaXIpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndC0+aTkxNTsKKwogCWlmIChpbnN0YW5jZSA9PSBPVEhFUl9HVUNfSU5TVEFOQ0UpCiAJ
CXJldHVybiBnZW4xMV9ndWNfaXJxX2hhbmRsZXIoaTkxNSwgaWlyKTsKIApAQCAtMzA4MSwxMyAr
MzA4MywxMyBAQCBnZW4xMV9vdGhlcl9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqIGNvbnN0IGk5MTUsCiB9CiAKIHN0YXRpYyB2b2lkCi1nZW4xMV9lbmdpbmVfaXJxX2hhbmRs
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAotCQkJIGNvbnN0IHU4IGNs
YXNzLCBjb25zdCB1OCBpbnN0YW5jZSwgY29uc3QgdTE2IGlpcikKK2dlbjExX2VuZ2luZV9pcnFf
aGFuZGxlcihzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBjb25zdCB1OCBjbGFzcywKKwkJCSBjb25zdCB1
OCBpbnN0YW5jZSwgY29uc3QgdTE2IGlpcikKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmU7CiAKIAlpZiAoaW5zdGFuY2UgPD0gTUFYX0VOR0lORV9JTlNUQU5DRSkKLQkJZW5naW5l
ID0gaTkxNS0+ZW5naW5lX2NsYXNzW2NsYXNzXVtpbnN0YW5jZV07CisJCWVuZ2luZSA9IGd0LT5p
OTE1LT5lbmdpbmVfY2xhc3NbY2xhc3NdW2luc3RhbmNlXTsKIAllbHNlCiAJCWVuZ2luZSA9IE5V
TEw7CiAKQEAgLTMwOTksOCArMzEwMSw3IEBAIGdlbjExX2VuZ2luZV9pcnFfaGFuZGxlcihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5MTUsCiB9CiAKIHN0YXRpYyB2b2lkCi1nZW4x
MV9ndF9pZGVudGl0eV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3QgaTkx
NSwKLQkJCSAgY29uc3QgdTMyIGlkZW50aXR5KQorZ2VuMTFfZ3RfaWRlbnRpdHlfaGFuZGxlcihz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCBjb25zdCB1MzIgaWRlbnRpdHkpCiB7CiAJY29uc3QgdTggY2xh
c3MgPSBHRU4xMV9JTlRSX0VOR0lORV9DTEFTUyhpZGVudGl0eSk7CiAJY29uc3QgdTggaW5zdGFu
Y2UgPSBHRU4xMV9JTlRSX0VOR0lORV9JTlNUQU5DRShpZGVudGl0eSk7CkBAIC0zMTEwLDMxICsz
MTExLDMwIEBAIGdlbjExX2d0X2lkZW50aXR5X2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKiBjb25zdCBpOTE1LAogCQlyZXR1cm47CiAKIAlpZiAoY2xhc3MgPD0gQ09QWV9FTkdJTkVf
Q0xBU1MpCi0JCXJldHVybiBnZW4xMV9lbmdpbmVfaXJxX2hhbmRsZXIoaTkxNSwgY2xhc3MsIGlu
c3RhbmNlLCBpbnRyKTsKKwkJcmV0dXJuIGdlbjExX2VuZ2luZV9pcnFfaGFuZGxlcihndCwgY2xh
c3MsIGluc3RhbmNlLCBpbnRyKTsKIAogCWlmIChjbGFzcyA9PSBPVEhFUl9DTEFTUykKLQkJcmV0
dXJuIGdlbjExX290aGVyX2lycV9oYW5kbGVyKGk5MTUsIGluc3RhbmNlLCBpbnRyKTsKKwkJcmV0
dXJuIGdlbjExX290aGVyX2lycV9oYW5kbGVyKGd0LCBpbnN0YW5jZSwgaW50cik7CiAKIAlXQVJO
X09OQ0UoMSwgInVua25vd24gaW50ZXJydXB0IGNsYXNzPTB4JXgsIGluc3RhbmNlPTB4JXgsIGlu
dHI9MHgleFxuIiwKIAkJICBjbGFzcywgaW5zdGFuY2UsIGludHIpOwogfQogCiBzdGF0aWMgdm9p
ZAotZ2VuMTFfZ3RfYmFua19oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3Qg
aTkxNSwKLQkJICAgICAgY29uc3QgdW5zaWduZWQgaW50IGJhbmspCitnZW4xMV9ndF9iYW5rX2hh
bmRsZXIoc3RydWN0IGludGVsX2d0ICpndCwgY29uc3QgdW5zaWduZWQgaW50IGJhbmspCiB7Ci0J
dm9pZCBfX2lvbWVtICogY29uc3QgcmVncyA9IGk5MTUtPnVuY29yZS5yZWdzOworCXZvaWQgX19p
b21lbSAqIGNvbnN0IHJlZ3MgPSBndC0+dW5jb3JlLT5yZWdzOwogCXVuc2lnbmVkIGxvbmcgaW50
cl9kdzsKIAl1bnNpZ25lZCBpbnQgYml0OwogCi0JbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+
aXJxX2xvY2spOworCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmd0LT5pOTE1LT5pcnFfbG9jayk7CiAK
IAlpbnRyX2R3ID0gcmF3X3JlZ19yZWFkKHJlZ3MsIEdFTjExX0dUX0lOVFJfRFcoYmFuaykpOwog
CiAJZm9yX2VhY2hfc2V0X2JpdChiaXQsICZpbnRyX2R3LCAzMikgewotCQljb25zdCB1MzIgaWRl
bnQgPSBnZW4xMV9ndF9lbmdpbmVfaWRlbnRpdHkoaTkxNSwgYmFuaywgYml0KTsKKwkJY29uc3Qg
dTMyIGlkZW50ID0gZ2VuMTFfZ3RfZW5naW5lX2lkZW50aXR5KGd0LCBiYW5rLCBiaXQpOwogCi0J
CWdlbjExX2d0X2lkZW50aXR5X2hhbmRsZXIoaTkxNSwgaWRlbnQpOworCQlnZW4xMV9ndF9pZGVu
dGl0eV9oYW5kbGVyKGd0LCBpZGVudCk7CiAJfQogCiAJLyogQ2xlYXIgbXVzdCBiZSBhZnRlciBz
aGFyZWQgaGFzIGJlZW4gc2VydmVkIGZvciBlbmdpbmUgKi8KQEAgLTMxNDIsMjUgKzMxNDIsMjUg
QEAgZ2VuMTFfZ3RfYmFua19oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3Qg
aTkxNSwKIH0KIAogc3RhdGljIHZvaWQKLWdlbjExX2d0X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICogY29uc3QgaTkxNSwKLQkJICAgICBjb25zdCB1MzIgbWFzdGVyX2N0bCkK
K2dlbjExX2d0X2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGNvbnN0IHUzMiBtYXN0
ZXJfY3RsKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CiAJ
dW5zaWduZWQgaW50IGJhbms7CiAKIAlzcGluX2xvY2soJmk5MTUtPmlycV9sb2NrKTsKIAogCWZv
ciAoYmFuayA9IDA7IGJhbmsgPCAyOyBiYW5rKyspIHsKIAkJaWYgKG1hc3Rlcl9jdGwgJiBHRU4x
MV9HVF9EV19JUlEoYmFuaykpCi0JCQlnZW4xMV9ndF9iYW5rX2hhbmRsZXIoaTkxNSwgYmFuayk7
CisJCQlnZW4xMV9ndF9iYW5rX2hhbmRsZXIoZ3QsIGJhbmspOwogCX0KIAogCXNwaW5fdW5sb2Nr
KCZpOTE1LT5pcnFfbG9jayk7CiB9CiAKIHN0YXRpYyB1MzIKLWdlbjExX2d1X21pc2NfaXJxX2Fj
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHUzMiBtYXN0ZXJfY3Rs
KQorZ2VuMTFfZ3VfbWlzY19pcnFfYWNrKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGNvbnN0IHUzMiBt
YXN0ZXJfY3RsKQogewotCXZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MgPSBkZXZfcHJpdi0+dW5j
b3JlLnJlZ3M7CisJdm9pZCBfX2lvbWVtICogY29uc3QgcmVncyA9IGd0LT51bmNvcmUtPnJlZ3M7
CiAJdTMyIGlpcjsKIAogCWlmICghKG1hc3Rlcl9jdGwgJiBHRU4xMV9HVV9NSVNDX0lSUSkpCkBA
IC0zMTc0LDEwICszMTc0LDEwIEBAIGdlbjExX2d1X21pc2NfaXJxX2FjayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHUzMiBtYXN0ZXJfY3RsKQogfQogCiBzdGF0aWMg
dm9pZAotZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGNvbnN0IHUzMiBpaXIpCitnZW4xMV9ndV9taXNjX2lycV9oYW5kbGVyKHN0cnVj
dCBpbnRlbF9ndCAqZ3QsIGNvbnN0IHUzMiBpaXIpCiB7CiAJaWYgKGlpciAmIEdFTjExX0dVX01J
U0NfR1NFKQotCQlpbnRlbF9vcHJlZ2lvbl9hc2xlX2ludHIoZGV2X3ByaXYpOworCQlpbnRlbF9v
cHJlZ2lvbl9hc2xlX2ludHIoZ3QtPmk5MTUpOwogfQogCiBzdGF0aWMgaW5saW5lIHUzMiBnZW4x
MV9tYXN0ZXJfaW50cl9kaXNhYmxlKHZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MpCkBAIC0zMjAy
LDYgKzMyMDIsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgZ2VuMTFfaXJxX2hhbmRsZXIoaW50IGly
cSwgdm9pZCAqYXJnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29uc3QgaTkxNSA9
IGFyZzsKIAl2b2lkIF9faW9tZW0gKiBjb25zdCByZWdzID0gaTkxNS0+dW5jb3JlLnJlZ3M7CisJ
c3RydWN0IGludGVsX2d0ICpndCA9ICZpOTE1LT5ndDsKIAl1MzIgbWFzdGVyX2N0bDsKIAl1MzIg
Z3VfbWlzY19paXI7CiAKQEAgLTMyMTUsNyArMzIxNiw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBn
ZW4xMV9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkICphcmcpCiAJfQogCiAJLyogRmluZCwgY2xl
YXIsIHRoZW4gcHJvY2VzcyBlYWNoIHNvdXJjZSBvZiBpbnRlcnJ1cHQuICovCi0JZ2VuMTFfZ3Rf
aXJxX2hhbmRsZXIoaTkxNSwgbWFzdGVyX2N0bCk7CisJZ2VuMTFfZ3RfaXJxX2hhbmRsZXIoZ3Qs
IG1hc3Rlcl9jdGwpOwogCiAJLyogSVJRcyBhcmUgc3luY2VkIGR1cmluZyBydW50aW1lX3N1c3Bl
bmQsIHdlIGRvbid0IHJlcXVpcmUgYSB3YWtlcmVmICovCiAJaWYgKG1hc3Rlcl9jdGwgJiBHRU4x
MV9ESVNQTEFZX0lSUSkgewpAQCAtMzIzMCwxMSArMzIzMSwxMSBAQCBzdGF0aWMgaXJxcmV0dXJu
X3QgZ2VuMTFfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqYXJnKQogCQllbmFibGVfcnBtX3dh
a2VyZWZfYXNzZXJ0cygmaTkxNS0+cnVudGltZV9wbSk7CiAJfQogCi0JZ3VfbWlzY19paXIgPSBn
ZW4xMV9ndV9taXNjX2lycV9hY2soaTkxNSwgbWFzdGVyX2N0bCk7CisJZ3VfbWlzY19paXIgPSBn
ZW4xMV9ndV9taXNjX2lycV9hY2soZ3QsIG1hc3Rlcl9jdGwpOwogCiAJZ2VuMTFfbWFzdGVyX2lu
dHJfZW5hYmxlKHJlZ3MpOwogCi0JZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcihpOTE1LCBndV9t
aXNjX2lpcik7CisJZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcihndCwgZ3VfbWlzY19paXIpOwog
CiAJcmV0dXJuIElSUV9IQU5ETEVEOwogfQpAQCAtMzU5MCw4ICszNTkxLDEwIEBAIHN0YXRpYyB2
b2lkIGdlbjhfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJ
aWJ4X2lycV9yZXNldChkZXZfcHJpdik7CiB9CiAKLXN0YXRpYyB2b2lkIGdlbjExX2d0X2lycV9y
ZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCBnZW4x
MV9ndF9pcnFfcmVzZXQoc3RydWN0IGludGVsX2d0ICpndCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSBndC0+aTkxNTsKKwogCS8qIERpc2FibGUgUkNTLCBCQ1MsIFZD
UyBhbmQgVkVDUyBjbGFzcyBlbmdpbmVzLiAqLwogCUk5MTVfV1JJVEUoR0VOMTFfUkVOREVSX0NP
UFlfSU5UUl9FTkFCTEUsIDApOwogCUk5MTVfV1JJVEUoR0VOMTFfVkNTX1ZFQ1NfSU5UUl9FTkFC
TEUsCSAgMCk7CkBAIC0zNjE2LDcgKzM2MTksNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9pcnFfcmVz
ZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJZ2VuMTFfbWFzdGVyX2lu
dHJfZGlzYWJsZShkZXZfcHJpdi0+dW5jb3JlLnJlZ3MpOwogCi0JZ2VuMTFfZ3RfaXJxX3Jlc2V0
KGRldl9wcml2KTsKKwlnZW4xMV9ndF9pcnFfcmVzZXQoJmRldl9wcml2LT5ndCk7CiAKIAlJOTE1
X1dSSVRFKEdFTjExX0RJU1BMQVlfSU5UX0NUTCwgMCk7CiAKQEAgLTQyMjIsOCArNDIyNSw5IEBA
IHN0YXRpYyB2b2lkIGdlbjhfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAlnZW44X21hc3Rlcl9pbnRyX2VuYWJsZShkZXZfcHJpdi0+dW5jb3JlLnJl
Z3MpOwogfQogCi1zdGF0aWMgdm9pZCBnZW4xMV9ndF9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgZ2VuMTFfZ3RfaXJxX3Bvc3Rp
bnN0YWxsKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gZ3QtPmk5MTU7CiAJY29uc3QgdTMyIGlycXMgPSBHVF9SRU5ERVJfVVNFUl9J
TlRFUlJVUFQgfCBHVF9DT05URVhUX1NXSVRDSF9JTlRFUlJVUFQ7CiAKIAlCVUlMRF9CVUdfT04o
aXJxcyAmIDB4ZmZmZjAwMDApOwpAQCAtNDI3NSwxNCArNDI3OSwxNCBAQCBzdGF0aWMgdm9pZCBn
ZW4xMV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0lDUCkKIAkJaWNwX2lycV9wb3N0
aW5zdGFsbChkZXZfcHJpdik7CiAKLQlnZW4xMV9ndF9pcnFfcG9zdGluc3RhbGwoZGV2X3ByaXYp
OworCWdlbjExX2d0X2lycV9wb3N0aW5zdGFsbCgmZGV2X3ByaXYtPmd0KTsKIAlnZW44X2RlX2ly
cV9wb3N0aW5zdGFsbChkZXZfcHJpdik7CiAKIAlHRU4zX0lSUV9JTklUKHVuY29yZSwgR0VOMTFf
R1VfTUlTQ18sIH5ndV9taXNjX21hc2tlZCwgZ3VfbWlzY19tYXNrZWQpOwogCiAJSTkxNV9XUklU
RShHRU4xMV9ESVNQTEFZX0lOVF9DVEwsIEdFTjExX0RJU1BMQVlfSVJRX0VOQUJMRSk7CiAKLQln
ZW4xMV9tYXN0ZXJfaW50cl9lbmFibGUoZGV2X3ByaXYtPnVuY29yZS5yZWdzKTsKKwlnZW4xMV9t
YXN0ZXJfaW50cl9lbmFibGUodW5jb3JlLT5yZWdzKTsKIAlQT1NUSU5HX1JFQUQoR0VOMTFfR0ZY
X01TVFJfSVJRKTsKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
