Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B84DD2D2
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 00:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626B789E7C;
	Fri, 18 Oct 2019 22:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D77D89DFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 22:15:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18887726-1500050 
 for multiple; Fri, 18 Oct 2019 23:14:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 23:14:41 +0100
Message-Id: <20191018221450.26247-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018221450.26247-1-chris@chris-wilson.co.uk>
References: <20191018221450.26247-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Expose engine properties via
 sysfs
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

UHJlbGltaW5hcnkgc3R1YiB0byBhZGQgZW5naW5lcyB1bmRlcm5lYXRoIC9zeXMvY2xhc3MvZHJt
L2NhcmROLywgc28KdGhhdCB3ZSBjYW4gZXhwb3NlIHByb3BlcnRpZXMgb24gZWFjaCBlbmdpbmUg
dG8gdGhlIHN5c2FkbWluLgoKVG8gc3RhcnQgd2l0aCB3ZSBoYXZlIGJhc2ljIGFuYWxvZ3VlcyBv
ZiB0aGUgaTkxNV9xdWVyeSBpb2N0bCBzbyB0aGF0IHdlCmNhbiBwcmV0dHkgcHJpbnQgZW5naW5l
IGRpc2NvdmVyeSBmcm9tIHRoZSBzaGVsbCwgYW5kIGZsZXNoIG91dCB0aGUKZGlyZWN0b3J5IHN0
cnVjdHVyZS4gTGF0ZXIgd2Ugd2lsbCBhZGQgd3JpdGVhYmxlIHN5c2FkbWluIHByb3BlcnRpZXMg
c3VjaAphcyBwZXItZW5naW5lIHRpbWVvdXQgY29udHJvbHMuCgpBbiBleGFtcGxlIHRyZWUgb2Yg
dGhlIGVuZ2luZSBwcm9wZXJ0aWVzIG9uIEJyYXN3ZWxsOgogICAgL3N5cy9jbGFzcy9kcm0vY2Fy
ZDAKICAgIOKUlOKUgOKUgCBlbmdpbmUKICAgICDCoMKgIOKUnOKUgOKUgCBiY3MwCiAgICAgwqDC
oCDilILCoMKgIOKUnOKUgOKUgCBjYXBhYmlsaXRpZXMKICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA
4pSAIGNsYXNzCiAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBpbnN0YW5jZQogICAgIMKgwqAg
4pSCwqDCoCDilJzilIDilIAga25vd25fY2FwYWJpbGl0aWVzCiAgICAgwqDCoCDilILCoMKgIOKU
lOKUgOKUgCBuYW1lCiAgICAgwqDCoCDilJzilIDilIAgcmNzMAogICAgIMKgwqAg4pSCwqDCoCDi
lJzilIDilIAgY2FwYWJpbGl0aWVzCiAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBjbGFzcwog
ICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgaW5zdGFuY2UKICAgICDCoMKgIOKUgsKgwqAg4pSc
4pSA4pSAIGtub3duX2NhcGFiaWxpdGllcwogICAgIMKgwqAg4pSCwqDCoCDilJTilIDilIAgbmFt
ZQogICAgIMKgwqAg4pSc4pSA4pSAIHZjczAKICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGNh
cGFiaWxpdGllcwogICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgY2xhc3MKICAgICDCoMKgIOKU
gsKgwqAg4pSc4pSA4pSAIGluc3RhbmNlCiAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBrbm93
bl9jYXBhYmlsaXRpZXMKICAgICDCoMKgIOKUgsKgwqAg4pSU4pSA4pSAIG5hbWUKICAgICDCoMKg
IOKUlOKUgOKUgCB2ZWNzMAogICAgIMKgwqAgIMKgwqAg4pSc4pSA4pSAIGNhcGFiaWxpdGllcwog
ICAgIMKgwqAgICAgIOKUnOKUgOKUgCBjbGFzcwogICAgIMKgwqAgICAgIOKUnOKUgOKUgCBpbnN0
YW5jZQogICAgIMKgwqAgIMKgwqAg4pSc4pSA4pSAIGtub3duX2NhcGFiaWxpdGllcwogICAgIMKg
wqAgICAgIOKUlOKUgOKUgCBuYW1lCgp2MjogSW5jbHVkZSBzdHJpbmdpZmllZCBjYXBhYmlsaXRp
ZXMKdjM6IEluY2x1ZGUgYWxsIGtub3duIGNhcGFiaWxpdGllcyBmb3IgZnV0dXJlcHJvb2Zpbmcu
CnY0OiBDb21iaW5lIHRoZSB0d28gY2FwcyBsb29wcyBpbnRvIG9uZQoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KQWNrZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAg
IDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIHwgMjA1
ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9zeXNmcy5oIHwgIDE0ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgICAg
ICAgICAgICB8ICAgMyArCiA0IGZpbGVzIGNoYW5nZWQsIDIyNCBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3N5c2ZzLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggZTc5MWQ5
MzIzYjUxLi5jZDlhMTBiYTI1MTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC03OCw4ICs3OCw5
IEBAIGd0LXkgKz0gXAogCWd0L2ludGVsX2JyZWFkY3J1bWJzLm8gXAogCWd0L2ludGVsX2NvbnRl
eHQubyBcCiAJZ3QvaW50ZWxfZW5naW5lX2NzLm8gXAotCWd0L2ludGVsX2VuZ2luZV9wb29sLm8g
XAogCWd0L2ludGVsX2VuZ2luZV9wbS5vIFwKKwlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKKwln
dC9pbnRlbF9lbmdpbmVfc3lzZnMubyBcCiAJZ3QvaW50ZWxfZW5naW5lX3VzZXIubyBcCiAJZ3Qv
aW50ZWxfZ3QubyBcCiAJZ3QvaW50ZWxfZ3RfaXJxLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLjgyMzE1M2U1NmM2NwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCkBAIC0wLDAgKzEsMjA1IEBACisvKgorICog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE5IElu
dGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgPGxpbnV4L2tvYmplY3QuaD4KKyNpbmNs
dWRlIDxsaW51eC9zeXNmcy5oPgorCisjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJp
bnRlbF9lbmdpbmUuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfc3lzZnMuaCIKKworc3RydWN0
IGtvYmpfZW5naW5lIHsKKwlzdHJ1Y3Qga29iamVjdCBiYXNlOworCXN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZTsKK307CisKK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICprb2Jq
X3RvX2VuZ2luZShzdHJ1Y3Qga29iamVjdCAqa29iaikKK3sKKwlyZXR1cm4gY29udGFpbmVyX29m
KGtvYmosIHN0cnVjdCBrb2JqX2VuZ2luZSwgYmFzZSktPmVuZ2luZTsKK30KKworc3RhdGljIHNz
aXplX3QKK25hbWVfc2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmli
dXRlICphdHRyLCBjaGFyICpidWYpCit7CisJcmV0dXJuIHNwcmludGYoYnVmLCAiJXNcbiIsIGtv
YmpfdG9fZW5naW5lKGtvYmopLT5uYW1lKTsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJp
YnV0ZSBuYW1lX2F0dHIgPQorX19BVFRSKG5hbWUsIDA0NDQsIG5hbWVfc2hvdywgTlVMTCk7CisK
K3N0YXRpYyBzc2l6ZV90CitjbGFzc19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qg
a29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlyZXR1cm4gc3ByaW50ZihidWYs
ICIlZFxuIiwga29ial90b19lbmdpbmUoa29iaiktPnVhYmlfY2xhc3MpOworfQorCitzdGF0aWMg
c3RydWN0IGtvYmpfYXR0cmlidXRlIGNsYXNzX2F0dHIgPQorX19BVFRSKGNsYXNzLCAwNDQ0LCBj
bGFzc19zaG93LCBOVUxMKTsKKworc3RhdGljIHNzaXplX3QKK2luc3Rfc2hvdyhzdHJ1Y3Qga29i
amVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJ
cmV0dXJuIHNwcmludGYoYnVmLCAiJWRcbiIsIGtvYmpfdG9fZW5naW5lKGtvYmopLT51YWJpX2lu
c3RhbmNlKTsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSBpbnN0X2F0dHIgPQor
X19BVFRSKGluc3RhbmNlLCAwNDQ0LCBpbnN0X3Nob3csIE5VTEwpOworCitzdGF0aWMgY29uc3Qg
Y2hhciAqIGNvbnN0IHZjc19jYXBzW10gPSB7CisJW2lsb2cyKEk5MTVfVklERU9fQ0xBU1NfQ0FQ
QUJJTElUWV9IRVZDKV0gPSAiaGV2YyIsCisJW2lsb2cyKEk5MTVfVklERU9fQU5EX0VOSEFOQ0Vf
Q0xBU1NfQ0FQQUJJTElUWV9TRkMpXSA9ICJzZmMiLAorfTsKKworc3RhdGljIGNvbnN0IGNoYXIg
KiBjb25zdCB2ZWNzX2NhcHNbXSA9IHsKKwlbaWxvZzIoSTkxNV9WSURFT19BTkRfRU5IQU5DRV9D
TEFTU19DQVBBQklMSVRZX1NGQyldID0gInNmYyIsCit9OworCitzdGF0aWMgc3NpemVfdCByZXBy
X3RyaW0oY2hhciAqYnVmLCBzc2l6ZV90IGxlbikKK3sKKwkvKiBUcmltIG9mZiB0aGUgdHJhaWxp
bmcgc3BhY2UgYW5kIHJlcGxhY2Ugd2l0aCBhIG5ld2xpbmUgKi8KKwlpZiAobGVuID4gUEFHRV9T
SVpFKQorCQlsZW4gPSBQQUdFX1NJWkU7CisJaWYgKGxlbiA+IDApCisJCWJ1ZltsZW4gLSAxXSA9
ICdcbic7CisKKwlyZXR1cm4gbGVuOworfQorCitzdGF0aWMgc3NpemVfdAorX19jYXBzX3Nob3co
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCSAgICB0eXBlb2YoZW5naW5lLT51YWJp
X2NhcGFiaWxpdGllcykgY2FwcywKKwkgICAgY2hhciAqYnVmLCBib29sIHNob3dfdW5rbm93bikK
K3sKKwljb25zdCBjaGFyICogY29uc3QgKnJlcHI7CisJaW50IGNvdW50LCBuOworCXNzaXplX3Qg
bGVuOworCisJc3dpdGNoIChlbmdpbmUtPmNsYXNzKSB7CisJY2FzZSBWSURFT19ERUNPREVfQ0xB
U1M6CisJCXJlcHIgPSB2Y3NfY2FwczsKKwkJY291bnQgPSBBUlJBWV9TSVpFKHZjc19jYXBzKTsK
KwkJYnJlYWs7CisKKwljYXNlIFZJREVPX0VOSEFOQ0VNRU5UX0NMQVNTOgorCQlyZXByID0gdmVj
c19jYXBzOworCQljb3VudCA9IEFSUkFZX1NJWkUodmVjc19jYXBzKTsKKwkJYnJlYWs7CisKKwlk
ZWZhdWx0OgorCQlyZXByID0gTlVMTDsKKwkJY291bnQgPSAwOworCQlicmVhazsKKwl9CisJR0VN
X0JVR19PTihjb3VudCA+IEJJVFNfUEVSX1RZUEUodHlwZW9mKGNhcHMpKSk7CisKKwlsZW4gPSAw
OworCWZvcl9lYWNoX3NldF9iaXQobiwKKwkJCSAodW5zaWduZWQgbG9uZyAqKSZjYXBzLAorCQkJ
IHNob3dfdW5rbm93biA/IEJJVFNfUEVSX1RZUEUodHlwZW9mKGNhcHMpKSA6IGNvdW50KSB7CisJ
CWlmIChuID49IGNvdW50IHx8ICFyZXByW25dKSB7CisJCQlpZiAoR0VNX1dBUk5fT04oc2hvd191
bmtub3duKSkKKwkJCQlsZW4gKz0gc25wcmludGYoYnVmICsgbGVuLCBQQUdFX1NJWkUgLSBsZW4s
CisJCQkJCQkiWyV4XSAiLCBuKTsKKwkJfSBlbHNlIHsKKwkJCWxlbiArPSBzbnByaW50ZihidWYg
KyBsZW4sIFBBR0VfU0laRSAtIGxlbiwKKwkJCQkJIiVzICIsIHJlcHJbbl0pOworCQl9CisJCWlm
IChHRU1fV0FSTl9PTihsZW4gPj0gUEFHRV9TSVpFKSkKKwkJCWJyZWFrOworCX0KKwlyZXR1cm4g
cmVwcl90cmltKGJ1ZiwgbGVuKTsKK30KKworc3RhdGljIHNzaXplX3QKK2NhcHNfc2hvdyhzdHJ1
Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYp
Cit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0ga29ial90b19lbmdpbmUoa29i
aik7CisKKwlyZXR1cm4gX19jYXBzX3Nob3coZW5naW5lLCBlbmdpbmUtPnVhYmlfY2FwYWJpbGl0
aWVzLCBidWYsIHRydWUpOworfQorCitzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIGNhcHNf
YXR0ciA9CitfX0FUVFIoY2FwYWJpbGl0aWVzLCAwNDQ0LCBjYXBzX3Nob3csIE5VTEwpOworCitz
dGF0aWMgc3NpemVfdAorYWxsX2NhcHNfc2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0
IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJcmV0dXJuIF9fY2Fwc19zaG93
KGtvYmpfdG9fZW5naW5lKGtvYmopLCAtMSwgYnVmLCBmYWxzZSk7Cit9CisKK3N0YXRpYyBzdHJ1
Y3Qga29ial9hdHRyaWJ1dGUgYWxsX2NhcHNfYXR0ciA9CitfX0FUVFIoa25vd25fY2FwYWJpbGl0
aWVzLCAwNDQ0LCBhbGxfY2Fwc19zaG93LCBOVUxMKTsKKworc3RhdGljIHZvaWQga29ial9lbmdp
bmVfcmVsZWFzZShzdHJ1Y3Qga29iamVjdCAqa29iaikKK3sKKwlrZnJlZShrb2JqKTsKK30KKwor
c3RhdGljIHN0cnVjdCBrb2JqX3R5cGUga29ial9lbmdpbmVfdHlwZSA9IHsKKwkucmVsZWFzZSA9
IGtvYmpfZW5naW5lX3JlbGVhc2UsCisJLnN5c2ZzX29wcyA9ICZrb2JqX3N5c2ZzX29wcworfTsK
Kworc3RhdGljIHN0cnVjdCBrb2JqZWN0ICoKK2tvYmpfZW5naW5lKHN0cnVjdCBrb2JqZWN0ICpk
aXIsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3Qga29ial9lbmdp
bmUgKmtlOworCisJa2UgPSBremFsbG9jKHNpemVvZigqa2UpLCBHRlBfS0VSTkVMKTsKKwlpZiAo
IWtlKQorCQlyZXR1cm4gTlVMTDsKKworCWtvYmplY3RfaW5pdCgma2UtPmJhc2UsICZrb2JqX2Vu
Z2luZV90eXBlKTsKKwlrZS0+ZW5naW5lID0gZW5naW5lOworCisJaWYgKGtvYmplY3RfYWRkKCZr
ZS0+YmFzZSwgZGlyLCAiJXMiLCBlbmdpbmUtPm5hbWUpKSB7CisJCWtvYmplY3RfcHV0KCZrZS0+
YmFzZSk7CisJCXJldHVybiBOVUxMOworCX0KKworCS8qIHhmZXIgb3duZXJzaGlwIHRvIHN5c2Zz
IHRyZWUgKi8KKwlyZXR1cm4gJmtlLT5iYXNlOworfQorCit2b2lkIGludGVsX2VuZ2luZXNfYWRk
X3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBz
dHJ1Y3QgYXR0cmlidXRlICpmaWxlc1tdID0geworCQkmbmFtZV9hdHRyLmF0dHIsCisJCSZjbGFz
c19hdHRyLmF0dHIsCisJCSZpbnN0X2F0dHIuYXR0ciwKKwkJJmNhcHNfYXR0ci5hdHRyLAorCQkm
YWxsX2NhcHNfYXR0ci5hdHRyLAorCQlOVUxMCisJfTsKKworCXN0cnVjdCBkZXZpY2UgKmtkZXYg
PSBpOTE1LT5kcm0ucHJpbWFyeS0+a2RldjsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmU7CisJc3RydWN0IGtvYmplY3QgKmRpcjsKKworCWRpciA9IGtvYmplY3RfY3JlYXRlX2FuZF9h
ZGQoImVuZ2luZSIsICZrZGV2LT5rb2JqKTsKKwlpZiAoIWRpcikKKwkJcmV0dXJuOworCisJZm9y
X2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBpOTE1KSB7CisJCXN0cnVjdCBrb2JqZWN0ICprb2Jq
OworCisJCWtvYmogPSBrb2JqX2VuZ2luZShkaXIsIGVuZ2luZSk7CisJCWlmICgha29iaikKKwkJ
CWdvdG8gZXJyX2VuZ2luZTsKKworCQlpZiAoc3lzZnNfY3JlYXRlX2ZpbGVzKGtvYmosIGZpbGVz
KSkKKwkJCWdvdG8gZXJyX29iamVjdDsKKworCQlpZiAoMCkgeworZXJyX29iamVjdDoKKwkJCWtv
YmplY3RfcHV0KGtvYmopOworZXJyX2VuZ2luZToKKwkJCWRldl9lcnIoa2RldiwgIkZhaWxlZCB0
byBhZGQgc3lzZnMgZW5naW5lICclcydcbiIsCisJCQkJZW5naW5lLT5uYW1lKTsKKwkJCWJyZWFr
OworCQl9CisJfQorfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3N5c2ZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lz
ZnMuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmVmNDRhNzQ1Yjcw
YQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9zeXNmcy5oCkBAIC0wLDAgKzEsMTQgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLwor
CisjaWZuZGVmIElOVEVMX0VOR0lORV9TWVNGU19ICisjZGVmaW5lIElOVEVMX0VOR0lORV9TWVNG
U19ICisKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworCit2b2lkIGludGVsX2VuZ2luZXNfYWRk
X3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKKworI2VuZGlmIC8qIElOVEVM
X0VOR0lORV9TWVNGU19IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3N5c2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKaW5kZXggYmYwMzli
OGJhNTkzLi43YjY2NWY2OWYzMDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3lzZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKQEAgLTMw
LDYgKzMwLDcgQEAKICNpbmNsdWRlIDxsaW51eC9zdGF0Lmg+CiAjaW5jbHVkZSA8bGludXgvc3lz
ZnMuaD4KIAorI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9zeXNmcy5oIgogI2luY2x1ZGUgImd0
L2ludGVsX3JjNi5oIgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKQEAgLTYxNiw2ICs2MTcsOCBA
QCB2b2lkIGk5MTVfc2V0dXBfc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQlEUk1fRVJST1IoIlJQUyBzeXNmcyBzZXR1cCBmYWlsZWRcbiIpOwogCiAJaTkxNV9zZXR1
cF9lcnJvcl9jYXB0dXJlKGtkZXYpOworCisJaW50ZWxfZW5naW5lc19hZGRfc3lzZnMoZGV2X3By
aXYpOwogfQogCiB2b2lkIGk5MTVfdGVhcmRvd25fc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
