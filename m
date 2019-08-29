Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49066A297F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 00:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F126E220;
	Thu, 29 Aug 2019 22:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32BE86E220
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 22:14:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 15:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,445,1559545200"; d="scan'208";a="186112693"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga006.jf.intel.com with ESMTP; 29 Aug 2019 15:14:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 15:14:16 -0700
Message-Id: <20190829221416.3460-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen9: Increase DPLL lock timeout
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

QXMgcGFydCBvZiB0aGUgRFBMTCBlbmFibGluZyBzZXF1ZW5jZSB3ZSdyZSBzdXBwb3NlZCB0byB3
YWl0IGZvciB0aGUKRFBMTCBsb2NrIHRvIGJlIHJlZmxlY3RlZCBpbiB0aGUgRFBMTF9TVEFUVVMg
cmVnaXN0ZXIgYWZ0ZXIgcHJvZ3JhbW1pbmcKdGhlIGFwcHJvcHJpYXRlIGNvbnRyb2wgcmVnaXN0
ZXJzLiAgVGhlIGJzcGVjIGRvZXNuJ3QgdGVsbCB1cyBob3cgbG9uZwp3ZSBzaG91bGQgd2FpdCBm
b3IgdGhpcyB0byBoYXBwZW4sIHNvIHdlJ3JlIGN1cnJlbnRseSByZXVzaW5nIHRoZSA1bXMKdGlt
ZW91dCB0aGF0IHRoZSBic3BlYyBzdWdnZXN0ZWQgb24gQkRXLiAgV2UncmUgaGl0dGluZyBvY2Nh
c2lvbmFsCnRpbWVvdXRzIHdoaWxlIHdhaXRpbmcgZm9yIERQTEwxIHRvIGxvY2sgb24gdGhlIENG
TCBzeXN0ZW0gd2UgaGF2ZSBpbgpDSSwgc28gbGV0J3MgYnVtcCB0aGUgdGltZW91dCB0byAxMG1z
IGFuZCBzZWUgaWYgdGhhdCBlbGltaW5hdGVzIHRoZXNlCmZhaWx1cmVzLgoKQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzM0NQpTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCBiODE0OGY4MzgzNTQuLjA4OWIz
NmRjZjQ3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYwpAQCAtMTAwMCw3ICsxMDAwLDcgQEAgc3RhdGljIHZvaWQgc2tsX2RkaV9wbGxfZW5hYmxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlJOTE1X1dSSVRFKHJlZ3NbaWRd
LmN0bCwKIAkJICAgSTkxNV9SRUFEKHJlZ3NbaWRdLmN0bCkgfCBMQ1BMTF9QTExfRU5BQkxFKTsK
IAotCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIERQTExfU1RBVFVTLCBEUExM
X0xPQ0soaWQpLCA1KSkKKwlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBEUExM
X1NUQVRVUywgRFBMTF9MT0NLKGlkKSwgMTApKQogCQlEUk1fRVJST1IoIkRQTEwgJWQgbm90IGxv
Y2tlZFxuIiwgaWQpOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
