Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BC8107055
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 12:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9DB6F527;
	Fri, 22 Nov 2019 11:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736B86F526
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 11:22:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19299377-1500050 
 for multiple; Fri, 22 Nov 2019 11:21:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 11:21:50 +0000
Message-Id: <20191122112152.660743-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122112152.660743-1-chris@chris-wilson.co.uk>
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Detach from timeline after all
 barries in i915_request_retire
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

SSBjYW4ndCBleHBsYWluIGl0LCBidXQgdGhpcyBkaWQgaW1wcm92ZSBpdHMgZmlyc3QgYW5kIG9u
bHkgdGVzdCBydW4uCk1heWJlIGl0IHdhcyBhIGZsdWtlLCBtYXliZSBJIG5lZWQgdG8gdW5kZXJz
dGFuZCB0aGUgYmFycmllciAoZW5naW5lLXBtCmFuZCB0aW1lbGluZXMtPmxvY2spIGFuZCBob3cg
dGhhdCBpcyBpbnRlcmFjdGluZyB3aXRoIGVuZ2luZV9yZXRpcmUgYW5kCmludGVsX2d0X3JldGly
ZV9yZXF1ZXN0cygpLi4uCgpIb3BlZnVsbHkgdGhlIGxhc3QgaHVyZGxlLiBBbHNvIHdvdWxkbid0
IG1pbmQgaWYgaXQgZmFpbGVkIHNvIEkgZGlkbid0CmhhdmUgdG8gZmluZCB0aGUgZXhwbGFuYXRp
b24uLi4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDYgKysrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXggYTU1OGY2NDE4NmZhLi4xYjhlNjgyNzQ2MWEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0yNjksMTIgKzI2OSwxMiBAQCBi
b29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJR0VNX0JV
R19PTighbGlzdF9lbXB0eSgmcnEtPmV4ZWN1dGVfY2IpKTsKIAlzcGluX3VubG9ja19pcnEoJnJx
LT5sb2NrKTsKIAotCXJlbW92ZV9mcm9tX2NsaWVudChycSk7Ci0JbGlzdF9kZWwoJnJxLT5saW5r
KTsKLQogCWludGVsX2NvbnRleHRfZXhpdChycS0+aHdfY29udGV4dCk7CiAJaW50ZWxfY29udGV4
dF91bnBpbihycS0+aHdfY29udGV4dCk7CiAKKwlyZW1vdmVfZnJvbV9jbGllbnQocnEpOworCWxp
c3RfZGVsKCZycS0+bGluayk7CisKIAlmcmVlX2NhcHR1cmVfbGlzdChycSk7CiAJaTkxNV9zY2hl
ZF9ub2RlX2ZpbmkoJnJxLT5zY2hlZCk7CiAJaTkxNV9yZXF1ZXN0X3B1dChycSk7Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
