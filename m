Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68934632C7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 10:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5280189AC6;
	Tue,  9 Jul 2019 08:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB0989AC0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 08:17:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17179882-1500050 
 for multiple; Tue, 09 Jul 2019 09:17:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 09:17:18 +0100
Message-Id: <20190709081718.27843-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/userptr: Don't mark readonly objects
 as dirty
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

SWYgd2UgbWFwIGFuIG9iamVjdCBhcyByZWFkb25seSBpbnRvIHRoZSBHVFQsIHdlIGtub3cgdGhh
dCB0aGUgR1BVCmNhbm5vdCBoYXZlIHdyaXR0ZW4gdG8gaXQgYW5kIHNvIHRoZSBvYmplY3QgaXMg
bm90IGRpcnR5IGFuZCB3ZSBkb24ndApuZWVkIHRvIGZsdXNoIHRoZSB3cml0ZXMgYmFjayB0byB0
aGUgc3lzdGVtLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgfCA4ICsrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggMzJkMjA4ZWRlMzQzLi5iOWQyYmIxNWU0
YTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwpAQCAt
NjYzLDYgKzY2MywxNCBAQCBpOTE1X2dlbV91c2VycHRyX3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCV9faTkxNV9nZW1fb2JqZWN0X3JlbGVhc2Vfc2htZW0ob2Jq
LCBwYWdlcywgdHJ1ZSk7CiAJaTkxNV9nZW1fZ3R0X2ZpbmlzaF9wYWdlcyhvYmosIHBhZ2VzKTsK
IAorCS8qCisJICogV2UgYWx3YXlzIG1hcmsgb2JqZWN0cyBhcyBkaXJ0eSB3aGVuIHRoZXkgYXJl
IHVzZWQgYnkgdGhlIEdQVSwKKwkgKiBqdXN0IGluIGNhc2UuIEhvd2V2ZXIsIGlmIHdlIHNldCB0
aGUgdm1hIGFzIGJlaW5nIHJlYWQtb25seSB3ZSBrbm93CisJICogdGhhdCB0aGUgb2JqZWN0IHdp
bGwgbmV2ZXIgaGF2ZSBiZWVuIHdyaXR0ZW4gdG8uCisJICovCisJaWYgKGk5MTVfZ2VtX29iamVj
dF9pc19yZWFkb25seShvYmopKQorCQlvYmotPm1tLmRpcnR5ID0gZmFsc2U7CisKIAlmb3JfZWFj
aF9zZ3RfcGFnZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKIAkJaWYgKG9iai0+bW0uZGlydHkp
CiAJCQkvKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
