Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C95D2EAF3C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E136E17F;
	Tue,  5 Jan 2021 15:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7116E155
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:34:57 +0100
Message-Id: <20210105153558.134272-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 03/64] drm/i915: Move cmd parser pinning to
 execbuffer
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

V2UgbmVlZCB0byBnZXQgcmlkIG9mIGFsbG9jYXRpb25zIGluIHRoZSBjbWQgcGFyc2VyLCBiZWNh
dXNlIGl0IG5lZWRzCnRvIGJlIGNhbGxlZCBmcm9tIGEgc2lnbmFsaW5nIGNvbnRleHQsIGZpcnN0
IG1vdmUgYWxsIHBpbm5pbmcgdG8KZXhlY2J1Ziwgd2hlcmUgd2UgYWxyZWFkeSBob2xkIGFsbCBs
b2Nrcy4KCkFsbG9jYXRlIGp1bXBfd2hpdGVsaXN0IGluIHRoZSBleGVjYnVmZmVyLCBhbmQgYWRk
IGFubm90YXRpb25zIGFyb3VuZAppbnRlbF9lbmdpbmVfY21kX3BhcnNlcigpLCB0byBlbnN1cmUg
d2Ugb25seSBjYWxsIHRoZSBjb21tYW5kIHBhcnNlcgp3aXRob3V0IGFsbG9jYXRpbmcgYW55IG1l
bW9yeSwgb3IgdGFraW5nIGFueSBsb2NrcyB3ZSdyZSBub3Qgc3VwcG9zZWQgdG8uCgpCZWNhdXNl
IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZSgpIG1heSBhbHNvIGFsbG9jYXRlIG1lbW9yeSwgYWRk
IGEKcGF0aCB0byBpOTE1X2dlbV9vYmplY3RfZ2V0X3NnKCkgdGhhdCBwcmV2ZW50cyBtZW1vcnkg
YWxsb2NhdGlvbnMsCmFuZCB3YWxrIHRoZSBzZyBsaXN0IG1hbnVhbGx5LiBJdCBzaG91bGQgYmUg
c2ltaWxhcmx5IGZhc3QuCgpUaGlzIGhhcyB0aGUgYWRkZWQgYmVuZWZpdCBvZiBiZWluZyBhYmxl
IHRvIGNhdGNoIGFsbCBtZW1vcnkgYWxsb2NhdGlvbgplcnJvcnMgYmVmb3JlIHRoZSBwb2ludCBv
ZiBubyByZXR1cm4sIGFuZCByZXR1cm4gLUVOT01FTSBzYWZlbHkgdG8gdGhlCmV4ZWNidWYgc3Vi
bWl0dGVyLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KQWNrZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgICAgfCAgNzQgKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgMjEgKysrLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ2d0dC5jICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2NtZF9wYXJzZXIuYyAgICAgICAgfCAxMDQgKysrKysrKystLS0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDcgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbWVtY3B5LmMgICAgICAgICAgICB8ICAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuaCAgICAgICAgICAgIHwgICAyICstCiA4IGZp
bGVzIGNoYW5nZWQsIDE0MiBpbnNlcnRpb25zKCspLCA4MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCBjZjlhNmI0
ZWI5MTMuLmZlOTg1ZTFmODQzZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yOCw2ICsyOCw3IEBACiAjaW5jbHVkZSAiaTkxNV9zd19m
ZW5jZV93b3JrLmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdXNl
cl9leHRlbnNpb25zLmgiCisjaW5jbHVkZSAiaTkxNV9tZW1jcHkuaCIKIAogc3RydWN0IGViX3Zt
YSB7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CkBAIC0yMjc0LDI0ICsyMjc1LDQ1IEBAIHN0cnVj
dCBlYl9wYXJzZV93b3JrIHsKIAlzdHJ1Y3QgaTkxNV92bWEgKnRyYW1wb2xpbmU7CiAJdW5zaWdu
ZWQgbG9uZyBiYXRjaF9vZmZzZXQ7CiAJdW5zaWduZWQgbG9uZyBiYXRjaF9sZW5ndGg7CisJdW5z
aWduZWQgbG9uZyAqanVtcF93aGl0ZWxpc3Q7CisJY29uc3Qgdm9pZCAqYmF0Y2hfbWFwOworCXZv
aWQgKnNoYWRvd19tYXA7CiB9OwogCiBzdGF0aWMgaW50IF9fZWJfcGFyc2Uoc3RydWN0IGRtYV9m
ZW5jZV93b3JrICp3b3JrKQogewogCXN0cnVjdCBlYl9wYXJzZV93b3JrICpwdyA9IGNvbnRhaW5l
cl9vZih3b3JrLCB0eXBlb2YoKnB3KSwgYmFzZSk7CisJaW50IHJldDsKKwlib29sIGNvb2tpZTsK
IAotCXJldHVybiBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihwdy0+ZW5naW5lLAotCQkJCSAgICAg
ICBwdy0+YmF0Y2gsCi0JCQkJICAgICAgIHB3LT5iYXRjaF9vZmZzZXQsCi0JCQkJICAgICAgIHB3
LT5iYXRjaF9sZW5ndGgsCi0JCQkJICAgICAgIHB3LT5zaGFkb3csCi0JCQkJICAgICAgIHB3LT50
cmFtcG9saW5lKTsKKwljb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOworCXJl
dCA9IGludGVsX2VuZ2luZV9jbWRfcGFyc2VyKHB3LT5lbmdpbmUsCisJCQkJICAgICAgcHctPmJh
dGNoLAorCQkJCSAgICAgIHB3LT5iYXRjaF9vZmZzZXQsCisJCQkJICAgICAgcHctPmJhdGNoX2xl
bmd0aCwKKwkJCQkgICAgICBwdy0+c2hhZG93LAorCQkJCSAgICAgIHB3LT5qdW1wX3doaXRlbGlz
dCwKKwkJCQkgICAgICBwdy0+c2hhZG93X21hcCwKKwkJCQkgICAgICBwdy0+YmF0Y2hfbWFwKTsK
KwlkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoY29va2llKTsKKworCXJldHVybiByZXQ7CiB9CiAK
IHN0YXRpYyB2b2lkIF9fZWJfcGFyc2VfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlX3dvcmsgKndv
cmspCiB7CiAJc3RydWN0IGViX3BhcnNlX3dvcmsgKnB3ID0gY29udGFpbmVyX29mKHdvcmssIHR5
cGVvZigqcHcpLCBiYXNlKTsKIAorCWlmICghSVNfRVJSX09SX05VTEwocHctPmp1bXBfd2hpdGVs
aXN0KSkKKwkJa2ZyZWUocHctPmp1bXBfd2hpdGVsaXN0KTsKKworCWlmIChwdy0+YmF0Y2hfbWFw
KQorCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHB3LT5iYXRjaC0+b2JqKTsKKwllbHNlCisJ
CWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhwdy0+YmF0Y2gtPm9iaik7CisKKwlpOTE1X2dl
bV9vYmplY3RfdW5waW5fbWFwKHB3LT5zaGFkb3ctPm9iaik7CisKIAlpZiAocHctPnRyYW1wb2xp
bmUpCiAJCWk5MTVfYWN0aXZlX3JlbGVhc2UoJnB3LT50cmFtcG9saW5lLT5hY3RpdmUpOwogCWk5
MTVfYWN0aXZlX3JlbGVhc2UoJnB3LT5zaGFkb3ctPmFjdGl2ZSk7CkBAIC0yMzQxLDYgKzIzNjMs
OCBAQCBzdGF0aWMgaW50IGViX3BhcnNlX3BpcGVsaW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLAogCQkJICAgICBzdHJ1Y3QgaTkxNV92bWEgKnRyYW1wb2xpbmUpCiB7CiAJc3RydWN0IGVi
X3BhcnNlX3dvcmsgKnB3OworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpiYXRjaCA9IGVi
LT5iYXRjaC0+dm1hLT5vYmo7CisJYm9vbCBuZWVkc19jbGZsdXNoOwogCWludCBlcnI7CiAKIAlH
RU1fQlVHX09OKG92ZXJmbG93c190eXBlKGViLT5iYXRjaF9zdGFydF9vZmZzZXQsIHB3LT5iYXRj
aF9vZmZzZXQpKTsKQEAgLTIzNjQsNiArMjM4OCwzNCBAQCBzdGF0aWMgaW50IGViX3BhcnNlX3Bp
cGVsaW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQkJZ290byBlcnJfc2hhZG93Owog
CX0KIAorCXB3LT5zaGFkb3dfbWFwID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoc2hhZG93LT5v
YmosIEk5MTVfTUFQX0ZPUkNFX1dCKTsKKwlpZiAoSVNfRVJSKHB3LT5zaGFkb3dfbWFwKSkgewor
CQllcnIgPSBQVFJfRVJSKHB3LT5zaGFkb3dfbWFwKTsKKwkJZ290byBlcnJfdHJhbXBvbGluZTsK
Kwl9CisKKwluZWVkc19jbGZsdXNoID0KKwkJIShiYXRjaC0+Y2FjaGVfY29oZXJlbnQgJiBJOTE1
X0JPX0NBQ0hFX0NPSEVSRU5UX0ZPUl9SRUFEKTsKKworCXB3LT5iYXRjaF9tYXAgPSBFUlJfUFRS
KC1FTk9ERVYpOworCWlmIChuZWVkc19jbGZsdXNoICYmIGk5MTVfaGFzX21lbWNweV9mcm9tX3dj
KCkpCisJCXB3LT5iYXRjaF9tYXAgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChiYXRjaCwgSTkx
NV9NQVBfV0MpOworCisJaWYgKElTX0VSUihwdy0+YmF0Y2hfbWFwKSkgeworCQllcnIgPSBpOTE1
X2dlbV9vYmplY3RfcGluX3BhZ2VzKGJhdGNoKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gZXJyX3Vu
bWFwX3NoYWRvdzsKKwkJcHctPmJhdGNoX21hcCA9IE5VTEw7CisJfQorCisJcHctPmp1bXBfd2hp
dGVsaXN0ID0KKwkJaW50ZWxfZW5naW5lX2NtZF9wYXJzZXJfYWxsb2NfanVtcF93aGl0ZWxpc3Qo
ZWItPmJhdGNoX2xlbiwKKwkJCQkJCQkgICAgIHRyYW1wb2xpbmUpOworCWlmIChJU19FUlIocHct
Pmp1bXBfd2hpdGVsaXN0KSkgeworCQllcnIgPSBQVFJfRVJSKHB3LT5qdW1wX3doaXRlbGlzdCk7
CisJCWdvdG8gZXJyX3VubWFwX2JhdGNoOworCX0KKwogCWRtYV9mZW5jZV93b3JrX2luaXQoJnB3
LT5iYXNlLCAmZWJfcGFyc2Vfb3BzKTsKIAogCXB3LT5lbmdpbmUgPSBlYi0+ZW5naW5lOwpAQCAt
MjQwMyw2ICsyNDU1LDE2IEBAIHN0YXRpYyBpbnQgZWJfcGFyc2VfcGlwZWxpbmUoc3RydWN0IGk5
MTVfZXhlY2J1ZmZlciAqZWIsCiAJZG1hX2ZlbmNlX3dvcmtfY29tbWl0X2ltbSgmcHctPmJhc2Up
OwogCXJldHVybiBlcnI7CiAKK2Vycl91bm1hcF9iYXRjaDoKKwlpZiAocHctPmJhdGNoX21hcCkK
KwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChiYXRjaCk7CisJZWxzZQorCQlpOTE1X2dlbV9v
YmplY3RfdW5waW5fcGFnZXMoYmF0Y2gpOworZXJyX3VubWFwX3NoYWRvdzoKKwlpOTE1X2dlbV9v
YmplY3RfdW5waW5fbWFwKHNoYWRvdy0+b2JqKTsKK2Vycl90cmFtcG9saW5lOgorCWlmICh0cmFt
cG9saW5lKQorCQlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZ0cmFtcG9saW5lLT5hY3RpdmUpOwogZXJy
X3NoYWRvdzoKIAlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZzaGFkb3ctPmFjdGl2ZSk7CiBlcnJfYmF0
Y2g6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggYmUx
NDQ4NmY2M2E3Li45OWIxOGJhMGM0OGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKQEAgLTI3NSwyMiArMjc1LDIyIEBAIHN0cnVjdCBzY2F0dGVybGlzdCAq
CiBfX2k5MTVfZ2VtX29iamVjdF9nZXRfc2coc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKIAkJCSBzdHJ1Y3QgaTkxNV9nZW1fb2JqZWN0X3BhZ2VfaXRlciAqaXRlciwKIAkJCSB1bnNp
Z25lZCBpbnQgbiwKLQkJCSB1bnNpZ25lZCBpbnQgKm9mZnNldCk7CisJCQkgdW5zaWduZWQgaW50
ICpvZmZzZXQsIGJvb2wgYWxsb3dfYWxsb2MpOwogCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBzY2F0
dGVybGlzdCAqCiBpOTE1X2dlbV9vYmplY3RfZ2V0X3NnKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCiAJCSAgICAgICB1bnNpZ25lZCBpbnQgbiwKLQkJICAgICAgIHVuc2lnbmVkIGlu
dCAqb2Zmc2V0KQorCQkgICAgICAgdW5zaWduZWQgaW50ICpvZmZzZXQsIGJvb2wgYWxsb3dfYWxs
b2MpCiB7Ci0JcmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhvYmosICZvYmotPm1tLmdl
dF9wYWdlLCBuLCBvZmZzZXQpOworCXJldHVybiBfX2k5MTVfZ2VtX29iamVjdF9nZXRfc2cob2Jq
LCAmb2JqLT5tbS5nZXRfcGFnZSwgbiwgb2Zmc2V0LCBhbGxvd19hbGxvYyk7CiB9CiAKIHN0YXRp
YyBpbmxpbmUgc3RydWN0IHNjYXR0ZXJsaXN0ICoKIGk5MTVfZ2VtX29iamVjdF9nZXRfc2dfZG1h
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgICB1bnNpZ25lZCBpbnQgbiwK
LQkJCSAgIHVuc2lnbmVkIGludCAqb2Zmc2V0KQorCQkJICAgdW5zaWduZWQgaW50ICpvZmZzZXQs
IGJvb2wgYWxsb3dfYWxsb2MpCiB7Ci0JcmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhv
YmosICZvYmotPm1tLmdldF9kbWFfcGFnZSwgbiwgb2Zmc2V0KTsKKwlyZXR1cm4gX19pOTE1X2dl
bV9vYmplY3RfZ2V0X3NnKG9iaiwgJm9iai0+bW0uZ2V0X2RtYV9wYWdlLCBuLCBvZmZzZXQsIGFs
bG93X2FsbG9jKTsKIH0KIAogc3RydWN0IHBhZ2UgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYwppbmRleCAzZGIzYzY2N2M0ODYuLjQwZjRlMjg1NTk0ZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKQEAgLTQ0NSw3ICs0NDUsOCBA
QCBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKgogX19pOTE1X2dlbV9vYmplY3RfZ2V0X3NnKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgc3RydWN0IGk5MTVfZ2VtX29iamVjdF9wYWdl
X2l0ZXIgKml0ZXIsCiAJCQkgdW5zaWduZWQgaW50IG4sCi0JCQkgdW5zaWduZWQgaW50ICpvZmZz
ZXQpCisJCQkgdW5zaWduZWQgaW50ICpvZmZzZXQsCisJCQkgYm9vbCBhbGxvd19hbGxvYykKIHsK
IAljb25zdCBib29sIGRtYSA9IGl0ZXIgPT0gJm9iai0+bW0uZ2V0X2RtYV9wYWdlOwogCXN0cnVj
dCBzY2F0dGVybGlzdCAqc2c7CkBAIC00NjcsNiArNDY4LDkgQEAgX19pOTE1X2dlbV9vYmplY3Rf
Z2V0X3NnKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJaWYgKG4gPCBSRUFEX09O
Q0UoaXRlci0+c2dfaWR4KSkKIAkJZ290byBsb29rdXA7CiAKKwlpZiAoIWFsbG93X2FsbG9jKQor
CQlnb3RvIG1hbnVhbF9sb29rdXA7CisKIAltdXRleF9sb2NrKCZpdGVyLT5sb2NrKTsKIAogCS8q
IFdlIHByZWZlciB0byByZXVzZSB0aGUgbGFzdCBzZyBzbyB0aGF0IHJlcGVhdGVkIGxvb2t1cCBv
ZiB0aGlzCkBAIC01MTYsNyArNTIwLDE2IEBAIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWlmICh1bmxpa2VseShuIDwgaWR4KSkgLyog
aW5zZXJ0aW9uIGNvbXBsZXRlZCBieSBhbm90aGVyIHRocmVhZCAqLwogCQlnb3RvIGxvb2t1cDsK
IAotCS8qIEluIGNhc2Ugd2UgZmFpbGVkIHRvIGluc2VydCB0aGUgZW50cnkgaW50byB0aGUgcmFk
aXh0cmVlLCB3ZSBuZWVkCisJZ290byBtYW51YWxfd2FsazsKKworbWFudWFsX2xvb2t1cDoKKwlp
ZHggPSAwOworCXNnID0gb2JqLT5tbS5wYWdlcy0+c2dsOworCWNvdW50ID0gX19zZ19wYWdlX2Nv
dW50KHNnKTsKKworbWFudWFsX3dhbGs6CisJLyoKKwkgKiBJbiBjYXNlIHdlIGZhaWxlZCB0byBp
bnNlcnQgdGhlIGVudHJ5IGludG8gdGhlIHJhZGl4dHJlZSwgd2UgbmVlZAogCSAqIHRvIGxvb2sg
YmV5b25kIHRoZSBjdXJyZW50IHNnLgogCSAqLwogCXdoaWxlIChpZHggKyBjb3VudCA8PSBuKSB7
CkBAIC01NjMsNyArNTc2LDcgQEAgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosIHVuc2lnbmVkIGludCBuKQogCiAJR0VNX0JVR19PTighaTkx
NV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKTsKIAotCXNnID0gaTkxNV9nZW1fb2Jq
ZWN0X2dldF9zZyhvYmosIG4sICZvZmZzZXQpOworCXNnID0gaTkxNV9nZW1fb2JqZWN0X2dldF9z
ZyhvYmosIG4sICZvZmZzZXQsIHRydWUpOwogCXJldHVybiBudGhfcGFnZShzZ19wYWdlKHNnKSwg
b2Zmc2V0KTsKIH0KIApAQCAtNTg5LDcgKzYwMiw3IEBAIGk5MTVfZ2VtX29iamVjdF9nZXRfZG1h
X2FkZHJlc3NfbGVuKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJc3RydWN0IHNj
YXR0ZXJsaXN0ICpzZzsKIAl1bnNpZ25lZCBpbnQgb2Zmc2V0OwogCi0Jc2cgPSBpOTE1X2dlbV9v
YmplY3RfZ2V0X3NnX2RtYShvYmosIG4sICZvZmZzZXQpOworCXNnID0gaTkxNV9nZW1fb2JqZWN0
X2dldF9zZ19kbWEob2JqLCBuLCAmb2Zmc2V0LCB0cnVlKTsKIAogCWlmIChsZW4pCiAJCSpsZW4g
PSBzZ19kbWFfbGVuKHNnKSAtIChvZmZzZXQgPDwgUEFHRV9TSElGVCk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9nZ3R0LmMKaW5kZXggZWVjZTA4NDRmYmU5Li4yOGNmZjZmYjMwNTkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMKQEAgLTEzOTcsNyArMTM5Nyw3IEBAIGludGVs
X3BhcnRpYWxfcGFnZXMoY29uc3Qgc3RydWN0IGk5MTVfZ2d0dF92aWV3ICp2aWV3LAogCWlmIChy
ZXQpCiAJCWdvdG8gZXJyX3NnX2FsbG9jOwogCi0JaXRlciA9IGk5MTVfZ2VtX29iamVjdF9nZXRf
c2dfZG1hKG9iaiwgdmlldy0+cGFydGlhbC5vZmZzZXQsICZvZmZzZXQpOworCWl0ZXIgPSBpOTE1
X2dlbV9vYmplY3RfZ2V0X3NnX2RtYShvYmosIHZpZXctPnBhcnRpYWwub2Zmc2V0LCAmb2Zmc2V0
LCB0cnVlKTsKIAlHRU1fQlVHX09OKCFpdGVyKTsKIAogCXNnID0gc3QtPnNnbDsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKaW5kZXggODJkMGYxOWU4NmRmLi43MmExYWNhZjVi
YjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCkBAIC0xMTM3LDM4ICsx
MTM3LDIwIEBAIGZpbmRfcmVnKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwg
dTMyIGFkZHIpCiAvKiBSZXR1cm5zIGEgdm1hcCdkIHBvaW50ZXIgdG8gZHN0X29iaiwgd2hpY2gg
dGhlIGNhbGxlciBtdXN0IHVubWFwICovCiBzdGF0aWMgdTMyICpjb3B5X2JhdGNoKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpkc3Rfb2JqLAogCQkgICAgICAgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKnNyY19vYmosCi0JCSAgICAgICB1bnNpZ25lZCBsb25nIG9mZnNldCwgdW5zaWdu
ZWQgbG9uZyBsZW5ndGgpCisJCSAgICAgICB1bnNpZ25lZCBsb25nIG9mZnNldCwgdW5zaWduZWQg
bG9uZyBsZW5ndGgsCisJCSAgICAgICB2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYykKIHsKLQli
b29sIG5lZWRzX2NsZmx1c2g7Ci0Jdm9pZCAqZHN0LCAqc3JjOwotCWludCByZXQ7Ci0KLQlkc3Qg
PSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChkc3Rfb2JqLCBJOTE1X01BUF9GT1JDRV9XQik7Ci0J
aWYgKElTX0VSUihkc3QpKQotCQlyZXR1cm4gZHN0OwotCi0JcmV0ID0gaTkxNV9nZW1fb2JqZWN0
X3Bpbl9wYWdlcyhzcmNfb2JqKTsKLQlpZiAocmV0KSB7Ci0JCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9tYXAoZHN0X29iaik7Ci0JCXJldHVybiBFUlJfUFRSKHJldCk7Ci0JfQotCi0JbmVlZHNfY2xm
bHVzaCA9CisJYm9vbCBuZWVkc19jbGZsdXNoID0KIAkJIShzcmNfb2JqLT5jYWNoZV9jb2hlcmVu
dCAmIEk5MTVfQk9fQ0FDSEVfQ09IRVJFTlRfRk9SX1JFQUQpOwogCi0Jc3JjID0gRVJSX1BUUigt
RU5PREVWKTsKLQlpZiAobmVlZHNfY2xmbHVzaCAmJiBpOTE1X2hhc19tZW1jcHlfZnJvbV93Yygp
KSB7Ci0JCXNyYyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHNyY19vYmosIEk5MTVfTUFQX1dD
KTsKLQkJaWYgKCFJU19FUlIoc3JjKSkgewotCQkJaTkxNV91bmFsaWduZWRfbWVtY3B5X2Zyb21f
d2MoZHN0LAotCQkJCQkJICAgICAgc3JjICsgb2Zmc2V0LAotCQkJCQkJICAgICAgbGVuZ3RoKTsK
LQkJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc3JjX29iaik7Ci0JCX0KLQl9Ci0JaWYgKElT
X0VSUihzcmMpKSB7Ci0JCXVuc2lnbmVkIGxvbmcgeCwgbiwgcmVtYWluOworCWlmIChzcmMpIHsK
KwkJR0VNX0JVR19PTighbmVlZHNfY2xmbHVzaCk7CisJCWk5MTVfdW5hbGlnbmVkX21lbWNweV9m
cm9tX3djKGRzdCwgc3JjICsgb2Zmc2V0LCBsZW5ndGgpOworCX0gZWxzZSB7CisJCXN0cnVjdCBz
Y2F0dGVybGlzdCAqc2c7CiAJCXZvaWQgKnB0cjsKKwkJdW5zaWduZWQgaW50IHgsIHNnX29mczsK
KwkJdW5zaWduZWQgbG9uZyByZW1haW47CiAKIAkJLyoKIAkJICogV2UgY2FuIGF2b2lkIGNsZmx1
c2hpbmcgcGFydGlhbCBjYWNoZWxpbmVzIGJlZm9yZSB0aGUgd3JpdGUKQEAgLTExODUsMjMgKzEx
NjcsMzEgQEAgc3RhdGljIHUzMiAqY29weV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqZHN0X29iaiwKIAogCQlwdHIgPSBkc3Q7CiAJCXggPSBvZmZzZXRfaW5fcGFnZShvZmZzZXQp
OwotCQlmb3IgKG4gPSBvZmZzZXQgPj4gUEFHRV9TSElGVDsgcmVtYWluOyBuKyspIHsKLQkJCWlu
dCBsZW4gPSBtaW4ocmVtYWluLCBQQUdFX1NJWkUgLSB4KTsKLQotCQkJc3JjID0ga21hcF9hdG9t
aWMoaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKHNyY19vYmosIG4pKTsKLQkJCWlmIChuZWVkc19j
bGZsdXNoKQotCQkJCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2Uoc3JjICsgeCwgbGVuKTsKLQkJCW1l
bWNweShwdHIsIHNyYyArIHgsIGxlbik7Ci0JCQlrdW5tYXBfYXRvbWljKHNyYyk7Ci0KLQkJCXB0
ciArPSBsZW47Ci0JCQlyZW1haW4gLT0gbGVuOwotCQkJeCA9IDA7CisJCXNnID0gaTkxNV9nZW1f
b2JqZWN0X2dldF9zZyhzcmNfb2JqLCBvZmZzZXQgPj4gUEFHRV9TSElGVCwgJnNnX29mcywgZmFs
c2UpOworCisJCXdoaWxlIChyZW1haW4pIHsKKwkJCXVuc2lnbmVkIGxvbmcgc2dfbWF4ID0gc2ct
Pmxlbmd0aCA+PiBQQUdFX1NISUZUOworCisJCQlmb3IgKDsgcmVtYWluICYmIHNnX29mcyA8IHNn
X21heDsgc2dfb2ZzKyspIHsKKwkJCQl1bnNpZ25lZCBsb25nIGxlbiA9IG1pbihyZW1haW4sIFBB
R0VfU0laRSAtIHgpOworCQkJCXZvaWQgKm1hcDsKKworCQkJCW1hcCA9IGttYXBfYXRvbWljKG50
aF9wYWdlKHNnX3BhZ2Uoc2cpLCBzZ19vZnMpKTsKKwkJCQlpZiAobmVlZHNfY2xmbHVzaCkKKwkJ
CQkJZHJtX2NsZmx1c2hfdmlydF9yYW5nZShtYXAgKyB4LCBsZW4pOworCQkJCW1lbWNweShwdHIs
IG1hcCArIHgsIGxlbik7CisJCQkJa3VubWFwX2F0b21pYyhtYXApOworCisJCQkJcHRyICs9IGxl
bjsKKwkJCQlyZW1haW4gLT0gbGVuOworCQkJCXggPSAwOworCQkJfQorCisJCQlzZ19vZnMgPSAw
OworCQkJc2cgPSBzZ19uZXh0KHNnKTsKIAkJfQogCX0KIAotCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9wYWdlcyhzcmNfb2JqKTsKLQogCW1lbXNldDMyKGRzdCArIGxlbmd0aCwgMCwgKGRzdF9vYmot
PmJhc2Uuc2l6ZSAtIGxlbmd0aCkgLyBzaXplb2YodTMyKSk7CiAKIAkvKiBkc3Rfb2JqIGlzIHJl
dHVybmVkIHdpdGggdm1hcCBwaW5uZWQgKi8KQEAgLTEzNjMsOSArMTM1Myw2IEBAIHN0YXRpYyBp
bnQgY2hlY2tfYmJzdGFydCh1MzIgKmNtZCwgdTMyIG9mZnNldCwgdTMyIGxlbmd0aCwKIAlpZiAo
dGFyZ2V0X2NtZF9pbmRleCA9PSBvZmZzZXQpCiAJCXJldHVybiAwOwogCi0JaWYgKElTX0VSUihq
dW1wX3doaXRlbGlzdCkpCi0JCXJldHVybiBQVFJfRVJSKGp1bXBfd2hpdGVsaXN0KTsKLQogCWlm
ICghdGVzdF9iaXQodGFyZ2V0X2NtZF9pbmRleCwganVtcF93aGl0ZWxpc3QpKSB7CiAJCURSTV9E
RUJVRygiQ01EOiBCQl9TVEFSVCB0byAweCVsbHggbm90IGEgcHJldmlvdXNseSBleGVjdXRlZCBj
bWRcbiIsCiAJCQkgIGp1bXBfdGFyZ2V0KTsKQEAgLTEzNzUsMTAgKzEzNjIsMTQgQEAgc3RhdGlj
IGludCBjaGVja19iYnN0YXJ0KHUzMiAqY21kLCB1MzIgb2Zmc2V0LCB1MzIgbGVuZ3RoLAogCXJl
dHVybiAwOwogfQogCi1zdGF0aWMgdW5zaWduZWQgbG9uZyAqYWxsb2Nfd2hpdGVsaXN0KHUzMiBi
YXRjaF9sZW5ndGgpCit1bnNpZ25lZCBsb25nICppbnRlbF9lbmdpbmVfY21kX3BhcnNlcl9hbGxv
Y19qdW1wX3doaXRlbGlzdCh1MzIgYmF0Y2hfbGVuZ3RoLAorCQkJCQkJCSAgICBib29sIHRyYW1w
b2xpbmUpCiB7CiAJdW5zaWduZWQgbG9uZyAqam1wOwogCisJaWYgKHRyYW1wb2xpbmUpCisJCXJl
dHVybiBOVUxMOworCiAJLyoKIAkgKiBXZSBleHBlY3QgYmF0Y2hfbGVuZ3RoIHRvIGJlIGxlc3Mg
dGhhbiAyNTZLaUIgZm9yIGtub3duIHVzZXJzLAogCSAqIGkuZS4gd2UgbmVlZCBhdCBtb3N0IGFu
IDhLaUIgYml0bWFwIGFsbG9jYXRpb24gd2hpY2ggc2hvdWxkIGJlCkBAIC0xNDE2LDE0ICsxNDA3
LDE2IEBAIGludCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCiAJCQkgICAgdW5zaWduZWQgbG9uZyBiYXRjaF9vZmZzZXQsCiAJCQkgICAgdW5z
aWduZWQgbG9uZyBiYXRjaF9sZW5ndGgsCiAJCQkgICAgc3RydWN0IGk5MTVfdm1hICpzaGFkb3cs
Ci0JCQkgICAgYm9vbCB0cmFtcG9saW5lKQorCQkJICAgIHVuc2lnbmVkIGxvbmcgKmp1bXBfd2hp
dGVsaXN0LAorCQkJICAgIHZvaWQgKnNoYWRvd19tYXAsCisJCQkgICAgY29uc3Qgdm9pZCAqYmF0
Y2hfbWFwKQogewogCXUzMiAqY21kLCAqYmF0Y2hfZW5kLCBvZmZzZXQgPSAwOwogCXN0cnVjdCBk
cm1faTkxNV9jbWRfZGVzY3JpcHRvciBkZWZhdWx0X2Rlc2MgPSBub29wX2Rlc2M7CiAJY29uc3Qg
c3RydWN0IGRybV9pOTE1X2NtZF9kZXNjcmlwdG9yICpkZXNjID0gJmRlZmF1bHRfZGVzYzsKLQl1
bnNpZ25lZCBsb25nICpqdW1wX3doaXRlbGlzdDsKIAl1NjQgYmF0Y2hfYWRkciwgc2hhZG93X2Fk
ZHI7CiAJaW50IHJldCA9IDA7CisJYm9vbCB0cmFtcG9saW5lID0gIWp1bXBfd2hpdGVsaXN0Owog
CiAJR0VNX0JVR19PTighSVNfQUxJR05FRChiYXRjaF9vZmZzZXQsIHNpemVvZigqY21kKSkpOwog
CUdFTV9CVUdfT04oIUlTX0FMSUdORUQoYmF0Y2hfbGVuZ3RoLCBzaXplb2YoKmNtZCkpKTsKQEAg
LTE0MzEsMTYgKzE0MjQsOCBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJCSAgICAgYmF0Y2gtPnNpemUpKTsKIAlHRU1fQlVH
X09OKCFiYXRjaF9sZW5ndGgpOwogCi0JY21kID0gY29weV9iYXRjaChzaGFkb3ctPm9iaiwgYmF0
Y2gtPm9iaiwgYmF0Y2hfb2Zmc2V0LCBiYXRjaF9sZW5ndGgpOwotCWlmIChJU19FUlIoY21kKSkg
ewotCQlEUk1fREVCVUcoIkNNRDogRmFpbGVkIHRvIGNvcHkgYmF0Y2hcbiIpOwotCQlyZXR1cm4g
UFRSX0VSUihjbWQpOwotCX0KLQotCWp1bXBfd2hpdGVsaXN0ID0gTlVMTDsKLQlpZiAoIXRyYW1w
b2xpbmUpCi0JCS8qIERlZmVyIGZhaWx1cmUgdW50aWwgYXR0ZW1wdGVkIHVzZSAqLwotCQlqdW1w
X3doaXRlbGlzdCA9IGFsbG9jX3doaXRlbGlzdChiYXRjaF9sZW5ndGgpOworCWNtZCA9IGNvcHlf
YmF0Y2goc2hhZG93LT5vYmosIGJhdGNoLT5vYmosIGJhdGNoX29mZnNldCwgYmF0Y2hfbGVuZ3Ro
LAorCQkJIHNoYWRvd19tYXAsIGJhdGNoX21hcCk7CiAKIAlzaGFkb3dfYWRkciA9IGdlbjhfY2Fu
b25pY2FsX2FkZHIoc2hhZG93LT5ub2RlLnN0YXJ0KTsKIAliYXRjaF9hZGRyID0gZ2VuOF9jYW5v
bmljYWxfYWRkcihiYXRjaC0+bm9kZS5zdGFydCArIGJhdGNoX29mZnNldCk7CkBAIC0xNTQxLDkg
KzE1MjYsNiBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAogCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChzaGFkb3ctPm9iaik7
CiAKLQlpZiAoIUlTX0VSUl9PUl9OVUxMKGp1bXBfd2hpdGVsaXN0KSkKLQkJa2ZyZWUoanVtcF93
aGl0ZWxpc3QpOwotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc2hhZG93LT5vYmopOwogCXJl
dHVybiByZXQ7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDVlNWJjZWYyMGUzMy4u
NTMxMDU2MmRhOWNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE5NjAsMTIgKzE5NjAs
MTcgQEAgY29uc3QgY2hhciAqaTkxNV9jYWNoZV9sZXZlbF9zdHIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIGludCB0eXBlKTsKIGludCBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIHZvaWQgaW50ZWxfZW5naW5lX2lu
aXRfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogdm9pZCBpbnRl
bF9lbmdpbmVfY2xlYW51cF9jbWRfcGFyc2VyKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSk7Cit1bnNpZ25lZCBsb25nICppbnRlbF9lbmdpbmVfY21kX3BhcnNlcl9hbGxvY19qdW1wX3do
aXRlbGlzdCh1MzIgYmF0Y2hfbGVuZ3RoLAorCQkJCQkJCSAgICBib29sIHRyYW1wb2xpbmUpOwor
CiBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLAogCQkJICAgIHN0cnVjdCBpOTE1X3ZtYSAqYmF0Y2gsCiAJCQkgICAgdW5zaWduZWQgbG9u
ZyBiYXRjaF9vZmZzZXQsCiAJCQkgICAgdW5zaWduZWQgbG9uZyBiYXRjaF9sZW5ndGgsCiAJCQkg
ICAgc3RydWN0IGk5MTVfdm1hICpzaGFkb3csCi0JCQkgICAgYm9vbCB0cmFtcG9saW5lKTsKKwkJ
CSAgICB1bnNpZ25lZCBsb25nICpqdW1wX3doaXRlbGlzdCwKKwkJCSAgICB2b2lkICpzaGFkb3df
bWFwLAorCQkJICAgIGNvbnN0IHZvaWQgKmJhdGNoX21hcCk7CiAjZGVmaW5lIEk5MTVfQ01EX1BB
UlNFUl9UUkFNUE9MSU5FX1NJWkUgOAogCiAvKiBpbnRlbF9kZXZpY2VfaW5mby5jICovCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9tZW1jcHkuYwppbmRleCA3YjNiODNiZDVhYjguLjFiMDIxYTQ5MDJkZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jCkBAIC0xMzUsNyArMTM1LDcgQEAgYm9vbCBp
OTE1X21lbWNweV9mcm9tX3djKHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBs
b25nIGxlbikKICAqIGFjY2VwdHMgdGhhdCBpdHMgYXJndW1lbnRzIG1heSBub3QgYmUgYWxpZ25l
ZCwgYnV0IGFyZSB2YWxpZCBmb3IgdGhlCiAgKiBwb3RlbnRpYWwgMTYtYnl0ZSByZWFkIHBhc3Qg
dGhlIGVuZC4KICAqLwotdm9pZCBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93Yyh2b2lkICpk
c3QsIHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBsZW4pCit2b2lkIGk5MTVfdW5hbGlnbmVkX21l
bWNweV9mcm9tX3djKHZvaWQgKmRzdCwgY29uc3Qgdm9pZCAqc3JjLCB1bnNpZ25lZCBsb25nIGxl
bikKIHsKIAl1bnNpZ25lZCBsb25nIGFkZHI7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfbWVtY3B5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5o
CmluZGV4IGUzNmQzMGVkZDk4Ny4uM2RmMDYzYTMyOTNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X21lbWNweS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
bWVtY3B5LmgKQEAgLTEzLDcgKzEzLDcgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiB2b2lk
IGk5MTVfbWVtY3B5X2luaXRfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwog
CiBib29sIGk5MTVfbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVu
c2lnbmVkIGxvbmcgbGVuKTsKLXZvaWQgaTkxNV91bmFsaWduZWRfbWVtY3B5X2Zyb21fd2Modm9p
ZCAqZHN0LCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKTsKK3ZvaWQgaTkxNV91bmFsaWdu
ZWRfbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxv
bmcgbGVuKTsKIAogLyogVGhlIG1vdm50ZHFhIGluc3RydWN0aW9ucyB1c2VkIGZvciBtZW1jcHkt
ZnJvbS13YyByZXF1aXJlIDE2LWJ5dGUgYWxpZ25tZW50LAogICogYXMgd2VsbCBhcyBTU0U0LjEg
c3VwcG9ydC4gaTkxNV9tZW1jcHlfZnJvbV93YygpIHdpbGwgcmVwb3J0IGlmIGl0IGNhbm5vdAot
LSAKMi4zMC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
