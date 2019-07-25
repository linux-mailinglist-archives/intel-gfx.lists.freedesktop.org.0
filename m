Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2489974EEB
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 15:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D47B6E753;
	Thu, 25 Jul 2019 13:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC7A6E753
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 13:15:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17598097-1500050 
 for multiple; Thu, 25 Jul 2019 14:14:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 14:14:47 +0100
Message-Id: <20190725131447.27515-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725131447.27515-1-chris@chris-wilson.co.uk>
References: <20190725131447.27515-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Unshare the idle-barrier from
 other kernel requests
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

VW5kZXIgc29tZSBjaXJjdW1zdGFuY2VzIChzZWUgaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90
ZV9yZXF1ZXN0KSwgd2UKbWF5IHVzZSBhIHJlcXVlc3QgYWxvbmcgYSBrZXJuZWwgY29udGV4dCB0
byBtb2RpZnkgdGhlIGxvZ2ljYWwgc3RhdGUgb2YKYW5vdGhlci4gVG8ga2VlcCB0aGUgdGFyZ2V0
IGNvbnRleHQgaW4gcGxhY2Ugd2hpbGUgdGhlIHJlcXVlc3QgZXhlY3V0ZXMsCndlIHRha2UgYW4g
YWN0aXZlIHJlZmVyZW5jZSBvbiBpdCB1c2luZyB0aGUga2VybmVsIHRpbWVsaW5lLiBUaGlzIGlz
IHRoZQpzYW1lIHRpbWVsaW5lIGFzIHdlIHVzZSBmb3IgdGhlIGlkbGUtYmFycmllciwgYW5kIHNv
IHdlIGVuZCB1cCByZXVzaW5nCnRoZSBzYW1lIGFjdGl2ZSBub2RlLiBFeGNlcHQgdGhhdCB0aGUg
aWRsZSBiYXJyaWVyIGlzIHNwZWNpYWwgYW5kIGNhbm5vdApiZSByZXVzZWQgaW4gdGhpcyBtYW5u
ZXIhIEdpdmUgdGhlIGlkbGUtYmFycmllciBhIHJlc2VydmVkIHRpbWVsaW5lCmluZGV4ICgwKSBz
byB0aGF0IGl0IHdpbGwgYWx3YXlzIGJlIHVuaXF1ZSAoZ2l2ZSBvciB0YWtlIHdlIG1heSBpc3N1
ZQptdWx0aXBsZSBpZGxlIGJhcnJpZXJzIGFjcm9zcyBtdWx0aXBsZSBlbmdpbmVzKS4KClJlcG9y
dGVkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
CkZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50
aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNoIikKRml4ZXM6IGE5ODc3ZGEy
ZDYyOSAoImRybS9pOTE1L29hOiBSZWNvbmZpZ3VyZSBjb250ZXh0cyBvbiB0aGUgZmx5IikKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBM
aW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpUZXN0ZWQtYnk6IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgICAgICAgfCAgNDAgKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmggICAgICAgfCAgMTMgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyAgICB8IDMyMiArKysrKysrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgICB8ICA2NyAr
KystCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDMg
Ky0KIDUgZmlsZXMgY2hhbmdlZCwgNDA4IGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwppbmRleCBkNjRiNDVm
N2VjNmQuLjIxMWFjNjU2OGE1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYwpAQCAtMTYyLDIzICsxNjIsNDEgQEAgc3RhdGljIGludCBfX2ludGVsX2NvbnRleHRfYWN0
aXZlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQogCWlmIChlcnIpCiAJCWdvdG8gZXJyX3Jp
bmc7CiAKKwlyZXR1cm4gMDsKKworZXJyX3Jpbmc6CisJaW50ZWxfcmluZ191bnBpbihjZS0+cmlu
Zyk7CitlcnJfcHV0OgorCWludGVsX2NvbnRleHRfcHV0KGNlKTsKKwlyZXR1cm4gZXJyOworfQor
CitpbnQgaW50ZWxfY29udGV4dF9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCit7CisJaW50IGVycjsKKworCWVyciA9IGk5MTVfYWN0aXZlX2FjcXVpcmUoJmNlLT5hY3Rp
dmUpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKIAkvKiBQcmVhbGxvY2F0ZSB0cmFja2lu
ZyBub2RlcyAqLwogCWlmICghaTkxNV9nZW1fY29udGV4dF9pc19rZXJuZWwoY2UtPmdlbV9jb250
ZXh0KSkgewogCQllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIo
JmNlLT5hY3RpdmUsCiAJCQkJCQkJICAgICAgY2UtPmVuZ2luZSk7Ci0JCWlmIChlcnIpCi0JCQln
b3RvIGVycl9zdGF0ZTsKKwkJaWYgKGVycikgeworCQkJaTkxNV9hY3RpdmVfcmVsZWFzZSgmY2Ut
PmFjdGl2ZSk7CisJCQlyZXR1cm4gZXJyOworCQl9CiAJfQogCiAJcmV0dXJuIDA7Cit9CiAKLWVy
cl9zdGF0ZToKLQlfX2NvbnRleHRfdW5waW5fc3RhdGUoY2UtPnN0YXRlKTsKLWVycl9yaW5nOgot
CWludGVsX3JpbmdfdW5waW4oY2UtPnJpbmcpOwotZXJyX3B1dDoKLQlpbnRlbF9jb250ZXh0X3B1
dChjZSk7Ci0JcmV0dXJuIGVycjsKK3ZvaWQgaW50ZWxfY29udGV4dF9hY3RpdmVfcmVsZWFzZShz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJLyogTm9kZXMgcHJlYWxsb2NhdGVkIGluIGlu
dGVsX2NvbnRleHRfYWN0aXZlKCkgKi8KKwlpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoJmNl
LT5hY3RpdmUpOworCWk5MTVfYWN0aXZlX3JlbGVhc2UoJmNlLT5hY3RpdmUpOwogfQogCiB2b2lk
CkBAIC0yOTcsMyArMzE1LDcgQEAgc3RydWN0IGk5MTVfcmVxdWVzdCAqaW50ZWxfY29udGV4dF9j
cmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAKIAlyZXR1cm4gcnE7CiB9
CisKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKKyNpbmNsdWRlICJz
ZWxmdGVzdF9jb250ZXh0LmMiCisjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2NvbnRleHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Nv
bnRleHQuaAppbmRleCAyM2M3ZTRjMGNlN2MuLjA3Zjk5MjRkZTQ4ZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaApAQCAtMTA0LDE3ICsxMDQsOCBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgaW50ZWxfY29udGV4dF9leGl0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAkJ
Y2UtPm9wcy0+ZXhpdChjZSk7CiB9CiAKLXN0YXRpYyBpbmxpbmUgaW50IGludGVsX2NvbnRleHRf
YWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQotewotCXJldHVybiBpOTE1
X2FjdGl2ZV9hY3F1aXJlKCZjZS0+YWN0aXZlKTsKLX0KLQotc3RhdGljIGlubGluZSB2b2lkIGlu
dGVsX2NvbnRleHRfYWN0aXZlX3JlbGVhc2Uoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQotewot
CS8qIE5vZGVzIHByZWFsbG9jYXRlZCBpbiBpbnRlbF9jb250ZXh0X2FjdGl2ZSgpICovCi0JaTkx
NV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyKCZjZS0+YWN0aXZlKTsKLQlpOTE1X2FjdGl2ZV9yZWxl
YXNlKCZjZS0+YWN0aXZlKTsKLX0KK2ludCBpbnRlbF9jb250ZXh0X2FjdGl2ZV9hY3F1aXJlKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSk7Cit2b2lkIGludGVsX2NvbnRleHRfYWN0aXZlX3JlbGVh
c2Uoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKTsKIAogc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqaW50ZWxfY29udGV4dF9nZXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQog
ewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYjQwZWZkYWFiZGQ1Ci0tLSAvZGV2L251bGwK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCkBAIC0wLDAg
KzEsMzIyIEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKyAqCisg
KiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlICJp
OTE1X3NlbGZ0ZXN0LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKKworI2luY2x1ZGUgImdlbS9z
ZWxmdGVzdHMvbW9ja19jb250ZXh0LmgiCisjaW5jbHVkZSAic2VsZnRlc3RzL2lndF9mbHVzaF90
ZXN0LmgiCisjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZHJtLmgiCisKK3N0YXRpYyBpbnQgcmVx
dWVzdF9zeW5jKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCWxvbmcgdGltZW91dDsKKwlp
bnQgZXJyID0gMDsKKworCWk5MTVfcmVxdWVzdF9nZXQocnEpOworCisJaTkxNV9yZXF1ZXN0X2Fk
ZChycSk7CisJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLCAwLCBIWiAvIDEwKTsKKwlp
ZiAodGltZW91dCA8IDApCisJCWVyciA9IHRpbWVvdXQ7CisJZWxzZQorCQlpOTE1X3JlcXVlc3Rf
cmV0aXJlX3VwdG8ocnEpOworCisJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisKKwlyZXR1cm4gZXJy
OworfQorCitzdGF0aWMgaW50IGNvbnRleHRfc3luYyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Up
Cit7CisJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCA9IGNlLT5yaW5nLT50aW1lbGluZTsKKwlp
bnQgZXJyID0gMDsKKworCWRvIHsKKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJCWxvbmcg
dGltZW91dDsKKworCQlyY3VfcmVhZF9sb2NrKCk7CisJCXJxID0gcmN1X2RlcmVmZXJlbmNlKHRs
LT5sYXN0X3JlcXVlc3QucmVxdWVzdCk7CisJCWlmIChycSkKKwkJCXJxID0gaTkxNV9yZXF1ZXN0
X2dldF9yY3UocnEpOworCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJaWYgKCFycSkKKwkJCWJyZWFr
OworCisJCXRpbWVvdXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgSFogLyAxMCk7CisJCWlm
ICh0aW1lb3V0IDwgMCkKKwkJCWVyciA9IHRpbWVvdXQ7CisJCWVsc2UKKwkJCWk5MTVfcmVxdWVz
dF9yZXRpcmVfdXB0byhycSk7CisKKwkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisJfSB3aGlsZSAo
IWVycik7CisKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IF9fbGl2ZV9hY3RpdmVfY29u
dGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCisJCQkJIHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpmaXhtZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IHBh
c3M7CisJaW50IGVycjsKKworCS8qCisJICogV2Uga2VlcCBhY3RpdmUgY29udGV4dHMgYWxpdmUg
dW50aWwgYWZ0ZXIgYSBzdWJzZXF1ZW50IGNvbnRleHQKKwkgKiBzd2l0Y2ggYXMgdGhlIGZpbmFs
IHdyaXRlIGZyb20gdGhlIGNvbnRleHQtc2F2ZSB3aWxsIGJlIGFmdGVyCisJICogd2UgcmV0aXJl
IHRoZSBmaW5hbCByZXF1ZXN0LiBXZSB0cmFjayB3aGVuIHdlIHVucGluIHRoZSBjb250ZXh0LAor
CSAqIHVuZGVyIHRoZSBwcmVzdW1wdGlvbiB0aGF0IHRoZSBmaW5hbCBwaW4gaXMgZnJvbSB0aGUg
bGFzdCByZXF1ZXN0LAorCSAqIGFuZCBpbnN0ZWFkIG9mIGltbWVkaWF0ZWx5IHVucGlubmluZyB0
aGUgY29udGV4dCwgd2UgYWRkIGEgdGFzaworCSAqIHRvIHVucGluIHRoZSBjb250ZXh0IGZyb20g
dGhlIG5leHQgaWRsZS1iYXJyaWVyLgorCSAqCisJICogVGhpcyB0ZXN0IG1ha2VzIHN1cmUgdGhh
dCB0aGUgY29udGV4dCBpcyBrZXB0IGFsaXZlIHVudGlsIGEKKwkgKiBzdWJzZXF1ZW50IGlkbGUt
YmFycmllciAoZW1pdHRlZCB3aGVuIHRoZSBlbmdpbmUgd2FrZXJlZiBoaXRzIDAKKwkgKiB3aXRo
IG5vIG1vcmUgb3V0c3RhbmRpbmcgcmVxdWVzdHMpLgorCSAqLworCisJaWYgKGludGVsX2VuZ2lu
ZV9wbV9pc19hd2FrZShlbmdpbmUpKSB7CisJCXByX2VycigiJXMgaXMgYXdha2UgYmVmb3JlIHN0
YXJ0aW5nICVzIVxuIiwKKwkJICAgICAgIGVuZ2luZS0+bmFtZSwgX19mdW5jX18pOworCQlyZXR1
cm4gLUVJTlZBTDsKKwl9CisKKwljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGZpeG1lLCBlbmdp
bmUpOworCWlmICghY2UpCisJCXJldHVybiAtRU5PTUVNOworCisJZm9yIChwYXNzID0gMDsgcGFz
cyA8PSAyOyBwYXNzKyspIHsKKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisKKwkJcnEgPSBp
bnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGNlKTsKKwkJaWYgKElTX0VSUihycSkpIHsKKwkJ
CWVyciA9IFBUUl9FUlIocnEpOworCQkJZ290byBlcnI7CisJCX0KKworCQllcnIgPSByZXF1ZXN0
X3N5bmMocnEpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnI7CisKKwkJLyogQ29udGV4dCB3aWxs
IGJlIGtlcHQgYWN0aXZlIHVudGlsIGFmdGVyIGFuIGlkbGUtYmFycmllci4gKi8KKwkJaWYgKGk5
MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUpKSB7CisJCQlwcl9lcnIoImNvbnRleHQgaXMg
bm90IGFjdGl2ZTsgZXhwZWN0ZWQgaWRsZS1iYXJyaWVyICglcyBwYXNzICVkKVxuIiwKKwkJCSAg
ICAgICBlbmdpbmUtPm5hbWUsIHBhc3MpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJy
OworCQl9CisKKwkJaWYgKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgeworCQkJ
cHJfZXJyKCIlcyBpcyBhc2xlZXAgYmVmb3JlIGlkbGUtYmFycmllclxuIiwKKwkJCSAgICAgICBl
bmdpbmUtPm5hbWUpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyOworCQl9CisJfQor
CisJLyogTm93IG1ha2Ugc3VyZSBvdXIgaWRsZS1iYXJyaWVycyBhcmUgZmx1c2hlZCAqLworCWVy
ciA9IGNvbnRleHRfc3luYyhlbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwlpZiAoZXJyKQorCQln
b3RvIGVycjsKKworCWlmICghaTkxNV9hY3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpIHsKKwkJ
cHJfZXJyKCJjb250ZXh0IGlzIHN0aWxsIGFjdGl2ZSEiKTsKKwkJZXJyID0gLUVJTlZBTDsKKwl9
CisKKwlpZiAoaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpIHsKKwkJc3RydWN0IGRy
bV9wcmludGVyIHAgPSBkcm1fZGVidWdfcHJpbnRlcihfX2Z1bmNfXyk7CisKKwkJaW50ZWxfZW5n
aW5lX2R1bXAoZW5naW5lLCAmcCwKKwkJCQkgICIlcyBpcyBzdGlsbCBhd2FrZSBhZnRlciBpZGxl
LWJhcnJpZXJzXG4iLAorCQkJCSAgZW5naW5lLT5uYW1lKTsKKwkJR0VNX1RSQUNFX0RVTVAoKTsK
KworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycjsKKwl9CisKK2VycjoKKwlpbnRlbF9jb250
ZXh0X3B1dChjZSk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBsaXZlX2FjdGl2ZV9j
b250ZXh0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZml4
bWU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJc3RydWN0IGRybV9maWxlICpmaWxlOwor
CWludCBlcnIgPSAwOworCisJZmlsZSA9IG1vY2tfZmlsZShndC0+aTkxNSk7CisJaWYgKElTX0VS
UihmaWxlKSkKKwkJcmV0dXJuIFBUUl9FUlIoZmlsZSk7CisKKwltdXRleF9sb2NrKCZndC0+aTkx
NS0+ZHJtLnN0cnVjdF9tdXRleCk7CisKKwlmaXhtZSA9IGxpdmVfY29udGV4dChndC0+aTkxNSwg
ZmlsZSk7CisJaWYgKCFmaXhtZSkgeworCQllcnIgPSAtRU5PTUVNOworCQlnb3RvIHVubG9jazsK
Kwl9CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpIHsKKwkJZXJyID0g
X19saXZlX2FjdGl2ZV9jb250ZXh0KGVuZ2luZSwgZml4bWUpOworCQlpZiAoZXJyKQorCQkJYnJl
YWs7CisKKwkJZXJyID0gaWd0X2ZsdXNoX3Rlc3QoZ3QtPmk5MTUsIEk5MTVfV0FJVF9MT0NLRUQp
OworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisJfQorCit1bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZn
dC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJbW9ja19maWxlX2ZyZWUoZ3QtPmk5MTUsIGZp
bGUpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgX19saXZlX3JlbW90ZV9jb250ZXh0
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQgKmZpeG1lKQoreworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpsb2NhbCwgKnJlbW90ZTsK
KwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlpbnQgcGFzczsKKwlpbnQgZXJyOworCisJLyoK
KwkgKiBDaGVjayB0aGF0IG91ciBpZGxlIGJhcnJpZXJzIGRvIG5vdCBpbnRlcmZlcmUgd2l0aCBu
b3JtYWwKKwkgKiBhY3Rpdml0eSB0cmFja2luZy4gSW4gcGFydGljdWxhciwgY2hlY2sgdGhhdCBv
cGVyYXRpbmcKKwkgKiBvbiB0aGUgY29udGV4dCBpbWFnZSByZW1vdGVseSAoaW50ZWxfY29udGV4
dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0KQorCSAqIHdoaWNoIGluc2VydHMgZm9yaWVnbiBmZW5j
ZXMgaW50byBpbnRlbF9jb250ZXh0LmFjdGl2ZSBhcmUgbm90CisJICogY2xvYmJlcmVkLgorCSAq
LworCisJcmVtb3RlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZml4bWUsIGVuZ2luZSk7CisJaWYg
KCFyZW1vdGUpCisJCXJldHVybiAtRU5PTUVNOworCisJbG9jYWwgPSBpbnRlbF9jb250ZXh0X2Ny
ZWF0ZShmaXhtZSwgZW5naW5lKTsKKwlpZiAoIWxvY2FsKSB7CisJCWVyciA9IC1FTk9NRU07CisJ
CWdvdG8gZXJyX3JlbW90ZTsKKwl9CisKKwlmb3IgKHBhc3MgPSAwOyBwYXNzIDw9IDI7IHBhc3Mr
KykgeworCQllcnIgPSBpbnRlbF9jb250ZXh0X3BpbihyZW1vdGUpOworCQlpZiAoZXJyKQorCQkJ
Z290byBlcnJfbG9jYWw7CisKKwkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KGxv
Y2FsKTsKKwkJaWYgKElTX0VSUihycSkpIHsKKwkJCWVyciA9IFBUUl9FUlIocnEpOworCQkJZ290
byBlcnJfdW5waW47CisJCX0KKworCQllcnIgPSBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3Rl
X3JlcXVlc3QocmVtb3RlLCBycSk7CisJCWlmIChlcnIpIHsKKwkJCWk5MTVfcmVxdWVzdF9hZGQo
cnEpOworCQkJZ290byBlcnJfdW5waW47CisJCX0KKworCQllcnIgPSByZXF1ZXN0X3N5bmMocnEp
OworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfdW5waW47CisKKwkJaW50ZWxfY29udGV4dF91bnBp
bihyZW1vdGUpOworCQllcnIgPSBpbnRlbF9jb250ZXh0X3BpbihyZW1vdGUpOworCQlpZiAoZXJy
KQorCQkJZ290byBlcnJfbG9jYWw7CisKKwkJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQpOworCQlpZiAoSVNfRVJSKHJxKSkgeworCQkJZXJyID0gUFRSX0VS
UihycSk7CisJCQlnb3RvIGVycl91bnBpbjsKKwkJfQorCisJCWVyciA9IGludGVsX2NvbnRleHRf
cHJlcGFyZV9yZW1vdGVfcmVxdWVzdChyZW1vdGUsIHJxKTsKKwkJaWYgKGVycikgeworCQkJaTkx
NV9yZXF1ZXN0X2FkZChycSk7CisJCQlnb3RvIGVycl91bnBpbjsKKwkJfQorCisJCWVyciA9IHJl
cXVlc3Rfc3luYyhycSk7CisJCWlmIChlcnIpCisJCQlnb3RvIGVycl91bnBpbjsKKworCQlpbnRl
bF9jb250ZXh0X3VucGluKHJlbW90ZSk7CisKKwkJaWYgKGk5MTVfYWN0aXZlX2lzX2lkbGUoJnJl
bW90ZS0+YWN0aXZlKSkgeworCQkJcHJfZXJyKCJyZW1vdGUgY29udGV4dCBpcyBub3QgYWN0aXZl
OyBleHBlY3RlZCBpZGxlLWJhcnJpZXIgKHBhc3MgJWQpXG4iLCBwYXNzKTsKKwkJCWVyciA9IC1F
SU5WQUw7CisJCQlnb3RvIGVycl9sb2NhbDsKKwkJfQorCX0KKworCWdvdG8gZXJyX2xvY2FsOwor
CitlcnJfdW5waW46CisJaW50ZWxfY29udGV4dF91bnBpbihyZW1vdGUpOworZXJyX2xvY2FsOgor
CWludGVsX2NvbnRleHRfcHV0KGxvY2FsKTsKK2Vycl9yZW1vdGU6CisJaW50ZWxfY29udGV4dF9w
dXQocmVtb3RlKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IGxpdmVfcmVtb3RlX2Nv
bnRleHQodm9pZCAqYXJnKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CisJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpmaXht
ZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7CisJ
aW50IGVyciA9IDA7CisKKwlmaWxlID0gbW9ja19maWxlKGd0LT5pOTE1KTsKKwlpZiAoSVNfRVJS
KGZpbGUpKQorCQlyZXR1cm4gUFRSX0VSUihmaWxlKTsKKworCW11dGV4X2xvY2soJmd0LT5pOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKKworCWZpeG1lID0gbGl2ZV9jb250ZXh0KGd0LT5pOTE1LCBm
aWxlKTsKKwlpZiAoIWZpeG1lKSB7CisJCWVyciA9IC1FTk9NRU07CisJCWdvdG8gdW5sb2NrOwor
CX0KKworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LT5pOTE1LCBpZCkgeworCQllcnIgPSBf
X2xpdmVfcmVtb3RlX2NvbnRleHQoZW5naW5lLCBmaXhtZSk7CisJCWlmIChlcnIpCisJCQlicmVh
azsKKworCQllcnIgPSBpZ3RfZmx1c2hfdGVzdChndC0+aTkxNSwgSTkxNV9XQUlUX0xPQ0tFRCk7
CisJCWlmIChlcnIpCisJCQlicmVhazsKKwl9CisKK3VubG9jazoKKwltdXRleF91bmxvY2soJmd0
LT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwltb2NrX2ZpbGVfZnJlZShndC0+aTkxNSwgZmls
ZSk7CisJcmV0dXJuIGVycjsKK30KKworaW50IGludGVsX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBp
OTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKKwkJU1VCVEVTVChsaXZlX2FjdGl2ZV9jb250ZXh0KSwK
KwkJU1VCVEVTVChsaXZlX3JlbW90ZV9jb250ZXh0KSwKKwl9OworCXN0cnVjdCBpbnRlbF9ndCAq
Z3QgPSAmaTkxNS0+Z3Q7CisKKwlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KSkKKwkJcmV0dXJu
IDA7CisKKwlyZXR1cm4gaW50ZWxfZ3RfbGl2ZV9zdWJ0ZXN0cyh0ZXN0cywgZ3QpOworfQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggMTNmMzA0YTI5ZmM4Li5lMDRhZmI1MTkyNjQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtMTg0LDYgKzE4NCw3IEBAIGFjdGl2
ZV9pbnN0YW5jZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgdTY0IGlkeCkKIAlyZWYtPmNhY2hl
ID0gbm9kZTsKIAltdXRleF91bmxvY2soJnJlZi0+bXV0ZXgpOwogCisJQlVJTERfQlVHX09OKG9m
ZnNldG9mKHR5cGVvZigqbm9kZSksIGJhc2UpKTsKIAlyZXR1cm4gJm5vZGUtPmJhc2U7CiB9CiAK
QEAgLTIxMiw2ICsyMTMsOCBAQCBpbnQgaTkxNV9hY3RpdmVfcmVmKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmLAogCXN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0ICphY3RpdmU7CiAJaW50IGVycjsK
IAorCUdFTV9CVUdfT04oIXRpbWVsaW5lKTsgLyogcmVzZXJ2ZWQgZm9yIGlkbGUtYmFycmllciAq
LworCiAJLyogUHJldmVudCByZWFwaW5nIGluIGNhc2Ugd2UgbWFsbG9jL3dhaXQgd2hpbGUgYnVp
bGRpbmcgdGhlIHRyZWUgKi8KIAllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlKHJlZik7CiAJaWYg
KGVycikKQEAgLTIyMiw2ICsyMjUsNyBAQCBpbnQgaTkxNV9hY3RpdmVfcmVmKHN0cnVjdCBpOTE1
X2FjdGl2ZSAqcmVmLAogCQllcnIgPSAtRU5PTUVNOwogCQlnb3RvIG91dDsKIAl9CisJR0VNX0JV
R19PTihJU19FUlIoYWN0aXZlLT5yZXF1ZXN0KSk7CiAKIAlpZiAoIWk5MTVfYWN0aXZlX3JlcXVl
c3RfaXNzZXQoYWN0aXZlKSkKIAkJYXRvbWljX2luYygmcmVmLT5jb3VudCk7CkBAIC0zNDIsNiAr
MzQ2LDM0IEBAIHZvaWQgaTkxNV9hY3RpdmVfZmluaShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikK
IH0KICNlbmRpZgogCitzdGF0aWMgc3RydWN0IGFjdGl2ZV9ub2RlICppZGxlX2JhcnJpZXIoc3Ry
dWN0IGk5MTVfYWN0aXZlICpyZWYpCit7CisJc3RydWN0IGFjdGl2ZV9ub2RlICppZGxlID0gTlVM
TDsKKwlzdHJ1Y3QgcmJfbm9kZSAqcmI7CisKKwlpZiAoUkJfRU1QVFlfUk9PVCgmcmVmLT50cmVl
KSkKKwkJcmV0dXJuIE5VTEw7CisKKwltdXRleF9sb2NrKCZyZWYtPm11dGV4KTsKKwlmb3IgKHJi
ID0gcmJfZmlyc3QoJnJlZi0+dHJlZSk7IHJiOyByYiA9IHJiX25leHQocmIpKSB7CisJCXN0cnVj
dCBhY3RpdmVfbm9kZSAqbm9kZTsKKworCQlub2RlID0gcmJfZW50cnkocmIsIHR5cGVvZigqbm9k
ZSksIG5vZGUpOworCQlpZiAobm9kZS0+dGltZWxpbmUpCisJCQlicmVhazsKKworCQlpZiAoIWk5
MTVfYWN0aXZlX3JlcXVlc3RfaXNzZXQoJm5vZGUtPmJhc2UpKSB7CisJCQlHRU1fQlVHX09OKCFs
aXN0X2VtcHR5KCZub2RlLT5iYXNlLmxpbmspKTsKKwkJCXJiX2VyYXNlKHJiLCAmcmVmLT50cmVl
KTsKKwkJCWlkbGUgPSBub2RlOworCQkJYnJlYWs7CisJCX0KKwl9CisJbXV0ZXhfdW5sb2NrKCZy
ZWYtPm11dGV4KTsKKworCXJldHVybiBpZGxlOworfQorCiBpbnQgaTkxNV9hY3RpdmVfYWNxdWly
ZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAogCQkJCQkgICAg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewpAQCAtMzUyLDIyICszODQsMjkgQEAg
aW50IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcihzdHJ1Y3QgaTkxNV9h
Y3RpdmUgKnJlZiwKIAogCUdFTV9CVUdfT04oIWVuZ2luZS0+bWFzayk7CiAJZm9yX2VhY2hfZW5n
aW5lX21hc2tlZChlbmdpbmUsIGk5MTUsIGVuZ2luZS0+bWFzaywgdG1wKSB7Ci0JCXN0cnVjdCBp
bnRlbF9jb250ZXh0ICprY3R4ID0gZW5naW5lLT5rZXJuZWxfY29udGV4dDsKIAkJc3RydWN0IGFj
dGl2ZV9ub2RlICpub2RlOwogCi0JCW5vZGUgPSBrbWVtX2NhY2hlX2FsbG9jKGdsb2JhbC5zbGFi
X2NhY2hlLCBHRlBfS0VSTkVMKTsKLQkJaWYgKHVubGlrZWx5KCFub2RlKSkgewotCQkJZXJyID0g
LUVOT01FTTsKLQkJCWdvdG8gdW53aW5kOworCQlub2RlID0gaWRsZV9iYXJyaWVyKHJlZik7CisJ
CWlmICghbm9kZSkgeworCQkJbm9kZSA9IGttZW1fY2FjaGVfYWxsb2MoZ2xvYmFsLnNsYWJfY2Fj
aGUsCisJCQkJCQlHRlBfS0VSTkVMIHwKKwkJCQkJCV9fR0ZQX1JFVFJZX01BWUZBSUwgfAorCQkJ
CQkJX19HRlBfTk9XQVJOKTsKKwkJCWlmICh1bmxpa2VseSghbm9kZSkpIHsKKwkJCQllcnIgPSAt
RU5PTUVNOworCQkJCWdvdG8gdW53aW5kOworCQkJfQorCisJCQlub2RlLT5yZWYgPSByZWY7CisJ
CQlub2RlLT50aW1lbGluZSA9IDA7CisJCQlub2RlLT5iYXNlLnJldGlyZSA9IG5vZGVfcmV0aXJl
OwogCQl9CiAKLQkJaTkxNV9hY3RpdmVfcmVxdWVzdF9pbml0KCZub2RlLT5iYXNlLAotCQkJCQkg
KHZvaWQgKillbmdpbmUsIG5vZGVfcmV0aXJlKTsKLQkJbm9kZS0+dGltZWxpbmUgPSBrY3R4LT5y
aW5nLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dDsKLQkJbm9kZS0+cmVmID0gcmVmOworCQlpbnRl
bF9lbmdpbmVfcG1fZ2V0KGVuZ2luZSk7CisKKwkJUkNVX0lOSVRfUE9JTlRFUihub2RlLT5iYXNl
LnJlcXVlc3QsICh2b2lkICopZW5naW5lKTsKIAkJYXRvbWljX2luYygmcmVmLT5jb3VudCk7CiAK
LQkJaW50ZWxfZW5naW5lX3BtX2dldChlbmdpbmUpOwogCQlsbGlzdF9hZGQoKHN0cnVjdCBsbGlz
dF9ub2RlICopJm5vZGUtPmJhc2UubGluaywKIAkJCSAgJnJlZi0+YmFycmllcnMpOwogCX0KQEAg
LTQwMiw2ICs0NDEsNyBAQCB2b2lkIGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1Y3Qg
aTkxNV9hY3RpdmUgKnJlZikKIAogCQlub2RlID0gY29udGFpbmVyX29mKChzdHJ1Y3QgbGlzdF9o
ZWFkICopcG9zLAogCQkJCSAgICB0eXBlb2YoKm5vZGUpLCBiYXNlLmxpbmspOworCQlHRU1fQlVH
X09OKG5vZGUtPnRpbWVsaW5lKTsKIAogCQllbmdpbmUgPSAodm9pZCAqKXJjdV9hY2Nlc3NfcG9p
bnRlcihub2RlLT5iYXNlLnJlcXVlc3QpOwogCQlSQ1VfSU5JVF9QT0lOVEVSKG5vZGUtPmJhc2Uu
cmVxdWVzdCwgRVJSX1BUUigtRUFHQUlOKSk7CkBAIC00MTAsMTIgKzQ1MCw3IEBAIHZvaWQgaTkx
NV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCQlwID0g
JnJlZi0+dHJlZS5yYl9ub2RlOwogCQl3aGlsZSAoKnApIHsKIAkJCXBhcmVudCA9ICpwOwotCQkJ
aWYgKHJiX2VudHJ5KHBhcmVudCwKLQkJCQkgICAgIHN0cnVjdCBhY3RpdmVfbm9kZSwKLQkJCQkg
ICAgIG5vZGUpLT50aW1lbGluZSA8IG5vZGUtPnRpbWVsaW5lKQotCQkJCXAgPSAmcGFyZW50LT5y
Yl9yaWdodDsKLQkJCWVsc2UKLQkJCQlwID0gJnBhcmVudC0+cmJfbGVmdDsKKwkJCXAgPSAmcGFy
ZW50LT5yYl9sZWZ0OwogCQl9CiAJCXJiX2xpbmtfbm9kZSgmbm9kZS0+bm9kZSwgcGFyZW50LCBw
KTsKIAkJcmJfaW5zZXJ0X2NvbG9yKCZub2RlLT5ub2RlLCAmcmVmLT50cmVlKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmlu
ZGV4IDJiMzFhNGVlMGI0Yy4uYTg0MWQzZjliZWRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKQEAgLTE1LDYgKzE1LDcg
QEAgc2VsZnRlc3Qod29ya2Fyb3VuZHMsIGludGVsX3dvcmthcm91bmRzX2xpdmVfc2VsZnRlc3Rz
KQogc2VsZnRlc3QodGltZWxpbmVzLCBpbnRlbF90aW1lbGluZV9saXZlX3NlbGZ0ZXN0cykKIHNl
bGZ0ZXN0KHJlcXVlc3RzLCBpOTE1X3JlcXVlc3RfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChh
Y3RpdmUsIGk5MTVfYWN0aXZlX2xpdmVfc2VsZnRlc3RzKQorc2VsZnRlc3QoZ3RfY29udGV4dHMs
IGludGVsX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChvYmplY3RzLCBpOTE1X2dl
bV9vYmplY3RfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChtbWFuLCBpOTE1X2dlbV9tbWFuX2xp
dmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZG1hYnVmLCBpOTE1X2dlbV9kbWFidWZfbGl2ZV9zZWxm
dGVzdHMpCkBAIC0yNCw3ICsyNSw3IEBAIHNlbGZ0ZXN0KGd0dCwgaTkxNV9nZW1fZ3R0X2xpdmVf
c2VsZnRlc3RzKQogc2VsZnRlc3QoZ2VtLCBpOTE1X2dlbV9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0
ZXN0KGV2aWN0LCBpOTE1X2dlbV9ldmljdF9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGh1Z2Vw
YWdlcywgaTkxNV9nZW1faHVnZV9wYWdlX2xpdmVfc2VsZnRlc3RzKQotc2VsZnRlc3QoY29udGV4
dHMsIGk5MTVfZ2VtX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVzdChnZW1fY29udGV4
dHMsIGk5MTVfZ2VtX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChibHQsIGk5MTVf
Z2VtX29iamVjdF9ibHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChjbGllbnQsIGk5MTVfZ2Vt
X2NsaWVudF9ibHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChyZXNldCwgaW50ZWxfcmVzZXRf
bGl2ZV9zZWxmdGVzdHMpCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
