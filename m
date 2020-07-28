Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7990230DDB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3876E370;
	Tue, 28 Jul 2020 15:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D12F6E348
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:31:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21959612-1500050 
 for multiple; Tue, 28 Jul 2020 16:30:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:30:49 +0100
Message-Id: <20200728153049.27682-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200728153049.27682-1-chris@chris-wilson.co.uk>
References: <20200728153049.27682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Provide a fastpath for waiting on
 vma bindings
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmVmb3JlIHdlIGNhbiBleGVjdXRlIGEgcmVxdWVzdCwgd2UgbXVzdCB3YWl0IGZvciBhbGwgb2Yg
aXRzIHZtYSB0byBiZQpib3VuZC4gVGhpcyBpcyBhIGZyZXF1ZW50IG9wZXJhdGlvbiBmb3Igd2hp
Y2ggd2UgY2FuIG9wdGltaXNlIGF3YXkgYQpmZXcgYXRvbWljIG9wZXJhdGlvbnMgKG5vdGFibHkg
YSBjbXB4Y2hnKSBpbiBsaWV1IG9mIHRoZSBSQ1UgcHJvdGVjdGlvbi4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggfCAxNSArKysrKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgfCAgOSArKysrKysrLS0KIDIgZmlsZXMgY2hhbmdl
ZCwgMjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9h
Y3RpdmUuaAppbmRleCBiOWUwMzk0ZTI5NzUuLmZiMTY1ZDNmMDFjZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZS5oCkBAIC0yMzEsNCArMjMxLDE5IEBAIHN0cnVjdCBpOTE1X2FjdGl2ZSAq
aTkxNV9hY3RpdmVfY3JlYXRlKHZvaWQpOwogc3RydWN0IGk5MTVfYWN0aXZlICppOTE1X2FjdGl2
ZV9nZXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpOwogdm9pZCBpOTE1X2FjdGl2ZV9wdXQoc3Ry
dWN0IGk5MTVfYWN0aXZlICpyZWYpOwogCitzdGF0aWMgaW5saW5lIGludCBfX2k5MTVfcmVxdWVz
dF9hd2FpdF9leGNsdXNpdmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCisJCQkJCQkgc3RydWN0
IGk5MTVfYWN0aXZlICphY3RpdmUpCit7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CisJaW50
IGVyciA9IDA7CisKKwlmZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgmYWN0aXZlLT5leGNs
KTsKKwlpZiAoZmVuY2UpIHsKKwkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShy
cSwgZmVuY2UpOworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwl9CisKKwlyZXR1cm4gZXJyOwor
fQorCiAjZW5kaWYgLyogX0k5MTVfQUNUSVZFX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpp
bmRleCBiYzY0Zjc3M2RjZGIuLmNkMTIwNDdjNzc5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5j
CkBAIC0xMTY3LDYgKzExNjcsMTIgQEAgdm9pZCBpOTE1X3ZtYV9yZXZva2VfbW1hcChzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSkKIAkJbGlzdF9kZWwoJnZtYS0+b2JqLT51c2VyZmF1bHRfbGluayk7CiB9
CiAKK3N0YXRpYyBpbnQKK19faTkxNV9yZXF1ZXN0X2F3YWl0X2JpbmQoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEsIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQoreworCXJldHVybiBfX2k5MTVfcmVxdWVz
dF9hd2FpdF9leGNsdXNpdmUocnEsICZ2bWEtPmFjdGl2ZSk7Cit9CisKIGludCBfX2k5MTVfdm1h
X21vdmVfdG9fYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKIHsKIAlpbnQgZXJyOwpAQCAtMTE3NCw4ICsxMTgwLDcgQEAgaW50IF9faTkxNV92bWFf
bW92ZV90b19hY3RpdmUoc3RydWN0IGk5MTVfdm1hICp2bWEsIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQogCUdFTV9CVUdfT04oIWk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKTsKIAogCS8qIFdhaXQg
Zm9yIHRoZSB2bWEgdG8gYmUgYm91bmQgYmVmb3JlIHdlIHN0YXJ0ISAqLwotCWVyciA9IGk5MTVf
cmVxdWVzdF9hd2FpdF9hY3RpdmUocnEsICZ2bWEtPmFjdGl2ZSwKLQkJCQkJSTkxNV9BQ1RJVkVf
QVdBSVRfRVhDTCk7CisJZXJyID0gX19pOTE1X3JlcXVlc3RfYXdhaXRfYmluZChycSwgdm1hKTsK
IAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
