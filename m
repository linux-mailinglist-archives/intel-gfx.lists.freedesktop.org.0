Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2222C107E19
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2019 12:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0E36E0A2;
	Sat, 23 Nov 2019 11:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC896E0A2
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2019 11:03:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19310969-1500050 
 for multiple; Sat, 23 Nov 2019 11:03:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 23 Nov 2019 11:03:30 +0000
Message-Id: <20191123110330.874616-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZS5oCmluZGV4IGJjM2I3MmJmYTllMy4uN2YzY2Q4NDk4MmIxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaApAQCAtMTAyLDcgKzEwMiw3IEBA
IGV4ZWNsaXN0c19hY3RpdmUoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4
ZWNsaXN0cykKIHsKIAlHRU1fQlVHX09OKGV4ZWNsaXN0cy0+YWN0aXZlIC0gZXhlY2xpc3RzLT5p
bmZsaWdodCA+CiAJCSAgIGV4ZWNsaXN0c19udW1fcG9ydHMoZXhlY2xpc3RzKSk7Ci0JcmV0dXJu
IFJFQURfT05DRSgqZXhlY2xpc3RzLT5hY3RpdmUpOworCXJldHVybiAqUkVBRF9PTkNFKGV4ZWNs
aXN0cy0+YWN0aXZlKTsKIH0KIAogc3RhdGljIGlubGluZSB2b2lkCi0tIAoyLjI0LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
