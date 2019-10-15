Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3F4D7259
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 11:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F1006E32F;
	Tue, 15 Oct 2019 09:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040F16E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 09:32:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18841467-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 10:32:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 10:32:04 +0100
Message-Id: <20191015093204.25693-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/execlists: Clear semaphore immediately
 upon ELSP promotion
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

VGhlcmUgaXMgbm8gc2lnbmlmaWNhbmNlIHRvIG91ciBkZWxheSBiZWZvcmUgY2xlYXJpbmcgdGhl
IHNlbWFwaG9yZSB0aGUKZW5naW5lIGlzIHdhaXRpbmcgb24sIHNvIHJlbGVhc2UgaXQgYXMgc29v
biBhcyB3ZSBhY2tub3dsZWRnZSB0aGUgQ1MKdXBkYXRlIGZvbGxvd2luZyBvdXIgcHJlZW1wdGlv
biByZXF1ZXN0LiBUaGlzIHNob3VsZCBhbGxvdyB0aGUgR1BVIHRvCnJlc3VtZSB3b3JrIGVhcmxp
ZXIsIGlmIGl0IHdhcyBzdHVjayBvbiB0aGUgc2VtYXBob3JlIGF0IHRoZSBlbmQgb2YgYQpyZXF1
ZXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNiArKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA0ODRlZmUzYjQyNzMuLjIxNjM1ZGI4ZDc2YyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE5MTAsNiArMTkxMCw5IEBAIHN0YXRp
YyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJZWxz
ZQogCQkJcHJvbW90ZSA9IGdlbjhfY3NiX3BhcnNlKGV4ZWNsaXN0cywgYnVmICsgMiAqIGhlYWQp
OwogCQlpZiAocHJvbW90ZSkgeworCQkJaWYgKCFpbmplY3RfcHJlZW1wdF9oYW5nKGV4ZWNsaXN0
cykpCisJCQkJcmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7CisKIAkJCS8qIGNhbmNlbCBvbGQg
aW5mbGlnaHQsIHByZXBhcmUgZm9yIHN3aXRjaCAqLwogCQkJdHJhY2VfcG9ydHMoZXhlY2xpc3Rz
LCAicHJlZW1wdGVkIiwgZXhlY2xpc3RzLT5hY3RpdmUpOwogCQkJd2hpbGUgKCpleGVjbGlzdHMt
PmFjdGl2ZSkKQEAgLTE5MjYsOSArMTkyOSw2IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCWlmIChlbmFibGVfdGltZXNsaWNlKGV4
ZWNsaXN0cykpCiAJCQkJbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLCBqaWZmaWVzICsgMSk7
CiAKLQkJCWlmICghaW5qZWN0X3ByZWVtcHRfaGFuZyhleGVjbGlzdHMpKQotCQkJCXJpbmdfc2V0
X3BhdXNlZChlbmdpbmUsIDApOwotCiAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVuZGluZ1sw
XSwgTlVMTCk7CiAJCX0gZWxzZSB7CiAJCQlHRU1fQlVHX09OKCEqZXhlY2xpc3RzLT5hY3RpdmUp
OwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
