Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC68DEA8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 11:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF66589274;
	Mon, 29 Apr 2019 09:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598DB89274
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 09:07:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16392931-1500050 
 for multiple; Mon, 29 Apr 2019 10:07:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 10:07:35 +0100
Message-Id: <20190429090735.326-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip unused contexts for
 context_barrier_task()
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

SWYgdGhlIGNvbnRleHQgaGFzIG5vdCBiZWVuIHVzZWQgeWV0LCBpdCBuZWVkcyBubyBiYXJyaWVy
LCBhbmQgaW4gdGhlCnByb2Nlc3MgZml4IHVwIHRoZSBzZWxmdGVzdCBpbiBtb2NrX2NvbnRleHRz
LgoKVGVzdGNhc2U6IGlndC9nZW1fY3R4X2Nsb25lL3ZtClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9j
b250ZXh0LmMgICAgICAgICAgIHwgNiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250
ZXh0LmMKaW5kZXggOTM5YzE3MDcwNzgwLi42NWNlZmM1MjBlNzkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTkyNCwxNSArOTI0LDE1IEBAIHN0YXRpYyBpbnQg
Y29udGV4dF9iYXJyaWVyX3Rhc2soc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlmb3Jf
ZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBp
dCkgewogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAotCQlpZiAoIShjZS0+ZW5naW5lLT5t
YXNrICYgZW5naW5lcykpCi0JCQljb250aW51ZTsKLQogCQlpZiAoSTkxNV9TRUxGVEVTVF9PTkxZ
KGNvbnRleHRfYmFycmllcl9pbmplY3RfZmF1bHQgJgogCQkJCSAgICAgICBjZS0+ZW5naW5lLT5t
YXNrKSkgewogCQkJZXJyID0gLUVOWElPOwogCQkJYnJlYWs7CiAJCX0KIAorCQlpZiAoIShjZS0+
ZW5naW5lLT5tYXNrICYgZW5naW5lcykgfHwgIWNlLT5zdGF0ZSkKKwkJCWNvbnRpbnVlOworCiAJ
CXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChjZSk7CiAJCWlmIChJU19FUlIocnEp
KSB7CiAJCQllcnIgPSBQVFJfRVJSKHJxKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGI2MmYwMDVlNGQ1MC4uMzRhYzVjYzZk
NTlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMKQEAgLTE2NjUsNyArMTY2NSw3IEBAIHN0YXRpYyBpbnQgbW9ja19jb250ZXh0X2Jh
cnJpZXIodm9pZCAqYXJnKQogCQlnb3RvIG91dDsKIAl9CiAJaWYgKGNvdW50ZXIgPT0gMCkgewot
CQlwcl9lcnIoIkRpZCBub3QgcmV0aXJlIGltbWVkaWF0ZWx5IGZvciBhbGwgaW5hY3RpdmUgZW5n
aW5lc1xuIik7CisJCXByX2VycigiRGlkIG5vdCByZXRpcmUgaW1tZWRpYXRlbHkgZm9yIGFsbCB1
bnVzZWQgZW5naW5lc1xuIik7CiAJCWVyciA9IC1FSU5WQUw7CiAJCWdvdG8gb3V0OwogCX0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
