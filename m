Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED82913A3EE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 10:37:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7816E32F;
	Tue, 14 Jan 2020 09:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA886E330
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 09:37:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19871429-1500050 
 for multiple; Tue, 14 Jan 2020 09:36:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 09:36:41 +0000
Message-Id: <20200114093648.2090633-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/gt: Expose engine properties via
 sysfs
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
CnY0OiBDb21iaW5lIHRoZSB0d28gY2FwcyBsb29wcyBpbnRvIG9uZQoKdjU6IEhpZGUgdW5kZXJu
ZWF0aCBLY29uZmlnLnVuc3RhYmxlIGZvciB3aWRlciBkaXNjdXNzaW9uCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgpBY2tlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnVuc3RhYmxlICAgICAgICB8
ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAg
MSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYyB8IDIwOCAr
KysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
c3lzZnMuaCB8ICAxNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAg
ICAgICAgfCAgIDMgKwogNSBmaWxlcyBjaGFuZ2VkLCAyMzMgaW5zZXJ0aW9ucygrKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3N5c2ZzLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnVuc3Rh
YmxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy51bnN0YWJsZQppbmRleCAwYzIyNzYx
NTVjMmIuLjFmODY2Y2FlOTQzYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2Nv
bmZpZy51bnN0YWJsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnVuc3RhYmxl
CkBAIC0yNywzICsyNywxMCBAQCBjb25maWcgRFJNX0k5MTVfVU5TVEFCTEVfRkFLRV9MTUVNCiAJ
aGVscAogCSAgQ29udmVydCBzb21lIHN5c3RlbSBtZW1vcnkgaW50byBhIGZha2UgbG9jYWwgbWVt
b3J5IHJlZ2lvbiBmb3IKIAkgIHRlc3RpbmcuCisKK2NvbmZpZyBEUk1fSTkxNV9VTlNUQUJMRV9T
WVNGUworCWJvb2wgIkVuYWJsZSB0aGUgZXhwZXJpbWVudGFsIHN5c2ZzIHByb3BlcnRpZXMiCisJ
ZGVwZW5kcyBvbiBEUk1fSTkxNV9VTlNUQUJMRQorCWRlZmF1bHQgbgorCWhlbHAKKwkgIEV4cGxv
cmUgdGhlIEhXIHByb3BlcnR5IHNwYWNlIGZyb20gdGhlIHNoZWxsIGNvbW1hbmQgbGluZSEKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUKaW5kZXggZmI2MTEyMDY2YTExLi44ZjEyYTlhZDY1NGUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlCkBAIC04Myw2ICs4Myw3IEBAIGd0LXkgKz0gXAogCWd0L2ludGVsX2VuZ2lu
ZV9oZWFydGJlYXQubyBcCiAJZ3QvaW50ZWxfZW5naW5lX3BtLm8gXAogCWd0L2ludGVsX2VuZ2lu
ZV9wb29sLm8gXAorCWd0L2ludGVsX2VuZ2luZV9zeXNmcy5vIFwKIAlndC9pbnRlbF9lbmdpbmVf
dXNlci5vIFwKIAlndC9pbnRlbF9nZ3R0Lm8gXAogCWd0L2ludGVsX2d0Lm8gXApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCAwMDAwMDAwMDAwMDAuLmRmMjYzYWYzYTllYQotLS0gL2Rldi9udWxsCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jCkBAIC0wLDAgKzEsMjA4
IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdo
dCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgPGxpbnV4L2tvYmpl
Y3QuaD4KKyNpbmNsdWRlIDxsaW51eC9zeXNmcy5oPgorCisjaW5jbHVkZSAiaTkxNV9kcnYuaCIK
KyNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfc3lzZnMu
aCIKKworc3RydWN0IGtvYmpfZW5naW5lIHsKKwlzdHJ1Y3Qga29iamVjdCBiYXNlOworCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKK307CisKK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICprb2JqX3RvX2VuZ2luZShzdHJ1Y3Qga29iamVjdCAqa29iaikKK3sKKwlyZXR1cm4g
Y29udGFpbmVyX29mKGtvYmosIHN0cnVjdCBrb2JqX2VuZ2luZSwgYmFzZSktPmVuZ2luZTsKK30K
Kworc3RhdGljIHNzaXplX3QKK25hbWVfc2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0
IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJcmV0dXJuIHNwcmludGYoYnVm
LCAiJXNcbiIsIGtvYmpfdG9fZW5naW5lKGtvYmopLT5uYW1lKTsKK30KKworc3RhdGljIHN0cnVj
dCBrb2JqX2F0dHJpYnV0ZSBuYW1lX2F0dHIgPQorX19BVFRSKG5hbWUsIDA0NDQsIG5hbWVfc2hv
dywgTlVMTCk7CisKK3N0YXRpYyBzc2l6ZV90CitjbGFzc19zaG93KHN0cnVjdCBrb2JqZWN0ICpr
b2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlyZXR1cm4g
c3ByaW50ZihidWYsICIlZFxuIiwga29ial90b19lbmdpbmUoa29iaiktPnVhYmlfY2xhc3MpOwor
fQorCitzdGF0aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIGNsYXNzX2F0dHIgPQorX19BVFRSKGNs
YXNzLCAwNDQ0LCBjbGFzc19zaG93LCBOVUxMKTsKKworc3RhdGljIHNzaXplX3QKK2luc3Rfc2hv
dyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFy
ICpidWYpCit7CisJcmV0dXJuIHNwcmludGYoYnVmLCAiJWRcbiIsIGtvYmpfdG9fZW5naW5lKGtv
YmopLT51YWJpX2luc3RhbmNlKTsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSBp
bnN0X2F0dHIgPQorX19BVFRSKGluc3RhbmNlLCAwNDQ0LCBpbnN0X3Nob3csIE5VTEwpOworCitz
dGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHZjc19jYXBzW10gPSB7CisJW2lsb2cyKEk5MTVfVklE
RU9fQ0xBU1NfQ0FQQUJJTElUWV9IRVZDKV0gPSAiaGV2YyIsCisJW2lsb2cyKEk5MTVfVklERU9f
QU5EX0VOSEFOQ0VfQ0xBU1NfQ0FQQUJJTElUWV9TRkMpXSA9ICJzZmMiLAorfTsKKworc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCB2ZWNzX2NhcHNbXSA9IHsKKwlbaWxvZzIoSTkxNV9WSURFT19B
TkRfRU5IQU5DRV9DTEFTU19DQVBBQklMSVRZX1NGQyldID0gInNmYyIsCit9OworCitzdGF0aWMg
c3NpemVfdCByZXByX3RyaW0oY2hhciAqYnVmLCBzc2l6ZV90IGxlbikKK3sKKwkvKiBUcmltIG9m
ZiB0aGUgdHJhaWxpbmcgc3BhY2UgYW5kIHJlcGxhY2Ugd2l0aCBhIG5ld2xpbmUgKi8KKwlpZiAo
bGVuID4gUEFHRV9TSVpFKQorCQlsZW4gPSBQQUdFX1NJWkU7CisJaWYgKGxlbiA+IDApCisJCWJ1
ZltsZW4gLSAxXSA9ICdcbic7CisKKwlyZXR1cm4gbGVuOworfQorCitzdGF0aWMgc3NpemVfdAor
X19jYXBzX3Nob3coc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCSAgICB0eXBlb2Yo
ZW5naW5lLT51YWJpX2NhcGFiaWxpdGllcykgY2FwcywKKwkgICAgY2hhciAqYnVmLCBib29sIHNo
b3dfdW5rbm93bikKK3sKKwljb25zdCBjaGFyICogY29uc3QgKnJlcHI7CisJaW50IGNvdW50LCBu
OworCXNzaXplX3QgbGVuOworCisJc3dpdGNoIChlbmdpbmUtPmNsYXNzKSB7CisJY2FzZSBWSURF
T19ERUNPREVfQ0xBU1M6CisJCXJlcHIgPSB2Y3NfY2FwczsKKwkJY291bnQgPSBBUlJBWV9TSVpF
KHZjc19jYXBzKTsKKwkJYnJlYWs7CisKKwljYXNlIFZJREVPX0VOSEFOQ0VNRU5UX0NMQVNTOgor
CQlyZXByID0gdmVjc19jYXBzOworCQljb3VudCA9IEFSUkFZX1NJWkUodmVjc19jYXBzKTsKKwkJ
YnJlYWs7CisKKwlkZWZhdWx0OgorCQlyZXByID0gTlVMTDsKKwkJY291bnQgPSAwOworCQlicmVh
azsKKwl9CisJR0VNX0JVR19PTihjb3VudCA+IEJJVFNfUEVSX1RZUEUodHlwZW9mKGNhcHMpKSk7
CisKKwlsZW4gPSAwOworCWZvcl9lYWNoX3NldF9iaXQobiwKKwkJCSAodW5zaWduZWQgbG9uZyAq
KSZjYXBzLAorCQkJIHNob3dfdW5rbm93biA/IEJJVFNfUEVSX1RZUEUodHlwZW9mKGNhcHMpKSA6
IGNvdW50KSB7CisJCWlmIChuID49IGNvdW50IHx8ICFyZXByW25dKSB7CisJCQlpZiAoR0VNX1dB
Uk5fT04oc2hvd191bmtub3duKSkKKwkJCQlsZW4gKz0gc25wcmludGYoYnVmICsgbGVuLCBQQUdF
X1NJWkUgLSBsZW4sCisJCQkJCQkiWyV4XSAiLCBuKTsKKwkJfSBlbHNlIHsKKwkJCWxlbiArPSBz
bnByaW50ZihidWYgKyBsZW4sIFBBR0VfU0laRSAtIGxlbiwKKwkJCQkJIiVzICIsIHJlcHJbbl0p
OworCQl9CisJCWlmIChHRU1fV0FSTl9PTihsZW4gPj0gUEFHRV9TSVpFKSkKKwkJCWJyZWFrOwor
CX0KKwlyZXR1cm4gcmVwcl90cmltKGJ1ZiwgbGVuKTsKK30KKworc3RhdGljIHNzaXplX3QKK2Nh
cHNfc2hvdyhzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRy
LCBjaGFyICpidWYpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0ga29ial90
b19lbmdpbmUoa29iaik7CisKKwlyZXR1cm4gX19jYXBzX3Nob3coZW5naW5lLCBlbmdpbmUtPnVh
YmlfY2FwYWJpbGl0aWVzLCBidWYsIHRydWUpOworfQorCitzdGF0aWMgc3RydWN0IGtvYmpfYXR0
cmlidXRlIGNhcHNfYXR0ciA9CitfX0FUVFIoY2FwYWJpbGl0aWVzLCAwNDQ0LCBjYXBzX3Nob3cs
IE5VTEwpOworCitzdGF0aWMgc3NpemVfdAorYWxsX2NhcHNfc2hvdyhzdHJ1Y3Qga29iamVjdCAq
a29iaiwgc3RydWN0IGtvYmpfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCit7CisJcmV0dXJu
IF9fY2Fwc19zaG93KGtvYmpfdG9fZW5naW5lKGtvYmopLCAtMSwgYnVmLCBmYWxzZSk7Cit9CisK
K3N0YXRpYyBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgYWxsX2NhcHNfYXR0ciA9CitfX0FUVFIoa25v
d25fY2FwYWJpbGl0aWVzLCAwNDQ0LCBhbGxfY2Fwc19zaG93LCBOVUxMKTsKKworc3RhdGljIHZv
aWQga29ial9lbmdpbmVfcmVsZWFzZShzdHJ1Y3Qga29iamVjdCAqa29iaikKK3sKKwlrZnJlZShr
b2JqKTsKK30KKworc3RhdGljIHN0cnVjdCBrb2JqX3R5cGUga29ial9lbmdpbmVfdHlwZSA9IHsK
KwkucmVsZWFzZSA9IGtvYmpfZW5naW5lX3JlbGVhc2UsCisJLnN5c2ZzX29wcyA9ICZrb2JqX3N5
c2ZzX29wcworfTsKKworc3RhdGljIHN0cnVjdCBrb2JqZWN0ICoKK2tvYmpfZW5naW5lKHN0cnVj
dCBrb2JqZWN0ICpkaXIsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1
Y3Qga29ial9lbmdpbmUgKmtlOworCisJa2UgPSBremFsbG9jKHNpemVvZigqa2UpLCBHRlBfS0VS
TkVMKTsKKwlpZiAoIWtlKQorCQlyZXR1cm4gTlVMTDsKKworCWtvYmplY3RfaW5pdCgma2UtPmJh
c2UsICZrb2JqX2VuZ2luZV90eXBlKTsKKwlrZS0+ZW5naW5lID0gZW5naW5lOworCisJaWYgKGtv
YmplY3RfYWRkKCZrZS0+YmFzZSwgZGlyLCAiJXMiLCBlbmdpbmUtPm5hbWUpKSB7CisJCWtvYmpl
Y3RfcHV0KCZrZS0+YmFzZSk7CisJCXJldHVybiBOVUxMOworCX0KKworCS8qIHhmZXIgb3duZXJz
aGlwIHRvIHN5c2ZzIHRyZWUgKi8KKwlyZXR1cm4gJmtlLT5iYXNlOworfQorCit2b2lkIGludGVs
X2VuZ2luZXNfYWRkX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0
YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlICpmaWxlc1tdID0geworCQkmbmFtZV9hdHRyLmF0
dHIsCisJCSZjbGFzc19hdHRyLmF0dHIsCisJCSZpbnN0X2F0dHIuYXR0ciwKKwkJJmNhcHNfYXR0
ci5hdHRyLAorCQkmYWxsX2NhcHNfYXR0ci5hdHRyLAorCQlOVUxMCisJfTsKKworCXN0cnVjdCBk
ZXZpY2UgKmtkZXYgPSBpOTE1LT5kcm0ucHJpbWFyeS0+a2RldjsKKwlzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmU7CisJc3RydWN0IGtvYmplY3QgKmRpcjsKKworCWlmICghSVNfRU5BQkxF
RChDT05GSUdfRFJNX0k5MTVfVU5TVEFCTEVfU1lTRlMpKQorCQlyZXR1cm47CisKKwlkaXIgPSBr
b2JqZWN0X2NyZWF0ZV9hbmRfYWRkKCJlbmdpbmUiLCAma2Rldi0+a29iaik7CisJaWYgKCFkaXIp
CisJCXJldHVybjsKKworCWZvcl9lYWNoX3VhYmlfZW5naW5lKGVuZ2luZSwgaTkxNSkgeworCQlz
dHJ1Y3Qga29iamVjdCAqa29iajsKKworCQlrb2JqID0ga29ial9lbmdpbmUoZGlyLCBlbmdpbmUp
OworCQlpZiAoIWtvYmopCisJCQlnb3RvIGVycl9lbmdpbmU7CisKKwkJaWYgKHN5c2ZzX2NyZWF0
ZV9maWxlcyhrb2JqLCBmaWxlcykpCisJCQlnb3RvIGVycl9vYmplY3Q7CisKKwkJaWYgKDApIHsK
K2Vycl9vYmplY3Q6CisJCQlrb2JqZWN0X3B1dChrb2JqKTsKK2Vycl9lbmdpbmU6CisJCQlkZXZf
ZXJyKGtkZXYsICJGYWlsZWQgdG8gYWRkIHN5c2ZzIGVuZ2luZSAnJXMnXG4iLAorCQkJCWVuZ2lu
ZS0+bmFtZSk7CisJCQlicmVhazsKKwkJfQorCX0KK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3N5c2ZzLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi5lZjQ0YTc0NWI3MGEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuaApAQCAtMCwwICsxLDE0IEBACisvKgorICogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVs
IENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBJTlRFTF9FTkdJTkVfU1lTRlNfSAorI2RlZmlu
ZSBJTlRFTF9FTkdJTkVfU1lTRlNfSAorCitzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKKwordm9p
ZCBpbnRlbF9lbmdpbmVzX2FkZF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
CisKKyNlbmRpZiAvKiBJTlRFTF9FTkdJTkVfU1lTRlNfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
eXNmcy5jCmluZGV4IDBjZWYzMTMwZGIwNS4uMjFjY2MwM2M0MWI3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zeXNmcy5jCkBAIC0zMCw2ICszMCw3IEBACiAjaW5jbHVkZSA8bGludXgvc3RhdC5oPgog
I2luY2x1ZGUgPGxpbnV4L3N5c2ZzLmg+CiAKKyNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfc3lz
ZnMuaCIKICNpbmNsdWRlICJndC9pbnRlbF9yYzYuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ycHMu
aCIKIApAQCAtNjAxLDYgKzYwMiw4IEBAIHZvaWQgaTkxNV9zZXR1cF9zeXNmcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCURSTV9FUlJPUigiUlBTIHN5c2ZzIHNldHVwIGZh
aWxlZFxuIik7CiAKIAlpOTE1X3NldHVwX2Vycm9yX2NhcHR1cmUoa2Rldik7CisKKwlpbnRlbF9l
bmdpbmVzX2FkZF9zeXNmcyhkZXZfcHJpdik7CiB9CiAKIHZvaWQgaTkxNV90ZWFyZG93bl9zeXNm
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI1LjAucmMyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
