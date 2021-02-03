Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA2330D991
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 13:12:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E557E89DA7;
	Wed,  3 Feb 2021 12:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C7589D89
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 12:12:06 +0000 (UTC)
IronPort-SDR: JKSCaPSEVvatGqvA2462YRDrG/z0+wQWy0G3OlHptBoDRopb61AXKQQQZIv1qTC/1jWnmTzsmA
 3gDCqEq8j46g==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160196286"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="160196286"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:03 -0800
IronPort-SDR: U/91DQJTY+KRcmjG5iVcGfnrDrrh/Vhw63OeDDRfvBF4zg6lt6SBIukY2b5vdbofTKRMhjg7lj
 Tl7tQRSfgxug==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="372359024"
Received: from mcampone-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.21.36])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 04:12:01 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Feb 2021 12:11:16 +0000
Message-Id: <20210203121119.481146-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Distinction of memory regions
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
dGUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIGRldmljZQpsb2NhbC1tZW1vcnkuCgpTaWduZWQtb2Zm
LWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgfCAyICsrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZWdpb25fbG1lbS5jIHwgMiAtLQogMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMKaW5kZXggMzVmZjY4YWRhNGYxLi5jYTc2ZjkzYmMwM2QgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwpAQCAtNjgsNiArNjgsOCBAQCBpbnQgaW50ZWxfZ3RfcHJv
YmVfbG1lbShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCW1lbS0+dHlwZSA9IElOVEVMX01FTU9SWV9M
T0NBTDsKIAltZW0tPmluc3RhbmNlID0gMDsKIAorCWludGVsX21lbW9yeV9yZWdpb25fc2V0X25h
bWUobWVtLCAibG9jYWwldSIsIG1lbS0+aW5zdGFuY2UpOworCiAJR0VNX0JVR19PTighSEFTX1JF
R0lPTihpOTE1LCBpZCkpOwogCUdFTV9CVUdfT04oaTkxNS0+bW0ucmVnaW9uc1tpZF0pOwogCWk5
MTUtPm1tLnJlZ2lvbnNbaWRdID0gbWVtOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JlZ2lvbl9sbWVtLmMKaW5kZXggOGM0OThlOTZiMDFkLi5iZTZmMmM4ZjUxODQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYwpAQCAtOTAsOCArOTAsNiBA
QCByZWdpb25fbG1lbV9pbml0KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCiAJaWYg
KHJldCkKIAkJaW9fbWFwcGluZ19maW5pKCZtZW0tPmlvbWFwKTsKIAotCWludGVsX21lbW9yeV9y
ZWdpb25fc2V0X25hbWUobWVtLCAibG9jYWwiKTsKLQogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIu
MjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
