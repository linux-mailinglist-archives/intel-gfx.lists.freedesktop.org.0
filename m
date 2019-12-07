Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E5115A83
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 02:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035E66FAC9;
	Sat,  7 Dec 2019 01:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A0F96FAC9;
 Sat,  7 Dec 2019 01:08:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19490976-1500050 
 for multiple; Sat, 07 Dec 2019 01:08:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 01:08:35 +0000
Message-Id: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] Revert "tests/i915: Use engine query
 interface for gem_ctx_isolation/persistence"
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

VGhpcyByZXZlcnRzIGNvbW1pdCAzNDNhYWU3NzZhNThhNjdmYTE1MzgyNTM4NWU2ZmU5MGUzMTg1
YzViLgoKX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoKSByZXByb2dyYW1zIHRoZSBjb250ZXh0
LCBpbnZhbGlkYXRpbmcgdGhlCnVzZSBvZiBlLT5mbGFncyB0byBzZWxlY3QgZW5naW5lcywgbmVj
ZXNzaXRhdGluZyBlLT5pbmRleCBpbnN0ZWFkLgpXaXRob3QgYWxzbyBmaXhpbmcgdXAgdGhlIGVu
Z2luZSBzZWxlY3Rpb24sIHRoZSByZXN1bHQgaXMgdGhhdCByYW5kb20KZW5naW5lcyB3ZXJlIGJl
aW5nIHVzZWQgdG8gcmVhZCByZWdpc3RlcnMgZnJvbSB0aGUgaW50ZW5kZWQgZW5naW5lLgpUaGlz
IGRvZXMgbm90IGVuZCB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0t
CiB0ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMgICB8IDQgKystLQogdGVzdHMvaTkxNS9n
ZW1fY3R4X3BlcnNpc3RlbmNlLmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNv
bGF0aW9uLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKaW5kZXggOTQzNTIwOWU5
Li42YWEyNzEzM2MgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24uYwor
KysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKQEAgLTg1Niw3ICs4NTYsNiBAQCBz
dGF0aWMgdW5zaWduZWQgaW50IF9faGFzX2NvbnRleHRfaXNvbGF0aW9uKGludCBmZCkKIAogaWd0
X21haW4KIHsKLQlzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmU7CiAJdW5zaWduZWQg
aW50IGhhc19jb250ZXh0X2lzb2xhdGlvbiA9IDA7CiAJaW50IGZkID0gLTE7CiAKQEAgLTg3Nyw3
ICs4NzYsOCBAQCBpZ3RfbWFpbgogCQlpZ3Rfc2tpcF9vbihnZW4gPiBMQVNUX0tOT1dOX0dFTik7
CiAJfQogCi0JX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoZmQsIGUpIHsKKwlmb3IgKGNvbnN0
IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSA9IGludGVsX2V4ZWN1dGlvbl9lbmdp
bmVzMjsKKwkgICAgIGUtPm5hbWU7IGUrKykgewogCQlpZ3Rfc3VidGVzdF9ncm91cCB7CiAJCQlp
Z3RfZml4dHVyZSB7CiAJCQkJaWd0X3JlcXVpcmUoaGFzX2NvbnRleHRfaXNvbGF0aW9uICYgKDEg
PDwgZS0+Y2xhc3MpKTsKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9wZXJzaXN0ZW5j
ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3BlcnNpc3RlbmNlLmMKaW5kZXggMzA3NzIxNTliLi5k
Njg0MzFhZTAgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9wZXJzaXN0ZW5jZS5jCisr
KyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9wZXJzaXN0ZW5jZS5jCkBAIC03MjcsNyArNzI3LDcgQEAg
aWd0X21haW4KIAlpZ3Rfc3VidGVzdCgiaGFuZ2NoZWNrIikKIAkJdGVzdF9ub2hhbmdjaGVja19o
b3N0aWxlKGk5MTUpOwogCi0JX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoaTkxNSwgZSkgewor
CV9fZm9yX2VhY2hfc3RhdGljX2VuZ2luZShlKSB7CiAJCWlndF9zdWJ0ZXN0X2dyb3VwIHsKIAkJ
CWlndF9maXh0dXJlIHsKIAkJCQlnZW1fcmVxdWlyZV9yaW5nKGk5MTUsIGUtPmZsYWdzKTsKLS0g
CjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
