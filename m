Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B993F7342
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FED86E8BD;
	Mon, 11 Nov 2019 11:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3126E8BA;
 Mon, 11 Nov 2019 11:41:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19158428-1500050 
 for multiple; Mon, 11 Nov 2019 11:40:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:40:45 +0000
Message-Id: <20191111114045.28097-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Flush RCU before timing our
 own critical sections
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2Fubm90IGNvbnRyb2wgaG93IGxvbmcgUkNVIHRha2VzIHRvIGZpbmQgYSBxdWllc2NlbnQg
cG9pbnQgYXMgdGhhdApkZXBlbmRzIHVwb24gdGhlIGJhY2tncm91bmQgbG9hZCBhbmQgc28gbWF5
IHRha2UgYW4gYXJiaXRyYXJ5IHRpbWUuCkluc3RlYWQsIGxldCdzIHRyeSB0byBhdm9pZCB0aGF0
IGltcGFjdGluZyBvdXIgbWVhc3VyZW1lbnRzIGJ5IGluc2VydGluZwphbiByY3VfYmFycmllcigp
IGJlZm9yZSBvdXIgY3JpdGljYWwgdGltaW5nIHNlY3Rpb25zIGFuZCBob3BlIHRoYXQgaGlkZXMK
dGhlIGlzc3VlLCBsZXR0aW5nIHVzIGFsd2F5cyBwZXJmb3JtIGEgZmFzdCByZXNldC4gRndpdywg
d2UgZG8gdGhlCmV4cGVkaXRlZCBSQ1Ugc3luY2hyb25pemUsIGJ1dCB0aGF0IGlzIG5vdCBhbHdh
eXMgZW5vdWdoLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMg
Yi90ZXN0cy9pOTE1L2dlbV9laW8uYwppbmRleCA4ZDZjYjk3NjAuLjQ5ZDJhOTllOSAxMDA2NDQK
LS0tIGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKQEAg
LTcxLDYgKzcxLDcgQEAgc3RhdGljIHZvaWQgdHJpZ2dlcl9yZXNldChpbnQgZmQpCiB7CiAJc3Ry
dWN0IHRpbWVzcGVjIHRzID0geyB9OwogCisJcmN1X2JhcnJpZXIoZmQpOyAvKiBmbHVzaCBhbnkg
ZXhjZXNzIHdvcmsgYmVmb3JlIHdlIHN0YXJ0IHRpbWluZyAqLwogCWlndF9uc2VjX2VsYXBzZWQo
JnRzKTsKIAogCWlndF9rbXNnKEtNU0dfREVCVUcgIkZvcmNpbmcgR1BVIHJlc2V0XG4iKTsKQEAg
LTIyNyw2ICsyMjgsMTAgQEAgc3RhdGljIHZvaWQgaGFuZ19oYW5kbGVyKHVuaW9uIHNpZ3ZhbCBh
cmcpCiAJaWd0X2RlYnVnKCJoYW5nIGRlbGF5ID0gJS4yZnVzXG4iLAogCQkgIGlndF9uc2VjX2Vs
YXBzZWQoJmN0eC0+ZGVsYXkpIC8gMTAwMC4wKTsKIAorCS8qIGZsdXNoIGFueSBleGNlc3Mgd29y
ayBiZWZvcmUgd2Ugc3RhcnQgdGltaW5nIG91ciByZXNldCAqLworCWlndF9hc3NlcnQoaWd0X3N5
c2ZzX3ByaW50ZihjdHgtPmRlYnVnZnMsICJpOTE1X2Ryb3BfY2FjaGVzIiwKKwkJCQkgICAgIiVk
IiwgRFJPUF9SQ1UpKTsKKwogCWlndF9uc2VjX2VsYXBzZWQoY3R4LT50cyk7CiAJaWd0X2Fzc2Vy
dChpZ3Rfc3lzZnNfc2V0KGN0eC0+ZGVidWdmcywgImk5MTVfd2VkZ2VkIiwgIi0xIikpOwogCi0t
IAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
