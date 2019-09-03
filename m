Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F255A73BB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C1D89817;
	Tue,  3 Sep 2019 19:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08248981B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:33:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:33:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="176693409"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2019 12:33:12 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 00:52:54 +0530
Message-Id: <1567538578-4489-5-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v10][PATCH 4/8] drm/i915/display: Add macro to compare
 gamma hw/sw lut
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG1hY3JvIHRvIGNvbXBhcmUgaHcvc3cgZ2FtbWEgbHV0IHZhbHVlcy4gRmlyc3QgbmVlZCB0
bwpjaGVjayB3aGV0aGVyIGh3L3N3IGdhbW1hIG1vZGUgbWF0Y2hlcyBvciBub3QuIElmIG5vdApu
byBuZWVkIHRvIGNvbXBhcmUgbHV0IHZhbHVlcywgaWYgbWF0Y2hlcyB0aGVuIG9ubHkgY29tcGFy
ZQpsdXQgZW50cmllcy4KCnY1OiAtQ2FsbGVkIFBJUEVfQ09ORl9DSEVDS19DT0xPUl9MVVQgaW5z
aWRlIGlmICghYWRqdXN0KSBbSmFuaV0KICAgIC1BZGRlZCAjdW5kZWYgUElQRV9DT05GX0NIRUNL
X0NPTE9SX0xVVCBbSmFuaV0Kdjg6IC1BZGRlZCBjaGVjayBmb3IgZ2FtbWEgbW9kZSBiZWZvcmUg
Z2FtbWEgbHV0IGVudHJ5IGNvbXBhcmlzb24KICAgICBbSmFuaV0KICAgIC1TcGxpdCBwYXRjaCAz
IGludG8gNCBwYXRjaGVzCgpTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFy
bWFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCBmOWMwODQyLi43NzZiMzY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI1MjksNiArMTI1MjksNyBAQCBzdGF0aWMgYm9vbCBmYXN0
Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGN1cnJlbnRfY29uZmlnLT5i
YXNlLmNydGMtPmRldik7CiAJYm9vbCByZXQgPSB0cnVlOworCXUzMiBicF9nYW1tYSA9IDA7CiAJ
Ym9vbCBmaXh1cF9pbmhlcml0ZWQgPSBmYXN0c2V0ICYmCiAJCShjdXJyZW50X2NvbmZpZy0+YmFz
ZS5tb2RlLnByaXZhdGVfZmxhZ3MgJiBJOTE1X01PREVfRkxBR19JTkhFUklURUQpICYmCiAJCSEo
cGlwZV9jb25maWctPmJhc2UubW9kZS5wcml2YXRlX2ZsYWdzICYgSTkxNV9NT0RFX0ZMQUdfSU5I
RVJJVEVEKTsKQEAgLTEyNjgwLDYgKzEyNjgxLDI0IEBAIHN0YXRpYyBib29sIGZhc3Rib290X2Vu
YWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCX0gXAogfSB3aGlsZSAo
MCkKIAorI2RlZmluZSBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVUKG5hbWUxLCBuYW1lMiwgYml0
X3ByZWNpc2lvbikgZG8geyBcCisJaWYgKGN1cnJlbnRfY29uZmlnLT5uYW1lMSAhPSBwaXBlX2Nv
bmZpZy0+bmFtZTEpIHsgXAorCQlwaXBlX2NvbmZpZ19taXNtYXRjaChmYXN0c2V0LCBfX3N0cmlu
Z2lmeShuYW1lMSksIFwKKwkJCQkiKGV4cGVjdGVkICVpLCBmb3VuZCAlaSwgd29uJ3QgY29tcGFy
ZSBsdXQgdmFsdWVzKVxuIiwgXAorCQkJCWN1cnJlbnRfY29uZmlnLT5uYW1lMSwgXAorCQkJCXBp
cGVfY29uZmlnLT5uYW1lMSk7IFwKKwkJcmV0ID0gZmFsc2U7XAorCX0gZWxzZSB7IFwKKwkJaWYg
KCFpbnRlbF9jb2xvcl9sdXRfZXF1YWwoY3VycmVudF9jb25maWctPm5hbWUyLCBcCisJCQkJCXBp
cGVfY29uZmlnLT5uYW1lMiwgcGlwZV9jb25maWctPm5hbWUxLCBcCisJCQkJCWJpdF9wcmVjaXNp
b24pKSB7IFwKKwkJCXBpcGVfY29uZmlnX21pc21hdGNoKGZhc3RzZXQsIF9fc3RyaW5naWZ5KG5h
bWUyKSwgXAorCQkJCQkiaHdfc3RhdGUgZG9lc24ndCBtYXRjaCBzd19zdGF0ZVxuIik7IFwKKwkJ
CXJldCA9IGZhbHNlOyBcCisJCX0gXAorCX0gXAorfSB3aGlsZSAoMCkKKwogI2RlZmluZSBQSVBF
X0NPTkZfUVVJUksocXVpcmspIFwKIAkoKGN1cnJlbnRfY29uZmlnLT5xdWlya3MgfCBwaXBlX2Nv
bmZpZy0+cXVpcmtzKSAmIChxdWlyaykpCiAKQEAgLTEyNzc1LDYgKzEyNzk0LDExIEBAIHN0YXRp
YyBib29sIGZhc3Rib290X2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQkJUElQRV9DT05GX0NIRUNLX1goY3NjX21vZGUpOwogCQlQSVBFX0NPTkZfQ0hFQ0tfQk9P
TChnYW1tYV9lbmFibGUpOwogCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChjc2NfZW5hYmxlKTsKKwor
CQlicF9nYW1tYSA9IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKHBpcGVfY29u
ZmlnKTsKKwkJaWYgKGJwX2dhbW1hKQorCQkJUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVChnYW1t
YV9tb2RlLCBiYXNlLmdhbW1hX2x1dCwgYnBfZ2FtbWEpOworCiAJfQogCiAJUElQRV9DT05GX0NI
RUNLX0JPT0woZG91YmxlX3dpZGUpOwpAQCAtMTI4MzcsNiArMTI4NjEsNyBAQCBzdGF0aWMgYm9v
bCBmYXN0Ym9vdF9lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICN1
bmRlZiBQSVBFX0NPTkZfQ0hFQ0tfUAogI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19GTEFHUwogI3Vu
ZGVmIFBJUEVfQ09ORl9DSEVDS19DTE9DS19GVVpaWQorI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19D
T0xPUl9MVVQKICN1bmRlZiBQSVBFX0NPTkZfUVVJUksKIAogCXJldHVybiByZXQ7Ci0tIAoxLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
