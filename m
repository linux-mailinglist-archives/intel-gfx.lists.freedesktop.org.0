Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9901725D1
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB3B6E8DA;
	Thu, 27 Feb 2020 18:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D01346E8DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:00:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 10:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="232271481"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2020 10:00:05 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 23:21:47 +0530
Message-Id: <20200227175147.11362-1-anshuman.gupta@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZXM6IGQ1NGMxYTUxM2M0OCAoImRybS9pOTE1OiBGaXggYnJva2VuIHRyYW5zY29kZXIgZXJy
IHN0YXRlIikKaGFzX3RyYW5zY29kZXIoKSB3YXMgdW51c2VkIGJlY2F1c2UgZnVuY3Rpb24gd2hp
Y2ggd2FzIHVzaW5nIGl0LAppbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jfc3RhdGUoKSBkZWZp
bmVkIHVuZGVyCkNPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SLgpNb3ZpbmcgaGFzX3RyYW5z
Y29kZXIoKSB0byB1bmRlciBDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9FUlJPUi4KTm8gZnVuY3Rp
b25hbCBjaGFuZ2UuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsrKysrKysrKy0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDJm
ZDNjY2QzM2UzMC4uMjdlYzI0NWUwZGQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMjQ5LDE1ICsyNDksNiBAQCBpbnRlbF9mZGlfbGlua19m
cmVxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJcmV0dXJuIGRldl9wcml2
LT5mZGlfcGxsX2ZyZXE7CiB9CiAKLXN0YXRpYyBib29sCi1oYXNfdHJhbnNjb2RlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
cikKLXsKLQlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApCi0JCXJldHVybiBI
QVNfVFJBTlNDT0RFUl9FRFAoZGV2X3ByaXYpOwotCWVsc2UKLQkJcmV0dXJuIElOVEVMX0lORk8o
ZGV2X3ByaXYpLT5waXBlX21hc2sgJiBCSVQoY3B1X3RyYW5zY29kZXIpOwotfQotCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2xpbWl0IGludGVsX2xpbWl0c19pOHh4X2RhYyA9IHsKIAkuZG90
ID0geyAubWluID0gMjUwMDAsIC5tYXggPSAzNTAwMDAgfSwKIAkudmNvID0geyAubWluID0gOTA4
MDAwLCAubWF4ID0gMTUxMjAwMCB9LApAQCAtMTg4MzgsNiArMTg4MjksMTUgQEAgdm9pZCBpbnRl
bF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmVfbm9pcnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAKICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SKQogCitz
dGF0aWMgYm9vbAoraGFzX3RyYW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCit7CisJaWYgKGNwdV90cmFuc2Nv
ZGVyID09IFRSQU5TQ09ERVJfRURQKQorCQlyZXR1cm4gSEFTX1RSQU5TQ09ERVJfRURQKGRldl9w
cml2KTsKKwllbHNlCisJCXJldHVybiBJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrICYg
QklUKGNwdV90cmFuc2NvZGVyKTsKK30KKwogc3RydWN0IGludGVsX2Rpc3BsYXlfZXJyb3Jfc3Rh
dGUgewogCiAJdTMyIHBvd2VyX3dlbGxfZHJpdmVyOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
