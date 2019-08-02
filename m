Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C36D77F3CA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 12:00:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9726B6ED98;
	Fri,  2 Aug 2019 10:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189B36ED98
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 10:00:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17813075-1500050 
 for multiple; Fri, 02 Aug 2019 11:00:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 11:00:15 +0100
Message-Id: <20190802100015.1281-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc0
In-Reply-To: <459d6860-f0e2-16ed-62ea-c860baac1970@linux.intel.com>
References: <459d6860-f0e2-16ed-62ea-c860baac1970@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Allow sharing the idle-barrier
 from other kernel requests
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

QnkgcGxhY2luZyBvdXIgaWRsZS1iYXJyaWVycyBpbiB0aGUgaTkxNV9hY3RpdmUgZmVuY2UgdHJl
ZSwgd2UgZXhwb3NlCnRob3NlIGZvciByZXVzZSBieSBvdGhlciBjb21wb25lbnRzIHRoYXQgYXJl
IGlzc3VpbmcgcmVxdWVzdHMgYWxvbmcgdGhlCmtlcm5lbF9jb250ZXh0LiBSZXVzaW5nIHRoZSBw
cm90by1iYXJyaWVyIGFjdGl2ZV9ub2RlIGlzIHBlcmZlY3RseSBmaW5lCmFzIHRoZSBuZXcgcmVx
dWVzdCBpbXBsaWVzIGEgY29udGV4dC1zd2l0Y2gsIGFuZCBzbyBhbiBvcHBvcnR1bmUgcG9pbnQK
dG8gcnVuIHRoZSBpZGxlLWJhcnJpZXIuIEhvd2V2ZXIsIHRoZSBwcm90by1iYXJyaWVyIGlzIG5v
dCBlcXVpdmFsZW50CnRvIGEgbm9ybWFsIGFjdGl2ZV9ub2RlIGFuZCBjYXJlIG11c3QgYmUgdGFr
ZW4gdG8gYXZvaWQgZGVyZWZlcmVuY2luZyB0aGUKRVJSX1BUUiB1c2VkIGFzIGl0cyByZXF1ZXN0
IG1hcmtlci4KCnYyOiBDb21tZW50IHRoZSBtb3JlIGVncmVnaW91cyBjaGVlawp2MzogQSBnbG9z
c2FyeSEKClJlcG9ydGVkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxp
bkBpbnRlbC5jb20+CkZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBjb250ZXh0
cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNoIikKRml4
ZXM6IGE5ODc3ZGEyZDYyOSAoImRybS9pOTE1L29hOiBSZWNvbmZpZ3VyZSBjb250ZXh0cyBvbiB0
aGUgZmx5IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyAgICAgICB8ICA0MCArKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuaCAgICAgICB8ICAxMyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgICAgIHwgICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmMgICAgfCAzMTAgKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAgICAgICAg
fCAyODggKysrKysrKysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
aCAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90
eXBlcy5oICAgICAgfCAgIDIgKy0KIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3Nl
bGZ0ZXN0cy5oICB8ICAgMyArLQogOCBmaWxlcyBjaGFuZ2VkLCA1OTcgaW5zZXJ0aW9ucygrKSwg
NjMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfY29udGV4dC5jCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5jCmluZGV4IGYzMDQ0MWExNDBmOC4uMzRjOGUzN2E3M2I4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dC5jCkBAIC0xNjIsMjMgKzE2Miw0MSBAQCBzdGF0aWMgaW50IF9f
aW50ZWxfY29udGV4dF9hY3RpdmUoc3RydWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCiAJaWYgKGVy
cikKIAkJZ290byBlcnJfcmluZzsKIAorCXJldHVybiAwOworCitlcnJfcmluZzoKKwlpbnRlbF9y
aW5nX3VucGluKGNlLT5yaW5nKTsKK2Vycl9wdXQ6CisJaW50ZWxfY29udGV4dF9wdXQoY2UpOwor
CXJldHVybiBlcnI7Cit9CisKK2ludCBpbnRlbF9jb250ZXh0X2FjdGl2ZV9hY3F1aXJlKHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlpbnQgZXJyOworCisJZXJyID0gaTkxNV9hY3RpdmVf
YWNxdWlyZSgmY2UtPmFjdGl2ZSk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwogCS8qIFBy
ZWFsbG9jYXRlIHRyYWNraW5nIG5vZGVzICovCiAJaWYgKCFpOTE1X2dlbV9jb250ZXh0X2lzX2tl
cm5lbChjZS0+Z2VtX2NvbnRleHQpKSB7CiAJCWVyciA9IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJl
YWxsb2NhdGVfYmFycmllcigmY2UtPmFjdGl2ZSwKIAkJCQkJCQkgICAgICBjZS0+ZW5naW5lKTsK
LQkJaWYgKGVycikKLQkJCWdvdG8gZXJyX3N0YXRlOworCQlpZiAoZXJyKSB7CisJCQlpOTE1X2Fj
dGl2ZV9yZWxlYXNlKCZjZS0+YWN0aXZlKTsKKwkJCXJldHVybiBlcnI7CisJCX0KIAl9CiAKIAly
ZXR1cm4gMDsKK30KIAotZXJyX3N0YXRlOgotCV9fY29udGV4dF91bnBpbl9zdGF0ZShjZS0+c3Rh
dGUpOwotZXJyX3Jpbmc6Ci0JaW50ZWxfcmluZ191bnBpbihjZS0+cmluZyk7Ci1lcnJfcHV0Ogot
CWludGVsX2NvbnRleHRfcHV0KGNlKTsKLQlyZXR1cm4gZXJyOwordm9pZCBpbnRlbF9jb250ZXh0
X2FjdGl2ZV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwkvKiBOb2RlcyBw
cmVhbGxvY2F0ZWQgaW4gaW50ZWxfY29udGV4dF9hY3RpdmUoKSAqLworCWk5MTVfYWN0aXZlX2Fj
cXVpcmVfYmFycmllcigmY2UtPmFjdGl2ZSk7CisJaTkxNV9hY3RpdmVfcmVsZWFzZSgmY2UtPmFj
dGl2ZSk7CiB9CiAKIHZvaWQKQEAgLTMwMSwzICszMTksNyBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICppbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
IAogCXJldHVybiBycTsKIH0KKworI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZU
RVNUKQorI2luY2x1ZGUgInNlbGZ0ZXN0X2NvbnRleHQuYyIKKyNlbmRpZgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCmluZGV4IDIzYzdlNGMwY2U3Yy4uMDdmOTkyNGRlNDhm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCkBAIC0xMDQsMTcgKzEw
NCw4IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9jb250ZXh0X2V4aXQoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQogCQljZS0+b3BzLT5leGl0KGNlKTsKIH0KIAotc3RhdGljIGlubGluZSBp
bnQgaW50ZWxfY29udGV4dF9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Up
Ci17Ci0JcmV0dXJuIGk5MTVfYWN0aXZlX2FjcXVpcmUoJmNlLT5hY3RpdmUpOwotfQotCi1zdGF0
aWMgaW5saW5lIHZvaWQgaW50ZWxfY29udGV4dF9hY3RpdmVfcmVsZWFzZShzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCi17Ci0JLyogTm9kZXMgcHJlYWxsb2NhdGVkIGluIGludGVsX2NvbnRleHRf
YWN0aXZlKCkgKi8KLQlpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoJmNlLT5hY3RpdmUpOwot
CWk5MTVfYWN0aXZlX3JlbGVhc2UoJmNlLT5hY3RpdmUpOwotfQoraW50IGludGVsX2NvbnRleHRf
YWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKTsKK3ZvaWQgaW50ZWxfY29u
dGV4dF9hY3RpdmVfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpOwogCiBzdGF0aWMg
aW5saW5lIHN0cnVjdCBpbnRlbF9jb250ZXh0ICppbnRlbF9jb250ZXh0X2dldChzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9w
bS5jCmluZGV4IGU3NGZiZjA0YTY4ZC4uY2U1NDA5MjQ3NWRhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtOTAsNyArOTAsNyBAQCBzdGF0aWMgYm9vbCBz
d2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQog
CS8qIENoZWNrIGFnYWluIG9uIHRoZSBuZXh0IHJldGlyZW1lbnQuICovCiAJZW5naW5lLT53YWtl
cmVmX3NlcmlhbCA9IGVuZ2luZS0+c2VyaWFsICsgMTsKIAotCWk5MTVfcmVxdWVzdF9hZGRfYmFy
cmllcnMocnEpOworCWk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXJzKHJxKTsKIAlfX2k5
MTVfcmVxdWVzdF9jb21taXQocnEpOwogCiAJcmV0dXJuIGZhbHNlOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uZDM5YjU1OTRjYjAyCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCkBAIC0wLDAgKzEsMzEwIEBACisvKgorICog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAx
OSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCisj
aW5jbHVkZSAiaW50ZWxfZ3QuaCIKKworI2luY2x1ZGUgImdlbS9zZWxmdGVzdHMvbW9ja19jb250
ZXh0LmgiCisjaW5jbHVkZSAic2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmgiCisjaW5jbHVkZSAi
c2VsZnRlc3RzL21vY2tfZHJtLmgiCisKK3N0YXRpYyBpbnQgcmVxdWVzdF9zeW5jKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQoreworCWxvbmcgdGltZW91dDsKKwlpbnQgZXJyID0gMDsKKworCWk5
MTVfcmVxdWVzdF9nZXQocnEpOworCisJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisJdGltZW91dCA9
IGk5MTVfcmVxdWVzdF93YWl0KHJxLCAwLCBIWiAvIDEwKTsKKwlpZiAodGltZW91dCA8IDApCisJ
CWVyciA9IHRpbWVvdXQ7CisJZWxzZQorCQlpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8ocnEpOwor
CisJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50
IGNvbnRleHRfc3luYyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJc3RydWN0IGludGVs
X3RpbWVsaW5lICp0bCA9IGNlLT5yaW5nLT50aW1lbGluZTsKKwlpbnQgZXJyID0gMDsKKworCWRv
IHsKKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJCWxvbmcgdGltZW91dDsKKworCQlyY3Vf
cmVhZF9sb2NrKCk7CisJCXJxID0gcmN1X2RlcmVmZXJlbmNlKHRsLT5sYXN0X3JlcXVlc3QucmVx
dWVzdCk7CisJCWlmIChycSkKKwkJCXJxID0gaTkxNV9yZXF1ZXN0X2dldF9yY3UocnEpOworCQly
Y3VfcmVhZF91bmxvY2soKTsKKwkJaWYgKCFycSkKKwkJCWJyZWFrOworCisJCXRpbWVvdXQgPSBp
OTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgSFogLyAxMCk7CisJCWlmICh0aW1lb3V0IDwgMCkKKwkJ
CWVyciA9IHRpbWVvdXQ7CisJCWVsc2UKKwkJCWk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhycSk7
CisKKwkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisJfSB3aGlsZSAoIWVycik7CisKKwlyZXR1cm4g
ZXJyOworfQorCitzdGF0aWMgaW50IF9fbGl2ZV9hY3RpdmVfY29udGV4dChzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsCisJCQkJIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpmaXhtZSkK
K3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IHBhc3M7CisJaW50IGVycjsKKwor
CS8qCisJICogV2Uga2VlcCBhY3RpdmUgY29udGV4dHMgYWxpdmUgdW50aWwgYWZ0ZXIgYSBzdWJz
ZXF1ZW50IGNvbnRleHQKKwkgKiBzd2l0Y2ggYXMgdGhlIGZpbmFsIHdyaXRlIGZyb20gdGhlIGNv
bnRleHQtc2F2ZSB3aWxsIGJlIGFmdGVyCisJICogd2UgcmV0aXJlIHRoZSBmaW5hbCByZXF1ZXN0
LiBXZSB0cmFjayB3aGVuIHdlIHVucGluIHRoZSBjb250ZXh0LAorCSAqIHVuZGVyIHRoZSBwcmVz
dW1wdGlvbiB0aGF0IHRoZSBmaW5hbCBwaW4gaXMgZnJvbSB0aGUgbGFzdCByZXF1ZXN0LAorCSAq
IGFuZCBpbnN0ZWFkIG9mIGltbWVkaWF0ZWx5IHVucGlubmluZyB0aGUgY29udGV4dCwgd2UgYWRk
IGEgdGFzaworCSAqIHRvIHVucGluIHRoZSBjb250ZXh0IGZyb20gdGhlIG5leHQgaWRsZS1iYXJy
aWVyLgorCSAqCisJICogVGhpcyB0ZXN0IG1ha2VzIHN1cmUgdGhhdCB0aGUgY29udGV4dCBpcyBr
ZXB0IGFsaXZlIHVudGlsIGEKKwkgKiBzdWJzZXF1ZW50IGlkbGUtYmFycmllciAoZW1pdHRlZCB3
aGVuIHRoZSBlbmdpbmUgd2FrZXJlZiBoaXRzIDAKKwkgKiB3aXRoIG5vIG1vcmUgb3V0c3RhbmRp
bmcgcmVxdWVzdHMpLgorCSAqLworCisJaWYgKGludGVsX2VuZ2luZV9wbV9pc19hd2FrZShlbmdp
bmUpKSB7CisJCXByX2VycigiJXMgaXMgYXdha2UgYmVmb3JlIHN0YXJ0aW5nICVzIVxuIiwKKwkJ
ICAgICAgIGVuZ2luZS0+bmFtZSwgX19mdW5jX18pOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisK
KwljZSA9IGludGVsX2NvbnRleHRfY3JlYXRlKGZpeG1lLCBlbmdpbmUpOworCWlmICghY2UpCisJ
CXJldHVybiAtRU5PTUVNOworCisJZm9yIChwYXNzID0gMDsgcGFzcyA8PSAyOyBwYXNzKyspIHsK
KwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisKKwkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0
ZV9yZXF1ZXN0KGNlKTsKKwkJaWYgKElTX0VSUihycSkpIHsKKwkJCWVyciA9IFBUUl9FUlIocnEp
OworCQkJZ290byBlcnI7CisJCX0KKworCQllcnIgPSByZXF1ZXN0X3N5bmMocnEpOworCQlpZiAo
ZXJyKQorCQkJZ290byBlcnI7CisKKwkJLyogQ29udGV4dCB3aWxsIGJlIGtlcHQgYWN0aXZlIHVu
dGlsIGFmdGVyIGFuIGlkbGUtYmFycmllci4gKi8KKwkJaWYgKGk5MTVfYWN0aXZlX2lzX2lkbGUo
JmNlLT5hY3RpdmUpKSB7CisJCQlwcl9lcnIoImNvbnRleHQgaXMgbm90IGFjdGl2ZTsgZXhwZWN0
ZWQgaWRsZS1iYXJyaWVyICglcyBwYXNzICVkKVxuIiwKKwkJCSAgICAgICBlbmdpbmUtPm5hbWUs
IHBhc3MpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyOworCQl9CisKKwkJaWYgKCFp
bnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgeworCQkJcHJfZXJyKCIlcyBpcyBhc2xl
ZXAgYmVmb3JlIGlkbGUtYmFycmllclxuIiwKKwkJCSAgICAgICBlbmdpbmUtPm5hbWUpOworCQkJ
ZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyOworCQl9CisJfQorCisJLyogTm93IG1ha2Ugc3Vy
ZSBvdXIgaWRsZS1iYXJyaWVycyBhcmUgZmx1c2hlZCAqLworCWVyciA9IGNvbnRleHRfc3luYyhl
bmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwlpZiAoZXJyKQorCQlnb3RvIGVycjsKKworCWlmICgh
aTkxNV9hY3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpIHsKKwkJcHJfZXJyKCJjb250ZXh0IGlz
IHN0aWxsIGFjdGl2ZSEiKTsKKwkJZXJyID0gLUVJTlZBTDsKKwl9CisKKwlpZiAoaW50ZWxfZW5n
aW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpIHsKKwkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1f
ZGVidWdfcHJpbnRlcihfX2Z1bmNfXyk7CisKKwkJaW50ZWxfZW5naW5lX2R1bXAoZW5naW5lLCAm
cCwKKwkJCQkgICIlcyBpcyBzdGlsbCBhd2FrZSBhZnRlciBpZGxlLWJhcnJpZXJzXG4iLAorCQkJ
CSAgZW5naW5lLT5uYW1lKTsKKwkJR0VNX1RSQUNFX0RVTVAoKTsKKworCQllcnIgPSAtRUlOVkFM
OworCQlnb3RvIGVycjsKKwl9CisKK2VycjoKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJcmV0
dXJuIGVycjsKK30KKworc3RhdGljIGludCBsaXZlX2FjdGl2ZV9jb250ZXh0KHZvaWQgKmFyZykK
K3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZTsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZml4bWU7CisJZW51bSBpbnRlbF9l
bmdpbmVfaWQgaWQ7CisJc3RydWN0IGRybV9maWxlICpmaWxlOworCWludCBlcnIgPSAwOworCisJ
ZmlsZSA9IG1vY2tfZmlsZShndC0+aTkxNSk7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJu
IFBUUl9FUlIoZmlsZSk7CisKKwltdXRleF9sb2NrKCZndC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7CisKKwlmaXhtZSA9IGxpdmVfY29udGV4dChndC0+aTkxNSwgZmlsZSk7CisJaWYgKCFmaXht
ZSkgeworCQllcnIgPSAtRU5PTUVNOworCQlnb3RvIHVubG9jazsKKwl9CisKKwlmb3JfZWFjaF9l
bmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpIHsKKwkJZXJyID0gX19saXZlX2FjdGl2ZV9jb250
ZXh0KGVuZ2luZSwgZml4bWUpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJZXJyID0gaWd0
X2ZsdXNoX3Rlc3QoZ3QtPmk5MTUsIEk5MTVfV0FJVF9MT0NLRUQpOworCQlpZiAoZXJyKQorCQkJ
YnJlYWs7CisJfQorCit1bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZndC0+aTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CisJbW9ja19maWxlX2ZyZWUoZ3QtPmk5MTUsIGZpbGUpOworCXJldHVybiBlcnI7
Cit9CisKK3N0YXRpYyBpbnQgX19yZW1vdGVfc3luYyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpyZW1vdGUpCit7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnE7CisJaW50IGVycjsKKworCWVyciA9IGludGVsX2NvbnRleHRfcGluKHJlbW90ZSk7CisJaWYg
KGVycikKKwkJcmV0dXJuIGVycjsKKworCXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVz
dChjZSk7CisJaWYgKElTX0VSUihycSkpIHsKKwkJZXJyID0gUFRSX0VSUihycSk7CisJCWdvdG8g
dW5waW47CisJfQorCisJZXJyID0gaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0
KHJlbW90ZSwgcnEpOworCWlmIChlcnIpIHsKKwkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisJCWdv
dG8gdW5waW47CisJfQorCisJZXJyID0gcmVxdWVzdF9zeW5jKHJxKTsKKwordW5waW46CisJaW50
ZWxfY29udGV4dF91bnBpbihyZW1vdGUpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQg
X19saXZlX3JlbW90ZV9jb250ZXh0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJ
CQkgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmZpeG1lKQoreworCXN0cnVjdCBpbnRlbF9jb250
ZXh0ICpsb2NhbCwgKnJlbW90ZTsKKwlpbnQgcGFzczsKKwlpbnQgZXJyOworCisJLyoKKwkgKiBD
aGVjayB0aGF0IG91ciBpZGxlIGJhcnJpZXJzIGRvIG5vdCBpbnRlcmZlcmUgd2l0aCBub3JtYWwK
KwkgKiBhY3Rpdml0eSB0cmFja2luZy4gSW4gcGFydGljdWxhciwgY2hlY2sgdGhhdCBvcGVyYXRp
bmcKKwkgKiBvbiB0aGUgY29udGV4dCBpbWFnZSByZW1vdGVseSAoaW50ZWxfY29udGV4dF9wcmVw
YXJlX3JlbW90ZV9yZXF1ZXN0KSwKKwkgKiB3aGljaCBpbnNlcnRzIGZvcmVpZ24gZmVuY2VzIGlu
dG8gaW50ZWxfY29udGV4dC5hY3RpdmUsIGRvZXMgbm90CisJICogY2xvYmJlciB0aGUgaWRsZS1i
YXJyaWVyLgorCSAqLworCisJcmVtb3RlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoZml4bWUsIGVu
Z2luZSk7CisJaWYgKCFyZW1vdGUpCisJCXJldHVybiAtRU5PTUVNOworCisJbG9jYWwgPSBpbnRl
bF9jb250ZXh0X2NyZWF0ZShmaXhtZSwgZW5naW5lKTsKKwlpZiAoIWxvY2FsKSB7CisJCWVyciA9
IC1FTk9NRU07CisJCWdvdG8gZXJyX3JlbW90ZTsKKwl9CisKKwlmb3IgKHBhc3MgPSAwOyBwYXNz
IDw9IDI7IHBhc3MrKykgeworCQllcnIgPSBfX3JlbW90ZV9zeW5jKGxvY2FsLCByZW1vdGUpOwor
CQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJZXJyID0gX19yZW1vdGVfc3luYyhlbmdpbmUtPmtl
cm5lbF9jb250ZXh0LCByZW1vdGUpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJaWYgKGk5
MTVfYWN0aXZlX2lzX2lkbGUoJnJlbW90ZS0+YWN0aXZlKSkgeworCQkJcHJfZXJyKCJyZW1vdGUg
Y29udGV4dCBpcyBub3QgYWN0aXZlOyBleHBlY3RlZCBpZGxlLWJhcnJpZXIgKCVzIHBhc3MgJWQp
XG4iLAorCQkJICAgICAgIGVuZ2luZS0+bmFtZSwgcGFzcyk7CisJCQllcnIgPSAtRUlOVkFMOwor
CQkJYnJlYWs7CisJCX0KKwl9CisKKwlpbnRlbF9jb250ZXh0X3B1dChsb2NhbCk7CitlcnJfcmVt
b3RlOgorCWludGVsX2NvbnRleHRfcHV0KHJlbW90ZSk7CisJcmV0dXJuIGVycjsKK30KKworc3Rh
dGljIGludCBsaXZlX3JlbW90ZV9jb250ZXh0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxf
Z3QgKmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwlzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqZml4bWU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJc3Ry
dWN0IGRybV9maWxlICpmaWxlOworCWludCBlcnIgPSAwOworCisJZmlsZSA9IG1vY2tfZmlsZShn
dC0+aTkxNSk7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJuIFBUUl9FUlIoZmlsZSk7CisK
KwltdXRleF9sb2NrKCZndC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisKKwlmaXhtZSA9IGxp
dmVfY29udGV4dChndC0+aTkxNSwgZmlsZSk7CisJaWYgKCFmaXhtZSkgeworCQllcnIgPSAtRU5P
TUVNOworCQlnb3RvIHVubG9jazsKKwl9CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+
aTkxNSwgaWQpIHsKKwkJZXJyID0gX19saXZlX3JlbW90ZV9jb250ZXh0KGVuZ2luZSwgZml4bWUp
OworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJZXJyID0gaWd0X2ZsdXNoX3Rlc3QoZ3QtPmk5
MTUsIEk5MTVfV0FJVF9MT0NLRUQpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisJfQorCit1bmxv
Y2s6CisJbXV0ZXhfdW5sb2NrKCZndC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJbW9ja19m
aWxlX2ZyZWUoZ3QtPmk5MTUsIGZpbGUpOworCXJldHVybiBlcnI7Cit9CisKK2ludCBpbnRlbF9j
b250ZXh0X2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorewor
CXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1Qo
bGl2ZV9hY3RpdmVfY29udGV4dCksCisJCVNVQlRFU1QobGl2ZV9yZW1vdGVfY29udGV4dCksCisJ
fTsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0OworCisJaWYgKGludGVsX2d0X2lz
X3dlZGdlZChndCkpCisJCXJldHVybiAwOworCisJcmV0dXJuIGludGVsX2d0X2xpdmVfc3VidGVz
dHModGVzdHMsIGd0KTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IGQzMmRi
OGE0ZGI1Yy4uM2E4MTI3ZmFjZTc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAg
LTMzLDYgKzMzLDM4IEBAIHN0cnVjdCBhY3RpdmVfbm9kZSB7CiAJdTY0IHRpbWVsaW5lOwogfTsK
IAorc3RhdGljIGlubGluZSBzdHJ1Y3QgYWN0aXZlX25vZGUgKgorbm9kZV9mcm9tX2FjdGl2ZShz
dHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAqYWN0aXZlKQoreworCXJldHVybiBjb250YWluZXJf
b2YoYWN0aXZlLCBzdHJ1Y3QgYWN0aXZlX25vZGUsIGJhc2UpOworfQorCisjZGVmaW5lIHRha2Vf
cHJlYWxsb2NhdGVkX2JhcnJpZXJzKHgpIGxsaXN0X2RlbF9hbGwoJih4KS0+cHJlYWxsb2NhdGVk
X2JhcnJpZXJzKQorCitzdGF0aWMgaW5saW5lIGJvb2wgaXNfYmFycmllcihjb25zdCBzdHJ1Y3Qg
aTkxNV9hY3RpdmVfcmVxdWVzdCAqYWN0aXZlKQoreworCXJldHVybiBJU19FUlIocmN1X2FjY2Vz
c19wb2ludGVyKGFjdGl2ZS0+cmVxdWVzdCkpOworfQorCitzdGF0aWMgaW5saW5lIHN0cnVjdCBs
bGlzdF9ub2RlICpiYXJyaWVyX3RvX2xsKHN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZSkKK3sKKwlH
RU1fQlVHX09OKCFpc19iYXJyaWVyKCZub2RlLT5iYXNlKSk7CisJcmV0dXJuIChzdHJ1Y3QgbGxp
c3Rfbm9kZSAqKSZub2RlLT5iYXNlLmxpbms7Cit9CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqCitiYXJyaWVyX3RvX2VuZ2luZShzdHJ1Y3QgYWN0aXZlX25vZGUgKm5v
ZGUpCit7CisJR0VNX0JVR19PTighaXNfYmFycmllcigmbm9kZS0+YmFzZSkpOworCXJldHVybiAo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqKW5vZGUtPmJhc2UubGluay5wcmV2OworfQorCitzdGF0
aWMgaW5saW5lIHN0cnVjdCBhY3RpdmVfbm9kZSAqYmFycmllcl9mcm9tX2xsKHN0cnVjdCBsbGlz
dF9ub2RlICp4KQoreworCXJldHVybiBjb250YWluZXJfb2YoKHN0cnVjdCBsaXN0X2hlYWQgKil4
LAorCQkJICAgIHN0cnVjdCBhY3RpdmVfbm9kZSwgYmFzZS5saW5rKTsKK30KKwogI2lmIElTX0VO
QUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX0dFTSkgJiYgSVNfRU5BQkxFRChDT05GSUdfREVC
VUdfT0JKRUNUUykKIAogc3RhdGljIHZvaWQgKmFjdGl2ZV9kZWJ1Z19oaW50KHZvaWQgKmFkZHIp
CkBAIC0xMjcsNyArMTU5LDcgQEAgYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJl
ZikKIHN0YXRpYyB2b2lkCiBub2RlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAq
YmFzZSwgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7Ci0JYWN0aXZlX3JldGlyZShjb250YWlu
ZXJfb2YoYmFzZSwgc3RydWN0IGFjdGl2ZV9ub2RlLCBiYXNlKS0+cmVmKTsKKwlhY3RpdmVfcmV0
aXJlKG5vZGVfZnJvbV9hY3RpdmUoYmFzZSktPnJlZik7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9hY3RpdmVfcmVxdWVzdCAqCkBAIC0xODQsNiArMjE2LDcgQEAgYWN0aXZlX2luc3RhbmNlKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLCB1NjQgaWR4KQogCXJlZi0+Y2FjaGUgPSBub2RlOwogCW11
dGV4X3VubG9jaygmcmVmLT5tdXRleCk7CiAKKwlCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9m
KCpub2RlKSwgYmFzZSkpOwogCXJldHVybiAmbm9kZS0+YmFzZTsKIH0KIApAQCAtMjAxLDExICsy
MzQsNTIgQEAgdm9pZCBfX2k5MTVfYWN0aXZlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCiAJcmVmLT5yZXRpcmUgPSByZXRpcmU7CiAJcmVmLT50cmVlID0gUkJfUk9PVDsKIAly
ZWYtPmNhY2hlID0gTlVMTDsKLQlpbml0X2xsaXN0X2hlYWQoJnJlZi0+YmFycmllcnMpOworCWlu
aXRfbGxpc3RfaGVhZCgmcmVmLT5wcmVhbGxvY2F0ZWRfYmFycmllcnMpOwogCWF0b21pY19zZXQo
JnJlZi0+Y291bnQsIDApOwogCV9fbXV0ZXhfaW5pdCgmcmVmLT5tdXRleCwgImk5MTVfYWN0aXZl
Iiwga2V5KTsKIH0KIAorc3RhdGljIGJvb2wgX19hY3RpdmVfZGVsX2JhcnJpZXIoc3RydWN0IGk5
MTVfYWN0aXZlICpyZWYsCisJCQkJIHN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZSkKK3sKKwlzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBiYXJyaWVyX3RvX2VuZ2luZShub2RlKTsKKwlz
dHJ1Y3QgbGxpc3Rfbm9kZSAqaGVhZCA9IE5VTEwsICp0YWlsID0gTlVMTDsKKwlzdHJ1Y3QgbGxp
c3Rfbm9kZSAqcG9zLCAqbmV4dDsKKworCUdFTV9CVUdfT04obm9kZS0+dGltZWxpbmUgIT0gZW5n
aW5lLT5rZXJuZWxfY29udGV4dC0+cmluZy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQpOworCisJ
LyoKKwkgKiBSZWJ1aWxkIHRoZSBsbGlzdCBleGNsdWRpbmcgb3VyIG5vZGUuIFdlIG1heSBwZXJm
b3JtIHRoaXMKKwkgKiBvdXRzaWRlIG9mIHRoZSBrZXJuZWxfY29udGV4dCB0aW1lbGluZSBtdXRl
eCBhbmQgc28gc29tZW9uZQorCSAqIGVsc2UgbWF5IGJlIG1hbmlwdWxhdGluZyB0aGUgZW5naW5l
LT5iYXJyaWVyX3Rhc2tzLCBpbgorCSAqIHdoaWNoIGNhc2UgZWl0aGVyIHdlIG9yIHRoZXkgd2ls
bCBiZSB1cHNldCA6KQorCSAqCisJICogQSBzZWNvbmQgX19hY3RpdmVfZGVsX2JhcnJpZXIoKSB3
aWxsIHJlcG9ydCBmYWlsdXJlIHRvIGNsYWltCisJICogdGhlIGFjdGl2ZV9ub2RlIGFuZCB0aGUg
Y2FsbGVyIHdpbGwganVzdCBzaHJ1ZyBhbmQga25vdyBub3QgdG8KKwkgKiBjbGFpbSBvd25lcnNo
aXAgb2YgaXRzIG5vZGUuCisJICoKKwkgKiBBIGNvbmN1cnJlbnQgaTkxNV9yZXF1ZXN0X2FkZF9h
Y3RpdmVfYmFycmllcnMoKSB3aWxsIG1pc3MgYWRkaW5nCisJICogYW55IG9mIHRoZSB0YXNrcywg
YnV0IHdlIHdpbGwgdHJ5IGFnYWluIG9uIHRoZSBuZXh0IC0tIGFuZCBzaW5jZQorCSAqIHdlIGFy
ZSBhY3RpdmVseSB1c2luZyB0aGUgYmFycmllciwgd2Uga25vdyB0aGF0IHRoZXJlIHdpbGwgYmUK
KwkgKiBhdCBsZWFzdCBhbm90aGVyIG9wcG9ydHVuaXR5IHdoZW4gd2UgaWRsZS4KKwkgKi8KKwls
bGlzdF9mb3JfZWFjaF9zYWZlKHBvcywgbmV4dCwgbGxpc3RfZGVsX2FsbCgmZW5naW5lLT5iYXJy
aWVyX3Rhc2tzKSkgeworCQlpZiAobm9kZSA9PSBiYXJyaWVyX2Zyb21fbGwocG9zKSkgeworCQkJ
bm9kZSA9IE5VTEw7CisJCQljb250aW51ZTsKKwkJfQorCisJCXBvcy0+bmV4dCA9IGhlYWQ7CisJ
CWhlYWQgPSBwb3M7CisJCWlmICghdGFpbCkKKwkJCXRhaWwgPSBwb3M7CisJfQorCWlmIChoZWFk
KQorCQlsbGlzdF9hZGRfYmF0Y2goaGVhZCwgdGFpbCwgJmVuZ2luZS0+YmFycmllcl90YXNrcyk7
CisKKwlyZXR1cm4gIW5vZGU7Cit9CisKIGludCBpOTE1X2FjdGl2ZV9yZWYoc3RydWN0IGk5MTVf
YWN0aXZlICpyZWYsCiAJCSAgICB1NjQgdGltZWxpbmUsCiAJCSAgICBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKQEAgLTIyNCw4ICsyOTgsMjAgQEAgaW50IGk5MTVfYWN0aXZlX3JlZihzdHJ1Y3Qg
aTkxNV9hY3RpdmUgKnJlZiwKIAkJZ290byBvdXQ7CiAJfQogCi0JaWYgKCFpOTE1X2FjdGl2ZV9y
ZXF1ZXN0X2lzc2V0KGFjdGl2ZSkpCi0JCWF0b21pY19pbmMoJnJlZi0+Y291bnQpOworCWlmIChp
c19iYXJyaWVyKGFjdGl2ZSkpIHsgLyogcHJvdG8tbm9kZSB1c2VkIGJ5IG91ciBpZGxlIGJhcnJp
ZXIgKi8KKwkJLyoKKwkJICogVGhpcyByZXF1ZXN0IGlzIG9uIHRoZSBrZXJuZWxfY29udGV4dCB0
aW1lbGluZSwgYW5kIHNvCisJCSAqIHdlIGNhbiB1c2UgaXQgdG8gc3Vic3RpdHV0ZSBmb3IgdGhl
IHBlbmRpbmcgaWRsZS1iYXJyZXIKKwkJICogcmVxdWVzdCB0aGF0IHdlIHdhbnQgdG8gZW1pdCBv
biB0aGUga2VybmVsX2NvbnRleHQuCisJCSAqLworCQlfX2FjdGl2ZV9kZWxfYmFycmllcihyZWYs
IG5vZGVfZnJvbV9hY3RpdmUoYWN0aXZlKSk7CisJCVJDVV9JTklUX1BPSU5URVIoYWN0aXZlLT5y
ZXF1ZXN0LCBOVUxMKTsKKwkJSU5JVF9MSVNUX0hFQUQoJmFjdGl2ZS0+bGluayk7CisJfSBlbHNl
IHsKKwkJaWYgKCFpOTE1X2FjdGl2ZV9yZXF1ZXN0X2lzc2V0KGFjdGl2ZSkpCisJCQlhdG9taWNf
aW5jKCZyZWYtPmNvdW50KTsKKwl9CisJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnJlZi0+Y291
bnQpKTsKIAlfX2k5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0KGFjdGl2ZSwgcnEpOwogCiBvdXQ6CkBA
IC0zMTIsNiArMzk4LDExIEBAIGludCBpOTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmKQogCX0KIAogCXJidHJlZV9wb3N0b3JkZXJfZm9yX2VhY2hfZW50cnlfc2FmZShpdCwg
biwgJnJlZi0+dHJlZSwgbm9kZSkgeworCQlpZiAoaXNfYmFycmllcigmaXQtPmJhc2UpKSB7IC8q
IHVuY29ubmVjdGVkIGlkbGUtYmFycmllciAqLworCQkJZXJyID0gLUVCVVNZOworCQkJYnJlYWs7
CisJCX0KKwogCQllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3JldGlyZSgmaXQtPmJhc2UsIEJL
TChyZWYpKTsKIAkJaWYgKGVycikKIAkJCWJyZWFrOwpAQCAtMzc0LDYgKzQ2NSw5MiBAQCB2b2lk
IGk5MTVfYWN0aXZlX2Zpbmkoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiB9CiAjZW5kaWYKIAor
c3RhdGljIGlubGluZSBib29sIGlzX2lkbGVfYmFycmllcihzdHJ1Y3QgYWN0aXZlX25vZGUgKm5v
ZGUsIHU2NCBpZHgpCit7CisJcmV0dXJuIG5vZGUtPnRpbWVsaW5lID09IGlkeCAmJiAhaTkxNV9h
Y3RpdmVfcmVxdWVzdF9pc3NldCgmbm9kZS0+YmFzZSk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgYWN0
aXZlX25vZGUgKnJldXNlX2lkbGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwgdTY0
IGlkeCkKK3sKKwlzdHJ1Y3QgcmJfbm9kZSAqcHJldiwgKnA7CisKKwlpZiAoUkJfRU1QVFlfUk9P
VCgmcmVmLT50cmVlKSkKKwkJcmV0dXJuIE5VTEw7CisKKwltdXRleF9sb2NrKCZyZWYtPm11dGV4
KTsKKwlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUocmVmKSk7CisKKwkvKgorCSAqIFRy
eSB0byByZXVzZSBhbnkgZXhpc3RpbmcgYmFycmllciBub2RlcyBhbHJlYWR5IGFsbG9jYXRlZCBm
b3IgdGhpcworCSAqIGk5MTVfYWN0aXZlLCBkdWUgdG8gb3ZlcmxhcHBpbmcgYWN0aXZlIHBoYXNl
cyB0aGVyZSBpcyBsaWtlbHkgYQorCSAqIG5vZGUga2VwdCBhbGl2ZSAoYXMgd2UgcmV1c2UgYmVm
b3JlIHBhcmtpbmcpLiBXZSBwcmVmZXIgdG8gcmV1c2UKKwkgKiBjb21wbGV0ZWx5IGlkbGUgYmFy
cmllcnMgKGxlc3MgaGFzc2xlIGluIG1hbmlwdWxhdGluZyB0aGUgbGxpc3RzKSwKKwkgKiBidXQg
b3RoZXJ3aXNlIGFueSB3aWxsIGRvLgorCSAqLworCWlmIChyZWYtPmNhY2hlICYmIGlzX2lkbGVf
YmFycmllcihyZWYtPmNhY2hlLCBpZHgpKSB7CisJCXAgPSAmcmVmLT5jYWNoZS0+bm9kZTsKKwkJ
Z290byBtYXRjaDsKKwl9CisKKwlwcmV2ID0gTlVMTDsKKwlwID0gcmVmLT50cmVlLnJiX25vZGU7
CisJd2hpbGUgKHApIHsKKwkJc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlID0KKwkJCXJiX2VudHJ5
KHAsIHN0cnVjdCBhY3RpdmVfbm9kZSwgbm9kZSk7CisKKwkJaWYgKGlzX2lkbGVfYmFycmllcihu
b2RlLCBpZHgpKQorCQkJZ290byBtYXRjaDsKKworCQlwcmV2ID0gcDsKKwkJaWYgKG5vZGUtPnRp
bWVsaW5lIDwgaWR4KQorCQkJcCA9IHAtPnJiX3JpZ2h0OworCQllbHNlCisJCQlwID0gcC0+cmJf
bGVmdDsKKwl9CisKKwkvKgorCSAqIE5vIHF1aWNrIG1hdGNoLCBidXQgd2UgZGlkIGZpbmQgdGhl
IGxlZnRtb3N0IHJiX25vZGUgZm9yIHRoZQorCSAqIGtlcm5lbF9jb250ZXh0LiBXYWxrIHRoZSBy
Yl90cmVlIGluLW9yZGVyIHRvIHNlZSBpZiB0aGVyZSB3ZXJlCisJICogYW55IGlkbGUtYmFycmll
cnMgb24gdGhpcyB0aW1lbGluZSB0aGF0IHdlIG1pc3NlZCwgb3IganVzdCB1c2UKKwkgKiB0aGUg
Zmlyc3QgcGVuZGluZyBiYXJyaWVyLgorCSAqLworCWZvciAocCA9IHByZXY7IHA7IHAgPSByYl9u
ZXh0KHApKSB7CisJCXN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZSA9CisJCQlyYl9lbnRyeShwLCBz
dHJ1Y3QgYWN0aXZlX25vZGUsIG5vZGUpOworCisJCWlmIChub2RlLT50aW1lbGluZSA+IGlkeCkK
KwkJCWJyZWFrOworCisJCWlmIChub2RlLT50aW1lbGluZSA8IGlkeCkKKwkJCWNvbnRpbnVlOwor
CisJCWlmIChpc19pZGxlX2JhcnJpZXIobm9kZSwgaWR4KSkKKwkJCWdvdG8gbWF0Y2g7CisKKwkJ
LyoKKwkJICogVGhlIGxpc3Qgb2YgcGVuZGluZyBiYXJyaWVycyBpcyBwcm90ZWN0ZWQgYnkgdGhl
CisJCSAqIGtlcm5lbF9jb250ZXh0IHRpbWVsaW5lLCB3aGljaCBub3RhYmx5IHdlIGRvIG5vdCBo
b2xkCisJCSAqIGhlcmUuIGk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXJzKCkgbWF5IGNv
bnN1bWUKKwkJICogdGhlIGJhcnJpZXIgYmVmb3JlIHdlIGNsYWltIGl0LCBzbyB3ZSBoYXZlIHRv
IGNoZWNrCisJCSAqIGZvciBzdWNjZXNzLgorCQkgKi8KKwkJaWYgKGlzX2JhcnJpZXIoJm5vZGUt
PmJhc2UpICYmIF9fYWN0aXZlX2RlbF9iYXJyaWVyKHJlZiwgbm9kZSkpCisJCQlnb3RvIG1hdGNo
OworCX0KKworCW11dGV4X3VubG9jaygmcmVmLT5tdXRleCk7CisKKwlyZXR1cm4gTlVMTDsKKwor
bWF0Y2g6CisJcmJfZXJhc2UocCwgJnJlZi0+dHJlZSk7IC8qIEhpZGUgZnJvbSB3YWl0cyBhbmQg
c2libGluZyBhbGxvY2F0aW9ucyAqLworCWlmIChwID09ICZyZWYtPmNhY2hlLT5ub2RlKQorCQly
ZWYtPmNhY2hlID0gTlVMTDsKKwltdXRleF91bmxvY2soJnJlZi0+bXV0ZXgpOworCisJcmV0dXJu
IHJiX2VudHJ5KHAsIHN0cnVjdCBhY3RpdmVfbm9kZSwgbm9kZSk7Cit9CisKIGludCBpOTE1X2Fj
dGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYs
CiAJCQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CkBAIC0zODIsMzkg
KzU1OSw2MSBAQCBpbnQgaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLAogCXN0cnVjdCBsbGlzdF9ub2RlICpwb3MsICpuZXh0Owog
CWludCBlcnI7CiAKLQlHRU1fQlVHX09OKCFtYXNrKTsKKwlHRU1fQlVHX09OKCFsbGlzdF9lbXB0
eSgmcmVmLT5wcmVhbGxvY2F0ZWRfYmFycmllcnMpKTsKKworCS8qCisJICogUHJlYWxsb2NhdGUg
YSBub2RlIGZvciBlYWNoIHBoeXNpY2FsIGVuZ2luZSBzdXBwb3J0aW5nIHRoZSB0YXJnZXQKKwkg
KiBlbmdpbmUgKHJlbWVtYmVyIHZpcnR1YWwgZW5naW5lcyBoYXZlIG1vcmUgdGhhbiBvbmUgc2li
bGluZykuCisJICogV2UgY2FuIHRoZW4gdXNlIHRoZSBwcmVhbGxvY2F0ZWQgbm9kZXMgaW4KKwkg
KiBpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoKQorCSAqLwogCWZvcl9lYWNoX2VuZ2luZV9t
YXNrZWQoZW5naW5lLCBpOTE1LCBtYXNrLCB0bXApIHsKLQkJc3RydWN0IGludGVsX2NvbnRleHQg
KmtjdHggPSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0OworCQl1NjQgaWR4ID0gZW5naW5lLT5rZXJu
ZWxfY29udGV4dC0+cmluZy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQ7CiAJCXN0cnVjdCBhY3Rp
dmVfbm9kZSAqbm9kZTsKIAotCQlub2RlID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xhYl9j
YWNoZSwgR0ZQX0tFUk5FTCk7Ci0JCWlmICh1bmxpa2VseSghbm9kZSkpIHsKLQkJCWVyciA9IC1F
Tk9NRU07Ci0JCQlnb3RvIHVud2luZDsKKwkJbm9kZSA9IHJldXNlX2lkbGVfYmFycmllcihyZWYs
IGlkeCk7CisJCWlmICghbm9kZSkgeworCQkJbm9kZSA9IGttZW1fY2FjaGVfYWxsb2MoZ2xvYmFs
LnNsYWJfY2FjaGUsIEdGUF9LRVJORUwpOworCQkJaWYgKCFub2RlKSB7CisJCQkJZXJyID0gRU5P
TUVNOworCQkJCWdvdG8gdW53aW5kOworCQkJfQorCisJCQlSQ1VfSU5JVF9QT0lOVEVSKG5vZGUt
PmJhc2UucmVxdWVzdCwgTlVMTCk7CisJCQlub2RlLT5iYXNlLnJldGlyZSA9IG5vZGVfcmV0aXJl
OworCQkJbm9kZS0+dGltZWxpbmUgPSBpZHg7CisJCQlub2RlLT5yZWYgPSByZWY7CiAJCX0KIAot
CQlpOTE1X2FjdGl2ZV9yZXF1ZXN0X2luaXQoJm5vZGUtPmJhc2UsCi0JCQkJCSAodm9pZCAqKWVu
Z2luZSwgbm9kZV9yZXRpcmUpOwotCQlub2RlLT50aW1lbGluZSA9IGtjdHgtPnJpbmctPnRpbWVs
aW5lLT5mZW5jZV9jb250ZXh0OwotCQlub2RlLT5yZWYgPSByZWY7Ci0JCWF0b21pY19pbmMoJnJl
Zi0+Y291bnQpOworCQlpZiAoIWk5MTVfYWN0aXZlX3JlcXVlc3RfaXNzZXQoJm5vZGUtPmJhc2Up
KSB7CisJCQkvKgorCQkJICogTWFyayB0aGlzIGFzIGJlaW5nICpvdXIqIHVuY29ubmVjdGVkIHBy
b3RvLW5vZGUuCisJCQkgKgorCQkJICogU2luY2UgdGhpcyBub2RlIGlzIG5vdCBpbiBhbnkgbGlz
dCwgYW5kIHdlIGhhdmUKKwkJCSAqIGRlY291cGxlZCBpdCBmcm9tIHRoZSByYnRyZWUsIHdlIGNh
biByZXVzZSB0aGUKKwkJCSAqIHJlcXVlc3QgdG8gaW5kaWNhdGUgdGhpcyBpcyBhbiBpZGxlLWJh
cnJpZXIgbm9kZQorCQkJICogYW5kIHRoZW4gd2UgY2FuIHVzZSB0aGUgcmJfbm9kZSBhbmQgbGlz
dCBwb2ludGVycworCQkJICogZm9yIG91ciB0cmFja2luZyBvZiB0aGUgcGVuZGluZyBiYXJyaWVy
LgorCQkJICovCisJCQlSQ1VfSU5JVF9QT0lOVEVSKG5vZGUtPmJhc2UucmVxdWVzdCwgRVJSX1BU
UigtRUFHQUlOKSk7CisJCQlub2RlLT5iYXNlLmxpbmsucHJldiA9ICh2b2lkICopZW5naW5lOwor
CQkJYXRvbWljX2luYygmcmVmLT5jb3VudCk7CisJCX0KIAorCQlHRU1fQlVHX09OKGJhcnJpZXJf
dG9fZW5naW5lKG5vZGUpICE9IGVuZ2luZSk7CisJCWxsaXN0X2FkZChiYXJyaWVyX3RvX2xsKG5v
ZGUpLCAmcmVmLT5wcmVhbGxvY2F0ZWRfYmFycmllcnMpOwogCQlpbnRlbF9lbmdpbmVfcG1fZ2V0
KGVuZ2luZSk7Ci0JCWxsaXN0X2FkZCgoc3RydWN0IGxsaXN0X25vZGUgKikmbm9kZS0+YmFzZS5s
aW5rLAotCQkJICAmcmVmLT5iYXJyaWVycyk7CiAJfQogCiAJcmV0dXJuIDA7CiAKIHVud2luZDoK
LQlsbGlzdF9mb3JfZWFjaF9zYWZlKHBvcywgbmV4dCwgbGxpc3RfZGVsX2FsbCgmcmVmLT5iYXJy
aWVycykpIHsKLQkJc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlOworCWxsaXN0X2Zvcl9lYWNoX3Nh
ZmUocG9zLCBuZXh0LCB0YWtlX3ByZWFsbG9jYXRlZF9iYXJyaWVycyhyZWYpKSB7CisJCXN0cnVj
dCBhY3RpdmVfbm9kZSAqbm9kZSA9IGJhcnJpZXJfZnJvbV9sbChwb3MpOwogCi0JCW5vZGUgPSBj
b250YWluZXJfb2YoKHN0cnVjdCBsaXN0X2hlYWQgKilwb3MsCi0JCQkJICAgIHR5cGVvZigqbm9k
ZSksIGJhc2UubGluayk7Ci0JCWVuZ2luZSA9ICh2b2lkICopcmN1X2FjY2Vzc19wb2ludGVyKG5v
ZGUtPmJhc2UucmVxdWVzdCk7CisJCWF0b21pY19kZWMoJnJlZi0+Y291bnQpOworCQlpbnRlbF9l
bmdpbmVfcG1fcHV0KGJhcnJpZXJfdG9fZW5naW5lKG5vZGUpKTsKIAotCQlpbnRlbF9lbmdpbmVf
cG1fcHV0KGVuZ2luZSk7CiAJCWttZW1fY2FjaGVfZnJlZShnbG9iYWwuc2xhYl9jYWNoZSwgbm9k
ZSk7CiAJfQogCXJldHVybiBlcnI7CkBAIC00MjYsMjUgKzYyNSwyNyBAQCB2b2lkIGk5MTVfYWN0
aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAogCUdFTV9CVUdf
T04oaTkxNV9hY3RpdmVfaXNfaWRsZShyZWYpKTsKIAorCS8qCisJICogVHJhbnNmZXIgdGhlIGxp
c3Qgb2YgcHJlYWxsb2NhdGVkIGJhcnJpZXJzIGludG8gdGhlCisJICogaTkxNV9hY3RpdmUgcmJ0
cmVlLCBidXQgb25seSBhcyBwcm90by1ub2Rlcy4gVGhleSB3aWxsIGJlCisJICogcG9wdWxhdGVk
IGJ5IGk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXIoKSB0byBwb2ludCB0byB0aGUKKwkg
KiByZXF1ZXN0IHRoYXQgd2lsbCBldmVudHVhbGx5IHJlbGVhc2UgdGhlbS4KKwkgKi8KIAltdXRl
eF9sb2NrX25lc3RlZCgmcmVmLT5tdXRleCwgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwotCWxsaXN0
X2Zvcl9lYWNoX3NhZmUocG9zLCBuZXh0LCBsbGlzdF9kZWxfYWxsKCZyZWYtPmJhcnJpZXJzKSkg
ewotCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JCXN0cnVjdCBhY3RpdmVfbm9k
ZSAqbm9kZTsKKwlsbGlzdF9mb3JfZWFjaF9zYWZlKHBvcywgbmV4dCwgdGFrZV9wcmVhbGxvY2F0
ZWRfYmFycmllcnMocmVmKSkgeworCQlzdHJ1Y3QgYWN0aXZlX25vZGUgKm5vZGUgPSBiYXJyaWVy
X2Zyb21fbGwocG9zKTsKKwkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gYmFycmll
cl90b19lbmdpbmUobm9kZSk7CiAJCXN0cnVjdCByYl9ub2RlICoqcCwgKnBhcmVudDsKIAotCQlu
b2RlID0gY29udGFpbmVyX29mKChzdHJ1Y3QgbGlzdF9oZWFkICopcG9zLAotCQkJCSAgICB0eXBl
b2YoKm5vZGUpLCBiYXNlLmxpbmspOwotCi0JCWVuZ2luZSA9ICh2b2lkICopcmN1X2FjY2Vzc19w
b2ludGVyKG5vZGUtPmJhc2UucmVxdWVzdCk7Ci0JCVJDVV9JTklUX1BPSU5URVIobm9kZS0+YmFz
ZS5yZXF1ZXN0LCBFUlJfUFRSKC1FQUdBSU4pKTsKLQogCQlwYXJlbnQgPSBOVUxMOwogCQlwID0g
JnJlZi0+dHJlZS5yYl9ub2RlOwogCQl3aGlsZSAoKnApIHsKKwkJCXN0cnVjdCBhY3RpdmVfbm9k
ZSAqaXQ7CisKIAkJCXBhcmVudCA9ICpwOwotCQkJaWYgKHJiX2VudHJ5KHBhcmVudCwKLQkJCQkg
ICAgIHN0cnVjdCBhY3RpdmVfbm9kZSwKLQkJCQkgICAgIG5vZGUpLT50aW1lbGluZSA8IG5vZGUt
PnRpbWVsaW5lKQorCisJCQlpdCA9IHJiX2VudHJ5KHBhcmVudCwgc3RydWN0IGFjdGl2ZV9ub2Rl
LCBub2RlKTsKKwkJCWlmIChpdC0+dGltZWxpbmUgPCBub2RlLT50aW1lbGluZSkKIAkJCQlwID0g
JnBhcmVudC0+cmJfcmlnaHQ7CiAJCQllbHNlCiAJCQkJcCA9ICZwYXJlbnQtPnJiX2xlZnQ7CkBA
IC00NTIsMjAgKzY1MywyOSBAQCB2b2lkIGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAkJcmJfbGlua19ub2RlKCZub2RlLT5ub2RlLCBwYXJlbnQs
IHApOwogCQlyYl9pbnNlcnRfY29sb3IoJm5vZGUtPm5vZGUsICZyZWYtPnRyZWUpOwogCi0JCWxs
aXN0X2FkZCgoc3RydWN0IGxsaXN0X25vZGUgKikmbm9kZS0+YmFzZS5saW5rLAotCQkJICAmZW5n
aW5lLT5iYXJyaWVyX3Rhc2tzKTsKKwkJbGxpc3RfYWRkKGJhcnJpZXJfdG9fbGwobm9kZSksICZl
bmdpbmUtPmJhcnJpZXJfdGFza3MpOwogCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CiAJ
fQogCW11dGV4X3VubG9jaygmcmVmLT5tdXRleCk7CiB9CiAKLXZvaWQgaTkxNV9yZXF1ZXN0X2Fk
ZF9iYXJyaWVycyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3ZvaWQgaTkxNV9yZXF1ZXN0X2Fk
ZF9hY3RpdmVfYmFycmllcnMoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lID0gcnEtPmVuZ2luZTsKIAlzdHJ1Y3QgbGxpc3Rfbm9kZSAq
bm9kZSwgKm5leHQ7CiAKLQlsbGlzdF9mb3JfZWFjaF9zYWZlKG5vZGUsIG5leHQsIGxsaXN0X2Rl
bF9hbGwoJmVuZ2luZS0+YmFycmllcl90YXNrcykpCisJR0VNX0JVR19PTihpbnRlbF9lbmdpbmVf
aXNfdmlydHVhbChlbmdpbmUpKTsKKwlHRU1fQlVHX09OKHJxLT50aW1lbGluZSAhPSBlbmdpbmUt
Pmtlcm5lbF9jb250ZXh0LT5yaW5nLT50aW1lbGluZSk7CisKKwkvKgorCSAqIEF0dGFjaCB0aGUg
bGlzdCBvZiBwcm90by1mZW5jZXMgdG8gdGhlIGluLWZsaWdodCByZXF1ZXN0IHN1Y2gKKwkgKiB0
aGF0IHRoZSBwYXJlbnQgaTkxNV9hY3RpdmUgd2lsbCBiZSByZWxlYXNlZCB3aGVuIHRoaXMgcmVx
dWVzdAorCSAqIGlzIHJldGlyZWQuCisJICovCisJbGxpc3RfZm9yX2VhY2hfc2FmZShub2RlLCBu
ZXh0LCBsbGlzdF9kZWxfYWxsKCZlbmdpbmUtPmJhcnJpZXJfdGFza3MpKSB7CisJCVJDVV9JTklU
X1BPSU5URVIoYmFycmllcl9mcm9tX2xsKG5vZGUpLT5iYXNlLnJlcXVlc3QsIHJxKTsKIAkJbGlz
dF9hZGRfdGFpbCgoc3RydWN0IGxpc3RfaGVhZCAqKW5vZGUsICZycS0+YWN0aXZlX2xpc3QpOwor
CX0KIH0KIAogaW50IGk5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0KHN0cnVjdCBpOTE1X2FjdGl2ZV9y
ZXF1ZXN0ICphY3RpdmUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Fj
dGl2ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaAppbmRleCBiYTY4YjA3
N2VjNmMuLjU2NjMzNmM5OWVkNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCkBAIC00
MTMsNiArNDEzLDYgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfYWN0aXZlX2Zpbmkoc3RydWN0
IGk5MTVfYWN0aXZlICpyZWYpIHsgfQogaW50IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2Nh
dGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKIAkJCQkJICAgIHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihz
dHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZik7Ci12b2lkIGk5MTVfcmVxdWVzdF9hZGRfYmFycmllcnMo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpOwordm9pZCBpOTE1X3JlcXVlc3RfYWRkX2FjdGl2ZV9i
YXJyaWVycyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSk7CiAKICNlbmRpZiAvKiBfSTkxNV9BQ1RJ
VkVfSF8gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCmluZGV4IDc0
NzQzZGQwZDVmMC4uYWUzZWU0NDFjMTE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0
aXZlX3R5cGVzLmgKQEAgLTQyLDcgKzQyLDcgQEAgc3RydWN0IGk5MTVfYWN0aXZlIHsKIAlpbnQg
KCphY3RpdmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIAl2b2lkICgqcmV0aXJlKShzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZik7CiAKLQlzdHJ1Y3QgbGxpc3RfaGVhZCBiYXJyaWVyczsKKwlz
dHJ1Y3QgbGxpc3RfaGVhZCBwcmVhbGxvY2F0ZWRfYmFycmllcnM7CiB9OwogCiAjZW5kaWYgLyog
X0k5MTVfQUNUSVZFX1RZUEVTX0hfICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAppbmRleCAyYjMxYTRlZTBiNGMuLmE4NDFk
M2Y5YmVkYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
bGl2ZV9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9saXZlX3NlbGZ0ZXN0cy5oCkBAIC0xNSw2ICsxNSw3IEBAIHNlbGZ0ZXN0KHdvcmthcm91bmRz
LCBpbnRlbF93b3JrYXJvdW5kc19saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KHRpbWVsaW5lcywg
aW50ZWxfdGltZWxpbmVfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChyZXF1ZXN0cywgaTkxNV9y
ZXF1ZXN0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoYWN0aXZlLCBpOTE1X2FjdGl2ZV9saXZl
X3NlbGZ0ZXN0cykKK3NlbGZ0ZXN0KGd0X2NvbnRleHRzLCBpbnRlbF9jb250ZXh0X2xpdmVfc2Vs
ZnRlc3RzKQogc2VsZnRlc3Qob2JqZWN0cywgaTkxNV9nZW1fb2JqZWN0X2xpdmVfc2VsZnRlc3Rz
KQogc2VsZnRlc3QobW1hbiwgaTkxNV9nZW1fbW1hbl9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0
KGRtYWJ1ZiwgaTkxNV9nZW1fZG1hYnVmX2xpdmVfc2VsZnRlc3RzKQpAQCAtMjQsNyArMjUsNyBA
QCBzZWxmdGVzdChndHQsIGk5MTVfZ2VtX2d0dF9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGdl
bSwgaTkxNV9nZW1fbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChldmljdCwgaTkxNV9nZW1fZXZp
Y3RfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChodWdlcGFnZXMsIGk5MTVfZ2VtX2h1Z2VfcGFn
ZV9saXZlX3NlbGZ0ZXN0cykKLXNlbGZ0ZXN0KGNvbnRleHRzLCBpOTE1X2dlbV9jb250ZXh0X2xp
dmVfc2VsZnRlc3RzKQorc2VsZnRlc3QoZ2VtX2NvbnRleHRzLCBpOTE1X2dlbV9jb250ZXh0X2xp
dmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoYmx0LCBpOTE1X2dlbV9vYmplY3RfYmx0X2xpdmVfc2Vs
ZnRlc3RzKQogc2VsZnRlc3QoY2xpZW50LCBpOTE1X2dlbV9jbGllbnRfYmx0X2xpdmVfc2VsZnRl
c3RzKQogc2VsZnRlc3QocmVzZXQsIGludGVsX3Jlc2V0X2xpdmVfc2VsZnRlc3RzKQotLSAKMi4y
My4wLnJjMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
