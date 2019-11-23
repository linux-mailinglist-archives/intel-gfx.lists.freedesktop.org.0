Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F40107FAB
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 18:46:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382066E0D3;
	Sat, 23 Nov 2019 17:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231E46E0D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 17:46:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19313547-1500050 
 for multiple; Sat, 23 Nov 2019 17:46:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Nov 2019 17:46:29 +0000
Message-Id: <20191123174629.891230-1-chris@chris-wilson.co.uk>
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggfCAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICB8IDYgKysrKy0tCiAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IGJjM2I3MmJmYTllMy4uN2YzY2Q4NDk4MmIxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApAQCAtMTAyLDcgKzEwMiw3IEBAIGV4
ZWNsaXN0c19hY3RpdmUoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNs
aXN0cykKIHsKIAlHRU1fQlVHX09OKGV4ZWNsaXN0cy0+YWN0aXZlIC0gZXhlY2xpc3RzLT5pbmZs
aWdodCA+CiAJCSAgIGV4ZWNsaXN0c19udW1fcG9ydHMoZXhlY2xpc3RzKSk7Ci0JcmV0dXJuIFJF
QURfT05DRSgqZXhlY2xpc3RzLT5hY3RpdmUpOworCXJldHVybiAqUkVBRF9PTkNFKGV4ZWNsaXN0
cy0+YWN0aXZlKTsKIH0KIAogc3RhdGljIGlubGluZSB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCmluZGV4IDA2MmRkOGFjNDcyYS4uNGFkYzZjOGQwMmViIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjE4Niw2ICsyMTg2LDEwIEBAIHN0YXRpYyB2b2lkIHBy
b2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCXdoaWxlICgqZXhl
Y2xpc3RzLT5hY3RpdmUpCiAJCQkJZXhlY2xpc3RzX3NjaGVkdWxlX291dCgqZXhlY2xpc3RzLT5h
Y3RpdmUrKyk7CiAKKwkJCS8qIFBvaW50IGFjdGl2ZSB0byB0aGUgbmV3IEVMU1A7IHByZXZlbnQg
b3ZlcndyaXRpbmcgKi8KKwkJCVdSSVRFX09OQ0UoZXhlY2xpc3RzLT5hY3RpdmUsIGV4ZWNsaXN0
cy0+cGVuZGluZyk7CisJCQlzZXRfdGltZXNsaWNlKGVuZ2luZSk7CisKIAkJCS8qIHN3aXRjaCBw
ZW5kaW5nIHRvIGluZmxpZ2h0ICovCiAJCQlHRU1fQlVHX09OKCFhc3NlcnRfcGVuZGluZ192YWxp
ZChleGVjbGlzdHMsICJwcm9tb3RlIikpOwogCQkJZXhlY2xpc3RzLT5hY3RpdmUgPQpAQCAtMjE5
NCw4ICsyMTk4LDYgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCQkJCSAgICAgICBleGVjbGlzdHNfbnVtX3BvcnRzKGV4ZWNsaXN0cykg
KgogCQkJCSAgICAgICBzaXplb2YoKmV4ZWNsaXN0cy0+cGVuZGluZykpOwogCi0JCQlzZXRfdGlt
ZXNsaWNlKGVuZ2luZSk7Ci0KIAkJCVdSSVRFX09OQ0UoZXhlY2xpc3RzLT5wZW5kaW5nWzBdLCBO
VUxMKTsKIAkJfSBlbHNlIHsKIAkJCUdFTV9CVUdfT04oISpleGVjbGlzdHMtPmFjdGl2ZSk7Ci0t
IAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
