Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 666953B36D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2561C890FE;
	Mon, 10 Jun 2019 10:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B5088F2D;
 Mon, 10 Jun 2019 10:47:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16851035-1500050 
 for multiple; Mon, 10 Jun 2019 11:46:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 11:46:54 +0100
Message-Id: <20190610104654.20130-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engines: Skip trying to read
 a non-existent TIMESTAMP
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBlci1lbmdpbmUgVElNRVNUQU1QIChhdCBsZWFzdCBhdCB0aGUgb2Zmc2V0IEkga25vdyBh
Ym91dCkgb25seSBjYW1lCmludG8gYmVpbmcgd2l0aCBnZW42LiBTbyBza2lwIHRoZSB0ZXN0IG9u
IG9sZGVyIGdlbiBhcyB0aGUgcmVzdWx0cyBhcmUKZ2FyYmFnZS4KCkJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NzQKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkx
NS9nZW1fY3R4X2VuZ2luZXMuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVzdHMvaTkx
NS9nZW1fY3R4X2VuZ2luZXMuYwppbmRleCAzOGVhMzRkMjEuLjNlY2FkZTQxNyAxMDA2NDQKLS0t
IGEvdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYworKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
ZW5naW5lcy5jCkBAIC00MTksNiArNDE5LDggQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRlbnQoaW50
IGk5MTUpCiAJaW50IHRpbWVsaW5lID0gc3dfc3luY190aW1lbGluZV9jcmVhdGUoKTsKIAl1aW50
MzJfdCBsYXN0LCAqbWFwOwogCisJaWd0X3JlcXVpcmUoZ2VuID49IDYpOyAvKiBObyBwZXItZW5n
aW5lIFRJTUVTVEFNUCBvbiBvbGRlciBnZW4gKi8KKwogCXsKIAkJc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjYnVmZmVyMiBleGVjYnVmID0gewogCQkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2lu
dGVyKCZyZXN1bHRzKSwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
