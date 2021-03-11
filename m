Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71035337468
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352E56EC99;
	Thu, 11 Mar 2021 13:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77BD6ECAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:41:43 +0100
Message-Id: <20210311134249.588632-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 03/69] drm/i915: Move cmd parser pinning to
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
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCBmZTE3MDE4
NmRkNDIuLjM5ODFmOGVmM2ZjYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yOCw2ICsyOCw3IEBACiAjaW5jbHVkZSAiaTkxNV9zd19m
ZW5jZV93b3JrLmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdXNl
cl9leHRlbnNpb25zLmgiCisjaW5jbHVkZSAiaTkxNV9tZW1jcHkuaCIKIAogc3RydWN0IGViX3Zt
YSB7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CkBAIC0yMjY3LDI0ICsyMjY4LDQ1IEBAIHN0cnVj
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
MTVfYWN0aXZlX3JlbGVhc2UoJnB3LT5zaGFkb3ctPmFjdGl2ZSk7CkBAIC0yMzM0LDYgKzIzNTYs
OCBAQCBzdGF0aWMgaW50IGViX3BhcnNlX3BpcGVsaW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLAogCQkJICAgICBzdHJ1Y3QgaTkxNV92bWEgKnRyYW1wb2xpbmUpCiB7CiAJc3RydWN0IGVi
X3BhcnNlX3dvcmsgKnB3OworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpiYXRjaCA9IGVi
LT5iYXRjaC0+dm1hLT5vYmo7CisJYm9vbCBuZWVkc19jbGZsdXNoOwogCWludCBlcnI7CiAKIAlH
RU1fQlVHX09OKG92ZXJmbG93c190eXBlKGViLT5iYXRjaF9zdGFydF9vZmZzZXQsIHB3LT5iYXRj
aF9vZmZzZXQpKTsKQEAgLTIzNTcsNiArMjM4MSwzNCBAQCBzdGF0aWMgaW50IGViX3BhcnNlX3Bp
cGVsaW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQkJZ290byBlcnJfc2hhZG93Owog
CX0KIAorCXB3LT5zaGFkb3dfbWFwID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoc2hhZG93LT5v
YmosIEk5MTVfTUFQX1dCKTsKKwlpZiAoSVNfRVJSKHB3LT5zaGFkb3dfbWFwKSkgeworCQllcnIg
PSBQVFJfRVJSKHB3LT5zaGFkb3dfbWFwKTsKKwkJZ290byBlcnJfdHJhbXBvbGluZTsKKwl9CisK
KwluZWVkc19jbGZsdXNoID0KKwkJIShiYXRjaC0+Y2FjaGVfY29oZXJlbnQgJiBJOTE1X0JPX0NB
Q0hFX0NPSEVSRU5UX0ZPUl9SRUFEKTsKKworCXB3LT5iYXRjaF9tYXAgPSBFUlJfUFRSKC1FTk9E
RVYpOworCWlmIChuZWVkc19jbGZsdXNoICYmIGk5MTVfaGFzX21lbWNweV9mcm9tX3djKCkpCisJ
CXB3LT5iYXRjaF9tYXAgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChiYXRjaCwgSTkxNV9NQVBf
V0MpOworCisJaWYgKElTX0VSUihwdy0+YmF0Y2hfbWFwKSkgeworCQllcnIgPSBpOTE1X2dlbV9v
YmplY3RfcGluX3BhZ2VzKGJhdGNoKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gZXJyX3VubWFwX3No
YWRvdzsKKwkJcHctPmJhdGNoX21hcCA9IE5VTEw7CisJfQorCisJcHctPmp1bXBfd2hpdGVsaXN0
ID0KKwkJaW50ZWxfZW5naW5lX2NtZF9wYXJzZXJfYWxsb2NfanVtcF93aGl0ZWxpc3QoZWItPmJh
dGNoX2xlbiwKKwkJCQkJCQkgICAgIHRyYW1wb2xpbmUpOworCWlmIChJU19FUlIocHctPmp1bXBf
d2hpdGVsaXN0KSkgeworCQllcnIgPSBQVFJfRVJSKHB3LT5qdW1wX3doaXRlbGlzdCk7CisJCWdv
dG8gZXJyX3VubWFwX2JhdGNoOworCX0KKwogCWRtYV9mZW5jZV93b3JrX2luaXQoJnB3LT5iYXNl
LCAmZWJfcGFyc2Vfb3BzKTsKIAogCXB3LT5lbmdpbmUgPSBlYi0+ZW5naW5lOwpAQCAtMjM5Niw2
ICsyNDQ4LDE2IEBAIHN0YXRpYyBpbnQgZWJfcGFyc2VfcGlwZWxpbmUoc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciAqZWIsCiAJZG1hX2ZlbmNlX3dvcmtfY29tbWl0X2ltbSgmcHctPmJhc2UpOwogCXJl
dHVybiBlcnI7CiAKK2Vycl91bm1hcF9iYXRjaDoKKwlpZiAocHctPmJhdGNoX21hcCkKKwkJaTkx
NV9nZW1fb2JqZWN0X3VucGluX21hcChiYXRjaCk7CisJZWxzZQorCQlpOTE1X2dlbV9vYmplY3Rf
dW5waW5fcGFnZXMoYmF0Y2gpOworZXJyX3VubWFwX3NoYWRvdzoKKwlpOTE1X2dlbV9vYmplY3Rf
dW5waW5fbWFwKHNoYWRvdy0+b2JqKTsKK2Vycl90cmFtcG9saW5lOgorCWlmICh0cmFtcG9saW5l
KQorCQlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZ0cmFtcG9saW5lLT5hY3RpdmUpOwogZXJyX3NoYWRv
dzoKIAlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZzaGFkb3ctPmFjdGl2ZSk7CiBlcnJfYmF0Y2g6CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggMzY2ZDIzYWZi
YjFhLi5kYzk0OTQwNDg0M2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmgKQEAgLTMyNSwyMiArMzI1LDIyIEBAIHN0cnVjdCBzY2F0dGVybGlzdCAqCiBfX2k5
MTVfZ2VtX29iamVjdF9nZXRfc2coc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJ
CSBzdHJ1Y3QgaTkxNV9nZW1fb2JqZWN0X3BhZ2VfaXRlciAqaXRlciwKIAkJCSB1bnNpZ25lZCBp
bnQgbiwKLQkJCSB1bnNpZ25lZCBpbnQgKm9mZnNldCk7CisJCQkgdW5zaWduZWQgaW50ICpvZmZz
ZXQsIGJvb2wgYWxsb3dfYWxsb2MpOwogCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBzY2F0dGVybGlz
dCAqCiBpOTE1X2dlbV9vYmplY3RfZ2V0X3NnKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCiAJCSAgICAgICB1bnNpZ25lZCBpbnQgbiwKLQkJICAgICAgIHVuc2lnbmVkIGludCAqb2Zm
c2V0KQorCQkgICAgICAgdW5zaWduZWQgaW50ICpvZmZzZXQsIGJvb2wgYWxsb3dfYWxsb2MpCiB7
Ci0JcmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhvYmosICZvYmotPm1tLmdldF9wYWdl
LCBuLCBvZmZzZXQpOworCXJldHVybiBfX2k5MTVfZ2VtX29iamVjdF9nZXRfc2cob2JqLCAmb2Jq
LT5tbS5nZXRfcGFnZSwgbiwgb2Zmc2V0LCBhbGxvd19hbGxvYyk7CiB9CiAKIHN0YXRpYyBpbmxp
bmUgc3RydWN0IHNjYXR0ZXJsaXN0ICoKIGk5MTVfZ2VtX29iamVjdF9nZXRfc2dfZG1hKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgICB1bnNpZ25lZCBpbnQgbiwKLQkJCSAg
IHVuc2lnbmVkIGludCAqb2Zmc2V0KQorCQkJICAgdW5zaWduZWQgaW50ICpvZmZzZXQsIGJvb2wg
YWxsb3dfYWxsb2MpCiB7Ci0JcmV0dXJuIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhvYmosICZv
YmotPm1tLmdldF9kbWFfcGFnZSwgbiwgb2Zmc2V0KTsKKwlyZXR1cm4gX19pOTE1X2dlbV9vYmpl
Y3RfZ2V0X3NnKG9iaiwgJm9iai0+bW0uZ2V0X2RtYV9wYWdlLCBuLCBvZmZzZXQsIGFsbG93X2Fs
bG9jKTsKIH0KIAogc3RydWN0IHBhZ2UgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcGFnZXMuYwppbmRleCA0MzAyOGYzNTM5YTYuLmQ0NGI3MmRkMTNmZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKQEAgLTQ0OCw3ICs0NDgsOCBAQCBzdHJ1
Y3Qgc2NhdHRlcmxpc3QgKgogX19pOTE1X2dlbV9vYmplY3RfZ2V0X3NnKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgc3RydWN0IGk5MTVfZ2VtX29iamVjdF9wYWdlX2l0ZXIg
Kml0ZXIsCiAJCQkgdW5zaWduZWQgaW50IG4sCi0JCQkgdW5zaWduZWQgaW50ICpvZmZzZXQpCisJ
CQkgdW5zaWduZWQgaW50ICpvZmZzZXQsCisJCQkgYm9vbCBhbGxvd19hbGxvYykKIHsKIAljb25z
dCBib29sIGRtYSA9IGl0ZXIgPT0gJm9iai0+bW0uZ2V0X2RtYV9wYWdlOwogCXN0cnVjdCBzY2F0
dGVybGlzdCAqc2c7CkBAIC00NzAsNiArNDcxLDkgQEAgX19pOTE1X2dlbV9vYmplY3RfZ2V0X3Nn
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJaWYgKG4gPCBSRUFEX09OQ0UoaXRl
ci0+c2dfaWR4KSkKIAkJZ290byBsb29rdXA7CiAKKwlpZiAoIWFsbG93X2FsbG9jKQorCQlnb3Rv
IG1hbnVhbF9sb29rdXA7CisKIAltdXRleF9sb2NrKCZpdGVyLT5sb2NrKTsKIAogCS8qIFdlIHBy
ZWZlciB0byByZXVzZSB0aGUgbGFzdCBzZyBzbyB0aGF0IHJlcGVhdGVkIGxvb2t1cCBvZiB0aGlz
CkBAIC01MTksNyArNTIzLDE2IEBAIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWlmICh1bmxpa2VseShuIDwgaWR4KSkgLyogaW5zZXJ0
aW9uIGNvbXBsZXRlZCBieSBhbm90aGVyIHRocmVhZCAqLwogCQlnb3RvIGxvb2t1cDsKIAotCS8q
IEluIGNhc2Ugd2UgZmFpbGVkIHRvIGluc2VydCB0aGUgZW50cnkgaW50byB0aGUgcmFkaXh0cmVl
LCB3ZSBuZWVkCisJZ290byBtYW51YWxfd2FsazsKKworbWFudWFsX2xvb2t1cDoKKwlpZHggPSAw
OworCXNnID0gb2JqLT5tbS5wYWdlcy0+c2dsOworCWNvdW50ID0gX19zZ19wYWdlX2NvdW50KHNn
KTsKKworbWFudWFsX3dhbGs6CisJLyoKKwkgKiBJbiBjYXNlIHdlIGZhaWxlZCB0byBpbnNlcnQg
dGhlIGVudHJ5IGludG8gdGhlIHJhZGl4dHJlZSwgd2UgbmVlZAogCSAqIHRvIGxvb2sgYmV5b25k
IHRoZSBjdXJyZW50IHNnLgogCSAqLwogCXdoaWxlIChpZHggKyBjb3VudCA8PSBuKSB7CkBAIC01
NjYsNyArNTc5LDcgQEAgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosIHVuc2lnbmVkIGludCBuKQogCiAJR0VNX0JVR19PTighaTkxNV9nZW1f
b2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKTsKIAotCXNnID0gaTkxNV9nZW1fb2JqZWN0X2dl
dF9zZyhvYmosIG4sICZvZmZzZXQpOworCXNnID0gaTkxNV9nZW1fb2JqZWN0X2dldF9zZyhvYmos
IG4sICZvZmZzZXQsIHRydWUpOwogCXJldHVybiBudGhfcGFnZShzZ19wYWdlKHNnKSwgb2Zmc2V0
KTsKIH0KIApAQCAtNTkyLDcgKzYwNSw3IEBAIGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJl
c3NfbGVuKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJc3RydWN0IHNjYXR0ZXJs
aXN0ICpzZzsKIAl1bnNpZ25lZCBpbnQgb2Zmc2V0OwogCi0Jc2cgPSBpOTE1X2dlbV9vYmplY3Rf
Z2V0X3NnX2RtYShvYmosIG4sICZvZmZzZXQpOworCXNnID0gaTkxNV9nZW1fb2JqZWN0X2dldF9z
Z19kbWEob2JqLCBuLCAmb2Zmc2V0LCB0cnVlKTsKIAogCWlmIChsZW4pCiAJCSpsZW4gPSBzZ19k
bWFfbGVuKHNnKSAtIChvZmZzZXQgPDwgUEFHRV9TSElGVCk7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9nZ3R0LmMKaW5kZXggYjBiOGRlZDgzNGYwLi5jOGViMDM0YzgwNmEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMKQEAgLTE0MzQsNyArMTQzNCw3IEBAIGludGVsX3BhcnRp
YWxfcGFnZXMoY29uc3Qgc3RydWN0IGk5MTVfZ2d0dF92aWV3ICp2aWV3LAogCWlmIChyZXQpCiAJ
CWdvdG8gZXJyX3NnX2FsbG9jOwogCi0JaXRlciA9IGk5MTVfZ2VtX29iamVjdF9nZXRfc2dfZG1h
KG9iaiwgdmlldy0+cGFydGlhbC5vZmZzZXQsICZvZmZzZXQpOworCWl0ZXIgPSBpOTE1X2dlbV9v
YmplY3RfZ2V0X3NnX2RtYShvYmosIHZpZXctPnBhcnRpYWwub2Zmc2V0LCAmb2Zmc2V0LCB0cnVl
KTsKIAlHRU1fQlVHX09OKCFpdGVyKTsKIAogCXNnID0gc3QtPnNnbDsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9jbWRfcGFyc2VyLmMKaW5kZXggNWY4NmY1YjJjYWY2Li5lNmYxZTkzYWJiYmIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCkBAIC0xMTQ0LDM4ICsxMTQ0LDIw
IEBAIGZpbmRfcmVnKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgdTMyIGFk
ZHIpCiAvKiBSZXR1cm5zIGEgdm1hcCdkIHBvaW50ZXIgdG8gZHN0X29iaiwgd2hpY2ggdGhlIGNh
bGxlciBtdXN0IHVubWFwICovCiBzdGF0aWMgdTMyICpjb3B5X2JhdGNoKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpkc3Rfb2JqLAogCQkgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKnNyY19vYmosCi0JCSAgICAgICB1bnNpZ25lZCBsb25nIG9mZnNldCwgdW5zaWduZWQgbG9u
ZyBsZW5ndGgpCisJCSAgICAgICB1bnNpZ25lZCBsb25nIG9mZnNldCwgdW5zaWduZWQgbG9uZyBs
ZW5ndGgsCisJCSAgICAgICB2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYykKIHsKLQlib29sIG5l
ZWRzX2NsZmx1c2g7Ci0Jdm9pZCAqZHN0LCAqc3JjOwotCWludCByZXQ7Ci0KLQlkc3QgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcChkc3Rfb2JqLCBJOTE1X01BUF9XQik7Ci0JaWYgKElTX0VSUihk
c3QpKQotCQlyZXR1cm4gZHN0OwotCi0JcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhz
cmNfb2JqKTsKLQlpZiAocmV0KSB7Ci0JCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoZHN0X29i
aik7Ci0JCXJldHVybiBFUlJfUFRSKHJldCk7Ci0JfQotCi0JbmVlZHNfY2xmbHVzaCA9CisJYm9v
bCBuZWVkc19jbGZsdXNoID0KIAkJIShzcmNfb2JqLT5jYWNoZV9jb2hlcmVudCAmIEk5MTVfQk9f
Q0FDSEVfQ09IRVJFTlRfRk9SX1JFQUQpOwogCi0Jc3JjID0gRVJSX1BUUigtRU5PREVWKTsKLQlp
ZiAobmVlZHNfY2xmbHVzaCAmJiBpOTE1X2hhc19tZW1jcHlfZnJvbV93YygpKSB7Ci0JCXNyYyA9
IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHNyY19vYmosIEk5MTVfTUFQX1dDKTsKLQkJaWYgKCFJ
U19FUlIoc3JjKSkgewotCQkJaTkxNV91bmFsaWduZWRfbWVtY3B5X2Zyb21fd2MoZHN0LAotCQkJ
CQkJICAgICAgc3JjICsgb2Zmc2V0LAotCQkJCQkJICAgICAgbGVuZ3RoKTsKLQkJCWk5MTVfZ2Vt
X29iamVjdF91bnBpbl9tYXAoc3JjX29iaik7Ci0JCX0KLQl9Ci0JaWYgKElTX0VSUihzcmMpKSB7
Ci0JCXVuc2lnbmVkIGxvbmcgeCwgbiwgcmVtYWluOworCWlmIChzcmMpIHsKKwkJR0VNX0JVR19P
TighbmVlZHNfY2xmbHVzaCk7CisJCWk5MTVfdW5hbGlnbmVkX21lbWNweV9mcm9tX3djKGRzdCwg
c3JjICsgb2Zmc2V0LCBsZW5ndGgpOworCX0gZWxzZSB7CisJCXN0cnVjdCBzY2F0dGVybGlzdCAq
c2c7CiAJCXZvaWQgKnB0cjsKKwkJdW5zaWduZWQgaW50IHgsIHNnX29mczsKKwkJdW5zaWduZWQg
bG9uZyByZW1haW47CiAKIAkJLyoKIAkJICogV2UgY2FuIGF2b2lkIGNsZmx1c2hpbmcgcGFydGlh
bCBjYWNoZWxpbmVzIGJlZm9yZSB0aGUgd3JpdGUKQEAgLTExOTIsMjMgKzExNzQsMzEgQEAgc3Rh
dGljIHUzMiAqY29weV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZHN0X29iaiwK
IAogCQlwdHIgPSBkc3Q7CiAJCXggPSBvZmZzZXRfaW5fcGFnZShvZmZzZXQpOwotCQlmb3IgKG4g
PSBvZmZzZXQgPj4gUEFHRV9TSElGVDsgcmVtYWluOyBuKyspIHsKLQkJCWludCBsZW4gPSBtaW4o
cmVtYWluLCBQQUdFX1NJWkUgLSB4KTsKLQotCQkJc3JjID0ga21hcF9hdG9taWMoaTkxNV9nZW1f
b2JqZWN0X2dldF9wYWdlKHNyY19vYmosIG4pKTsKLQkJCWlmIChuZWVkc19jbGZsdXNoKQotCQkJ
CWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2Uoc3JjICsgeCwgbGVuKTsKLQkJCW1lbWNweShwdHIsIHNy
YyArIHgsIGxlbik7Ci0JCQlrdW5tYXBfYXRvbWljKHNyYyk7Ci0KLQkJCXB0ciArPSBsZW47Ci0J
CQlyZW1haW4gLT0gbGVuOwotCQkJeCA9IDA7CisJCXNnID0gaTkxNV9nZW1fb2JqZWN0X2dldF9z
ZyhzcmNfb2JqLCBvZmZzZXQgPj4gUEFHRV9TSElGVCwgJnNnX29mcywgZmFsc2UpOworCisJCXdo
aWxlIChyZW1haW4pIHsKKwkJCXVuc2lnbmVkIGxvbmcgc2dfbWF4ID0gc2ctPmxlbmd0aCA+PiBQ
QUdFX1NISUZUOworCisJCQlmb3IgKDsgcmVtYWluICYmIHNnX29mcyA8IHNnX21heDsgc2dfb2Zz
KyspIHsKKwkJCQl1bnNpZ25lZCBsb25nIGxlbiA9IG1pbihyZW1haW4sIFBBR0VfU0laRSAtIHgp
OworCQkJCXZvaWQgKm1hcDsKKworCQkJCW1hcCA9IGttYXBfYXRvbWljKG50aF9wYWdlKHNnX3Bh
Z2Uoc2cpLCBzZ19vZnMpKTsKKwkJCQlpZiAobmVlZHNfY2xmbHVzaCkKKwkJCQkJZHJtX2NsZmx1
c2hfdmlydF9yYW5nZShtYXAgKyB4LCBsZW4pOworCQkJCW1lbWNweShwdHIsIG1hcCArIHgsIGxl
bik7CisJCQkJa3VubWFwX2F0b21pYyhtYXApOworCisJCQkJcHRyICs9IGxlbjsKKwkJCQlyZW1h
aW4gLT0gbGVuOworCQkJCXggPSAwOworCQkJfQorCisJCQlzZ19vZnMgPSAwOworCQkJc2cgPSBz
Z19uZXh0KHNnKTsKIAkJfQogCX0KIAotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhzcmNf
b2JqKTsKLQogCW1lbXNldDMyKGRzdCArIGxlbmd0aCwgMCwgKGRzdF9vYmotPmJhc2Uuc2l6ZSAt
IGxlbmd0aCkgLyBzaXplb2YodTMyKSk7CiAKIAkvKiBkc3Rfb2JqIGlzIHJldHVybmVkIHdpdGgg
dm1hcCBwaW5uZWQgKi8KQEAgLTEzNzAsOSArMTM2MCw2IEBAIHN0YXRpYyBpbnQgY2hlY2tfYmJz
dGFydCh1MzIgKmNtZCwgdTMyIG9mZnNldCwgdTMyIGxlbmd0aCwKIAlpZiAodGFyZ2V0X2NtZF9p
bmRleCA9PSBvZmZzZXQpCiAJCXJldHVybiAwOwogCi0JaWYgKElTX0VSUihqdW1wX3doaXRlbGlz
dCkpCi0JCXJldHVybiBQVFJfRVJSKGp1bXBfd2hpdGVsaXN0KTsKLQogCWlmICghdGVzdF9iaXQo
dGFyZ2V0X2NtZF9pbmRleCwganVtcF93aGl0ZWxpc3QpKSB7CiAJCURSTV9ERUJVRygiQ01EOiBC
Ql9TVEFSVCB0byAweCVsbHggbm90IGEgcHJldmlvdXNseSBleGVjdXRlZCBjbWRcbiIsCiAJCQkg
IGp1bXBfdGFyZ2V0KTsKQEAgLTEzODIsMTAgKzEzNjksMTQgQEAgc3RhdGljIGludCBjaGVja19i
YnN0YXJ0KHUzMiAqY21kLCB1MzIgb2Zmc2V0LCB1MzIgbGVuZ3RoLAogCXJldHVybiAwOwogfQog
Ci1zdGF0aWMgdW5zaWduZWQgbG9uZyAqYWxsb2Nfd2hpdGVsaXN0KHUzMiBiYXRjaF9sZW5ndGgp
Cit1bnNpZ25lZCBsb25nICppbnRlbF9lbmdpbmVfY21kX3BhcnNlcl9hbGxvY19qdW1wX3doaXRl
bGlzdCh1MzIgYmF0Y2hfbGVuZ3RoLAorCQkJCQkJCSAgICBib29sIHRyYW1wb2xpbmUpCiB7CiAJ
dW5zaWduZWQgbG9uZyAqam1wOwogCisJaWYgKHRyYW1wb2xpbmUpCisJCXJldHVybiBOVUxMOwor
CiAJLyoKIAkgKiBXZSBleHBlY3QgYmF0Y2hfbGVuZ3RoIHRvIGJlIGxlc3MgdGhhbiAyNTZLaUIg
Zm9yIGtub3duIHVzZXJzLAogCSAqIGkuZS4gd2UgbmVlZCBhdCBtb3N0IGFuIDhLaUIgYml0bWFw
IGFsbG9jYXRpb24gd2hpY2ggc2hvdWxkIGJlCkBAIC0xNDIzLDE0ICsxNDE0LDE2IEBAIGludCBp
bnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJ
CQkgICAgdW5zaWduZWQgbG9uZyBiYXRjaF9vZmZzZXQsCiAJCQkgICAgdW5zaWduZWQgbG9uZyBi
YXRjaF9sZW5ndGgsCiAJCQkgICAgc3RydWN0IGk5MTVfdm1hICpzaGFkb3csCi0JCQkgICAgYm9v
bCB0cmFtcG9saW5lKQorCQkJICAgIHVuc2lnbmVkIGxvbmcgKmp1bXBfd2hpdGVsaXN0LAorCQkJ
ICAgIHZvaWQgKnNoYWRvd19tYXAsCisJCQkgICAgY29uc3Qgdm9pZCAqYmF0Y2hfbWFwKQogewog
CXUzMiAqY21kLCAqYmF0Y2hfZW5kLCBvZmZzZXQgPSAwOwogCXN0cnVjdCBkcm1faTkxNV9jbWRf
ZGVzY3JpcHRvciBkZWZhdWx0X2Rlc2MgPSBub29wX2Rlc2M7CiAJY29uc3Qgc3RydWN0IGRybV9p
OTE1X2NtZF9kZXNjcmlwdG9yICpkZXNjID0gJmRlZmF1bHRfZGVzYzsKLQl1bnNpZ25lZCBsb25n
ICpqdW1wX3doaXRlbGlzdDsKIAl1NjQgYmF0Y2hfYWRkciwgc2hhZG93X2FkZHI7CiAJaW50IHJl
dCA9IDA7CisJYm9vbCB0cmFtcG9saW5lID0gIWp1bXBfd2hpdGVsaXN0OwogCiAJR0VNX0JVR19P
TighSVNfQUxJR05FRChiYXRjaF9vZmZzZXQsIHNpemVvZigqY21kKSkpOwogCUdFTV9CVUdfT04o
IUlTX0FMSUdORUQoYmF0Y2hfbGVuZ3RoLCBzaXplb2YoKmNtZCkpKTsKQEAgLTE0MzgsMTYgKzE0
MzEsOCBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lLAogCQkJCSAgICAgYmF0Y2gtPnNpemUpKTsKIAlHRU1fQlVHX09OKCFiYXRjaF9s
ZW5ndGgpOwogCi0JY21kID0gY29weV9iYXRjaChzaGFkb3ctPm9iaiwgYmF0Y2gtPm9iaiwgYmF0
Y2hfb2Zmc2V0LCBiYXRjaF9sZW5ndGgpOwotCWlmIChJU19FUlIoY21kKSkgewotCQlEUk1fREVC
VUcoIkNNRDogRmFpbGVkIHRvIGNvcHkgYmF0Y2hcbiIpOwotCQlyZXR1cm4gUFRSX0VSUihjbWQp
OwotCX0KLQotCWp1bXBfd2hpdGVsaXN0ID0gTlVMTDsKLQlpZiAoIXRyYW1wb2xpbmUpCi0JCS8q
IERlZmVyIGZhaWx1cmUgdW50aWwgYXR0ZW1wdGVkIHVzZSAqLwotCQlqdW1wX3doaXRlbGlzdCA9
IGFsbG9jX3doaXRlbGlzdChiYXRjaF9sZW5ndGgpOworCWNtZCA9IGNvcHlfYmF0Y2goc2hhZG93
LT5vYmosIGJhdGNoLT5vYmosIGJhdGNoX29mZnNldCwgYmF0Y2hfbGVuZ3RoLAorCQkJIHNoYWRv
d19tYXAsIGJhdGNoX21hcCk7CiAKIAlzaGFkb3dfYWRkciA9IGdlbjhfY2Fub25pY2FsX2FkZHIo
c2hhZG93LT5ub2RlLnN0YXJ0KTsKIAliYXRjaF9hZGRyID0gZ2VuOF9jYW5vbmljYWxfYWRkcihi
YXRjaC0+bm9kZS5zdGFydCArIGJhdGNoX29mZnNldCk7CkBAIC0xNTQ4LDkgKzE1MzMsNiBAQCBp
bnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LAogCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChzaGFkb3ctPm9iaik7CiAKLQlpZiAoIUlT
X0VSUl9PUl9OVUxMKGp1bXBfd2hpdGVsaXN0KSkKLQkJa2ZyZWUoanVtcF93aGl0ZWxpc3QpOwot
CWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc2hhZG93LT5vYmopOwogCXJldHVybiByZXQ7CiB9
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDFkNDVkNzQ5MmQxMC4uMDkzMTgzNDBlNjkz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE5NTAsMTIgKzE5NTAsMTcgQEAgY29uc3Qg
Y2hhciAqaTkxNV9jYWNoZV9sZXZlbF9zdHIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGludCB0eXBlKTsKIGludCBpOTE1X2NtZF9wYXJzZXJfZ2V0X3ZlcnNpb24oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIGludCBpbnRlbF9lbmdpbmVfaW5pdF9jbWRfcGFyc2Vy
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGludGVsX2VuZ2luZV9jbGVh
bnVwX2NtZF9wYXJzZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK3Vuc2lnbmVk
IGxvbmcgKmludGVsX2VuZ2luZV9jbWRfcGFyc2VyX2FsbG9jX2p1bXBfd2hpdGVsaXN0KHUzMiBi
YXRjaF9sZW5ndGgsCisJCQkJCQkJICAgIGJvb2wgdHJhbXBvbGluZSk7CisKIGludCBpbnRlbF9l
bmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkgICAg
c3RydWN0IGk5MTVfdm1hICpiYXRjaCwKIAkJCSAgICB1bnNpZ25lZCBsb25nIGJhdGNoX29mZnNl
dCwKIAkJCSAgICB1bnNpZ25lZCBsb25nIGJhdGNoX2xlbmd0aCwKIAkJCSAgICBzdHJ1Y3QgaTkx
NV92bWEgKnNoYWRvdywKLQkJCSAgICBib29sIHRyYW1wb2xpbmUpOworCQkJICAgIHVuc2lnbmVk
IGxvbmcgKmp1bXBfd2hpdGVsaXN0LAorCQkJICAgIHZvaWQgKnNoYWRvd19tYXAsCisJCQkgICAg
Y29uc3Qgdm9pZCAqYmF0Y2hfbWFwKTsKICNkZWZpbmUgSTkxNV9DTURfUEFSU0VSX1RSQU1QT0xJ
TkVfU0laRSA4CiAKIC8qIGludGVsX2RldmljZV9pbmZvLmMgKi8KZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfbWVtY3B5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X21lbWNweS5jCmluZGV4IDdiM2I4M2JkNWFiOC4uMWIwMjFhNDkwMmRlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfbWVtY3B5LmMKQEAgLTEzNSw3ICsxMzUsNyBAQCBib29sIGk5MTVfbWVtY3B5X2Zy
b21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKQogICog
YWNjZXB0cyB0aGF0IGl0cyBhcmd1bWVudHMgbWF5IG5vdCBiZSBhbGlnbmVkLCBidXQgYXJlIHZh
bGlkIGZvciB0aGUKICAqIHBvdGVudGlhbCAxNi1ieXRlIHJlYWQgcGFzdCB0aGUgZW5kLgogICov
Ci12b2lkIGk5MTVfdW5hbGlnbmVkX21lbWNweV9mcm9tX3djKHZvaWQgKmRzdCwgdm9pZCAqc3Jj
LCB1bnNpZ25lZCBsb25nIGxlbikKK3ZvaWQgaTkxNV91bmFsaWduZWRfbWVtY3B5X2Zyb21fd2Mo
dm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKQogewogCXVuc2ln
bmVkIGxvbmcgYWRkcjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9t
ZW1jcHkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbWVtY3B5LmgKaW5kZXggZTM2ZDMw
ZWRkOTg3Li4zZGYwNjNhMzI5M2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfbWVtY3B5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuaApAQCAt
MTMsNyArMTMsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIHZvaWQgaTkxNV9tZW1jcHlf
aW5pdF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CiAKIGJvb2wgaTkxNV9t
ZW1jcHlfZnJvbV93Yyh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBs
ZW4pOwotdm9pZCBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJvbV93Yyh2b2lkICpkc3QsIHZvaWQg
KnNyYywgdW5zaWduZWQgbG9uZyBsZW4pOwordm9pZCBpOTE1X3VuYWxpZ25lZF9tZW1jcHlfZnJv
bV93Yyh2b2lkICpkc3QsIGNvbnN0IHZvaWQgKnNyYywgdW5zaWduZWQgbG9uZyBsZW4pOwogCiAv
KiBUaGUgbW92bnRkcWEgaW5zdHJ1Y3Rpb25zIHVzZWQgZm9yIG1lbWNweS1mcm9tLXdjIHJlcXVp
cmUgMTYtYnl0ZSBhbGlnbm1lbnQsCiAgKiBhcyB3ZWxsIGFzIFNTRTQuMSBzdXBwb3J0LiBpOTE1
X21lbWNweV9mcm9tX3djKCkgd2lsbCByZXBvcnQgaWYgaXQgY2Fubm90Ci0tIAoyLjMwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
