Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD9548F11
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 21:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A3A89B55;
	Mon, 17 Jun 2019 19:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F156589B55
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 19:30:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16931951-1500050 
 for multiple; Mon, 17 Jun 2019 20:30:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 20:30:13 +0100
Message-Id: <20190617193013.4959-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Signal fence completion from
 i915_request_wait
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

V2l0aCB0aGUgdXBjb21pbmcgY2hhbmdlIHRvIGF1dG9tYW5hZ2VkIGk5MTVfYWN0aXZlLCB0aGUg
aW50ZW50IGlzIHRoYXQKd2hlbmV2ZXIgd2Ugd2FpdCBvbiB0aGUgc2V0IG9mIGFjdGl2ZSBmZW5j
ZXMsIHRoZXkgYXJlIHNpZ25hbGVkIGFuZApjb2xsZWN0ZWQuICBUaGUgcmVxdWlyZW1lbnQgaXMg
dGhhdCBhbGwgc3VjY2Vzc2Z1bCByZXR1cm5zIGZyb20KaTkxNV9yZXF1ZXN0X3dhaXQoKSBzaWdu
YWwgdGhlIGZlbmNlLCBzbyBmaXh1cCB0aGUgb25lIHJlbWFpbmluZyBwYXRoCndoZXJlIHdlIG1h
eSByZXR1cm4gYmVmb3JlIHRoZSBpbnRlcnJ1cHQgaGFzIGJlZW4gcnVuLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCA5ODE5
NDgzZDFiNWQuLmU2YjU5ZTBlMDhmMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMK
QEAgLTE0NTEsOCArMTQ1MSwxMCBAQCBsb25nIGk5MTVfcmVxdWVzdF93YWl0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLAogCWZvciAoOzspIHsKIAkJc2V0X2N1cnJlbnRfc3RhdGUoc3RhdGUpOwog
Ci0JCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKKwkJaWYgKGk5MTVfcmVxdWVzdF9j
b21wbGV0ZWQocnEpKSB7CisJCQlkbWFfZmVuY2Vfc2lnbmFsKCZycS0+ZmVuY2UpOwogCQkJYnJl
YWs7CisJCX0KIAogCQlpZiAoc2lnbmFsX3BlbmRpbmdfc3RhdGUoc3RhdGUsIGN1cnJlbnQpKSB7
CiAJCQl0aW1lb3V0ID0gLUVSRVNUQVJUU1lTOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
