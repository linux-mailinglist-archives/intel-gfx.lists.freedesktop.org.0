Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33E46C330
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 00:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6146E2B6;
	Wed, 17 Jul 2019 22:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4146E2B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 22:37:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 15:37:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="169681745"
Received: from dk-chv.jf.intel.com ([10.54.75.59])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jul 2019 15:37:10 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 15:34:51 -0700
Message-Id: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: stable@vger.kernel.org, Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVybiBmaWVsZCBmb2xsb3dzIHRoZSBz
aXh0ZWVuIGVsZW1lbnQKYXJyYXkgb2YgUFNSIHRhYmxlIGVudHJpZXMgaW4gdGhlIFZCVCBzcGVj
LiBCdXQsIHdlIGluY29ycmVjdGx5IGRlZmluZQp0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2Yg
dGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhlIFBTUjEKdHJhaW5pbmcgcGF0
dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNlZAppbmNv
cnJlY3RseS4gU2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbnMgZm9yIFZC
VHMgd2l0aCBiZGIKdmVyc2lvbiA+PSAyMjYgd2lsbCBhbHNvIGJlIHdyb25nLgoKQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZyAjdjUuMgpGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5
MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8zIHdha2V1
cCB0aW1lIikKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTA4OApCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3df
YnVnLmNnaT9pZD0yMDQxODMKU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhp
bmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkFja2VkLWJ5OiBSb2RyaWdvIFZpdmkg
PHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClRlc3RlZC1ieTogRnJhbsOnb2lzIEd1ZXJyYXogPGt1
YnJpY2tAZmd2Ni5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRf
ZGVmcy5oIHwgNiArKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5k
ZXggMjE1MDFkNTY1MzI3Li5iNDE2YjM5NGI2NDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCkBAIC03NjYsNyArNzY2LDcgQEAgcGFyc2VfcHNyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikK
IAl9CiAKIAlpZiAoYmRiLT52ZXJzaW9uID49IDIyNikgewotCQl1MzIgd2FrZXVwX3RpbWUgPSBw
c3JfdGFibGUtPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsKKwkJdTMyIHdha2V1cF90aW1lID0g
cHNyLT5wc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7CiAKIAkJd2FrZXVwX3RpbWUgPSAod2FrZXVw
X3RpbWUgPj4gKDIgKiBwYW5lbF90eXBlKSkgJiAweDM7CiAJCXN3aXRjaCAod2FrZXVwX3RpbWUp
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRl
eCA5M2Y1YzlkMjA0ZDYuLjA5Y2QzN2ZiMGIxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaApAQCAtNDgxLDEzICs0ODEsMTMgQEAgc3RydWN0IHBz
cl90YWJsZSB7CiAJLyogVFAgd2FrZSB1cCB0aW1lIGluIG11bHRpcGxlIG9mIDEwMCAqLwogCXUx
NiB0cDFfd2FrZXVwX3RpbWU7CiAJdTE2IHRwMl90cDNfd2FrZXVwX3RpbWU7Ci0KLQkvKiBQU1Iy
IFRQMi9UUDMgd2FrZXVwIHRpbWUgZm9yIDE2IHBhbmVscyAqLwotCXUzMiBwc3IyX3RwMl90cDNf
d2FrZXVwX3RpbWU7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgYmRiX3BzciB7CiAJc3RydWN0IHBz
cl90YWJsZSBwc3JfdGFibGVbMTZdOworCisJLyogUFNSMiBUUDIvVFAzIHdha2V1cCB0aW1lIGZv
ciAxNiBwYW5lbHMgKi8KKwl1MzIgcHNyMl90cDJfdHAzX3dha2V1cF90aW1lOwogfSBfX3BhY2tl
ZDsKIAogLyoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
