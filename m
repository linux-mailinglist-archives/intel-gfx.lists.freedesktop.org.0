Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD92DE69F9
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2019 23:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5D989EBB;
	Sun, 27 Oct 2019 22:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDA489EBB
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Oct 2019 22:58:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18987250-1500050 
 for multiple; Sun, 27 Oct 2019 22:58:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Oct 2019 22:58:06 +0000
Message-Id: <20191027225808.19437-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191027225808.19437-1-chris@chris-wilson.co.uk>
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/selftests: Check all blitter
 engines for client blt
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hlY2sgYWxsIHVzZXIgYWNjZXNzaWJsZSBlbmdpbmVzIHRoYXQgY2FuIGJsaXQgd29yayB3aXRo
IG91ciBibGl0dGVyCmNsaWVudC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y2xpZW50X2JsdC5jICB8IDMwICsrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
NiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmMKaW5kZXggZDg4
MDRhODQ3OTQ1Li5kYThlZGVlNGZlMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jCkBAIC01LDYgKzUsNyBA
QAogCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIgogCisjaW5jbHVkZSAiZ3QvaW50ZWxfZW5n
aW5lX3VzZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogCiAjaW5jbHVkZSAic2VsZnRl
c3RzL2lndF9mbHVzaF90ZXN0LmgiCkBAIC0xMiwxMCArMTMsOSBAQAogI2luY2x1ZGUgImh1Z2Vf
Z2VtX29iamVjdC5oIgogI2luY2x1ZGUgIm1vY2tfY29udGV4dC5oIgogCi1zdGF0aWMgaW50IGln
dF9jbGllbnRfZmlsbCh2b2lkICphcmcpCitzdGF0aWMgaW50IF9faWd0X2NsaWVudF9maWxsKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGFyZzsKLQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBpOTE1LT5lbmdpbmVb
QkNTMF0tPmtlcm5lbF9jb250ZXh0OworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQ7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlz
dHJ1Y3Qgcm5kX3N0YXRlIHBybmc7CiAJSUdUX1RJTUVPVVQoZW5kKTsKQEAgLTM3LDcgKzM3LDcg
QEAgc3RhdGljIGludCBpZ3RfY2xpZW50X2ZpbGwodm9pZCAqYXJnKQogCQlwcl9kZWJ1ZygiJXMg
d2l0aCBwaHlzX3N6PSAleCwgc3o9JXgsIHZhbD0leFxuIiwgX19mdW5jX18sCiAJCQkgcGh5c19z
eiwgc3osIHZhbCk7CiAKLQkJb2JqID0gaHVnZV9nZW1fb2JqZWN0KGk5MTUsIHBoeXNfc3osIHN6
KTsKKwkJb2JqID0gaHVnZV9nZW1fb2JqZWN0KGVuZ2luZS0+aTkxNSwgcGh5c19zeiwgc3opOwog
CQlpZiAoSVNfRVJSKG9iaikpIHsKIAkJCWVyciA9IFBUUl9FUlIob2JqKTsKIAkJCWdvdG8gZXJy
X2ZsdXNoOwpAQCAtMTAzLDYgKzEwMywyOCBAQCBzdGF0aWMgaW50IGlndF9jbGllbnRfZmlsbCh2
b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBpZ3RfY2xpZW50X2ZpbGwo
dm9pZCAqYXJnKQoreworCWludCBpbnN0ID0gMDsKKworCWRvIHsKKwkJc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lOworCQlpbnQgZXJyOworCisJCWVuZ2luZSA9IGludGVsX2VuZ2luZV9s
b29rdXBfdXNlcihhcmcsCisJCQkJCQkgIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksCisJCQkJCQkg
IGluc3QrKyk7CisJCWlmICghZW5naW5lKQorCQkJcmV0dXJuIDA7CisKKwkJZXJyID0gX19pZ3Rf
Y2xpZW50X2ZpbGwoZW5naW5lKTsKKwkJaWYgKGVyciA9PSAtRU5PTUVNKQorCQkJZXJyID0gMDsK
KwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7CisJfSB3aGlsZSAoMSk7Cit9CisKIGludCBpOTE1
X2dlbV9jbGllbnRfYmx0X2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogewogCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7Ci0t
IAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
