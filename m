Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8157FB6FD1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 01:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE237B6CA;
	Wed, 18 Sep 2019 23:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4636F4B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 23:56:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 16:56:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="187924840"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga007.fm.intel.com with ESMTP; 18 Sep 2019 16:56:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 16:56:26 -0700
Message-Id: <20190918235626.3750-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190918235626.3750-1-matthew.d.roper@intel.com>
References: <20190918235626.3750-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Unify ICP and MCC hotplug pin
 tables
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

VGhlIE1DQyBocGQgdGFibGUgaXMganVzdCBhIHN1YnNldCBvZiB0aGUgSUNQIHRhYmxlOyB3ZSBj
YW4gZWxpbWluYXRlIGl0CmFuZCB1c2UgdGhlIElDUCB0YWJsZSBldmVyeXdoZXJlLiAgVGhlIGV4
dHJhIHBpbnMgaW4gdGhlIHRhYmxlIHdvbid0IGJlCmEgcHJvYmxlbSBmb3IgTUNDIHNpbmNlIHdl
IHN0aWxsIHN1cHBseSBhbiBhcHByb3ByaWF0ZSBob3RwbHVnIHRyaWdnZXIKbWFzayBhbnl3aGVy
ZSB0aGUgcGluIHRhYmxlIGlzIHVzZWQuCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDEw
ICsrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggYWU3MjI4MDMyZDJjLi5iYzgzZjA5NDA2
NWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtMTU3LDEyICsxNTcsNiBAQCBzdGF0aWMg
Y29uc3QgdTMyIGhwZF9pY3BbSFBEX05VTV9QSU5TXSA9IHsKIAlbSFBEX1BPUlRfRl0gPSBTREVf
VENfSE9UUExVR19JQ1AoUE9SVF9UQzQpLAogfTsKIAotc3RhdGljIGNvbnN0IHUzMiBocGRfbWNj
W0hQRF9OVU1fUElOU10gPSB7Ci0JW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQ
T1JUX0EpLAotCVtIUERfUE9SVF9CXSA9IFNERV9ERElfSE9UUExVR19JQ1AoUE9SVF9CKSwKLQlb
SFBEX1BPUlRfQ10gPSBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpLAotfTsKLQogc3RhdGlj
IGNvbnN0IHUzMiBocGRfdGdwW0hQRF9OVU1fUElOU10gPSB7CiAJW0hQRF9QT1JUX0FdID0gU0RF
X0RESV9IT1RQTFVHX0lDUChQT1JUX0EpLAogCVtIUERfUE9SVF9CXSA9IFNERV9ERElfSE9UUExV
R19JQ1AoUE9SVF9CKSwKQEAgLTIyNTgsNyArMjI1Miw3IEBAIHN0YXRpYyB2b2lkIGljcF9pcnFf
aGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQog
CX0gZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKSB7CiAJCWRkaV9ob3RwbHVnX3RyaWdn
ZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX1RHUDsKIAkJdGNfaG90cGx1Z190cmlnZ2VyID0g
MDsKLQkJcGlucyA9IGhwZF9tY2M7CisJCXBpbnMgPSBocGRfaWNwOwogCX0gZWxzZSB7CiAJCWRk
aV9ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX0RESV9NQVNLX0lDUDsKIAkJdGNfaG90
cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9UQ19NQVNLX0lDUDsKQEAgLTM0MzQsNyArMzQy
OCw3IEBAIHN0YXRpYyB2b2lkIG1jY19ocGRfaXJxX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAlpY3BfaHBkX2lycV9zZXR1cChkZXZfcHJpdiwKIAkJCSAgU0RFX0RE
SV9NQVNLX1RHUCwgMCwKIAkJCSAgVEdQX0RESV9IUERfRU5BQkxFX01BU0ssIDAsCi0JCQkgIGhw
ZF9tY2MpOworCQkJICBocGRfaWNwKTsKIH0KIAogc3RhdGljIHZvaWQgZ2VuMTFfaHBkX2RldGVj
dGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjIxLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
