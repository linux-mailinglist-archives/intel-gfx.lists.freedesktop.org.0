Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361C5601B0
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 09:46:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 711C96E423;
	Fri,  5 Jul 2019 07:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D716E41A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 07:46:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17137015-1500050 
 for multiple; Fri, 05 Jul 2019 08:46:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 08:46:03 +0100
Message-Id: <20190705074604.16496-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705074604.16496-1-chris@chris-wilson.co.uk>
References: <20190705074604.16496-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Replace struct_mutex for batch
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
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgICB8IDE2NiArKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmggICB8ICAzNCAr
KysrCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmggfCAgMjkg
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDYg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgICAgICAgICB8ICAgMyAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAgNjggLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jICAgIHwgMTMy
IC0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9iYXRjaF9wb29s
LmggICAgfCAgMjYgLS0tCiAxNiBmaWxlcyBjaGFuZ2VkLCAyNzkgaW5zZXJ0aW9ucygrKSwgMjY1
IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wb29sLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaAogZGVsZXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwogZGVsZXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuaAoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUKaW5kZXggNTI2NmRiZWFiMDFmLi4xYWU1NDZkZjI4NGEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlCkBAIC03Miw2ICs3Miw3IEBAIG9iai15ICs9IGd0LwogZ3QteSArPSBcCiAJ
Z3QvaW50ZWxfYnJlYWRjcnVtYnMubyBcCiAJZ3QvaW50ZWxfY29udGV4dC5vIFwKKwlndC9pbnRl
bF9lbmdpbmVfcG9vbC5vIFwKIAlndC9pbnRlbF9lbmdpbmVfY3MubyBcCiAJZ3QvaW50ZWxfZW5n
aW5lX3BtLm8gXAogCWd0L2ludGVsX2d0Lm8gXApAQCAtMTI1LDcgKzEyNiw2IEBAIGk5MTUteSAr
PSBcCiAJICAkKGdlbS15KSBcCiAJICBpOTE1X2FjdGl2ZS5vIFwKIAkgIGk5MTVfY21kX3BhcnNl
ci5vIFwKLQkgIGk5MTVfZ2VtX2JhdGNoX3Bvb2wubyBcCiAJICBpOTE1X2dlbV9ldmljdC5vIFwK
IAkgIGk5MTVfZ2VtX2ZlbmNlX3JlZy5vIFwKIAkgIGk5MTVfZ2VtX2d0dC5vIFwKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDgwYzljNTdh
MzAyZi4uMGVhMmQ0OWJjOGI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKQEAgLTE2LDYgKzE2LDcgQEAKIAogI2luY2x1ZGUgImdlbS9pOTE1
X2dlbV9pb2N0bHMuaCIKICNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0LmgiCisjaW5jbHVkZSAi
Z3QvaW50ZWxfZW5naW5lX3Bvb2wuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1
ZGUgImd0L2ludGVsX2d0X3BtLmgiCiAKQEAgLTExNDUsMjUgKzExNDYsMjYgQEAgc3RhdGljIGlu
dCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJCSAgICAg
dW5zaWduZWQgaW50IGxlbikKIHsKIAlzdHJ1Y3QgcmVsb2NfY2FjaGUgKmNhY2hlID0gJmViLT5y
ZWxvY19jYWNoZTsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBp
bnRlbF9lbmdpbmVfcG9vbF9ub2RlICpwb29sOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwog
CXN0cnVjdCBpOTE1X3ZtYSAqYmF0Y2g7CiAJdTMyICpjbWQ7CiAJaW50IGVycjsKIAotCW9iaiA9
IGk5MTVfZ2VtX2JhdGNoX3Bvb2xfZ2V0KCZlYi0+ZW5naW5lLT5iYXRjaF9wb29sLCBQQUdFX1NJ
WkUpOwotCWlmIChJU19FUlIob2JqKSkKLQkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKwlwb29sID0g
aW50ZWxfZW5naW5lX3Bvb2xfZ2V0KCZlYi0+ZW5naW5lLT5wb29sLCBQQUdFX1NJWkUpOworCWlm
IChJU19FUlIocG9vbCkpCisJCXJldHVybiBQVFJfRVJSKHBvb2wpOwogCi0JY21kID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAob2JqLAorCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHBv
b2wtPm9iaiwKIAkJCQkgICAgICBjYWNoZS0+aGFzX2xsYyA/CiAJCQkJICAgICAgSTkxNV9NQVBf
Rk9SQ0VfV0IgOgogCQkJCSAgICAgIEk5MTVfTUFQX0ZPUkNFX1dDKTsKLQlpOTE1X2dlbV9vYmpl
Y3RfdW5waW5fcGFnZXMob2JqKTsKLQlpZiAoSVNfRVJSKGNtZCkpCi0JCXJldHVybiBQVFJfRVJS
KGNtZCk7CisJaWYgKElTX0VSUihjbWQpKSB7CisJCWVyciA9IFBUUl9FUlIoY21kKTsKKwkJZ290
byBvdXRfcG9vbDsKKwl9CiAKLQliYXRjaCA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgdm1hLT52
bSwgTlVMTCk7CisJYmF0Y2ggPSBpOTE1X3ZtYV9pbnN0YW5jZShwb29sLT5vYmosIHZtYS0+dm0s
IE5VTEwpOwogCWlmIChJU19FUlIoYmF0Y2gpKSB7CiAJCWVyciA9IFBUUl9FUlIoYmF0Y2gpOwog
CQlnb3RvIGVycl91bm1hcDsKQEAgLTExNzksNiArMTE4MSwxMCBAQCBzdGF0aWMgaW50IF9fcmVs
b2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQlnb3RvIGVycl91bnBp
bjsKIAl9CiAKKwllcnIgPSBpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShwb29sLCBycSk7
CisJaWYgKGVycikKKwkJZ290byBlcnJfcmVxdWVzdDsKKwogCWVyciA9IHJlbG9jX21vdmVfdG9f
Z3B1KHJxLCB2bWEpOwogCWlmIChlcnIpCiAJCWdvdG8gZXJyX3JlcXVlc3Q7CkBAIC0xMjA0LDcg
KzEyMTAsNyBAQCBzdGF0aWMgaW50IF9fcmVsb2NfZ3B1X2FsbG9jKHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViLAogCWNhY2hlLT5ycV9zaXplID0gMDsKIAogCS8qIFJldHVybiB3aXRoIGJhdGNo
IG1hcHBpbmcgKGNtZCkgc3RpbGwgcGlubmVkICovCi0JcmV0dXJuIDA7CisJZ290byBvdXRfcG9v
bDsKIAogc2tpcF9yZXF1ZXN0OgogCWk5MTVfcmVxdWVzdF9za2lwKHJxLCBlcnIpOwpAQCAtMTIx
Myw3ICsxMjE5LDkgQEAgc3RhdGljIGludCBfX3JlbG9jX2dwdV9hbGxvYyhzdHJ1Y3QgaTkxNV9l
eGVjYnVmZmVyICplYiwKIGVycl91bnBpbjoKIAlpOTE1X3ZtYV91bnBpbihiYXRjaCk7CiBlcnJf
dW5tYXA6Ci0JaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOworCWk5MTVfZ2VtX29iamVj
dF91bnBpbl9tYXAocG9vbC0+b2JqKTsKK291dF9wb29sOgorCWludGVsX2VuZ2luZV9wb29sX3B1
dChwb29sKTsKIAlyZXR1cm4gZXJyOwogfQogCkBAIC0xOTU3LDE4ICsxOTY1LDE3IEBAIHN0YXRp
YyBpbnQgaTkxNV9yZXNldF9nZW43X3NvbF9vZmZzZXRzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
KQogCiBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICplYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwgYm9vbCBpc19tYXN0ZXIpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KnNoYWRvd19iYXRjaF9vYmo7CisJc3RydWN0IGludGVsX2VuZ2luZV9wb29sX25vZGUgKnBvb2w7
CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAJaW50IGVycjsKIAotCXNoYWRvd19iYXRjaF9vYmog
PSBpOTE1X2dlbV9iYXRjaF9wb29sX2dldCgmZWItPmVuZ2luZS0+YmF0Y2hfcG9vbCwKLQkJCQkJ
CSAgIFBBR0VfQUxJR04oZWItPmJhdGNoX2xlbikpOwotCWlmIChJU19FUlIoc2hhZG93X2JhdGNo
X29iaikpCi0JCXJldHVybiBFUlJfQ0FTVChzaGFkb3dfYmF0Y2hfb2JqKTsKKwlwb29sID0gaW50
ZWxfZW5naW5lX3Bvb2xfZ2V0KCZlYi0+ZW5naW5lLT5wb29sLCBlYi0+YmF0Y2hfbGVuKTsKKwlp
ZiAoSVNfRVJSKHBvb2wpKQorCQlyZXR1cm4gRVJSX0NBU1QocG9vbCk7CiAKIAllcnIgPSBpbnRl
bF9lbmdpbmVfY21kX3BhcnNlcihlYi0+ZW5naW5lLAogCQkJCSAgICAgIGViLT5iYXRjaC0+b2Jq
LAotCQkJCSAgICAgIHNoYWRvd19iYXRjaF9vYmosCisJCQkJICAgICAgcG9vbC0+b2JqLAogCQkJ
CSAgICAgIGViLT5iYXRjaF9zdGFydF9vZmZzZXQsCiAJCQkJICAgICAgZWItPmJhdGNoX2xlbiwK
IAkJCQkgICAgICBpc19tYXN0ZXIpOwpAQCAtMTk3NywxMiArMTk4NCwxMiBAQCBzdGF0aWMgc3Ry
dWN0IGk5MTVfdm1hICplYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgYm9vbCBp
c19tYXN0ZXIpCiAJCQl2bWEgPSBOVUxMOwogCQllbHNlCiAJCQl2bWEgPSBFUlJfUFRSKGVycik7
Ci0JCWdvdG8gb3V0OworCQlnb3RvIGVycjsKIAl9CiAKLQl2bWEgPSBpOTE1X2dlbV9vYmplY3Rf
Z2d0dF9waW4oc2hhZG93X2JhdGNoX29iaiwgTlVMTCwgMCwgMCwgMCk7CisJdm1hID0gaTkxNV9n
ZW1fb2JqZWN0X2dndHRfcGluKHBvb2wtPm9iaiwgTlVMTCwgMCwgMCwgMCk7CiAJaWYgKElTX0VS
Uih2bWEpKQotCQlnb3RvIG91dDsKKwkJZ290byBlcnI7CiAKIAllYi0+dm1hW2ViLT5idWZmZXJf
Y291bnRdID0gaTkxNV92bWFfZ2V0KHZtYSk7CiAJZWItPmZsYWdzW2ViLT5idWZmZXJfY291bnRd
ID0KQEAgLTE5OTAsOCArMTk5NywxMSBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICplYl9wYXJz
ZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgYm9vbCBpc19tYXN0ZXIpCiAJdm1hLT5leGVj
X2ZsYWdzID0gJmViLT5mbGFnc1tlYi0+YnVmZmVyX2NvdW50XTsKIAllYi0+YnVmZmVyX2NvdW50
Kys7CiAKLW91dDoKLQlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMoc2hhZG93X2JhdGNoX29i
aik7CisJdm1hLT5wcml2YXRlID0gcG9vbDsKKwlyZXR1cm4gdm1hOworCitlcnI6CisJaW50ZWxf
ZW5naW5lX3Bvb2xfcHV0KHBvb2wpOwogCXJldHVybiB2bWE7CiB9CiAKQEAgLTI2MTUsNiArMjYy
NSw4IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkg
KiB0byBleHBsaWNpdGx5IGhvbGQgYW5vdGhlciByZWZlcmVuY2UgaGVyZS4KIAkgKi8KIAllYi5y
ZXF1ZXN0LT5iYXRjaCA9IGViLmJhdGNoOworCWlmIChlYi5iYXRjaC0+cHJpdmF0ZSkKKwkJaW50
ZWxfZW5naW5lX3Bvb2xfbWFya19hY3RpdmUoZWIuYmF0Y2gtPnByaXZhdGUsIGViLnJlcXVlc3Qp
OwogCiAJdHJhY2VfaTkxNV9yZXF1ZXN0X3F1ZXVlKGViLnJlcXVlc3QsIGViLmJhdGNoX2ZsYWdz
KTsKIAllcnIgPSBlYl9zdWJtaXQoJmViKTsKQEAgLTI2MzksNiArMjY1MSw4IEBAIGk5MTVfZ2Vt
X2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIGVycl9iYXRjaF91bnBpbjoK
IAlpZiAoZWIuYmF0Y2hfZmxhZ3MgJiBJOTE1X0RJU1BBVENIX1NFQ1VSRSkKIAkJaTkxNV92bWFf
dW5waW4oZWIuYmF0Y2gpOworCWlmIChlYi5iYXRjaC0+cHJpdmF0ZSkKKwkJaW50ZWxfZW5naW5l
X3Bvb2xfcHV0KGViLmJhdGNoLT5wcml2YXRlKTsKIGVycl92bWE6CiAJaWYgKGViLmV4ZWMpCiAJ
CWViX3JlbGVhc2Vfdm1hcygmZWIpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jCmluZGV4IGQ1MTk3YTJhMTA2Zi4uYWRlZDk1Mzc1MDk2IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCkBAIC02NCw3ICs2NCw2IEBAIHZvaWQg
aTkxNV9nZW1fb2JqZWN0X2luaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlJ
TklUX0xJU1RfSEVBRCgmb2JqLT52bWEubGlzdCk7CiAKIAlJTklUX0xJU1RfSEVBRCgmb2JqLT5s
dXRfbGlzdCk7Ci0JSU5JVF9MSVNUX0hFQUQoJm9iai0+YmF0Y2hfcG9vbF9saW5rKTsKIAogCWlu
aXRfcmN1X2hlYWQoJm9iai0+cmN1KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IDM0YjUxZmFkMDJkZS4uZDQ3NGM2YWM0MTAw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBl
cy5oCkBAIC0xMTQsNyArMTE0LDYgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgewogCXVu
c2lnbmVkIGludCB1c2VyZmF1bHRfY291bnQ7CiAJc3RydWN0IGxpc3RfaGVhZCB1c2VyZmF1bHRf
bGluazsKIAotCXN0cnVjdCBsaXN0X2hlYWQgYmF0Y2hfcG9vbF9saW5rOwogCUk5MTVfU0VMRlRF
U1RfREVDTEFSRShzdHJ1Y3QgbGlzdF9oZWFkIHN0X2xpbmspOwogCiAJLyoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggOTNkMTg4NTI2NDU3Li5iZjA4NWIwY2I3YzYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC0zMywxMCArMzMsOCBA
QCBzdGF0aWMgdm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLQlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgeworCWZvcl9lYWNoX2VuZ2luZShlbmdp
bmUsIGk5MTUsIGlkKQogCQljYWxsX2lkbGVfYmFycmllcnMoZW5naW5lKTsgLyogY2xlYW51cCBh
ZnRlciB3ZWRnaW5nICovCi0JCWk5MTVfZ2VtX2JhdGNoX3Bvb2xfZmluaSgmZW5naW5lLT5iYXRj
aF9wb29sKTsKLQl9CiAKIAlpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lLmgKaW5kZXggMDMzMWU5YWMyNDg1Li5mYWFhMTY0MjY3ZjQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCkBAIC05LDcgKzksNiBAQAogI2lu
Y2x1ZGUgPGxpbnV4L3JhbmRvbS5oPgogI2luY2x1ZGUgPGxpbnV4L3NlcWxvY2suaD4KIAotI2lu
Y2x1ZGUgImk5MTVfZ2VtX2JhdGNoX3Bvb2wuaCIKICNpbmNsdWRlICJpOTE1X3BtdS5oIgogI2lu
Y2x1ZGUgImk5MTVfcmVnLmgiCiAjaW5jbHVkZSAiaTkxNV9yZXF1ZXN0LmgiCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDJhMTBkYWYxZDM3OS4uYThmNWVk
MWQ3NWJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
Y3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAt
MzIsNiArMzIsNyBAQAogCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgiCiAjaW5jbHVkZSAiaW50
ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wuaCIKICNpbmNsdWRl
ICJpbnRlbF9jb250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfbHJjLmgiCiAjaW5jbHVkZSAiaW50
ZWxfcmVzZXQuaCIKQEAgLTQ5OCwxMSArNDk5LDYgQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMg
dm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9iYXRjaF9wb29sKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKLXsKLQlpOTE1X2dlbV9iYXRjaF9wb29sX2luaXQoJmVuZ2luZS0+YmF0Y2hfcG9v
bCwgZW5naW5lKTsKLX0KLQogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9leGVjbGlzdHMoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xp
c3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xpc3RzOwpAQCAtNjI4LDEwICs2
MjQsMTEgQEAgc3RhdGljIGludCBpbnRlbF9lbmdpbmVfc2V0dXBfY29tbW9uKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlpbnRlbF9lbmdpbmVfaW5pdF9icmVhZGNydW1icyhlbmdp
bmUpOwogCWludGVsX2VuZ2luZV9pbml0X2V4ZWNsaXN0cyhlbmdpbmUpOwogCWludGVsX2VuZ2lu
ZV9pbml0X2hhbmdjaGVjayhlbmdpbmUpOwotCWludGVsX2VuZ2luZV9pbml0X2JhdGNoX3Bvb2wo
ZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfaW5pdF9jbWRfcGFyc2VyKGVuZ2luZSk7CiAJaW50ZWxf
ZW5naW5lX2luaXRfX3BtKGVuZ2luZSk7CiAKKwlpbnRlbF9lbmdpbmVfcG9vbF9pbml0KCZlbmdp
bmUtPnBvb2wpOworCiAJLyogVXNlIHRoZSB3aG9sZSBkZXZpY2UgYnkgZGVmYXVsdCAqLwogCWVu
Z2luZS0+c3NldSA9CiAJCWludGVsX3NzZXVfZnJvbV9kZXZpY2VfaW5mbygmUlVOVElNRV9JTkZP
KGVuZ2luZS0+aTkxNSktPnNzZXUpOwpAQCAtODg1LDkgKzg4Miw5IEBAIHZvaWQgaW50ZWxfZW5n
aW5lX2NsZWFudXBfY29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCWNs
ZWFudXBfc3RhdHVzX3BhZ2UoZW5naW5lKTsKIAorCWludGVsX2VuZ2luZV9wb29sX2ZpbmkoJmVu
Z2luZS0+cG9vbCk7CiAJaW50ZWxfZW5naW5lX2ZpbmlfYnJlYWRjcnVtYnMoZW5naW5lKTsKIAlp
bnRlbF9lbmdpbmVfY2xlYW51cF9jbWRfcGFyc2VyKGVuZ2luZSk7Ci0JaTkxNV9nZW1fYmF0Y2hf
cG9vbF9maW5pKCZlbmdpbmUtPmJhdGNoX3Bvb2wpOwogCiAJaWYgKGVuZ2luZS0+ZGVmYXVsdF9z
dGF0ZSkKIAkJaTkxNV9nZW1fb2JqZWN0X3B1dChlbmdpbmUtPmRlZmF1bHRfc3RhdGUpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwppbmRleCA5NzUxYTAyZDg2YmMu
LmZlOWY5ZWFmZmU4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bt
LmMKQEAgLTcsNiArNyw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKIAogI2luY2x1ZGUgImlu
dGVsX2VuZ2luZS5oIgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9wb29sLmgiCiAjaW5jbHVkZSAi
aW50ZWxfZW5naW5lX3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKIApAQCAtMTE2LDYg
KzExNyw3IEBAIHN0YXRpYyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAq
d2YpCiAJR0VNX1RSQUNFKCIlc1xuIiwgZW5naW5lLT5uYW1lKTsKIAogCWludGVsX2VuZ2luZV9k
aXNhcm1fYnJlYWRjcnVtYnMoZW5naW5lKTsKKwlpbnRlbF9lbmdpbmVfcG9vbF9wYXJrKCZlbmdp
bmUtPnBvb2wpOwogCiAJLyogTXVzdCBiZSByZXNldCB1cG9uIGlkbGluZywgb3Igd2UgbWF5IG1p
c3MgdGhlIGJ1c3kgd2FrZXVwLiAqLwogCUdFTV9CVUdfT04oZW5naW5lLT5leGVjbGlzdHMucXVl
dWVfcHJpb3JpdHlfaGludCAhPSBJTlRfTUlOKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfcG9vbC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAw
MC4uMzI2ODhjYTM3OWVmCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3Bvb2wuYwpAQCAtMCwwICsxLDE2NiBAQAorLyoKKyAqIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxNC0yMDE4IEludGVs
IENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9vYmplY3QuaCIKKwor
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5j
bHVkZSAiaW50ZWxfZW5naW5lX3Bvb2wuaCIKKworc3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKnRvX2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2wpCit7CisJcmV0dXJu
IGNvbnRhaW5lcl9vZihwb29sLCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzLCBwb29sKTsKK30KKwor
c3RhdGljIHN0cnVjdCBsaXN0X2hlYWQgKgorYnVja2V0X2Zvcl9zaXplKHN0cnVjdCBpbnRlbF9l
bmdpbmVfcG9vbCAqcG9vbCwgc2l6ZV90IHN6KQoreworCWludCBuOworCisJLyoKKwkgKiBDb21w
dXRlIGEgcG93ZXItb2YtdHdvIGJ1Y2tldCwgYnV0IHRocm93IGV2ZXJ5dGhpbmcgZ3JlYXRlciB0
aGFuCisJICogMTZLaUIgaW50byB0aGUgc2FtZSBidWNrZXQ6IGkuZS4gdGhlIGJ1Y2tldHMgaG9s
ZCBvYmplY3RzIG9mCisJICogKDEgcGFnZSwgMiBwYWdlcywgNCBwYWdlcywgOCsgcGFnZXMpLgor
CSAqLworCW4gPSBmbHMoc3ogPj4gUEFHRV9TSElGVCkgLSAxOworCWlmIChuID49IEFSUkFZX1NJ
WkUocG9vbC0+Y2FjaGVfbGlzdCkpCisJCW4gPSBBUlJBWV9TSVpFKHBvb2wtPmNhY2hlX2xpc3Qp
IC0gMTsKKworCXJldHVybiAmcG9vbC0+Y2FjaGVfbGlzdFtuXTsKK30KKworc3RhdGljIHZvaWQg
bm9kZV9mcmVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlKQoreworCWk5MTVf
Z2VtX29iamVjdF9wdXQobm9kZS0+b2JqKTsKKwlpOTE1X2FjdGl2ZV9maW5pKCZub2RlLT5hY3Rp
dmUpOworCWtmcmVlKG5vZGUpOworfQorCitzdGF0aWMgaW50IHBvb2xfYWN0aXZlKHN0cnVjdCBp
OTE1X2FjdGl2ZSAqcmVmKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2Rl
ID0KKwkJY29udGFpbmVyX29mKHJlZiwgdHlwZW9mKCpub2RlKSwgYWN0aXZlKTsKKwlzdHJ1Y3Qg
cmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2ID0gbm9kZS0+b2JqLT5iYXNlLnJlc3Y7CisKKwlpZiAo
cmVzZXJ2YXRpb25fb2JqZWN0X3RyeWxvY2socmVzdikpIHsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0
X2FkZF9leGNsX2ZlbmNlKHJlc3YsIE5VTEwpOworCQlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2Nr
KHJlc3YpOworCX0KKworCXJldHVybiBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG5vZGUtPm9i
aik7Cit9CisKK3N0YXRpYyB2b2lkIHBvb2xfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlID0KKwkJY29udGFpbmVy
X29mKHJlZiwgdHlwZW9mKCpub2RlKSwgYWN0aXZlKTsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bv
b2wgKnBvb2wgPSBub2RlLT5wb29sOworCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3QgPSBidWNrZXRf
Zm9yX3NpemUocG9vbCwgbm9kZS0+b2JqLT5iYXNlLnNpemUpOworCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7CisKKwlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UodG9fZW5naW5lKHBv
b2wpKSk7CisKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMobm9kZS0+b2JqKTsKKworCXNw
aW5fbG9ja19pcnFzYXZlKCZwb29sLT5sb2NrLCBmbGFncyk7CisJbGlzdF9hZGQoJm5vZGUtPmxp
bmssIGxpc3QpOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBvb2wtPmxvY2ssIGZsYWdzKTsK
K30KKworc3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICoKK25vZGVfY3JlYXRl
KHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9vbCwgc2l6ZV90IHN6KQoreworCXN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IHRvX2VuZ2luZShwb29sKTsKKwlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX3Bvb2xfbm9kZSAqbm9kZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OworCisJbm9kZSA9IGttYWxsb2Moc2l6ZW9mKCpub2RlKSwKKwkJICAgICAgIEdGUF9LRVJORUwg
fCBfX0dGUF9SRVRSWV9NQVlGQUlMIHwgX19HRlBfTk9XQVJOKTsKKwlpZiAoIW5vZGUpCisJCXJl
dHVybiBFUlJfUFRSKC1FTk9NRU0pOworCisJbm9kZS0+cG9vbCA9IHBvb2w7CisJaTkxNV9hY3Rp
dmVfaW5pdChlbmdpbmUtPmk5MTUsICZub2RlLT5hY3RpdmUsIHBvb2xfYWN0aXZlLCBwb29sX3Jl
dGlyZSk7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGVuZ2luZS0+
aTkxNSwgc3opOworCWlmIChJU19FUlIob2JqKSkgeworCQlpOTE1X2FjdGl2ZV9maW5pKCZub2Rl
LT5hY3RpdmUpOworCQlrZnJlZShub2RlKTsKKwkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CisJfQor
CisJbm9kZS0+b2JqID0gb2JqOworCXJldHVybiBub2RlOworfQorCitzdHJ1Y3QgaW50ZWxfZW5n
aW5lX3Bvb2xfbm9kZSAqCitpbnRlbF9lbmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9wb29sICpwb29sLCBzaXplX3Qgc2l6ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xf
bm9kZSAqbm9kZTsKKwlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0OworCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7CisJaW50IHJldDsKKworCUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9wbV9pc19hd2FrZSh0
b19lbmdpbmUocG9vbCkpKTsKKworCXNpemUgPSBQQUdFX0FMSUdOKHNpemUpOworCWxpc3QgPSBi
dWNrZXRfZm9yX3NpemUocG9vbCwgc2l6ZSk7CisKKwlzcGluX2xvY2tfaXJxc2F2ZSgmcG9vbC0+
bG9jaywgZmxhZ3MpOworCWxpc3RfZm9yX2VhY2hfZW50cnkobm9kZSwgbGlzdCwgbGluaykgewor
CQlpZiAobm9kZS0+b2JqLT5iYXNlLnNpemUgPCBzaXplKQorCQkJY29udGludWU7CisJCWxpc3Rf
ZGVsKCZub2RlLT5saW5rKTsKKwkJYnJlYWs7CisJfQorCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
JnBvb2wtPmxvY2ssIGZsYWdzKTsKKworCWlmICgmbm9kZS0+bGluayA9PSBsaXN0KSB7CisJCW5v
ZGUgPSBub2RlX2NyZWF0ZShwb29sLCBzaXplKTsKKwkJaWYgKElTX0VSUihub2RlKSkKKwkJCXJl
dHVybiBub2RlOworCX0KKworCXJldCA9IGk5MTVfYWN0aXZlX2FjcXVpcmUoJm5vZGUtPmFjdGl2
ZSk7CisJaWYgKHJldCkgeworCQlub2RlX2ZyZWUobm9kZSk7CisJCXJldHVybiBFUlJfUFRSKHJl
dCk7CisJfQorCisJcmV0dXJuIG5vZGU7Cit9CisKK3ZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2wpCit7CisJaW50IG47CisKKwlzcGluX2xv
Y2tfaW5pdCgmcG9vbC0+bG9jayk7CisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+
Y2FjaGVfbGlzdCk7IG4rKykKKwkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0p
OworfQorCit2b2lkIGludGVsX2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9w
b29sICpwb29sKQoreworCWludCBuOworCisJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9v
bC0+Y2FjaGVfbGlzdCk7IG4rKykgeworCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0ID0gJnBvb2wt
PmNhY2hlX2xpc3Rbbl07CisJCXN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbF9ub2RlICpub2RlLCAq
bm47CisKKwkJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKG5vZGUsIG5uLCBsaXN0LCBsaW5rKQor
CQkJbm9kZV9mcmVlKG5vZGUpOworCisJCUlOSVRfTElTVF9IRUFEKGxpc3QpOworCX0KK30KKwor
dm9pZCBpbnRlbF9lbmdpbmVfcG9vbF9maW5pKHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9vbCAqcG9v
bCkKK3sKKwlpbnQgbjsKKworCWZvciAobiA9IDA7IG4gPCBBUlJBWV9TSVpFKHBvb2wtPmNhY2hl
X2xpc3QpOyBuKyspCisJCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnBvb2wtPmNhY2hlX2xpc3Rb
bl0pKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9wb29sLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uZjdhMGE2NjBjMWM5Ci0tLSAv
ZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wu
aApAQCAtMCwwICsxLDM0IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAor
ICoKKyAqIENvcHlyaWdodCDCqSAyMDE0LTIwMTggSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisj
aWZuZGVmIElOVEVMX0VOR0lORV9QT09MX0gKKyNkZWZpbmUgSU5URUxfRU5HSU5FX1BPT0xfSAor
CisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3Bvb2xfdHlwZXMuaCIKKyNpbmNsdWRlICJpOTE1X2Fj
dGl2ZS5oIgorI2luY2x1ZGUgImk5MTVfcmVxdWVzdC5oIgorCitzdHJ1Y3QgaW50ZWxfZW5naW5l
X3Bvb2xfbm9kZSAqCitpbnRlbF9lbmdpbmVfcG9vbF9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9w
b29sICpwb29sLCBzaXplX3Qgc2l6ZSk7CisKK3N0YXRpYyBpbmxpbmUgaW50CitpbnRlbF9lbmdp
bmVfcG9vbF9tYXJrX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZSwK
KwkJCSAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXJldHVybiBpOTE1X2FjdGl2
ZV9yZWYoJm5vZGUtPmFjdGl2ZSwgcnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKK30KKworc3RhdGlj
IGlubGluZSB2b2lkCitpbnRlbF9lbmdpbmVfcG9vbF9wdXQoc3RydWN0IGludGVsX2VuZ2luZV9w
b29sX25vZGUgKm5vZGUpCit7CisJaTkxNV9hY3RpdmVfcmVsZWFzZSgmbm9kZS0+YWN0aXZlKTsK
K30KKwordm9pZCBpbnRlbF9lbmdpbmVfcG9vbF9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfcG9v
bCAqcG9vbCk7Cit2b2lkIGludGVsX2VuZ2luZV9wb29sX3Bhcmsoc3RydWN0IGludGVsX2VuZ2lu
ZV9wb29sICpwb29sKTsKK3ZvaWQgaW50ZWxfZW5naW5lX3Bvb2xfZmluaShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX3Bvb2wgKnBvb2wpOworCisjZW5kaWYgLyogSU5URUxfRU5HSU5FX1BPT0xfSCAqLwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2xfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wb29sX3R5cGVzLmgK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5lMzFlZTM2MWI3NmYKLS0t
IC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9v
bF90eXBlcy5oCkBAIC0wLDAgKzEsMjkgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTQtMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgor
ICovCisKKyNpZm5kZWYgSU5URUxfRU5HSU5FX1BPT0xfVFlQRVNfSAorI2RlZmluZSBJTlRFTF9F
TkdJTkVfUE9PTF9UWVBFU19ICisKKyNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CisjaW5jbHVkZSA8
bGludXgvc3BpbmxvY2suaD4KKworI2luY2x1ZGUgImk5MTVfYWN0aXZlX3R5cGVzLmgiCisKK3N0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0OworCitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgewor
CXNwaW5sb2NrX3QgbG9jazsKKwlzdHJ1Y3QgbGlzdF9oZWFkIGNhY2hlX2xpc3RbNF07Cit9Owor
CitzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSB7CisJc3RydWN0IGk5MTVfYWN0aXZlIGFj
dGl2ZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBsaXN0X2hl
YWQgbGluazsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2wgKnBvb2w7Cit9OworCisjZW5kaWYg
LyogSU5URUxfRU5HSU5FX1BPT0xfVFlQRVNfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfdHlwZXMuaAppbmRleCAwZGRlN2UwNGIxMDIuLjZkMmYzZTExZGExYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTE2
LDEyICsxNiwxMiBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKICNpbmNsdWRlICJpOTE1
X2dlbS5oIgotI2luY2x1ZGUgImk5MTVfZ2VtX2JhdGNoX3Bvb2wuaCIKICNpbmNsdWRlICJpOTE1
X3BtdS5oIgogI2luY2x1ZGUgImk5MTVfcHJpb2xpc3RfdHlwZXMuaCIKICNpbmNsdWRlICJpOTE1
X3NlbGZ0ZXN0LmgiCi0jaW5jbHVkZSAiZ3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaCIKKyNpbmNs
dWRlICJpbnRlbF9lbmdpbmVfcG9vbF90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3NzZXUuaCIK
KyNpbmNsdWRlICJpbnRlbF90aW1lbGluZV90eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3dha2Vy
ZWYuaCIKICNpbmNsdWRlICJpbnRlbF93b3JrYXJvdW5kc190eXBlcy5oIgogCkBAIC0zNTMsNyAr
MzUzLDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyB7CiAJICogd2hlbiB0aGUgY29tbWFuZCBw
YXJzZXIgaXMgZW5hYmxlZC4gUHJldmVudHMgdGhlIGNsaWVudCBmcm9tCiAJICogbW9kaWZ5aW5n
IHRoZSBiYXRjaCBjb250ZW50cyBhZnRlciBzb2Z0d2FyZSBwYXJzaW5nLgogCSAqLwotCXN0cnVj
dCBpOTE1X2dlbV9iYXRjaF9wb29sIGJhdGNoX3Bvb2w7CisJc3RydWN0IGludGVsX2VuZ2luZV9w
b29sIHBvb2w7CiAKIAlzdHJ1Y3QgaW50ZWxfaHdfc3RhdHVzX3BhZ2Ugc3RhdHVzX3BhZ2U7CiAJ
c3RydWN0IGk5MTVfY3R4X3dvcmthcm91bmRzIHdhX2N0eDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9t
b2NrX2VuZ2luZS5jCmluZGV4IDViY2I0NjFiODM3Mi4uYjk0ZDU3YmYyYzQ4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKQEAgLTI3LDYgKzI3LDcgQEAKICNpbmNsdWRlICJp
OTE1X2Rydi5oIgogI2luY2x1ZGUgImludGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpbnRlbF9l
bmdpbmVfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfcG9vbC5oIgogCiAjaW5jbHVkZSAi
bW9ja19lbmdpbmUuaCIKICNpbmNsdWRlICJzZWxmdGVzdHMvbW9ja19yZXF1ZXN0LmgiCkBAIC0y
OTEsNiArMjkyLDggQEAgaW50IG1vY2tfZW5naW5lX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQogCWludGVsX2VuZ2luZV9pbml0X2V4ZWNsaXN0cyhlbmdpbmUpOwogCWludGVs
X2VuZ2luZV9pbml0X19wbShlbmdpbmUpOwogCisJaW50ZWxfZW5naW5lX3Bvb2xfaW5pdCgmZW5n
aW5lLT5wb29sKTsKKwogCWVuZ2luZS0+a2VybmVsX2NvbnRleHQgPQogCQlpOTE1X2dlbV9jb250
ZXh0X2dldF9lbmdpbmUoaTkxNS0+a2VybmVsX2NvbnRleHQsIGVuZ2luZS0+aWQpOwogCWlmIChJ
U19FUlIoZW5naW5lLT5rZXJuZWxfY29udGV4dCkpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCmluZGV4IDNlNGY1OGYxOTM2Mi4uY2UxYjY1Njg1MTVlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwpAQCAtMjk1LDI3ICsyOTUsNiBAQCBzdGF0aWMgaW50IHBlcl9maWxlX3N0
YXRzKGludCBpZCwgdm9pZCAqcHRyLCB2b2lkICpkYXRhKQogCQkJICAgc3RhdHMuY2xvc2VkKTsg
XAogfSB3aGlsZSAoMCkKIAotc3RhdGljIHZvaWQgcHJpbnRfYmF0Y2hfcG9vbF9zdGF0cyhzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sCi0JCQkJICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQotewotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lOwotCXN0cnVjdCBmaWxlX3N0YXRzIHN0YXRzID0ge307Ci0JZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7Ci0JaW50IGo7Ci0KLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBk
ZXZfcHJpdiwgaWQpIHsKLQkJZm9yIChqID0gMDsgaiA8IEFSUkFZX1NJWkUoZW5naW5lLT5iYXRj
aF9wb29sLmNhY2hlX2xpc3QpOyBqKyspIHsKLQkJCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLAot
CQkJCQkgICAgJmVuZ2luZS0+YmF0Y2hfcG9vbC5jYWNoZV9saXN0W2pdLAotCQkJCQkgICAgYmF0
Y2hfcG9vbF9saW5rKQotCQkJCXBlcl9maWxlX3N0YXRzKDAsIG9iaiwgJnN0YXRzKTsKLQkJfQot
CX0KLQotCXByaW50X2ZpbGVfc3RhdHMobSwgIltrXWJhdGNoIHBvb2wiLCBzdGF0cyk7Ci19Ci0K
IHN0YXRpYyB2b2lkIHByaW50X2NvbnRleHRfc3RhdHMoc3RydWN0IHNlcV9maWxlICptLAogCQkJ
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewpAQCAtMzczLDU4ICszNTIsMTIgQEAg
c3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KmRhdGEpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXByaW50X2JhdGNoX3Bvb2xfc3Rh
dHMobSwgaTkxNSk7CiAJcHJpbnRfY29udGV4dF9zdGF0cyhtLCBpOTE1KTsKIAltdXRleF91bmxv
Y2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBp
bnQgaTkxNV9nZW1fYmF0Y2hfcG9vbF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0
YSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUo
bS0+cHJpdmF0ZSk7Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwot
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lOwotCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCWludCB0b3RhbCA9IDA7Ci0J
aW50IHJldCwgajsKLQotCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZGV2LT5zdHJ1
Y3RfbXV0ZXgpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0KLQlmb3JfZWFjaF9lbmdpbmUo
ZW5naW5lLCBkZXZfcHJpdiwgaWQpIHsKLQkJZm9yIChqID0gMDsgaiA8IEFSUkFZX1NJWkUoZW5n
aW5lLT5iYXRjaF9wb29sLmNhY2hlX2xpc3QpOyBqKyspIHsKLQkJCWludCBjb3VudDsKLQotCQkJ
Y291bnQgPSAwOwotCQkJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosCi0JCQkJCSAgICAmZW5naW5l
LT5iYXRjaF9wb29sLmNhY2hlX2xpc3Rbal0sCi0JCQkJCSAgICBiYXRjaF9wb29sX2xpbmspCi0J
CQkJY291bnQrKzsKLQkJCXNlcV9wcmludGYobSwgIiVzIGNhY2hlWyVkXTogJWQgb2JqZWN0c1xu
IiwKLQkJCQkgICBlbmdpbmUtPm5hbWUsIGosIGNvdW50KTsKLQotCQkJbGlzdF9mb3JfZWFjaF9l
bnRyeShvYmosCi0JCQkJCSAgICAmZW5naW5lLT5iYXRjaF9wb29sLmNhY2hlX2xpc3Rbal0sCi0J
CQkJCSAgICBiYXRjaF9wb29sX2xpbmspIHsKLQkJCQlzZXFfcHV0cyhtLCAiICAgIik7Ci0JCQkJ
ZGVzY3JpYmVfb2JqKG0sIG9iaik7Ci0JCQkJc2VxX3B1dGMobSwgJ1xuJyk7Ci0JCQl9Ci0KLQkJ
CXRvdGFsICs9IGNvdW50OwotCQl9Ci0JfQotCi0Jc2VxX3ByaW50ZihtLCAidG90YWw6ICVkXG4i
LCB0b3RhbCk7Ci0KLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKLQotCXJldHVy
biAwOwotfQotCiBzdGF0aWMgdm9pZCBnZW44X2Rpc3BsYXlfaW50ZXJydXB0X2luZm8oc3RydWN0
IHNlcV9maWxlICptKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5v
ZGVfdG9faTkxNShtLT5wcml2YXRlKTsKQEAgLTQzNzEsNyArNDMwNCw2IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX2luZm9fbGlzdCBpOTE1X2RlYnVnZnNfbGlzdFtdID0gewogCXsiaTkxNV9n
ZW1fb2JqZWN0cyIsIGk5MTVfZ2VtX29iamVjdF9pbmZvLCAwfSwKIAl7Imk5MTVfZ2VtX2ZlbmNl
X3JlZ3MiLCBpOTE1X2dlbV9mZW5jZV9yZWdzX2luZm8sIDB9LAogCXsiaTkxNV9nZW1faW50ZXJy
dXB0IiwgaTkxNV9pbnRlcnJ1cHRfaW5mbywgMH0sCi0JeyJpOTE1X2dlbV9iYXRjaF9wb29sIiwg
aTkxNV9nZW1fYmF0Y2hfcG9vbF9pbmZvLCAwfSwKIAl7Imk5MTVfZ3VjX2luZm8iLCBpOTE1X2d1
Y19pbmZvLCAwfSwKIAl7Imk5MTVfZ3VjX2xvYWRfc3RhdHVzIiwgaTkxNV9ndWNfbG9hZF9zdGF0
dXNfaW5mbywgMH0sCiAJeyJpOTE1X2d1Y19sb2dfZHVtcCIsIGk5MTVfZ3VjX2xvZ19kdW1wLCAw
fSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wuYwpkZWxldGVkIGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggYjE3ZjIzOTkxMjUzLi4wMDAwMDAwMDAwMDAKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCisrKyAvZGV2L251bGwKQEAg
LTEsMTMyICswLDAgQEAKLS8qCi0gKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCi0gKgot
ICogQ29weXJpZ2h0IMKpIDIwMTQtMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgotICovCi0KLSNpbmNs
dWRlICJpOTE1X2dlbV9iYXRjaF9wb29sLmgiCi0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKLQotLyoq
Ci0gKiBET0M6IGJhdGNoIHBvb2wKLSAqCi0gKiBJbiBvcmRlciB0byBzdWJtaXQgYmF0Y2ggYnVm
ZmVycyBhcyAnc2VjdXJlJywgdGhlIHNvZnR3YXJlIGNvbW1hbmQgcGFyc2VyCi0gKiBtdXN0IGVu
c3VyZSB0aGF0IGEgYmF0Y2ggYnVmZmVyIGNhbm5vdCBiZSBtb2RpZmllZCBhZnRlciBwYXJzaW5n
LiBJdCBkb2VzCi0gKiB0aGlzIGJ5IGNvcHlpbmcgdGhlIHVzZXIgcHJvdmlkZWQgYmF0Y2ggYnVm
ZmVyIGNvbnRlbnRzIHRvIGEga2VybmVsIG93bmVkCi0gKiBidWZmZXIgZnJvbSB3aGljaCB0aGUg
aGFyZHdhcmUgd2lsbCBhY3R1YWxseSBleGVjdXRlLCBhbmQgYnkgY2FyZWZ1bGx5Ci0gKiBtYW5h
Z2luZyB0aGUgYWRkcmVzcyBzcGFjZSBiaW5kaW5ncyBmb3Igc3VjaCBidWZmZXJzLgotICoKLSAq
IFRoZSBiYXRjaCBwb29sIGZyYW1ld29yayBwcm92aWRlcyBhIG1lY2hhbmlzbSBmb3IgdGhlIGRy
aXZlciB0byBtYW5hZ2UgYQotICogc2V0IG9mIHNjcmF0Y2ggYnVmZmVycyB0byB1c2UgZm9yIHRo
aXMgcHVycG9zZS4gVGhlIGZyYW1ld29yayBjYW4gYmUKLSAqIGV4dGVuZGVkIHRvIHN1cHBvcnQg
b3RoZXIgdXNlcyBjYXNlcyBzaG91bGQgdGhleSBhcmlzZS4KLSAqLwotCi0vKioKLSAqIGk5MTVf
Z2VtX2JhdGNoX3Bvb2xfaW5pdCgpIC0gaW5pdGlhbGl6ZSBhIGJhdGNoIGJ1ZmZlciBwb29sCi0g
KiBAcG9vbDogdGhlIGJhdGNoIGJ1ZmZlciBwb29sCi0gKiBAZW5naW5lOiB0aGUgYXNzb2NpYXRl
ZCByZXF1ZXN0IHN1Ym1pc3Npb24gZW5naW5lCi0gKi8KLXZvaWQgaTkxNV9nZW1fYmF0Y2hfcG9v
bF9pbml0KHN0cnVjdCBpOTE1X2dlbV9iYXRjaF9wb29sICpwb29sLAotCQkJICAgICAgc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewotCWludCBuOwotCi0JcG9vbC0+ZW5naW5lID0g
ZW5naW5lOwotCi0JZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7
IG4rKykKLQkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotfQotCi0vKioK
LSAqIGk5MTVfZ2VtX2JhdGNoX3Bvb2xfZmluaSgpIC0gY2xlYW4gdXAgYSBiYXRjaCBidWZmZXIg
cG9vbAotICogQHBvb2w6IHRoZSBwb29sIHRvIGNsZWFuIHVwCi0gKgotICogTm90ZTogQ2FsbGVy
cyBtdXN0IGhvbGQgdGhlIHN0cnVjdF9tdXRleC4KLSAqLwotdm9pZCBpOTE1X2dlbV9iYXRjaF9w
b29sX2Zpbmkoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wpCi17Ci0JaW50IG47Ci0K
LQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZwb29sLT5lbmdpbmUtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOwotCi0JZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUocG9vbC0+Y2FjaGVfbGlzdCk7IG4r
KykgewotCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCAqbmV4dDsKLQotCQlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3NhZmUob2JqLCBuZXh0LAotCQkJCQkgJnBvb2wtPmNhY2hlX2xpc3Rb
bl0sCi0JCQkJCSBiYXRjaF9wb29sX2xpbmspCi0JCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
Ci0KLQkJSU5JVF9MSVNUX0hFQUQoJnBvb2wtPmNhY2hlX2xpc3Rbbl0pOwotCX0KLX0KLQotLyoq
Ci0gKiBpOTE1X2dlbV9iYXRjaF9wb29sX2dldCgpIC0gYWxsb2NhdGUgYSBidWZmZXIgZnJvbSB0
aGUgcG9vbAotICogQHBvb2w6IHRoZSBiYXRjaCBidWZmZXIgcG9vbAotICogQHNpemU6IHRoZSBt
aW5pbXVtIGRlc2lyZWQgc2l6ZSBvZiB0aGUgcmV0dXJuZWQgYnVmZmVyCi0gKgotICogUmV0dXJu
cyBhbiBpbmFjdGl2ZSBidWZmZXIgZnJvbSBAcG9vbCB3aXRoIGF0IGxlYXN0IEBzaXplIGJ5dGVz
LAotICogd2l0aCB0aGUgcGFnZXMgcGlubmVkLiBUaGUgY2FsbGVyIG11c3QgaTkxNV9nZW1fb2Jq
ZWN0X3VucGluX3BhZ2VzKCkKLSAqIG9uIHRoZSByZXR1cm5lZCBvYmplY3QuCi0gKgotICogTm90
ZTogQ2FsbGVycyBtdXN0IGhvbGQgdGhlIHN0cnVjdF9tdXRleAotICoKLSAqIFJldHVybjogdGhl
IGJ1ZmZlciBvYmplY3Qgb3IgYW4gZXJyb3IgcG9pbnRlcgotICovCi1zdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqCi1pOTE1X2dlbV9iYXRjaF9wb29sX2dldChzdHJ1Y3QgaTkxNV9nZW1fYmF0
Y2hfcG9vbCAqcG9vbCwKLQkJCXNpemVfdCBzaXplKQotewotCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGxpc3RfaGVhZCAqbGlzdDsKLQlpbnQgbiwgcmV0OwotCi0J
bG9ja2RlcF9hc3NlcnRfaGVsZCgmcG9vbC0+ZW5naW5lLT5pOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKLQotCS8qIENvbXB1dGUgYSBwb3dlci1vZi10d28gYnVja2V0LCBidXQgdGhyb3cgZXZlcnl0
aGluZyBncmVhdGVyIHRoYW4KLQkgKiAxNktpQiBpbnRvIHRoZSBzYW1lIGJ1Y2tldDogaS5lLiB0
aGUgdGhlIGJ1Y2tldHMgaG9sZCBvYmplY3RzIG9mCi0JICogKDEgcGFnZSwgMiBwYWdlcywgNCBw
YWdlcywgOCsgcGFnZXMpLgotCSAqLwotCW4gPSBmbHMoc2l6ZSA+PiBQQUdFX1NISUZUKSAtIDE7
Ci0JaWYgKG4gPj0gQVJSQVlfU0laRShwb29sLT5jYWNoZV9saXN0KSkKLQkJbiA9IEFSUkFZX1NJ
WkUocG9vbC0+Y2FjaGVfbGlzdCkgLSAxOwotCWxpc3QgPSAmcG9vbC0+Y2FjaGVfbGlzdFtuXTsK
LQotCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCBsaXN0LCBiYXRjaF9wb29sX2xpbmspIHsKLQkJ
c3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqcmVzdiA9IG9iai0+YmFzZS5yZXN2OwotCi0JCS8q
IFRoZSBiYXRjaGVzIGFyZSBzdHJpY3RseSBMUlUgb3JkZXJlZCAqLwotCQlpZiAoIXJlc2VydmF0
aW9uX29iamVjdF90ZXN0X3NpZ25hbGVkX3JjdShyZXN2LCB0cnVlKSkKLQkJCWJyZWFrOwotCi0J
CS8qCi0JCSAqIFRoZSBvYmplY3QgaXMgbm93IGlkbGUsIGNsZWFyIHRoZSBhcnJheSBvZiBzaGFy
ZWQKLQkJICogZmVuY2VzIGJlZm9yZSB3ZSBhZGQgYSBuZXcgcmVxdWVzdC4gQWx0aG91Z2gsIHdl
Ci0JCSAqIHJlbWFpbiBvbiB0aGUgc2FtZSBlbmdpbmUsIHdlIG1heSBiZSBvbiBhIGRpZmZlcmVu
dAotCQkgKiB0aW1lbGluZSBhbmQgc28gbWF5IGNvbnRpbnVhbGx5IGdyb3cgdGhlIGFycmF5LAot
CQkgKiB0cmFwcGluZyBhIHJlZmVyZW5jZSB0byBhbGwgdGhlIG9sZCBmZW5jZXMsIHJhdGhlcgot
CQkgKiB0aGFuIHJlcGxhY2UgdGhlIGV4aXN0aW5nIGZlbmNlLgotCQkgKi8KLQkJaWYgKHJjdV9h
Y2Nlc3NfcG9pbnRlcihyZXN2LT5mZW5jZSkpIHsKLQkJCXJlc2VydmF0aW9uX29iamVjdF9sb2Nr
KHJlc3YsIE5VTEwpOwotCQkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9leGNsX2ZlbmNlKHJlc3Ys
IE5VTEwpOwotCQkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhyZXN2KTsKLQkJfQotCi0JCWlm
IChvYmotPmJhc2Uuc2l6ZSA+PSBzaXplKQotCQkJZ290byBmb3VuZDsKLQl9Ci0KLQlvYmogPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKHBvb2wtPmVuZ2luZS0+aTkxNSwgc2l6ZSk7
Ci0JaWYgKElTX0VSUihvYmopKQotCQlyZXR1cm4gb2JqOwotCi1mb3VuZDoKLQlyZXQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIEVSUl9QVFIo
cmV0KTsKLQotCWxpc3RfbW92ZV90YWlsKCZvYmotPmJhdGNoX3Bvb2xfbGluaywgbGlzdCk7Ci0J
cmV0dXJuIG9iajsKLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2JhdGNoX3Bvb2wuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wu
aApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggZmVlZWVlYWE1NGQ4Li4wMDAwMDAwMDAw
MDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5oCisrKyAv
ZGV2L251bGwKQEAgLTEsMjYgKzAsMCBAQAotLyoKLSAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBNSVQKLSAqCi0gKiBDb3B5cmlnaHQgwqkgMjAxNC0yMDE4IEludGVsIENvcnBvcmF0aW9uCi0g
Ki8KLQotI2lmbmRlZiBJOTE1X0dFTV9CQVRDSF9QT09MX0gKLSNkZWZpbmUgSTkxNV9HRU1fQkFU
Q0hfUE9PTF9ICi0KLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgotCi1zdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdDsKLXN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7Ci0KLXN0cnVjdCBpOTE1X2dlbV9i
YXRjaF9wb29sIHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0Jc3RydWN0IGxp
c3RfaGVhZCBjYWNoZV9saXN0WzRdOwotfTsKLQotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2lu
aXQoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wsCi0JCQkgICAgICBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpOwotdm9pZCBpOTE1X2dlbV9iYXRjaF9wb29sX2Zpbmkoc3Ry
dWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wgKnBvb2wpOwotc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKgotaTkxNV9nZW1fYmF0Y2hfcG9vbF9nZXQoc3RydWN0IGk5MTVfZ2VtX2JhdGNoX3Bvb2wg
KnBvb2wsIHNpemVfdCBzaXplKTsKLQotI2VuZGlmIC8qIEk5MTVfR0VNX0JBVENIX1BPT0xfSCAq
LwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
