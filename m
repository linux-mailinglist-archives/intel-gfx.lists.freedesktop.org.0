Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E361E6BD3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 22:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490C96E5C1;
	Thu, 28 May 2020 20:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA4F6E5C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 20:02:59 +0000 (UTC)
IronPort-SDR: fB5fJe1GR7KCStIOsYW4OJmGC7D3H8pNLydH9ZP2g6ZKSb7xeHejnaX5oukLva3kU6FWG0vuTy
 oR7I8HuwIIMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 13:02:59 -0700
IronPort-SDR: TBF2tYAiII+Ow/Z6DmRzibFLid+g+zy9Q0X90qLWWaovul4Ew4MfYn/m39VBSiY3iDDE8+gs2e
 lb/4H4y5df2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="469258895"
Received: from jmcenteg-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.255.69.53])
 by fmsmga006.fm.intel.com with ESMTP; 28 May 2020 13:02:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 13:03:56 -0700
Message-Id: <20200528200356.36756-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528200356.36756-1-jose.souza@intel.com>
References: <20200528200356.36756-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Enable HOBL regardless
 the VBT value
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

SE9CTCB3b3JrZWQgaW4gbXkgVEdMIFJWUCBldmVuIHdpdGhvdXQgdGhlIG5lY2Vzc2FyeSBIVyBz
dXBwb3J0LCBhbHNvCml0IHdvcmtlZCBpbiBtb3JlIHRoYW4gaGFsZiBvZiB0aGUgVEdMIG1hY2hp
bmVzIGluIENJIHNvIGl0IGlzIHdvcnRoeQp0byBlbmFibGUgaXQgYnkgZGVmYXVsdC4KRXZlbiBp
ZiBsaW5rIHRyYWluaW5nIGZhaWxzIHdpdGggdGhpcyBuZXcgdnN3aW5nIHRhYmxlIGl0IHdpbGwg
b25seQpjYXVzZSBvbmUgYWRkaXRpb25hbCBsaW5rIHRyYWluaW5nLCB0aGF0IGlzIHdvcnRoeSB0
aGUgdHJ5IHRvIGdldCB0aGUKYWRkaXRpb25hbCBwb3dlci1zYXZpbmdzLgoKU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5j
CmluZGV4IGRiMDc4NzgwNTQyZi4uODZkZTExODdkMzYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwpAQCAtMTA4LDcg
KzEwOCw3IEBAIGludGVsX2RwX3Jlc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwgdTggZHBfdHJhaW5fcGF0KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCi0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkgJiYgZGV2X3ByaXYtPnZidC5lZHAuaG9ibCkKKwlpZiAoSEFTX0hPQkwoZGV2X3ByaXYp
ICYmIGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCiAJCWludGVsX2RwLT50cnlfaG9ibCA9IHRy
dWU7CiAKIAltZW1zZXQoaW50ZWxfZHAtPnRyYWluX3NldCwgMCwgc2l6ZW9mKGludGVsX2RwLT50
cmFpbl9zZXQpKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
