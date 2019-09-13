Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1C9B2401
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 18:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AC56F418;
	Fri, 13 Sep 2019 16:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611956F418
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 16:22:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18480153-1500050 
 for multiple; Fri, 13 Sep 2019 17:22:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 17:22:37 +0100
Message-Id: <20190913162237.11437-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Enable the blitter ring for basic
 igt support
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

SUdUIGRlcGVuZHMgb24gdGhlIGJsaXR0ZXIgZm9yIHNldmVyYWwgb2YgaXRzIGJhc2ljIHRlc3Rz
LCBzbyBlbmFibGUgaXQuCkhvcGVmdWxseSwgdGhpcyBpcyBub3QgdGhlIHN0cmF3IHRoYXQgYnJl
YWtzIHRoZSBjYW1lbCdzIGJhY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYwppbmRleCBlZTlhNzk1OTIwNGMuLjhkYzU0NDE4MDA3NiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCkBAIC03OTksNyArNzk5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsKIAkJQklUKFJDUzAp
IHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKIAkuaGFz
X3JjNiA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVnZ2luZyAqLwogCS5oYXNfbG9n
aWNhbF9yaW5nX3ByZWVtcHRpb24gPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dp
bmcgKi8KLQkuZW5naW5lX21hc2sgPSBCSVQoUkNTMCksIC8qIFhYWCByZWR1Y2VkIGZvciBkZWJ1
Z2dpbmcgKi8KKwkuZW5naW5lX21hc2sgPSBCSVQoUkNTMCkgfCBCSVQoQkNTMCksIC8qIFhYWCBy
ZWR1Y2VkIGZvciBkZWJ1Z2dpbmcgKi8KIH07CiAKICN1bmRlZiBHRU4KLS0gCjIuMjMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
