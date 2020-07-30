Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B8B232FA5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49646E8B7;
	Thu, 30 Jul 2020 09:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2494C6E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:38:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21979055-1500050 
 for multiple; Thu, 30 Jul 2020 10:38:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:37:42 +0100
Message-Id: <20200730093756.16737-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/21] drm/i915: Provide a fastpath for waiting
 on vma bindings
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
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oIHwgMTUgKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgIHwgIDkgKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQs
IDIyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlLmgKaW5kZXggYjllMDM5NGUyOTc1Li5mYjE2NWQzZjAxY2YgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9hY3RpdmUuaApAQCAtMjMxLDQgKzIzMSwxOSBAQCBzdHJ1Y3QgaTkxNV9hY3RpdmUgKmk5
MTVfYWN0aXZlX2NyZWF0ZSh2b2lkKTsKIHN0cnVjdCBpOTE1X2FjdGl2ZSAqaTkxNV9hY3RpdmVf
Z2V0KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIHZvaWQgaTkxNV9hY3RpdmVfcHV0KHN0cnVj
dCBpOTE1X2FjdGl2ZSAqcmVmKTsKIAorc3RhdGljIGlubGluZSBpbnQgX19pOTE1X3JlcXVlc3Rf
YXdhaXRfZXhjbHVzaXZlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorCQkJCQkJIHN0cnVjdCBp
OTE1X2FjdGl2ZSAqYWN0aXZlKQoreworCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOworCWludCBl
cnIgPSAwOworCisJZmVuY2UgPSBpOTE1X2FjdGl2ZV9mZW5jZV9nZXQoJmFjdGl2ZS0+ZXhjbCk7
CisJaWYgKGZlbmNlKSB7CisJCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UocnEs
IGZlbmNlKTsKKwkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7CisJfQorCisJcmV0dXJuIGVycjsKK30K
KwogI2VuZGlmIC8qIF9JOTE1X0FDVElWRV9IXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5k
ZXggYmM2NGY3NzNkY2RiLi5jZDEyMDQ3Yzc3OTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpA
QCAtMTE2Nyw2ICsxMTY3LDEyIEBAIHZvaWQgaTkxNV92bWFfcmV2b2tlX21tYXAoc3RydWN0IGk5
MTVfdm1hICp2bWEpCiAJCWxpc3RfZGVsKCZ2bWEtPm9iai0+dXNlcmZhdWx0X2xpbmspOwogfQog
CitzdGF0aWMgaW50CitfX2k5MTVfcmVxdWVzdF9hd2FpdF9iaW5kKHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxLCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKK3sKKwlyZXR1cm4gX19pOTE1X3JlcXVlc3Rf
YXdhaXRfZXhjbHVzaXZlKHJxLCAmdm1hLT5hY3RpdmUpOworfQorCiBpbnQgX19pOTE1X3ZtYV9t
b3ZlX3RvX2FjdGl2ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCiB7CiAJaW50IGVycjsKQEAgLTExNzQsOCArMTE4MCw3IEBAIGludCBfX2k5MTVfdm1hX21v
dmVfdG9fYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSkKIAlHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19waW5uZWQodm1hKSk7CiAKIAkvKiBXYWl0IGZv
ciB0aGUgdm1hIHRvIGJlIGJvdW5kIGJlZm9yZSB3ZSBzdGFydCEgKi8KLQllcnIgPSBpOTE1X3Jl
cXVlc3RfYXdhaXRfYWN0aXZlKHJxLCAmdm1hLT5hY3RpdmUsCi0JCQkJCUk5MTVfQUNUSVZFX0FX
QUlUX0VYQ0wpOworCWVyciA9IF9faTkxNV9yZXF1ZXN0X2F3YWl0X2JpbmQocnEsIHZtYSk7CiAJ
aWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
