Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 328D111C02
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 799B7892E5;
	Thu,  2 May 2019 15:00:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26762896E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16430617-1500050 
 for multiple; Thu, 02 May 2019 16:00:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 16:00:24 +0100
Message-Id: <20190502150024.16636-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502150024.16636-1-chris@chris-wilson.co.uk>
References: <20190502150024.16636-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Leave engine parking to the
 engines
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

RHJvcCB0aGUgY2hlY2sgaW4gR0VNIHBhcmtpbmcgdGhhdCB0aGUgZW5naW5lcyB3ZXJlIGFscmVh
ZHkgcGFya2VkLiBUaGUKaW50ZW50aW9uIGhlcmUgd2FzIHRoYXQgYmVmb3JlIHdlIGRyb3BwZWQg
dGhlIEdUIHdha2VyZWYsIHdlIHdlcmUgc3VyZQp0aGF0IG5vIG1vcmUgaW50ZXJydXB0cyBjb3Vs
ZCBiZSByYWlzZWQgLS0gaG93ZXZlciwgd2UgaGF2ZSBhbHJlYWR5CmRyb3BwZWQgdGhlIHdha2Vy
ZWYgYnkgdGhpcyBwb2ludCBhbmQgdGhlIHdhcm5pbmcgaXMgbm8gbG9uZ2VyIHZhbGlkLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmll
d2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMgfCAxOCArLS0tLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX3BtLmMKaW5kZXggM2I2ZThkNWJlOGUxLi40OWIwY2U1OTRmMjAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwpAQCAtMTcsMjQgKzE3LDggQEAgc3RhdGljIHZv
aWQgaTkxNV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWxvY2tk
ZXBfYXNzZXJ0X2hlbGQoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCi0JZm9yX2VhY2hfZW5n
aW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKLQkJLyoKLQkJICogV2UgYXJlIGNvbW1pdHRlZCBub3cg
dG8gcGFya2luZyB0aGUgZW5naW5lcywgbWFrZSBzdXJlIHRoZXJlCi0JCSAqIHdpbGwgYmUgbm8g
bW9yZSBpbnRlcnJ1cHRzIGFycml2aW5nIGxhdGVyIGFuZCB0aGUgZW5naW5lcwotCQkgKiBhcmUg
dHJ1bHkgaWRsZS4KLQkJICovCi0JCWlmICh3YWl0X2ZvcihpbnRlbF9lbmdpbmVfaXNfaWRsZShl
bmdpbmUpLCAxMCkpIHsKLQkJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX2RlYnVnX3ByaW50
ZXIoX19mdW5jX18pOwotCi0JCQlkZXZfZXJyKGk5MTUtPmRybS5kZXYsCi0JCQkJIiVzIGlzIG5v
dCBpZGxlIGJlZm9yZSBwYXJraW5nXG4iLAotCQkJCWVuZ2luZS0+bmFtZSk7Ci0JCQlpbnRlbF9l
bmdpbmVfZHVtcChlbmdpbmUsICZwLCBOVUxMKTsKLQkJfQotCQl0YXNrbGV0X2tpbGwoJmVuZ2lu
ZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOwotCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwg
aWQpCiAJCWk5MTVfZ2VtX2JhdGNoX3Bvb2xfZmluaSgmZW5naW5lLT5iYXRjaF9wb29sKTsKLQl9
CiAKIAlpOTE1X3RpbWVsaW5lc19wYXJrKGk5MTUpOwogCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
