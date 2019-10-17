Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1074DB3B3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 19:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538036E48E;
	Thu, 17 Oct 2019 17:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E230C6E452
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 17:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 10:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="202453557"
Received: from lgrafter-mobl2.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.29.114])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2019 10:45:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 18:45:41 +0100
Message-Id: <20191017174544.22446-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add memory region information to
 device_info
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
RXhwb3NlcyBhdmFpbGFibGUgcmVnaW9ucyBmb3IgdGhlIHBsYXRmb3JtLiBOZWVkZWQgaW4gbGF0
ZXIgcGF0Y2hlcy4KClNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVs
Z3VlQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwg
MiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCA4ODk1NmYzN2Q5NmMuLjJkYWI3MzFjMWU4MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0xNzgzLDYgKzE3ODMsOCBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfSVBDKGRldl9wcml2KQkJIChJ
TlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQogCisjZGVmaW5lIEhBU19SRUdJ
T04oaTkxNSwgaSkgKElOVEVMX0lORk8oaTkxNSktPm1lbW9yeV9yZWdpb25zICYgKGkpKQorCiAj
ZGVmaW5lIEhBU19HVF9VQyhkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfZ3Rf
dWMpCiAKIC8qIEhhdmluZyBHdUMgaXMgbm90IHRoZSBzYW1lIGFzIHVzaW5nIEd1QyAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXggMGNkYzI0NjU1MzRiLi5l
OTk0MGY5MzJkMjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApA
QCAtMTYwLDYgKzE2MCw4IEBAIHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB7CiAKIAl1bnNpZ25l
ZCBpbnQgcGFnZV9zaXplczsgLyogcGFnZSBzaXplcyBzdXBwb3J0ZWQgYnkgdGhlIEhXICovCiAK
Kwl1MzIgbWVtb3J5X3JlZ2lvbnM7IC8qIHJlZ2lvbnMgc3VwcG9ydGVkIGJ5IHRoZSBIVyAqLwor
CiAJdTMyIGRpc3BsYXlfbW1pb19vZmZzZXQ7CiAKIAl1OCBwaXBlX21hc2s7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
