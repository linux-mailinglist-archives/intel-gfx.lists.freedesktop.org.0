Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA925107FA6
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 18:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6096E0B6;
	Sat, 23 Nov 2019 17:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958A96E0B6
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 17:35:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19313498-1500050 
 for multiple; Sat, 23 Nov 2019 17:35:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Nov 2019 17:35:24 +0000
Message-Id: <20191123173524.884887-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191123110330.874616-1-chris@chris-wilson.co.uk>
References: <20191123110330.874616-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Mark the execlists->active as the
 primary volatile access
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

U2luY2Ugd2Ugd2FudCB0byBkbyBhIGxvY2tsZXNzIHJlYWQgb2YgdGhlIGN1cnJlbnQgYWN0aXZl
IHJlcXVlc3QsIGFuZAp0aGF0IHJlcXVlc3QgaXMgd3JpdHRlbiB0byBieSBwcm9jZXNzX2NzYiBh
bHNvIHdpdGhvdXQgc2VyaWFsaXNhdGlvbiwgd2UKbmVlZCB0byBpbnN0cnVjdCBnY2MgdG8gdGFr
ZSBjYXJlIGluIHJlYWRpbmcgdGhlIHBvaW50ZXIgaXRzZWxmLgoKT3RoZXJ3aXNlLCB3ZSBoYXZl
IG9ic2VydmVkIGV4ZWNsaXN0c19hY3RpdmUoKSB0byByZXBvcnQgMHg0MC4KClsgMjQwMC43NjAz
ODFdIGlndC9wYXJhLTQwOTggICAgMS4ucy4gMjM3NjQ3OTMwMHVzIDogcHJvY2Vzc19jc2I6IHJj
czAgY3MtaXJxIGhlYWQ9MywgdGFpbD00ClsgMjQwMC43NjA4MjZdIGlndC9wYXJhLTQwOTggICAg
MS4ucy4gMjM3NjQ3OTMwM3VzIDogcHJvY2Vzc19jc2I6IHJjczAgY3NiWzRdOiBzdGF0dXM9MHgw
MDAwMDAwMToweDAwMDAwMDAwClsgMjQwMC43NjEyNzFdIGlndC9wYXJhLTQwOTggICAgMS4ucy4g
MjM3NjQ3OTMwNnVzIDogdHJhY2VfcG9ydHM6IHJjczA6IHByb21vdGUgeyBiOWM1OToyNjIyLCBi
OWM1NToyNjI0IH0KWyAyNDAwLjc2MTcyNl0gaWd0L3BhcmEtNDA5NyAgICAwZC4uLiAyMzc2NDc5
MzExdXMgOiBfX2k5MTVfc2NoZWR1bGU6IHJjczA6IC0yMTQ3NDgzNjQ4LT4zLCBpbmZsaWdodDow
MDAwMDAwMDAwMDAwMDQwLCBycTpmZmZmODg4MjA4YzFlOTQwCgp3aGljaCBpcyBpbXBvc3NpYmxl
IQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggfCAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgfCAxNCArKysrKysrLS0tLS0tLQog
MiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAppbmRleCBiYzNiNzJiZmE5ZTMuLjdmM2NkODQ5
ODJiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKQEAgLTEwMiw3ICsx
MDIsNyBAQCBleGVjbGlzdHNfYWN0aXZlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xp
c3RzICpleGVjbGlzdHMpCiB7CiAJR0VNX0JVR19PTihleGVjbGlzdHMtPmFjdGl2ZSAtIGV4ZWNs
aXN0cy0+aW5mbGlnaHQgPgogCQkgICBleGVjbGlzdHNfbnVtX3BvcnRzKGV4ZWNsaXN0cykpOwot
CXJldHVybiBSRUFEX09OQ0UoKmV4ZWNsaXN0cy0+YWN0aXZlKTsKKwlyZXR1cm4gKlJFQURfT05D
RShleGVjbGlzdHMtPmFjdGl2ZSk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCAwNjJkZDhhYzQ3MmEuLmJiZjNjMWFiMTcyMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTIxODYsMTUgKzIxODYsMTUgQEAgc3Rh
dGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJ
d2hpbGUgKCpleGVjbGlzdHMtPmFjdGl2ZSkKIAkJCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0KCpl
eGVjbGlzdHMtPmFjdGl2ZSsrKTsKIAorCQkJc2V0X3RpbWVzbGljZShlbmdpbmUpOworCiAJCQkv
KiBzd2l0Y2ggcGVuZGluZyB0byBpbmZsaWdodCAqLwogCQkJR0VNX0JVR19PTighYXNzZXJ0X3Bl
bmRpbmdfdmFsaWQoZXhlY2xpc3RzLCAicHJvbW90ZSIpKTsKLQkJCWV4ZWNsaXN0cy0+YWN0aXZl
ID0KLQkJCQltZW1jcHkoZXhlY2xpc3RzLT5pbmZsaWdodCwKLQkJCQkgICAgICAgZXhlY2xpc3Rz
LT5wZW5kaW5nLAotCQkJCSAgICAgICBleGVjbGlzdHNfbnVtX3BvcnRzKGV4ZWNsaXN0cykgKgot
CQkJCSAgICAgICBzaXplb2YoKmV4ZWNsaXN0cy0+cGVuZGluZykpOwotCi0JCQlzZXRfdGltZXNs
aWNlKGVuZ2luZSk7CisJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+YWN0aXZlLAorCQkJCSAgIG1l
bWNweShleGVjbGlzdHMtPmluZmxpZ2h0LAorCQkJCQkgIGV4ZWNsaXN0cy0+cGVuZGluZywKKwkJ
CQkJICBleGVjbGlzdHNfbnVtX3BvcnRzKGV4ZWNsaXN0cykgKgorCQkJCQkgIHNpemVvZigqZXhl
Y2xpc3RzLT5wZW5kaW5nKSkpOwogCiAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVuZGluZ1sw
XSwgTlVMTCk7CiAJCX0gZWxzZSB7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
