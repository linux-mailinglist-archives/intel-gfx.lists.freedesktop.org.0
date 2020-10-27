Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1829B139
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 15:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B79796EB74;
	Tue, 27 Oct 2020 14:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3F16EB74
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 14:28:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22818232-1500050 
 for multiple; Tue, 27 Oct 2020 14:28:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 14:28:03 +0000
Message-Id: <20201027142803.3940-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Start timeline with a wrap
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

T25jZSB1cG9uIGEgdGltZSB3ZSB1c2VkIHRvIGRvIHRoaXMgYnkgZGVmYXVsdCwgYmFjayB3aGVu
IGl0IHdhcyBhCmdsb2JhbCBzZXFubyB3aXRoIGEgZ2xvYmFsIGJhcnJpZXIgb24gd3JhcC4gU2lu
Y2UgdGhlIHN3aXRjaCBvZgpwZXItY2xpZW50IHRpbWVsaW5lcywgaGFuZGxpbmcgdGhlIHdyYXAg
aXMgY2hlYXBlciBhbmQgeWV0IG1vcmUKY29tcGxpY2F0ZWQsIGFuZCBzbyB3b3J0aCBlbmNvdXJh
Z2luZyBlYXJseSB3cmFwcyBvbmNlIG1vcmUuCgpTdWdnZXN0ZWQtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfdGltZWxpbmUuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggN2VhOTRkMjAxZmU2
Li5mMGJiMWMwM2I0ODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUu
YwpAQCAtMjYzLDYgKzI2Myw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfdGltZWxpbmVfaW5pdChzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lLAogCXRpbWVsaW5lLT5od3NwX2dndHQgPSBpOTE1
X3ZtYV9nZXQoaHdzcCk7CiAJR0VNX0JVR19PTih0aW1lbGluZS0+aHdzcF9vZmZzZXQgPj0gaHdz
cC0+c2l6ZSk7CiAKKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdfR0VNKSkK
KwkJdGltZWxpbmUtPnNlcW5vID0gLTEwdTsgLyogd3JhcCBhZnRlciBhIGZldyByZXF1ZXN0cyAq
LworCiAJdGltZWxpbmUtPmZlbmNlX2NvbnRleHQgPSBkbWFfZmVuY2VfY29udGV4dF9hbGxvYygx
KTsKIAogCW11dGV4X2luaXQoJnRpbWVsaW5lLT5tdXRleCk7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
