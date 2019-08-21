Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADF8970FB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 06:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBD56E8F6;
	Wed, 21 Aug 2019 04:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3086E8F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 04:21:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18208893-1500050 
 for multiple; Wed, 21 Aug 2019 05:20:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 05:20:44 +0100
Message-Id: <20190821042044.7354-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Relax assertion for pt_used
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

V2hlbiBpbnNlcnRpbmcgdGhlIGZpbmFsIGxldmVsIFBURSwgd2UgY2hlY2sgdGhhdCB3ZSBhcmUg
bm90IG92ZXJmbG93aW5nCnRoZSBwYWdlIHRhYmxlIChjaGVja2luZyB0aGF0IHB0X3VzZWQgZG9l
cyBub3QgZXhjZWVkIHRoZSBzaXplIG9mIHRoZQp0YWJsZSkuIEhvd2V2ZXIsIHdlIGhhdmUgdG8g
YWxsb3cgZm9yIGV2ZXJ5IG90aGVyIFBURSB0byBiZSBwaW5uZWQgYnkgYQpzaW11bHRhbmVvdXMg
cmVtb3ZhbCB0aHJlYWQgKGFzIG9uIHJlbW92ZSB3ZSBidW1wIHRoZSBwdF91c2VkIGNvdW50ZXIK
YmVmb3JlIGFkanVzdGluZyB0aGUgdGFibGUpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAwODFjOGI3OWMwNDcuLjk0
NzEyZDNlYjg4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTExMTIsNyAr
MTExMiw4IEBAIHN0YXRpYyBpbnQgX19nZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKiBjb25zdCB2bSwKIAkJCSAgICBhdG9taWNfcmVhZCgmcHQtPnVzZWQpKTsKIAog
CQkJYXRvbWljX2FkZChjb3VudCwgJnB0LT51c2VkKTsKLQkJCUdFTV9CVUdfT04oYXRvbWljX3Jl
YWQoJnB0LT51c2VkKSA+IEk5MTVfUERFUyk7CisJCQkvKiBBbGwgb3RoZXIgcGRlcyBtYXkgYmUg
c2ltdWx0YW5lb3VzbHkgcmVtb3ZlZCAqLworCQkJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmcHQt
PnVzZWQpID4gMiAqIEk5MTVfUERFUyk7CiAJCQkqc3RhcnQgKz0gY291bnQ7CiAJCX0KIAl9IHdo
aWxlIChpZHgrKywgLS1sZW4pOwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
