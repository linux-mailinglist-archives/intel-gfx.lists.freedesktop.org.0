Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A91986AB6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 21:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D676E8B6;
	Thu,  8 Aug 2019 19:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449D86E8B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 19:45:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17935588-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 20:45:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 20:45:25 +0100
Message-Id: <20190808194525.9410-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190808194525.9410-1-chris@chris-wilson.co.uk>
References: <20190808194525.9410-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/selftests: Fixup a missing legacy_idx
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

R3JyLCBtaXNzZWQgb25lKi4gRm9yIHVzaW5nIHRoZSBsZWdhY3kgZW5naW5lIG1hcCwgd2Ugc2hv
dWxkIHVzZQplbmdpbmUtPmxlZ2FjeV9pZHguIElkZWFsbHksIHdlIHNob3VsZCBrbm93IHRoZSBp
bnRlbF9jb250ZXh0IGluIHRoZQpzZWxmdGVzdCBhbmQgYXZvaWQgYWxsIHRoZSBmaWRkbGluZyBh
cm91bmQgd2l0aCB1bndhbnRlZCBHRU0gY29udGV4dHMuCgoqIEluIG15IGRlZmVuY2UsIHRoZSBj
b25mbGljdCB3YXMgYWRkZWQgaW4gYW5vdGhlciBwYXRjaCBhZnRlciBpdCB3YXMKdGVzdGVkIGJ5
IENJLgoKdjI6IG1vY2sgZW5naW5lcyBuZWVkcyBsZWdhY3kgbG92ZSBhcyB3ZWxsCgpGaXhlczog
ZjFjNGQxNTdhYjliICgiZHJtL2k5MTU6IEZpeCB1cCB0aGUgaW52ZXJzZSBtYXBwaW5nIGZvciBk
ZWZhdWx0IGN0eC0+ZW5naW5lc1tdIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyAgICAgICAgICAgIHwg
MyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYyAgICB8
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyB8
IDEgKwogMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwppbmRleCBjNjQ3OTA4NjQ3OTUuLmRkMDJl
NTliMTkyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCkBAIC0yNjMsNiAr
MjYzLDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqbW9ja19lbmdpbmUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJc25wcmludGYoZW5naW5lLT5iYXNlLm5hbWUsIHNpemVvZihl
bmdpbmUtPmJhc2UubmFtZSksICIlcyIsIG5hbWUpOwogCWVuZ2luZS0+YmFzZS5pZCA9IGlkOwog
CWVuZ2luZS0+YmFzZS5tYXNrID0gQklUKGlkKTsKKwllbmdpbmUtPmJhc2UuaW5zdGFuY2UgPSBp
ZDsKIAllbmdpbmUtPmJhc2Uuc3RhdHVzX3BhZ2UuYWRkciA9ICh2b2lkICopKGVuZ2luZSArIDEp
OwogCiAJZW5naW5lLT5iYXNlLmNvcHMgPSAmbW9ja19jb250ZXh0X29wczsKQEAgLTI4MSw2ICsy
ODIsOCBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICptb2NrX2VuZ2luZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAl0aW1lcl9zZXR1cCgmZW5naW5lLT5od19kZWxheSwgaHdfZGVs
YXlfY29tcGxldGUsIDApOwogCUlOSVRfTElTVF9IRUFEKCZlbmdpbmUtPmh3X3F1ZXVlKTsKIAor
CWludGVsX2VuZ2luZV9hZGRfdXNlcigmZW5naW5lLT5iYXNlKTsKKwogCXJldHVybiAmZW5naW5l
LT5iYXNlOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1
ZXN0LmMKaW5kZXggMmUwZmQ3MDFiY2E3Li4zOTM3ZDQzYzI5NjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMKQEAgLTMzOSw3ICszMzksNyBAQCBz
dGF0aWMgaW50IF9faWd0X2JyZWFkY3J1bWJzX3Ntb2tldGVzdCh2b2lkICphcmcpCiAKIAkJCW11
dGV4X2xvY2soQktMKTsKIAotCQkJY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4
LCB0LT5lbmdpbmUtPmlkKTsKKwkJCWNlID0gaTkxNV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0
eCwgdC0+ZW5naW5lLT5sZWdhY3lfaWR4KTsKIAkJCUdFTV9CVUdfT04oSVNfRVJSKGNlKSk7CiAJ
CQlycSA9IHQtPnJlcXVlc3RfYWxsb2MoY2UpOwogCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2Rldmlj
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCmlu
ZGV4IGZkNGNjNDgwOWViOC4uMDFhODljMDcxYmY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCkBAIC0yMTMsNiArMjEzLDcgQEAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2RldmljZSh2b2lkKQogCWlmIChtb2NrX2Vu
Z2luZV9pbml0KGk5MTUtPmVuZ2luZVtSQ1MwXSkpCiAJCWdvdG8gZXJyX2NvbnRleHQ7CiAKKwlp
bnRlbF9lbmdpbmVzX2RyaXZlcl9yZWdpc3RlcihpOTE1KTsKIAltdXRleF91bmxvY2soJmk5MTUt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwogCiAJV0FSTl9PTihpOTE1X2dlbWZzX2luaXQoaTkxNSkpOwot
LSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
