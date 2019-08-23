Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E89B1B1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 16:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F856ECA7;
	Fri, 23 Aug 2019 14:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522DC6ECA7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 14:14:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18241246-1500050 
 for multiple; Fri, 23 Aug 2019 15:14:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 15:14:09 +0100
Message-Id: <20190823141409.2216-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823132700.25286-3-chris@chris-wilson.co.uk>
References: <20190823132700.25286-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] Do we need to posting-read after ggtt
 insert-page?
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

U2VlIGdlbV9zZXRfdGlsaW5nX3ZzX3B3cml0ZS92c19ibGl0Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyNiArKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAyNjgwYjM4OGRjMzMuLmEwOGNiYmYxNmJhYyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTEyNyw2ICsxMjcsMTUgQEAgc3RhdGlj
IHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAkgKiBX
Q0Igb2YgdGhlIHdyaXRlcyBpbnRvIHRoZSBHR1RUIGJlZm9yZSBpdCB0cmlnZ2VycyB0aGUgaW52
YWxpZGF0ZS4KIAkgKi8KIAlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRlhfRkxTSF9D
TlRMX0dFTjYsIEdGWF9GTFNIX0NOVExfRU4pOworCisJLyoKKwkgKiBNYWtlIHN1cmUgdGhlIGlu
dGVybmFsIEdBTSBmaWZvIGhhcyBiZWVuIGNsZWFyZWQgb2YgYWxsIEdUVAorCSAqIHdyaXRlcyBi
ZWZvcmUgZXhpdGluZyBzdG9wX21hY2hpbmUoKS4gVGhpcyBndWFyYW50ZWVzIHRoYXQKKwkgKiBh
bnkgYXBlcnR1cmUgYWNjZXNzZXMgd2FpdGluZyB0byBzdGFydCBpbiBhbm90aGVyIHByb2Nlc3MK
KwkgKiBjYW5ub3QgYmFjayB1cCBiZWhpbmQgdGhlIEdUVCB3cml0ZXMgY2F1c2luZyBhIGhhbmcu
CisJICogVGhlIHJlZ2lzdGVyIGNhbiBiZSBhbnkgYXJiaXRyYXJ5IEdBTSByZWdpc3Rlci4KKwkg
Ki8KKwlpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkX2Z3KHVuY29yZSwgR0ZYX0ZMU0hfQ05UTF9H
RU42KTsKIH0KIAogc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KQpAQCAtMjI3MSwyMCArMjI4MCw2IEBAIHN0YXRpYyB2b2lkIGdlbjhfZ2d0dF9j
bGVhcl9yYW5nZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJZ2VuOF9zZXRfcHRl
KCZndHRfYmFzZVtpXSwgc2NyYXRjaF9wdGUpOwogfQogCi1zdGF0aWMgdm9pZCBieHRfdnRkX2dn
dHRfd2Eoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCi17Ci0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdm0tPmk5MTU7Ci0KLQkvKgotCSAqIE1ha2Ugc3VyZSB0aGUg
aW50ZXJuYWwgR0FNIGZpZm8gaGFzIGJlZW4gY2xlYXJlZCBvZiBhbGwgR1RUCi0JICogd3JpdGVz
IGJlZm9yZSBleGl0aW5nIHN0b3BfbWFjaGluZSgpLiBUaGlzIGd1YXJhbnRlZXMgdGhhdAotCSAq
IGFueSBhcGVydHVyZSBhY2Nlc3NlcyB3YWl0aW5nIHRvIHN0YXJ0IGluIGFub3RoZXIgcHJvY2Vz
cwotCSAqIGNhbm5vdCBiYWNrIHVwIGJlaGluZCB0aGUgR1RUIHdyaXRlcyBjYXVzaW5nIGEgaGFu
Zy4KLQkgKiBUaGUgcmVnaXN0ZXIgY2FuIGJlIGFueSBhcmJpdHJhcnkgR0FNIHJlZ2lzdGVyLgot
CSAqLwotCVBPU1RJTkdfUkVBRChHRlhfRkxTSF9DTlRMX0dFTjYpOwotfQotCiBzdHJ1Y3QgaW5z
ZXJ0X3BhZ2UgewogCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwogCWRtYV9hZGRyX3Qg
YWRkcjsKQEAgLTIyOTcsNyArMjI5Miw2IEBAIHN0YXRpYyBpbnQgYnh0X3Z0ZF9nZ3R0X2luc2Vy
dF9wYWdlX19jYih2b2lkICpfYXJnKQogCXN0cnVjdCBpbnNlcnRfcGFnZSAqYXJnID0gX2FyZzsK
IAogCWdlbjhfZ2d0dF9pbnNlcnRfcGFnZShhcmctPnZtLCBhcmctPmFkZHIsIGFyZy0+b2Zmc2V0
LCBhcmctPmxldmVsLCAwKTsKLQlieHRfdnRkX2dndHRfd2EoYXJnLT52bSk7CiAKIAlyZXR1cm4g
MDsKIH0KQEAgLTIzMjUsNyArMjMxOSw2IEBAIHN0YXRpYyBpbnQgYnh0X3Z0ZF9nZ3R0X2luc2Vy
dF9lbnRyaWVzX19jYih2b2lkICpfYXJnKQogCXN0cnVjdCBpbnNlcnRfZW50cmllcyAqYXJnID0g
X2FyZzsKIAogCWdlbjhfZ2d0dF9pbnNlcnRfZW50cmllcyhhcmctPnZtLCBhcmctPnZtYSwgYXJn
LT5sZXZlbCwgYXJnLT5mbGFncyk7Ci0JYnh0X3Z0ZF9nZ3R0X3dhKGFyZy0+dm0pOwogCiAJcmV0
dXJuIDA7CiB9CkBAIC0yMzUxLDcgKzIzNDQsNiBAQCBzdGF0aWMgaW50IGJ4dF92dGRfZ2d0dF9j
bGVhcl9yYW5nZV9fY2Iodm9pZCAqX2FyZykKIAlzdHJ1Y3QgY2xlYXJfcmFuZ2UgKmFyZyA9IF9h
cmc7CiAKIAlnZW44X2dndHRfY2xlYXJfcmFuZ2UoYXJnLT52bSwgYXJnLT5zdGFydCwgYXJnLT5s
ZW5ndGgpOwotCWJ4dF92dGRfZ2d0dF93YShhcmctPnZtKTsKIAogCXJldHVybiAwOwogfQotLSAK
Mi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
