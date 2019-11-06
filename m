Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D57FF17C7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E3E6ED6B;
	Wed,  6 Nov 2019 13:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBFB26ED69;
 Wed,  6 Nov 2019 13:58:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19102658-1500050 
 for multiple; Wed, 06 Nov 2019 13:57:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Wed,  6 Nov 2019 13:57:38 +0000
Message-Id: <20191106135739.7583-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106135739.7583-1-chris@chris-wilson.co.uk>
References: <20191106135739.7583-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/selftests: Wrap vm_mmap()
 around GEM objects
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJvdmlkZSBhIHV0aWxpdHkgZnVuY3Rpb24gdG8gY3JlYXRlIGEgdm1hIGNvcnJlc3BvbmRpbmcg
dG8gYW4gbW1hcCgpIG9mCm91ciBkZXZpY2UuIEFuZCB1c2UgaXQgdG8gZXhlcmNpc2UgdGhlIGVx
dWl2YWxlbnQgb2YgdXNlcnNwYWNlCnBlcmZvcm1pbmcgYSBHVFQgbW1hcCBvZiBvdXIgb2JqZWN0
cy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAxICsK
IC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyAgICB8IDk3ICsrKysr
KysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5j
ICAgICB8IDM5ICsrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21t
YXAuaCAgICAgfCAxOSArKysrCiA0IGZpbGVzIGNoYW5nZWQsIDE1NiBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFw
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0
X21tYXAuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggOTBkY2YwOWY1MmNjLi5lMGZkMTBjMGNm
YjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0yNTksNiArMjU5LDcgQEAgaTkxNS0kKENPTkZJ
R19EUk1fSTkxNV9TRUxGVEVTVCkgKz0gXAogCXNlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0Lm8gXAog
CXNlbGZ0ZXN0cy9pZ3RfZmx1c2hfdGVzdC5vIFwKIAlzZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5v
IFwKKwlzZWxmdGVzdHMvaWd0X21tYXAubyBcCiAJc2VsZnRlc3RzL2lndF9yZXNldC5vIFwKIAlz
ZWxmdGVzdHMvaWd0X3NwaW5uZXIubwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCmluZGV4IDI5YjIwNzdiNzNkMi4uM2M4ZjIyOTdi
ZTg2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYwpAQCAtMTIsNiArMTIsNyBAQAogI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIK
ICNpbmNsdWRlICJzZWxmdGVzdHMvaTkxNV9yYW5kb20uaCIKICNpbmNsdWRlICJzZWxmdGVzdHMv
aWd0X2ZsdXNoX3Rlc3QuaCIKKyNpbmNsdWRlICJzZWxmdGVzdHMvaWd0X21tYXAuaCIKIAogc3Ry
dWN0IHRpbGUgewogCXVuc2lnbmVkIGludCB3aWR0aDsKQEAgLTY5NCwxMiArNjk1LDEwOCBAQCBz
dGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9leGhhdXN0aW9uKHZvaWQgKmFyZykKIAlnb3RvIG91
dDsKIH0KIAorI2RlZmluZSBleHBhbmQzMih4KSAoKCh4KSA8PCAwKSB8ICgoeCkgPDwgOCkgfCAo
KHgpIDw8IDE2KSB8ICgoeCkgPDwgMjQpKQorc3RhdGljIGludCBpZ3RfbW1hcF9ndHQodm9pZCAq
YXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJc3RydWN0IHZtX2FyZWFfc3RydWN0ICphcmVhOwor
CXVuc2lnbmVkIGxvbmcgYWRkcjsKKwl2b2lkICp2YWRkcjsKKwlpbnQgZXJyLCBpOworCisJb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBQQUdFX1NJWkUpOworCWlm
IChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCXZhZGRyID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJaWYgKElTX0VSUih2YWRkcikp
IHsKKwkJZXJyID0gUFRSX0VSUih2YWRkcik7CisJCWdvdG8gb3V0OworCX0KKwltZW1zZXQodmFk
ZHIsIFBPSVNPTl9JTlVTRSwgUEFHRV9TSVpFKTsKKwlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFw
KG9iaik7CisJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOworCisJZXJyID0gY3JlYXRl
X21tYXBfb2Zmc2V0KG9iaik7CisJaWYgKGVycikKKwkJZ290byBvdXQ7CisKKwlhZGRyID0gaWd0
X21tYXBfbm9kZShpOTE1LCAmb2JqLT5iYXNlLnZtYV9ub2RlLAorCQkJICAgICAwLCBQUk9UX1dS
SVRFLCBNQVBfU0hBUkVEKTsKKwlpZiAoSVNfRVJSX1ZBTFVFKGFkZHIpKSB7CisJCWVyciA9IGFk
ZHI7CisJCWdvdG8gb3V0OworCX0KKworCXByX2RlYnVnKCJpZ3RfbW1hcChvYmo6Z3R0KSBAICVs
eFxuIiwgYWRkcik7CisKKwlhcmVhID0gZmluZF92bWEoY3VycmVudC0+bW0sIGFkZHIpOworCWlm
ICghYXJlYSkgeworCQlwcl9lcnIoIkRpZCBub3QgY3JlYXRlIGEgdm1fYXJlYV9zdHJ1Y3QgZm9y
IHRoZSBtbWFwXG4iKTsKKwkJZXJyID0gLUVJTlZBTDsKKwkJZ290byBvdXRfdW5tYXA7CisJfQor
CisJaWYgKGFyZWEtPnZtX3ByaXZhdGVfZGF0YSAhPSBvYmopIHsKKwkJcHJfZXJyKCJ2bV9hcmVh
X3N0cnVjdCBkaWQgbm90IHBvaW50IGJhY2sgdG8gb3VyIG9iamVjdCFcbiIpOworCQllcnIgPSAt
RUlOVkFMOworCQlnb3RvIG91dF91bm1hcDsKKwl9CisKKwlmb3IgKGkgPSAwOyBpIDwgUEFHRV9T
SVpFIC8gc2l6ZW9mKHUzMik7IGkrKykgeworCQl1MzIgX191c2VyICp1eCA9IHU2NF90b191c2Vy
X3B0cigodTY0KShhZGRyICsgaSAqIHNpemVvZioodXgpKSk7CisJCXUzMiB4OworCisJCWlmIChn
ZXRfdXNlcih4LCB1eCkpIHsKKwkJCXByX2VycigiVW5hYmxlIHRvIHJlYWQgZnJvbSBHVFQgbW1h
cCwgb2Zmc2V0OiV6ZFxuIiwKKwkJCSAgICAgICBpICogc2l6ZW9mKHgpKTsKKwkJCWVyciA9IC1F
RkFVTFQ7CisJCQlicmVhazsKKwkJfQorCisJCWlmICh4ICE9IGV4cGFuZDMyKFBPSVNPTl9JTlVT
RSkpIHsKKwkJCXByX2VycigiUmVhZCBpbmNvcnJlY3QgdmFsdWUgZnJvbSBHVFQgbW1hcCwgb2Zm
c2V0OiV6ZCwgZm91bmQ6JXgsIGV4cGVjdGVkOiV4XG4iLAorCQkJICAgICAgIGkgKiBzaXplb2Yo
eCksIHgsIGV4cGFuZDMyKFBPSVNPTl9JTlVTRSkpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWJy
ZWFrOworCQl9CisKKwkJeCA9IGV4cGFuZDMyKFBPSVNPTl9GUkVFKTsKKwkJaWYgKHB1dF91c2Vy
KHgsIHV4KSkgeworCQkJcHJfZXJyKCJVbmFibGUgdG8gd3JpdGUgdG8gR1RUIG1tYXAsIG9mZnNl
dDolemRcbiIsCisJCQkgICAgICAgaSAqIHNpemVvZih4KSk7CisJCQllcnIgPSAtRUZBVUxUOwor
CQkJYnJlYWs7CisJCX0KKwl9CisKK291dF91bm1hcDoKKwl2bV9tdW5tYXAoYWRkciwgUEFHRV9T
SVpFKTsKKworCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9G
T1JDRV9XQyk7CisJaWYgKElTX0VSUih2YWRkcikpIHsKKwkJZXJyID0gUFRSX0VSUih2YWRkcik7
CisJCWdvdG8gb3V0OworCX0KKwlpZiAoZXJyID09IDAgJiYgbWVtY2hyX2ludih2YWRkciwgUE9J
U09OX0ZSRUUsIFBBR0VfU0laRSkpIHsKKwkJcHJfZXJyKCJXcml0ZSB2aWEgR0dUVCBtbWFwIGRp
ZCBub3QgbGFuZCBpbiBiYWNraW5nIHN0b3JlXG4iKTsKKwkJZXJyID0gLUVJTlZBTDsKKwl9CisJ
aTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOworCitvdXQ6CisJaTkxNV9nZW1fb2JqZWN0
X3B1dChvYmopOworCXJldHVybiBlcnI7Cit9CisKIGludCBpOTE1X2dlbV9tbWFuX2xpdmVfc2Vs
ZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0YXRpYyBjb25zdCBz
dHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CiAJCVNVQlRFU1QoaWd0X3BhcnRpYWxfdGls
aW5nKSwKIAkJU1VCVEVTVChpZ3Rfc21va2VfdGlsaW5nKSwKIAkJU1VCVEVTVChpZ3RfbW1hcF9v
ZmZzZXRfZXhoYXVzdGlvbiksCisJCVNVQlRFU1QoaWd0X21tYXBfZ3R0KSwKIAl9OwogCiAJcmV0
dXJuIGk5MTVfc3VidGVzdHModGVzdHMsIGk5MTUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaWd0X21tYXAuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAu
LjU4M2E0ZmY4YjhjOQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pZ3RfbW1hcC5jCkBAIC0wLDAgKzEsMzkgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRp
b24KKyAqLworCisjaW5jbHVkZSA8ZHJtL2RybV9maWxlLmg+CisKKyNpbmNsdWRlICJpOTE1X2Ry
di5oIgorI2luY2x1ZGUgImlndF9tbWFwLmgiCisKK3Vuc2lnbmVkIGxvbmcgaWd0X21tYXBfbm9k
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgICBzdHJ1Y3QgZHJtX3ZtYV9v
ZmZzZXRfbm9kZSAqbm9kZSwKKwkJCSAgICB1bnNpZ25lZCBsb25nIGFkZHIsCisJCQkgICAgdW5z
aWduZWQgbG9uZyBwcm90LAorCQkJICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCit7CisJc3RydWN0
IGZpbGUgKmZpbGU7CisJaW50IGVycjsKKworCS8qIFByZXRlbmQgdG8gb3BlbigiL2Rldi9kcmkv
Y2FyZDAiKSAqLworCWZpbGUgPSBtb2NrX2RybV9nZXRmaWxlKGk5MTUtPmRybS5wcmltYXJ5LCBP
X1JEV1IpOworCWlmIChJU19FUlIoZmlsZSkpCisJCXJldHVybiBQVFJfRVJSKGZpbGUpOworCisJ
ZXJyID0gZHJtX3ZtYV9ub2RlX2FsbG93KG5vZGUsIGZpbGUtPnByaXZhdGVfZGF0YSk7CisJaWYg
KGVycikgeworCQlhZGRyID0gZXJyOworCQlnb3RvIG91dF9maWxlOworCX0KKworCWFkZHIgPSB2
bV9tbWFwKGZpbGUsIGFkZHIsIGRybV92bWFfbm9kZV9zaXplKG5vZGUpIDw8IFBBR0VfU0hJRlQs
CisJCSAgICAgICBwcm90LCBmbGFncywgZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKG5vZGUpKTsK
KworCWRybV92bWFfbm9kZV9yZXZva2Uobm9kZSwgZmlsZS0+cHJpdmF0ZV9kYXRhKTsKK291dF9m
aWxlOgorCWZwdXQoZmlsZSk7CisJcmV0dXJuIGFkZHI7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uNmU3MTZjYjU5ZDdlCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2lndF9tbWFwLmgKQEAgLTAsMCArMSwxOSBAQAorLyoKKyAqIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jw
b3JhdGlvbgorICovCisKKyNpZm5kZWYgSUdUX01NQVBfSAorI2RlZmluZSBJR1RfTU1BUF9ICisK
K3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGU7CisK
K3Vuc2lnbmVkIGxvbmcgaWd0X21tYXBfbm9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKKwkJCSAgICBzdHJ1Y3QgZHJtX3ZtYV9vZmZzZXRfbm9kZSAqbm9kZSwKKwkJCSAgICB1bnNp
Z25lZCBsb25nIGFkZHIsCisJCQkgICAgdW5zaWduZWQgbG9uZyBwcm90LAorCQkJICAgIHVuc2ln
bmVkIGxvbmcgZmxhZ3MpOworCisjZW5kaWYgLyogSUdUX01NQVBfSCAqLwotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
