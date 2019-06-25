Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFB755C5F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 01:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392C76E185;
	Tue, 25 Jun 2019 23:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D6C6E162
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 23:33:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17024361-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 00:33:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 00:33:48 +0100
Message-Id: <20190625233349.32371-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Drop stale commentary for
 timeline density
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

V2Ugbm8gbG9uZ2VyIGFsbG9jYXRlIGEgY29udGlndW91cyBzZXQgb2YgdGltZWxpbmUgaWRzIGZv
ciBhbGwgZW5naW5lcwp1cG9uIGNyZWF0aW9uLCBzbyB3ZSBubyBsb25nZXIgc2hvdWxkIGFzc3Vt
ZSB0aGF0IHRoZSB0aW1lbGluZXMgYXJlCmRlbnNlbHkgYWxsb2NhdGVkIHdpdGhpbiBhIGNvbnRl
eHQuIEhvcGVmdWxseSwgdGhlIHNldCBvZiBmZW5jZXMgdXNlZAp3aXRoaW4gYSB3b3JrbG9hZCBh
cmUgc3RpbGwgZGVuc2UgZW5vdWdoIGZvciB1cyB0byB0YWtlIGFkdmFudGFnZSBvZgp0aGUgY29t
cHJlc3NlZCByYWRpeCB0cmVlIHVzZWQgZm9yIHRoZSBzeW5jbWFwLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgfCAxMCAtLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3RpbWVsaW5lLmMKaW5kZXggNDc4MjU4Mjc0OTg2Li4zYmJiNjMyY2I1MzUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMjEwLDE2ICsyMTAsNiBA
QCBpbnQgaW50ZWxfdGltZWxpbmVfaW5pdChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5l
LAogewogCXZvaWQgKnZhZGRyOwogCi0JLyoKLQkgKiBJZGVhbGx5IHdlIHdhbnQgYSBzZXQgb2Yg
ZW5naW5lcyBvbiBhIHNpbmdsZSBsZWFmIGFzIHdlIGV4cGVjdAotCSAqIHRvIG1vc3RseSBiZSB0
cmFja2luZyBzeW5jaHJvbmlzYXRpb24gYmV0d2VlbiBlbmdpbmVzLiBJdCBpcyBub3QKLQkgKiBh
IGh1Z2UgaXNzdWUgaWYgdGhpcyBpcyBub3QgdGhlIGNhc2UsIGJ1dCB3ZSBtYXkgd2FudCB0byBt
aXRpZ2F0ZQotCSAqIGFueSBwYWdlIGNyb3NzaW5nIHBlbmFsdGllcyBpZiB0aGV5IGJlY29tZSBh
biBpc3N1ZS4KLQkgKgotCSAqIENhbGxlZCBkdXJpbmcgZWFybHlfaW5pdCBiZWZvcmUgd2Uga25v
dyBob3cgbWFueSBlbmdpbmVzIHRoZXJlIGFyZS4KLQkgKi8KLQlCVUlMRF9CVUdfT04oS1NZTkNN
QVAgPCBJOTE1X05VTV9FTkdJTkVTKTsKLQogCXRpbWVsaW5lLT5ndCA9IGd0OwogCXRpbWVsaW5l
LT5waW5fY291bnQgPSAwOwogCXRpbWVsaW5lLT5oYXNfaW5pdGlhbF9icmVhZGNydW1iID0gIWh3
c3A7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
