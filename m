Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C0E58C47
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC836E86A;
	Thu, 27 Jun 2019 20:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1255A6E843
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:57:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455728"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:57:03 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:20 +0100
Message-Id: <20190627205633.1143-25-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 24/37] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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
LmNvbT4KCldlIGNhbid0IGZlbmNlIGFueXRoaW5nIHdpdGhvdXQgYXBlcnR1cmUuCgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIHwgNiArKysrLS0KIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwppbmRleCBiY2FjMzU5ZWM2NjEuLmJiN2Q5MzIx
Y2FkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKQEAgLTgw
OCw4ICs4MDgsMTAgQEAgdm9pZCBpOTE1X2dndHRfaW5pdF9mZW5jZXMoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIAogCWRldGVjdF9iaXRfNl9zd2l6emxlKGk5MTUpOwogCi0JaWYgKElOVEVMX0dF
TihpOTE1KSA+PSA3ICYmCi0JICAgICEoSVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllW
SUVXKGk5MTUpKSkKKwlpZiAoIUhBU19NQVBQQUJMRV9BUEVSVFVSRShpOTE1KSkKKwkJbnVtX2Zl
bmNlcyA9IDA7CisJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDcgJiYKKwkJICEoSVNfVkFM
TEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKSkKIAkJbnVtX2ZlbmNlcyA9IDMy
OwogCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA0IHx8CiAJCSBJU19JOTQ1RyhpOTE1KSB8
fCBJU19JOTQ1R00oaTkxNSkgfHwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
