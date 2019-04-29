Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37FDD50
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 10:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A1689298;
	Mon, 29 Apr 2019 08:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7CF89298
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 08:02:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16392090-1500050 
 for multiple; Mon, 29 Apr 2019 09:02:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 09:01:56 +0100
Message-Id: <20190429080159.12356-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Wait for the struct_mutex on
 idling
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

V2hlbiB0aGUgc3lzdGVtIGlzIGlkbGluZywgY29udGVudGlvbiBmb3Igc3RydWN0X211dGV4IHNo
b3VsZCBiZSBsb3cgYW5kCnNvIHdlIHdpbGwgYmUgbW9yZSBlZmZpY2llbnQgdG8gd2FpdCBmb3Ig
YSBjb250ZW5kZWQgbXV0ZXggdGhhbgpyZXNjaGVkdWxlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYyB8IDggKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwppbmRleCAz
NTU0ZDU1ZGFlMzUuLjNiNmU4ZDViZThlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5j
CkBAIC00NywxMyArNDcsNyBAQCBzdGF0aWMgdm9pZCBpZGxlX3dvcmtfaGFuZGxlcihzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndvcmspCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPQogCQlj
b250YWluZXJfb2Yod29yaywgdHlwZW9mKCppOTE1KSwgZ2VtLmlkbGVfd29yay53b3JrKTsKIAot
CWlmICghbXV0ZXhfdHJ5bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCkpIHsKLQkJLyogQ3Vy
cmVudGx5IGJ1c3ksIGNvbWUgYmFjayBsYXRlciAqLwotCQltb2RfZGVsYXllZF93b3JrKGk5MTUt
PndxLAotCQkJCSAmaTkxNS0+Z2VtLmlkbGVfd29yaywKLQkJCQkgbXNlY3NfdG9famlmZmllcyg1
MCkpOwotCQlyZXR1cm47Ci0JfQorCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OwogCiAJaW50ZWxfd2FrZXJlZl9sb2NrKCZpOTE1LT5ndC53YWtlcmVmKTsKIAlpZiAoIWludGVs
X3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSkKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
