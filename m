Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BC976178
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEF76ECC0;
	Fri, 26 Jul 2019 09:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D48B6ECBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:04:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17621097-1500050 
 for multiple; Fri, 26 Jul 2019 09:46:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 09:46:08 +0100
Message-Id: <20190726084613.22129-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726084613.22129-1-chris@chris-wilson.co.uk>
References: <20190726084613.22129-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/27] drm/i915: Replace struct_mutex for batch
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
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgICB8IDE3NyArKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmggICB8ICAzNCAr
KysrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmggfCAgMjkg
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDYg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgICAgICAgICB8ICAgMyAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgNjYgLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jICAgIHwgMTMy
IC0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wu
aCAgICB8ICAyNiAtLS0KIDE2IGZpbGVzIGNoYW5nZWQsIDI5MCBpbnNlcnRpb25zKCspLCAyNjMg
ZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3Bvb2wuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oCiBkZWxldGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCiBkZWxldGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZQppbmRleCA0ZDY4NTI5YTI3MGUuLjY5MGE3OWFlNGRjOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKQEAgLTczLDYgKzczLDcgQEAgb2JqLXkgKz0gZ3QvCiBndC15ICs9IFwKIAln
dC9pbnRlbF9icmVhZGNydW1icy5vIFwKIAlndC9pbnRlbF9jb250ZXh0Lm8gXAorCWd0L2ludGVs
X2VuZ2luZV9wb29sLm8gXAogCWd0L2ludGVsX2VuZ2luZV9jcy5vIFwKIAlndC9pbnRlbF9lbmdp
bmVfaGVhcnRiZWF0Lm8gXAogCWd0L2ludGVsX2VuZ2luZV9wbS5vIFwKQEAgLTEyNyw3ICsxMjgs
NiBAQCBpOTE1LXkgKz0gXAogCSAgJChnZW0teSkgXAogCSAgaTkxNV9hY3RpdmUubyBcCiAJICBp
OTE1X2NtZF9wYXJzZXIubyBcCi0JICBpOTE1X2dlbV9iYXRjaF9wb29sLm8gXAogCSAgaTkxNV9n
ZW1fZXZpY3QubyBcCiAJICBpOTE1X2dlbV9mZW5jZV9yZWcubyBcCiAJICBpOTE1X2dlbV9ndHQu
byBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpp
bmRleCA0NGFkZDE3MmNkYzguLjE5ZjBmMjFlZTU5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0xNiw2ICsxNiw3IEBACiAKICNpbmNs
dWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4dC5o
IgorI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9wb29sLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxf
Z3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgogCkBAIC0xMTQxLDI1ICsxMTQyLDI2
IEBAIHN0YXRpYyBpbnQgX19yZWxvY19ncHVfYWxsb2Moc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIsCiAJCQkgICAgIHVuc2lnbmVkIGludCBsZW4pCiB7CiAJc3RydWN0IHJlbG9jX2NhY2hlICpj
YWNoZSA9ICZlYi0+cmVsb2NfY2FjaGU7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
ajsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqcG9vbDsKIAlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycTsKIAlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOwogCXUzMiAqY21kOwogCWludCBl
cnI7CiAKLQlvYmogPSBpOTE1X2dlbV9iYXRjaF9wb29sX2dldCgmZWItPmVuZ2luZS0+YmF0Y2hf
cG9vbCwgUEFHRV9TSVpFKTsKLQlpZiAoSVNfRVJSKG9iaikpCi0JCXJldHVybiBQVFJfRVJSKG9i
aik7CisJcG9vbCA9IGludGVsX2VuZ2luZV9wb29sX2dldCgmZWItPmVuZ2luZS0+cG9vbCwgUEFH
RV9TSVpFKTsKKwlpZiAoSVNfRVJSKHBvb2wpKQorCQlyZXR1cm4gUFRSX0VSUihwb29sKTsKIAot
CWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwKKwljbWQgPSBpOTE1X2dlbV9vYmpl
Y3RfcGluX21hcChwb29sLT5vYmosCiAJCQkJICAgICAgY2FjaGUtPmhhc19sbGMgPwogCQkJCSAg
ICAgIEk5MTVfTUFQX0ZPUkNFX1dCIDoKIAkJCQkgICAgICBJOTE1X01BUF9GT1JDRV9XQyk7Ci0J
aTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7Ci0JaWYgKElTX0VSUihjbWQpKQotCQly
ZXR1cm4gUFRSX0VSUihjbWQpOworCWlmIChJU19FUlIoY21kKSkgeworCQllcnIgPSBQVFJfRVJS
KGNtZCk7CisJCWdvdG8gb3V0X3Bvb2w7CisJfQogCi0JYmF0Y2ggPSBpOTE1X3ZtYV9pbnN0YW5j
ZShvYmosIHZtYS0+dm0sIE5VTEwpOworCWJhdGNoID0gaTkxNV92bWFfaW5zdGFuY2UocG9vbC0+
b2JqLCB2bWEtPnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKGJhdGNoKSkgewogCQllcnIgPSBQVFJf
RVJSKGJhdGNoKTsKIAkJZ290byBlcnJfdW5tYXA7CkBAIC0xMTc1LDYgKzExNzcsMTAgQEAgc3Rh
dGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJ
Z290byBlcnJfdW5waW47CiAJfQogCisJZXJyID0gaW50ZWxfZW5naW5lX3Bvb2xfbWFya19hY3Rp
dmUocG9vbCwgcnEpOworCWlmIChlcnIpCisJCWdvdG8gZXJyX3JlcXVlc3Q7CisKIAllcnIgPSBy
ZWxvY19tb3ZlX3RvX2dwdShycSwgdm1hKTsKIAlpZiAoZXJyKQogCQlnb3RvIGVycl9yZXF1ZXN0
OwpAQCAtMTIwMCw3ICsxMjA2LDcgQEAgc3RhdGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAljYWNoZS0+cnFfc2l6ZSA9IDA7CiAKIAkvKiBSZXR1
cm4gd2l0aCBiYXRjaCBtYXBwaW5nIChjbWQpIHN0aWxsIHBpbm5lZCAqLwotCXJldHVybiAwOwor
CWdvdG8gb3V0X3Bvb2w7CiAKIHNraXBfcmVxdWVzdDoKIAlpOTE1X3JlcXVlc3Rfc2tpcChycSwg
ZXJyKTsKQEAgLTEyMDksNyArMTIxNSw5IEBAIHN0YXRpYyBpbnQgX19yZWxvY19ncHVfYWxsb2Mo
c3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiBlcnJfdW5waW46CiAJaTkxNV92bWFfdW5waW4o
YmF0Y2gpOwogZXJyX3VubWFwOgotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2JqKTsKKwlp
OTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKHBvb2wtPm9iaik7CitvdXRfcG9vbDoKKwlpbnRlbF9l
bmdpbmVfcG9vbF9wdXQocG9vbCk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMTk1MywxOCArMTk2
MSwxNyBAQCBzdGF0aWMgaW50IGk5MTVfcmVzZXRfZ2VuN19zb2xfb2Zmc2V0cyhzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSkKIAogc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqZWJfcGFyc2Uoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsIGJvb2wgaXNfbWFzdGVyKQogewotCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpzaGFkb3dfYmF0Y2hfb2JqOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9v
bF9ub2RlICpwb29sOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCWludCBlcnI7CiAKLQlzaGFk
b3dfYmF0Y2hfb2JqID0gaTkxNV9nZW1fYmF0Y2hfcG9vbF9nZXQoJmViLT5lbmdpbmUtPmJhdGNo
X3Bvb2wsCi0JCQkJCQkgICBQQUdFX0FMSUdOKGViLT5iYXRjaF9sZW4pKTsKLQlpZiAoSVNfRVJS
KHNoYWRvd19iYXRjaF9vYmopKQotCQlyZXR1cm4gRVJSX0NBU1Qoc2hhZG93X2JhdGNoX29iaik7
CisJcG9vbCA9IGludGVsX2VuZ2luZV9wb29sX2dldCgmZWItPmVuZ2luZS0+cG9vbCwgZWItPmJh
dGNoX2xlbik7CisJaWYgKElTX0VSUihwb29sKSkKKwkJcmV0dXJuIEVSUl9DQVNUKHBvb2wpOwog
CiAJZXJyID0gaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoZWItPmVuZ2luZSwKIAkJCQkgICAgICBl
Yi0+YmF0Y2gtPm9iaiwKLQkJCQkgICAgICBzaGFkb3dfYmF0Y2hfb2JqLAorCQkJCSAgICAgIHBv
b2wtPm9iaiwKIAkJCQkgICAgICBlYi0+YmF0Y2hfc3RhcnRfb2Zmc2V0LAogCQkJCSAgICAgIGVi
LT5iYXRjaF9sZW4sCiAJCQkJICAgICAgaXNfbWFzdGVyKTsKQEAgLTE5NzMsMTIgKzE5ODAsMTIg
QEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqZWJfcGFyc2Uoc3RydWN0IGk5MTVfZXhlY2J1ZmZl
ciAqZWIsIGJvb2wgaXNfbWFzdGVyKQogCQkJdm1hID0gTlVMTDsKIAkJZWxzZQogCQkJdm1hID0g
RVJSX1BUUihlcnIpOwotCQlnb3RvIG91dDsKKwkJZ290byBlcnI7CiAJfQogCi0Jdm1hID0gaTkx
NV9nZW1fb2JqZWN0X2dndHRfcGluKHNoYWRvd19iYXRjaF9vYmosIE5VTEwsIDAsIDAsIDApOwor
CXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbihwb29sLT5vYmosIE5VTEwsIDAsIDAsIDAp
OwogCWlmIChJU19FUlIodm1hKSkKLQkJZ290byBvdXQ7CisJCWdvdG8gZXJyOwogCiAJZWItPnZt
YVtlYi0+YnVmZmVyX2NvdW50XSA9IGk5MTVfdm1hX2dldCh2bWEpOwogCWViLT5mbGFnc1tlYi0+
YnVmZmVyX2NvdW50XSA9CkBAIC0xOTg2LDggKzE5OTMsMTEgQEAgc3RhdGljIHN0cnVjdCBpOTE1
X3ZtYSAqZWJfcGFyc2Uoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsIGJvb2wgaXNfbWFzdGVy
KQogCXZtYS0+ZXhlY19mbGFncyA9ICZlYi0+ZmxhZ3NbZWItPmJ1ZmZlcl9jb3VudF07CiAJZWIt
PmJ1ZmZlcl9jb3VudCsrOwogCi1vdXQ6Ci0JaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKHNo
YWRvd19iYXRjaF9vYmopOworCXZtYS0+cHJpdmF0ZSA9IHBvb2w7CisJcmV0dXJuIHZtYTsKKwor
ZXJyOgorCWludGVsX2VuZ2luZV9wb29sX3B1dChwb29sKTsKIAlyZXR1cm4gdm1hOwogfQogCkBA
IC0yNjEyLDYgKzI2MjIsOCBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsCiAJICogdG8gZXhwbGljaXRseSBob2xkIGFub3RoZXIgcmVmZXJlbmNlIGhlcmUu
CiAJICovCiAJZWIucmVxdWVzdC0+YmF0Y2ggPSBlYi5iYXRjaDsKKwlpZiAoZWIuYmF0Y2gtPnBy
aXZhdGUpCisJCWludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZlKGViLmJhdGNoLT5wcml2YXRl
LCBlYi5yZXF1ZXN0KTsKIAogCXRyYWNlX2k5MTVfcmVxdWVzdF9xdWV1ZShlYi5yZXF1ZXN0LCBl
Yi5iYXRjaF9mbGFncyk7CiAJZXJyID0gZWJfc3VibWl0KCZlYik7CkBAIC0yNjM2LDYgKzI2NDgs
OCBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiBlcnJf
YmF0Y2hfdW5waW46CiAJaWYgKGViLmJhdGNoX2ZsYWdzICYgSTkxNV9ESVNQQVRDSF9TRUNVUkUp
CiAJCWk5MTVfdm1hX3VucGluKGViLmJhdGNoKTsKKwlpZiAoZWIuYmF0Y2gtPnByaXZhdGUpCisJ
CWludGVsX2VuZ2luZV9wb29sX3B1dChlYi5iYXRjaC0+cHJpdmF0ZSk7CiBlcnJfdm1hOgogCWlm
IChlYi5leGVjKQogCQllYl9yZWxlYXNlX3ZtYXMoJmViKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCA0ZWE5N2ZjYTljMzUuLmVjY2Q3ZjQ3NjhmOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNjYsNyAr
NjYsNiBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCiAJSU5JVF9MSVNUX0hFQUQoJm9iai0+bW0ubGluayk7CiAKIAlJTklUX0xJU1Rf
SEVBRCgmb2JqLT5sdXRfbGlzdCk7Ci0JSU5JVF9MSVNUX0hFQUQoJm9iai0+YmF0Y2hfcG9vbF9s
aW5rKTsKIAogCWluaXRfcmN1X2hlYWQoJm9iai0+cmN1KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IDM0YjUxZmFkMDJkZS4u
ZDQ3NGM2YWM0MTAwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdF90eXBlcy5oCkBAIC0xMTQsNyArMTE0LDYgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgewogCXVuc2lnbmVkIGludCB1c2VyZmF1bHRfY291bnQ7CiAJc3RydWN0IGxpc3RfaGVh
ZCB1c2VyZmF1bHRfbGluazsKIAotCXN0cnVjdCBsaXN0X2hlYWQgYmF0Y2hfcG9vbF9saW5rOwog
CUk5MTVfU0VMRlRFU1RfREVDTEFSRShzdHJ1Y3QgbGlzdF9oZWFkIHN0X2xpbmspOwogCiAJLyoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggMzkyYTFlNGZkZDc2Li5i
ODJiNGRkN2EzZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC0z
NCwxMCArMzQsOCBAQCBzdGF0aWMgdm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9t
dXRleCk7CiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgeworCWZvcl9lYWNo
X2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKQogCQljYWxsX2lkbGVfYmFycmllcnMoZW5naW5lKTsg
LyogY2xlYW51cCBhZnRlciB3ZWRnaW5nICovCi0JCWk5MTVfZ2VtX2JhdGNoX3Bvb2xfZmluaSgm
ZW5naW5lLT5iYXRjaF9wb29sKTsKLQl9CiAKIAlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5kZXggZjBhZDMzOTI5OTg3Li5hOTE3
M2Q0ZjA4MjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCkBAIC05LDcg
KzksNiBAQAogI2luY2x1ZGUgPGxpbnV4L3JhbmRvbS5oPgogI2luY2x1ZGUgPGxpbnV4L3NlcWxv
Y2suaD4KIAotI2luY2x1ZGUgImk5MTVfZ2VtX2JhdGNoX3Bvb2wuaCIKICNpbmNsdWRlICJpOTE1
X3BtdS5oIgogI2luY2x1ZGUgImk5MTVfcmVnLmgiCiAjaW5jbHVkZSAiaTkxNV9yZXF1ZXN0Lmgi
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDdhN2UzODVi
Yjk3OS4uNTI5NDk3MDYzY2NmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwpAQCAtMzIsNiArMzIsNyBAQAogCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgiCiAj
aW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wu
aCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfdXNlci5oIgogI2luY2x1ZGUgImludGVsX2NvbnRl
eHQuaCIKICNpbmNsdWRlICJpbnRlbF9scmMuaCIKQEAgLTQ5NCwxMSArNDk1LDYgQEAgaW50IGlu
dGVsX2VuZ2luZXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4g
ZXJyOwogfQogCi1zdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9iYXRjaF9wb29sKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlpOTE1X2dlbV9iYXRjaF9wb29sX2luaXQo
JmVuZ2luZS0+YmF0Y2hfcG9vbCwgZW5naW5lKTsKLX0KLQogdm9pZCBpbnRlbF9lbmdpbmVfaW5p
dF9leGVjbGlzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXN0cnVjdCBp
bnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xp
c3RzOwpAQCAtNjIzLDEwICs2MTksMTEgQEAgc3RhdGljIGludCBpbnRlbF9lbmdpbmVfc2V0dXBf
Y29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlpbnRlbF9lbmdpbmVfaW5p
dF9hY3RpdmUoZW5naW5lLCBFTkdJTkVfUEhZU0lDQUwpOwogCWludGVsX2VuZ2luZV9pbml0X2Jy
ZWFkY3J1bWJzKGVuZ2luZSk7CiAJaW50ZWxfZW5naW5lX2luaXRfZXhlY2xpc3RzKGVuZ2luZSk7
Ci0JaW50ZWxfZW5naW5lX2luaXRfYmF0Y2hfcG9vbChlbmdpbmUpOwogCWludGVsX2VuZ2luZV9p
bml0X2NtZF9wYXJzZXIoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfaW5pdF9fcG0oZW5naW5lKTsK
IAorCWludGVsX2VuZ2luZV9wb29sX2luaXQoJmVuZ2luZS0+cG9vbCk7CisKIAkvKiBVc2UgdGhl
IHdob2xlIGRldmljZSBieSBkZWZhdWx0ICovCiAJZW5naW5lLT5zc2V1ID0KIAkJaW50ZWxfc3Nl
dV9mcm9tX2RldmljZV9pbmZvKCZSVU5USU1FX0lORk8oZW5naW5lLT5pOTE1KS0+c3NldSk7CkBA
IC04NjgsOSArODY1LDkgQEAgdm9pZCBpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24oc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJY2xlYW51cF9zdGF0dXNfcGFnZShlbmdpbmUp
OwogCisJaW50ZWxfZW5naW5lX3Bvb2xfZmluaSgmZW5naW5lLT5wb29sKTsKIAlpbnRlbF9lbmdp
bmVfZmluaV9icmVhZGNydW1icyhlbmdpbmUpOwogCWludGVsX2VuZ2luZV9jbGVhbnVwX2NtZF9w
YXJzZXIoZW5naW5lKTsKLQlpOTE1X2dlbV9iYXRjaF9wb29sX2ZpbmkoJmVuZ2luZS0+YmF0Y2hf
cG9vbCk7CiAKIAlpZiAoZW5naW5lLT5kZWZhdWx0X3N0YXRlKQogCQlpOTE1X2dlbV9vYmplY3Rf
cHV0KGVuZ2luZS0+ZGVmYXVsdF9zdGF0ZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wbS5jCmluZGV4IDdiYmMyNTYzMTk3OS4uNDQ4OGNmNWRlMGU4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtOSw2ICs5LDcgQEAKICNpbmNs
dWRlICJpbnRlbF9lbmdpbmUuaCIKICNpbmNsdWRlICJpbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lmgi
CiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bv
b2wuaCIKICNpbmNsdWRlICJpbnRlbF9ndC5oIgogI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCiAK
QEAgLTExOSw2ICsxMjAsNyBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3Bhcmsoc3RydWN0IGludGVs
X3dha2VyZWYgKndmKQogCiAJaW50ZWxfZW5naW5lX3BhcmtfaGVhcnRiZWF0KGVuZ2luZSk7CiAJ
aW50ZWxfZW5naW5lX2Rpc2FybV9icmVhZGNydW1icyhlbmdpbmUpOworCWludGVsX2VuZ2luZV9w
b29sX3BhcmsoJmVuZ2luZS0+cG9vbCk7CiAKIAkvKiBNdXN0IGJlIHJlc2V0IHVwb24gaWRsaW5n
LCBvciB3ZSBtYXkgbWlzcyB0aGUgYnVzeSB3YWtldXAuICovCiAJR0VNX0JVR19PTihlbmdpbmUt
PmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50ICE9IElOVF9NSU4pOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi4wM2Q5MGI0OTU4NGEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5jCkBAIC0wLDAgKzEsMTc3IEBACisv
KgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAy
MDE0LTIwMTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oIgorCisjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdp
bmVfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9vbC5oIgorCitzdGF0aWMgc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqdG9fZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9v
bCkKK3sKKwlyZXR1cm4gY29udGFpbmVyX29mKHBvb2wsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Ms
IHBvb2wpOworfQorCitzdGF0aWMgc3RydWN0IGxpc3RfaGVhZCAqCitidWNrZXRfZm9yX3NpemUo
c3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBzaXplX3Qgc3opCit7CisJaW50IG47CisK
KwkvKgorCSAqIENvbXB1dGUgYSBwb3dlci1vZi10d28gYnVja2V0LCBidXQgdGhyb3cgZXZlcnl0
aGluZyBncmVhdGVyIHRoYW4KKwkgKiAxNktpQiBpbnRvIHRoZSBzYW1lIGJ1Y2tldDogaS5lLiB0
aGUgYnVja2V0cyBob2xkIG9iamVjdHMgb2YKKwkgKiAoMSBwYWdlLCAyIHBhZ2VzLCA0IHBhZ2Vz
LCA4KyBwYWdlcykuCisJICovCisJbiA9IGZscyhzeiA+PiBQQUdFX1NISUZUKSAtIDE7CisJaWYg
KG4gPj0gQVJSQVlfU0laRShwb29sLT5jYWNoZV9saXN0KSkKKwkJbiA9IEFSUkFZX1NJWkUocG9v
bC0+Y2FjaGVfbGlzdCkgLSAxOworCisJcmV0dXJuICZwb29sLT5jYWNoZV9saXN0W25dOworfQor
CitzdGF0aWMgdm9pZCBub2RlX2ZyZWUoc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5v
ZGUpCit7CisJaTkxNV9nZW1fb2JqZWN0X3B1dChub2RlLT5vYmopOworCWk5MTVfYWN0aXZlX2Zp
bmkoJm5vZGUtPmFjdGl2ZSk7CisJa2ZyZWUobm9kZSk7Cit9CisKK3N0YXRpYyBpbnQgcG9vbF9h
Y3RpdmUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9w
b29sX25vZGUgKm5vZGUgPQorCQljb250YWluZXJfb2YocmVmLCB0eXBlb2YoKm5vZGUpLCBhY3Rp
dmUpOworCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKnJlc3YgPSBub2RlLT5vYmotPmJhc2Uu
cmVzdjsKKwlpbnQgZXJyOworCisJaWYgKHJlc2VydmF0aW9uX29iamVjdF90cnlsb2NrKHJlc3Yp
KSB7CisJCXJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShyZXN2LCBOVUxMKTsKKwkJ
cmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhyZXN2KTsKKwl9CisKKwllcnIgPSBpOTE1X2dlbV9v
YmplY3RfcGluX3BhZ2VzKG5vZGUtPm9iaik7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwor
CS8qIEhpZGUgdGhpcyBwaW5uZWQgb2JqZWN0IGZyb20gdGhlIHNocmlua2VyIHVudGlsIHJldGly
ZWQgKi8KKwlpOTE1X2dlbV9vYmplY3RfbWFrZV91bnNocmlua2FibGUobm9kZS0+b2JqKTsKKwor
CXJldHVybiAwOworfQorCitzdGF0aWMgdm9pZCBwb29sX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZikKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZSA9CisJCWNv
bnRhaW5lcl9vZihyZWYsIHR5cGVvZigqbm9kZSksIGFjdGl2ZSk7CisJc3RydWN0IGludGVsX2Vu
Z2luZV9wb29sICpwb29sID0gbm9kZS0+cG9vbDsKKwlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0g
YnVja2V0X2Zvcl9zaXplKHBvb2wsIG5vZGUtPm9iai0+YmFzZS5zaXplKTsKKwl1bnNpZ25lZCBs
b25nIGZsYWdzOworCisJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKHRvX2Vu
Z2luZShwb29sKSkpOworCisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG5vZGUtPm9iaik7
CisKKwkvKiBSZXR1cm4gdGhpcyBvYmplY3QgdG8gdGhlIHNocmlua2VyIHBvb2wgKi8KKwlpOTE1
X2dlbV9vYmplY3RfbWFrZV9wdXJnZWFibGUobm9kZS0+b2JqKTsKKworCXNwaW5fbG9ja19pcnFz
YXZlKCZwb29sLT5sb2NrLCBmbGFncyk7CisJbGlzdF9hZGQoJm5vZGUtPmxpbmssIGxpc3QpOwor
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBvb2wtPmxvY2ssIGZsYWdzKTsKK30KKworc3RhdGlj
IHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICoKK25vZGVfY3JlYXRlKHN0cnVjdCBpbnRl
bF9lbmdpbmVfcG9vbCAqcG9vbCwgc2l6ZV90IHN6KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSA9IHRvX2VuZ2luZShwb29sKTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xf
bm9kZSAqbm9kZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCisJbm9kZSA9
IGttYWxsb2Moc2l6ZW9mKCpub2RlKSwKKwkJICAgICAgIEdGUF9LRVJORUwgfCBfX0dGUF9SRVRS
WV9NQVlGQUlMIHwgX19HRlBfTk9XQVJOKTsKKwlpZiAoIW5vZGUpCisJCXJldHVybiBFUlJfUFRS
KC1FTk9NRU0pOworCisJbm9kZS0+cG9vbCA9IHBvb2w7CisJaTkxNV9hY3RpdmVfaW5pdChlbmdp
bmUtPmk5MTUsICZub2RlLT5hY3RpdmUsIHBvb2xfYWN0aXZlLCBwb29sX3JldGlyZSk7CisKKwlv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGVuZ2luZS0+aTkxNSwgc3opOwor
CWlmIChJU19FUlIob2JqKSkgeworCQlpOTE1X2FjdGl2ZV9maW5pKCZub2RlLT5hY3RpdmUpOwor
CQlrZnJlZShub2RlKTsKKwkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CisJfQorCisJbm9kZS0+b2Jq
ID0gb2JqOworCXJldHVybiBub2RlOworfQorCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9k
ZSAqCitpbnRlbF9lbmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29s
LCBzaXplX3Qgc2l6ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZTsK
KwlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0OworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisJaW50IHJl
dDsKKworCUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9wbV9pc19hd2FrZSh0b19lbmdpbmUocG9v
bCkpKTsKKworCXNpemUgPSBQQUdFX0FMSUdOKHNpemUpOworCWxpc3QgPSBidWNrZXRfZm9yX3Np
emUocG9vbCwgc2l6ZSk7CisKKwlzcGluX2xvY2tfaXJxc2F2ZSgmcG9vbC0+bG9jaywgZmxhZ3Mp
OworCWxpc3RfZm9yX2VhY2hfZW50cnkobm9kZSwgbGlzdCwgbGluaykgeworCQlpZiAobm9kZS0+
b2JqLT5iYXNlLnNpemUgPCBzaXplKQorCQkJY29udGludWU7CisJCWxpc3RfZGVsKCZub2RlLT5s
aW5rKTsKKwkJYnJlYWs7CisJfQorCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBvb2wtPmxvY2ss
IGZsYWdzKTsKKworCWlmICgmbm9kZS0+bGluayA9PSBsaXN0KSB7CisJCW5vZGUgPSBub2RlX2Ny
ZWF0ZShwb29sLCBzaXplKTsKKwkJaWYgKElTX0VSUihub2RlKSkKKwkJCXJldHVybiBub2RlOwor
CX0KKworCXJldCA9IGk5MTVfYWN0aXZlX2FjcXVpcmUoJm5vZGUtPmFjdGl2ZSk7CisJaWYgKHJl
dCkgeworCQlub2RlX2ZyZWUobm9kZSk7CisJCXJldHVybiBFUlJfUFRSKHJldCk7CisJfQorCisJ
cmV0dXJuIG5vZGU7Cit9CisKK3ZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfaW5pdChzdHJ1Y3QgaW50
ZWxfZW5naW5lX3Bvb2wgKnBvb2wpCit7CisJaW50IG47CisKKwlzcGluX2xvY2tfaW5pdCgmcG9v
bC0+bG9jayk7CisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7
IG4rKykKKwkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOworfQorCit2b2lk
IGludGVsX2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sKQor
eworCWludCBuOworCisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlz
dCk7IG4rKykgeworCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0gJnBvb2wtPmNhY2hlX2xpc3Rb
bl07CisJCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlLCAqbm47CisKKwkJbGlz
dF9mb3JfZWFjaF9lbnRyeV9zYWZlKG5vZGUsIG5uLCBsaXN0LCBsaW5rKQorCQkJbm9kZV9mcmVl
KG5vZGUpOworCisJCUlOSVRfTElTVF9IRUFEKGxpc3QpOworCX0KK30KKwordm9pZCBpbnRlbF9l
bmdpbmVfcG9vbF9maW5pKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCkKK3sKKwlpbnQg
bjsKKworCWZvciAobiA9IDA7IG4gPCBBUlJBWV9TSVpFKHBvb2wtPmNhY2hlX2xpc3QpOyBuKysp
CisJCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pKTsKK30KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZjdhMGE2NjBjMWM5Ci0tLSAvZGV2L251bGwKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaApAQCAtMCwwICsx
LDM0IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHly
aWdodCDCqSAyMDE0LTIwMTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIElOVEVM
X0VOR0lORV9QT09MX0gKKyNkZWZpbmUgSU5URUxfRU5HSU5FX1BPT0xfSAorCisjaW5jbHVkZSAi
aW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCIKKyNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgorI2lu
Y2x1ZGUgImk5MTVfcmVxdWVzdC5oIgorCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAq
CitpbnRlbF9lbmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29sLCBz
aXplX3Qgc2l6ZSk7CisKK3N0YXRpYyBpbmxpbmUgaW50CitpbnRlbF9lbmdpbmVfcG9vbF9tYXJr
X2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZSwKKwkJCSAgICAgIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXJldHVybiBpOTE1X2FjdGl2ZV9yZWYoJm5vZGUt
PmFjdGl2ZSwgcnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKK30KKworc3RhdGljIGlubGluZSB2b2lk
CitpbnRlbF9lbmdpbmVfcG9vbF9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKm5v
ZGUpCit7CisJaTkxNV9hY3RpdmVfcmVsZWFzZSgmbm9kZS0+YWN0aXZlKTsKK30KKwordm9pZCBp
bnRlbF9lbmdpbmVfcG9vbF9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCk7Cit2
b2lkIGludGVsX2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9wb29sICpwb29s
KTsKK3ZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfZmluaShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wg
KnBvb2wpOworCisjZW5kaWYgLyogSU5URUxfRU5HSU5FX1BPT0xfSCAqLwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmgKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5lMzFlZTM2MWI3NmYKLS0tIC9kZXYvbnVsbAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oCkBA
IC0wLDAgKzEsMjkgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgor
ICogQ29weXJpZ2h0IMKpIDIwMTQtMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5k
ZWYgSU5URUxfRU5HSU5FX1BPT0xfVFlQRVNfSAorI2RlZmluZSBJTlRFTF9FTkdJTkVfUE9PTF9U
WVBFU19ICisKKyNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CisjaW5jbHVkZSA8bGludXgvc3Bpbmxv
Y2suaD4KKworI2luY2x1ZGUgImk5MTVfYWN0aXZlX3R5cGVzLmgiCisKK3N0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0OworCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgeworCXNwaW5sb2NrX3Qg
bG9jazsKKwlzdHJ1Y3QgbGlzdF9oZWFkIGNhY2hlX2xpc3RbNF07Cit9OworCitzdHJ1Y3QgaW50
ZWxfZW5naW5lX3Bvb2xfbm9kZSB7CisJc3RydWN0IGk5MTVfYWN0aXZlIGFjdGl2ZTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKKwlz
dHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2w7Cit9OworCisjZW5kaWYgLyogSU5URUxfRU5H
SU5FX1BPT0xfVFlQRVNfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfdHlwZXMuaAppbmRleCBkOGI4MmI2ZjdkYjkuLjgyMzA1OTNjOWY1MyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTE4LDEyICsxOCwxMiBA
QAogI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgogCiAjaW5jbHVkZSAiaTkxNV9nZW0uaCIK
LSNpbmNsdWRlICJpOTE1X2dlbV9iYXRjaF9wb29sLmgiCiAjaW5jbHVkZSAiaTkxNV9wbXUuaCIK
ICNpbmNsdWRlICJpOTE1X3ByaW9saXN0X3R5cGVzLmgiCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVz
dC5oIgotI2luY2x1ZGUgImd0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmgiCisjaW5jbHVkZSAiaW50
ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF9zc2V1LmgiCisjaW5jbHVk
ZSAiaW50ZWxfdGltZWxpbmVfdHlwZXMuaCIKICNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCiAj
aW5jbHVkZSAiaW50ZWxfd29ya2Fyb3VuZHNfdHlwZXMuaCIKIApAQCAtMzUzLDcgKzM1Myw3IEBA
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCSAqIHdoZW4gdGhlIGNvbW1hbmQgcGFyc2VyIGlz
IGVuYWJsZWQuIFByZXZlbnRzIHRoZSBjbGllbnQgZnJvbQogCSAqIG1vZGlmeWluZyB0aGUgYmF0
Y2ggY29udGVudHMgYWZ0ZXIgc29mdHdhcmUgcGFyc2luZy4KIAkgKi8KLQlzdHJ1Y3QgaTkxNV9n
ZW1fYmF0Y2hfcG9vbCBiYXRjaF9wb29sOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCBwb29s
OwogCiAJc3RydWN0IGludGVsX2h3X3N0YXR1c19wYWdlIHN0YXR1c19wYWdlOwogCXN0cnVjdCBp
OTE1X2N0eF93b3JrYXJvdW5kcyB3YV9jdHg7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdp
bmUuYwppbmRleCAzZWQ1MTFlOGUwOTguLjBkOTBkNzJkMGQ1YyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9tb2NrX2VuZ2luZS5jCkBAIC0yNyw2ICsyNyw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYu
aCIKICNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bt
LmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wuaCIKIAogI2luY2x1ZGUgIm1vY2tfZW5n
aW5lLmgiCiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfcmVxdWVzdC5oIgpAQCAtMjg4LDYgKzI4
OSw4IEBAIGludCBtb2NrX2VuZ2luZV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAlpbnRlbF9lbmdpbmVfaW5pdF9leGVjbGlzdHMoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVf
aW5pdF9fcG0oZW5naW5lKTsKIAorCWludGVsX2VuZ2luZV9wb29sX2luaXQoJmVuZ2luZS0+cG9v
bCk7CisKIAllbmdpbmUtPmtlcm5lbF9jb250ZXh0ID0KIAkJaTkxNV9nZW1fY29udGV4dF9nZXRf
ZW5naW5lKGk5MTUtPmtlcm5lbF9jb250ZXh0LCBlbmdpbmUtPmlkKTsKIAlpZiAoSVNfRVJSKGVu
Z2luZS0+a2VybmVsX2NvbnRleHQpKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRl
eCBhNTFhMGM4ZThhODMuLjNkMDRlMDQ0NDFkYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKQEAgLTI5NSwyNiArMjk1LDYgQEAgc3RhdGljIGludCBwZXJfZmlsZV9zdGF0cyhpbnQg
aWQsIHZvaWQgKnB0ciwgdm9pZCAqZGF0YSkKIAkJCSAgIHN0YXRzLmNsb3NlZCk7IFwKIH0gd2hp
bGUgKDApCiAKLXN0YXRpYyB2b2lkIHByaW50X2JhdGNoX3Bvb2xfc3RhdHMoc3RydWN0IHNlcV9m
aWxlICptLAotCQkJCSAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZTsKLQlzdHJ1Y3QgZmlsZV9zdGF0cyBzdGF0cyA9IHt9OwotCWludCBqOwotCi0JZm9y
X2VhY2hfdXNlcl9lbmdpbmUoZW5naW5lLCBkZXZfcHJpdikgewotCQlmb3IgKGogPSAwOyBqIDwg
QVJSQVlfU0laRShlbmdpbmUtPmJhdGNoX3Bvb2wuY2FjaGVfbGlzdCk7IGorKykgewotCQkJbGlz
dF9mb3JfZWFjaF9lbnRyeShvYmosCi0JCQkJCSAgICAmZW5naW5lLT5iYXRjaF9wb29sLmNhY2hl
X2xpc3Rbal0sCi0JCQkJCSAgICBiYXRjaF9wb29sX2xpbmspCi0JCQkJcGVyX2ZpbGVfc3RhdHMo
MCwgb2JqLCAmc3RhdHMpOwotCQl9Ci0JfQotCi0JcHJpbnRfZmlsZV9zdGF0cyhtLCAiW2tdYmF0
Y2ggcG9vbCIsIHN0YXRzKTsKLX0KLQogc3RhdGljIHZvaWQgcHJpbnRfY29udGV4dF9zdGF0cyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAJCQkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7
CkBAIC0zNzcsNTcgKzM1NywxMiBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9pbmZvKHN0
cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0Owog
Ci0JcHJpbnRfYmF0Y2hfcG9vbF9zdGF0cyhtLCBpOTE1KTsKIAlwcmludF9jb250ZXh0X3N0YXRz
KG0sIGk5MTUpOwogCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAly
ZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBpOTE1X2dlbV9iYXRjaF9wb29sX2luZm8oc3RydWN0
IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKLQlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gJmRldl9wcml2LT5kcm07Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsK
LQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JaW50IHRvdGFsID0gMDsKLQlpbnQg
cmV0LCBqOwotCi0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZkZXYtPnN0cnVjdF9t
dXRleCk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCWZvcl9lYWNoX3VzZXJfZW5naW5l
KGVuZ2luZSwgZGV2X3ByaXYpIHsKLQkJZm9yIChqID0gMDsgaiA8IEFSUkFZX1NJWkUoZW5naW5l
LT5iYXRjaF9wb29sLmNhY2hlX2xpc3QpOyBqKyspIHsKLQkJCWludCBjb3VudDsKLQotCQkJY291
bnQgPSAwOwotCQkJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosCi0JCQkJCSAgICAmZW5naW5lLT5i
YXRjaF9wb29sLmNhY2hlX2xpc3Rbal0sCi0JCQkJCSAgICBiYXRjaF9wb29sX2xpbmspCi0JCQkJ
Y291bnQrKzsKLQkJCXNlcV9wcmludGYobSwgIiVzIGNhY2hlWyVkXTogJWQgb2JqZWN0c1xuIiwK
LQkJCQkgICBlbmdpbmUtPm5hbWUsIGosIGNvdW50KTsKLQotCQkJbGlzdF9mb3JfZWFjaF9lbnRy
eShvYmosCi0JCQkJCSAgICAmZW5naW5lLT5iYXRjaF9wb29sLmNhY2hlX2xpc3Rbal0sCi0JCQkJ
CSAgICBiYXRjaF9wb29sX2xpbmspIHsKLQkJCQlzZXFfcHV0cyhtLCAiICAgIik7Ci0JCQkJZGVz
Y3JpYmVfb2JqKG0sIG9iaik7Ci0JCQkJc2VxX3B1dGMobSwgJ1xuJyk7Ci0JCQl9Ci0KLQkJCXRv
dGFsICs9IGNvdW50OwotCQl9Ci0JfQotCi0Jc2VxX3ByaW50ZihtLCAidG90YWw6ICVkXG4iLCB0
b3RhbCk7Ci0KLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKLQotCXJldHVybiAw
OwotfQotCiBzdGF0aWMgdm9pZCBnZW44X2Rpc3BsYXlfaW50ZXJydXB0X2luZm8oc3RydWN0IHNl
cV9maWxlICptKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVf
dG9faTkxNShtLT5wcml2YXRlKTsKQEAgLTQyOTUsNyArNDIzMCw2IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHJtX2luZm9fbGlzdCBpOTE1X2RlYnVnZnNfbGlzdFtdID0gewogCXsiaTkxNV9nZW1f
b2JqZWN0cyIsIGk5MTVfZ2VtX29iamVjdF9pbmZvLCAwfSwKIAl7Imk5MTVfZ2VtX2ZlbmNlX3Jl
Z3MiLCBpOTE1X2dlbV9mZW5jZV9yZWdzX2luZm8sIDB9LAogCXsiaTkxNV9nZW1faW50ZXJydXB0
IiwgaTkxNV9pbnRlcnJ1cHRfaW5mbywgMH0sCi0JeyJpOTE1X2dlbV9iYXRjaF9wb29sIiwgaTkx
NV9nZW1fYmF0Y2hfcG9vbF9pbmZvLCAwfSwKIAl7Imk5MTVfZ3VjX2luZm8iLCBpOTE1X2d1Y19p
bmZvLCAwfSwKIAl7Imk5MTVfZ3VjX2xvYWRfc3RhdHVzIiwgaTkxNV9ndWNfbG9hZF9zdGF0dXNf
aW5mbywgMH0sCiAJeyJpOTE1X2d1Y19sb2dfZHVtcCIsIGk5MTVfZ3VjX2xvZ19kdW1wLCAwfSwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwpkZWxldGVkIGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggYjE3ZjIzOTkxMjUzLi4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCisrKyAvZGV2L251bGwKQEAgLTEs
MTMyICswLDAgQEAKLS8qCi0gKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCi0gKgotICog
Q29weXJpZ2h0IMKpIDIwMTQtMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgotICovCi0KLSNpbmNsdWRl
ICJpOTE1X2dlbV9iYXRjaF9wb29sLmgiCi0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKLQotLyoqCi0g
KiBET0M6IGJhdGNoIHBvb2wKLSAqCi0gKiBJbiBvcmRlciB0byBzdWJtaXQgYmF0Y2ggYnVmZmVy
cyBhcyAnc2VjdXJlJywgdGhlIHNvZnR3YXJlIGNvbW1hbmQgcGFyc2VyCi0gKiBtdXN0IGVuc3Vy
ZSB0aGF0IGEgYmF0Y2ggYnVmZmVyIGNhbm5vdCBiZSBtb2RpZmllZCBhZnRlciBwYXJzaW5nLiBJ
dCBkb2VzCi0gKiB0aGlzIGJ5IGNvcHlpbmcgdGhlIHVzZXIgcHJvdmlkZWQgYmF0Y2ggYnVmZmVy
IGNvbnRlbnRzIHRvIGEga2VybmVsIG93bmVkCi0gKiBidWZmZXIgZnJvbSB3aGljaCB0aGUgaGFy
ZHdhcmUgd2lsbCBhY3R1YWxseSBleGVjdXRlLCBhbmQgYnkgY2FyZWZ1bGx5Ci0gKiBtYW5hZ2lu
ZyB0aGUgYWRkcmVzcyBzcGFjZSBiaW5kaW5ncyBmb3Igc3VjaCBidWZmZXJzLgotICoKLSAqIFRo
ZSBiYXRjaCBwb29sIGZyYW1ld29yayBwcm92aWRlcyBhIG1lY2hhbmlzbSBmb3IgdGhlIGRyaXZl
ciB0byBtYW5hZ2UgYQotICogc2V0IG9mIHNjcmF0Y2ggYnVmZmVycyB0byB1c2UgZm9yIHRoaXMg
cHVycG9zZS4gVGhlIGZyYW1ld29yayBjYW4gYmUKLSAqIGV4dGVuZGVkIHRvIHN1cHBvcnQgb3Ro
ZXIgdXNlcyBjYXNlcyBzaG91bGQgdGhleSBhcmlzZS4KLSAqLwotCi0vKioKLSAqIGk5MTVfZ2Vt
X2JhdGNoX3Bvb2xfaW5pdCgpIC0gaW5pdGlhbGl6ZSBhIGJhdGNoIGJ1ZmZlciBwb29sCi0gKiBA
cG9vbDogdGhlIGJhdGNoIGJ1ZmZlciBwb29sCi0gKiBAZW5naW5lOiB0aGUgYXNzb2NpYXRlZCBy
ZXF1ZXN0IHN1Ym1pc3Npb24gZW5naW5lCi0gKi8KLXZvaWQgaTkxNV9nZW1fYmF0Y2hfcG9vbF9p
bml0KHN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29sICpwb29sLAotCQkJICAgICAgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCWludCBuOwotCi0JcG9vbC0+ZW5naW5lID0gZW5n
aW5lOwotCi0JZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4r
KykKLQkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotfQotCi0vKioKLSAq
IGk5MTVfZ2VtX2JhdGNoX3Bvb2xfZmluaSgpIC0gY2xlYW4gdXAgYSBiYXRjaCBidWZmZXIgcG9v
bAotICogQHBvb2w6IHRoZSBwb29sIHRvIGNsZWFuIHVwCi0gKgotICogTm90ZTogQ2FsbGVycyBt
dXN0IGhvbGQgdGhlIHN0cnVjdF9tdXRleC4KLSAqLwotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29s
X2Zpbmkoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wpCi17Ci0JaW50IG47Ci0KLQls
b2NrZGVwX2Fzc2VydF9oZWxkKCZwb29sLT5lbmdpbmUtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OwotCi0JZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4rKykg
ewotCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCAqbmV4dDsKLQotCQlsaXN0X2Zv
cl9lYWNoX2VudHJ5X3NhZmUob2JqLCBuZXh0LAotCQkJCQkgJnBvb2wtPmNhY2hlX2xpc3Rbbl0s
Ci0JCQkJCSBiYXRjaF9wb29sX2xpbmspCi0JCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci0K
LQkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotCX0KLX0KLQotLyoqCi0g
KiBpOTE1X2dlbV9iYXRjaF9wb29sX2dldCgpIC0gYWxsb2NhdGUgYSBidWZmZXIgZnJvbSB0aGUg
cG9vbAotICogQHBvb2w6IHRoZSBiYXRjaCBidWZmZXIgcG9vbAotICogQHNpemU6IHRoZSBtaW5p
bXVtIGRlc2lyZWQgc2l6ZSBvZiB0aGUgcmV0dXJuZWQgYnVmZmVyCi0gKgotICogUmV0dXJucyBh
biBpbmFjdGl2ZSBidWZmZXIgZnJvbSBAcG9vbCB3aXRoIGF0IGxlYXN0IEBzaXplIGJ5dGVzLAot
ICogd2l0aCB0aGUgcGFnZXMgcGlubmVkLiBUaGUgY2FsbGVyIG11c3QgaTkxNV9nZW1fb2JqZWN0
X3VucGluX3BhZ2VzKCkKLSAqIG9uIHRoZSByZXR1cm5lZCBvYmplY3QuCi0gKgotICogTm90ZTog
Q2FsbGVycyBtdXN0IGhvbGQgdGhlIHN0cnVjdF9tdXRleAotICoKLSAqIFJldHVybjogdGhlIGJ1
ZmZlciBvYmplY3Qgb3IgYW4gZXJyb3IgcG9pbnRlcgotICovCi1zdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqCi1pOTE1X2dlbV9iYXRjaF9wb29sX2dldChzdHJ1Y3QgaTkxNV9nZW1fYmF0Y2hf
cG9vbCAqcG9vbCwKLQkJCXNpemVfdCBzaXplKQotewotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmo7Ci0Jc3RydWN0IGxpc3RfaGVhZCAqbGlzdDsKLQlpbnQgbiwgcmV0OwotCi0JbG9j
a2RlcF9hc3NlcnRfaGVsZCgmcG9vbC0+ZW5naW5lLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
LQotCS8qIENvbXB1dGUgYSBwb3dlci1vZi10d28gYnVja2V0LCBidXQgdGhyb3cgZXZlcnl0aGlu
ZyBncmVhdGVyIHRoYW4KLQkgKiAxNktpQiBpbnRvIHRoZSBzYW1lIGJ1Y2tldDogaS5lLiB0aGUg
dGhlIGJ1Y2tldHMgaG9sZCBvYmplY3RzIG9mCi0JICogKDEgcGFnZSwgMiBwYWdlcywgNCBwYWdl
cywgOCsgcGFnZXMpLgotCSAqLwotCW4gPSBmbHMoc2l6ZSA+PiBQQUdFX1NISUZUKSAtIDE7Ci0J
aWYgKG4gPj0gQVJSQVlfU0laRShwb29sLT5jYWNoZV9saXN0KSkKLQkJbiA9IEFSUkFZX1NJWkUo
cG9vbC0+Y2FjaGVfbGlzdCkgLSAxOwotCWxpc3QgPSAmcG9vbC0+Y2FjaGVfbGlzdFtuXTsKLQot
CWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCBsaXN0LCBiYXRjaF9wb29sX2xpbmspIHsKLQkJc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdCAqcmVzdiA9IG9iai0+YmFzZS5yZXN2OwotCi0JCS8qIFRo
ZSBiYXRjaGVzIGFyZSBzdHJpY3RseSBMUlUgb3JkZXJlZCAqLwotCQlpZiAoIXJlc2VydmF0aW9u
X29iamVjdF90ZXN0X3NpZ25hbGVkX3JjdShyZXN2LCB0cnVlKSkKLQkJCWJyZWFrOwotCi0JCS8q
Ci0JCSAqIFRoZSBvYmplY3QgaXMgbm93IGlkbGUsIGNsZWFyIHRoZSBhcnJheSBvZiBzaGFyZWQK
LQkJICogZmVuY2VzIGJlZm9yZSB3ZSBhZGQgYSBuZXcgcmVxdWVzdC4gQWx0aG91Z2gsIHdlCi0J
CSAqIHJlbWFpbiBvbiB0aGUgc2FtZSBlbmdpbmUsIHdlIG1heSBiZSBvbiBhIGRpZmZlcmVudAot
CQkgKiB0aW1lbGluZSBhbmQgc28gbWF5IGNvbnRpbnVhbGx5IGdyb3cgdGhlIGFycmF5LAotCQkg
KiB0cmFwcGluZyBhIHJlZmVyZW5jZSB0byBhbGwgdGhlIG9sZCBmZW5jZXMsIHJhdGhlcgotCQkg
KiB0aGFuIHJlcGxhY2UgdGhlIGV4aXN0aW5nIGZlbmNlLgotCQkgKi8KLQkJaWYgKHJjdV9hY2Nl
c3NfcG9pbnRlcihyZXN2LT5mZW5jZSkpIHsKLQkJCXJlc2VydmF0aW9uX29iamVjdF9sb2NrKHJl
c3YsIE5VTEwpOwotCQkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9leGNsX2ZlbmNlKHJlc3YsIE5V
TEwpOwotCQkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhyZXN2KTsKLQkJfQotCi0JCWlmIChv
YmotPmJhc2Uuc2l6ZSA+PSBzaXplKQotCQkJZ290byBmb3VuZDsKLQl9Ci0KLQlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKHBvb2wtPmVuZ2luZS0+aTkxNSwgc2l6ZSk7Ci0J
aWYgKElTX0VSUihvYmopKQotCQlyZXR1cm4gb2JqOwotCi1mb3VuZDoKLQlyZXQgPSBpOTE1X2dl
bV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIEVSUl9QVFIocmV0
KTsKLQotCWxpc3RfbW92ZV90YWlsKCZvYmotPmJhdGNoX3Bvb2xfbGluaywgbGlzdCk7Ci0JcmV0
dXJuIG9iajsKLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Jh
dGNoX3Bvb2wuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaApk
ZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggZmVlZWVlYWE1NGQ4Li4wMDAwMDAwMDAwMDAK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCisrKyAvZGV2
L251bGwKQEAgLTEsMjYgKzAsMCBAQAotLyoKLSAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBN
SVQKLSAqCi0gKiBDb3B5cmlnaHQgwqkgMjAxNC0yMDE4IEludGVsIENvcnBvcmF0aW9uCi0gKi8K
LQotI2lmbmRlZiBJOTE1X0dFTV9CQVRDSF9QT09MX0gKLSNkZWZpbmUgSTkxNV9HRU1fQkFUQ0hf
UE9PTF9ICi0KLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgotCi1zdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdDsKLXN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7Ci0KLXN0cnVjdCBpOTE1X2dlbV9iYXRj
aF9wb29sIHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0Jc3RydWN0IGxpc3Rf
aGVhZCBjYWNoZV9saXN0WzRdOwotfTsKLQotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2luaXQo
c3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wsCi0JCQkgICAgICBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpOwotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2Zpbmkoc3RydWN0
IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wpOwotc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KgotaTkxNV9nZW1fYmF0Y2hfcG9vbF9nZXQoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBv
b2wsIHNpemVfdCBzaXplKTsKLQotI2VuZGlmIC8qIEk5MTVfR0VNX0JBVENIX1BPT0xfSCAqLwot
LSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
