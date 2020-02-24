Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EEC16A363
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753466E3F7;
	Mon, 24 Feb 2020 10:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8916E3D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:00:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20328987-1500050 
 for multiple; Mon, 24 Feb 2020 10:00:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 09:59:57 +0000
Message-Id: <20200224100007.4024184-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Allow userspace to specify
 ringsize on construction
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

Tm8gZ29vZCByZWFzb24gd2h5IHdlIG11c3QgYWx3YXlzIHVzZSBhIHN0YXRpYyByaW5nc2l6ZSwg
c28gbGV0CnVzZXJzcGFjZSBzZWxlY3Qgb25lIGR1cmluZyBjb25zdHJ1Y3Rpb24uCgpMaW5rOiBo
dHRwczovL2dpdGh1Yi5jb20vaW50ZWwvY29tcHV0ZS1ydW50aW1lL3B1bGwvMjYxClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogU3RldmUgQ2Fy
Ym9uYXJpIDxzdGV2ZW4uY2FyYm9uYXJpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEphbnVzeiBL
cnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgMTEwICsrKysrKysrKysr
KysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5jIHwg
IDYzICsrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfcGFy
YW0uaCB8ICAxNCArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAg
ICAgICB8ICAgMSArCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAg
ICAgfCAgMjEgKysrKwogNiBmaWxlcyBjaGFuZ2VkLCAyMDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0X3BhcmFtLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IGIzMTRk
NDRkZWQ1ZS4uMjJhMjMxMzRlOThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtODIsNiArODIs
NyBAQCBndC15ICs9IFwKIAlndC9nZW44X3BwZ3R0Lm8gXAogCWd0L2ludGVsX2JyZWFkY3J1bWJz
Lm8gXAogCWd0L2ludGVsX2NvbnRleHQubyBcCisJZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5vIFwK
IAlndC9pbnRlbF9jb250ZXh0X3NzZXUubyBcCiAJZ3QvaW50ZWxfZW5naW5lX2NzLm8gXAogCWd0
L2ludGVsX2VuZ2luZV9oZWFydGJlYXQubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwppbmRleCBhZGNlYmYyMmEzZDMuLmIyNGVlOGUxMDRjZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC03MSw2ICs3MSw3
IEBACiAKICNpbmNsdWRlICJndC9nZW42X3BwZ3R0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfY29u
dGV4dC5oIgorI2luY2x1ZGUgImd0L2ludGVsX2NvbnRleHRfcGFyYW0uaCIKICNpbmNsdWRlICJn
dC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3Vz
ZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9yaW5nLmgiCkBAIC02NjgsMjMgKzY2OSwzMCBAQCBf
X2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBF
UlJfUFRSKGVycik7CiB9CiAKLXN0YXRpYyB2b2lkCitzdGF0aWMgaW50CiBjb250ZXh0X2FwcGx5
X2FsbChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAotCQkgIHZvaWQgKCpmbikoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKSwKKwkJICBpbnQgKCpmbikoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlLCB2b2lkICpkYXRhKSwKIAkJICB2b2lkICpkYXRhKQogewogCXN0cnVj
dCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwor
CWludCBlcnIgPSAwOwogCi0JZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgaTkxNV9nZW1fY29udGV4
dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpCi0JCWZuKGNlLCBkYXRhKTsKKwlmb3JfZWFjaF9nZW1f
ZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgeworCQll
cnIgPSBmbihjZSwgZGF0YSk7CisJCWlmIChlcnIpCisJCQlicmVhazsKKwl9CiAJaTkxNV9nZW1f
Y29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOworCisJcmV0dXJuIGVycjsKIH0KIAotc3RhdGlj
IHZvaWQgX19hcHBseV9wcGd0dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZvaWQgKnZtKQor
c3RhdGljIGludCBfX2FwcGx5X3BwZ3R0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAq
dm0pCiB7CiAJaTkxNV92bV9wdXQoY2UtPnZtKTsKIAljZS0+dm0gPSBpOTE1X3ZtX2dldCh2bSk7
CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICoKQEAg
LTcyMiw5ICs3MzAsMTAgQEAgc3RhdGljIHZvaWQgX19zZXRfdGltZWxpbmUoc3RydWN0IGludGVs
X3RpbWVsaW5lICoqZHN0LAogCQlpbnRlbF90aW1lbGluZV9wdXQob2xkKTsKIH0KIAotc3RhdGlj
IHZvaWQgX19hcHBseV90aW1lbGluZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIHZvaWQgKnRp
bWVsaW5lKQorc3RhdGljIGludCBfX2FwcGx5X3RpbWVsaW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwgdm9pZCAqdGltZWxpbmUpCiB7CiAJX19zZXRfdGltZWxpbmUoJmNlLT50aW1lbGluZSwg
dGltZWxpbmUpOworCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9pZCBfX2Fzc2lnbl90aW1lbGlu
ZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LApAQCAtMTIxNSw2ICsxMjI0LDYzIEBAIHN0
YXRpYyBpbnQgc2V0X3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJp
diwKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IF9fYXBwbHlfcmluZ3NpemUoc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICpzeikKK3sKKwlyZXR1cm4gaW50ZWxfY29udGV4dF9z
ZXRfcmluZ19zaXplKGNlLCAodW5zaWduZWQgbG9uZylzeik7Cit9CisKK3N0YXRpYyBpbnQgc2V0
X3JpbmdzaXplKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCisJCQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFyZ3MpCit7CisJaWYgKCFIQVNfTE9HSUNBTF9SSU5HX0NP
TlRFWFRTKGN0eC0+aTkxNSkpCisJCXJldHVybiAtRU5PREVWOworCisJaWYgKGFyZ3MtPnNpemUp
CisJCXJldHVybiAtRUlOVkFMOworCisJaWYgKCFJU19BTElHTkVEKGFyZ3MtPnZhbHVlLCBJOTE1
X0dUVF9QQUdFX1NJWkUpKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChhcmdzLT52YWx1ZSA8
IEk5MTVfR1RUX1BBR0VfU0laRSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoYXJncy0+dmFs
dWUgPiAxMjggKiBJOTE1X0dUVF9QQUdFX1NJWkUpCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0
dXJuIGNvbnRleHRfYXBwbHlfYWxsKGN0eCwKKwkJCQkgX19hcHBseV9yaW5nc2l6ZSwKKwkJCQkg
X19pbnRlbF9jb250ZXh0X3Jpbmdfc2l6ZShhcmdzLT52YWx1ZSkpOworfQorCitzdGF0aWMgaW50
IF9fZ2V0X3JpbmdzaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQorewor
CWxvbmcgc3o7CisKKwlzeiA9IGludGVsX2NvbnRleHRfZ2V0X3Jpbmdfc2l6ZShjZSk7CisJR0VN
X0JVR19PTihzeiA+IElOVF9NQVgpOworCisJcmV0dXJuIHN6OyAvKiBzdG9wIG9uIGZpcnN0IGVu
Z2luZSAqLworfQorCitzdGF0aWMgaW50IGdldF9yaW5nc2l6ZShzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4LAorCQkJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQor
eworCWludCBzejsKKworCWlmICghSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhjdHgtPmk5MTUp
KQorCQlyZXR1cm4gLUVOT0RFVjsKKworCWlmIChhcmdzLT5zaXplKQorCQlyZXR1cm4gLUVJTlZB
TDsKKworCXN6ID0gY29udGV4dF9hcHBseV9hbGwoY3R4LCBfX2dldF9yaW5nc2l6ZSwgTlVMTCk7
CisJaWYgKHN6IDwgMCkKKwkJcmV0dXJuIHN6OworCisJYXJncy0+dmFsdWUgPSBzejsKKwlyZXR1
cm4gMDsKK30KKwogc3RhdGljIGludAogdXNlcl90b19jb250ZXh0X3NzZXUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCSAgICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9jb250
ZXh0X3BhcmFtX3NzZXUgKnVzZXIsCkBAIC0xODUyLDE3ICsxOTE4LDE5IEBAIHNldF9wZXJzaXN0
ZW5jZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCXJldHVybiBfX2NvbnRleHRfc2V0
X3BlcnNpc3RlbmNlKGN0eCwgYXJncy0+dmFsdWUpOwogfQogCi1zdGF0aWMgdm9pZCBfX2FwcGx5
X3ByaW9yaXR5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQorc3RhdGljIGlu
dCBfX2FwcGx5X3ByaW9yaXR5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAqYXJnKQog
ewogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBhcmc7CiAKIAlpZiAoIWludGVsX2Vu
Z2luZV9oYXNfc2VtYXBob3JlcyhjZS0+ZW5naW5lKSkKLQkJcmV0dXJuOworCQlyZXR1cm4gMDsK
IAogCWlmIChjdHgtPnNjaGVkLnByaW9yaXR5ID49IEk5MTVfUFJJT1JJVFlfTk9STUFMKQogCQlp
bnRlbF9jb250ZXh0X3NldF91c2Vfc2VtYXBob3JlcyhjZSk7CiAJZWxzZQogCQlpbnRlbF9jb250
ZXh0X2NsZWFyX3VzZV9zZW1hcGhvcmVzKGNlKTsKKworCXJldHVybiAwOwogfQogCiBzdGF0aWMg
aW50IHNldF9wcmlvcml0eShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LApAQCAtMTk1NSw2
ICsyMDIzLDEwIEBAIHN0YXRpYyBpbnQgY3R4X3NldHBhcmFtKHN0cnVjdCBkcm1faTkxNV9maWxl
X3ByaXZhdGUgKmZwcml2LAogCQlyZXQgPSBzZXRfcGVyc2lzdGVuY2UoY3R4LCBhcmdzKTsKIAkJ
YnJlYWs7CiAKKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKKwkJcmV0ID0gc2V0
X3JpbmdzaXplKGN0eCwgYXJncyk7CisJCWJyZWFrOworCiAJY2FzZSBJOTE1X0NPTlRFWFRfUEFS
QU1fQkFOX1BFUklPRDoKIAlkZWZhdWx0OgogCQlyZXQgPSAtRUlOVkFMOwpAQCAtMTk4Myw2ICsy
MDU1LDE4IEBAIHN0YXRpYyBpbnQgY3JlYXRlX3NldHBhcmFtKHN0cnVjdCBpOTE1X3VzZXJfZXh0
ZW5zaW9uIF9fdXNlciAqZXh0LCB2b2lkICpkYXRhKQogCXJldHVybiBjdHhfc2V0cGFyYW0oYXJn
LT5mcHJpdiwgYXJnLT5jdHgsICZsb2NhbC5wYXJhbSk7CiB9CiAKK3N0YXRpYyBpbnQgY29weV9y
aW5nX3NpemUoc3RydWN0IGludGVsX2NvbnRleHQgKmRzdCwKKwkJCSAgc3RydWN0IGludGVsX2Nv
bnRleHQgKnNyYykKK3sKKwlsb25nIHN6OworCisJc3ogPSBpbnRlbF9jb250ZXh0X2dldF9yaW5n
X3NpemUoc3JjKTsKKwlpZiAoc3ogPCAwKQorCQlyZXR1cm4gc3o7CisKKwlyZXR1cm4gaW50ZWxf
Y29udGV4dF9zZXRfcmluZ19zaXplKGRzdCwgc3opOworfQorCiBzdGF0aWMgaW50IGNsb25lX2Vu
Z2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmRzdCwKIAkJCSBzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqc3JjKQogewpAQCAtMjAyNiw2ICsyMTEwLDEyIEBAIHN0YXRpYyBpbnQgY2xvbmVf
ZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZHN0LAogCQl9CiAKIAkJaW50ZWxfY29u
dGV4dF9zZXRfZ2VtKGNsb25lLT5lbmdpbmVzW25dLCBkc3QpOworCisJCS8qIENvcHkgYWNyb3Nz
IHRoZSBwcmVmZXJyZWQgcmluZ3NpemUgKi8KKwkJaWYgKGNvcHlfcmluZ19zaXplKGNsb25lLT5l
bmdpbmVzW25dLCBlLT5lbmdpbmVzW25dKSkgeworCQkJX19mcmVlX2VuZ2luZXMoY2xvbmUsIG4g
KyAxKTsKKwkJCWdvdG8gZXJyX3VubG9jazsKKwkJfQogCX0KIAljbG9uZS0+bnVtX2VuZ2luZXMg
PSBuOwogCkBAIC0yMzg4LDYgKzI0NzgsMTAgQEAgaW50IGk5MTVfZ2VtX2NvbnRleHRfZ2V0cGFy
YW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJYXJncy0+dmFs
dWUgPSBpOTE1X2dlbV9jb250ZXh0X2lzX3BlcnNpc3RlbnQoY3R4KTsKIAkJYnJlYWs7CiAKKwlj
YXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKKwkJcmV0ID0gZ2V0X3JpbmdzaXplKGN0
eCwgYXJncyk7CisJCWJyZWFrOworCiAJY2FzZSBJOTE1X0NPTlRFWFRfUEFSQU1fQkFOX1BFUklP
RDoKIAlkZWZhdWx0OgogCQlyZXQgPSAtRUlOVkFMOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dF9wYXJhbS5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uNjVkY2QwOTAyNDVkCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dF9wYXJhbS5jCkBAIC0wLDAgKzEsNjMgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBD
b3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgorI2luY2x1ZGUgImlu
dGVsX2NvbnRleHQuaCIKKyNpbmNsdWRlICJpbnRlbF9jb250ZXh0X3BhcmFtLmgiCisjaW5jbHVk
ZSAiaW50ZWxfcmluZy5oIgorCitpbnQgaW50ZWxfY29udGV4dF9zZXRfcmluZ19zaXplKHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSwgbG9uZyBzeikKK3sKKwlpbnQgZXJyOworCisJaWYgKGludGVs
X2NvbnRleHRfbG9ja19waW5uZWQoY2UpKQorCQlyZXR1cm4gLUVJTlRSOworCisJZXJyID0gaTkx
NV9hY3RpdmVfd2FpdCgmY2UtPmFjdGl2ZSk7CisJaWYgKGVyciA8IDApCisJCWdvdG8gdW5sb2Nr
OworCisJaWYgKGludGVsX2NvbnRleHRfaXNfcGlubmVkKGNlKSkgeworCQllcnIgPSAtRUJVU1k7
IC8qIEluIGFjdGl2ZSB1c2UsIGNvbWUgYmFjayBsYXRlciEgKi8KKwkJZ290byB1bmxvY2s7CisJ
fQorCisJaWYgKHRlc3RfYml0KENPTlRFWFRfQUxMT0NfQklULCAmY2UtPmZsYWdzKSkgeworCQlz
dHJ1Y3QgaW50ZWxfcmluZyAqcmluZzsKKworCQkvKiBSZXBsYWNlIHRoZSBleGlzdGluZyByaW5n
YnVmZmVyICovCisJCXJpbmcgPSBpbnRlbF9lbmdpbmVfY3JlYXRlX3JpbmcoY2UtPmVuZ2luZSwg
c3opOworCQlpZiAoSVNfRVJSKHJpbmcpKSB7CisJCQllcnIgPSBQVFJfRVJSKHJpbmcpOworCQkJ
Z290byB1bmxvY2s7CisJCX0KKworCQlpbnRlbF9yaW5nX3B1dChjZS0+cmluZyk7CisJCWNlLT5y
aW5nID0gcmluZzsKKworCQkvKiBDb250ZXh0IGltYWdlIHdpbGwgYmUgdXBkYXRlZCBvbiBuZXh0
IHBpbiAqLworCX0gZWxzZSB7CisJCWNlLT5yaW5nID0gX19pbnRlbF9jb250ZXh0X3Jpbmdfc2l6
ZShzeik7CisJfQorCit1bmxvY2s6CisJaW50ZWxfY29udGV4dF91bmxvY2tfcGlubmVkKGNlKTsK
KwlyZXR1cm4gZXJyOworfQorCitsb25nIGludGVsX2NvbnRleHRfZ2V0X3Jpbmdfc2l6ZShzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UpCit7CisJbG9uZyBzeiA9ICh1bnNpZ25lZCBsb25nKVJFQURf
T05DRShjZS0+cmluZyk7CisKKwlpZiAodGVzdF9iaXQoQ09OVEVYVF9BTExPQ19CSVQsICZjZS0+
ZmxhZ3MpKSB7CisJCWlmIChpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGNlKSkKKwkJCXJldHVy
biAtRUlOVFI7CisKKwkJc3ogPSBjZS0+cmluZy0+c2l6ZTsKKwkJaW50ZWxfY29udGV4dF91bmxv
Y2tfcGlubmVkKGNlKTsKKwl9CisKKwlyZXR1cm4gc3o7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi5mMDUzZDg2MzNmZTIKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmgKQEAgLTAsMCArMSwxNCBAQAorLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5
IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBJTlRFTF9DT05URVhUX1BBUkFNX0gK
KyNkZWZpbmUgSU5URUxfQ09OVEVYVF9QQVJBTV9ICisKK3N0cnVjdCBpbnRlbF9jb250ZXh0Owor
CitpbnQgaW50ZWxfY29udGV4dF9zZXRfcmluZ19zaXplKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSwgbG9uZyBzeik7Citsb25nIGludGVsX2NvbnRleHRfZ2V0X3Jpbmdfc2l6ZShzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UpOworCisjZW5kaWYgLyogSU5URUxfQ09OVEVYVF9QQVJBTV9IICovCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDQ3NTYxZGMyOTMwNC4uMzliMDEyNWI3
MTQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjk2Niw2ICsyOTY2LDcg
QEAgX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCiAJcmVnc1tDVFhfUklOR19TVEFSVF0gPSBpOTE1X2dndHRfb2Zmc2V0KHJpbmctPnZt
YSk7CiAJcmVnc1tDVFhfUklOR19IRUFEXSA9IGhlYWQ7CiAJcmVnc1tDVFhfUklOR19UQUlMXSA9
IHJpbmctPnRhaWw7CisJcmVnc1tDVFhfUklOR19DVExdID0gUklOR19DVExfU0laRShyaW5nLT5z
aXplKSB8IFJJTkdfVkFMSUQ7CiAKIAkvKiBSUENTICovCiAJaWYgKGVuZ2luZS0+Y2xhc3MgPT0g
UkVOREVSX0NMQVNTKSB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggODI5YzBhNDg1NzdmLi4yODEzZTU3
OWI0ODAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTE2MTksNiArMTYxOSwyNyBAQCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gewogICogQnkgZGVmYXVsdCwgbmV3IGNvbnRleHRzIGFs
bG93IHBlcnNpc3RlbmNlLgogICovCiAjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJTSVNU
RU5DRQkweGIKKworLyoKKyAqIEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRToKKyAqCisgKiBT
ZXRzIHRoZSBzaXplIG9mIHRoZSBDUyByaW5nYnVmZmVyIHRvIHVzZSBmb3IgbG9naWNhbCByaW5n
IGNvbnRleHRzLiBUaGlzCisgKiBhcHBsaWVzIGEgbGltaXQgb2YgaG93IG1hbnkgYmF0Y2hlcyBj
YW4gYmUgcXVldWVkIHRvIEhXIGJlZm9yZSB0aGUgY2FsbGVyCisgKiBpcyBibG9ja2VkIGR1ZSB0
byBsYWNrIG9mIHNwYWNlIGZvciBtb3JlIGNvbW1hbmRzLgorICoKKyAqIE9ubHkgcmVsaWFibHkg
cG9zc2libGUgdG8gYmUgc2V0IHByaW9yIHRvIGZpcnN0IHVzZSwgaS5lLiBkdXJpbmcKKyAqIGNv
bnN0cnVjdGlvbi4gQXQgYW55IGxhdGVyIHBvaW50LCB0aGUgY3VycmVudCBleGVjdXRpb24gbXVz
dCBiZSBmbHVzaGVkIGFzCisgKiB0aGUgcmluZyBjYW4gb25seSBiZSBjaGFuZ2VkIHdoaWxlIHRo
ZSBjb250ZXh0IGlzIGlkbGUuIE5vdGUsIHRoZSByaW5nc2l6ZQorICogY2FuIGJlIHNwZWNpZmll
ZCBhcyBhIGNvbnN0cnVjdG9yIHByb3BlcnR5LCBzZWUKKyAqIEk5MTVfQ09OVEVYVF9DUkVBVEVf
RVhUX1NFVFBBUkFNLCBidXQgY2FuIGFsc28gYmUgc2V0IGxhdGVyIGlmIHJlcXVpcmVkLgorICoK
KyAqIE9ubHkgYXBwbGllcyB0byB0aGUgY3VycmVudCBzZXQgb2YgZW5naW5lIGFuZCBsb3N0IHdo
ZW4gdGhvc2UgZW5naW5lcworICogYXJlIHJlcGxhY2VkIGJ5IGEgbmV3IG1hcHBpbmcgKHNlZSBJ
OTE1X0NPTlRFWFRfUEFSQU1fRU5HSU5FUykuCisgKgorICogTXVzdCBiZSBiZXR3ZWVuIDQgLSA1
MTIgS2lCLCBpbiBpbnRlcnZhbHMgb2YgcGFnZSBzaXplIFs0IEtpQl0uCisgKiBEZWZhdWx0IGlz
IDE2IEtpQi4KKyAqLworI2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUJMHhjCiAv
KiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICov
CiAKIAlfX3U2NCB2YWx1ZTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
