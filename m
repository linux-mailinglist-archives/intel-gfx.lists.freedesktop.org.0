Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CE72097A0
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFD26E8E7;
	Thu, 25 Jun 2020 00:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B826E8E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:27:41 +0000 (UTC)
IronPort-SDR: j0IXXzhOjF/Cn0XEzU5dQMJtz4Wma8y5YDbIdR4yYeRUm2Ch5up56jlcnZXiHUpYPFfLU2luiX
 aaRwG47UOUMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="209819701"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="209819701"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:27:41 -0700
IronPort-SDR: 73/iqVz9LkXEBIFnpKur0sMyOq7bIOrbD5aqnUmL+K0Z5oQqcQEODWiFSKIKBB90vDf1D/6yMt
 O+J0I6cnlPTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="294241755"
Received: from thivyajx-mobl.gar.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.155.111])
 by orsmga007.jf.intel.com with ESMTP; 24 Jun 2020 17:27:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:29:06 -0700
Message-Id: <20200625002906.116594-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200625002906.116594-1-jose.souza@intel.com>
References: <20200625002906.116594-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/display: Enable HOBL regardless
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
