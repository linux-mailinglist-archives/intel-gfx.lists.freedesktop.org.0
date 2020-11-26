Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FC22C4F9F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E8D6E7F1;
	Thu, 26 Nov 2020 07:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0465B6E7F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:28 +0000 (UTC)
IronPort-SDR: qqBO/Z3ja0I5X2DUbmFUSX82ZO+FAC6jf/ecrhhr/FAZYeCFVdqMq5nnt9y0FqZ59NFIwZL8Sb
 jr0QSDJ5Y1Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741373"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:28 -0800
IronPort-SDR: zyH745d0EtXkP9iLUre8V6f8WDP7SuoudoNgjb5eryDL3u5DxXslqGizoKYVweYaUhuJLWk67A
 V6HvSJeVJYPw==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448113"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:26 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:40 +0530
Message-Id: <20201126081445.29759-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 08/13] drm/i915/display: Enable HDR for Parade
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
ZSBTeXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgfCAxNyArKysrKysrKysrKy0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKaW5kZXggZjZmNThhOTkxZTdh
Li4xZDNkZmZhZGUxNjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHNwY29uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9s
c3Bjb24uYwpAQCAtMzYsNiArMzYsNyBAQAogI2RlZmluZSBMU1BDT05fVkVORE9SX01DQV9PVUkg
MHgwMDYwQUQKIAogI2RlZmluZSBEUENEX01DQV9MU1BDT05fSERSX1NUQVRVUwkweDcwMDAzCisj
ZGVmaW5lIERQQ0RfUEFSQURFX0xTUENPTl9IRFJfU1RBVFVTCTB4MDA1MTEKIAogLyogQVVYIGFk
ZHJlc3NlcyB0byB3cml0ZSBNQ0EgQVZJIElGICovCiAjZGVmaW5lIExTUENPTl9NQ0FfQVZJX0lG
X1dSSVRFX09GRlNFVCAweDVDMApAQCAtMTA2LDYgKzEwNywxNCBAQCBzdGF0aWMgYm9vbCBsc3Bj
b25fZGV0ZWN0X3ZlbmRvcihzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJcmV0dXJuIHRy
dWU7CiB9CiAKK3N0YXRpYyB1MzIgZ2V0X2hkcl9zdGF0dXNfcmVnKHN0cnVjdCBpbnRlbF9sc3Bj
b24gKmxzcGNvbikKK3sKKwlpZiAobHNwY29uLT52ZW5kb3IgPT0gTFNQQ09OX1ZFTkRPUl9NQ0Ep
CisJCXJldHVybiBEUENEX01DQV9MU1BDT05fSERSX1NUQVRVUzsKKwllbHNlCisJCXJldHVybiBE
UENEX1BBUkFERV9MU1BDT05fSERSX1NUQVRVUzsKK30KKwogdm9pZCBsc3Bjb25fZGV0ZWN0X2hk
cl9jYXBhYmlsaXR5KHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKIHsKIAlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9CkBAIC0xMTUsMTIgKzEyNCw4IEBAIHZvaWQgbHNw
Y29uX2RldGVjdF9oZHJfY2FwYWJpbGl0eShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJ
dTggaGRyX2NhcHM7CiAJaW50IHJldDsKIAotCS8qIEVuYWJsZSBIRFIgZm9yIE1DQSBiYXNlZCBM
U1BDT04gZGV2aWNlcyAqLwotCWlmIChsc3Bjb24tPnZlbmRvciA9PSBMU1BDT05fVkVORE9SX01D
QSkKLQkJcmV0ID0gZHJtX2RwX2RwY2RfcmVhZCgmZHAtPmF1eCwgRFBDRF9NQ0FfTFNQQ09OX0hE
Ul9TVEFUVVMsCi0JCQkJICAgICAgICZoZHJfY2FwcywgMSk7Ci0JZWxzZQotCQlyZXR1cm47CisJ
cmV0ID0gZHJtX2RwX2RwY2RfcmVhZCgmZHAtPmF1eCwgZ2V0X2hkcl9zdGF0dXNfcmVnKGxzcGNv
biksCisJCQkgICAgICAgJmhkcl9jYXBzLCAxKTsKIAogCWlmIChyZXQgPCAwKSB7CiAJCWRybV9k
Ymdfa21zKGRldiwgIkhEUiBjYXBhYmlsaXR5IGRldGVjdGlvbiBmYWlsZWRcbiIpOwotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
