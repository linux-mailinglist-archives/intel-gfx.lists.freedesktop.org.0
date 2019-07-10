Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FD164185
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34ED7899E7;
	Wed, 10 Jul 2019 06:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDAD28999C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:45:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17193825-1500050 
 for multiple; Wed, 10 Jul 2019 07:45:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 07:44:52 +0100
Message-Id: <20190710064454.682-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190710064454.682-1-chris@chris-wilson.co.uk>
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Replace struct_mutex for batch
 pool serialisation
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

U3dpdGNoIHRvIHRyYWNraW5nIGFjdGl2aXR5IHZpYSBpOTE1X2FjdGl2ZSBvbiBpbmRpdmlkdWFs
IG5vZGVzLCBvbmx5CmtlZXBpbmcgYSBsaXN0IG9mIHJldGlyZWQgb2JqZWN0cyBpbiB0aGUgY2Fj
aGUsIGFuZCByZWFwaW5nIHRoZSBjYWNoZQp3aGVuIHRoZSBlbmdpbmUgaXRzZWxmIGlkbGVzLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJl
dmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICstCiAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAgNTggKysrLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgIDEgLQogLi4u
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICAxIC0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggICAgICAgIHwgICAxIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAxMSArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgICB8IDE4NCArKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmggICB8ICAzNCAr
KysrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmggfCAgMjkg
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDYg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgICAgICAgICB8ICAgMyAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgNjggLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jICAgIHwgMTMy
IC0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wu
aCAgICB8ICAyNiAtLS0KIDE2IGZpbGVzIGNoYW5nZWQsIDI5NyBpbnNlcnRpb25zKCspLCAyNjUg
ZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3Bvb2wuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oCiBkZWxldGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCiBkZWxldGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZQppbmRleCA1MjY2ZGJlYWIwMWYuLjFhZTU0NmRmMjg0YSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKQEAgLTcyLDYgKzcyLDcgQEAgb2JqLXkgKz0gZ3QvCiBndC15ICs9IFwKIAln
dC9pbnRlbF9icmVhZGNydW1icy5vIFwKIAlndC9pbnRlbF9jb250ZXh0Lm8gXAorCWd0L2ludGVs
X2VuZ2luZV9wb29sLm8gXAogCWd0L2ludGVsX2VuZ2luZV9jcy5vIFwKIAlndC9pbnRlbF9lbmdp
bmVfcG0ubyBcCiAJZ3QvaW50ZWxfZ3QubyBcCkBAIC0xMjUsNyArMTI2LDYgQEAgaTkxNS15ICs9
IFwKIAkgICQoZ2VtLXkpIFwKIAkgIGk5MTVfYWN0aXZlLm8gXAogCSAgaTkxNV9jbWRfcGFyc2Vy
Lm8gXAotCSAgaTkxNV9nZW1fYmF0Y2hfcG9vbC5vIFwKIAkgIGk5MTVfZ2VtX2V2aWN0Lm8gXAog
CSAgaTkxNV9nZW1fZmVuY2VfcmVnLm8gXAogCSAgaTkxNV9nZW1fZ3R0Lm8gXApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggODBjOWM1N2Ez
MDJmLi4wZWEyZDQ5YmM4YjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwpAQCAtMTYsNiArMTYsNyBAQAogCiAjaW5jbHVkZSAiZ2VtL2k5MTVf
Z2VtX2lvY3Rscy5oIgogI2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHQuaCIKKyNpbmNsdWRlICJn
dC9pbnRlbF9lbmdpbmVfcG9vbC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCiAjaW5jbHVk
ZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKIApAQCAtMTE0NSwyNSArMTE0NiwyNiBAQCBzdGF0aWMgaW50
IF9fcmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQkJICAgICB1
bnNpZ25lZCBpbnQgbGVuKQogewogCXN0cnVjdCByZWxvY19jYWNoZSAqY2FjaGUgPSAmZWItPnJl
bG9jX2NhY2hlOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJc3RydWN0IGlu
dGVsX2VuZ2luZV9wb29sX25vZGUgKnBvb2w7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJ
c3RydWN0IGk5MTVfdm1hICpiYXRjaDsKIAl1MzIgKmNtZDsKIAlpbnQgZXJyOwogCi0Jb2JqID0g
aTkxNV9nZW1fYmF0Y2hfcG9vbF9nZXQoJmViLT5lbmdpbmUtPmJhdGNoX3Bvb2wsIFBBR0VfU0la
RSk7Ci0JaWYgKElTX0VSUihvYmopKQotCQlyZXR1cm4gUFRSX0VSUihvYmopOworCXBvb2wgPSBp
bnRlbF9lbmdpbmVfcG9vbF9nZXQoJmViLT5lbmdpbmUtPnBvb2wsIFBBR0VfU0laRSk7CisJaWYg
KElTX0VSUihwb29sKSkKKwkJcmV0dXJuIFBUUl9FUlIocG9vbCk7CiAKLQljbWQgPSBpOTE1X2dl
bV9vYmplY3RfcGluX21hcChvYmosCisJY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAocG9v
bC0+b2JqLAogCQkJCSAgICAgIGNhY2hlLT5oYXNfbGxjID8KIAkJCQkgICAgICBJOTE1X01BUF9G
T1JDRV9XQiA6CiAJCQkJICAgICAgSTkxNV9NQVBfRk9SQ0VfV0MpOwotCWk5MTVfZ2VtX29iamVj
dF91bnBpbl9wYWdlcyhvYmopOwotCWlmIChJU19FUlIoY21kKSkKLQkJcmV0dXJuIFBUUl9FUlIo
Y21kKTsKKwlpZiAoSVNfRVJSKGNtZCkpIHsKKwkJZXJyID0gUFRSX0VSUihjbWQpOworCQlnb3Rv
IG91dF9wb29sOworCX0KIAotCWJhdGNoID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCB2bWEtPnZt
LCBOVUxMKTsKKwliYXRjaCA9IGk5MTVfdm1hX2luc3RhbmNlKHBvb2wtPm9iaiwgdm1hLT52bSwg
TlVMTCk7CiAJaWYgKElTX0VSUihiYXRjaCkpIHsKIAkJZXJyID0gUFRSX0VSUihiYXRjaCk7CiAJ
CWdvdG8gZXJyX3VubWFwOwpAQCAtMTE3OSw2ICsxMTgxLDEwIEBAIHN0YXRpYyBpbnQgX19yZWxv
Y19ncHVfYWxsb2Moc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCWdvdG8gZXJyX3VucGlu
OwogCX0KIAorCWVyciA9IGludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZlKHBvb2wsIHJxKTsK
KwlpZiAoZXJyKQorCQlnb3RvIGVycl9yZXF1ZXN0OworCiAJZXJyID0gcmVsb2NfbW92ZV90b19n
cHUocnEsIHZtYSk7CiAJaWYgKGVycikKIAkJZ290byBlcnJfcmVxdWVzdDsKQEAgLTEyMDQsNyAr
MTIxMCw3IEBAIHN0YXRpYyBpbnQgX19yZWxvY19ncHVfYWxsb2Moc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIsCiAJY2FjaGUtPnJxX3NpemUgPSAwOwogCiAJLyogUmV0dXJuIHdpdGggYmF0Y2gg
bWFwcGluZyAoY21kKSBzdGlsbCBwaW5uZWQgKi8KLQlyZXR1cm4gMDsKKwlnb3RvIG91dF9wb29s
OwogCiBza2lwX3JlcXVlc3Q6CiAJaTkxNV9yZXF1ZXN0X3NraXAocnEsIGVycik7CkBAIC0xMjEz
LDcgKzEyMTksOSBAQCBzdGF0aWMgaW50IF9fcmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgKmViLAogZXJyX3VucGluOgogCWk5MTVfdm1hX3VucGluKGJhdGNoKTsKIGVycl91
bm1hcDoKLQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0
X3VucGluX21hcChwb29sLT5vYmopOworb3V0X3Bvb2w6CisJaW50ZWxfZW5naW5lX3Bvb2xfcHV0
KHBvb2wpOwogCXJldHVybiBlcnI7CiB9CiAKQEAgLTE5NTcsMTggKzE5NjUsMTcgQEAgc3RhdGlj
IGludCBpOTE1X3Jlc2V0X2dlbjdfc29sX29mZnNldHMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmViX3BhcnNlKHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLCBib29sIGlzX21hc3RlcikKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
c2hhZG93X2JhdGNoX29iajsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsK
IAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAlpbnQgZXJyOwogCi0Jc2hhZG93X2JhdGNoX29iaiA9
IGk5MTVfZ2VtX2JhdGNoX3Bvb2xfZ2V0KCZlYi0+ZW5naW5lLT5iYXRjaF9wb29sLAotCQkJCQkJ
ICAgUEFHRV9BTElHTihlYi0+YmF0Y2hfbGVuKSk7Ci0JaWYgKElTX0VSUihzaGFkb3dfYmF0Y2hf
b2JqKSkKLQkJcmV0dXJuIEVSUl9DQVNUKHNoYWRvd19iYXRjaF9vYmopOworCXBvb2wgPSBpbnRl
bF9lbmdpbmVfcG9vbF9nZXQoJmViLT5lbmdpbmUtPnBvb2wsIGViLT5iYXRjaF9sZW4pOworCWlm
IChJU19FUlIocG9vbCkpCisJCXJldHVybiBFUlJfQ0FTVChwb29sKTsKIAogCWVyciA9IGludGVs
X2VuZ2luZV9jbWRfcGFyc2VyKGViLT5lbmdpbmUsCiAJCQkJICAgICAgZWItPmJhdGNoLT5vYmos
Ci0JCQkJICAgICAgc2hhZG93X2JhdGNoX29iaiwKKwkJCQkgICAgICBwb29sLT5vYmosCiAJCQkJ
ICAgICAgZWItPmJhdGNoX3N0YXJ0X29mZnNldCwKIAkJCQkgICAgICBlYi0+YmF0Y2hfbGVuLAog
CQkJCSAgICAgIGlzX21hc3Rlcik7CkBAIC0xOTc3LDEyICsxOTg0LDEyIEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV92bWEgKmViX3BhcnNlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBib29sIGlz
X21hc3RlcikKIAkJCXZtYSA9IE5VTEw7CiAJCWVsc2UKIAkJCXZtYSA9IEVSUl9QVFIoZXJyKTsK
LQkJZ290byBvdXQ7CisJCWdvdG8gZXJyOwogCX0KIAotCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9n
Z3R0X3BpbihzaGFkb3dfYmF0Y2hfb2JqLCBOVUxMLCAwLCAwLCAwKTsKKwl2bWEgPSBpOTE1X2dl
bV9vYmplY3RfZ2d0dF9waW4ocG9vbC0+b2JqLCBOVUxMLCAwLCAwLCAwKTsKIAlpZiAoSVNfRVJS
KHZtYSkpCi0JCWdvdG8gb3V0OworCQlnb3RvIGVycjsKIAogCWViLT52bWFbZWItPmJ1ZmZlcl9j
b3VudF0gPSBpOTE1X3ZtYV9nZXQodm1hKTsKIAllYi0+ZmxhZ3NbZWItPmJ1ZmZlcl9jb3VudF0g
PQpAQCAtMTk5MCw4ICsxOTk3LDExIEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmViX3BhcnNl
KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBib29sIGlzX21hc3RlcikKIAl2bWEtPmV4ZWNf
ZmxhZ3MgPSAmZWItPmZsYWdzW2ViLT5idWZmZXJfY291bnRdOwogCWViLT5idWZmZXJfY291bnQr
KzsKIAotb3V0OgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhzaGFkb3dfYmF0Y2hfb2Jq
KTsKKwl2bWEtPnByaXZhdGUgPSBwb29sOworCXJldHVybiB2bWE7CisKK2VycjoKKwlpbnRlbF9l
bmdpbmVfcG9vbF9wdXQocG9vbCk7CiAJcmV0dXJuIHZtYTsKIH0KIApAQCAtMjYxNSw2ICsyNjI1
LDggQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCSAq
IHRvIGV4cGxpY2l0bHkgaG9sZCBhbm90aGVyIHJlZmVyZW5jZSBoZXJlLgogCSAqLwogCWViLnJl
cXVlc3QtPmJhdGNoID0gZWIuYmF0Y2g7CisJaWYgKGViLmJhdGNoLT5wcml2YXRlKQorCQlpbnRl
bF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShlYi5iYXRjaC0+cHJpdmF0ZSwgZWIucmVxdWVzdCk7
CiAKIAl0cmFjZV9pOTE1X3JlcXVlc3RfcXVldWUoZWIucmVxdWVzdCwgZWIuYmF0Y2hfZmxhZ3Mp
OwogCWVyciA9IGViX3N1Ym1pdCgmZWIpOwpAQCAtMjYzOSw2ICsyNjUxLDggQEAgaTkxNV9nZW1f
ZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogZXJyX2JhdGNoX3VucGluOgog
CWlmIChlYi5iYXRjaF9mbGFncyAmIEk5MTVfRElTUEFUQ0hfU0VDVVJFKQogCQlpOTE1X3ZtYV91
bnBpbihlYi5iYXRjaCk7CisJaWYgKGViLmJhdGNoLT5wcml2YXRlKQorCQlpbnRlbF9lbmdpbmVf
cG9vbF9wdXQoZWIuYmF0Y2gtPnByaXZhdGUpOwogZXJyX3ZtYToKIAlpZiAoZWIuZXhlYykKIAkJ
ZWJfcmVsZWFzZV92bWFzKCZlYik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMKaW5kZXggZDUxOTdhMmExMDZmLi5hZGVkOTUzNzUwOTYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTY0LDcgKzY0LDYgQEAgdm9pZCBp
OTE1X2dlbV9vYmplY3RfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCUlO
SVRfTElTVF9IRUFEKCZvYmotPnZtYS5saXN0KTsKIAogCUlOSVRfTElTVF9IRUFEKCZvYmotPmx1
dF9saXN0KTsKLQlJTklUX0xJU1RfSEVBRCgmb2JqLT5iYXRjaF9wb29sX2xpbmspOwogCiAJaW5p
dF9yY3VfaGVhZCgmb2JqLT5yY3UpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKaW5kZXggMzRiNTFmYWQwMmRlLi5kNDc0YzZhYzQxMDAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgKQEAgLTExNCw3ICsxMTQsNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7CiAJdW5z
aWduZWQgaW50IHVzZXJmYXVsdF9jb3VudDsKIAlzdHJ1Y3QgbGlzdF9oZWFkIHVzZXJmYXVsdF9s
aW5rOwogCi0Jc3RydWN0IGxpc3RfaGVhZCBiYXRjaF9wb29sX2xpbms7CiAJSTkxNV9TRUxGVEVT
VF9ERUNMQVJFKHN0cnVjdCBsaXN0X2hlYWQgc3RfbGluayk7CiAKIAkvKgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcG0uYwppbmRleCA5M2QxODg1MjY0NTcuLmJmMDg1YjBjYjdjNiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTMzLDEwICszMyw4IEBA
IHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAotCWZv
cl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2lu
ZSwgaTkxNSwgaWQpCiAJCWNhbGxfaWRsZV9iYXJyaWVycyhlbmdpbmUpOyAvKiBjbGVhbnVwIGFm
dGVyIHdlZGdpbmcgKi8KLQkJaTkxNV9nZW1fYmF0Y2hfcG9vbF9maW5pKCZlbmdpbmUtPmJhdGNo
X3Bvb2wpOwotCX0KIAogCWk5MTVfdm1hX3BhcmtlZChpOTE1KTsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmUuaAppbmRleCAwMzMxZTlhYzI0ODUuLmZhYWExNjQyNjdmNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKQEAgLTksNyArOSw2IEBACiAjaW5j
bHVkZSA8bGludXgvcmFuZG9tLmg+CiAjaW5jbHVkZSA8bGludXgvc2VxbG9jay5oPgogCi0jaW5j
bHVkZSAiaTkxNV9nZW1fYmF0Y2hfcG9vbC5oIgogI2luY2x1ZGUgImk5MTVfcG11LmgiCiAjaW5j
bHVkZSAiaTkxNV9yZWcuaCIKICNpbmNsdWRlICJpOTE1X3JlcXVlc3QuaCIKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggZTgzNTQyZGU0Y2NhLi5lM2VkZjQ3
NGMzNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9j
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0z
Miw2ICszMiw3IEBACiAKICNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKICNpbmNsdWRlICJpbnRl
bF9lbmdpbmVfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9vbC5oIgogI2luY2x1ZGUg
ImludGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpbnRlbF9scmMuaCIKICNpbmNsdWRlICJpbnRl
bF9yZXNldC5oIgpAQCAtNDkyLDExICs0OTMsNiBAQCBpbnQgaW50ZWxfZW5naW5lc19pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyB2
b2lkIGludGVsX2VuZ2luZV9pbml0X2JhdGNoX3Bvb2woc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQotewotCWk5MTVfZ2VtX2JhdGNoX3Bvb2xfaW5pdCgmZW5naW5lLT5iYXRjaF9wb29s
LCBlbmdpbmUpOwotfQotCiB2b2lkIGludGVsX2VuZ2luZV9pbml0X2V4ZWNsaXN0cyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlz
dHMgKiBjb25zdCBleGVjbGlzdHMgPSAmZW5naW5lLT5leGVjbGlzdHM7CkBAIC02MjIsMTAgKzYx
OCwxMSBAQCBzdGF0aWMgaW50IGludGVsX2VuZ2luZV9zZXR1cF9jb21tb24oc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQogCWludGVsX2VuZ2luZV9pbml0X2JyZWFkY3J1bWJzKGVuZ2lu
ZSk7CiAJaW50ZWxfZW5naW5lX2luaXRfZXhlY2xpc3RzKGVuZ2luZSk7CiAJaW50ZWxfZW5naW5l
X2luaXRfaGFuZ2NoZWNrKGVuZ2luZSk7Ci0JaW50ZWxfZW5naW5lX2luaXRfYmF0Y2hfcG9vbChl
bmdpbmUpOwogCWludGVsX2VuZ2luZV9pbml0X2NtZF9wYXJzZXIoZW5naW5lKTsKIAlpbnRlbF9l
bmdpbmVfaW5pdF9fcG0oZW5naW5lKTsKIAorCWludGVsX2VuZ2luZV9wb29sX2luaXQoJmVuZ2lu
ZS0+cG9vbCk7CisKIAkvKiBVc2UgdGhlIHdob2xlIGRldmljZSBieSBkZWZhdWx0ICovCiAJZW5n
aW5lLT5zc2V1ID0KIAkJaW50ZWxfc3NldV9mcm9tX2RldmljZV9pbmZvKCZSVU5USU1FX0lORk8o
ZW5naW5lLT5pOTE1KS0+c3NldSk7CkBAIC04NzksOSArODc2LDkgQEAgdm9pZCBpbnRlbF9lbmdp
bmVfY2xlYW51cF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJY2xl
YW51cF9zdGF0dXNfcGFnZShlbmdpbmUpOwogCisJaW50ZWxfZW5naW5lX3Bvb2xfZmluaSgmZW5n
aW5lLT5wb29sKTsKIAlpbnRlbF9lbmdpbmVfZmluaV9icmVhZGNydW1icyhlbmdpbmUpOwogCWlu
dGVsX2VuZ2luZV9jbGVhbnVwX2NtZF9wYXJzZXIoZW5naW5lKTsKLQlpOTE1X2dlbV9iYXRjaF9w
b29sX2ZpbmkoJmVuZ2luZS0+YmF0Y2hfcG9vbCk7CiAKIAlpZiAoZW5naW5lLT5kZWZhdWx0X3N0
YXRlKQogCQlpOTE1X2dlbV9vYmplY3RfcHV0KGVuZ2luZS0+ZGVmYXVsdF9zdGF0ZSk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCmluZGV4IDk3NTFhMDJkODZiYy4u
ZmU5ZjllYWZmZTg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0u
YwpAQCAtNyw2ICs3LDcgQEAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogCiAjaW5jbHVkZSAiaW50
ZWxfZW5naW5lLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wuaCIKICNpbmNsdWRlICJp
bnRlbF9lbmdpbmVfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9ndF9wbS5oIgogCkBAIC0xMTYsNiAr
MTE3LDcgQEAgc3RhdGljIGludCBfX2VuZ2luZV9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3
ZikKIAlHRU1fVFJBQ0UoIiVzXG4iLCBlbmdpbmUtPm5hbWUpOwogCiAJaW50ZWxfZW5naW5lX2Rp
c2FybV9icmVhZGNydW1icyhlbmdpbmUpOworCWludGVsX2VuZ2luZV9wb29sX3BhcmsoJmVuZ2lu
ZS0+cG9vbCk7CiAKIAkvKiBNdXN0IGJlIHJlc2V0IHVwb24gaWRsaW5nLCBvciB3ZSBtYXkgbWlz
cyB0aGUgYnVzeSB3YWtldXAuICovCiAJR0VNX0JVR19PTihlbmdpbmUtPmV4ZWNsaXN0cy5xdWV1
ZV9wcmlvcml0eV9oaW50ICE9IElOVF9NSU4pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wb29sLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAw
Li42NzY3NmU4OWEzYzAKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfcG9vbC5jCkBAIC0wLDAgKzEsMTg0IEBACisvKgorICogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE0LTIwMTggSW50ZWwg
Q29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX29iamVjdC5oIgorCisj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKKyNpbmNs
dWRlICJpbnRlbF9lbmdpbmVfcG9vbC5oIgorCitzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqdG9fZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCkKK3sKKwlyZXR1cm4g
Y29udGFpbmVyX29mKHBvb2wsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MsIHBvb2wpOworfQorCitz
dGF0aWMgc3RydWN0IGxpc3RfaGVhZCAqCitidWNrZXRfZm9yX3NpemUoc3RydWN0IGludGVsX2Vu
Z2luZV9wb29sICpwb29sLCBzaXplX3Qgc3opCit7CisJaW50IG47CisKKwkvKgorCSAqIENvbXB1
dGUgYSBwb3dlci1vZi10d28gYnVja2V0LCBidXQgdGhyb3cgZXZlcnl0aGluZyBncmVhdGVyIHRo
YW4KKwkgKiAxNktpQiBpbnRvIHRoZSBzYW1lIGJ1Y2tldDogaS5lLiB0aGUgYnVja2V0cyBob2xk
IG9iamVjdHMgb2YKKwkgKiAoMSBwYWdlLCAyIHBhZ2VzLCA0IHBhZ2VzLCA4KyBwYWdlcykuCisJ
ICovCisJbiA9IGZscyhzeiA+PiBQQUdFX1NISUZUKSAtIDE7CisJaWYgKG4gPj0gQVJSQVlfU0la
RShwb29sLT5jYWNoZV9saXN0KSkKKwkJbiA9IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCkg
LSAxOworCisJcmV0dXJuICZwb29sLT5jYWNoZV9saXN0W25dOworfQorCitzdGF0aWMgdm9pZCBu
b2RlX2ZyZWUoc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGUpCit7CisJaTkxNV9n
ZW1fb2JqZWN0X3B1dChub2RlLT5vYmopOworCWk5MTVfYWN0aXZlX2ZpbmkoJm5vZGUtPmFjdGl2
ZSk7CisJa2ZyZWUobm9kZSk7Cit9CisKK3N0YXRpYyBpbnQgcG9vbF9hY3RpdmUoc3RydWN0IGk5
MTVfYWN0aXZlICpyZWYpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGUg
PQorCQljb250YWluZXJfb2YocmVmLCB0eXBlb2YoKm5vZGUpLCBhY3RpdmUpOworCXN0cnVjdCBy
ZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YgPSBub2RlLT5vYmotPmJhc2UucmVzdjsKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUobm9kZS0+b2JqLT5iYXNlLmRldik7CisJ
dW5zaWduZWQgbG9uZyBmbGFnczsKKwlpbnQgZXJyOworCisJaWYgKHJlc2VydmF0aW9uX29iamVj
dF90cnlsb2NrKHJlc3YpKSB7CisJCXJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShy
ZXN2LCBOVUxMKTsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhyZXN2KTsKKwl9CisKKwll
cnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG5vZGUtPm9iaik7CisJaWYgKGVycikKKwkJ
cmV0dXJuIGVycjsKKworCS8qIEhpZGUgdGhpcyBwaW5uZWQgb2JqZWN0IGZyb20gdGhlIHNocmlu
a2VyIHVudGlsIHJldGlyZWQgKi8KKwlzcGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+bW0ub2JqX2xv
Y2ssIGZsYWdzKTsKKwlsaXN0X2RlbCgmbm9kZS0+b2JqLT5tbS5saW5rKTsKKwlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOworCisJcmV0dXJuIDA7Cit9
CisKK3N0YXRpYyB2b2lkIHBvb2xfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQorewor
CXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlID0KKwkJY29udGFpbmVyX29mKHJl
ZiwgdHlwZW9mKCpub2RlKSwgYWN0aXZlKTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBv
b2wgPSBub2RlLT5wb29sOworCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3QgPSBidWNrZXRfZm9yX3Np
emUocG9vbCwgbm9kZS0+b2JqLT5iYXNlLnNpemUpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShub2RlLT5vYmotPmJhc2UuZGV2KTsKKwl1bnNpZ25lZCBsb25nIGZs
YWdzOworCisJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKHRvX2VuZ2luZShw
b29sKSkpOworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG5vZGUtPm9iaik7CisKKwkv
KiBSZXR1cm4gdGhpcyBvYmplY3QgdG8gdGhlIHNocmlua2VyIHBvb2wgKi8KKwlzcGluX2xvY2tf
aXJxc2F2ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKKwlsaXN0X2FkZCgmbm9kZS0+b2Jq
LT5tbS5saW5rLCAmaTkxNS0+bW0ucHVyZ2VfbGlzdCk7CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKKworCXNwaW5fbG9ja19pcnFzYXZlKCZwb29s
LT5sb2NrLCBmbGFncyk7CisJbGlzdF9hZGQoJm5vZGUtPmxpbmssIGxpc3QpOworCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnBvb2wtPmxvY2ssIGZsYWdzKTsKK30KKworc3RhdGljIHN0cnVjdCBp
bnRlbF9lbmdpbmVfcG9vbF9ub2RlICoKK25vZGVfY3JlYXRlKHN0cnVjdCBpbnRlbF9lbmdpbmVf
cG9vbCAqcG9vbCwgc2l6ZV90IHN6KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSA9IHRvX2VuZ2luZShwb29sKTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9k
ZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCisJbm9kZSA9IGttYWxsb2Mo
c2l6ZW9mKCpub2RlKSwKKwkJICAgICAgIEdGUF9LRVJORUwgfCBfX0dGUF9SRVRSWV9NQVlGQUlM
IHwgX19HRlBfTk9XQVJOKTsKKwlpZiAoIW5vZGUpCisJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0p
OworCisJbm9kZS0+cG9vbCA9IHBvb2w7CisJaTkxNV9hY3RpdmVfaW5pdChlbmdpbmUtPmk5MTUs
ICZub2RlLT5hY3RpdmUsIHBvb2xfYWN0aXZlLCBwb29sX3JldGlyZSk7CisKKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGVuZ2luZS0+aTkxNSwgc3opOworCWlmIChJU19F
UlIob2JqKSkgeworCQlpOTE1X2FjdGl2ZV9maW5pKCZub2RlLT5hY3RpdmUpOworCQlrZnJlZShu
b2RlKTsKKwkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CisJfQorCisJbm9kZS0+b2JqID0gb2JqOwor
CXJldHVybiBub2RlOworfQorCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqCitpbnRl
bF9lbmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBzaXplX3Qg
c2l6ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZTsKKwlzdHJ1Y3Qg
bGlzdF9oZWFkICpsaXN0OworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisJaW50IHJldDsKKworCUdF
TV9CVUdfT04oIWludGVsX2VuZ2luZV9wbV9pc19hd2FrZSh0b19lbmdpbmUocG9vbCkpKTsKKwor
CXNpemUgPSBQQUdFX0FMSUdOKHNpemUpOworCWxpc3QgPSBidWNrZXRfZm9yX3NpemUocG9vbCwg
c2l6ZSk7CisKKwlzcGluX2xvY2tfaXJxc2F2ZSgmcG9vbC0+bG9jaywgZmxhZ3MpOworCWxpc3Rf
Zm9yX2VhY2hfZW50cnkobm9kZSwgbGlzdCwgbGluaykgeworCQlpZiAobm9kZS0+b2JqLT5iYXNl
LnNpemUgPCBzaXplKQorCQkJY29udGludWU7CisJCWxpc3RfZGVsKCZub2RlLT5saW5rKTsKKwkJ
YnJlYWs7CisJfQorCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBvb2wtPmxvY2ssIGZsYWdzKTsK
KworCWlmICgmbm9kZS0+bGluayA9PSBsaXN0KSB7CisJCW5vZGUgPSBub2RlX2NyZWF0ZShwb29s
LCBzaXplKTsKKwkJaWYgKElTX0VSUihub2RlKSkKKwkJCXJldHVybiBub2RlOworCX0KKworCXJl
dCA9IGk5MTVfYWN0aXZlX2FjcXVpcmUoJm5vZGUtPmFjdGl2ZSk7CisJaWYgKHJldCkgeworCQlu
b2RlX2ZyZWUobm9kZSk7CisJCXJldHVybiBFUlJfUFRSKHJldCk7CisJfQorCisJcmV0dXJuIG5v
ZGU7Cit9CisKK3ZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5l
X3Bvb2wgKnBvb2wpCit7CisJaW50IG47CisKKwlzcGluX2xvY2tfaW5pdCgmcG9vbC0+bG9jayk7
CisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykKKwkJ
SU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOworfQorCit2b2lkIGludGVsX2Vu
Z2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sKQoreworCWludCBu
OworCisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykg
eworCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0gJnBvb2wtPmNhY2hlX2xpc3Rbbl07CisJCXN0
cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlLCAqbm47CisKKwkJbGlzdF9mb3JfZWFj
aF9lbnRyeV9zYWZlKG5vZGUsIG5uLCBsaXN0LCBsaW5rKQorCQkJbm9kZV9mcmVlKG5vZGUpOwor
CisJCUlOSVRfTElTVF9IRUFEKGxpc3QpOworCX0KK30KKwordm9pZCBpbnRlbF9lbmdpbmVfcG9v
bF9maW5pKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCkKK3sKKwlpbnQgbjsKKworCWZv
ciAobiA9IDA7IG4gPCBBUlJBWV9TSVpFKHBvb2wtPmNhY2hlX2xpc3QpOyBuKyspCisJCUdFTV9C
VUdfT04oIWxpc3RfZW1wdHkoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pKTsKK30KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uZjdhMGE2NjBjMWM5Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaApAQCAtMCwwICsxLDM0IEBACisv
KgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAy
MDE0LTIwMTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIElOVEVMX0VOR0lORV9Q
T09MX0gKKyNkZWZpbmUgSU5URUxfRU5HSU5FX1BPT0xfSAorCisjaW5jbHVkZSAiaW50ZWxfZW5n
aW5lX3Bvb2xfdHlwZXMuaCIKKyNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgorI2luY2x1ZGUgImk5
MTVfcmVxdWVzdC5oIgorCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqCitpbnRlbF9l
bmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBzaXplX3Qgc2l6
ZSk7CisKK3N0YXRpYyBpbmxpbmUgaW50CitpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZSwKKwkJCSAgICAgIHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQoreworCXJldHVybiBpOTE1X2FjdGl2ZV9yZWYoJm5vZGUtPmFjdGl2ZSwg
cnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKK30KKworc3RhdGljIGlubGluZSB2b2lkCitpbnRlbF9l
bmdpbmVfcG9vbF9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5vZGUpCit7CisJ
aTkxNV9hY3RpdmVfcmVsZWFzZSgmbm9kZS0+YWN0aXZlKTsKK30KKwordm9pZCBpbnRlbF9lbmdp
bmVfcG9vbF9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCk7Cit2b2lkIGludGVs
X2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sKTsKK3ZvaWQg
aW50ZWxfZW5naW5lX3Bvb2xfZmluaShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2wpOwor
CisjZW5kaWYgLyogSU5URUxfRU5HSU5FX1BPT0xfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi5lMzFlZTM2MWI3NmYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oCkBAIC0wLDAgKzEs
MjkgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgorICogQ29weXJp
Z2h0IMKpIDIwMTQtMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgSU5URUxf
RU5HSU5FX1BPT0xfVFlQRVNfSAorI2RlZmluZSBJTlRFTF9FTkdJTkVfUE9PTF9UWVBFU19ICisK
KyNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CisjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KKwor
I2luY2x1ZGUgImk5MTVfYWN0aXZlX3R5cGVzLmgiCisKK3N0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0OworCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgeworCXNwaW5sb2NrX3QgbG9jazsKKwlz
dHJ1Y3QgbGlzdF9oZWFkIGNhY2hlX2xpc3RbNF07Cit9OworCitzdHJ1Y3QgaW50ZWxfZW5naW5l
X3Bvb2xfbm9kZSB7CisJc3RydWN0IGk5MTVfYWN0aXZlIGFjdGl2ZTsKKwlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKKwlzdHJ1Y3QgaW50
ZWxfZW5naW5lX3Bvb2wgKnBvb2w7Cit9OworCisjZW5kaWYgLyogSU5URUxfRU5HSU5FX1BPT0xf
VFlQRVNfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMu
aAppbmRleCAwZGRlN2UwNGIxMDIuLjZkMmYzZTExZGExYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTE2LDEyICsxNiwxMiBAQAogI2luY2x1
ZGUgPGxpbnV4L3R5cGVzLmg+CiAKICNpbmNsdWRlICJpOTE1X2dlbS5oIgotI2luY2x1ZGUgImk5
MTVfZ2VtX2JhdGNoX3Bvb2wuaCIKICNpbmNsdWRlICJpOTE1X3BtdS5oIgogI2luY2x1ZGUgImk5
MTVfcHJpb2xpc3RfdHlwZXMuaCIKICNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCi0jaW5jbHVk
ZSAiZ3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9v
bF90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3NzZXUuaCIKKyNpbmNsdWRlICJpbnRlbF90aW1l
bGluZV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKICNpbmNsdWRlICJpbnRl
bF93b3JrYXJvdW5kc190eXBlcy5oIgogCkBAIC0zNTMsNyArMzUzLDcgQEAgc3RydWN0IGludGVs
X2VuZ2luZV9jcyB7CiAJICogd2hlbiB0aGUgY29tbWFuZCBwYXJzZXIgaXMgZW5hYmxlZC4gUHJl
dmVudHMgdGhlIGNsaWVudCBmcm9tCiAJICogbW9kaWZ5aW5nIHRoZSBiYXRjaCBjb250ZW50cyBh
ZnRlciBzb2Z0d2FyZSBwYXJzaW5nLgogCSAqLwotCXN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29s
IGJhdGNoX3Bvb2w7CisJc3RydWN0IGludGVsX2VuZ2luZV9wb29sIHBvb2w7CiAKIAlzdHJ1Y3Qg
aW50ZWxfaHdfc3RhdHVzX3BhZ2Ugc3RhdHVzX3BhZ2U7CiAJc3RydWN0IGk5MTVfY3R4X3dvcmth
cm91bmRzIHdhX2N0eDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tf
ZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCmluZGV4IDVi
Y2I0NjFiODM3Mi4uYjk0ZDU3YmYyYzQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9tb2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5n
aW5lLmMKQEAgLTI3LDYgKzI3LDcgQEAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUg
ImludGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKKyNpbmNsdWRl
ICJpbnRlbF9lbmdpbmVfcG9vbC5oIgogCiAjaW5jbHVkZSAibW9ja19lbmdpbmUuaCIKICNpbmNs
dWRlICJzZWxmdGVzdHMvbW9ja19yZXF1ZXN0LmgiCkBAIC0yOTEsNiArMjkyLDggQEAgaW50IG1v
Y2tfZW5naW5lX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWludGVsX2Vu
Z2luZV9pbml0X2V4ZWNsaXN0cyhlbmdpbmUpOwogCWludGVsX2VuZ2luZV9pbml0X19wbShlbmdp
bmUpOwogCisJaW50ZWxfZW5naW5lX3Bvb2xfaW5pdCgmZW5naW5lLT5wb29sKTsKKwogCWVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQgPQogCQlpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoaTkxNS0+
a2VybmVsX2NvbnRleHQsIGVuZ2luZS0+aWQpOwogCWlmIChJU19FUlIoZW5naW5lLT5rZXJuZWxf
Y29udGV4dCkpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDNlNGY1OGYxOTM2
Mi4uY2UxYjY1Njg1MTVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjk1
LDI3ICsyOTUsNiBAQCBzdGF0aWMgaW50IHBlcl9maWxlX3N0YXRzKGludCBpZCwgdm9pZCAqcHRy
LCB2b2lkICpkYXRhKQogCQkJICAgc3RhdHMuY2xvc2VkKTsgXAogfSB3aGlsZSAoMCkKIAotc3Rh
dGljIHZvaWQgcHJpbnRfYmF0Y2hfcG9vbF9zdGF0cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCi0JCQkJ
ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCXN0
cnVjdCBmaWxlX3N0YXRzIHN0YXRzID0ge307Ci0JZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0J
aW50IGo7Ci0KLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKLQkJZm9y
IChqID0gMDsgaiA8IEFSUkFZX1NJWkUoZW5naW5lLT5iYXRjaF9wb29sLmNhY2hlX2xpc3QpOyBq
KyspIHsKLQkJCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLAotCQkJCQkgICAgJmVuZ2luZS0+YmF0
Y2hfcG9vbC5jYWNoZV9saXN0W2pdLAotCQkJCQkgICAgYmF0Y2hfcG9vbF9saW5rKQotCQkJCXBl
cl9maWxlX3N0YXRzKDAsIG9iaiwgJnN0YXRzKTsKLQkJfQotCX0KLQotCXByaW50X2ZpbGVfc3Rh
dHMobSwgIltrXWJhdGNoIHBvb2wiLCBzdGF0cyk7Ci19Ci0KIHN0YXRpYyB2b2lkIHByaW50X2Nv
bnRleHRfc3RhdHMoc3RydWN0IHNlcV9maWxlICptLAogCQkJCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogewpAQCAtMzczLDU4ICszNTIsMTIgQEAgc3RhdGljIGludCBpOTE1X2dlbV9v
YmplY3RfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJaWYgKHJldCkKIAkJ
cmV0dXJuIHJldDsKIAotCXByaW50X2JhdGNoX3Bvb2xfc3RhdHMobSwgaTkxNSk7CiAJcHJpbnRf
Y29udGV4dF9zdGF0cyhtLCBpOTE1KTsKIAltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOwogCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgaTkxNV9nZW1fYmF0Y2hfcG9v
bF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKLXsKLQlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Ci0Jc3RydWN0
IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwotCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0gaW50
ZWxfZW5naW5lX2lkIGlkOwotCWludCB0b3RhbCA9IDA7Ci0JaW50IHJldCwgajsKLQotCXJldCA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwotCWlmIChyZXQp
Ci0JCXJldHVybiByZXQ7Ci0KLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdiwgaWQp
IHsKLQkJZm9yIChqID0gMDsgaiA8IEFSUkFZX1NJWkUoZW5naW5lLT5iYXRjaF9wb29sLmNhY2hl
X2xpc3QpOyBqKyspIHsKLQkJCWludCBjb3VudDsKLQotCQkJY291bnQgPSAwOwotCQkJbGlzdF9m
b3JfZWFjaF9lbnRyeShvYmosCi0JCQkJCSAgICAmZW5naW5lLT5iYXRjaF9wb29sLmNhY2hlX2xp
c3Rbal0sCi0JCQkJCSAgICBiYXRjaF9wb29sX2xpbmspCi0JCQkJY291bnQrKzsKLQkJCXNlcV9w
cmludGYobSwgIiVzIGNhY2hlWyVkXTogJWQgb2JqZWN0c1xuIiwKLQkJCQkgICBlbmdpbmUtPm5h
bWUsIGosIGNvdW50KTsKLQotCQkJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosCi0JCQkJCSAgICAm
ZW5naW5lLT5iYXRjaF9wb29sLmNhY2hlX2xpc3Rbal0sCi0JCQkJCSAgICBiYXRjaF9wb29sX2xp
bmspIHsKLQkJCQlzZXFfcHV0cyhtLCAiICAgIik7Ci0JCQkJZGVzY3JpYmVfb2JqKG0sIG9iaik7
Ci0JCQkJc2VxX3B1dGMobSwgJ1xuJyk7Ci0JCQl9Ci0KLQkJCXRvdGFsICs9IGNvdW50OwotCQl9
Ci0JfQotCi0Jc2VxX3ByaW50ZihtLCAidG90YWw6ICVkXG4iLCB0b3RhbCk7Ci0KLQltdXRleF91
bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKLQotCXJldHVybiAwOwotfQotCiBzdGF0aWMgdm9p
ZCBnZW44X2Rpc3BsYXlfaW50ZXJydXB0X2luZm8oc3RydWN0IHNlcV9maWxlICptKQogewogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRl
KTsKQEAgLTQzNzEsNyArNDMwNCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2luZm9fbGlz
dCBpOTE1X2RlYnVnZnNfbGlzdFtdID0gewogCXsiaTkxNV9nZW1fb2JqZWN0cyIsIGk5MTVfZ2Vt
X29iamVjdF9pbmZvLCAwfSwKIAl7Imk5MTVfZ2VtX2ZlbmNlX3JlZ3MiLCBpOTE1X2dlbV9mZW5j
ZV9yZWdzX2luZm8sIDB9LAogCXsiaTkxNV9nZW1faW50ZXJydXB0IiwgaTkxNV9pbnRlcnJ1cHRf
aW5mbywgMH0sCi0JeyJpOTE1X2dlbV9iYXRjaF9wb29sIiwgaTkxNV9nZW1fYmF0Y2hfcG9vbF9p
bmZvLCAwfSwKIAl7Imk5MTVfZ3VjX2luZm8iLCBpOTE1X2d1Y19pbmZvLCAwfSwKIAl7Imk5MTVf
Z3VjX2xvYWRfc3RhdHVzIiwgaTkxNV9ndWNfbG9hZF9zdGF0dXNfaW5mbywgMH0sCiAJeyJpOTE1
X2d1Y19sb2dfZHVtcCIsIGk5MTVfZ3VjX2xvZ19kdW1wLCAwfSwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
YjE3ZjIzOTkxMjUzLi4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fYmF0Y2hfcG9vbC5jCisrKyAvZGV2L251bGwKQEAgLTEsMTMyICswLDAgQEAKLS8qCi0g
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCi0gKgotICogQ29weXJpZ2h0IMKpIDIwMTQt
MjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgotICovCi0KLSNpbmNsdWRlICJpOTE1X2dlbV9iYXRjaF9w
b29sLmgiCi0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKLQotLyoqCi0gKiBET0M6IGJhdGNoIHBvb2wK
LSAqCi0gKiBJbiBvcmRlciB0byBzdWJtaXQgYmF0Y2ggYnVmZmVycyBhcyAnc2VjdXJlJywgdGhl
IHNvZnR3YXJlIGNvbW1hbmQgcGFyc2VyCi0gKiBtdXN0IGVuc3VyZSB0aGF0IGEgYmF0Y2ggYnVm
ZmVyIGNhbm5vdCBiZSBtb2RpZmllZCBhZnRlciBwYXJzaW5nLiBJdCBkb2VzCi0gKiB0aGlzIGJ5
IGNvcHlpbmcgdGhlIHVzZXIgcHJvdmlkZWQgYmF0Y2ggYnVmZmVyIGNvbnRlbnRzIHRvIGEga2Vy
bmVsIG93bmVkCi0gKiBidWZmZXIgZnJvbSB3aGljaCB0aGUgaGFyZHdhcmUgd2lsbCBhY3R1YWxs
eSBleGVjdXRlLCBhbmQgYnkgY2FyZWZ1bGx5Ci0gKiBtYW5hZ2luZyB0aGUgYWRkcmVzcyBzcGFj
ZSBiaW5kaW5ncyBmb3Igc3VjaCBidWZmZXJzLgotICoKLSAqIFRoZSBiYXRjaCBwb29sIGZyYW1l
d29yayBwcm92aWRlcyBhIG1lY2hhbmlzbSBmb3IgdGhlIGRyaXZlciB0byBtYW5hZ2UgYQotICog
c2V0IG9mIHNjcmF0Y2ggYnVmZmVycyB0byB1c2UgZm9yIHRoaXMgcHVycG9zZS4gVGhlIGZyYW1l
d29yayBjYW4gYmUKLSAqIGV4dGVuZGVkIHRvIHN1cHBvcnQgb3RoZXIgdXNlcyBjYXNlcyBzaG91
bGQgdGhleSBhcmlzZS4KLSAqLwotCi0vKioKLSAqIGk5MTVfZ2VtX2JhdGNoX3Bvb2xfaW5pdCgp
IC0gaW5pdGlhbGl6ZSBhIGJhdGNoIGJ1ZmZlciBwb29sCi0gKiBAcG9vbDogdGhlIGJhdGNoIGJ1
ZmZlciBwb29sCi0gKiBAZW5naW5lOiB0aGUgYXNzb2NpYXRlZCByZXF1ZXN0IHN1Ym1pc3Npb24g
ZW5naW5lCi0gKi8KLXZvaWQgaTkxNV9nZW1fYmF0Y2hfcG9vbF9pbml0KHN0cnVjdCBpOTE1X2dl
bV9iYXRjaF9wb29sICpwb29sLAotCQkJICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQotewotCWludCBuOwotCi0JcG9vbC0+ZW5naW5lID0gZW5naW5lOwotCi0JZm9yIChuID0g
MDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykKLQkJSU5JVF9MSVNUX0hF
QUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotfQotCi0vKioKLSAqIGk5MTVfZ2VtX2JhdGNoX3Bv
b2xfZmluaSgpIC0gY2xlYW4gdXAgYSBiYXRjaCBidWZmZXIgcG9vbAotICogQHBvb2w6IHRoZSBw
b29sIHRvIGNsZWFuIHVwCi0gKgotICogTm90ZTogQ2FsbGVycyBtdXN0IGhvbGQgdGhlIHN0cnVj
dF9tdXRleC4KLSAqLwotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2Zpbmkoc3RydWN0IGk5MTVf
Z2VtX2JhdGNoX3Bvb2wgKnBvb2wpCi17Ci0JaW50IG47Ci0KLQlsb2NrZGVwX2Fzc2VydF9oZWxk
KCZwb29sLT5lbmdpbmUtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwotCi0JZm9yIChuID0gMDsg
biA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykgewotCQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCAqbmV4dDsKLQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
b2JqLCBuZXh0LAotCQkJCQkgJnBvb2wtPmNhY2hlX2xpc3Rbbl0sCi0JCQkJCSBiYXRjaF9wb29s
X2xpbmspCi0JCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0KLQkJSU5JVF9MSVNUX0hFQUQo
JnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotCX0KLX0KLQotLyoqCi0gKiBpOTE1X2dlbV9iYXRjaF9w
b29sX2dldCgpIC0gYWxsb2NhdGUgYSBidWZmZXIgZnJvbSB0aGUgcG9vbAotICogQHBvb2w6IHRo
ZSBiYXRjaCBidWZmZXIgcG9vbAotICogQHNpemU6IHRoZSBtaW5pbXVtIGRlc2lyZWQgc2l6ZSBv
ZiB0aGUgcmV0dXJuZWQgYnVmZmVyCi0gKgotICogUmV0dXJucyBhbiBpbmFjdGl2ZSBidWZmZXIg
ZnJvbSBAcG9vbCB3aXRoIGF0IGxlYXN0IEBzaXplIGJ5dGVzLAotICogd2l0aCB0aGUgcGFnZXMg
cGlubmVkLiBUaGUgY2FsbGVyIG11c3QgaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKCkKLSAq
IG9uIHRoZSByZXR1cm5lZCBvYmplY3QuCi0gKgotICogTm90ZTogQ2FsbGVycyBtdXN0IGhvbGQg
dGhlIHN0cnVjdF9tdXRleAotICoKLSAqIFJldHVybjogdGhlIGJ1ZmZlciBvYmplY3Qgb3IgYW4g
ZXJyb3IgcG9pbnRlcgotICovCi1zdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqCi1pOTE1X2dl
bV9iYXRjaF9wb29sX2dldChzdHJ1Y3QgaTkxNV9nZW1fYmF0Y2hfcG9vbCAqcG9vbCwKLQkJCXNp
emVfdCBzaXplKQotewotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0
IGxpc3RfaGVhZCAqbGlzdDsKLQlpbnQgbiwgcmV0OwotCi0JbG9ja2RlcF9hc3NlcnRfaGVsZCgm
cG9vbC0+ZW5naW5lLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKLQotCS8qIENvbXB1dGUgYSBw
b3dlci1vZi10d28gYnVja2V0LCBidXQgdGhyb3cgZXZlcnl0aGluZyBncmVhdGVyIHRoYW4KLQkg
KiAxNktpQiBpbnRvIHRoZSBzYW1lIGJ1Y2tldDogaS5lLiB0aGUgdGhlIGJ1Y2tldHMgaG9sZCBv
YmplY3RzIG9mCi0JICogKDEgcGFnZSwgMiBwYWdlcywgNCBwYWdlcywgOCsgcGFnZXMpLgotCSAq
LwotCW4gPSBmbHMoc2l6ZSA+PiBQQUdFX1NISUZUKSAtIDE7Ci0JaWYgKG4gPj0gQVJSQVlfU0la
RShwb29sLT5jYWNoZV9saXN0KSkKLQkJbiA9IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCkg
LSAxOwotCWxpc3QgPSAmcG9vbC0+Y2FjaGVfbGlzdFtuXTsKLQotCWxpc3RfZm9yX2VhY2hfZW50
cnkob2JqLCBsaXN0LCBiYXRjaF9wb29sX2xpbmspIHsKLQkJc3RydWN0IHJlc2VydmF0aW9uX29i
amVjdCAqcmVzdiA9IG9iai0+YmFzZS5yZXN2OwotCi0JCS8qIFRoZSBiYXRjaGVzIGFyZSBzdHJp
Y3RseSBMUlUgb3JkZXJlZCAqLwotCQlpZiAoIXJlc2VydmF0aW9uX29iamVjdF90ZXN0X3NpZ25h
bGVkX3JjdShyZXN2LCB0cnVlKSkKLQkJCWJyZWFrOwotCi0JCS8qCi0JCSAqIFRoZSBvYmplY3Qg
aXMgbm93IGlkbGUsIGNsZWFyIHRoZSBhcnJheSBvZiBzaGFyZWQKLQkJICogZmVuY2VzIGJlZm9y
ZSB3ZSBhZGQgYSBuZXcgcmVxdWVzdC4gQWx0aG91Z2gsIHdlCi0JCSAqIHJlbWFpbiBvbiB0aGUg
c2FtZSBlbmdpbmUsIHdlIG1heSBiZSBvbiBhIGRpZmZlcmVudAotCQkgKiB0aW1lbGluZSBhbmQg
c28gbWF5IGNvbnRpbnVhbGx5IGdyb3cgdGhlIGFycmF5LAotCQkgKiB0cmFwcGluZyBhIHJlZmVy
ZW5jZSB0byBhbGwgdGhlIG9sZCBmZW5jZXMsIHJhdGhlcgotCQkgKiB0aGFuIHJlcGxhY2UgdGhl
IGV4aXN0aW5nIGZlbmNlLgotCQkgKi8KLQkJaWYgKHJjdV9hY2Nlc3NfcG9pbnRlcihyZXN2LT5m
ZW5jZSkpIHsKLQkJCXJlc2VydmF0aW9uX29iamVjdF9sb2NrKHJlc3YsIE5VTEwpOwotCQkJcmVz
ZXJ2YXRpb25fb2JqZWN0X2FkZF9leGNsX2ZlbmNlKHJlc3YsIE5VTEwpOwotCQkJcmVzZXJ2YXRp
b25fb2JqZWN0X3VubG9jayhyZXN2KTsKLQkJfQotCi0JCWlmIChvYmotPmJhc2Uuc2l6ZSA+PSBz
aXplKQotCQkJZ290byBmb3VuZDsKLQl9Ci0KLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRl
X2ludGVybmFsKHBvb2wtPmVuZ2luZS0+aTkxNSwgc2l6ZSk7Ci0JaWYgKElTX0VSUihvYmopKQot
CQlyZXR1cm4gb2JqOwotCi1mb3VuZDoKLQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2Vz
KG9iaik7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIEVSUl9QVFIocmV0KTsKLQotCWxpc3RfbW92ZV90
YWlsKCZvYmotPmJhdGNoX3Bvb2xfbGluaywgbGlzdCk7Ci0JcmV0dXJuIG9iajsKLX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaApkZWxldGVkIGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggZmVlZWVlYWE1NGQ4Li4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCisrKyAvZGV2L251bGwKQEAgLTEsMjYgKzAs
MCBAQAotLyoKLSAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKLSAqCi0gKiBDb3B5cmln
aHQgwqkgMjAxNC0yMDE4IEludGVsIENvcnBvcmF0aW9uCi0gKi8KLQotI2lmbmRlZiBJOTE1X0dF
TV9CQVRDSF9QT09MX0gKLSNkZWZpbmUgSTkxNV9HRU1fQkFUQ0hfUE9PTF9ICi0KLSNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgotCi1zdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKLXN0cnVjdCBp
bnRlbF9lbmdpbmVfY3M7Ci0KLXN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29sIHsKLQlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0Jc3RydWN0IGxpc3RfaGVhZCBjYWNoZV9saXN0WzRd
OwotfTsKLQotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2luaXQoc3RydWN0IGk5MTVfZ2VtX2Jh
dGNoX3Bvb2wgKnBvb2wsCi0JCQkgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Owotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2Zpbmkoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bv
b2wgKnBvb2wpOwotc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgotaTkxNV9nZW1fYmF0Y2hf
cG9vbF9nZXQoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wsIHNpemVfdCBzaXplKTsK
LQotI2VuZGlmIC8qIEk5MTVfR0VNX0JBVENIX1BPT0xfSCAqLwotLSAKMi4yMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
