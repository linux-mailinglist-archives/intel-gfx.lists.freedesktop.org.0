Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07789849E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 21:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2446E986;
	Wed, 21 Aug 2019 19:39:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8DE6E986
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 19:39:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18219035-1500050 
 for multiple; Wed, 21 Aug 2019 20:38:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 20:38:51 +0100
Message-Id: <20190821193851.18232-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fixup a couple of missing
 serialisation with vma
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

SW4gY29tbWl0IDcwZDY4OTRkMTQ1NiAoImRybS9pOTE1OiBTZXJpYWxpemUgYWdhaW5zdCB2bWEg
bW92ZXMiKQpJIG1hbmFnZWQgdG8gbWlzcyBhIGNvdXBsZSBvZiBpOTE1X3ZtYV9tb3ZlX3RvX2Fj
dGl2ZSgpIHRoYXQgaGFkIG5vdApzZXJpYWxpc2VkIGFnYWluc3QgYW4gYXN5bmMgdm1hIHBpbm5p
bmcuIEFkZCB0aGUgbWlzc2luZwppOTE1X3JlcXVlc3RfYXdhaXQuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaTkxNV9yZXF1ZXN0LmMgfCA0ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pZ3Rfc3Bpbm5lci5jICB8IDUgKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X3JlcXVlc3QuYwppbmRleCAxNzBlNGFmYTljY2IuLmIzNjg4NTQzZWQ3ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYwpAQCAtOTk0LDcgKzk5
NCw5IEBAIHN0YXRpYyBpbnQgbGl2ZV9zZXF1ZW50aWFsX2VuZ2luZXModm9pZCAqYXJnKQogCQly
ZXF1ZXN0W2lkXS0+YmF0Y2ggPSBiYXRjaDsKIAogCQlpOTE1X3ZtYV9sb2NrKGJhdGNoKTsKLQkJ
ZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUoYmF0Y2gsIHJlcXVlc3RbaWRdLCAwKTsKKwkJ
ZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X29iamVjdChyZXF1ZXN0W2lkXSwgYmF0Y2gtPm9iaiwg
ZmFsc2UpOworCQlpZiAoZXJyID09IDApCisJCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2
ZShiYXRjaCwgcmVxdWVzdFtpZF0sIDApOwogCQlpOTE1X3ZtYV91bmxvY2soYmF0Y2gpOwogCQlH
RU1fQlVHX09OKGVycik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pZ3Rfc3Bpbm5lci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9z
cGlubmVyLmMKaW5kZXggNDFhY2YyMDlmZmRiLi4xMWYwNGFkNDhlNjggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jCkBAIC03OCw3ICs3OCwxMCBAQCBz
dGF0aWMgaW50IG1vdmVfdG9fYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCWludCBlcnI7
CiAKIAlpOTE1X3ZtYV9sb2NrKHZtYSk7Ci0JZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUo
dm1hLCBycSwgZmxhZ3MpOworCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3QocnEsIHZt
YS0+b2JqLAorCQkJCQlmbGFncyAmIEVYRUNfT0JKRUNUX1dSSVRFKTsKKwlpZiAoZXJyID09IDAp
CisJCWVyciA9IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKHZtYSwgcnEsIGZsYWdzKTsKIAlpOTE1
X3ZtYV91bmxvY2sodm1hKTsKIAogCXJldHVybiBlcnI7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
