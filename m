Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F25F550E6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2546E10D;
	Tue, 25 Jun 2019 13:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AABA6E100
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:55:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="163630031"
Received: from mbarlik-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.140.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 06:55:10 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 16:55:02 +0300
Message-Id: <20190625135503.4262-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
References: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/3] drm/i915: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q0ZMOkMwKyBjaGFuZ2VkIHRoZSBzdGF0dXMgb2YgdGhvc2UgcmVnaXN0ZXJzIHdoaWNoIGFyZSBu
b3cKYmxhY2tsaXN0ZWQgYnkgZGVmYXVsdC4KClRoaXMgaXMgYnJlYWtpbmcgYSBudW1iZXIgb2Yg
Q1RTIHRlc3RzIG9uIEdMICYgVnVsa2FuIDoKCiAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlzdGlj
c19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMg
KEdMKQoKICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVyeS5mcmFnbWVudF9zaGFk
ZXJfaW52b2NhdGlvbnMuKiAoVnVsa2FuKQoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggOTkzODA0ZDA5NTE3Li5kYTdkNDhhYzRlZTcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTA5
MiwxMCArMTA5MiwxOCBAQCBzdGF0aWMgdm9pZCBnbGtfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZvaWQgY2ZsX3doaXRlbGlzdF9idWls
ZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CisJc3RydWN0IGk5MTVfd2FfbGlz
dCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKKwogCWlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRF
Ul9DTEFTUykKIAkJcmV0dXJuOwogCi0JZ2VuOV93aGl0ZWxpc3RfYnVpbGQoJmVuZ2luZS0+d2hp
dGVsaXN0KTsKKwlnZW45X3doaXRlbGlzdF9idWlsZCh3KTsKKworCS8qIFdhQWxsb3dQTURlcHRo
QW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDpjZmwsd2hsLGNtbCxhbWwgKi8KKwl3aGl0
ZWxpc3RfcmVnX2V4dCh3LCBQU19ERVBUSF9DT1VOVCwgUklOR19GT1JDRV9UT19OT05QUklWX1JE
KTsKKwl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19ERVBUSF9DT1VOVF9VRFcsIFJJTkdfRk9SQ0Vf
VE9fTk9OUFJJVl9SRCk7CisJd2hpdGVsaXN0X3JlZ19leHQodywgUFNfSU5WT0NBVElPTl9DT1VO
VCwgUklOR19GT1JDRV9UT19OT05QUklWX1JEKTsKKwl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19J
TlZPQ0FUSU9OX0NPVU5UX1VEVywgUklOR19GT1JDRV9UT19OT05QUklWX1JEKTsKIH0KIAogc3Rh
dGljIHZvaWQgY25sX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCi0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
