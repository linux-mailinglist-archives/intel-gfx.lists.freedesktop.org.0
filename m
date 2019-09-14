Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB49B2A71
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 10:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F1F06F4EE;
	Sat, 14 Sep 2019 08:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632BE6F4EE
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Sep 2019 08:26:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18485996-1500050 
 for multiple; Sat, 14 Sep 2019 09:25:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Sep 2019 09:25:50 +0100
Message-Id: <20190914082550.11547-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Suspend pre-parser across GTT
 invalidations
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

QmVmb3JlIHdlIGV4ZWN1dGUgYSBiYXRjaCwgd2UgbXVzdCBmaXJzdCBpc3N1ZSBhbnkgYW5kIGFs
bCBUTEIKaW52YWxpZGF0aW9ucyBzbyB0aGF0IGJhdGNoIHBpY2tzIHVwIHRoZSBuZXcgcGFnZSB0
YWJsZSBlbnRyaWVzLgpUaWdlcmxha2UncyBwcmVwYXJzZXIgaXMgd2Vha2VuaW5nIG91ciBwb3N0
LXN5bmMgQ1NfU1RBTEwgaW5zaWRlIHRoZQppbnZhbGlkYXRlIHBpcGUtY29udHJvbCBhbmQgYWxs
b3dpbmcgdGhlIGxvYWRpbmcgb2YgdGhlIGJhdGNoIGJ1ZmZlcgpiZWZvcmUgd2UgaGF2ZSBzZXR1
cCBpdHMgcGFnZSB0YWJsZSAoYW5kIHNvIGl0IGxvYWRzIHRoZSB3cm9uZyBwYWdlIGFuZApleGVj
dXRlcyBpbmRlZmluaXRlbHkpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQpTdWdnZXN0aW9ucyB3ZWxjb21lIGFzIHRoaXMgZG9lcyBub3Qg
c2VlbSBpbnRlbmRlZCBiZWhhdmlvdXIsIHNvIEkKc3VzcGVjdCB0aGVyZSBpcyBhIHN0cm9uZyBw
aXBlY29udHJvbCBmbGFnIHdlIGFyZSBtaXNzaW5nLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggYTNm
MGU0OTk5NzQ0Li5hOWU2OTBjMzAzY2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CkBAIC0yNzk2LDExICsyNzk2LDE0IEBAIHN0YXRpYyBpbnQgZ2VuMTFfZW1pdF9mbHVzaF9yZW5k
ZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9M
X1FXX1dSSVRFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfR0xPQkFMX0dUVF9JVkI7CiAKLQkJ
Y3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJlcXVlc3QsIDYpOworCQljcyA9IGludGVsX3JpbmdfYmVn
aW4ocmVxdWVzdCwgOCk7CiAJCWlmIChJU19FUlIoY3MpKQogCQkJcmV0dXJuIFBUUl9FUlIoY3Mp
OwogCisJCSpjcysrID0gTUlfQVJCX0NIRUNLIHwgMSA8PCA4IHwgMTsKIAkJY3MgPSBnZW44X2Vt
aXRfcGlwZV9jb250cm9sKGNzLCBmbGFncywgc2NyYXRjaF9hZGRyKTsKKwkJKmNzKysgPSBNSV9B
UkJfQ0hFQ0sgfCAxIDw8IDg7CisKIAkJaW50ZWxfcmluZ19hZHZhbmNlKHJlcXVlc3QsIGNzKTsK
IAl9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
