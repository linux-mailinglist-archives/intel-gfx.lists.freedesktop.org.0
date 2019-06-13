Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E96436B8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618F889A7A;
	Thu, 13 Jun 2019 13:38:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C2289A7A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:38:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:38:22 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:38:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:15 +0100
Message-Id: <20190613133539.12620-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 04/28] drm/i915: Store some backpointers in struct
 intel_gt
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
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgIHwgNyArKysrKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAgIHwgNCArKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMgICAgICAgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKaW5kZXgg
ZTkxZmZkMmRjNGZhLi4yOWU4ZGM3NjZiYTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Qu
YwpAQCAtNCwxMiArNCwxNyBAQAogICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRp
b24KICAqLwogCisjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKwogI2luY2x1ZGUgImludGVsX2d0Lmgi
CiAKLXZvaWQgaW50ZWxfZ3RfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQordm9pZCBpbnRlbF9n
dF9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogewogCXN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgcmVzZXRfa2V5OwogCisJZ3QtPmk5
MTUgPSBpOTE1OworCWd0LT51bmNvcmUgPSAmaTkxNS0+dW5jb3JlOworCiAJSU5JVF9MSVNUX0hF
QUQoJmd0LT5hY3RpdmVfcmluZ3MpOwogCUlOSVRfTElTVF9IRUFEKCZndC0+Y2xvc2VkX3ZtYSk7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCmluZGV4IGQwYjU5OWRkNmQwZi4uZjU3ZmYz
NzU4ZjU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKQEAgLTksNiArOSw4IEBACiAK
ICNpbmNsdWRlICJndC9pbnRlbF9ndF90eXBlcy5oIgogCi12b2lkIGludGVsX2d0X2luaXQoc3Ry
dWN0IGludGVsX2d0ICpndCk7CitzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKKwordm9pZCBpbnRl
bF9ndF9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KTsKIAogI2VuZGlmIC8qIF9fSU5URUxfR1RfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfdHlwZXMuaAppbmRleCBjZjMyY2E0MDFiNzQuLjk5ZTMwZjhjZmJlMCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCkBAIC0xNyw3ICsxNywxMyBA
QAogI2luY2x1ZGUgImk5MTVfdm1hLmgiCiAjaW5jbHVkZSAiaW50ZWxfd2FrZXJlZi5oIgogCitz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKK3N0cnVjdCBpbnRlbF91bmNvcmU7CisKIHN0cnVjdCBp
bnRlbF9ndCB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisJc3RydWN0IGludGVs
X3VuY29yZSAqdW5jb3JlOworCiAJc3RydWN0IGk5MTVfZ3RfdGltZWxpbmVzIHsKIAkJc3RydWN0
IG11dGV4IG11dGV4OyAvKiBwcm90ZWN0cyBsaXN0LCB0YWludGVkIGJ5IEdQVSAqLwogCQlzdHJ1
Y3QgbGlzdF9oZWFkIGFjdGl2ZV9saXN0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZDU4
OTdlMTM4OTdiLi43ZmRmMjUyZjkzMjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTc0
OSw3ICsxNzQ5LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogewogCWludCBlcnI7CiAKLQlpbnRlbF9ndF9pbml0KCZkZXZfcHJp
di0+Z3QpOworCWludGVsX2d0X2luaXQoJmRldl9wcml2LT5ndCwgZGV2X3ByaXYpOwogCWludGVs
X2d0X3BtX2luaXQoZGV2X3ByaXYpOwogCiAJaTkxNV9nZW1faW5pdF9fbW0oZGV2X3ByaXYpOwot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
