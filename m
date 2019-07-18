Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16436C99B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 09:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E826E326;
	Thu, 18 Jul 2019 07:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005C36E312
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 07:00:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17390385-1500050 
 for multiple; Thu, 18 Jul 2019 08:00:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:00:13 +0100
Message-Id: <20190718070024.21781-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718070024.21781-1-chris@chris-wilson.co.uk>
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/20] drm/i915: Use intel_engine_lookup_user
 for probing HAS_BSD etc
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

VXNlIHRoZSBzYW1lIG1lY2hhbmlzbSB0byBkZXRlcm1pbmUgaWYgYSBiYWNrZW5kIGVuZ2luZSBl
eGlzdHMgZm9yIGEKdWFiaSBtYXBwaW5nIGFzIHVzZWQgaW50ZXJuYWxseS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxMyArKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CmluZGV4IGQxYzM0OTljOGUwMy4uMzY3YmRjNDY4OWYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKQEAgLTYxLDYgKzYxLDcgQEAKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0Lmgi
CiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgorI2luY2x1ZGUgImd0L2ludGVsX2Vu
Z2luZV91c2VyLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRl
bF9ndF9wbS5oIgogI2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCkBAIC0zNzEsMTYgKzM3Miwy
MCBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKIAkJdmFsdWUgPSBkZXZfcHJpdi0+b3ZlcmxheSA/IDEgOiAwOwogCQli
cmVhazsKIAljYXNlIEk5MTVfUEFSQU1fSEFTX0JTRDoKLQkJdmFsdWUgPSAhIWRldl9wcml2LT5l
bmdpbmVbVkNTMF07CisJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3By
aXYsCisJCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMCk7CiAJCWJyZWFrOwogCWNh
c2UgSTkxNV9QQVJBTV9IQVNfQkxUOgotCQl2YWx1ZSA9ICEhZGV2X3ByaXYtPmVuZ2luZVtCQ1Mw
XTsKKwkJdmFsdWUgPSAhIWludGVsX2VuZ2luZV9sb29rdXBfdXNlcihkZXZfcHJpdiwKKwkJCQkJ
CSAgIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksIDApOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFS
QU1fSEFTX1ZFQk9YOgotCQl2YWx1ZSA9ICEhZGV2X3ByaXYtPmVuZ2luZVtWRUNTMF07CisJCXZh
bHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3ByaXYsCisJCQkJCQkgICBJOTE1
X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNFLCAwKTsKIAkJYnJlYWs7CiAJY2FzZSBJOTE1X1BB
UkFNX0hBU19CU0QyOgotCQl2YWx1ZSA9ICEhZGV2X3ByaXYtPmVuZ2luZVtWQ1MxXTsKKwkJdmFs
dWUgPSAhIWludGVsX2VuZ2luZV9sb29rdXBfdXNlcihkZXZfcHJpdiwKKwkJCQkJCSAgIEk5MTVf
RU5HSU5FX0NMQVNTX1ZJREVPLCAxKTsKIAkJYnJlYWs7CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19M
TEM6CiAJCXZhbHVlID0gSEFTX0xMQyhkZXZfcHJpdik7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
