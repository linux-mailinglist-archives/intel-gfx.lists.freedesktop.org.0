Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A387107310
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A1E6E22A;
	Fri, 22 Nov 2019 13:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D61F6E22A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:24:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19301362-1500050 
 for multiple; Fri, 22 Nov 2019 13:24:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 13:24:04 +0000
Message-Id: <20191122132404.690440-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122112152.660743-2-chris@chris-wilson.co.uk>
References: <20191122112152.660743-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftests: Flush the active
 callbacks
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

QmVmb3JlIGNoZWNraW5nIHRoZSBjdXJyZW50IGk5MTVfYWN0aXZlIHN0YXRlIGZvciB0aGUgYXN5
bmNocm9ub3VzIHdvcmsKd2Ugc3VibWl0dGVkLCBmbHVzaCBhbnkgb25nb2luZyBjYWxsYmFjay4g
VGhpcyBlbnN1cmVzIHRoYXQgb3VyIHNhbXBsaW5nCmlzIHJvYnVzdCBhbmQgZG9lcyBub3Qgc3Bv
cmFkaWNhbGx5IGZhaWwgZHVlIHRvIGJhZCB0aW1pbmcgYXMgdGhlIHdvcmsKaXMgcnVubmluZyBv
biBhbm90aGVyIGNwdS4KCnYyOiBEcm9wIHRoZSBmZW5jZSBjYWxsYmFjayBzeW5jLCByZXRpcmlu
ZyB1bmRlciB0aGUgbG9jayBzaG91bGQgYmUgZ29vZAplbm91Z2ggdG8gc3luY2hyb25pemUgd2l0
aCBlbmdpbmVfcmV0aXJlKCkgYW5kIHRoZQppbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSBiYWNr
Z3JvdW5kIHdvcmtlci4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYyB8IDE2ICsrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2Nv
bnRleHQuYwppbmRleCAzNTg2YWY2MzYzMDQuLmEwZWJkMDBiNmFkNCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwpAQCAtNDgsMjAgKzQ4LDIyIEBAIHN0YXRp
YyBpbnQgY29udGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogCW11dGV4X2xv
Y2soJnRsLT5tdXRleCk7CiAJZG8gewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJCWxvbmcgdGltZW91dDsKIAotCQlmZW5jZSA9IGk5MTVf
YWN0aXZlX2ZlbmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7Ci0JCWlmICghZmVuY2UpCisJCWlm
IChsaXN0X2VtcHR5KCZ0bC0+cmVxdWVzdHMpKQogCQkJYnJlYWs7CiAKLQkJdGltZW91dCA9IGRt
YV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNlLCBIWiAvIDEwKTsKKwkJcnEgPSBsaXN0
X2xhc3RfZW50cnkoJnRsLT5yZXF1ZXN0cywgdHlwZW9mKCpycSksIGxpbmspOworCQlpOTE1X3Jl
cXVlc3RfZ2V0KHJxKTsKKworCQl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAsIEha
IC8gMTApOwogCQlpZiAodGltZW91dCA8IDApCiAJCQllcnIgPSB0aW1lb3V0OwogCQllbHNlCi0J
CQlpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8odG9fcmVxdWVzdChmZW5jZSkpOworCQkJaTkxNV9y
ZXF1ZXN0X3JldGlyZV91cHRvKHJxKTsKIAotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJaTkx
NV9yZXF1ZXN0X3B1dChycSk7CiAJfSB3aGlsZSAoIWVycik7CiAJbXV0ZXhfdW5sb2NrKCZ0bC0+
bXV0ZXgpOwogCkBAIC0yODIsNiArMjg0LDggQEAgc3RhdGljIGludCBfX2xpdmVfYWN0aXZlX2Nv
bnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQllcnIgPSAtRUlOVkFMOwog
CX0KIAorCWludGVsX2VuZ2luZV9wbV9mbHVzaChlbmdpbmUpOworCiAJaWYgKGludGVsX2VuZ2lu
ZV9wbV9pc19hd2FrZShlbmdpbmUpKSB7CiAJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX2Rl
YnVnX3ByaW50ZXIoX19mdW5jX18pOwogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
