Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 809432C3E23
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7C46E932;
	Wed, 25 Nov 2020 10:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAE96E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:32 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:40:06 +0100
Message-Id: <20201125104011.606641-59-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 58/63] drm/i915/selftests: Prepare memory
 region tests for obj->mm.lock removal
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

VXNlIHRoZSB1bmxvY2tlZCB2YXJpYW50cyBmb3IgcGluX21hcCBhbmQgcGluX3BhZ2VzLCBhbmQg
YWRkIGxvY2sKYXJvdW5kIHVucGlubmluZy9wdXR0aW5nIHBhZ2VzLgoKU2lnbmVkLW9mZi1ieTog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVs
LmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyAg
IHwgMTggKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwppbmRleCAwYWViYThlM2FmMjguLjE4OWUwMzk0NjA3
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9y
eV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVt
b3J5X3JlZ2lvbi5jCkBAIC0zMSwxMCArMzEsMTIgQEAgc3RhdGljIHZvaWQgY2xvc2Vfb2JqZWN0
cyhzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosICpvbjsKIAogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvYmosIG9uLCBv
YmplY3RzLCBzdF9saW5rKSB7CisJCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJ
CWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKQogCQkJaTkxNV9nZW1f
b2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CiAJCS8qIE5vIHBvbGx1dGluZyB0aGUgbWVtb3J5IHJl
Z2lvbiBiZXR3ZWVuIHRlc3RzICovCiAJCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmop
OworCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJCWxpc3RfZGVsKCZvYmotPnN0X2xp
bmspOwogCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CiAJfQpAQCAtNjksNyArNzEsNyBAQCBz
dGF0aWMgaW50IGlndF9tb2NrX2ZpbGwodm9pZCAqYXJnKQogCQkJYnJlYWs7CiAJCX0KIAotCQll
cnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJCWVyciA9IGk5MTVfZ2VtX29i
amVjdF9waW5fcGFnZXNfdW5sb2NrZWQob2JqKTsKIAkJaWYgKGVycikgewogCQkJaTkxNV9nZW1f
b2JqZWN0X3B1dChvYmopOwogCQkJYnJlYWs7CkBAIC0xMDksNyArMTExLDcgQEAgaWd0X29iamVj
dF9jcmVhdGUoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAlpZiAoSVNfRVJSKG9i
aikpCiAJCXJldHVybiBvYmo7CiAKLQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9i
aik7CisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlc191bmxvY2tlZChvYmopOwogCWlm
IChlcnIpCiAJCWdvdG8gcHV0OwogCkBAIC0xMjMsOCArMTI1LDEwIEBAIGlndF9vYmplY3RfY3Jl
YXRlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAKIHN0YXRpYyB2b2lkIGlndF9v
YmplY3RfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogeworCWk5MTVf
Z2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2Vz
KG9iaik7CiAJX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKG9iaik7CisJaTkxNV9nZW1fb2Jq
ZWN0X3VubG9jayhvYmopOwogCWxpc3RfZGVsKCZvYmotPnN0X2xpbmspOwogCWk5MTVfZ2VtX29i
amVjdF9wdXQob2JqKTsKIH0KQEAgLTM1Niw3ICszNjAsNyBAQCBzdGF0aWMgaW50IGlndF9jcHVf
Y2hlY2soc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgdTMyIGR3b3JkLCB1MzIgdmFs
KQogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKLQlwdHIgPSBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcChvYmosIEk5MTVfTUFQX1dDKTsKKwlwdHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91
bmxvY2tlZChvYmosIEk5MTVfTUFQX1dDKTsKIAlpZiAoSVNfRVJSKHB0cikpCiAJCXJldHVybiBQ
VFJfRVJSKHB0cik7CiAKQEAgLTQ2MSw3ICs0NjUsNyBAQCBzdGF0aWMgaW50IGlndF9sbWVtX2Ny
ZWF0ZSh2b2lkICphcmcpCiAJaWYgKElTX0VSUihvYmopKQogCQlyZXR1cm4gUFRSX0VSUihvYmop
OwogCi0JZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCWVyciA9IGk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXNfdW5sb2NrZWQob2JqKTsKIAlpZiAoZXJyKQogCQlnb3RvIG91
dF9wdXQ7CiAKQEAgLTUwMCw3ICs1MDQsNyBAQCBzdGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2dw
dSh2b2lkICphcmcpCiAJCWdvdG8gb3V0X2ZpbGU7CiAJfQogCi0JZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9wYWdlcyhvYmopOworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfdW5s
b2NrZWQob2JqKTsKIAlpZiAoZXJyKQogCQlnb3RvIG91dF9wdXQ7CiAKQEAgLTU3Miw3ICs1NzYs
NyBAQCBzdGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2NwdSh2b2lkICphcmcpCiAJaWYgKElTX0VS
UihvYmopKQogCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCi0JdmFkZHIgPSBpOTE1X2dlbV9vYmpl
Y3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dDKTsKKwl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9w
aW5fbWFwX3VubG9ja2VkKG9iaiwgSTkxNV9NQVBfV0MpOwogCWlmIChJU19FUlIodmFkZHIpKSB7
CiAJCWVyciA9IFBUUl9FUlIodmFkZHIpOwogCQlnb3RvIG91dF9wdXQ7CkBAIC02NzYsNyArNjgw
LDcgQEAgY3JlYXRlX3JlZ2lvbl9mb3JfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbXIsIHU2NCBzaXplLCB1MzIgdHlwZSwKIAkJcmV0dXJuIG9iajsKIAl9CiAKLQlhZGRyID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCB0eXBlKTsKKwlhZGRyID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCB0eXBlKTsKIAlpZiAoSVNfRVJSKGFkZHIpKSB7CiAJ
CWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAkJaWYgKFBUUl9FUlIoYWRkcikgPT0gLUVOWElP
KQotLSAKMi4yOS4yLjIyMi5nNWQyYTkyZDEwZjgKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
