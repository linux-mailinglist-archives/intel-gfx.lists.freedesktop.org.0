Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4752ACC153
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 19:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755BC6EBF1;
	Fri,  4 Oct 2019 17:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317C86EBF6
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 17:05:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 10:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="222216161"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2019 10:05:20 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 18:04:50 +0100
Message-Id: <20191004170452.15410-20-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004170452.15410-1-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 19/21] drm/i915: don't allocate the ring in
 stolen if we lack aperture
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

U2luY2Ugd2UgaGF2ZSBubyB3YXkgYWNjZXNzIGl0IGZyb20gdGhlIENQVS4gRm9yIHN1Y2ggY2Fz
ZXMganVzdApmYWxsYmFjayB0byBpbnRlcm5hbCBvYmplY3RzLgoKU2lnbmVkLW9mZi1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JpbmdidWZmZXIuYwppbmRleCAzMTFmZGMwYTIxYmMuLjllZDZmNTJkMTc4ZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpAQCAtMTI3Myw3ICsxMjczLDkg
QEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdfdm1hKHN0cnVjdCBpOTE1X2dn
dHQgKmdndHQsIGludCBzaXplKQogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJ
c3RydWN0IGk5MTVfdm1hICp2bWE7CiAKLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0
b2xlbihpOTE1LCBzaXplKTsKKwlvYmogPSBFUlJfUFRSKC1FTk9ERVYpOworCWlmIChpOTE1X2dn
dHRfaGFzX2FwZXJ0dXJlKGdndHQpKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0
b2xlbihpOTE1LCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CiAJaWYgKElTX0VSUihvYmopKQotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
