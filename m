Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150414A179
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101346E169;
	Tue, 18 Jun 2019 13:03:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D3F6E169
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:03:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="160053237"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 06:03:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:03:16 +0100
Message-Id: <20190618130345.6135-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/33] drm/i915: Store some backpointers in
 struct intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIG5lZWQg
YW4gZWFzeSB3YXkgdG8gZ2V0IGJhY2sgdG8gaTkxNSBhbmQgdW5jb3JlLgoKU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgICAgICB8IDcgKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgICAgICAgIHwgNCArKystCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oICAgICAgICAgfCA2ICsrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgIHwgMiArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jIHwgMiArLQog
NSBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IDI5YTBmMGEzMjU0OS4uNmI3ZTg1N2NhMjQwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTQsMTAgKzQsMTUgQEAKICAqIENvcHly
aWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgImk5MTVfZHJ2
LmgiCisKICNpbmNsdWRlICJpbnRlbF9ndC5oIgogCi12b2lkIGludGVsX2d0X2luaXRfZWFybHko
c3RydWN0IGludGVsX2d0ICpndCkKK3ZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKKwlndC0+aTkxNSA9
IGk5MTU7CisJZ3QtPnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CisKIAlJTklUX0xJU1RfSEVBRCgm
Z3QtPmFjdGl2ZV9yaW5ncyk7CiAJSU5JVF9MSVNUX0hFQUQoJmd0LT5jbG9zZWRfdm1hKTsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKaW5kZXggZDE1M2U3ZmI0YzA4Li43YTZmODE3OGQy
ZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaApAQCAtOSw2ICs5LDggQEAKIAogI2lu
Y2x1ZGUgImd0L2ludGVsX2d0X3R5cGVzLmgiCiAKLXZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShz
dHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworCit2b2lkIGlu
dGVsX2d0X2luaXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpOwogCiAjZW5kaWYgLyogX19JTlRFTF9HVF9IX18gKi8KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCmluZGV4IGRjZGIxOGUwZGQ4NC4uZDk2ZGY0ZjY4
NzQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKQEAgLTE3LDcg
KzE3LDEzIEBACiAjaW5jbHVkZSAiaTkxNV92bWEuaCIKICNpbmNsdWRlICJpbnRlbF93YWtlcmVm
LmgiCiAKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworc3RydWN0IGludGVsX3VuY29yZTsKKwog
c3RydWN0IGludGVsX2d0IHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKKwlzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmU7CisKIAlzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgewog
CQlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIGxpc3QsIHRhaW50ZWQgYnkgR1BVICov
CiAJCXN0cnVjdCBsaXN0X2hlYWQgYWN0aXZlX2xpc3Q7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpp
bmRleCBiYzVhMTFkZmQ1NTQuLjRmM2YyY2ExMTBmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CkBAIC05MjMsNyArOTIzLDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9pbml0X2Vhcmx5KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlpZiAocmV0IDwgMCkKIAkJZ290byBl
cnJfZW5naW5lczsKIAotCWludGVsX2d0X2luaXRfZWFybHkoJmRldl9wcml2LT5ndCk7CisJaW50
ZWxfZ3RfaW5pdF9lYXJseSgmZGV2X3ByaXYtPmd0LCBkZXZfcHJpdik7CiAKIAlyZXQgPSBpOTE1
X2dlbV9pbml0X2Vhcmx5KGRldl9wcml2KTsKIAlpZiAocmV0IDwgMCkKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRleCA4ZGM5Mjk2ODky
ZTYuLjJiODcyMDA0NzdmNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfZ2VtX2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9tb2NrX2dlbV9kZXZpY2UuYwpAQCAtMTgwLDcgKzE4MCw3IEBAIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAogCW1vY2tfdW5jb3JlX2luaXQoJmk5MTUt
PnVuY29yZSk7CiAJaTkxNV9nZW1faW5pdF9fbW0oaTkxNSk7Ci0JaW50ZWxfZ3RfaW5pdF9lYXJs
eSgmaTkxNS0+Z3QpOworCWludGVsX2d0X2luaXRfZWFybHkoJmk5MTUtPmd0LCBpOTE1KTsKIAlp
bnRlbF9ndF9wbV9pbml0KGk5MTUpOwogCWF0b21pY19pbmMoJmk5MTUtPmd0Lndha2VyZWYuY291
bnQpOyAvKiBkaXNhYmxlOyBubyBodyBzdXBwb3J0ICovCiAKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
