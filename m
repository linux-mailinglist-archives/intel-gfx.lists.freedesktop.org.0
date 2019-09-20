Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 931EDB8F1F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 13:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5916FC9D;
	Fri, 20 Sep 2019 11:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F1B6FC9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 11:42:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:42:30 +0200
Message-Id: <20190920114235.22411-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/23] drm/i915: Disable FBC in bigjoiner
 configuration.
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

SXMgdGhlcmUgYW55IHBvaW50IGluIGhhdmluZyBGQkMgZW5hYmxlZCBvbiBoYWxmIGEgc2NyZWVu
PwpJIHN1cHBvc2UgaXQgY291bGQgc3RpbGwgc2F2ZSBwb3dlciwgYnV0IGp1c3QgZmVlbHMgd3Jv
bmcuLgpDYW4gYWx3YXlzIGJlIGVuYWJsZWQgbGF0ZXIgYWdhaW4gaWYgcmVxdWlyZWQuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAy
ICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggYzZjYzM3NzVmM2I4Li5lNGQ2NzhkNDI1ZTQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtMTA1Niw2ICsxMDU2
LDggQEAgdm9pZCBpbnRlbF9mYmNfY2hvb3NlX2NydGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCQkJY29udGludWU7CiAKIAkJY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOworCQlpZiAoY3J0Y19zdGF0ZS0+Ymlnam9p
bmVyKQorCQkJY29udGludWU7CiAKIAkJY3J0Y19zdGF0ZS0+ZW5hYmxlX2ZiYyA9IHRydWU7CiAJ
CWNydGNfY2hvc2VuID0gdHJ1ZTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
