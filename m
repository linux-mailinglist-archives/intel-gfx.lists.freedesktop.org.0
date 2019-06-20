Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 042F24CAD0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 11:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5796089C2A;
	Thu, 20 Jun 2019 09:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 783F789C1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 09:27:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 02:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="168462793"
Received: from frciesli-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.190])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2019 02:27:32 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 12:27:28 +0300
Message-Id: <20190620092730.4700-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190620092730.4700-1-lionel.g.landwerlin@intel.com>
References: <20190620092730.4700-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: whitelist
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
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggZjY2NjNjZWMzODdhLi4zNjdmNWNjNTk2NWYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTA5
MiwxMCArMTA5MiwxOCBAQCBzdGF0aWMgdm9pZCBnbGtfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogc3RhdGljIHZvaWQgY2ZsX3doaXRlbGlzdF9idWls
ZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CisJc3RydWN0IGk5MTVfd2FfbGlz
dCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKKwogCWlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRF
Ul9DTEFTUykKIAkJcmV0dXJuOwogCi0JZ2VuOV93aGl0ZWxpc3RfYnVpbGQoJmVuZ2luZS0+d2hp
dGVsaXN0KTsKKwlnZW45X3doaXRlbGlzdF9idWlsZCh3KTsKKworCS8qIFdhQWxsb3dQTURlcHRo
QW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDpjZmwsd2hsLGNtbCxhbWwgKi8KKwl3aGl0
ZWxpc3RfcmVnKHcsIFBTX0RFUFRIX0NPVU5UKTsKKwl3aGl0ZWxpc3RfcmVnKHcsIFBTX0RFUFRI
X0NPVU5UX1VEVyk7CisJd2hpdGVsaXN0X3JlZyh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UKTsKKwl3
aGl0ZWxpc3RfcmVnKHcsIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXKTsKIH0KIAogc3RhdGljIHZv
aWQgY25sX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi0t
IAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
