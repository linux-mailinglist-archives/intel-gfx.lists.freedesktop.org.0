Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A0F2642DF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 11:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BAB6E8DF;
	Thu, 10 Sep 2020 09:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097C96E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 09:52:31 +0000 (UTC)
IronPort-SDR: /dq33ScURRfH1RYeKYAk1FAcvBLaj9F4QRBrYPyUPa2udbbw+W9XJm/0Tkrm97ilywGaWfWZrG
 o03mC1U2LX5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="155961983"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="155961983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:52:30 -0700
IronPort-SDR: rRo4O1edNy6/Awby7J0N/S4C71qSCY15su6AQCW0amkXA+jzlWXmyDIU+SLeb7AwHKorVyHdd1
 1GH5qwKG3FLA==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="480827445"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:52:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 12:52:25 +0300
Message-Id: <20200910095227.9466-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: disable all display features when
 no display
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzYWJsZSBhbGwgZGlzcGxheSBmZWF0dXJlIGZsYWdzIHdoZW4gdGhlcmUgYXJlIG5vIHBpcGVz
IGkuZS4gdGhlcmUgaXMKbm8gZGlzcGxheS4gVGhpcyBzaG91bGQgaGVscCB3aXRoIG5vdCBoYXZp
bmcgdG8gYWRkaXRpb25hbGx5IGNoZWNrIGZvcgpIQVNfRElTUExBWSgpIHdoZW4gYSBmZWF0dXJl
IGZsYWcgY2hlY2sgd291bGQgc3VmZmljZS4KCkFsc28gZGlzYWJsZSBtb2Rlc2V0IGFuZCBhdG9t
aWMgZHJpdmVyIGZlYXR1cmVzLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8
IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCBlMmFhNWJjM2E2ZTAuLmFkYzgzNmYx
NWZkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC01MTYs
NiArNTE2LDE0IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCQkJICAgIFMzMl9NQVgpLAogCQkJCVVTRUNf
UEVSX1NFQykpOwogCX0KKworCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSB7CisJCWRldl9w
cml2LT5kcm0uZHJpdmVyX2ZlYXR1cmVzICY9IH4oRFJJVkVSX01PREVTRVQgfAorCQkJCQkJICAg
RFJJVkVSX0FUT01JQyk7CisJCW1lbXNldCgmaW5mby0+ZGlzcGxheSwgMCwgc2l6ZW9mKGluZm8t
PmRpc3BsYXkpKTsKKwkJbWVtc2V0KHJ1bnRpbWUtPm51bV9zcHJpdGVzLCAwLCBzaXplb2YocnVu
dGltZS0+bnVtX3Nwcml0ZXMpKTsKKwkJbWVtc2V0KHJ1bnRpbWUtPm51bV9zY2FsZXJzLCAwLCBz
aXplb2YocnVudGltZS0+bnVtX3NjYWxlcnMpKTsKKwl9CiB9CiAKIHZvaWQgaW50ZWxfZHJpdmVy
X2NhcHNfcHJpbnQoY29uc3Qgc3RydWN0IGludGVsX2RyaXZlcl9jYXBzICpjYXBzLAotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
