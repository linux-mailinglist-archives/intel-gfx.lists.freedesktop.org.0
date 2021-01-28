Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EA8307AD0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9B56E9AB;
	Thu, 28 Jan 2021 16:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 168956E991
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:27 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:50 +0100
Message-Id: <20210128162612.927917-42-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 41/63] drm/i915/selftests: Prepare huge_pages
 testcases for obj->mm.lock removal.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RyYWlnaHRmb3J3YXJkIGNvbnZlcnNpb24sIGp1c3QgY29udmVydCBhIGJ1bmNoIG9mIGNhbGxz
IHRvCnVubG9ja2VkIHZlcnNpb25zLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAyOCArKysrKysrKysrKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFn
ZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCmlu
ZGV4IDZjMjI0MWI3Mzg3Yi4uZGFkZDQ4NWJjNTJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpAQCAtNTg5LDcgKzU4OSw3IEBAIHN0YXRp
YyBpbnQgaWd0X21vY2tfcHBndHRfbWlzYWxpZ25lZF9kbWEodm9pZCAqYXJnKQogCQkJZ290byBv
dXRfcHV0OwogCQl9CiAKLQkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwor
CQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzX3VubG9ja2VkKG9iaik7CiAJCWlmIChl
cnIpCiAJCQlnb3RvIG91dF9wdXQ7CiAKQEAgLTY1MywxNSArNjUzLDE5IEBAIHN0YXRpYyBpbnQg
aWd0X21vY2tfcHBndHRfbWlzYWxpZ25lZF9kbWEodm9pZCAqYXJnKQogCQkJCWJyZWFrOwogCQl9
CiAKKwkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxMKTsKIAkJaTkxNV9nZW1fb2JqZWN0
X3VucGluX3BhZ2VzKG9iaik7CiAJCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmopOwor
CQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJCWk5MTVfZ2VtX29iamVjdF9wdXQob2Jq
KTsKIAl9CiAKIAlyZXR1cm4gMDsKIAogb3V0X3VucGluOgorCWk5MTVfZ2VtX29iamVjdF9sb2Nr
KG9iaiwgTlVMTCk7CiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CisJaTkxNV9n
ZW1fb2JqZWN0X3VubG9jayhvYmopOwogb3V0X3B1dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7CiAKQEAgLTY3NSw4ICs2NzksMTAgQEAgc3RhdGljIHZvaWQgY2xvc2Vfb2JqZWN0X2xpc3Qo
c3RydWN0IGxpc3RfaGVhZCAqb2JqZWN0cywKIAogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShv
YmosIG9uLCBvYmplY3RzLCBzdF9saW5rKSB7CiAJCWxpc3RfZGVsKCZvYmotPnN0X2xpbmspOwor
CQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwogCQlpOTE1X2dlbV9vYmplY3RfdW5w
aW5fcGFnZXMob2JqKTsKIAkJX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKG9iaik7CisJCWk5
MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwog
CX0KIH0KQEAgLTcxMyw3ICs3MTksNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0X2h1Z2Vf
ZmlsbCh2b2lkICphcmcpCiAJCQlicmVhazsKIAkJfQogCi0JCWVyciA9IGk5MTVfZ2VtX29iamVj
dF9waW5fcGFnZXMob2JqKTsKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlc191bmxv
Y2tlZChvYmopOwogCQlpZiAoZXJyKSB7CiAJCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CiAJ
CQlicmVhazsKQEAgLTg4OSw3ICs4OTUsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0XzY0
Syh2b2lkICphcmcpCiAJCQlpZiAoSVNfRVJSKG9iaikpCiAJCQkJcmV0dXJuIFBUUl9FUlIob2Jq
KTsKIAotCQkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCQkJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlc191bmxvY2tlZChvYmopOwogCQkJaWYgKGVycikKIAkJ
CQlnb3RvIG91dF9vYmplY3RfcHV0OwogCkBAIC05NDMsOCArOTQ5LDEwIEBAIHN0YXRpYyBpbnQg
aWd0X21vY2tfcHBndHRfNjRLKHZvaWQgKmFyZykKIAkJCX0KIAogCQkJaTkxNV92bWFfdW5waW4o
dm1hKTsKKwkJCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJCQlpOTE1X2dlbV9v
YmplY3RfdW5waW5fcGFnZXMob2JqKTsKIAkJCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhv
YmopOworCQkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwogCQkJaTkxNV9nZW1fb2JqZWN0
X3B1dChvYmopOwogCQl9CiAJfQpAQCAtOTU0LDcgKzk2Miw5IEBAIHN0YXRpYyBpbnQgaWd0X21v
Y2tfcHBndHRfNjRLKHZvaWQgKmFyZykKIG91dF92bWFfdW5waW46CiAJaTkxNV92bWFfdW5waW4o
dm1hKTsKIG91dF9vYmplY3RfdW5waW46CisJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCBOVUxM
KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKwlpOTE1X2dlbV9vYmplY3Rf
dW5sb2NrKG9iaik7CiBvdXRfb2JqZWN0X3B1dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
CiAKQEAgLTEwMjQsNyArMTAzNCw3IEBAIHN0YXRpYyBpbnQgX19jcHVfY2hlY2tfdm1hcChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCB1MzIgZHdvcmQsIHUzMiB2YWwpCiAJaWYgKGVy
cikKIAkJcmV0dXJuIGVycjsKIAotCXB0ciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwg
STkxNV9NQVBfV0MpOworCXB0ciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9i
aiwgSTkxNV9NQVBfV0MpOwogCWlmIChJU19FUlIocHRyKSkKIAkJcmV0dXJuIFBUUl9FUlIocHRy
KTsKIApAQCAtMTMwNCw3ICsxMzE0LDcgQEAgc3RhdGljIGludCBpZ3RfcHBndHRfc21va2VfaHVn
ZSh2b2lkICphcmcpCiAJCQlyZXR1cm4gZXJyOwogCQl9CiAKLQkJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9wYWdlcyhvYmopOworCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzX3Vu
bG9ja2VkKG9iaik7CiAJCWlmIChlcnIpIHsKIAkJCWlmIChlcnIgPT0gLUVOWElPIHx8IGVyciA9
PSAtRTJCSUcpIHsKIAkJCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CkBAIC0xMzI3LDggKzEz
MzcsMTAgQEAgc3RhdGljIGludCBpZ3RfcHBndHRfc21va2VfaHVnZSh2b2lkICphcmcpCiAJCQkg
ICAgICAgX19mdW5jX18sIHNpemUsIGkpOwogCQl9CiBvdXRfdW5waW46CisJCWk5MTVfZ2VtX29i
amVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmop
OwogCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqKTsKKwkJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOwogb3V0X3B1dDoKIAkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogCkBA
IC0xNDAyLDcgKzE0MTQsNyBAQCBzdGF0aWMgaW50IGlndF9wcGd0dF9zYW5pdHlfY2hlY2sodm9p
ZCAqYXJnKQogCQkJCXJldHVybiBlcnI7CiAJCQl9CiAKLQkJCWVyciA9IGk5MTVfZ2VtX29iamVj
dF9waW5fcGFnZXMob2JqKTsKKwkJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfdW5s
b2NrZWQob2JqKTsKIAkJCWlmIChlcnIpIHsKIAkJCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
CiAJCQkJZ290byBvdXQ7CkBAIC0xNDE2LDggKzE0MjgsMTAgQEAgc3RhdGljIGludCBpZ3RfcHBn
dHRfc2FuaXR5X2NoZWNrKHZvaWQgKmFyZykKIAogCQkJZXJyID0gaWd0X3dyaXRlX2h1Z2UoY3R4
LCBvYmopOwogCisJCQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOwogCQkJaTkxNV9n
ZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CiAJCQlfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFn
ZXMob2JqKTsKKwkJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAkJCWk5MTVfZ2VtX29i
amVjdF9wdXQob2JqKTsKIAogCQkJaWYgKGVycikgewpAQCAtMTQ2Miw3ICsxNDc2LDcgQEAgc3Rh
dGljIGludCBpZ3RfdG1wZnNfZmFsbGJhY2sodm9pZCAqYXJnKQogCQlnb3RvIG91dF9yZXN0b3Jl
OwogCX0KIAotCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9X
Qik7CisJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91bmxvY2tlZChvYmosIEk5MTVf
TUFQX1dCKTsKIAlpZiAoSVNfRVJSKHZhZGRyKSkgewogCQllcnIgPSBQVFJfRVJSKHZhZGRyKTsK
IAkJZ290byBvdXRfcHV0OwotLSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
