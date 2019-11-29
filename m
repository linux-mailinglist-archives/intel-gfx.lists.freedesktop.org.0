Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 155A310DB77
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 23:27:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF49B6E94B;
	Fri, 29 Nov 2019 22:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C3E66E94B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 22:27:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19400316-1500050 
 for multiple; Fri, 29 Nov 2019 22:27:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 22:27:02 +0000
Message-Id: <20191129222702.1456292-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Keep engine awake during
 live_coherency
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S2VlcCB0aGUgZW5naW5lIGF3YWtlIGFuZCBzbyBhdm9pZCBmcmVxdWVudCBjeWNsaW5nIGluIGFu
ZCBvdXQgb2YKcG93ZXJzYXZpbmcgbW9kZSB0byBlbGltaW5hdGUgdGhlIHVubmVjZXNzYXJ5IG92
ZXJoZWFkIGFuZCBzcGVlZCB1cCB0aGUKdGVzdGluZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29oZXJlbmN5LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb2hlcmVuY3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29oZXJlbmN5LmMKaW5kZXggOWQzY2QxYWY2MWY2Li40OWVkYzUxMTExZDUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29oZXJl
bmN5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b2hlcmVuY3kuYwpAQCAtMzI3LDYgKzMyNyw3IEBAIHN0YXRpYyBpbnQgaWd0X2dlbV9jb2hlcmVu
Y3kodm9pZCAqYXJnKQogCWN0eC5lbmdpbmUgPSByYW5kb21fZW5naW5lKGk5MTUsICZwcm5nKTsK
IAlHRU1fQlVHX09OKCFjdHguZW5naW5lKTsKIAlwcl9pbmZvKCIlczogdXNpbmcgJXNcbiIsIF9f
ZnVuY19fLCBjdHguZW5naW5lLT5uYW1lKTsKKwlpbnRlbF9lbmdpbmVfcG1fZ2V0KGN0eC5lbmdp
bmUpOwogCiAJZm9yIChvdmVyID0gaWd0X2NvaGVyZW5jeV9tb2RlOyBvdmVyLT5uYW1lOyBvdmVy
KyspIHsKIAkJaWYgKCFvdmVyLT5zZXQpCkBAIC00MDUsNiArNDA2LDcgQEAgc3RhdGljIGludCBp
Z3RfZ2VtX2NvaGVyZW5jeSh2b2lkICphcmcpCiAJCX0KIAl9CiBmcmVlOgorCWludGVsX2VuZ2lu
ZV9wbV9wdXQoY3R4LmVuZ2luZSk7CiAJa2ZyZWUob2Zmc2V0cyk7CiAJcmV0dXJuIGVycjsKIAot
LSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
