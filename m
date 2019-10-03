Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E70CCA0FD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 17:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01E86EA0F;
	Thu,  3 Oct 2019 15:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB38F6EA11
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 15:15:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 08:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="391976295"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga005.fm.intel.com with ESMTP; 03 Oct 2019 08:15:42 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:36:50 +0530
Message-Id: <20191003150653.15881-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191003150653.15881-1-animesh.manna@intel.com>
References: <20191003150653.15881-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/6] drm/i915/dp: Preparation for DP phy
 compliance auto test.
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

RHVyaW5nIERQIHBoeSBjb21wbGlhbmNlIGF1dG8gdGVzdCBtb2RlLCBzaW5rIHdpbGwgcmVxdWVz
dApjb21iaW5hdGlvbiBvZiBkaWZmZXJlbnQgdGVzdCBwYXR0ZXJuIHdpdGggZGlmZmVybnQgbGV2
ZWwgb2YKdnN3aW5nLCBwcmUtZW1waGFzaXMuIEZ1bmN0aW9uIGFkZGVkIHRvIHByZXBhcmUgZm9y
IGl0LgoKU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgMjkg
KysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAppbmRleCA5NzY2NjlmMDFhOGMuLjVkNmQ0NGZhMjU5NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTExNDIsNiArMTE0
Miw3IEBAIHN0cnVjdCBpbnRlbF9kcF9jb21wbGlhbmNlX2RhdGEgewogCXU4IHZpZGVvX3BhdHRl
cm47CiAJdTE2IGhkaXNwbGF5LCB2ZGlzcGxheTsKIAl1OCBicGM7CisJc3RydWN0IGRybV9kcF9w
aHlfdGVzdF9wYXJhbXMgcGh5dGVzdDsKIH07CiAKIHN0cnVjdCBpbnRlbF9kcF9jb21wbGlhbmNl
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA3ZDMzZTIwZGZj
ODcuLmExOTE0MWZjNjcyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwpAQCAtNDczOCw5ICs0NzM4LDM4IEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9hdXRvdGVzdF9lZGlk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJcmV0dXJuIHRlc3RfcmVzdWx0OwogfQogCitz
dGF0aWMgdTggaW50ZWxfZHBfcHJlcGFyZV9waHl0ZXN0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApCit7CisJc3RydWN0IGRybV9kcF9waHlfdGVzdF9wYXJhbXMgKmRhdGEgPQorCQkmaW50ZWxf
ZHAtPmNvbXBsaWFuY2UudGVzdF9kYXRhLnBoeXRlc3Q7CisJdTggbGlua19zdGF0dXNbRFBfTElO
S19TVEFUVVNfU0laRV07CisKKwlpZiAoIWRybV9kcF9nZXRfcGh5X3Rlc3RfcGF0dGVybigmaW50
ZWxfZHAtPmF1eCwgZGF0YSkpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFAgUGh5IFRlc3QgcGF0dGVy
biBBVVggcmVhZCBmYWlsdXJlXG4iKTsKKwkJcmV0dXJuIERQX1RFU1RfTkFLOworCX0KKworCWlm
ICghaW50ZWxfZHBfZ2V0X2xpbmtfc3RhdHVzKGludGVsX2RwLCBsaW5rX3N0YXR1cykpIHsKKwkJ
RFJNX0RFQlVHX0tNUygiZmFpbGVkIHRvIGdldCBsaW5rIHN0YXR1c1xuIik7CisJCXJldHVybiBE
UF9URVNUX05BSzsKKwl9CisKKwlpbnRlbF9kcC0+bGlua19tc3QgPSBmYWxzZTsKKworCS8qIHJl
dHJpZXZlIHZzd2luZyAmIHByZS1lbXBoYXNpcyBzZXR0aW5nICovCisJaW50ZWxfZ2V0X2FkanVz
dF90cmFpbihpbnRlbF9kcCwgbGlua19zdGF0dXMpOworCisJcmV0dXJuIERQX1RFU1RfQUNLOwor
fQorCiBzdGF0aWMgdTggaW50ZWxfZHBfYXV0b3Rlc3RfcGh5X3BhdHRlcm4oc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKIHsKIAl1OCB0ZXN0X3Jlc3VsdCA9IERQX1RFU1RfTkFLOworCisJdGVz
dF9yZXN1bHQgPSBpbnRlbF9kcF9wcmVwYXJlX3BoeXRlc3QoaW50ZWxfZHApOworCWlmICh0ZXN0
X3Jlc3VsdCAhPSBEUF9URVNUX0FDSykKKwkJRFJNX0VSUk9SKCJQaHkgdGVzdCBwcmVwYXJhdGlv
biBmYWlsZWRcbiIpOworCiAJcmV0dXJuIHRlc3RfcmVzdWx0OwogfQogCi0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
