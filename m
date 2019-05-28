Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E4E2CA6E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 17:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E72989FA6;
	Tue, 28 May 2019 15:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E047189F2D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 15:41:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16708987-1500050 
 for multiple; Tue, 28 May 2019 16:40:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 16:40:53 +0100
Message-Id: <20190528154053.22004-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid refcount_inc on known zero count
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

SW4gaW50ZWxfd2FrZXJlZl9hdXRvLCB3ZSB1c2UgcmVmY291bnRfaW5jX25vdF96ZXJvIHRvIGRl
dGVjdCB0aGUgZmlyc3QKdXNlIGFuZCBpbml0aWFsaXNlIHRoZSB0aW1lci4gT24gZG9pbmcgc28s
IHdlIGhhdmUgdG8gYXZvaWQgdXNpbmcKcmVmY291bnRfaW5jIG9uIHRoYXQgemVybyBjb3VudCBh
cyB0aGUgZGVidWcgY29kZSBmbGFncyB0aGF0IGFzIGFuCmVycm9yOgoJcmVmY291bnRfdDogaW5j
cmVtZW50IG9uIDA7IHVzZS1hZnRlci1mcmVlLgoKUmVhcnJhbmdlIHRoZSBjb2RlIHNvIHRoYXQg
aWYgd2Uga25vdyB0aGUgY291bnQgaXMgMCBhbmQgd2UgYXJlCmluaXRpYWxpc2luZywgd2UgZXhw
bGljaXRseSBzZXQgaXQgdG8gMS4KCkZpeGVzOiBiMjdlMzVhZTViMTggKCJkcm0vaTkxNTogS2Vl
cCB1c2VyIEdHVFQgYWxpdmUgZm9yIGEgbWluaW11bSBvZiAyNTBtcyIpClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfd2FrZXJlZi5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dha2VyZWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYwppbmRl
eCBjMmRkYTVhMzc1ZjAuLmMyNWJhMWI1ZThiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfd2FrZXJlZi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dh
a2VyZWYuYwpAQCAtMTE0LDExICsxMTQsMTEgQEAgdm9pZCBpbnRlbF93YWtlcmVmX2F1dG8oc3Ry
dWN0IGludGVsX3dha2VyZWZfYXV0byAqd2YsIHVuc2lnbmVkIGxvbmcgdGltZW91dCkKIAogCWlm
ICghcmVmY291bnRfaW5jX25vdF96ZXJvKCZ3Zi0+Y291bnQpKSB7CiAJCXNwaW5fbG9ja19pcnFz
YXZlKCZ3Zi0+bG9jaywgZmxhZ3MpOwotCQlpZiAoIXJlZmNvdW50X3JlYWQoJndmLT5jb3VudCkp
IHsKKwkJaWYgKCFyZWZjb3VudF9pbmNfbm90X3plcm8oJndmLT5jb3VudCkpIHsKIAkJCUdFTV9C
VUdfT04od2YtPndha2VyZWYpOwogCQkJd2YtPndha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dl
dF9pZl9pbl91c2Uod2YtPmk5MTUpOworCQkJcmVmY291bnRfc2V0KCZ3Zi0+Y291bnQsIDEpOwog
CQl9Ci0JCXJlZmNvdW50X2luYygmd2YtPmNvdW50KTsKIAkJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmd2YtPmxvY2ssIGZsYWdzKTsKIAl9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
