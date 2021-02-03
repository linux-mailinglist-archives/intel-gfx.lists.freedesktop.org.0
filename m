Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBF130DC56
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 15:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E186EAD2;
	Wed,  3 Feb 2021 14:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF8E6EAD2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 14:13:26 +0000 (UTC)
IronPort-SDR: njA0GfQOi/3QVuGEZXIVubUaHHLdXJziz2TxT4ojEISaOzMFyw5z8OhV2tXL9BHzbMpTriNmYQ
 o4jaENqWBTRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242557014"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="242557014"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 06:13:25 -0800
IronPort-SDR: j4LLMDsSPJLtnPP6LK1V/e1gDGJpG3ax7za9VyGdqH6CiEa79HZlq3Tqy8z0H6yBtcpIWqti0p
 4ueG924exyYQ==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="371494214"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 06:13:23 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 14:13:11 +0000
Message-Id: <20210203141313.498462-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Distinction of memory regions
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5j
b20+CgpJbiBwcmVwYXJhdGlvbiBmb3IgWGUgSFAgbXVsdGktdGlsZSBhcmNoaXRlY3R1cmUgd2l0
aCBtdWx0aXBsZSBtZW1vcnkKcmVnaW9ucywgd2UgbmVlZCB0byBiZSBhYmxlIGRpZmZlcmVudGlh
dGUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIGRldmljZQpsb2NhbC1tZW1vcnkuCgpOb3RlIHRoYXQg
dGhlIHJlZ2lvbiBuYW1lIGlzIGp1c3QgdG8gZ2l2ZSBpdCBhIGh1bWFuIGZyaWVuZGx5CmlkZW50
aWZpZXIsIGluc3RlYWQgb2YgdXNpbmcgY2xhc3MvaW5zdGFuY2Ugd2hpY2ggYWxzbyB1bmlxdWVs
eQppZGVudGlmaWVzIHRoZSByZWdpb24uIFNvIGZhciB0aGUgcmVnaW9uIG5hbWUgaXMgb25seSBm
b3Igb3VyIG93bgppbnRlcm5hbCBkZWJ1Z2dpbmcgaW4gdGhlIGtlcm5lbChsaWtlIGluIHRoZSBz
ZWxmdGVzdHMpLCBvciBkZWJ1Z2ZzCndoaWNoIHByaW50cyB0aGUgbGlzdCBvZiByZWdpb25zLCBp
bmNsdWRpbmcgdGhlIHJlZ2lvbnMgbmFtZS4KCnYyOiBhZGQgY29tbWVudGFyeSBmb3Igb3VyIGN1
cnJlbnQgcmVnaW9uIG5hbWUgdXNlCgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRz
a2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMgICAgICAgICAgfCAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZWdpb25fbG1lbS5jIHwgMiAtLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKaW5kZXggMzVm
ZjY4YWRhNGYxLi5jYTc2ZjkzYmMwM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwpA
QCAtNjgsNiArNjgsOCBAQCBpbnQgaW50ZWxfZ3RfcHJvYmVfbG1lbShzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KQogCW1lbS0+dHlwZSA9IElOVEVMX01FTU9SWV9MT0NBTDsKIAltZW0tPmluc3RhbmNlID0g
MDsKIAorCWludGVsX21lbW9yeV9yZWdpb25fc2V0X25hbWUobWVtLCAibG9jYWwldSIsIG1lbS0+
aW5zdGFuY2UpOworCiAJR0VNX0JVR19PTighSEFTX1JFR0lPTihpOTE1LCBpZCkpOwogCUdFTV9C
VUdfT04oaTkxNS0+bW0ucmVnaW9uc1tpZF0pOwogCWk5MTUtPm1tLnJlZ2lvbnNbaWRdID0gbWVt
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMKaW5kZXggOGM0
OThlOTZiMDFkLi5iZTZmMmM4ZjUxODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVnaW9uX2xtZW0uYwpAQCAtOTAsOCArOTAsNiBAQCByZWdpb25fbG1lbV9pbml0KHN0cnVj
dCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCiAJaWYgKHJldCkKIAkJaW9fbWFwcGluZ19maW5p
KCZtZW0tPmlvbWFwKTsKIAotCWludGVsX21lbW9yeV9yZWdpb25fc2V0X25hbWUobWVtLCAibG9j
YWwiKTsKLQogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
