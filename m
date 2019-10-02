Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA8C8883
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 14:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D8BF6E0E3;
	Wed,  2 Oct 2019 12:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849946E0E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 12:30:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18693043-1500050 
 for multiple; Wed, 02 Oct 2019 13:30:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 13:30:14 +0100
Message-Id: <20191002123014.1545-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Refactor tests on obj->ops->flags
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgcmVwZWF0IG9iai0+b3BzLT5mbGFncyBpbiBvdXIgb2JqZWN0IGNoZWNrcywgc28gcHVsbCB0
aGF0IGludG8gaXRzCm93biBsaXR0bGUgaGVscGVyIGZvciBjbGFyaXR5LgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oIHwgMTcgKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCBhZWMwNWY5NjdkOWQuLjUzYzcwNjliYTNlOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMTM0LDM0
ICsxMzQsNDEgQEAgaTkxNV9nZW1fb2JqZWN0X2lzX3JlYWRvbmx5KGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIG9iai0+YmFzZS52bWFfbm9kZS5yZWFkb25s
eTsKIH0KIAorc3RhdGljIGlubGluZSBib29sCitpOTE1X2dlbV9vYmplY3RfdHlwZV9oYXMoY29u
c3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSB1bnNpZ25lZCBsb25nIGZs
YWdzKQoreworCXJldHVybiBvYmotPm9wcy0+ZmxhZ3MgJiBmbGFnczsKK30KKwogc3RhdGljIGlu
bGluZSBib29sCiBpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdlKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7Ci0JcmV0dXJuIG9iai0+b3BzLT5mbGFncyAmIEk5
MTVfR0VNX09CSkVDVF9IQVNfU1RSVUNUX1BBR0U7CisJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF90
eXBlX2hhcyhvYmosIEk5MTVfR0VNX09CSkVDVF9IQVNfU1RSVUNUX1BBR0UpOwogfQogCiBzdGF0
aWMgaW5saW5lIGJvb2wKIGk5MTVfZ2VtX29iamVjdF9pc19zaHJpbmthYmxlKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7Ci0JcmV0dXJuIG9iai0+b3BzLT5mbGFncyAm
IEk5MTVfR0VNX09CSkVDVF9JU19TSFJJTktBQkxFOworCXJldHVybiBpOTE1X2dlbV9vYmplY3Rf
dHlwZV9oYXMob2JqLCBJOTE1X0dFTV9PQkpFQ1RfSVNfU0hSSU5LQUJMRSk7CiB9CiAKIHN0YXRp
YyBpbmxpbmUgYm9vbAogaTkxNV9nZW1fb2JqZWN0X2lzX3Byb3h5KGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7Ci0JcmV0dXJuIG9iai0+b3BzLT5mbGFncyAmIEk5MTVf
R0VNX09CSkVDVF9JU19QUk9YWTsKKwlyZXR1cm4gaTkxNV9nZW1fb2JqZWN0X3R5cGVfaGFzKG9i
aiwgSTkxNV9HRU1fT0JKRUNUX0lTX1BST1hZKTsKIH0KIAogc3RhdGljIGlubGluZSBib29sCiBp
OTE1X2dlbV9vYmplY3RfbmV2ZXJfYmluZF9nZ3R0KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopCiB7Ci0JcmV0dXJuIG9iai0+b3BzLT5mbGFncyAmIEk5MTVfR0VNX09CSkVD
VF9OT19HR1RUOworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfdHlwZV9oYXMob2JqLCBJOTE1X0dF
TV9PQkpFQ1RfTk9fR0dUVCk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgYm9vbAogaTkxNV9nZW1fb2Jq
ZWN0X25lZWRzX2FzeW5jX2NhbmNlbChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQogewotCXJldHVybiBvYmotPm9wcy0+ZmxhZ3MgJiBJOTE1X0dFTV9PQkpFQ1RfQVNZTkNf
Q0FOQ0VMOworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfdHlwZV9oYXMob2JqLCBJOTE1X0dFTV9P
QkpFQ1RfQVNZTkNfQ0FOQ0VMKTsKIH0KIAogc3RhdGljIGlubGluZSBib29sCi0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
