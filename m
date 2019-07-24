Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84D7245E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 04:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763996E423;
	Wed, 24 Jul 2019 02:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF216E422
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 02:22:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 19:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="160422008"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 23 Jul 2019 19:22:16 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 19:21:46 -0700
Message-Id: <20190724022153.8927-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915/uc: Unify uC platform check
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

V2UgaGF2ZSBzZXZlcmFsIEhBU18qIGNoZWNrcyBmb3IgR3VDIGFuZCBIdUMgYnV0IHdlIG1vc3Rs
eSB1c2UgSEFTX0dVQwphbmQgSEFTX0hVQywgd2l0aCBvbmx5IDEgZXhjZXB0aW9uLiBTaW5jZSBv
dXIgSFcgYWx3YXlzIGhhcyBlaXRoZXIKYm90aCB1QyBvciBuZWl0aGVyIG9mIHRoZW0sIGp1c3Qg
cmVwbGFjZSBhbGwgdGhlIGNoZWNrcyB3aXRoIGEgdW5pZmllZApIQVNfVUMuCgp2MjogdXNlIEhB
U19HVF9VQyAoTWljaGFsKQoKU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpBY2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVz
ZXQuYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3
LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgfCAg
MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgfCAgMiArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3VjLmMgfCAgNCArKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICB8ICA2ICsrKy0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgfCAxNSArKy0tLS0tLS0tLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgIHwgIDQgKystLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dvcGNtLmMgICAgICAgIHwgIDQgKystLQogMTMgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0
aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMKaW5kZXggNTVlMmRkY2JkMjE1Li45OGMwNzFmZTUzMmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYwpAQCAtNTk1LDcgKzU5NSw3IEBAIGludCBpbnRlbF9yZXNldF9ndWMo
c3RydWN0IGludGVsX2d0ICpndCkKIAkJSU5URUxfR0VOKGd0LT5pOTE1KSA+PSAxMSA/IEdFTjEx
X0dSRE9NX0dVQyA6IEdFTjlfR1JET01fR1VDOwogCWludCByZXQ7CiAKLQlHRU1fQlVHX09OKCFI
QVNfR1VDKGd0LT5pOTE1KSk7CisJR0VNX0JVR19PTighSEFTX0dUX1VDKGd0LT5pOTE1KSk7CiAK
IAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldChndC0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsK
IAlyZXQgPSBnZW42X2h3X2RvbWFpbl9yZXNldChndCwgZ3VjX2RvbWFpbik7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jCmluZGV4IDNkZmE0MGZkYmU5OS4uODcxNjll
ODI2NzQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
ZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwpAQCAt
ODAsNyArODAsNyBAQCBzdGF0aWMgdm9pZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19m
dyAqZ3VjX2Z3KQogCiAJR0VNX0JVR19PTihndWNfZnctPnR5cGUgIT0gSU5URUxfVUNfRldfVFlQ
RV9HVUMpOwogCi0JaWYgKCFIQVNfR1VDKGk5MTUpKSB7CisJaWYgKCFIQVNfR1RfVUMoaTkxNSkp
IHsKIAkJZ3VjX2Z3LT5mZXRjaF9zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9S
VEVEOwogCQlyZXR1cm47CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfaHVjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNf
ZncuYwppbmRleCA1NDM4NTRjNDJkOWQuLmZmNmY3YjE1N2VjYiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMKQEAgLTc0LDcgKzc0LDcgQEAgc3RhdGljIHZvaWQg
aHVjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19mdykKIAogCUdFTV9CVUdfT04o
aHVjX2Z3LT50eXBlICE9IElOVEVMX1VDX0ZXX1RZUEVfSFVDKTsKIAotCWlmICghSEFTX0hVQyhk
ZXZfcHJpdikpIHsKKwlpZiAoIUhBU19HVF9VQyhkZXZfcHJpdikpIHsKIAkJaHVjX2Z3LT5mZXRj
aF9zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEOwogCQlyZXR1cm47CiAJ
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKaW5kZXggNDQ4MGEzZGMyNDQ5Li5k
NjBjNTZmZDcyZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNjEs
NyArNjEsNyBAQCBzdGF0aWMgaW50IF9fZ2V0X3BsYXRmb3JtX2VuYWJsZV9ndWMoc3RydWN0IGlu
dGVsX3VjICp1YykKIAlzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19mdyA9ICZ1Yy0+aHVjLmZ3Owog
CWludCBlbmFibGVfZ3VjID0gMDsKIAotCWlmICghSEFTX0dVQyh1Y190b19ndCh1YyktPmk5MTUp
KQorCWlmICghSEFTX0dUX1VDKHVjX3RvX2d0KHVjKS0+aTkxNSkpCiAJCXJldHVybiAwOwogCiAJ
LyogV2UgZG9uJ3Qgd2FudCB0byBlbmFibGUgR3VDL0h1QyBvbiBwcmUtR2VuMTEgYnkgZGVmYXVs
dCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3Vj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9zZWxmdGVzdF9ndWMuYwppbmRleCA5M2Y3
YzkzMGFiMTguLjM3MWY3YTYwYzk4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvc2VsZnRlc3RfZ3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2Vs
ZnRlc3RfZ3VjLmMKQEAgLTEzNCw3ICsxMzQsNyBAQCBzdGF0aWMgaW50IGlndF9ndWNfY2xpZW50
cyh2b2lkICphcmdzKQogCXN0cnVjdCBpbnRlbF9ndWMgKmd1YzsKIAlpbnQgZXJyID0gMDsKIAot
CUdFTV9CVUdfT04oIUhBU19HVUMoZGV2X3ByaXYpKTsKKwlHRU1fQlVHX09OKCFIQVNfR1RfVUMo
ZGV2X3ByaXYpKTsKIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJ
d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiAK
QEAgLTIyNiw3ICsyMjYsNyBAQCBzdGF0aWMgaW50IGlndF9ndWNfZG9vcmJlbGxzKHZvaWQgKmFy
ZykKIAlpbnQgaSwgZXJyID0gMDsKIAl1MTYgZGJfaWQ7CiAKLQlHRU1fQlVHX09OKCFIQVNfR1VD
KGRldl9wcml2KSk7CisJR0VNX0JVR19PTighSEFTX0dUX1VDKGRldl9wcml2KSk7CiAJbXV0ZXhf
bG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCXdha2VyZWYgPSBpbnRlbF9ydW50
aW1lX3BtX2dldCgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCmluZGV4IDZkMzkxMTQ2OTgwMS4uMjQ3ODdiYjQ4YzlmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMTg2NSw3ICsxODY1LDcgQEAgc3RhdGljIGludCBpOTE1
X2h1Y19sb2FkX3N0YXR1c19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAlzdHJ1Y3QgZHJtX3ByaW50ZXIgcDsKIAotCWlmICgh
SEFTX0hVQyhkZXZfcHJpdikpCisJaWYgKCFIQVNfR1RfVUMoZGV2X3ByaXYpKQogCQlyZXR1cm4g
LUVOT0RFVjsKIAogCXAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsKQEAgLTE4ODMsNyArMTg4
Myw3IEBAIHN0YXRpYyBpbnQgaTkxNV9ndWNfbG9hZF9zdGF0dXNfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHZvaWQgKmRhdGEpCiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAJc3RydWN0IGRy
bV9wcmludGVyIHA7CiAKLQlpZiAoIUhBU19HVUMoZGV2X3ByaXYpKQorCWlmICghSEFTX0dUX1VD
KGRldl9wcml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlwID0gZHJtX3NlcV9maWxlX3ByaW50
ZXIobSk7CkBAIC0yMDYyLDcgKzIwNjIsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ3VjX2xvZ19kdW1w
KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAl1MzIgKmxvZzsKIAlpbnQgaSA9IDA7
CiAKLQlpZiAoIUhBU19HVUMoZGV2X3ByaXYpKQorCWlmICghSEFTX0dUX1VDKGRldl9wcml2KSkK
IAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZiAoZHVtcF9sb2FkX2VycikKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCmluZGV4IDBlNDRjYzRiMmNhMS4uYTFjNDUzNDdlMTVhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKQEAgLTIyNzEsMjAgKzIyNzEsOSBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfSVBDKGRldl9wcml2KQkJ
IChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQogCi0vKgotICogRm9yIG5v
dywgYW55dGhpbmcgd2l0aCBhIEd1QyByZXF1aXJlcyB1Q29kZSBsb2FkaW5nLCBhbmQgdGhlbiBz
dXBwb3J0cwotICogY29tbWFuZCBzdWJtaXNzaW9uIG9uY2UgbG9hZGVkLiBCdXQgdGhlc2UgYXJl
IGxvZ2ljYWxseSBpbmRlcGVuZGVudAotICogcHJvcGVydGllcywgc28gd2UgaGF2ZSBzZXBhcmF0
ZSBtYWNyb3MgdG8gdGVzdCB0aGVtLgotICovCi0jZGVmaW5lIEhBU19HVUMoZGV2X3ByaXYpCShJ
TlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX2d1YykKLSNkZWZpbmUgSEFTX0dVQ19VQ09ERShkZXZf
cHJpdikJKEhBU19HVUMoZGV2X3ByaXYpKQotI2RlZmluZSBIQVNfR1VDX1NDSEVEKGRldl9wcml2
KQkoSEFTX0dVQyhkZXZfcHJpdikpCi0KLS8qIEZvciBub3csIGFueXRoaW5nIHdpdGggYSBHdUMg
aGFzIGFsc28gSHVDICovCi0jZGVmaW5lIEhBU19IVUMoZGV2X3ByaXYpCShIQVNfR1VDKGRldl9w
cml2KSkKLSNkZWZpbmUgSEFTX0hVQ19VQ09ERShkZXZfcHJpdikJKEhBU19HVUMoZGV2X3ByaXYp
KQorI2RlZmluZSBIQVNfR1RfVUMoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFz
X2d0X3VjKQogCi0vKiBIYXZpbmcgYSBHdUMgaXMgbm90IHRoZSBzYW1lIGFzIHVzaW5nIGEgR3VD
ICovCisvKiBIYXZpbmcgYSB1QyBpcyBub3QgdGhlIHNhbWUgYXMgdXNpbmcgYSB1QyAqLwogI2Rl
ZmluZSBVU0VTX0dVQyhkZXZfcHJpdikJCWludGVsX3VjX2lzX3VzaW5nX2d1YygmKGRldl9wcml2
KS0+Z3QudWMpCiAjZGVmaW5lIFVTRVNfR1VDX1NVQk1JU1NJT04oZGV2X3ByaXYpCWludGVsX3Vj
X2lzX3VzaW5nX2d1Y19zdWJtaXNzaW9uKCYoZGV2X3ByaXYpLT5ndC51YykKICNkZWZpbmUgVVNF
U19IVUMoZGV2X3ByaXYpCQlpbnRlbF91Y19pc191c2luZ19odWMoJihkZXZfcHJpdiktPmd0LnVj
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggMjE5MzY4N2VhYzcyLi41
NmRmYzI2NTA4MzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtNjUx
LDcgKzY1MSw3IEBAIHN0YXRpYyB2b2lkIGVycl9wcmludF91YyhzdHJ1Y3QgZHJtX2k5MTVfZXJy
b3Jfc3RhdGVfYnVmICptLAogCWNvbnN0IHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJyb3IgPQog
CQljb250YWluZXJfb2YoZXJyb3JfdWMsIHR5cGVvZigqZXJyb3IpLCB1Yyk7CiAKLQlpZiAoIWVy
cm9yLT5kZXZpY2VfaW5mby5oYXNfZ3VjKQorCWlmICghZXJyb3ItPmRldmljZV9pbmZvLmhhc19n
dF91YykKIAkJcmV0dXJuOwogCiAJaW50ZWxfdWNfZndfZHVtcCgmZXJyb3JfdWMtPmd1Y19mdywg
JnApOwpAQCAtMTQ1NSw3ICsxNDU1LDcgQEAgY2FwdHVyZV91Y19zdGF0ZShzdHJ1Y3QgaTkxNV9n
cHVfc3RhdGUgKmVycm9yLCBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQogCXN0cnVjdCBpbnRl
bF91YyAqdWMgPSAmaTkxNS0+Z3QudWM7CiAKIAkvKiBDYXB0dXJpbmcgdUMgc3RhdGUgd29uJ3Qg
YmUgdXNlZnVsIGlmIHRoZXJlIGlzIG5vIEd1QyAqLwotCWlmICghZXJyb3ItPmRldmljZV9pbmZv
Lmhhc19ndWMpCisJaWYgKCFlcnJvci0+ZGV2aWNlX2luZm8uaGFzX2d0X3VjKQogCQlyZXR1cm47
CiAKIAllcnJvcl91Yy0+Z3VjX2Z3ID0gdWMtPmd1Yy5mdzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
CmluZGV4IDExYzczYWY5MjU5Ny4uYTE3ZDRmZDE3OTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKQEAgLTQ3NjYsNyArNDc2Niw3IEBAIHZvaWQgaW50ZWxfaXJxX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlkZXZfcHJpdi0+bDNfcGFyaXR5LnJlbWFwX2luZm9b
aV0gPSBOVUxMOwogCiAJLyogcHJlLWdlbjExIHRoZSBndWMgaXJxcyBiaXRzIGFyZSBpbiB0aGUg
dXBwZXIgMTYgYml0cyBvZiB0aGUgcG0gcmVnICovCi0JaWYgKEhBU19HVUNfU0NIRUQoZGV2X3By
aXYpICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKKwlpZiAoSEFTX0dUX1VDKGRldl9wcml2
KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCiAJCWRldl9wcml2LT5ndC5wbV9ndWNfZXZl
bnRzID0gR1VDX0lOVFJfR1VDMkhPU1QgPDwgMTY7CiAKIAkvKiBMZXQncyB0cmFjayB0aGUgZW5h
YmxlZCBycHMgZXZlbnRzICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCA0MDA3NmJhNDMx
ZDQuLmJkOTIxMWIzZDc2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC01OTUsNyArNTk1
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9jaGVycnl2
aWV3X2luZm8gPSB7CiAJR0VOOV9ERUZBVUxUX1BBR0VfU0laRVMsIFwKIAkuaGFzX2xvZ2ljYWxf
cmluZ19wcmVlbXB0aW9uID0gMSwgXAogCS5kaXNwbGF5Lmhhc19jc3IgPSAxLCBcCi0JLmhhc19n
dWMgPSAxLCBcCisJLmhhc19ndF91YyA9IDEsIFwKIAkuZGlzcGxheS5oYXNfaXBjID0gMSwgXAog
CS5kZGJfc2l6ZSA9IDg5NgogCkBAIC02NDcsNyArNjQ3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9za3lsYWtlX2d0NF9pbmZvID0gewogCS5kaXNwbGF5
Lmhhc19kcF9tc3QgPSAxLCBcCiAJLmhhc19sb2dpY2FsX3JpbmdfY29udGV4dHMgPSAxLCBcCiAJ
Lmhhc19sb2dpY2FsX3JpbmdfcHJlZW1wdGlvbiA9IDEsIFwKLQkuaGFzX2d1YyA9IDEsIFwKKwku
aGFzX2d0X3VjID0gMSwgXAogCS5wcGd0dF90eXBlID0gSU5URUxfUFBHVFRfRlVMTCwgXAogCS5w
cGd0dF9zaXplID0gNDgsIFwKIAkuaGFzX3Jlc2V0X2VuZ2luZSA9IDEsIFwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCmluZGV4IDQ1YTliYWRjOWI4ZS4uNGY1OGU4ZDcx
YjY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTExMiw3
ICsxMTIsNyBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgewogCWZ1bmMoZ3B1X3Jlc2V0X2Nsb2Ji
ZXJzX2Rpc3BsYXkpOyBcCiAJZnVuYyhoYXNfcmVzZXRfZW5naW5lKTsgXAogCWZ1bmMoaGFzX2Zw
Z2FfZGJnKTsgXAotCWZ1bmMoaGFzX2d1Yyk7IFwKKwlmdW5jKGhhc19ndF91Yyk7IFwKIAlmdW5j
KGhhc19sM19kcGYpOyBcCiAJZnVuYyhoYXNfbGxjKTsgXAogCWZ1bmMoaGFzX2xvZ2ljYWxfcmlu
Z19jb250ZXh0cyk7IFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDIyNDcyZjJiZDMxYi4u
MzAzOTliMjQ1ZjA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTcxNjIsNyArNzE2Miw3
IEBAIHN0YXRpYyB2b2lkIGdlbjExX2VuYWJsZV9yYzYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGRldl9wcml2LCBpZCkKIAkJSTkx
NV9XUklURShSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19iYXNlKSwgMTApOwogCi0JaWYgKEhB
U19HVUMoZGV2X3ByaXYpKQorCWlmIChIQVNfR1RfVUMoZGV2X3ByaXYpKQogCQlJOTE1X1dSSVRF
KEdVQ19NQVhfSURMRV9DT1VOVCwgMHhBKTsKIAogCUk5MTVfV1JJVEUoR0VONl9SQ19TTEVFUCwg
MCk7CkBAIC03MjQzLDcgKzcyNDMsNyBAQCBzdGF0aWMgdm9pZCBnZW45X2VuYWJsZV9yYzYoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUs
IGRldl9wcml2LCBpZCkKIAkJSTkxNV9XUklURShSSU5HX01BWF9JRExFKGVuZ2luZS0+bW1pb19i
YXNlKSwgMTApOwogCi0JaWYgKEhBU19HVUMoZGV2X3ByaXYpKQorCWlmIChIQVNfR1RfVUMoZGV2
X3ByaXYpKQogCQlJOTE1X1dSSVRFKEdVQ19NQVhfSURMRV9DT1VOVCwgMHhBKTsKIAogCUk5MTVf
V1JJVEUoR0VONl9SQ19TTEVFUCwgMCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93b3BjbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYwppbmRl
eCBmYWZkNGU2YTExNDcuLjBlODZhOWU4NWI0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfd29wY20uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3Bj
bS5jCkBAIC03NCw3ICs3NCw3IEBAIHZvaWQgaW50ZWxfd29wY21faW5pdF9lYXJseShzdHJ1Y3Qg
aW50ZWxfd29wY20gKndvcGNtKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
d29wY21fdG9faTkxNSh3b3BjbSk7CiAKLQlpZiAoIUhBU19HVUMoaTkxNSkpCisJaWYgKCFIQVNf
R1RfVUMoaTkxNSkpCiAJCXJldHVybjsKIAogCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpCkBA
IC0yNjMsNyArMjYzLDcgQEAgaW50IGludGVsX3dvcGNtX2luaXRfaHcoc3RydWN0IGludGVsX3dv
cGNtICp3b3BjbSwgc3RydWN0IGludGVsX2d0ICpndCkKIAlpZiAoIVVTRVNfR1VDKGk5MTUpKQog
CQlyZXR1cm4gMDsKIAotCUdFTV9CVUdfT04oIUhBU19HVUMoaTkxNSkpOworCUdFTV9CVUdfT04o
IUhBU19HVF9VQyhpOTE1KSk7CiAJR0VNX0JVR19PTighd29wY20tPmd1Yy5zaXplKTsKIAlHRU1f
QlVHX09OKCF3b3BjbS0+Z3VjLmJhc2UpOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
