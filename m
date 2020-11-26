Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDF32C5CFF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D5F6EAC2;
	Thu, 26 Nov 2020 20:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59276EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:29:59 +0000 (UTC)
IronPort-SDR: kphTfqvR3KiIPxPwHg80SJ6XDJcFHJFY7ArwvnSbrRdk5IdEBXFPn8gMjK+oh76Iyw+B7niHND
 KdYuAEdz+FlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171543152"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="171543152"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:59 -0800
IronPort-SDR: 5ju/XrCxUcs9ZBGWALn/AZhinHxA0W9zOoIJE6kECc/u110pk4KyjVCf4fHuOlhxVUvcwlCwPt
 hwaX/gr8PjxQ==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479459539"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:57 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 02:33:09 +0530
Message-Id: <20201126210314.7882-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v12 10/15] drm/i915/display: Enable HDR for Parade
 based lspcon
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
Cc: Vipin Anand <vipin.anand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxlIEhEUiBmb3IgTFNQQ09OIGJhc2VkIG9uIFBhcmFkZSBhbG9uZyB3aXRoIE1DQS4KCnYy
OiBBZGRlZCBhIGhlbHBlciBmb3Igc3RhdHVzIHJlZyBhcyBzdWdnZXN0ZWQgYnkgVmlsbGUuCgp2
MzogUmVtb3ZlZCBhIHJlZHVuZGFudCB2YXJpYWJsZSwgYWRkZWQgVmlsbGUncyBSQi4KClNpZ25l
ZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IFZpcGluIEFuYW5kIDx2aXBpbi5hbmFuZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgfCAxNyArKysrKysrKysrKy0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKaW5kZXggY2I3NjhhMWFl
NGM5Li41OTJjMTlkZWJhMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHNwY29uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sc3Bjb24uYwpAQCAtMzYsNiArMzYsNyBAQAogI2RlZmluZSBMU1BDT05fVkVORE9SX01DQV9P
VUkgMHgwMDYwQUQKIAogI2RlZmluZSBEUENEX01DQV9MU1BDT05fSERSX1NUQVRVUwkweDcwMDAz
CisjZGVmaW5lIERQQ0RfUEFSQURFX0xTUENPTl9IRFJfU1RBVFVTCTB4MDA1MTEKIAogLyogQVVY
IGFkZHJlc3NlcyB0byB3cml0ZSBNQ0EgQVZJIElGICovCiAjZGVmaW5lIExTUENPTl9NQ0FfQVZJ
X0lGX1dSSVRFX09GRlNFVCAweDVDMApAQCAtMTA2LDYgKzEwNywxNCBAQCBzdGF0aWMgYm9vbCBs
c3Bjb25fZGV0ZWN0X3ZlbmRvcihzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJcmV0dXJu
IHRydWU7CiB9CiAKK3N0YXRpYyB1MzIgZ2V0X2hkcl9zdGF0dXNfcmVnKHN0cnVjdCBpbnRlbF9s
c3Bjb24gKmxzcGNvbikKK3sKKwlpZiAobHNwY29uLT52ZW5kb3IgPT0gTFNQQ09OX1ZFTkRPUl9N
Q0EpCisJCXJldHVybiBEUENEX01DQV9MU1BDT05fSERSX1NUQVRVUzsKKwllbHNlCisJCXJldHVy
biBEUENEX1BBUkFERV9MU1BDT05fSERSX1NUQVRVUzsKK30KKwogdm9pZCBsc3Bjb25fZGV0ZWN0
X2hkcl9jYXBhYmlsaXR5KHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKIHsKIAlzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9CkBAIC0xMTUsMTIgKzEyNCw4IEBAIHZvaWQg
bHNwY29uX2RldGVjdF9oZHJfY2FwYWJpbGl0eShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24p
CiAJdTggaGRyX2NhcHM7CiAJaW50IHJldDsKIAotCS8qIEVuYWJsZSBIRFIgZm9yIE1DQSBiYXNl
ZCBMU1BDT04gZGV2aWNlcyAqLwotCWlmIChsc3Bjb24tPnZlbmRvciA9PSBMU1BDT05fVkVORE9S
X01DQSkKLQkJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZCgmZHAtPmF1eCwgRFBDRF9NQ0FfTFNQQ09O
X0hEUl9TVEFUVVMsCi0JCQkJICAgICAgICZoZHJfY2FwcywgMSk7Ci0JZWxzZQotCQlyZXR1cm47
CisJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZCgmZHAtPmF1eCwgZ2V0X2hkcl9zdGF0dXNfcmVnKGxz
cGNvbiksCisJCQkgICAgICAgJmhkcl9jYXBzLCAxKTsKIAogCWlmIChyZXQgPCAwKSB7CiAJCWRy
bV9kYmdfa21zKGRldiwgIkhEUiBjYXBhYmlsaXR5IGRldGVjdGlvbiBmYWlsZWRcbiIpOwotLSAK
Mi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
