Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F066B18C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 00:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5416E178;
	Tue, 16 Jul 2019 22:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894626E178
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 22:05:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 15:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="170061681"
Received: from dk-chv.jf.intel.com ([10.54.75.35])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2019 15:05:35 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jul 2019 15:03:21 -0700
Message-Id: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
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
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUv
dmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8zIHdha2V1cCB0
aW1lIikKU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5k
aXlhbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
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
