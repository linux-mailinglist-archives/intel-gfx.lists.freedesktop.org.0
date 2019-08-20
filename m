Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 311C09619F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9657789C6B;
	Tue, 20 Aug 2019 13:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7911589C6B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:52:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18202949-1500050 
 for multiple; Tue, 20 Aug 2019 14:52:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 14:52:32 +0100
Message-Id: <20190820135232.31961-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820134847.22991-1-chris@chris-wilson.co.uk>
References: <20190820134847.22991-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Serialise the fill BLT with the vma
 pinning
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

TWFrZSBzdXJlIHRoYXQgd2Ugd2FpdCBmb3IgdGhlIHZtYSB0byBiZSBwaW5uZWQgcHJpb3IgdG8g
dGVsbGluZyB0aGUgR1BVCnRvIGZpbGwgdGhlIHBhZ2VzIHRocm91Z2ggdGhhdCB2bWEuCgpIb3dl
dmVyLCBzaW5jZSBvdXIgYXN5bmMgb3BlcmF0aW9ucyBmaWdodCBvdmVyIG9iai0+cmVzdi0+ZXhj
bF9mZW5jZSB3ZQptdXN0IG1hbnVhbGx5IG9yZGVyIHRoZW0uIFRoaXMgbWFrZXMgaXQgbXVjaCBt
b3JlIGZyYWdpbGUsIGFuZCBnaXZlcyBhbgpvdXRzaWRlIG9ic2VydmVyIHRoZSBjaGFuY2UgdG8g
c2VlIHRoZSBpbnRlcm1lZGlhdGUgZmVuY2VzLiBUbyBiZQpkaXNjdXNzZWQhCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCA0NiArKysrKysrKysrKysrKy0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKaW5kZXggMzUwMjA3MWUxMzkx
Li5iYmJjMTA0OTkwOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jbGllbnRfYmx0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NsaWVudF9ibHQuYwpAQCAtNzEsMTAgKzcxLDMwIEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9zbGVl
dmUgKmNyZWF0ZV9zbGVldmUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCWdvdG8g
ZXJyX2ZyZWU7CiAJfQogCisJLyoKKwkgKiBYWFggZml4IHNjaGVkdWxpbmcgd2l0aCBnZXRfcGFn
ZXMgJiBjbGVhciB3b3JrZXJzCisJICoKKwkgKiBUaGUgY29tcGxpY2F0aW9uIGlzIHRoYXQgd2Ug
ZW5kIHVwIG92ZXJ3cml0aW5nIHRoZSBzYW1lCisJICogb2JqLT5yZXN2LT5leGNsX2ZlbmNlIGZv
ciBlYWNoIHN0YWdlIG9mIHRoZSBvcGVyYXRpb24uIFRoYXQgZmVuY2UKKwkgKiBzaG91bGQgYmUg
c2V0IG9uIHNjaGVkdWxpbmcgdGhlIHdvcmssIGFuZCBvbmx5IHNpZ25hbGVkIHVwb24KKwkgKiBj
b21wbGV0aW9uIG9mIHRoZSBlbnRpcmUgd29ya3F1ZXVlLgorCSAqCisJICogV2l0aGluIHRoZSB3
b3JrcXVldWUsIHdlIHVzZSB0aGUgZmVuY2UgdG8gc2NoZWR1bGUgZWFjaCBpbmRpdmlkdWFsCisJ
ICogdGFzay4gRWFjaCBpbmRpdmlkdWFsIHRhc2sga25vd3MgdG8gdXNlIG9iai0+cmVzdi0+ZmVu
Y2UuCisJICoKKwkgKiBUbyBhbiBvdXRzaWRlciwgdGhleSBtdXN0IHdhaXQgdW50aWwgdGhlIGVu
ZCBhbmQgc28gdGhlCisJICogb2JqLT5yZXN2LT5mZW5jZSBtdXN0IGJlIHRoZSBjb21wb3NpdGUu
CisJICoKKwkgKiBJZGVhcz8KKwkgKi8KKwllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQ
SU5fVVNFUik7CisJaWYgKHVubGlrZWx5KGVycikpCisJCWdvdG8gZXJyX2ZyZWU7CisKIAl2bWEt
PnByaXZhdGUgPSBzbGVldmU7CiAJdm1hLT5vcHMgPSAmcHJveHlfdm1hX29wczsKIAotCXNsZWV2
ZS0+dm1hID0gdm1hOworCXNsZWV2ZS0+dm1hID0gaTkxNV92bWFfZ2V0KHZtYSk7CiAJc2xlZXZl
LT5wYWdlcyA9IHBhZ2VzOwogCXNsZWV2ZS0+cGFnZV9zaXplcyA9ICpwYWdlX3NpemVzOwogCkBA
IC04Nyw2ICsxMDcsMTMgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3NsZWV2ZSAqY3JlYXRlX3NsZWV2
ZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogc3RhdGljIHZvaWQgZGVzdHJveV9z
bGVldmUoc3RydWN0IGk5MTVfc2xlZXZlICpzbGVldmUpCiB7CisJc3RydWN0IGk5MTVfdm1hICp2
bWEgPSBzbGVldmUtPnZtYTsKKworCWlmICh2bWEpIHsKKwkJaTkxNV92bWFfdW5waW4odm1hKTsK
KwkJaTkxNV92bWFfcHV0KHZtYSk7CisJfQorCiAJa2ZyZWUoc2xlZXZlKTsKIH0KIApAQCAtMTU1
LDggKzE4Miw4IEBAIHN0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX2RtYV9mZW5jZV9jYihzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSwKIHN0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX3dvcmtlcihzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndvcmspCiB7CiAJc3RydWN0IGNsZWFyX3BhZ2VzX3dvcmsgKncgPSBjb250
YWluZXJfb2Yod29yaywgdHlwZW9mKCp3KSwgd29yayk7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiA9IHctPnNsZWV2ZS0+dm1hLT5vYmo7Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWEg
PSB3LT5zbGVldmUtPnZtYTsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGZldGNoX2FuZF96ZXJv
KCZ3LT5zbGVldmUtPnZtYSk7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IHZt
YS0+b2JqOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXN0cnVjdCBpOTE1X3ZtYSAqYmF0
Y2g7CiAJaW50IGVyciA9IHctPmRtYS5lcnJvcjsKQEAgLTE2NiwyMCArMTkzLDE2IEBAIHN0YXRp
YyB2b2lkIGNsZWFyX3BhZ2VzX3dvcmtlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAKIAlp
ZiAob2JqLT5jYWNoZV9kaXJ0eSkgewogCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3Rf
cGFnZShvYmopKQotCQkJZHJtX2NsZmx1c2hfc2cody0+c2xlZXZlLT5wYWdlcyk7CisJCQlkcm1f
Y2xmbHVzaF9zZyh2bWEtPnBhZ2VzKTsKIAkJb2JqLT5jYWNoZV9kaXJ0eSA9IGZhbHNlOwogCX0K
IAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0dQVV9ET01BSU5TOwogCW9iai0+d3JpdGVf
ZG9tYWluID0gMDsKIAotCWVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsIFBJTl9VU0VSKTsK
LQlpZiAodW5saWtlbHkoZXJyKSkKLQkJZ290byBvdXRfc2lnbmFsOwotCiAJYmF0Y2ggPSBpbnRl
bF9lbWl0X3ZtYV9maWxsX2JsdCh3LT5jZSwgdm1hLCB3LT52YWx1ZSk7CiAJaWYgKElTX0VSUihi
YXRjaCkpIHsKIAkJZXJyID0gUFRSX0VSUihiYXRjaCk7Ci0JCWdvdG8gb3V0X3VucGluOworCQln
b3RvIG91dF9zaWduYWw7CiAJfQogCiAJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0
KHctPmNlKTsKQEAgLTIyNCwxNCArMjQ3LDE1IEBAIHN0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX3dv
cmtlcihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJaTkxNV9yZXF1ZXN0X2FkZChycSk7CiBv
dXRfYmF0Y2g6CiAJaW50ZWxfZW1pdF92bWFfcmVsZWFzZSh3LT5jZSwgYmF0Y2gpOwotb3V0X3Vu
cGluOgotCWk5MTVfdm1hX3VucGluKHZtYSk7CiBvdXRfc2lnbmFsOgogCWlmICh1bmxpa2VseShl
cnIpKSB7CiAJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnctPmRtYSwgZXJyKTsKIAkJZG1hX2ZlbmNl
X3NpZ25hbCgmdy0+ZG1hKTsKIAkJZG1hX2ZlbmNlX3B1dCgmdy0+ZG1hKTsKIAl9CisKKwlpOTE1
X3ZtYV91bnBpbih2bWEpOworCWk5MTVfdm1hX3B1dCh2bWEpOwogfQogCiBzdGF0aWMgaW50IF9f
aTkxNV9zd19mZW5jZV9jYWxsCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
