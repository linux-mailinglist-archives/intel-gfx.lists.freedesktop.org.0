Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C997114170
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 14:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1886E103;
	Thu,  5 Dec 2019 13:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD406E103
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 13:29:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19471106-1500050 
 for multiple; Thu, 05 Dec 2019 13:29:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 13:29:12 +0000
Message-Id: <20191205132912.606868-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Reinitialise the local list
 before repeating
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

QXMgd2UgbWF5IHN0YXJ0IHRoZSBsb29wIGFnYWluLCB3ZSByZXF1aXJlIG91ciBsb2NhbCBsaXN0
IG9mIGk5MTVfdm1hCndlJ3ZlIHByb2Nlc3NlZCB0byBiZSByZWluaXRpYWxpc2VkLgoKRml4ZXM6
IGFhNWU0NDUzZGMwNSAoImRybS9pOTE1L2dlbTogVHJ5IHRvIGZsdXNoIHBlbmRpbmcgdW5iaW5k
IGV2ZW50cyIpCkNsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC9pc3N1ZXMvNzMxClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwppbmRleCBjYzhjNjk2MGI2ODkuLjk4YjY1YjcxOGUxYSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCkBAIC0xNzUsNyArMTc1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF91bmJp
bmQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJaTkxNV92bV9jbG9zZSh2bSk7
CiAJCXNwaW5fbG9jaygmb2JqLT52bWEubG9jayk7CiAJfQotCWxpc3Rfc3BsaWNlKCZzdGlsbF9p
bl9saXN0LCAmb2JqLT52bWEubGlzdCk7CisJbGlzdF9zcGxpY2VfaW5pdCgmc3RpbGxfaW5fbGlz
dCwgJm9iai0+dm1hLmxpc3QpOwogCXNwaW5fdW5sb2NrKCZvYmotPnZtYS5sb2NrKTsKIAogCWlm
IChyZXQgPT0gLUVBR0FJTiAmJiBmbGFncyAmIEk5MTVfR0VNX09CSkVDVF9VTkJJTkRfQUNUSVZF
KSB7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
