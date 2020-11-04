Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BE62A5B68
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 02:00:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9356E921;
	Wed,  4 Nov 2020 01:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBA26E921
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 01:00:04 +0000 (UTC)
IronPort-SDR: 36P8ZSBuObGHcWN7nF2UpCtLX69Q2psZOLK+MzSwL7/Y+aYqg7JJOmd5YSuN2GCKfnoZocCKEF
 t+U3Epe457Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="149000105"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="149000105"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:00:04 -0800
IronPort-SDR: Np0EztuptraTRoN94lqWw9Y57VOUN9rO2wzLIE5KA7AV8jPEa6+MjhQiM+fgGvnEzdYFxLjxsE
 Cr6u9PSlV1Hg==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="471010731"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 17:00:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Nov 2020 03:00:00 +0200
Message-Id: <20201104010000.4165574-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Fix typo during output setup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4IGEgdHlwbyB0aGF0IGxlZCB0byBzb21lIE1TVCBzaG9ydCBwdWxzZSBldmVudCBoYW5kbGlu
ZyBpc3N1ZSAodGhlCnNob3J0IHB1bHNlIGV2ZW50IHdhcyBoYW5kbGVkIGZvciBib3RoIGVuY29k
ZXIgaW5zdGFuY2VzLCBlYWNoIGhhdmluZwppdHMgb3duIHN0YXRlKS4KCkZpeGVzOiAxZDhjYTAw
MjQ1NmI2ICgiZHJtL2k5MTU6IEFkZCBQT1JUX1RDbiBhbGlhc2VzIHRvIGVudW0gcG9ydCIpCkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggY2RkYmRhNTMwM2ZmLi4xOWE0ZDgxNTU4YzUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNzIyMyw3ICsxNzIy
Myw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldHVwX291dHB1dHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCQlpbnRlbF9kZGlfaW5pdChkZXZfcHJpdiwgUE9SVF9CKTsKIAkJ
aW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfVEMxKTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2
X3ByaXYsIFBPUlRfVEMyKTsKLQkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfVEMyKTsK
KwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfVEMzKTsKIAkJaW50ZWxfZGRpX2luaXQo
ZGV2X3ByaXYsIFBPUlRfVEM0KTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfVEM1
KTsKIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfVEM2KTsKLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
