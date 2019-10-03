Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B01B4CAF21
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1CF66EA56;
	Thu,  3 Oct 2019 19:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0A16EA56
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:24:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 12:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="191358289"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 12:24:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:24:27 +0100
Message-Id: <20191003192444.10113-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003192444.10113-1-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/22] drm/i915: Add memory region
 information to device_info
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
RXhwb3NlcyBhdmFpbGFibGUgcmVnaW9ucyBmb3IgdGhlIHBsYXRmb3JtLiBTaGFyZWQgbWVtb3J5
IHdpbGwKYWx3YXlzIGJlIGF2YWlsYWJsZS4KClNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1
ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggICAgICAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5oIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAzYTMyZjllMDA5MDUuLmY3YjU2YTA3YTAzNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yMTYzLDYgKzIxNjMsOCBAQCBJU19TVUJQTEFURk9S
TShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfSVBD
KGRldl9wcml2KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQogCisj
ZGVmaW5lIEhBU19SRUdJT04oaTkxNSwgaSkgKElOVEVMX0lORk8oaTkxNSktPm1lbW9yeV9yZWdp
b25zICYgKGkpKQorCiAjZGVmaW5lIEhBU19HVF9VQyhkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2
X3ByaXYpLT5oYXNfZ3RfdWMpCiAKIC8qIEhhdmluZyBHdUMgaXMgbm90IHRoZSBzYW1lIGFzIHVz
aW5nIEd1QyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKaW5kZXgg
MGNkYzI0NjU1MzRiLi5lOTk0MGY5MzJkMjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uaApAQCAtMTYwLDYgKzE2MCw4IEBAIHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5m
byB7CiAKIAl1bnNpZ25lZCBpbnQgcGFnZV9zaXplczsgLyogcGFnZSBzaXplcyBzdXBwb3J0ZWQg
YnkgdGhlIEhXICovCiAKKwl1MzIgbWVtb3J5X3JlZ2lvbnM7IC8qIHJlZ2lvbnMgc3VwcG9ydGVk
IGJ5IHRoZSBIVyAqLworCiAJdTMyIGRpc3BsYXlfbW1pb19vZmZzZXQ7CiAKIAl1OCBwaXBlX21h
c2s7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
