Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F19FE15E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9602E6E8CD;
	Fri, 15 Nov 2019 15:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332B16E8B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:35:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:35:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="195420925"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 15 Nov 2019 07:35:11 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 20:55:45 +0530
Message-Id: <20191115152549.23047-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191115152549.23047-1-animesh.manna@intel.com>
References: <20191115152549.23047-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/7] drm/i915/dp: Preparation for DP phy
 compliance auto test
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIERQIHBoeSBjb21wbGlhbmNlIGF1dG8gdGVzdCBtb2RlLCBzaW5rIHdpbGwgcmVxdWVz
dApjb21iaW5hdGlvbiBvZiBkaWZmZXJlbnQgdGVzdCBwYXR0ZXJuIHdpdGggZGlmZmVybnQgbGV2
ZWwgb2YKdnN3aW5nLCBwcmUtZW1waGFzaXMuIEZ1bmN0aW9uIGFkZGVkIHRvIHByZXBhcmUgZm9y
IGl0LgoKU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgMjQg
KysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAppbmRleCA4M2VhMDQxNDliNzcuLmMxNzg2NmYxMjZjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTEyMDUsNiArMTIw
NSw3IEBAIHN0cnVjdCBpbnRlbF9kcF9jb21wbGlhbmNlX2RhdGEgewogCXU4IHZpZGVvX3BhdHRl
cm47CiAJdTE2IGhkaXNwbGF5LCB2ZGlzcGxheTsKIAl1OCBicGM7CisJc3RydWN0IGRybV9kcF9w
aHlfdGVzdF9wYXJhbXMgcGh5dGVzdDsKIH07CiAKIHN0cnVjdCBpbnRlbF9kcF9jb21wbGlhbmNl
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCBjYzhlMGQxYTcz
YWYuLjMzOGQzNzQ0YzVkNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwpAQCAtNDkzNiw5ICs0OTM2LDMzIEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9lZGlk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJcmV0dXJuIHRlc3RfcmVzdWx0OwogfQogCitz
dGF0aWMgdTggaW50ZWxfZHBfcHJlcGFyZV9waHl0ZXN0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApCit7CisJc3RydWN0IGRybV9kcF9waHlfdGVzdF9wYXJhbXMgKmRhdGEgPQorCQkmaW50ZWxf
ZHAtPmNvbXBsaWFuY2UudGVzdF9kYXRhLnBoeXRlc3Q7CisKKwlpZiAoIWRybV9kcF9nZXRfcGh5
X3Rlc3RfcGF0dGVybigmaW50ZWxfZHAtPmF1eCwgZGF0YSkpIHsKKwkJRFJNX0RFQlVHX0tNUygi
RFAgUGh5IFRlc3QgcGF0dGVybiBBVVggcmVhZCBmYWlsdXJlXG4iKTsKKwkJcmV0dXJuIERQX1RF
U1RfTkFLOworCX0KKworCS8qCisJICogbGlua19tc3QgaXMgc2V0IHRvIGZhbHNlIHRvIGF2b2lk
IGV4ZWN1dGluZyBtc3QgcmVsYXRlZCBjb2RlCisJICogZHVyaW5nIGNvbXBsaWFuY2UgdGVzdGlu
Zy4KKwkgKi8KKwlpbnRlbF9kcC0+bGlua19tc3QgPSBmYWxzZTsKKworCXJldHVybiBEUF9URVNU
X0FDSzsKK30KKwogc3RhdGljIHU4IGludGVsX2RwX2F1dG90ZXN0X3BoeV9wYXR0ZXJuKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApCiB7CiAJdTggdGVzdF9yZXN1bHQgPSBEUF9URVNUX05BSzsK
KworCXRlc3RfcmVzdWx0ID0gaW50ZWxfZHBfcHJlcGFyZV9waHl0ZXN0KGludGVsX2RwKTsKKwlp
ZiAodGVzdF9yZXN1bHQgIT0gRFBfVEVTVF9BQ0spCisJCURSTV9FUlJPUigiUGh5IHRlc3QgcHJl
cGFyYXRpb24gZmFpbGVkXG4iKTsKKwogCXJldHVybiB0ZXN0X3Jlc3VsdDsKIH0KIAotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
