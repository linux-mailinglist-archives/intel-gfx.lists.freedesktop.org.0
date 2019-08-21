Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE74097AD7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38246E948;
	Wed, 21 Aug 2019 13:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4A76E345
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:32:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 15:32:19 +0200
Message-Id: <20190821133221.29456-9-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: Do not add all planes when
 checking scalers on glk+
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

V2UgY2Fubm90IHN3aXRjaCBiZXR3ZWVuIEhRIGFuZCBub3JtYWwgbW9kZSBvbiBHTEsrLCBzbyBv
bmx5CmFkZCBwbGFuZXMgb24gcGxhdGZvcm1zIHdoZXJlIGl0IG1ha2VzIHNlbnNlLgoKV2UgY291
bGQgcHJvYmFibHkgcmVzdHJpY3QgaXQgZXZlbiBtb3JlIHRvIG9ubHkgYWRkIHdoZW4gc2NhbGVy
CnVzZXJzIHRvZ2dsZXMgYmV0d2VlbiAxIGFuZCAyLCBidXQgbGV0cyBqdXN0IGxlYXZlIGl0IGZv
ciBub3cuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKaW5kZXggZDI2N2Rk
Mzk0NzVkLi5jNDQyZTk3NjJjZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWMuYwpAQCAtNDE4LDYgKzQxOCwxMSBAQCBpbnQgaW50ZWxfYXRvbWljX3NldHVw
X3NjYWxlcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJICovCiAJCQlp
ZiAoIXBsYW5lKSB7CiAJCQkJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGU7CisKKwkJCQkv
KiBObyBuZWVkIHRvIHJlcHJvZ3JhbSwgd2UncmUgbm90IGNoYW5naW5nIHNjYWxpbmcgbW9kZSAq
LworCQkJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKQorCQkJCQljb250aW51ZTsKKwogCQkJCXBsYW5lID0gZHJtX3BsYW5lX2Zyb21faW5k
ZXgoJmRldl9wcml2LT5kcm0sIGkpOwogCQkJCXN0YXRlID0gZHJtX2F0b21pY19nZXRfcGxhbmVf
c3RhdGUoZHJtX3N0YXRlLCBwbGFuZSk7CiAJCQkJaWYgKElTX0VSUihzdGF0ZSkpIHsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
