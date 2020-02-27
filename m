Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A31710E3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 07:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636B889BF1;
	Thu, 27 Feb 2020 06:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5AA89BF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 06:21:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 22:21:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; d="scan'208";a="272060257"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 26 Feb 2020 22:21:12 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 11:41:11 +0530
Message-Id: <20200227061111.9186-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix kbuild test robot build error
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

Rml4IGtidWlsZCB0ZXN0IHJvYm90IGJ1aWxkIGVycm9yIGZvciBiZWxvdyBjb21taXQKPGQ1NGMx
YTUxM2M0ODdhYzZkNmIzYzQ1OTVlOTNlMzYyNWI0NjFjYzM+LgpoYXNfdHJhbnNjb2RlcigpIHdh
cyB1bnVzZWQgYmVjYXVzZSBmdW5jdGlvbiB3aGljaCB3YXMgdXNpbmcgaXQKaW50ZWxfZGlzcGxh
eV9jYXB0dXJlX2Vycm9yX3N0YXRlKCkgZGVmaW5lZCB1bmRlcgpDT05GSUdfRFJNX0k5MTVfQ0FQ
VFVSRV9FUlJPUi4KTW92aW5nIGhhc190cmFuc2NvZGVyKCkgdG8gdW5kZXIgQ09ORklHX0RSTV9J
OTE1X0NBUFRVUkVfRVJST1IuCk5vIGZ1bmN0aW9uYWwgY2hhbmdlLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJlcG9ydGVkLWJ5OiBrYnVpbGQg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEg
PGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDJmZDNjY2QzM2UzMC4uMjdlYzI0NWUw
ZGQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMjQ5LDE1ICsyNDksNiBAQCBpbnRlbF9mZGlfbGlua19mcmVxKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAkJcmV0dXJuIGRldl9wcml2LT5mZGlfcGxsX2ZyZXE7CiB9CiAK
LXN0YXRpYyBib29sCi1oYXNfdHJhbnNjb2RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKLXsKLQlpZiAoY3B1X3RyYW5z
Y29kZXIgPT0gVFJBTlNDT0RFUl9FRFApCi0JCXJldHVybiBIQVNfVFJBTlNDT0RFUl9FRFAoZGV2
X3ByaXYpOwotCWVsc2UKLQkJcmV0dXJuIElOVEVMX0lORk8oZGV2X3ByaXYpLT5waXBlX21hc2sg
JiBCSVQoY3B1X3RyYW5zY29kZXIpOwotfQotCiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2xp
bWl0IGludGVsX2xpbWl0c19pOHh4X2RhYyA9IHsKIAkuZG90ID0geyAubWluID0gMjUwMDAsIC5t
YXggPSAzNTAwMDAgfSwKIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUxMjAwMCB9
LApAQCAtMTg4MzgsNiArMTg4MjksMTUgQEAgdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1v
dmVfbm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKICNpZiBJU19FTkFCTEVE
KENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SKQogCitzdGF0aWMgYm9vbAoraGFzX3RyYW5z
Y29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHRyYW5zY29kZXIg
Y3B1X3RyYW5zY29kZXIpCit7CisJaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQ
KQorCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRldl9wcml2KTsKKwllbHNlCisJCXJldHVy
biBJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrICYgQklUKGNwdV90cmFuc2NvZGVyKTsK
K30KKwogc3RydWN0IGludGVsX2Rpc3BsYXlfZXJyb3Jfc3RhdGUgewogCiAJdTMyIHBvd2VyX3dl
bGxfZHJpdmVyOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
