Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 984EA23CA8B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170DD6E5B4;
	Wed,  5 Aug 2020 12:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30F46E598
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039474-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:09 +0100
Message-Id: <20200805122231.23313-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/37] drm/i915: Add
 list_for_each_entry_safe_continue_reverse
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T25lIG1vcmUgbGlzdCBpdGVyYXRvciB2YXJpYW50LCBmb3Igd2hlbiB3ZSB3YW50IHRvIHVud2lu
ZCBmcm9tIGluc2lkZQpvbmUgbGlzdCBpdGVyYXRvciB3aXRoIHRoZSBpbnRlbnRpb24gb2YgcmVz
dGFydGluZyBmcm9tIHRoZSBjdXJyZW50CmVudHJ5IGFzIHRoZSBuZXcgaGVhZCBvZiB0aGUgbGlz
dC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggfCA2ICsrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaApp
bmRleCBlZjhkYjNhYTc1YzcuLjM4NzM4MzRmMjMxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV91dGlscy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRp
bHMuaApAQCAtMjY2LDYgKzI2NiwxMiBAQCBzdGF0aWMgaW5saW5lIGludCBsaXN0X2lzX2xhc3Rf
cmN1KGNvbnN0IHN0cnVjdCBsaXN0X2hlYWQgKmxpc3QsCiAJcmV0dXJuIFJFQURfT05DRShsaXN0
LT5uZXh0KSA9PSBoZWFkOwogfQogCisjZGVmaW5lIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZV9j
b250aW51ZV9yZXZlcnNlKHBvcywgbiwgaGVhZCwgbWVtYmVyKQlcCisJZm9yIChwb3MgPSBsaXN0
X3ByZXZfZW50cnkocG9zLCBtZW1iZXIpLAkJCVwKKwkgICAgIG4gPSBsaXN0X3ByZXZfZW50cnko
cG9zLCBtZW1iZXIpOwkJCQlcCisJICAgICAmcG9zLT5tZW1iZXIgIT0gKGhlYWQpOwkJCQkJXAor
CSAgICAgcG9zID0gbiwgbiA9IGxpc3RfcHJldl9lbnRyeShuLCBtZW1iZXIpKQorCiBzdGF0aWMg
aW5saW5lIHVuc2lnbmVkIGxvbmcgbXNlY3NfdG9famlmZmllc190aW1lb3V0KGNvbnN0IHVuc2ln
bmVkIGludCBtKQogewogCXVuc2lnbmVkIGxvbmcgaiA9IG1zZWNzX3RvX2ppZmZpZXMobSk7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
