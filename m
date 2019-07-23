Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54D67175A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 13:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832406E19C;
	Tue, 23 Jul 2019 11:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2EF6E19C;
 Tue, 23 Jul 2019 11:47:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17532710-1500050 
 for multiple; Tue, 23 Jul 2019 12:47:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 12:47:09 +0100
Message-Id: <20190723114709.26886-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mocs_settings: Identify Cometlake
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tZXRsYWtlIGlzIHlldCBhbm90aGVyIFNreWxha2UgcmVmcmVzaCBhbmQgdXNlZCB0aGUgc2Ft
ZSBtb2NzCnJlZ2lzdGVycy4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3ppbGxhLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMTM3ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGxpbnV4LmludGVsLmNvbT4KLS0tCiBsaWIvaW50ZWxfY2hpcHNldC5oICAgICAgICAgICAg
fCAzICsrLQogdGVzdHMvaTkxNS9nZW1fbW9jc19zZXR0aW5ncy5jIHwgMiArLQogMiBmaWxlcyBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGli
L2ludGVsX2NoaXBzZXQuaCBiL2xpYi9pbnRlbF9jaGlwc2V0LmgKaW5kZXggNzgxNDg2ZDAyLi4y
YmQ1N2Y0ZjAgMTAwNjQ0Ci0tLSBhL2xpYi9pbnRlbF9jaGlwc2V0LmgKKysrIGIvbGliL2ludGVs
X2NoaXBzZXQuaApAQCAtMTYyLDExICsxNjIsMTIgQEAgdm9pZCBpbnRlbF9jaGVja19wY2godm9p
ZCk7CiAjZGVmaW5lIElTX0hBU1dFTEwoZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2
aWQpLT5pc19oYXN3ZWxsKQogI2RlZmluZSBJU19CUk9BRFdFTEwoZGV2aWQpCShpbnRlbF9nZXRf
ZGV2aWNlX2luZm8oZGV2aWQpLT5pc19icm9hZHdlbGwpCiAjZGVmaW5lIElTX0NIRVJSWVZJRVco
ZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5pc19jaGVycnl2aWV3KQotI2Rl
ZmluZSBJU19LQUJZTEFLRShkZXZpZCkJKGludGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlz
X2thYnlsYWtlKQogI2RlZmluZSBJU19TS1lMQUtFKGRldmlkKQkoaW50ZWxfZ2V0X2RldmljZV9p
bmZvKGRldmlkKS0+aXNfc2t5bGFrZSkKICNkZWZpbmUgSVNfQlJPWFRPTihkZXZpZCkJKGludGVs
X2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlzX2Jyb3h0b24pCisjZGVmaW5lIElTX0tBQllMQUtF
KGRldmlkKQkoaW50ZWxfZ2V0X2RldmljZV9pbmZvKGRldmlkKS0+aXNfa2FieWxha2UpCiAjZGVm
aW5lIElTX0dFTUlOSUxBS0UoZGV2aWQpCShpbnRlbF9nZXRfZGV2aWNlX2luZm8oZGV2aWQpLT5p
c19nZW1pbmlsYWtlKQogI2RlZmluZSBJU19DT0ZGRUVMQUtFKGRldmlkKQkoaW50ZWxfZ2V0X2Rl
dmljZV9pbmZvKGRldmlkKS0+aXNfY29mZmVlbGFrZSkKKyNkZWZpbmUgSVNfQ09NRVRMQUtFKGRl
dmlkKQkoaW50ZWxfZ2V0X2RldmljZV9pbmZvKGRldmlkKS0+aXNfY29tZXRsYWtlKQogI2RlZmlu
ZSBJU19DQU5OT05MQUtFKGRldmlkKQkoaW50ZWxfZ2V0X2RldmljZV9pbmZvKGRldmlkKS0+aXNf
Y2Fubm9ubGFrZSkKICNkZWZpbmUgSVNfSUNFTEFLRShkZXZpZCkJKGludGVsX2dldF9kZXZpY2Vf
aW5mbyhkZXZpZCktPmlzX2ljZWxha2UpCiAjZGVmaW5lIElTX1RJR0VSTEFLRShkZXZpZCkJKGlu
dGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCktPmlzX3RpZ2VybGFrZSkKZGlmZiAtLWdpdCBhL3Rl
c3RzL2k5MTUvZ2VtX21vY3Nfc2V0dGluZ3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0dGlu
Z3MuYwppbmRleCAxYTMxMWI4YzAuLmYzZWU4YTdiYyAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9n
ZW1fbW9jc19zZXR0aW5ncy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0dGluZ3MuYwpA
QCAtMTM3LDcgKzEzNyw3IEBAIHN0YXRpYyBib29sIGdldF9tb2NzX3NldHRpbmdzKGludCBmZCwg
c3RydWN0IG1vY3NfdGFibGUgKnRhYmxlLCBib29sIGRpcnR5KQogCXVpbnQzMl90IGRldmlkID0g
aW50ZWxfZ2V0X2RybV9kZXZpZChmZCk7CiAJYm9vbCByZXN1bHQgPSBmYWxzZTsKIAotCWlmIChJ
U19TS1lMQUtFKGRldmlkKSB8fCBJU19LQUJZTEFLRShkZXZpZCkpIHsKKwlpZiAoSVNfU0tZTEFL
RShkZXZpZCkgfHwgSVNfS0FCWUxBS0UoZGV2aWQpIHx8IElTX0NPTUVUTEFLRShkZXZpZCkpIHsK
IAkJaWYgKGRpcnR5KSB7CiAJCQl0YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKGRpcnR5X3NreWxh
a2VfbW9jc190YWJsZSk7CiAJCQl0YWJsZS0+dGFibGUgPSBkaXJ0eV9za3lsYWtlX21vY3NfdGFi
bGU7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
