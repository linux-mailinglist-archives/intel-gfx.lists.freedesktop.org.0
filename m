Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54C04C30D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661056E47E;
	Wed, 19 Jun 2019 21:34:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE1E6E47A
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:34:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:34:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162159084"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 14:34:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 22:34:07 +0100
Message-Id: <20190619213437.1190-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/33] drm/i915: Move intel_gt initialization to a
 separate file
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFzIGl0IHdp
bGwgZ3JvdyBpbiBhIGZvbGxvd2luZyBwYXRjaCBtYWtlIGEgbmV3IGhvbWUgZm9yIGl0LgoKdjI6
CiAqIENvbnZlcnQgbW9ja19nZW1fZGV2aWNlIGFzIHdlbGwuIChDaHJpcykKCnYzOgogKiBSZW5h
bWUgdG8gaW50ZWxfZ3RfaW5pdF9lYXJseSBhbmQgbW92ZSBjYWxsIHNpdGUgdG8gaTkxNV9kcnYu
Yy4gKENocmlzKQoKdjQ6CiAqIEFkanVzdCBTUERYIHRhZ3MuCiAqIE5vIG5lZWQgdG8gZ3QvIHBh
dGggd2hlbiBpbmNsdWRpbmcgaW50ZWxfZ3RfdHlwZXMuaC4gKENocmlzKQoKU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAgICAgICAgICAgfCAxMyArKysrKysr
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgICAg
fCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAg
ICB8ICA0IC0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZp
Y2UuYyB8ICA2ICsrLS0tLQogNiBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCA5MTM1NWMyZWE4YTUuLjE5ZjhiNjc0NTc3
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTc0LDYgKzc0LDcgQEAgZ3QteSArPSBcCiAJZ3Qv
aW50ZWxfY29udGV4dC5vIFwKIAlndC9pbnRlbF9lbmdpbmVfY3MubyBcCiAJZ3QvaW50ZWxfZW5n
aW5lX3BtLm8gXAorCWd0L2ludGVsX2d0Lm8gXAogCWd0L2ludGVsX2d0X3BtLm8gXAogCWd0L2lu
dGVsX2hhbmdjaGVjay5vIFwKIAlndC9pbnRlbF9scmMubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3QuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjEwYWRlZTEx
MjBlNgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
LmMKQEAgLTAsMCArMSwxNCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoK
KyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUg
ImludGVsX2d0LmgiCisKK3ZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KQoreworCUlOSVRfTElTVF9IRUFEKCZndC0+YWN0aXZlX3JpbmdzKTsKKwlJTklUX0xJU1Rf
SEVBRCgmZ3QtPmNsb3NlZF92bWEpOworCisJc3Bpbl9sb2NrX2luaXQoJmd0LT5jbG9zZWRfbG9j
ayk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaApuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLjYzMjg0Y2E4MWQ2OQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKQEAgLTAsMCArMSwxMyBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVs
IENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0dUX18KKyNkZWZpbmUgX19JTlRF
TF9HVF9fCisKKyNpbmNsdWRlICJpbnRlbF9ndF90eXBlcy5oIgorCit2b2lkIGludGVsX2d0X2lu
aXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpndCk7CisKKyNlbmRpZiAvKiBfX0lOVEVMX0dUX0hf
XyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggZjYyZTMzOTdkOTM2Li5iYzVhMTFkZmQ1
NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtNjEsNiArNjEsNyBAQAogCiAjaW5jbHVk
ZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxz
LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5o
IgogI2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuaCIKQEAgLTkyMiw2ICs5MjMsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2luaXRf
ZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmIChyZXQgPCAwKQog
CQlnb3RvIGVycl9lbmdpbmVzOwogCisJaW50ZWxfZ3RfaW5pdF9lYXJseSgmZGV2X3ByaXYtPmd0
KTsKKwogCXJldCA9IGk5MTVfZ2VtX2luaXRfZWFybHkoZGV2X3ByaXYpOwogCWlmIChyZXQgPCAw
KQogCQlnb3RvIGVycl93b3JrcXVldWVzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggMTkw
YWQ1NGZiMDcyLi5mYzhmZDQxZGQzMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTc0
OCwxMCArMTc0OCw2IEBAIGludCBpOTE1X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAogCWludGVsX2d0X3BtX2luaXQoZGV2X3ByaXYpOwogCi0JSU5J
VF9MSVNUX0hFQUQoJmRldl9wcml2LT5ndC5hY3RpdmVfcmluZ3MpOwotCUlOSVRfTElTVF9IRUFE
KCZkZXZfcHJpdi0+Z3QuY2xvc2VkX3ZtYSk7Ci0Jc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5n
dC5jbG9zZWRfbG9jayk7Ci0KIAlpOTE1X2dlbV9pbml0X19tbShkZXZfcHJpdik7CiAJaTkxNV9n
ZW1faW5pdF9fcG0oZGV2X3ByaXYpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKaW5kZXggNjRiYzUxNDAwYWU3Li44ZGM5Mjk2ODkyZTYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZp
Y2UuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNl
LmMKQEAgLTI1LDYgKzI1LDcgQEAKICNpbmNsdWRlIDxsaW51eC9wbV9kb21haW4uaD4KICNpbmNs
dWRlIDxsaW51eC9wbV9ydW50aW1lLmg+CiAKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2lu
Y2x1ZGUgImd0L21vY2tfZW5naW5lLmgiCiAKICNpbmNsdWRlICJtb2NrX3JlcXVlc3QuaCIKQEAg
LTE3OSw2ICsxODAsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqbW9ja19nZW1fZGV2aWNl
KHZvaWQpCiAKIAltb2NrX3VuY29yZV9pbml0KCZpOTE1LT51bmNvcmUpOwogCWk5MTVfZ2VtX2lu
aXRfX21tKGk5MTUpOworCWludGVsX2d0X2luaXRfZWFybHkoJmk5MTUtPmd0KTsKIAlpbnRlbF9n
dF9wbV9pbml0KGk5MTUpOwogCWF0b21pY19pbmMoJmk5MTUtPmd0Lndha2VyZWYuY291bnQpOyAv
KiBkaXNhYmxlOyBubyBodyBzdXBwb3J0ICovCiAKQEAgLTIwMCwxMCArMjAyLDYgQEAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2RldmljZSh2b2lkKQogCiAJaTkxNV90aW1lbGlu
ZXNfaW5pdChpOTE1KTsKIAotCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5ndC5hY3RpdmVfcmluZ3Mp
OwotCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5ndC5jbG9zZWRfdm1hKTsKLQlzcGluX2xvY2tfaW5p
dCgmaTkxNS0+Z3QuY2xvc2VkX2xvY2spOwotCiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CiAKIAltb2NrX2luaXRfZ2d0dChpOTE1LCAmaTkxNS0+Z2d0dCk7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
