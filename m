Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDC8102956
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BA56E992;
	Tue, 19 Nov 2019 16:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2DA6E990
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:26:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19260508-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:26:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 16:25:59 +0000
Message-Id: <20191119162559.3313003-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119162559.3313003-1-chris@chris-wilson.co.uk>
References: <20191119162559.3313003-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Schedule next retirement worker
 first
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

QXMgd2UgbWF5IHBhcmsgdGhlIGd0IGR1cmluZyByZXF1ZXN0IHJldGlyZW1lbnQsIHdlIG1heSB0
aGVuIGNhbmNlbCB0aGUKcmV0aXJlbWVudCB3b3JrZXIgb25seSB0byB0aGVuIHByb2dyYW0gdGhl
IGRlbGF5ZWQgd29ya2VyIG9uY2UgbW9yZS4KCklmIHdlIHNjaGVkdWxlIHRoZSBuZXh0IGRlbGF5
ZWQgcmV0aXJlbWVudCB3b3JrZXIgZmlyc3QsIGlmIHdlIHRoZW4gcGFyawp0aGUgZ3QsIHRoZSB3
b3JrIHJlbWFpbiBjYW5jZWxsZWQgW3VudGlsIHdlIHVucGFya10uCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9yZXF1ZXN0cy5jCmluZGV4IGE3OWU2ZWZiMzFhMi4uMjUyOTFlMmFmMjFlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMKQEAgLTExMCw5ICsxMTAs
OSBAQCBzdGF0aWMgdm9pZCByZXRpcmVfd29ya19oYW5kbGVyKHN0cnVjdCB3b3JrX3N0cnVjdCAq
d29yaykKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0KIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVv
ZigqZ3QpLCByZXF1ZXN0cy5yZXRpcmVfd29yay53b3JrKTsKIAotCWludGVsX2d0X3JldGlyZV9y
ZXF1ZXN0cyhndCk7CiAJc2NoZWR1bGVfZGVsYXllZF93b3JrKCZndC0+cmVxdWVzdHMucmV0aXJl
X3dvcmssCiAJCQkgICAgICByb3VuZF9qaWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7CisJaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzKGd0KTsKIH0KIAogdm9pZCBpbnRlbF9ndF9pbml0X3JlcXVlc3Rz
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
