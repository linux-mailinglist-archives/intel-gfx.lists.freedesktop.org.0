Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B75376710
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30BDD6ED4D;
	Fri, 26 Jul 2019 13:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 150BD6ED48
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:15:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17629842-1500050 
 for multiple; Fri, 26 Jul 2019 14:14:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 14:14:58 +0100
Message-Id: <20190726131458.8310-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726125456.31364-1-chris@chris-wilson.co.uk>
References: <20190726125456.31364-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/perf: Initialise err to 0 before
 looping over ce->engines
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

U21hdGNoIHdhcm5pbmcgdGhhdCB0aGUgbG9vcCBtYXkgYmUgZW1wdHkgY2F1c2luZyB1cyB0byBj
aGVjayBlcnIgYmVmb3JlCml0IGhhZCBiZWVuIHNldC4gRW5zdXJlIHRoYXQgaXQgaXMgaW5pdGlh
bGlzZWQgdG8gMCwganVzdCBpbiBjYXNlLgoKdjI6IFJlZmFjdG9yIHRoZSBpbm5lciBsb29wIGZv
ciBiZXR0ZXIgc2Nvb3BpbmcgYW5kIGNsYXJpdHkKCkZpeGVzOiBhOTg3N2RhMmQ2MjkgKCJkcm0v
aTkxNS9vYTogUmVjb25maWd1cmUgY29udGV4dHMgb24gdGhlIGZseSIpClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlvbmVsIExhbmR3
ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYyB8IDYxICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwppbmRleCA3OWJlOWQ4ZWE2MjguLjk4OGE0MDkyMTY0ZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMKQEAgLTE3OTAsNiArMTc5MCwzOCBAQCBzdGF0aWMgaW50IGdlbjhfbW9kaWZ5
X3NlbGYoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCXJldHVybiBlcnI7CiB9CiAKK3N0YXRp
YyBpbnQgZ2VuOF9jb25maWd1cmVfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
LAorCQkJCSAgc3RydWN0IGZsZXggKmZsZXgsIHVuc2lnbmVkIGludCBjb3VudCkKK3sKKwlzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIGl0OworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsK
KwlpbnQgZXJyID0gMDsKKworCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRl
eHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7CisJCUdFTV9CVUdfT04oY2UgPT0gY2UtPmVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQpOworCisJCWlmIChjZS0+ZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJf
Q0xBU1MpCisJCQljb250aW51ZTsKKworCQllcnIgPSBpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVk
KGNlKTsKKwkJaWYgKGVycikKKwkJCWJyZWFrOworCisJCWZsZXgtPnZhbHVlID0gaW50ZWxfc3Nl
dV9tYWtlX3JwY3MoY3R4LT5pOTE1LCAmY2UtPnNzZXUpOworCisJCS8qIE90aGVyd2lzZSBPQSBz
ZXR0aW5ncyB3aWxsIGJlIHNldCB1cG9uIGZpcnN0IHVzZSAqLworCQlpZiAoaW50ZWxfY29udGV4
dF9pc19waW5uZWQoY2UpKQorCQkJZXJyID0gZ2VuOF9tb2RpZnlfY29udGV4dChjZSwgZmxleCwg
Y291bnQpOworCisJCWludGVsX2NvbnRleHRfdW5sb2NrX3Bpbm5lZChjZSk7CisJCWlmIChlcnIp
CisJCQlicmVhazsKKwl9CisJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOwor
CisJcmV0dXJuIGVycjsKK30KKwogLyoKICAqIE1hbmFnZXMgdXBkYXRpbmcgdGhlIHBlci1jb250
ZXh0IGFzcGVjdHMgb2YgdGhlIE9BIHN0cmVhbQogICogY29uZmlndXJhdGlvbiBhY3Jvc3MgYWxs
IGNvbnRleHRzLgpAQCAtMTg0NCw3ICsxODc2LDYgQEAgc3RhdGljIGludCBnZW44X2NvbmZpZ3Vy
ZV9hbGxfY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CiAJ
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50IGVycjsKIAlpbnQgaTsKIAogCWZvciAoaSA9
IDI7IGkgPCBBUlJBWV9TSVpFKHJlZ3MpOyBpKyspCkBAIC0xODY5LDM1ICsxOTAwLDEyIEBAIHN0
YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCSAqIHRyYXBwZWQgYmVoaW5kIHRoZSBiYXJyaWVyLgogCSAqLwogCWxpc3Rf
Zm9yX2VhY2hfZW50cnkoY3R4LCAmaTkxNS0+Y29udGV4dHMubGlzdCwgbGluaykgewotCQlzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIGl0OwotCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7
CisJCWludCBlcnI7CiAKIAkJaWYgKGN0eCA9PSBpOTE1LT5rZXJuZWxfY29udGV4dCkKIAkJCWNv
bnRpbnVlOwogCi0JCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsCi0JCQkJICAgIGk5MTVfZ2VtX2Nv
bnRleHRfbG9ja19lbmdpbmVzKGN0eCksCi0JCQkJICAgIGl0KSB7Ci0JCQlHRU1fQlVHX09OKGNl
ID09IGNlLT5lbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKLQotCQkJaWYgKGNlLT5lbmdpbmUtPmNs
YXNzICE9IFJFTkRFUl9DTEFTUykKLQkJCQljb250aW51ZTsKLQotCQkJZXJyID0gaW50ZWxfY29u
dGV4dF9sb2NrX3Bpbm5lZChjZSk7Ci0JCQlpZiAoZXJyKQotCQkJCWJyZWFrOwotCi0JCQlyZWdz
WzBdLnZhbHVlID0gaW50ZWxfc3NldV9tYWtlX3JwY3MoaTkxNSwgJmNlLT5zc2V1KTsKLQotCQkJ
LyogT3RoZXJ3aXNlIE9BIHNldHRpbmdzIHdpbGwgYmUgc2V0IHVwb24gZmlyc3QgdXNlICovCi0J
CQlpZiAoaW50ZWxfY29udGV4dF9pc19waW5uZWQoY2UpKQotCQkJCWVyciA9IGdlbjhfbW9kaWZ5
X2NvbnRleHQoY2UsIHJlZ3MsIEFSUkFZX1NJWkUocmVncykpOwotCi0JCQlpbnRlbF9jb250ZXh0
X3VubG9ja19waW5uZWQoY2UpOwotCQkJaWYgKGVycikKLQkJCQlicmVhazsKLQkJfQotCQlpOTE1
X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CisJCWVyciA9IGdlbjhfY29uZmlndXJl
X2NvbnRleHQoY3R4LCByZWdzLCBBUlJBWV9TSVpFKHJlZ3MpKTsKIAkJaWYgKGVycikKIAkJCXJl
dHVybiBlcnI7CiAJfQpAQCAtMTkwOSw2ICsxOTE3LDcgQEAgc3RhdGljIGludCBnZW44X2NvbmZp
Z3VyZV9hbGxfY29udGV4dHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJICovCiAJ
Zm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKIAkJc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlID0gZW5naW5lLT5rZXJuZWxfY29udGV4dDsKKwkJaW50IGVycjsKIAogCQlpZiAoZW5n
aW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCiAJCQljb250aW51ZTsKLS0gCjIuMjIuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
