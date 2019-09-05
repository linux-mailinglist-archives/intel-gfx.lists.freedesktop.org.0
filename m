Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC94AAAAB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 20:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5046E090;
	Thu,  5 Sep 2019 18:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028256E090
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 18:13:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 11:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="267105184"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga001.jf.intel.com with ESMTP; 05 Sep 2019 11:13:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 11:13:37 -0700
Message-Id: <20190905181337.23727-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Use refclk/2 as bypass frequency
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

VW5saWtlIGdlbjExLCB3aGljaCBhbHdheXMgcmFuIGF0IDUwTUh6IHdoZW4gdGhlIGNkY2xrIFBM
TCB3YXMgZGlzYWJsZWQsClRHTCBydW5zIGF0IHJlZmNsay8yLiAgVGhlIDUwTUh6IGNyb2Nsay8y
IGlzIG9ubHkgdXNlZCBieSBoYXJkd2FyZQpkdXJpbmcgc29tZSBwb3dlciBzdGF0ZSB0cmFuc2l0
aW9ucy4KCkJzcGVjOiA0OTIwMQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
IHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCA3
NmYxMWQ0NjVlOTEuLmQzZTU2NjI4YWY3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYwpAQCAtMTg1NSw4ICsxODU1LDYgQEAgc3RhdGljIHZvaWQgaWNsX2dl
dF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJdTMyIHZhbDsKIAlp
bnQgZGl2OwogCi0JY2RjbGtfc3RhdGUtPmJ5cGFzcyA9IDUwMDAwOwotCiAJdmFsID0gSTkxNV9S
RUFEKFNLTF9EU1NNKTsKIAlzd2l0Y2ggKHZhbCAmIElDTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtf
TUFTSykgewogCWRlZmF1bHQ6CkBAIC0xODczLDYgKzE4NzEsMTEgQEAgc3RhdGljIHZvaWQgaWNs
X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWJyZWFrOwog
CX0KIAorCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQljZGNsa19zdGF0ZS0+Ynlw
YXNzID0gY2RjbGtfc3RhdGUtPnJlZiAvIDI7CisJZWxzZQorCQljZGNsa19zdGF0ZS0+YnlwYXNz
ID0gNTAwMDA7CisKIAl2YWwgPSBJOTE1X1JFQUQoQlhUX0RFX1BMTF9FTkFCTEUpOwogCWlmICgo
dmFsICYgQlhUX0RFX1BMTF9QTExfRU5BQkxFKSA9PSAwIHx8CiAJICAgICh2YWwgJiBCWFRfREVf
UExMX0xPQ0spID09IDApIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
