Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63762C8ED4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17E056E83F;
	Mon, 30 Nov 2020 20:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A516E837
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:27 +0000 (UTC)
IronPort-SDR: y6XEwWZoPRDvN+lv5IhGbit4WJF+dXtSp5iaXIVXhuAPKxsVZyka3RvcF5Io0QMt4G/1tJxfH5
 1VxkR4WBlGjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892968"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892968"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:19 -0800
IronPort-SDR: r3P/V+Aofh+6FMCaE6A32JVApvUi1BIfLIE29JJiyUhJJAz3Vh7d0m5PruKYPg35RcJ571B+MG
 Yr431VjGxI0A==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472350"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:18 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:33 +0530
Message-Id: <20201130204738.2443-11-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 10/15] drm/i915/display: Enable HDR for Parade
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
