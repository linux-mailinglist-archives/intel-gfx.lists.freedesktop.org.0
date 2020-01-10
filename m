Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5861F137A5F
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2020 00:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA136E154;
	Fri, 10 Jan 2020 23:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B27E6E154
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 23:50:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 15:50:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="212417692"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.163])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2020 15:50:56 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 15:50:45 -0800
Message-Id: <20200110235045.176640-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/vbt: Rename BDB_LVDS_POWER to
 BDB_LFP_POWER
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVuYW1pbmcgdG8gbWF0Y2ggdGhlIEJTcGVjIGFuZCBzdHJ1Y3QgbmFtZS4KCkJTcGVjOiAyMDE1
MApDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgMiArLQogMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCA4YmVhYzA2ZTNmMTAuLjlhODkxZWY3MjExOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTY4Niw3ICs2
ODYsNyBAQCBwYXJzZV9wb3dlcl9jb25zZXJ2YXRpb25fZmVhdHVyZXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAogCWlmIChiZGItPnZlcnNpb24gPCAyMjgpCiAJCXJldHVybjsK
IAotCXBvd2VyID0gZmluZF9zZWN0aW9uKGJkYiwgQkRCX0xWRFNfUE9XRVIpOworCXBvd2VyID0g
ZmluZF9zZWN0aW9uKGJkYiwgQkRCX0xGUF9QT1dFUik7CiAJaWYgKCFwb3dlcikKIAkJcmV0dXJu
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKaW5k
ZXggNGQwYzIzYjI5MjQ4Li4wNWM3Y2JlMzJlYjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKQEAgLTExMSw3ICsxMTEsNyBAQCBlbnVtIGJkYl9i
bG9ja19pZCB7CiAJQkRCX0xWRFNfTEZQX0RBVEFfUFRSUwkJPSA0MSwKIAlCREJfTFZEU19MRlBf
REFUQQkJPSA0MiwKIAlCREJfTFZEU19CQUNLTElHSFQJCT0gNDMsCi0JQkRCX0xWRFNfUE9XRVIJ
CQk9IDQ0LAorCUJEQl9MRlBfUE9XRVIJCQk9IDQ0LAogCUJEQl9NSVBJX0NPTkZJRwkJCT0gNTIs
CiAJQkRCX01JUElfU0VRVUVOQ0UJCT0gNTMsCiAJQkRCX0NPTVBSRVNTSU9OX1BBUkFNRVRFUlMJ
PSA1NiwKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
