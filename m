Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B5FEA401
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 20:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 820B96ED06;
	Wed, 30 Oct 2019 19:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90AF6ED05
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 19:22:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19024463-1500050 
 for multiple; Wed, 30 Oct 2019 19:22:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 19:21:57 +0000
Message-Id: <20191030192159.18404-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030192159.18404-1-chris@chris-wilson.co.uk>
References: <20191030192159.18404-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/gt: Defer engine registration
 until fully initialised
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

T25seSBhZGQgdGhlIGVuZ2luZSB0byB0aGUgYXZhaWxhYmxlIHNldCBvZiB1YWJpIGVuZ2luZXMg
b25jZSBpdCBoYXMKYmVlbiBmdWxseSBpbml0aWFsaXNlZCBhbmQgd2Uga25vdyB3ZSB3YW50IGl0
IGluIHRoZSBwdWJsaWMgc2V0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgpDYzogTWljaGHFgiBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKaW5kZXggYjM4ZWE0NGFiNzYxLi41ZTQwMDQ0NDc4ZmYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0zNDQsNyArMzQ0LDYgQEAg
c3RhdGljIGludCBpbnRlbF9lbmdpbmVfc2V0dXAoc3RydWN0IGludGVsX2d0ICpndCwgZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQpCiAJZ3QtPmVuZ2luZV9jbGFzc1tpbmZvLT5jbGFzc11baW5mby0+
aW5zdGFuY2VdID0gZW5naW5lOwogCWd0LT5lbmdpbmVbaWRdID0gZW5naW5lOwogCi0JaW50ZWxf
ZW5naW5lX2FkZF91c2VyKGVuZ2luZSk7CiAJZ3QtPmk5MTUtPmVuZ2luZVtpZF0gPSBlbmdpbmU7
CiAKIAlyZXR1cm4gMDsKQEAgLTQ4MSw2ICs0ODAsOCBAQCBpbnQgaW50ZWxfZW5naW5lc19pbml0
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCWVyciA9IGluaXQoZW5naW5lKTsKIAkJaWYgKGVycikK
IAkJCWdvdG8gY2xlYW51cDsKKworCQlpbnRlbF9lbmdpbmVfYWRkX3VzZXIoZW5naW5lKTsKIAl9
CiAKIAlyZXR1cm4gMDsKLS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
