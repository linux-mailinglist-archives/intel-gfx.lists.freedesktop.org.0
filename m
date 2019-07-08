Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABE162B40
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 23:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D725089487;
	Mon,  8 Jul 2019 21:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D083689487
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 21:55:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17175528-1500050 
 for multiple; Mon, 08 Jul 2019 22:55:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 22:55:24 +0100
Message-Id: <20190708215524.31639-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Set igt_spinner.gt for
 early exit
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

U2V0IHVwIGEgZGVmYXVsdCBndCBwb2ludGVyIGZvciBhbiBlYXJseSBjbGVhbnVwIG9mIGlndF9z
cGlubnRlciwgYmVmb3JlCmEgcmVxdWVzdCBpcyBjcmVhdGVkIGFuZCBpZ3Rfc3Bpbm5lci5ndCBz
ZXQgdG8gdGhlIGFjdGl2ZSBlbmdpbmUncy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3Nw
aW5uZXIuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYwppbmRleCAwYzFmNjUyNjJhNjMu
Ljg5YjY1NTJhNjQ5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2lndF9zcGlubmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9z
cGlubmVyLmMKQEAgLTE5LDYgKzE5LDcgQEAgaW50IGlndF9zcGlubmVyX2luaXQoc3RydWN0IGln
dF9zcGlubmVyICpzcGluLCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCW1lbXNl
dChzcGluLCAwLCBzaXplb2YoKnNwaW4pKTsKIAlzcGluLT5pOTE1ID0gaTkxNTsKKwlzcGluLT5n
dCA9ICZpOTE1LT5ndDsKIAogCXNwaW4tPmh3cyA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50
ZXJuYWwoaTkxNSwgUEFHRV9TSVpFKTsKIAlpZiAoSVNfRVJSKHNwaW4tPmh3cykpIHsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
