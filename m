Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6977470D3D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1C989F45;
	Mon, 22 Jul 2019 23:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087EA89F49
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:21:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="188709301"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2019 16:21:19 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 16:20:41 -0700
Message-Id: <20190722232048.9970-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
References: <20190722232048.9970-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/uc: Unify uC platform check
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
cmVwbGFjZSBhbGwgdGhlIGNoZWNrcyB3aXRoIGEgdW5pZmllZApIQVNfVUMuCgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgpDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgfCAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3LmMgfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvc2VsZnRlc3RfZ3VjLmMgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyAgICAgICB8ICA2ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgfCAxNSArKy0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMgICAgIHwgIDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyAgICAgICAgICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5oICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAg
ICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAgIHwg
IDQgKystLQogMTMgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggNTVlMmRkY2JkMjE1
Li43ZmQxMzVhNWE0MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAt
NTk1LDcgKzU5NSw3IEBAIGludCBpbnRlbF9yZXNldF9ndWMoc3RydWN0IGludGVsX2d0ICpndCkK
IAkJSU5URUxfR0VOKGd0LT5pOTE1KSA+PSAxMSA/IEdFTjExX0dSRE9NX0dVQyA6IEdFTjlfR1JE
T01fR1VDOwogCWludCByZXQ7CiAKLQlHRU1fQlVHX09OKCFIQVNfR1VDKGd0LT5pOTE1KSk7CisJ
R0VNX0JVR19PTighSEFTX1VDKGd0LT5pOTE1KSk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtl
X2dldChndC0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAlyZXQgPSBnZW42X2h3X2RvbWFpbl9y
ZXNldChndCwgZ3VjX2RvbWFpbik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Y19mdy5jCmluZGV4IDNkZmE0MGZkYmU5OS4uZGRkM2IyMTYyNTI4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZncuYwpAQCAtODAsNyArODAsNyBAQCBzdGF0aWMgdm9p
ZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQogCiAJR0VNX0JVR19P
TihndWNfZnctPnR5cGUgIT0gSU5URUxfVUNfRldfVFlQRV9HVUMpOwogCi0JaWYgKCFIQVNfR1VD
KGk5MTUpKSB7CisJaWYgKCFIQVNfVUMoaTkxNSkpIHsKIAkJZ3VjX2Z3LT5mZXRjaF9zdGF0dXMg
PSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEOwogCQlyZXR1cm47CiAJfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYwppbmRleCA1NDM4NTRjNDJkOWQuLjE1
ODkxY2Y0YmIyYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMK
QEAgLTc0LDcgKzc0LDcgQEAgc3RhdGljIHZvaWQgaHVjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxf
dWNfZncgKmh1Y19mdykKIAogCUdFTV9CVUdfT04oaHVjX2Z3LT50eXBlICE9IElOVEVMX1VDX0ZX
X1RZUEVfSFVDKTsKIAotCWlmICghSEFTX0hVQyhkZXZfcHJpdikpIHsKKwlpZiAoIUhBU19VQyhk
ZXZfcHJpdikpIHsKIAkJaHVjX2Z3LT5mZXRjaF9zdGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9O
T1RfU1VQUE9SVEVEOwogCQlyZXR1cm47CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMKaW5kZXggNDQ4MGEzZGMyNDQ5Li4wZDUwYjczZjZjZmUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNjEsNyArNjEsNyBAQCBzdGF0aWMgaW50IF9fZ2V0X3Bs
YXRmb3JtX2VuYWJsZV9ndWMoc3RydWN0IGludGVsX3VjICp1YykKIAlzdHJ1Y3QgaW50ZWxfdWNf
ZncgKmh1Y19mdyA9ICZ1Yy0+aHVjLmZ3OwogCWludCBlbmFibGVfZ3VjID0gMDsKIAotCWlmICgh
SEFTX0dVQyh1Y190b19ndCh1YyktPmk5MTUpKQorCWlmICghSEFTX1VDKHVjX3RvX2d0KHVjKS0+
aTkxNSkpCiAJCXJldHVybiAwOwogCiAJLyogV2UgZG9uJ3Qgd2FudCB0byBlbmFibGUgR3VDL0h1
QyBvbiBwcmUtR2VuMTEgYnkgZGVmYXVsdCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9z
ZWxmdGVzdF9ndWMuYwppbmRleCA5M2Y3YzkzMGFiMTguLmQxYWExODAwNTBjNCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3VjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvc2VsZnRlc3RfZ3VjLmMKQEAgLTEzNCw3ICsxMzQsNyBAQCBz
dGF0aWMgaW50IGlndF9ndWNfY2xpZW50cyh2b2lkICphcmdzKQogCXN0cnVjdCBpbnRlbF9ndWMg
Kmd1YzsKIAlpbnQgZXJyID0gMDsKIAotCUdFTV9CVUdfT04oIUhBU19HVUMoZGV2X3ByaXYpKTsK
KwlHRU1fQlVHX09OKCFIQVNfVUMoZGV2X3ByaXYpKTsKIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+
ZHJtLnN0cnVjdF9tdXRleCk7CiAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZkZXZf
cHJpdi0+cnVudGltZV9wbSk7CiAKQEAgLTIyNiw3ICsyMjYsNyBAQCBzdGF0aWMgaW50IGlndF9n
dWNfZG9vcmJlbGxzKHZvaWQgKmFyZykKIAlpbnQgaSwgZXJyID0gMDsKIAl1MTYgZGJfaWQ7CiAK
LQlHRU1fQlVHX09OKCFIQVNfR1VDKGRldl9wcml2KSk7CisJR0VNX0JVR19PTighSEFTX1VDKGRl
dl9wcml2KSk7CiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCXdh
a2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDZiODRkMDRhNmEyOC4uNDI0OTEwN2Y5
ZDBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMTg2NSw3ICsxODY1LDcg
QEAgc3RhdGljIGludCBpOTE1X2h1Y19sb2FkX3N0YXR1c19pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqZGF0YSkKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAlzdHJ1Y3QgZHJtX3By
aW50ZXIgcDsKIAotCWlmICghSEFTX0hVQyhkZXZfcHJpdikpCisJaWYgKCFIQVNfVUMoZGV2X3By
aXYpKQogCQlyZXR1cm4gLUVOT0RFVjsKIAogCXAgPSBkcm1fc2VxX2ZpbGVfcHJpbnRlcihtKTsK
QEAgLTE4ODMsNyArMTg4Myw3IEBAIHN0YXRpYyBpbnQgaTkxNV9ndWNfbG9hZF9zdGF0dXNfaW5m
byhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJaW50ZWxfd2FrZXJlZl90IHdha2Vy
ZWY7CiAJc3RydWN0IGRybV9wcmludGVyIHA7CiAKLQlpZiAoIUhBU19HVUMoZGV2X3ByaXYpKQor
CWlmICghSEFTX1VDKGRldl9wcml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlwID0gZHJtX3Nl
cV9maWxlX3ByaW50ZXIobSk7CkBAIC0yMDYyLDcgKzIwNjIsNyBAQCBzdGF0aWMgaW50IGk5MTVf
Z3VjX2xvZ19kdW1wKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAl1MzIgKmxvZzsK
IAlpbnQgaSA9IDA7CiAKLQlpZiAoIUhBU19HVUMoZGV2X3ByaXYpKQorCWlmICghSEFTX1VDKGRl
dl9wcml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZiAoZHVtcF9sb2FkX2VycikKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IDBlNDRjYzRiMmNhMS4uMDZkZGM1ZGYxMmZhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTIyNzEsMjAgKzIyNzEsOSBAQCBJU19TVUJQTEFURk9STShj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogI2RlZmluZSBIQVNfSVBDKGRl
dl9wcml2KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfaXBjKQogCi0vKgot
ICogRm9yIG5vdywgYW55dGhpbmcgd2l0aCBhIEd1QyByZXF1aXJlcyB1Q29kZSBsb2FkaW5nLCBh
bmQgdGhlbiBzdXBwb3J0cwotICogY29tbWFuZCBzdWJtaXNzaW9uIG9uY2UgbG9hZGVkLiBCdXQg
dGhlc2UgYXJlIGxvZ2ljYWxseSBpbmRlcGVuZGVudAotICogcHJvcGVydGllcywgc28gd2UgaGF2
ZSBzZXBhcmF0ZSBtYWNyb3MgdG8gdGVzdCB0aGVtLgotICovCi0jZGVmaW5lIEhBU19HVUMoZGV2
X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX2d1YykKLSNkZWZpbmUgSEFTX0dVQ19V
Q09ERShkZXZfcHJpdikJKEhBU19HVUMoZGV2X3ByaXYpKQotI2RlZmluZSBIQVNfR1VDX1NDSEVE
KGRldl9wcml2KQkoSEFTX0dVQyhkZXZfcHJpdikpCi0KLS8qIEZvciBub3csIGFueXRoaW5nIHdp
dGggYSBHdUMgaGFzIGFsc28gSHVDICovCi0jZGVmaW5lIEhBU19IVUMoZGV2X3ByaXYpCShIQVNf
R1VDKGRldl9wcml2KSkKLSNkZWZpbmUgSEFTX0hVQ19VQ09ERShkZXZfcHJpdikJKEhBU19HVUMo
ZGV2X3ByaXYpKQorI2RlZmluZSBIQVNfVUMoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2
KS0+aGFzX3VjKQogCi0vKiBIYXZpbmcgYSBHdUMgaXMgbm90IHRoZSBzYW1lIGFzIHVzaW5nIGEg
R3VDICovCisvKiBIYXZpbmcgYSB1QyBpcyBub3QgdGhlIHNhbWUgYXMgdXNpbmcgYSB1QyAqLwog
I2RlZmluZSBVU0VTX0dVQyhkZXZfcHJpdikJCWludGVsX3VjX2lzX3VzaW5nX2d1YygmKGRldl9w
cml2KS0+Z3QudWMpCiAjZGVmaW5lIFVTRVNfR1VDX1NVQk1JU1NJT04oZGV2X3ByaXYpCWludGVs
X3VjX2lzX3VzaW5nX2d1Y19zdWJtaXNzaW9uKCYoZGV2X3ByaXYpLT5ndC51YykKICNkZWZpbmUg
VVNFU19IVUMoZGV2X3ByaXYpCQlpbnRlbF91Y19pc191c2luZ19odWMoJihkZXZfcHJpdiktPmd0
LnVjKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggYzViODliZjRkNjE2
Li4xZGI0ZDczMDI3MzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAt
NjIwLDcgKzYyMCw3IEBAIHN0YXRpYyB2b2lkIGVycl9wcmludF91YyhzdHJ1Y3QgZHJtX2k5MTVf
ZXJyb3Jfc3RhdGVfYnVmICptLAogCWNvbnN0IHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJyb3Ig
PQogCQljb250YWluZXJfb2YoZXJyb3JfdWMsIHR5cGVvZigqZXJyb3IpLCB1Yyk7CiAKLQlpZiAo
IWVycm9yLT5kZXZpY2VfaW5mby5oYXNfZ3VjKQorCWlmICghZXJyb3ItPmRldmljZV9pbmZvLmhh
c191YykKIAkJcmV0dXJuOwogCiAJaW50ZWxfdWNfZndfZHVtcCgmZXJyb3JfdWMtPmd1Y19mdywg
JnApOwpAQCAtMTU1Nyw3ICsxNTU3LDcgQEAgc3RhdGljIHZvaWQgY2FwdHVyZV91Y19zdGF0ZShz
dHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogCXN0cnVjdCBpbnRlbF91YyAqdWMgPSAmaTkx
NS0+Z3QudWM7CiAKIAkvKiBDYXB0dXJpbmcgdUMgc3RhdGUgd29uJ3QgYmUgdXNlZnVsIGlmIHRo
ZXJlIGlzIG5vIEd1QyAqLwotCWlmICghZXJyb3ItPmRldmljZV9pbmZvLmhhc19ndWMpCisJaWYg
KCFlcnJvci0+ZGV2aWNlX2luZm8uaGFzX3VjKQogCQlyZXR1cm47CiAKIAllcnJvcl91Yy0+Z3Vj
X2Z3ID0gdWMtPmd1Yy5mdzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDExYzczYWY5MjU5
Ny4uMGIyMzUxYTZjNDkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTQ3NjYsNyArNDc2
Niw3IEBAIHZvaWQgaW50ZWxfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCQlkZXZfcHJpdi0+bDNfcGFyaXR5LnJlbWFwX2luZm9baV0gPSBOVUxMOwogCiAJLyog
cHJlLWdlbjExIHRoZSBndWMgaXJxcyBiaXRzIGFyZSBpbiB0aGUgdXBwZXIgMTYgYml0cyBvZiB0
aGUgcG0gcmVnICovCi0JaWYgKEhBU19HVUNfU0NIRUQoZGV2X3ByaXYpICYmIElOVEVMX0dFTihk
ZXZfcHJpdikgPCAxMSkKKwlpZiAoSEFTX1VDKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3By
aXYpIDwgMTEpCiAJCWRldl9wcml2LT5ndC5wbV9ndWNfZXZlbnRzID0gR1VDX0lOVFJfR1VDMkhP
U1QgPDwgMTY7CiAKIAkvKiBMZXQncyB0cmFjayB0aGUgZW5hYmxlZCBycHMgZXZlbnRzICovCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwppbmRleCA0MDA3NmJhNDMxZDQuLmI1ZWNlOTI2ODNmZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jCkBAIC01OTUsNyArNTk1LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9jaGVycnl2aWV3X2luZm8gPSB7CiAJR0VOOV9E
RUZBVUxUX1BBR0VfU0laRVMsIFwKIAkuaGFzX2xvZ2ljYWxfcmluZ19wcmVlbXB0aW9uID0gMSwg
XAogCS5kaXNwbGF5Lmhhc19jc3IgPSAxLCBcCi0JLmhhc19ndWMgPSAxLCBcCisJLmhhc191YyA9
IDEsIFwKIAkuZGlzcGxheS5oYXNfaXBjID0gMSwgXAogCS5kZGJfc2l6ZSA9IDg5NgogCkBAIC02
NDcsNyArNjQ3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRl
bF9za3lsYWtlX2d0NF9pbmZvID0gewogCS5kaXNwbGF5Lmhhc19kcF9tc3QgPSAxLCBcCiAJLmhh
c19sb2dpY2FsX3JpbmdfY29udGV4dHMgPSAxLCBcCiAJLmhhc19sb2dpY2FsX3JpbmdfcHJlZW1w
dGlvbiA9IDEsIFwKLQkuaGFzX2d1YyA9IDEsIFwKKwkuaGFzX3VjID0gMSwgXAogCS5wcGd0dF90
eXBlID0gSU5URUxfUFBHVFRfRlVMTCwgXAogCS5wcGd0dF9zaXplID0gNDgsIFwKIAkuaGFzX3Jl
c2V0X2VuZ2luZSA9IDEsIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5o
CmluZGV4IDQ1YTliYWRjOWI4ZS4uOTllNWIyMmUyNmY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTExMiw3ICsxMTIsNiBAQCBlbnVtIGludGVsX3BwZ3R0
X3R5cGUgewogCWZ1bmMoZ3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpOyBcCiAJZnVuYyhoYXNf
cmVzZXRfZW5naW5lKTsgXAogCWZ1bmMoaGFzX2ZwZ2FfZGJnKTsgXAotCWZ1bmMoaGFzX2d1Yyk7
IFwKIAlmdW5jKGhhc19sM19kcGYpOyBcCiAJZnVuYyhoYXNfbGxjKTsgXAogCWZ1bmMoaGFzX2xv
Z2ljYWxfcmluZ19jb250ZXh0cyk7IFwKQEAgLTEyNCw2ICsxMjMsNyBAQCBlbnVtIGludGVsX3Bw
Z3R0X3R5cGUgewogCWZ1bmMoaGFzX3Jwcyk7IFwKIAlmdW5jKGhhc19ydW50aW1lX3BtKTsgXAog
CWZ1bmMoaGFzX3Nub29wKTsgXAorCWZ1bmMoaGFzX3VjKTsgXAogCWZ1bmMoaGFzX2NvaGVyZW50
X2dndHQpOyBcCiAJZnVuYyh1bmZlbmNlZF9uZWVkc19hbGlnbm1lbnQpOyBcCiAJZnVuYyhod3Nf
bmVlZHNfcGh5c2ljYWwpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMjI0NzJmMmJkMzFi
Li41M2VmODYyNzMxZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNzE2Miw3ICs3MTYy
LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZW5hYmxlX3JjNihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZGV2X3ByaXYsIGlkKQogCQlJ
OTE1X1dSSVRFKFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jhc2UpLCAxMCk7CiAKLQlpZiAo
SEFTX0dVQyhkZXZfcHJpdikpCisJaWYgKEhBU19VQyhkZXZfcHJpdikpCiAJCUk5MTVfV1JJVEUo
R1VDX01BWF9JRExFX0NPVU5ULCAweEEpOwogCiAJSTkxNV9XUklURShHRU42X1JDX1NMRUVQLCAw
KTsKQEAgLTcyNDMsNyArNzI0Myw3IEBAIHN0YXRpYyB2b2lkIGdlbjlfZW5hYmxlX3JjNihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
ZGV2X3ByaXYsIGlkKQogCQlJOTE1X1dSSVRFKFJJTkdfTUFYX0lETEUoZW5naW5lLT5tbWlvX2Jh
c2UpLCAxMCk7CiAKLQlpZiAoSEFTX0dVQyhkZXZfcHJpdikpCisJaWYgKEhBU19VQyhkZXZfcHJp
dikpCiAJCUk5MTVfV1JJVEUoR1VDX01BWF9JRExFX0NPVU5ULCAweEEpOwogCiAJSTkxNV9XUklU
RShHRU42X1JDX1NMRUVQLCAwKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dvcGNtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCmluZGV4IGZh
ZmQ0ZTZhMTE0Ny4uYzk2NmQ1NzJiMGM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93b3BjbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMK
QEAgLTc0LDcgKzc0LDcgQEAgdm9pZCBpbnRlbF93b3BjbV9pbml0X2Vhcmx5KHN0cnVjdCBpbnRl
bF93b3BjbSAqd29wY20pCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB3b3Bj
bV90b19pOTE1KHdvcGNtKTsKIAotCWlmICghSEFTX0dVQyhpOTE1KSkKKwlpZiAoIUhBU19VQyhp
OTE1KSkKIAkJcmV0dXJuOwogCiAJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkKQEAgLTI2Myw3
ICsyNjMsNyBAQCBpbnQgaW50ZWxfd29wY21faW5pdF9odyhzdHJ1Y3QgaW50ZWxfd29wY20gKndv
cGNtLCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCWlmICghVVNFU19HVUMoaTkxNSkpCiAJCXJldHVy
biAwOwogCi0JR0VNX0JVR19PTighSEFTX0dVQyhpOTE1KSk7CisJR0VNX0JVR19PTighSEFTX1VD
KGk5MTUpKTsKIAlHRU1fQlVHX09OKCF3b3BjbS0+Z3VjLnNpemUpOwogCUdFTV9CVUdfT04oIXdv
cGNtLT5ndWMuYmFzZSk7CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
