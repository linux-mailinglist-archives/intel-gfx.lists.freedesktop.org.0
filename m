Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A10EE84F3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 10:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC196E10C;
	Tue, 29 Oct 2019 09:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A34A6E10C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 09:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 02:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="205423488"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Oct 2019 02:58:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 09:58:50 +0000
Message-Id: <20191029095856.25431-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: define i915_ggtt_has_aperture
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzIHdpbGwgdXNlIGl0IHRv
IGF2b2lkIGNlcnRhaW4Kb3BlcmF0aW9ucyB3aGVuIHRoZSBtYXBwYWJsZSBhcGVydHVyZSBpcyBu
b3QgYXZhaWxhYmxlIGluIEhXLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5oIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKaW5kZXggZjA3NGYxZGU2NmU4Li4yODA0
NDQ0OWFhNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCkBAIC01NzUsNiArNTc1
LDExIEBAIHZvaWQgaTkxNV9nZ3R0X2Rpc2FibGVfZ3VjKHN0cnVjdCBpOTE1X2dndHQgKmdndHQp
OwogaW50IGk5MTVfaW5pdF9nZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7
CiB2b2lkIGk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpOwogCitzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9nZ3R0X2hhc19hcGVydHVyZShz
dHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQoreworCXJldHVybiBnZ3R0LT5tYXBwYWJsZV9lbmQgPiAw
OworfQorCiBpbnQgaTkxNV9wcGd0dF9pbml0X2h3KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiBz
dHJ1Y3QgaTkxNV9wcGd0dCAqaTkxNV9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
