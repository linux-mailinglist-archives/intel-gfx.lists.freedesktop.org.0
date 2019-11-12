Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D45F8BBA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08BE6EAB6;
	Tue, 12 Nov 2019 09:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08DA89EB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:29:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19170028-1500050 
 for multiple; Tue, 12 Nov 2019 09:28:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 09:28:49 +0000
Message-Id: <20191112092854.869-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112092854.869-1-chris@chris-wilson.co.uk>
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/27] drm/i915: Allow userspace to specify
 ringsize on construction
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

Tm8gZ29vZCByZWFzb24gd2h5IHdlIG11c3QgYWx3YXlzIHVzZSBhIHN0YXRpYyByaW5nc2l6ZSwg
c28gbGV0CnVzZXJzcGFjZSBzZWxlY3Qgb25lIGR1cmluZyBjb25zdHJ1Y3Rpb24uCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMTQzICsrKysrKysrKysrKysr
KysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgIHwgICAx
ICsKIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgfCAgMTkgKysr
CiAzIGZpbGVzIGNoYW5nZWQsIDE1NiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDA2OWNlZmMw
YzI0MS4uYTcxMjE0ZjZmMDY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMKQEAgLTYxNSwyMyArNjE1LDMwIEBAIF9fY3JlYXRlX2NvbnRleHQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKIH0KIAotc3Rh
dGljIHZvaWQKK3N0YXRpYyBpbnQKIGNvbnRleHRfYXBwbHlfYWxsKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCi0JCSAgdm9pZCAoKmZuKShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZv
aWQgKmRhdGEpLAorCQkgIGludCAoKmZuKShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZvaWQg
KmRhdGEpLAogCQkgIHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRl
ciBpdDsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IGVyciA9IDA7CiAKLQlmb3Jf
ZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBp
dCkKLQkJZm4oY2UsIGRhdGEpOworCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2Nv
bnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7CisJCWVyciA9IGZuKGNlLCBkYXRhKTsKKwkJ
aWYgKGVycikKKwkJCWJyZWFrOworCX0KIAlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVz
KGN0eCk7CisKKwlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5X3BwZ3R0KHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdm0pCitzdGF0aWMgaW50IF9fYXBwbHlfcHBn
dHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2bSkKIHsKIAlpOTE1X3ZtX3B1dChj
ZS0+dm0pOwogCWNlLT52bSA9IGk5MTVfdm1fZ2V0KHZtKTsKKwlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKgpAQCAtNjY5LDkgKzY3NiwxMCBAQCBzdGF0
aWMgdm9pZCBfX3NldF90aW1lbGluZShzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKipkc3QsCiAJCWlu
dGVsX3RpbWVsaW5lX3B1dChvbGQpOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5X3RpbWVsaW5l
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqdGltZWxpbmUpCitzdGF0aWMgaW50IF9f
YXBwbHlfdGltZWxpbmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp0aW1lbGluZSkK
IHsKIAlfX3NldF90aW1lbGluZSgmY2UtPnRpbWVsaW5lLCB0aW1lbGluZSk7CisJcmV0dXJuIDA7
CiB9CiAKIHN0YXRpYyB2b2lkIF9fYXNzaWduX3RpbWVsaW5lKHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgsCkBAIC0xMTk0LDYgKzEyMDIsMTA0IEBAIHN0YXRpYyBpbnQgc2V0X3BwZ3R0KHN0
cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKIAlyZXR1cm4gZXJyOwogfQog
CitzdGF0aWMgaW50IF9fYXBwbHlfcmluZ3NpemUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2
b2lkICpzeikKK3sKKwlpbnQgZXJyOworCisJZXJyID0gaTkxNV9hY3RpdmVfd2FpdCgmY2UtPmFj
dGl2ZSk7CisJaWYgKGVyciA8IDApCisJCXJldHVybiBlcnI7CisKKwlpZiAoaW50ZWxfY29udGV4
dF9sb2NrX3Bpbm5lZChjZSkpCisJCXJldHVybiAtRUlOVFI7CisKKwlpZiAoaW50ZWxfY29udGV4
dF9pc19waW5uZWQoY2UpKSB7CisJCWVyciA9IC1FQlVTWTsgLyogSW4gYWN0aXZlIHVzZSwgY29t
ZSBiYWNrIGxhdGVyISAqLworCQlnb3RvIHVubG9jazsKKwl9CisKKwlpZiAodGVzdF9iaXQoQ09O
VEVYVF9BTExPQ19CSVQsICZjZS0+ZmxhZ3MpKSB7CisJCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5n
OworCisJCS8qIFJlcGxhY2UgdGhlIGV4aXN0aW5nIHJpbmdidWZmZXIgKi8KKwkJcmluZyA9IGlu
dGVsX2VuZ2luZV9jcmVhdGVfcmluZyhjZS0+ZW5naW5lLAorCQkJCQkJKHVuc2lnbmVkIGxvbmcp
c3opOworCQlpZiAoSVNfRVJSKHJpbmcpKSB7CisJCQllcnIgPSBQVFJfRVJSKHJpbmcpOworCQkJ
Z290byB1bmxvY2s7CisJCX0KKworCQlpbnRlbF9yaW5nX3B1dChjZS0+cmluZyk7CisJCWNlLT5y
aW5nID0gcmluZzsKKworCQkvKiBDb250ZXh0IGltYWdlIHdpbGwgYmUgdXBkYXRlZCBvbiBuZXh0
IHBpbiAqLworCX0gZWxzZSB7CisJCWNlLT5yaW5nID0gc3o7CisJfQorCit1bmxvY2s6CisJaW50
ZWxfY29udGV4dF91bmxvY2tfcGlubmVkKGNlKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMg
aW50IHNldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAorCQkJc3RydWN0
IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQoreworCWlmICghSEFTX0xPR0lDQUxf
UklOR19DT05URVhUUyhjdHgtPmk5MTUpKQorCQlyZXR1cm4gLUVOT0RFVjsKKworCWlmIChhcmdz
LT5zaXplKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmICghSVNfQUxJR05FRChhcmdzLT52YWx1
ZSwgSTkxNV9HVFRfUEFHRV9TSVpFKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoYXJncy0+
dmFsdWUgPCBJOTE1X0dUVF9QQUdFX1NJWkUpCisJCXJldHVybiAtRUlOVkFMOworCisJaWYgKGFy
Z3MtPnZhbHVlID4gMTI4ICogSTkxNV9HVFRfUEFHRV9TSVpFKQorCQlyZXR1cm4gLUVJTlZBTDsK
KworCXJldHVybiBjb250ZXh0X2FwcGx5X2FsbChjdHgsCisJCQkJIF9fYXBwbHlfcmluZ3NpemUs
CisJCQkJIF9faW50ZWxfY29udGV4dF9yaW5nX3NpemUoYXJncy0+dmFsdWUpKTsKK30KKworc3Rh
dGljIGludCBfX2dldF9yaW5nc2l6ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZvaWQgKmFy
ZykKK3sKKwlpbnQgbnVtX3BhZ2VzOworCisJaWYgKGludGVsX2NvbnRleHRfbG9ja19waW5uZWQo
Y2UpKQorCQlyZXR1cm4gLUVJTlRSOworCisJaWYgKHRlc3RfYml0KENPTlRFWFRfQUxMT0NfQklU
LCAmY2UtPmZsYWdzKSkKKwkJbnVtX3BhZ2VzID0gY2UtPnJpbmctPnNpemUgLyBJOTE1X0dUVF9Q
QUdFX1NJWkU7CisJZWxzZQorCQludW1fcGFnZXMgPSAodWludHB0cl90KWNlLT5yaW5nIC8gSTkx
NV9HVFRfUEFHRV9TSVpFOworCisJaW50ZWxfY29udGV4dF91bmxvY2tfcGlubmVkKGNlKTsKKwly
ZXR1cm4gbnVtX3BhZ2VzOyAvKiBzdG9wIG9uIGZpcnN0IGVuZ2luZSAqLworfQorCitzdGF0aWMg
aW50IGdldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAorCQkJc3RydWN0
IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQoreworCWludCBudW1fcGFnZXM7CisK
KwlpZiAoIUhBU19MT0dJQ0FMX1JJTkdfQ09OVEVYVFMoY3R4LT5pOTE1KSkKKwkJcmV0dXJuIC1F
Tk9ERVY7CisKKwlpZiAoYXJncy0+c2l6ZSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwludW1fcGFn
ZXMgPSBjb250ZXh0X2FwcGx5X2FsbChjdHgsIF9fZ2V0X3JpbmdzaXplLCBOVUxMKTsKKwlpZiAo
bnVtX3BhZ2VzIDwgMCkKKwkJcmV0dXJuIG51bV9wYWdlczsKKworCWFyZ3MtPnZhbHVlID0gKHU2
NCludW1fcGFnZXMgKiBJOTE1X0dUVF9QQUdFX1NJWkU7CisJcmV0dXJuIDA7Cit9CisKIHN0YXRp
YyBpbnQgZ2VuOF9lbWl0X3JwY3NfY29uZmlnKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCQkJ
CSBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkJIHN0cnVjdCBpbnRlbF9zc2V1IHNzZXUp
CkBAIC0xODI5LDEzICsxOTM1LDE1IEBAIHNldF9wZXJzaXN0ZW5jZShzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4LAogCXJldHVybiBfX2NvbnRleHRfc2V0X3BlcnNpc3RlbmNlKGN0eCwgYXJn
cy0+dmFsdWUpOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5X3ByaW9yaXR5KHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQorc3RhdGljIGludCBfX2FwcGx5X3ByaW9yaXR5KHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQogewogCXN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHggPSBhcmc7CiAKIAlpZiAoaW50ZWxfY29udGV4dF91c2Vfc2VtYXBob3Jlcyhj
ZSkgJiYKIAkgICAgY3R4LT5zY2hlZC5wcmlvcml0eSA8IEk5MTVfUFJJT1JJVFlfTk9STUFMKQog
CQlpbnRlbF9jb250ZXh0X2NsZWFyX3VzZV9zZW1hcGhvcmVzKGNlKTsKKworCXJldHVybiAwOwog
fQogCiBzdGF0aWMgaW50IHNldF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
LApAQCAtMTkyOCw2ICsyMDM2LDEwIEBAIHN0YXRpYyBpbnQgY3R4X3NldHBhcmFtKHN0cnVjdCBk
cm1faTkxNV9maWxlX3ByaXZhdGUgKmZwcml2LAogCQlyZXQgPSBzZXRfcGVyc2lzdGVuY2UoY3R4
LCBhcmdzKTsKIAkJYnJlYWs7CiAKKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToK
KwkJcmV0ID0gc2V0X3JpbmdzaXplKGN0eCwgYXJncyk7CisJCWJyZWFrOworCiAJY2FzZSBJOTE1
X0NPTlRFWFRfUEFSQU1fQkFOX1BFUklPRDoKIAlkZWZhdWx0OgogCQlyZXQgPSAtRUlOVkFMOwpA
QCAtMTk5OCw2ICsyMTEwLDE5IEBAIHN0YXRpYyBpbnQgY2xvbmVfZW5naW5lcyhzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqZHN0LAogCQl9CiAKIAkJaW50ZWxfY29udGV4dF9zZXRfZ2VtKGNsb25l
LT5lbmdpbmVzW25dLCBkc3QpOworCisJCS8qIENvcHkgYWNyb3NzIHRoZSBwcmVmZXJyZWQgcmlu
Z3NpemUgKi8KKwkJY2xvbmUtPmVuZ2luZXNbbl0tPnJpbmcgPSBlLT5lbmdpbmVzW25dLT5yaW5n
OworCQlpZiAodGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQsICZlLT5lbmdpbmVzW25dLT5mbGFn
cykpIHsKKwkJCWlmIChpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGUtPmVuZ2luZXNbbl0pKSB7
CisJCQkJX19mcmVlX2VuZ2luZXMoY2xvbmUsIG4gKyAxKTsKKwkJCQlnb3RvIGVycl91bmxvY2s7
CisJCQl9CisKKwkJCWNsb25lLT5lbmdpbmVzW25dLT5yaW5nID0KKwkJCQlfX2ludGVsX2NvbnRl
eHRfcmluZ19zaXplKGUtPmVuZ2luZXNbbl0tPnJpbmctPnNpemUpOworCQkJaW50ZWxfY29udGV4
dF91bmxvY2tfcGlubmVkKGUtPmVuZ2luZXNbbl0pOworCQl9CiAJfQogCWNsb25lLT5udW1fZW5n
aW5lcyA9IG47CiAKQEAgLTIzNjMsNiArMjQ4OCwxMCBAQCBpbnQgaTkxNV9nZW1fY29udGV4dF9n
ZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQlhcmdz
LT52YWx1ZSA9IGk5MTVfZ2VtX2NvbnRleHRfaXNfcGVyc2lzdGVudChjdHgpOwogCQlicmVhazsK
IAorCWNhc2UgSTkxNV9DT05URVhUX1BBUkFNX1JJTkdTSVpFOgorCQlyZXQgPSBnZXRfcmluZ3Np
emUoY3R4LCBhcmdzKTsKKwkJYnJlYWs7CisKIAljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9CQU5f
UEVSSU9EOgogCWRlZmF1bHQ6CiAJCXJldCA9IC1FSU5WQUw7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCmluZGV4IDE0ZTE0YzQ0NTYyYy4uMmFiMjEyMmQ0NjFlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjQxNiw2ICsyNDE2LDcgQEAgX19leGVjbGlzdHNfdXBk
YXRlX3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJcmVnc1tDVFhf
UklOR19TVEFSVF0gPSBpOTE1X2dndHRfb2Zmc2V0KHJpbmctPnZtYSk7CiAJcmVnc1tDVFhfUklO
R19IRUFEXSA9IHJpbmctPmhlYWQ7CiAJcmVnc1tDVFhfUklOR19UQUlMXSA9IHJpbmctPnRhaWw7
CisJcmVnc1tDVFhfUklOR19DVExdID0gUklOR19DVExfU0laRShyaW5nLT5zaXplKSB8IFJJTkdf
VkFMSUQ7CiAKIAkvKiBSUENTICovCiAJaWYgKGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNT
KSB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3Vh
cGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggNTQwMGQ3ZTA1N2YxLi5hZTdjZDY4MWIwNzUgMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgKQEAgLTE1ODcsNiArMTU4NywyNSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2Nv
bnRleHRfcGFyYW0gewogICogQnkgZGVmYXVsdCwgbmV3IGNvbnRleHRzIGFsbG93IHBlcnNpc3Rl
bmNlLgogICovCiAjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJTSVNURU5DRQkweGIKKwor
LyoKKyAqIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKKyAqCisgKiBTZXRzIHRoZSBzaXpl
IG9mIHRoZSBDUyByaW5nYnVmZmVyIHRvIHVzZSBmb3IgbG9naWNhbCByaW5nIGNvbnRleHRzLiBU
aGlzCisgKiBhcHBsaWVzIGEgbGltaXQgb2YgaG93IG1hbnkgYmF0Y2hlcyBjYW4gYmUgcXVldWVk
IHRvIEhXIGJlZm9yZSB0aGUgY2FsbGVyCisgKiBpcyBibG9ja2VkIGR1ZSB0byBsYWNrIG9mIHNw
YWNlIGZvciBtb3JlIGNvbW1hbmRzLgorICoKKyAqIE9ubHkgcmVsaWFibHkgcG9zc2libGUgdG8g
YmUgc2V0IHByaW9yIHRvIGZpcnN0IHVzZSwgaS5lLiBkdXJpbmcKKyAqIGNvbnN0cnVjdGlvbi4g
QXQgYW55IGxhdGVyIHBvaW50LCB0aGUgY3VycmVudCBleGVjdXRpb24gbXVzdCBiZSBmbHVzaGVk
IGFzCisgKiB0aGUgcmluZyBjYW4gb25seSBiZSBjaGFuZ2VkIHdoaWxlIHRoZSBjb250ZXh0IGlz
IGlkbGUuCisgKgorICogT25seSBhcHBsaWVzIHRvIHRoZSBjdXJyZW50IHNldCBvZiBlbmdpbmUg
YW5kIGxvc3Qgd2hlbiB0aG9zZSBlbmdpbmVzCisgKiBhcmUgcmVwbGFjZWQgYnkgYSBuZXcgbWFw
cGluZyAoc2VlIEk5MTVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTKS4KKyAqCisgKiBNdXN0IGJlIGJl
dHdlZW4gNCAtIDUxMiBLaUIsIGluIGludGVydmFscyBvZiBwYWdlIHNpemUgWzQgS2lCXS4KKyAq
IERlZmF1bHQgaXMgMTYgS2lCLgorICovCisjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5H
U0laRQkweGMKIC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxsIGRv
Y3VtZW50ZWQgKi8KIAogCV9fdTY0IHZhbHVlOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
