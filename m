Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0B710AC84
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 10:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758066E283;
	Wed, 27 Nov 2019 09:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74446E283
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 09:18:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19354593-1500050 
 for multiple; Wed, 27 Nov 2019 09:18:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 09:17:54 +0000
Message-Id: <20191127091754.3209336-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127082729.3208872-1-chris@chris-wilson.co.uk>
References: <20191127082729.3208872-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen7: Re-enable full-ppgtt for ivb, byt,
 hsw
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

QWZ0ZXIgbXVjaCBoYWlyIHB1bGxpbmcsIHJlc29ydCB0byBwcmVhbGxvY2F0aW5nIHRoZSBwcEdU
VCBlbnRyaWVzIG9uCmluaXQgdG8gY2lyY3VtdmVudCB0aGUgYXBwYXJlbnQgbGFjayBvZiBQRCBp
bnZhbGlkYXRlIGZvbGxvd2luZyB0aGUKd3JpdGUgdG8gUFBfRENMViB1cG9uIHN3aXRjaGluZyBt
bSBiZXR3ZWVuIGNvbnRleHRzIChhbmQgaGVyZSB0aGUgc2FtZQpjb250ZXh0IGFmdGVyIGJpbmRp
bmcgbmV3IG9iamVjdHMpLiBIb3dldmVyLCB0aGUgZGV0YWlscyBvZiB0aGF0IFBQX0RDTFYKaW52
YWxpZGF0ZSBhcmUgc3RpbGwgdW5rbm93biwgYW5kIGl0IGFwcGVhcnMgd2UgbmVlZCB0byByZWxv
YWQgdGhlIG1tCnR3aWNlIHRvIGNvdmVyIG92ZXIgYSB0aW1pbmcgaXNzdWUuIFdvcnJ5aW5nLgoK
Rml4ZXM6IDNkYzAwN2ZlOWIyYiAoImRybS9pOTE1L2d0dDogRG93bmdyYWRlIGdlbjcgKGl2Yiwg
Ynl0LCBoc3cpIGJhY2sgdG8gYWxpYXNpbmctcHBndHQiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jICAgfCAyMyArKysrKysrKy0tLS0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgfCAgNyArKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgICAgICB8ICA0ICsrLS0KIDMg
ZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBmMjVj
ZWNjYjMzNWUuLjg2YTYyZjE5ZWI1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKQEAgLTEzNjYsMTMgKzEzNjYsMTUgQEAgc3RhdGljIGlu
dCBsb2FkX3BkX2RpcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgY29uc3Qgc3RydWN0IGk5MTVf
cHBndHQgKnBwZ3R0KQogCWNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKiBjb25zdCBlbmdp
bmUgPSBycS0+ZW5naW5lOwogCXUzMiAqY3M7CiAKLQljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEs
IDYpOworCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgOCk7CiAJaWYgKElTX0VSUihjcykpCiAJ
CXJldHVybiBQVFJfRVJSKGNzKTsKIAotCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMSk7
CisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgyKTsKIAkqY3MrKyA9IGk5MTVfbW1pb19y
ZWdfb2Zmc2V0KFJJTkdfUFBfRElSX0RDTFYoZW5naW5lLT5tbWlvX2Jhc2UpKTsKIAkqY3MrKyA9
IFBQX0RJUl9EQ0xWXzJHOworCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19QUF9E
SVJfRENMVihlbmdpbmUtPm1taW9fYmFzZSkpICsgNDsKKwkqY3MrKyA9IDA7CiAKIAkqY3MrKyA9
IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpOwogCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQo
UklOR19QUF9ESVJfQkFTRShlbmdpbmUtPm1taW9fYmFzZSkpOwpAQCAtMTU3OSw2ICsxNTgxLDcg
QEAgc3RhdGljIGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsK
IAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBycS0+aHdfY29udGV4dDsKIAlzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSA9IHZtX2FsaWFzKGNlKTsKKwl1MzIgaHdfZmxhZ3MgPSAwOwog
CWludCByZXQ7CiAKIAlHRU1fQlVHX09OKEhBU19FWEVDTElTVFMocnEtPmk5MTUpKTsKQEAgLTE1
ODcsMjIgKzE1OTAsMTYgQEAgc3RhdGljIGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKIAkJcmV0ID0gbG9hZF9wZF9kaXIocnEsIGk5MTVfdm1fdG9fcHBndHQodm0p
KTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CisKKwkJcmV0ID0gbG9hZF9wZF9kaXIocnEs
IGk5MTVfdm1fdG9fcHBndHQodm0pKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CiAJfQog
CiAJaWYgKGNlLT5zdGF0ZSkgewotCQl1MzIgaHdfZmxhZ3M7Ci0KIAkJR0VNX0JVR19PTihycS0+
ZW5naW5lLT5pZCAhPSBSQ1MwKTsKIAotCQkvKgotCQkgKiBUaGUga2VybmVsIGNvbnRleHQocykg
aXMgdHJlYXRlZCBhcyBwdXJlIHNjcmF0Y2ggYW5kIGlzIG5vdAotCQkgKiBleHBlY3RlZCB0byBy
ZXRhaW4gYW55IHN0YXRlIChhcyB3ZSBzYWNyaWZpY2UgaXQgZHVyaW5nCi0JCSAqIHN1c3BlbmQg
YW5kIG9uIHJlc3VtZSBpdCBtYXkgYmUgY29ycnVwdGVkKS4gVGhpcyBpcyBvaywKLQkJICogYXMg
bm90aGluZyBhY3R1YWxseSBleGVjdXRlcyB1c2luZyB0aGUga2VybmVsIGNvbnRleHQ7IGl0Ci0J
CSAqIGlzIHB1cmVseSB1c2VkIGZvciBmbHVzaGluZyB1c2VyIGNvbnRleHRzLgotCQkgKi8KLQkJ
aHdfZmxhZ3MgPSAwOwotCQlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19rZXJuZWwocnEtPmdlbV9j
b250ZXh0KSkKKwkJaWYgKCFycS0+ZW5naW5lLT5kZWZhdWx0X3N0YXRlKQogCQkJaHdfZmxhZ3Mg
PSBNSV9SRVNUT1JFX0lOSElCSVQ7CiAKIAkJcmV0ID0gbWlfc2V0X2NvbnRleHQocnEsIGh3X2Zs
YWdzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNjIzOWE5YWRiZjE0Li45
YjAzMDI1NjFmOTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xOTg3LDgg
KzE5ODcsMTUgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW42X3BwZ3R0X2NyZWF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJZ290byBlcnJfc2NyYXRjaDsKIAl9CiAK
KwkvKiBQcmVhbGxvY2F0ZSBhbGwgZW50cmllcywgZHluYW1pYyB1cGRhdGVzIGRvIG5vdCBmbHkg
dmVyeSB3ZWxsISAqLworCWVyciA9IGdlbjZfYWxsb2NfdmFfcmFuZ2UoJnBwZ3R0LT5iYXNlLnZt
LCAwLCBwcGd0dC0+YmFzZS52bS50b3RhbCk7CisJaWYgKGVycikKKwkJZ290byBlcnJfdm1hOwor
CiAJcmV0dXJuICZwcGd0dC0+YmFzZTsKIAorZXJyX3ZtYToKKwlpOTE1X3ZtYV9wdXQocHBndHQt
PnZtYSk7CiBlcnJfc2NyYXRjaDoKIAlmcmVlX3NjcmF0Y2goJnBwZ3R0LT5iYXNlLnZtKTsKIGVy
cl9wZDoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGRhM2U5YjU3NTJhYy4uYmJhNmI1MGU2
YmViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTQzNiw3ICs0MzYsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3NhbmR5YnJpZGdlX21fZ3QyX2lu
Zm8gPSB7CiAJLmhhc19yYzYgPSAxLCBcCiAJLmhhc19yYzZwID0gMSwgXAogCS5oYXNfcnBzID0g
dHJ1ZSwgXAotCS5wcGd0dF90eXBlID0gSU5URUxfUFBHVFRfQUxJQVNJTkcsIFwKKwkucHBndHRf
dHlwZSA9IElOVEVMX1BQR1RUX0ZVTEwsIFwKIAkucHBndHRfc2l6ZSA9IDMxLCBcCiAJSVZCX1BJ
UEVfT0ZGU0VUUywgXAogCUlWQl9DVVJTT1JfT0ZGU0VUUywgXApAQCAtNDkzLDcgKzQ5Myw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdmFsbGV5dmlld19p
bmZvID0gewogCS5oYXNfcnBzID0gdHJ1ZSwKIAkuZGlzcGxheS5oYXNfZ21jaCA9IDEsCiAJLmRp
c3BsYXkuaGFzX2hvdHBsdWcgPSAxLAotCS5wcGd0dF90eXBlID0gSU5URUxfUFBHVFRfQUxJQVNJ
TkcsCisJLnBwZ3R0X3R5cGUgPSBJTlRFTF9QUEdUVF9GVUxMLAogCS5wcGd0dF9zaXplID0gMzEs
CiAJLmhhc19zbm9vcCA9IHRydWUsCiAJLmhhc19jb2hlcmVudF9nZ3R0ID0gZmFsc2UsCi0tIAoy
LjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
