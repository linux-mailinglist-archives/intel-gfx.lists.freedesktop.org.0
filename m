Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1FFE0E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9F46E7C0;
	Fri, 15 Nov 2019 15:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8BC6E7DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:08:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19214697-1500050 
 for multiple; Fri, 15 Nov 2019 15:08:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 15:08:39 +0000
Message-Id: <20191115150841.880349-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Flush retire.work timer object
 on unload
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

V2UgbmVlZCB0byB3YWl0IHVudGlsIHRoZSB0aW1lciBvYmplY3QgaXMgbWFya2VkIGFzIGRlYWN0
aXZhdGVkIGJlZm9yZQp1bmxvYWRpbmcsIHNvIGZvbGxvdyB1cCBvdXIgZ2VudGxlIGNhbmNlbF9k
ZWxheWVkX3dvcmsoKSB3aXRoIHRoZQpzeW5jaHJvbm91cyB2YXJpYW50IHRvIGVuc3VyZSBpdCBp
cyBmbHVzaGVkIG9mZiBhIHJlbW90ZSBjcHUgYmVmb3JlIHdlCm1hcmsgdGhlIG1lbW9yeSBhcyBm
cmVlZC4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE5OTQKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgICAgICAgICAgfCAxICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgfCA2ICsrKysrKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaCB8IDEgKwogMyBmaWxlcyBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRl
eCBjMzliMjFjOGQzMjguLmI1YTliODdlNGVjOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jCkBAIC0zOTcsNiArMzk3LDcgQEAgdm9pZCBpbnRlbF9ndF9kcml2ZXJfcmVsZWFzZShzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQogdm9pZCBpbnRlbF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCiB7CiAJaW50ZWxfdWNfZHJpdmVyX2xhdGVfcmVsZWFzZSgmZ3QtPnVj
KTsKKwlpbnRlbF9ndF9maW5pX3JlcXVlc3RzKGd0KTsKIAlpbnRlbF9ndF9maW5pX3Jlc2V0KGd0
KTsKIAlpbnRlbF9ndF9maW5pX3RpbWVsaW5lcyhndCk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwppbmRleCBjY2JkZGRkYmJkNTIuLmE3OWU2ZWZiMzFh
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCkBAIC0x
MzAsMyArMTMwLDkgQEAgdm9pZCBpbnRlbF9ndF91bnBhcmtfcmVxdWVzdHMoc3RydWN0IGludGVs
X2d0ICpndCkKIAlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmd0LT5yZXF1ZXN0cy5yZXRpcmVfd29y
aywKIAkJCSAgICAgIHJvdW5kX2ppZmZpZXNfdXBfcmVsYXRpdmUoSFopKTsKIH0KKwordm9pZCBp
bnRlbF9ndF9maW5pX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJLyogV2FpdCB1
bnRpbCB0aGUgd29yayBpcyBtYXJrZWQgYXMgZmluaXNoZWQgYmVmb3JlIHVubG9hZGluZyEgKi8K
KwljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmd0LT5yZXF1ZXN0cy5yZXRpcmVfd29yayk7Cit9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuaAppbmRleCBiZDMx
Y2JjZTQ3ZTAuLmZkZTU0NjQyNGM2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcmVxdWVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9yZXF1ZXN0cy5oCkBAIC0yMCw1ICsyMCw2IEBAIGludCBpbnRlbF9ndF93YWl0X2Zvcl9p
ZGxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGxvbmcgdGltZW91dCk7CiB2b2lkIGludGVsX2d0X2lu
aXRfcmVxdWVzdHMoc3RydWN0IGludGVsX2d0ICpndCk7CiB2b2lkIGludGVsX2d0X3BhcmtfcmVx
dWVzdHMoc3RydWN0IGludGVsX2d0ICpndCk7CiB2b2lkIGludGVsX2d0X3VucGFya19yZXF1ZXN0
cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKK3ZvaWQgaW50ZWxfZ3RfZmluaV9yZXF1ZXN0cyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KTsKIAogI2VuZGlmIC8qIElOVEVMX0dUX1JFUVVFU1RTX0ggKi8KLS0g
CjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
