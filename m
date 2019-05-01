Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF5810799
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0351189356;
	Wed,  1 May 2019 11:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65814892B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:45:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415739-1500050 
 for multiple; Wed, 01 May 2019 12:45:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:36 +0100
Message-Id: <20190501114541.10077-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/14] drm/i915: Delay semaphore submission
 until the start of the signaler
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

Q3VycmVudGx5IHdlIHN1Ym1pdCB0aGUgc2VtYXBob3JlIGJ1c3l3YWl0IGFzIHNvb24gYXMgdGhl
IHNpZ25hbGVyIGlzCnN1Ym1pdHRlZCB0byBIVy4gSG93ZXZlciwgd2UgbWF5IHN1Ym1pdCB0aGUg
c2lnbmFsZXIgYXMgdGhlIHRhaWwgb2YgYQpiYXRjaCBvZiByZXF1ZXN0cywgYW5kIGV2ZW4gbm90
IGFzIHRoZSBmaXJzdCBjb250ZXh0IGluIHRoZSBIVyBsaXN0LAppLmUuIHRoZSBidXN5d2FpdCBt
YXkgc3RhcnQgc3Bpbm5pbmcgZmFyIGluIGFkdmFuY2Ugb2YgdGhlIHNpZ25hbGVyIGV2ZW4Kc3Rh
cnRpbmcuCgpJZiB3ZSB3YWl0IHVudGlsIHRoZSByZXF1ZXN0IGJlZm9yZSB0aGUgc2lnbmFsZXIg
aXMgY29tcGxldGVkIGJlZm9yZQpzdWJtaXR0aW5nIHRoZSBidXN5d2FpdCwgd2UgcHJldmVudCB0
aGUgYnVzeXdhaXQgZnJvbSBzdGFydGluZyB0b28KZWFybHksIGlmIHRoZSBzaWduYWxlciBpcyBu
b3QgZmlyc3QgaW4gc3VibWlzc2lvbiBwb3J0LgoKVG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIHRo
ZSBzaWduYWxlciBpcyBhdCB0aGUgc3RhcnQgb2YgdGhlIHNlY29uZCAob3IKbGF0ZXIpIHN1Ym1p
c3Npb24gcG9ydCwgd2Ugd2lsbCBuZWVkIHRvIGRlbGF5IHRoZSBleGVjdXRpb24gY2FsbGJhY2sK
dW50aWwgd2Uga25vdyB0aGUgY29udGV4dCBpcyBwcm9tb3RlZCB0byBwb3J0MC4gQSBjaGFsbGVu
Z2UgZm9yIGxhdGVyLgoKRml4ZXM6IGU4ODYxOTY0Njk3MSAoImRybS9pOTE1OiBVc2UgSFcgc2Vt
YXBob3JlcyBmb3IgaW50ZXItZW5naW5lIHN5bmNocm9uaQpzYXRpb24gb24gZ2VuOCsiKQpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCAxOSArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMK
aW5kZXggMmUyMmRhNjZhNTZjLi44Y2IzZWQ1NTMxZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCkBAIC03NzAsNiArNzcwLDIxIEBAIGk5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlKQogCXJldHVybiBycTsKIH0KIAorc3RhdGljIGludAoraTkxNV9y
ZXF1ZXN0X2F3YWl0X3N0YXJ0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpzaWduYWwpCit7CisJaWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+cmluZ19saW5r
LCAmc2lnbmFsLT5yaW5nLT5yZXF1ZXN0X2xpc3QpKQorCQlyZXR1cm4gMDsKKworCXNpZ25hbCA9
IGxpc3RfcHJldl9lbnRyeShzaWduYWwsIHJpbmdfbGluayk7CisJaWYgKGk5MTVfdGltZWxpbmVf
c3luY19pc19sYXRlcihycS0+dGltZWxpbmUsICZzaWduYWwtPmZlbmNlKSkKKwkJcmV0dXJuIDA7
CisKKwlyZXR1cm4gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoJnJxLT5zdWJtaXQsCisJ
CQkJCSAgICAgJnNpZ25hbC0+ZmVuY2UsIDAsCisJCQkJCSAgICAgSTkxNV9GRU5DRV9HRlApOwor
fQorCiBzdGF0aWMgaW50CiBlbWl0X3NlbWFwaG9yZV93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnRvLAogCQkgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKQEAgLTc4OCw2ICs4MDMsMTAg
QEAgZW1pdF9zZW1hcGhvcmVfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0bywKIAkJCQkJCSAg
ICAgJmZyb20tPmZlbmNlLCAwLAogCQkJCQkJICAgICBJOTE1X0ZFTkNFX0dGUCk7CiAKKwllcnIg
PSBpOTE1X3JlcXVlc3RfYXdhaXRfc3RhcnQodG8sIGZyb20pOworCWlmIChlcnIgPCAwKQorCQly
ZXR1cm4gZXJyOworCiAJZXJyID0gaTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2UoJnRvLT5z
ZW1hcGhvcmUsCiAJCQkJCSAgICAmZnJvbS0+ZmVuY2UsIDAsCiAJCQkJCSAgICBJOTE1X0ZFTkNF
X0dGUCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
