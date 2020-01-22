Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31152145B89
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 19:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51E76F636;
	Wed, 22 Jan 2020 18:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1496F6F636
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 18:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 10:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="427496602"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.154])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jan 2020 10:26:50 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 10:26:16 -0800
Message-Id: <20200122182617.18597-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/2] drm/i915/dc3co: Do the full calculation
 of DC3CO exit only once
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

VGhpcyB3aWxsIGNhbGN1bGFldCB0aGUgREMzQ08gZXhpdCBkZWxheSBvbmx5IG9uY2UgcGVyIGZ1
bGwgbW9kZXNldC4KCkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBBbnNo
dW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQW5zaHVt
YW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEwICsrKystLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggN2Y0MDU2MDU3ZjBjLi5mZGQ3ZjkzOTUzYjEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtODAyLDcgKzgwMiw5
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAlkZXZfcHJpdi0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9
IDA7CiAJZGV2X3ByaXYtPnBzci5waXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBp
LmNydGMpLT5waXBlOwogCWRldl9wcml2LT5wc3IuZGMzY29fZW5hYmxlZCA9ICEhY3J0Y19zdGF0
ZS0+ZGMzY29fZXhpdGxpbmU7Ci0JZGV2X3ByaXYtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gaW50
ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19zdGF0ZSk7CisJLyogREM1L0RDNiByZXF1aXJlZCBp
ZGxlIGZyYW1lcyA9IDYgKi8KKwl2YWwgPSB1c2Vjc190b19qaWZmaWVzKGludGVsX2dldF9mcmFt
ZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7CisJZGV2X3ByaXYtPnBzci5kYzNjb19leGl0X2Rl
bGF5ID0gdmFsOwogCWRldl9wcml2LT5wc3IudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90
cmFuc2NvZGVyOwogCiAJLyoKQEAgLTEyNzcsOCArMTI3OSw2IEBAIHN0YXRpYyB2b2lkCiB0Z2xf
ZGMzY29fZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQl1bnNpZ25l
ZCBpbnQgZnJvbnRidWZmZXJfYml0cywgZW51bSBmYl9vcF9vcmlnaW4gb3JpZ2luKQogewotCXUz
MiBkZWxheTsKLQogCW11dGV4X2xvY2soJmRldl9wcml2LT5wc3IubG9jayk7CiAKIAlpZiAoIWRl
dl9wcml2LT5wc3IuZGMzY29fZW5hYmxlZCkKQEAgLTEyOTYsMTAgKzEyOTYsOCBAQCB0Z2xfZGMz
Y29fZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQlnb3RvIHVubG9j
azsKIAogCXRnbF9wc3IyX2VuYWJsZV9kYzNjbyhkZXZfcHJpdik7Ci0JLyogREM1L0RDNiByZXF1
aXJlZCBpZGxlIGZyYW1lcyA9IDYgKi8KLQlkZWxheSA9IDYgKiBkZXZfcHJpdi0+cHNyLmRjM2Nv
X2V4aXRfZGVsYXk7CiAJbW9kX2RlbGF5ZWRfd29yayhzeXN0ZW1fd3EsICZkZXZfcHJpdi0+cHNy
LmlkbGVfd29yaywKLQkJCSB1c2Vjc190b19qaWZmaWVzKGRlbGF5KSk7CisJCQkgZGV2X3ByaXYt
PnBzci5kYzNjb19leGl0X2RlbGF5KTsKIAogdW5sb2NrOgogCW11dGV4X3VubG9jaygmZGV2X3By
aXYtPnBzci5sb2NrKTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
