Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFB610E92A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 11:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473956E12E;
	Mon,  2 Dec 2019 10:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A046E12E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 10:48:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19425230-1500050 
 for multiple; Mon, 02 Dec 2019 10:48:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 10:48:08 +0000
Message-Id: <20191202104808.2305751-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202104410.2278251-3-chris@chris-wilson.co.uk>
References: <20191202104410.2278251-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Try hard to bind the context
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

SXQgaXMgbm90IGFjY2VwdGFibGUgZm9yIGNvbnRleHQgcGlubmluZyB0byBmYWlsIHdpdGggLUVO
T1NQQyBhcyB3ZQpzaG91bGQgYWx3YXlzIGJlIGFibGUgdG8gbWFrZSBzcGFjZSBpbiB0aGUgR0dU
VC4gVGhlIG9ubHkgcmVhc29uIHdlIG1heQpmYWlsIGlzIHRoYXQgb3RoZXIgInRlbXBvcmFyeSIg
Y29udGV4dCBwaW5zIGFyZSByZXNlcnZpbmcgdGhlaXIgc3BhY2UKYW5kIHdlIG5lZWQgdG8gd2Fp
dCBmb3IgYW4gYXZhaWxhYmxlIHNsb3QuCgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY3NgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyB8IDE5ICsrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKaW5kZXggMTBiM2Q2ZDQ0MDQ1Li40NzcwODZkNWU3NzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCkBAIC0xOTM0LDkgKzE5MzQsMjIgQEAgaW50IGdlbjZfcHBndHRfcGluKHN0
cnVjdCBpOTE1X3BwZ3R0ICpiYXNlKQogCSAqIHNpemUuIFdlIGFsbG9jYXRlIGF0IHRoZSB0b3Ag
b2YgdGhlIEdUVCB0byBhdm9pZCBmcmFnbWVudGF0aW9uLgogCSAqLwogCWlmICghYXRvbWljX3Jl
YWQoJnBwZ3R0LT5waW5fY291bnQpKSB7Ci0JCWVyciA9IGk5MTVfdm1hX3BpbihwcGd0dC0+dm1h
LAotCQkJCSAgIDAsIEdFTjZfUERfQUxJR04sCi0JCQkJICAgUElOX0dMT0JBTCB8IFBJTl9ISUdI
KTsKKwkJZG8geworCQkJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSBwcGd0dC0+dm1h
LT52bTsKKworCQkJZXJyID0gaTkxNV92bWFfcGluKHBwZ3R0LT52bWEsCisJCQkJCSAgIDAsIEdF
TjZfUERfQUxJR04sCisJCQkJCSAgIFBJTl9HTE9CQUwgfCBQSU5fSElHSCk7CisJCQlpZiAoZXJy
ICE9IC1FTk9TUEMpCisJCQkJYnJlYWs7CisKKwkJCS8qIFdlIGRvbid0IHRha2Ugbm8gZm9yIGFu
IGFuc3dlciEgKi8KKwkJCW11dGV4X2xvY2soJnZtLT5tdXRleCk7CisJCQllcnIgPSBpOTE1X2dl
bV9ldmljdF92bSh2bSk7CisJCQltdXRleF91bmxvY2soJnZtLT5tdXRleCk7CisJCQlpZiAoZXJy
KQorCQkJCWJyZWFrOworCQl9IHdoaWxlICgxKTsKIAl9CiAJaWYgKCFlcnIpCiAJCWF0b21pY19p
bmMoJnBwZ3R0LT5waW5fY291bnQpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
