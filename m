Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDD0F429D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 09:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132796F8B3;
	Fri,  8 Nov 2019 08:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1B26F8B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 08:56:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19124695-1500050 
 for multiple; Fri, 08 Nov 2019 08:56:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 08:56:24 +0000
Message-Id: <20191108085626.32429-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108085626.32429-1-chris@chris-wilson.co.uk>
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/pmu: Cheat when reading the actual
 frequency to avoid fw
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

V2Ugd2FudCB0byBhdm9pZCB0YWtpbmcgZm9yY2V3YWtlIHdoZW4gcXVlcnlpbmcgdGhlIHBlcmZv
cm1hbmNlIHN0YXRzLAphcyB3ZSB3aXNoIHRvIGF2b2lkIHBlcnR1cmJpbmcgdGhlIHN5c3RlbSB1
bmRlciBvYnNlcnZhdGlvbi4gKEFuZCB3aXRoCnRoZSBmb3JjZXdha2UgYmVpbmcga2VwdCBhbGl2
ZSBmb3IgMW1zIGFmdGVyIHVzZSwgc2FtcGxpbmcgdGhlIGZyZXF1ZW5jeQpmcm9tIGEgdGltZXIg
a2VlcHMgZm9yY2V3YWtlIDYwJSBhY3RpdmUuKQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgfCA4
ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCmluZGV4IDA1Mzk1MDE1ZDFmMi4uZGJkZTgwYTM3NmNi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKQEAgLTM2Niw4ICszNjYsMTIgQEAgZnJlcXVlbmN5
X3NhbXBsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQogCiAJ
CXZhbCA9IHJwcy0+Y3VyX2ZyZXE7CiAJCWlmIChpbnRlbF9ndF9wbV9nZXRfaWZfYXdha2UoZ3Qp
KSB7Ci0JCQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZF9ub3RyYWNlKHVuY29yZSwgR0VONl9SUFNU
QVQxKTsKLQkJCXZhbCA9IGludGVsX2dldF9jYWdmKHJwcywgdmFsKTsKKwkJCXUzMiBzdGF0Owor
CisJCQlzdGF0ID0gaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCBHRU42X1JQU1RBVDEpOwor
CQkJaWYgKHN0YXQpCisJCQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YocnBzLCBzdGF0KTsKKwogCQkJ
aW50ZWxfZ3RfcG1fcHV0KGd0KTsKIAkJfQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
