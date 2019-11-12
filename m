Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4112F9532
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250FA6EB6A;
	Tue, 12 Nov 2019 16:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CCA86EB6A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:09:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19175941-1500050 
 for multiple; Tue, 12 Nov 2019 16:09:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:09:41 +0000
Message-Id: <20191112160941.23969-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112151729.13370-1-chris@chris-wilson.co.uk>
References: <20191112151729.13370-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Flush gen7 even harder
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

bGl2ZV9ibHQgaXMgc3RpbGwgZmFpbGluZyBvbiBoc3csIHNob3dpbmcgdGhlIGhhbGxtYXJrIG9m
IGluY29oZXJlbmN5LgpTaW5jZSB3ZSBhcmUgZmFpcmx5IGNlcnRhaW4gdGhhdCB0aGUgaW50ZXJy
dXB0IGlzIGFmdGVyIHRoZSBzZXFubyBpcwp2aXNpYmxlLCB0aGUgb3RoZXIgcG9zc2liaWxpdHkg
aXMgdGhhdCB0aGUgc2Vxbm8gaXMgYmVmb3JlIHRoZSB3cml0ZXMgdG8KbWVtb3J5IGFyZSBmbHVz
aGVkLiBUaHJvdyBpbiBhbiBUTEIgaW52YWxpZGF0ZSBiZWZvcmUgdGhlIGJyZWFkY3J1bWIgYXMK
d2UgYXJlIHJlYXNvbmFibHkgY29uZmlkZW50IHRoYXQgZm9yY2VzIGEgQ1Mgc3RhbGwuCgpSZWZl
cmVuY2VzOiBmOTIyOGY3NjU4NzMgKCJkcm0vaTkxNS9ndDogVHJ5IGFuIGV4dHJhIGZsdXNoIG9u
IHRoZSBIYXN3ZWxsIGJsaXR0ZXIiKQpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIxNDcKVGVzdGNhc2U6IGlndC9pOTE1X3NlbGZ0ZXN0
L2xpdmVfYmx0ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQpUcnkgTWlrYSdzIHN1Z2dlc3Rpb24gb2YgYW4gaW52YWxpZGF0ZSBmaXJzdC4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyB8IDUgKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBmYzI5
ZGY3MTI4MTAuLmU4YmVlNDRhZGQzNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKQEAgLTQ1NCw4ICs0NTQsOSBAQCBzdGF0aWMgdTMyICpn
ZW43X3hjc19lbWl0X2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiAqY3Mp
CiAJR0VNX0JVR19PTihpOTE1X3JlcXVlc3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9nZ3R0
ICE9IHJxLT5lbmdpbmUtPnN0YXR1c19wYWdlLnZtYSk7CiAJR0VNX0JVR19PTihvZmZzZXRfaW5f
cGFnZShpOTE1X3JlcXVlc3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9vZmZzZXQpICE9IEk5
MTVfR0VNX0hXU19TRVFOT19BRERSKTsKIAotCSpjcysrID0gTUlfRkxVU0hfRFc7Ci0JKmNzKysg
PSAwOworCSpjcysrID0gKE1JX0ZMVVNIX0RXIHwgTUlfSU5WQUxJREFURV9UTEIgfAorCQkgTUlf
RkxVU0hfRFdfU1RPUkVfSU5ERVggfCBNSV9GTFVTSF9EV19PUF9TVE9SRURXKTsKKwkqY3MrKyA9
IEk5MTVfR0VNX0hXU19TQ1JBVENIX0FERFIgfCBNSV9GTFVTSF9EV19VU0VfR1RUOwogCSpjcysr
ID0gMDsKIAogCSpjcysrID0gTUlfRkxVU0hfRFcgfCBNSV9GTFVTSF9EV19PUF9TVE9SRURXIHwg
TUlfRkxVU0hfRFdfU1RPUkVfSU5ERVg7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
