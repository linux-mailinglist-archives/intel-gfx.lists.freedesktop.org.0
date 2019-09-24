Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F78BC7C3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3F46EA17;
	Tue, 24 Sep 2019 12:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4966EA17
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 12:18:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18599039-1500050 
 for multiple; Tue, 24 Sep 2019 13:18:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Sep 2019 13:18:21 +0100
Message-Id: <20190924121821.31277-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_map_gtt: Escape from slow forked
 GTT access
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

QmV3YXJlIHRoZSBzbGl0aHkgdCdvdmVzLgoKRm9ya2VkIEdUVCBhY2Nlc3Mgb24gaWNsIGlzIG5v
dG9yaW91c2x5IHNsb3csIHNvIHJhdGhlciB0aGFuIHNwZW5kIGFuCmV0ZXJuaXR5IGNoZWNraW5n
IHRoZSB3aG9sZSBvYmplY3QsIGNoZWNrIGZvciBhIGNvbXBsZXRpb24gZXZlbnQgYWZ0ZXIKaGFu
ZGxpbmcgdGhlIHBhZ2VmYXVsdC4gSXQncyBpcyB0aGUgcmFjZSBvZiB0aGUgcGFnZWZhdWx0IHZz
IHJlc2V0IHRoYXQKd2UgY2FyZSBtb3N0IGFib3V0LCBhbmQgd2UgZXhwZWN0IHRoZSBidWcgdG8g
cmVzdWx0IGluIHRoZSBwYWdlZmF1bHQKYmVpbmcgYmxvY2tlZCBpbmRlZmluaXRlbHksIHNvIGNo
ZWNraW5nIGFmdGVyd2FyZHMgZG9lcyBub3QgcmVkdWNlCmNvdmVyYWdlLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9t
bWFwX2d0dC5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9n
dHQuYwppbmRleCAwNDI4YTEzNzIuLjkxZGE1YTM3YiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9n
ZW1fbW1hcF9ndHQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCkBAIC02MDIsNiAr
NjAyLDkgQEAgdGVzdF9oYW5nKGludCBmZCkKIAogCQkJCWd0dFswXVt4XSA9IHBhdHRlcm5zW25l
eHRfcGF0dGVybl07CiAJCQkJZ3R0WzFdW3hdID0gcGF0dGVybnNbbmV4dF9wYXR0ZXJuXTsKKwor
CQkJCWlmIChSRUFEX09OQ0UoY29udHJvbC0+ZG9uZSkpCisJCQkJCWJyZWFrOwogCQkJfQogCiAJ
CQlsYXN0X3BhdHRlcm4gPSBuZXh0X3BhdHRlcm47Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
