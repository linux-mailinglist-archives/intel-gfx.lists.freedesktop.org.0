Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B551ED704
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 21:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2313789B98;
	Wed,  3 Jun 2020 19:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D7789AF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 19:41:53 +0000 (UTC)
IronPort-SDR: m6kYP3KOLbMPdyQepqPIRQJySyvtr+0KLAFnmsLDlblth8N5r9xnsQF8J/Mzhs67ylB+WBftuA
 aXbqAiAifY6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 12:41:52 -0700
IronPort-SDR: Ye5QUz4g8fmEXae+OahUo+/OZBlSqwNjovxqX382xTmGpCgM2f4XanMsPC4FYShzaefDoy9NnD
 DN7hmt7/s9Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="294083543"
Received: from psethi-desk2.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.182.158])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 12:41:52 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 12:43:08 -0700
Message-Id: <20200603194308.78622-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200603194308.78622-1-jose.souza@intel.com>
References: <20200603194308.78622-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: Enable HOBL regardless
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
CmluZGV4IDg4ZjM2NmJiMjhkNy4uMTNmN2JjMGE0YmMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwpAQCAtMTE5LDcg
KzExOSw3IEBAIGludGVsX2RwX3Jlc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwgdTggZHBfdHJhaW5fcGF0KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCi0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkgJiYgZGV2X3ByaXYtPnZidC5lZHAuaG9ibCkKKwlpZiAoSEFTX0hPQkwoZGV2X3ByaXYp
ICYmIGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCiAJCWludGVsX2RwLT50cnlfaG9ibCA9IHRy
dWU7CiAKIAltZW1zZXQoaW50ZWxfZHAtPnRyYWluX3NldCwgMCwgc2l6ZW9mKGludGVsX2RwLT50
cmFpbl9zZXQpKTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
