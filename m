Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10552FF47D
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 18:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944CA6E1B4;
	Sat, 16 Nov 2019 17:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE7A6E1A8
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 17:51:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19226424-1500050 
 for multiple; Sat, 16 Nov 2019 17:51:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 16 Nov 2019 17:51:35 +0000
Message-Id: <20191116175139.1790440-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
References: <20191116175139.1790440-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/11] drm/i915/gt: Flush the requests after
 wedging on suspend
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

UmV0aXJlIGFsbCByZXF1ZXN0cyBpZiB3ZSByZXNvcnQgdG8gd2VkZ2VkIHRoZSBkcml2ZXIgb24g
c3VzcGVuZC4gVGhleQp3aWxsIG5vdyBiZSBpZGxlLCBzbyB3ZSBtaWdodCBhcyB3ZSBmcmVlIHRo
ZW0gYmVmb3JlIHNodXR0aW5nIGRvd24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9wbS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRleCA3YTkwNDRhYzRiNzUuLmY2YjUxNjlkNjIz
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0yNTYsNiArMjU2LDcg
QEAgc3RhdGljIHZvaWQgd2FpdF9mb3Jfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCQkg
KiB0aGUgZ3B1IHF1aWV0LgogCQkgKi8KIAkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7CisJCWlu
dGVsX2d0X3JldGlyZV9yZXF1ZXN0cyhndCk7CiAJfQogCiAJaW50ZWxfZ3RfcG1fd2FpdF9mb3Jf
aWRsZShndCk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
