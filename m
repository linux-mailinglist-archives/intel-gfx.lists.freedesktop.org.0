Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7407845563
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE178941E;
	Fri, 14 Jun 2019 07:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6582689358
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:10:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16897550-1500050 
 for multiple; Fri, 14 Jun 2019 08:10:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 08:10:23 +0100
Message-Id: <20190614071023.17929-40-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 39/39] active-rings
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

LS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAzOCAr
KysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwg
IDYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICAx
IC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICB8ICAyIC0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyAgICB8IDEyICsrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyAgICAgICAgIHwgIDEgLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgIHwgIDYgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAyIC0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICA0ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgICAgfCA4OSArKysrKysrKy0tLS0tLS0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICAgICAgfCAgMyAt
CiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfZmx1c2hfdGVzdC5jICAgfCAgNSArLQog
Li4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgIDMgLQogMTMg
ZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgOTggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNjhmYWYx
YTcxYzk3Li5iZDAxYjdkOTVkMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtNzUxLDggKzc1MSwxMSBAQCBzdGF0aWMgaW50IGViX3Nl
bGVjdF9jb250ZXh0KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCiBzdGF0aWMgc3RydWN0
IGk5MTVfcmVxdWVzdCAqX19lYl93YWl0X2Zvcl9yaW5nKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5n
KQogeworCXN0cnVjdCBsaXN0X2hlYWQgKnJlcXVlc3RzID0gJnJpbmctPnRpbWVsaW5lLT5yZXF1
ZXN0czsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAorCWxvY2tkZXBfYXNzZXJ0X2hlbGQo
JnJpbmctPnRpbWVsaW5lLT5tdXRleCk7CisKIAkvKgogCSAqIENvbXBsZXRlbHkgdW5zY2llbnRp
ZmljIGZpbmdlci1pbi10aGUtYWlyIGVzdGltYXRlcyBmb3Igc3VpdGFibGUKIAkgKiBtYXhpbXVt
IHVzZXIgcmVxdWVzdCBzaXplICh0byBhdm9pZCBibG9ja2luZykgYW5kIHRoZW4gYmFja29mZi4K
QEAgLTc2NywxMiArNzcwLDE1IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpfX2ViX3dh
aXRfZm9yX3Jpbmcoc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCiAJICogY2xhaW1pbmcgb3VyIHJl
c291cmNlcywgYnV0IG5vdCBzbyBsb25nIHRoYXQgdGhlIHJpbmcgY29tcGxldGVseQogCSAqIGRy
YWlucyBiZWZvcmUgd2UgY2FuIHN1Ym1pdCBvdXIgbmV4dCByZXF1ZXN0LgogCSAqLwotCWxpc3Rf
Zm9yX2VhY2hfZW50cnkocnEsICZyaW5nLT5yZXF1ZXN0X2xpc3QsIHJpbmdfbGluaykgeworCWxp
c3RfZm9yX2VhY2hfZW50cnkocnEsIHJlcXVlc3RzLCBsaW5rKSB7CisJCWlmIChycS0+cmluZyAh
PSByaW5nKQorCQkJY29udGludWU7CisKIAkJaWYgKF9faW50ZWxfcmluZ19zcGFjZShycS0+cG9z
dGZpeCwKIAkJCQkgICAgICAgcmluZy0+ZW1pdCwgcmluZy0+c2l6ZSkgPiByaW5nLT5zaXplIC8g
MikKIAkJCWJyZWFrOwogCX0KLQlpZiAoJnJxLT5yaW5nX2xpbmsgPT0gJnJpbmctPnJlcXVlc3Rf
bGlzdCkKKwlpZiAoJnJxLT5saW5rID09IHJlcXVlc3RzKQogCQlyZXR1cm4gTlVMTDsgLyogd2Vp
cmQsIHdlIHdpbGwgY2hlY2sgYWdhaW4gbGF0ZXIgZm9yIHJlYWwgKi8KIAogCXJldHVybiBpOTE1
X3JlcXVlc3RfZ2V0KHJxKTsKQEAgLTc4MCw4ICs3ODYsMTIgQEAgc3RhdGljIHN0cnVjdCBpOTE1
X3JlcXVlc3QgKl9fZWJfd2FpdF9mb3JfcmluZyhzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKIAog
c3RhdGljIGludCBlYl93YWl0X2Zvcl9yaW5nKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViKQogeworCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nID0gZWItPmNvbnRleHQtPnJpbmc7CiAJ
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Ci0JaW50IHJldCA9IDA7CisJaW50IHJldDsKKworCWlm
IChSRUFEX09OQ0UocmluZy0+c3BhY2UpID49IFBBR0VfU0laRSkKKwkJcmV0dXJuIDA7CiAKIAkv
KgogCSAqIEFwcGx5IGEgbGlnaHQgYW1vdW50IG9mIGJhY2twcmVzc3VyZSB0byBwcmV2ZW50IGV4
Y2Vzc2l2ZSBob2dzCkBAIC03ODksMTggKzc5OSwyMCBAQCBzdGF0aWMgaW50IGViX3dhaXRfZm9y
X3JpbmcoY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJICoga2VlcGluZyBhbGwg
b2YgdGhlaXIgcmVzb3VyY2VzIHBpbm5lZC4KIAkgKi8KIAotCXJxID0gX19lYl93YWl0X2Zvcl9y
aW5nKGViLT5jb250ZXh0LT5yaW5nKTsKLQlpZiAocnEpIHsKLQkJbXV0ZXhfdW5sb2NrKCZlYi0+
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxl
KCZyaW5nLT50aW1lbGluZS0+bXV0ZXgpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CiAKKwly
cSA9IF9fZWJfd2FpdF9mb3JfcmluZyhyaW5nKTsKKwltdXRleF91bmxvY2soJnJpbmctPnRpbWVs
aW5lLT5tdXRleCk7CisKKwlpZiAocnEpIHsKIAkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJxLAog
CQkJCSAgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFLAogCQkJCSAgICAgIE1BWF9TQ0hFRFVM
RV9USU1FT1VUKSA8IDApCiAJCQlyZXQgPSAtRUlOVFI7CiAKIAkJaTkxNV9yZXF1ZXN0X3B1dChy
cSk7Ci0KLQkJbXV0ZXhfbG9jaygmZWItPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCX0KIAog
CXJldHVybiByZXQ7CkBAIC0yNDQ3LDE1ICsyNDU5LDExIEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZm
ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkgKi8KIAlpbnRlbF9ndF9wbV9nZXQoZWIuaTkx
NSk7CiAKLQllcnIgPSBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZShkZXYpOwotCWlmIChl
cnIpCi0JCWdvdG8gZXJyX3JwbTsKLQogCWVyciA9IGViX3NlbGVjdF9lbmdpbmUoJmViLCBmaWxl
LCBhcmdzKTsKIAlpZiAodW5saWtlbHkoZXJyKSkKLQkJZ290byBlcnJfdW5sb2NrOworCQlnb3Rv
IGVycl9ycG07CiAKLQllcnIgPSBlYl93YWl0X2Zvcl9yaW5nKCZlYik7IC8qIG1heSB0ZW1wb3Jh
cmlseSBkcm9wIHN0cnVjdF9tdXRleCAqLworCWVyciA9IGViX3dhaXRfZm9yX3JpbmcoJmViKTsK
IAlpZiAodW5saWtlbHkoZXJyKSkKIAkJZ290byBlcnJfZW5naW5lOwogCkBAIC0yNjEyLDggKzI2
MjAsNiBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CWViX3JlbGVhc2Vfdm1hcygmZWIpOwogZXJyX2VuZ2luZToKIAllYl91bnBpbl9jb250ZXh0KCZl
Yik7Ci1lcnJfdW5sb2NrOgotCW11dGV4X3VubG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwogZXJy
X3JwbToKIAlpbnRlbF9ndF9wbV9wdXQoZWIuaTkxNSk7CiAJaTkxNV9nZW1fY29udGV4dF9wdXQo
ZWIuZ2VtX2NvbnRleHQpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwppbmRl
eCAzNWI3M2MzNDc4ODcuLmU3MTM0Y2IzODQyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMKQEAgLTY4LDExICs2OCw3IEBAIHN0YXRpYyB2b2lkIHJldGlyZV93b3JrX2hh
bmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0KIAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdlbS5yZXRpcmVf
d29yay53b3JrKTsKIAotCS8qIENvbWUgYmFjayBsYXRlciBpZiB0aGUgZGV2aWNlIGlzIGJ1c3ku
Li4gKi8KLQlpZiAobXV0ZXhfdHJ5bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCkpIHsKLQkJ
aTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkxNSk7Ci0JCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7Ci0JfQorCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUpOwogCiAJcXVldWVf
ZGVsYXllZF93b3JrKGk5MTUtPndxLAogCQkJICAgJmk5MTUtPmdlbS5yZXRpcmVfd29yaywKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggODVlYjVjOTlkNjU3
Li44NWJiZTIwNTVlYTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9j
cy5jCkBAIC03NDUsNyArNzQ1LDYgQEAgc3RhdGljIGludCBtZWFzdXJlX2JyZWFkY3J1bWJfZHco
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJICAgICAgIGVuZ2luZS0+c3RhdHVz
X3BhZ2Uudm1hKSkKIAkJZ290byBvdXRfZnJhbWU7CiAKLQlJTklUX0xJU1RfSEVBRCgmZnJhbWUt
PnJpbmcucmVxdWVzdF9saXN0KTsKIAlmcmFtZS0+cmluZy50aW1lbGluZSA9ICZmcmFtZS0+dGlt
ZWxpbmU7CiAJZnJhbWUtPnJpbmcudmFkZHIgPSBmcmFtZS0+Y3M7CiAJZnJhbWUtPnJpbmcuc2l6
ZSA9IHNpemVvZihmcmFtZS0+Y3MpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaAppbmRleCA5Njk5NGE1NTgwNGEuLjM2N2U2ODdiNTYwMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTY4LDggKzY4LDYg
QEAgc3RydWN0IGludGVsX3JpbmcgewogCXZvaWQgKnZhZGRyOwogCiAJc3RydWN0IGk5MTVfdGlt
ZWxpbmUgKnRpbWVsaW5lOwotCXN0cnVjdCBsaXN0X2hlYWQgcmVxdWVzdF9saXN0OwotCXN0cnVj
dCBsaXN0X2hlYWQgYWN0aXZlX2xpbms7CiAKIAl1MzIgaGVhZDsKIAl1MzIgdGFpbDsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCA5NWQ5YWRjN2UyZTku
LjU0NmYyN2I4MWI0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZm
ZXIuYwpAQCAtMTI2Nyw3ICsxMjY3LDYgQEAgaW50ZWxfZW5naW5lX2NyZWF0ZV9yaW5nKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAK
IAlrcmVmX2luaXQoJnJpbmctPnJlZik7Ci0JSU5JVF9MSVNUX0hFQUQoJnJpbmctPnJlcXVlc3Rf
bGlzdCk7CiAJcmluZy0+dGltZWxpbmUgPSBpOTE1X3RpbWVsaW5lX2dldCh0aW1lbGluZSk7CiAK
IAlyaW5nLT5zaXplID0gc2l6ZTsKQEAgLTE3ODcsMjEgKzE3ODYsMjYgQEAgc3RhdGljIGludCBy
aW5nX3JlcXVlc3RfYWxsb2Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKIAogc3RhdGlj
IG5vaW5saW5lIGludCB3YWl0X2Zvcl9zcGFjZShzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZywgdW5z
aWduZWQgaW50IGJ5dGVzKQogeworCXN0cnVjdCBsaXN0X2hlYWQgKnJlcXVlc3RzID0gJnJpbmct
PnRpbWVsaW5lLT5yZXF1ZXN0czsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp0YXJnZXQ7CiAJbG9u
ZyB0aW1lb3V0OwogCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcmluZy0+dGltZWxpbmUtPm11dGV4
KTsKIAlpZiAoaW50ZWxfcmluZ191cGRhdGVfc3BhY2UocmluZykgPj0gYnl0ZXMpCiAJCXJldHVy
biAwOwogCi0JR0VNX0JVR19PTihsaXN0X2VtcHR5KCZyaW5nLT5yZXF1ZXN0X2xpc3QpKTsKLQls
aXN0X2Zvcl9lYWNoX2VudHJ5KHRhcmdldCwgJnJpbmctPnJlcXVlc3RfbGlzdCwgcmluZ19saW5r
KSB7CisJR0VNX0JVR19PTihsaXN0X2VtcHR5KHJlcXVlc3RzKSk7CisJbGlzdF9mb3JfZWFjaF9l
bnRyeSh0YXJnZXQsIHJlcXVlc3RzLCBsaW5rKSB7CisJCWlmICh0YXJnZXQtPnJpbmcgIT0gcmlu
ZykKKwkJCWNvbnRpbnVlOworCiAJCS8qIFdvdWxkIGNvbXBsZXRpb24gb2YgdGhpcyByZXF1ZXN0
IGZyZWUgZW5vdWdoIHNwYWNlPyAqLwogCQlpZiAoYnl0ZXMgPD0gX19pbnRlbF9yaW5nX3NwYWNl
KHRhcmdldC0+cG9zdGZpeCwKIAkJCQkJCXJpbmctPmVtaXQsIHJpbmctPnNpemUpKQogCQkJYnJl
YWs7CiAJfQogCi0JaWYgKFdBUk5fT04oJnRhcmdldC0+cmluZ19saW5rID09ICZyaW5nLT5yZXF1
ZXN0X2xpc3QpKQorCWlmIChHRU1fV0FSTl9PTigmdGFyZ2V0LT5saW5rID09IHJlcXVlc3RzKSkK
IAkJcmV0dXJuIC1FTk9TUEM7CiAKIAl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQodGFyZ2V0
LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKaW5kZXggYjljMjc2NGJlY2EzLi5m
YjE5YTUyOTBhYmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5n
aW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwpAQCAtNjcs
NyArNjcsNiBAQCBzdGF0aWMgc3RydWN0IGludGVsX3JpbmcgKm1vY2tfcmluZyhzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmluZy0+YmFzZS52YWRkciA9ICh2b2lkICopKHJpbmcg
KyAxKTsKIAlyaW5nLT5iYXNlLnRpbWVsaW5lID0gJnJpbmctPnRpbWVsaW5lOwogCi0JSU5JVF9M
SVNUX0hFQUQoJnJpbmctPmJhc2UucmVxdWVzdF9saXN0KTsKIAlpbnRlbF9yaW5nX3VwZGF0ZV9z
cGFjZSgmcmluZy0+YmFzZSk7CiAKIAlyZXR1cm4gJnJpbmctPmJhc2U7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jCmluZGV4IDY1N2U4ZmIxOGUzOC4uYThhMTE0YzZhODM5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMzY5NSwxMiArMzY5NSwxMiBAQCBpOTE1X2Ry
b3BfY2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQogCQkJCQkJICAgICBJOTE1X1dBSVRf
TE9DS0VELAogCQkJCQkJICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCk7CiAKLQkJaWYgKHZhbCAm
IERST1BfUkVUSVJFKQotCQkJaTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkxNSk7Ci0KIAkJbXV0ZXhf
dW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAl9CiAKKwlpZiAodmFsICYgRFJPUF9S
RVRJUkUpCisJCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUpOworCiAJaWYgKHZhbCAmIERST1Bf
UkVTRVRfQUNUSVZFICYmIGk5MTVfdGVybWluYWxseV93ZWRnZWQoaTkxNSkpCiAJCWk5MTVfaGFu
ZGxlX2Vycm9yKGk5MTUsIEFMTF9FTkdJTkVTLCAwLCBOVUxMKTsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKaW5kZXggYTBhZDk1MjI0MjVlLi42MjFmMTMxOTFlMDEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaApAQCAtMTg2Myw4ICsxODYzLDYgQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewog
CQkJc3RydWN0IGxpc3RfaGVhZCBod3NwX2ZyZWVfbGlzdDsKIAkJfSB0aW1lbGluZXM7CiAKLQkJ
c3RydWN0IGxpc3RfaGVhZCBhY3RpdmVfcmluZ3M7Ci0KIAkJc3RydWN0IGludGVsX3dha2VyZWYg
d2FrZXJlZjsKIAogCQlzdHJ1Y3QgbGlzdF9oZWFkIGNsb3NlZF92bWE7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYwppbmRleCAxNTcxYzcwN2FkMTUuLjkxYTIxNjcyNDYxZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCkBAIC0xMDE3LDkgKzEwMTcsMTAgQEAgaW50IGk5MTVfZ2VtX3dhaXRfZm9yX2lk
bGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWlmIChlcnIpCiAJCQlyZXR1cm4g
ZXJyOwogCi0JCWk5MTVfcmV0aXJlX3JlcXVlc3RzKGk5MTUpOwogCX0KIAorCWk5MTVfcmV0aXJl
X3JlcXVlc3RzKGk5MTUpOworCiAJcmV0dXJuIDA7CiB9CiAKQEAgLTE3NzIsNyArMTc3Myw2IEBA
IGludCBpOTE1X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAogCWludGVsX2d0X3BtX2luaXQoZGV2X3ByaXYpOwogCi0JSU5JVF9MSVNUX0hFQUQoJmRl
dl9wcml2LT5ndC5hY3RpdmVfcmluZ3MpOwogCUlOSVRfTElTVF9IRUFEKCZkZXZfcHJpdi0+Z3Qu
Y2xvc2VkX3ZtYSk7CiAJc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5ndC5jbG9zZWRfbG9jayk7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXggMmMyNjI0ZDdlMThlLi43ZTFj
Njk5ZDIxYzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0xODIsOSArMTgy
LDYgQEAgaTkxNV9yZXF1ZXN0X3JlbW92ZV9mcm9tX2NsaWVudChzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpyZXF1ZXN0KQogCiBzdGF0aWMgdm9pZCBhZHZhbmNlX3Jpbmcoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcmVxdWVzdCkKIHsKLQlzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZyA9IHJlcXVlc3QtPnJpbmc7
Ci0JdW5zaWduZWQgaW50IHRhaWw7Ci0KIAkvKgogCSAqIFdlIGtub3cgdGhlIEdQVSBtdXN0IGhh
dmUgcmVhZCB0aGUgcmVxdWVzdCB0byBoYXZlCiAJICogc2VudCB1cyB0aGUgc2Vxbm8gKyBpbnRl
cnJ1cHQsIHNvIHVzZSB0aGUgcG9zaXRpb24KQEAgLTE5NCwyNCArMTkxLDcgQEAgc3RhdGljIHZv
aWQgYWR2YW5jZV9yaW5nKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJICogTm90ZSB0
aGlzIHJlcXVpcmVzIHRoYXQgd2UgYXJlIGFsd2F5cyBjYWxsZWQgaW4gcmVxdWVzdAogCSAqIGNv
bXBsZXRpb24gb3JkZXIuCiAJICovCi0JR0VNX0JVR19PTighbGlzdF9pc19maXJzdCgmcmVxdWVz
dC0+cmluZ19saW5rLCAmcmluZy0+cmVxdWVzdF9saXN0KSk7Ci0JaWYgKGxpc3RfaXNfbGFzdCgm
cmVxdWVzdC0+cmluZ19saW5rLCAmcmluZy0+cmVxdWVzdF9saXN0KSkgewotCQkvKgotCQkgKiBX
ZSBtYXkgcmFjZSBoZXJlIHdpdGggZXhlY2xpc3RzIHJlc3VibWl0dGluZyB0aGlzIHJlcXVlc3QK
LQkJICogYXMgd2UgcmV0aXJlIGl0LiBUaGUgcmVzdWJtaXNzaW9uIHdpbGwgbW92ZSB0aGUgcmlu
Zy0+dGFpbAotCQkgKiBmb3J3YXJkcyAodG8gcmVxdWVzdC0+d2FfdGFpbCkuIFdlIGVpdGhlciBy
ZWFkIHRoZQotCQkgKiBjdXJyZW50IHZhbHVlIHRoYXQgd2FzIHdyaXR0ZW4gdG8gaHcsIG9yIHRo
ZSB2YWx1ZSB0aGF0Ci0JCSAqIGlzIGp1c3QgYWJvdXQgdG8gYmUuIEVpdGhlciB3b3JrcywgaWYg
d2UgbWlzcyB0aGUgbGFzdCB0d28KLQkJICogbm9vcHMgLSB0aGV5IGFyZSBzYWZlIHRvIGJlIHJl
cGxheWVkIG9uIGEgcmVzZXQuCi0JCSAqLwotCQl0YWlsID0gUkVBRF9PTkNFKHJlcXVlc3QtPnRh
aWwpOwotCQlsaXN0X2RlbCgmcmluZy0+YWN0aXZlX2xpbmspOwotCX0gZWxzZSB7Ci0JCXRhaWwg
PSByZXF1ZXN0LT5wb3N0Zml4OwotCX0KLQlsaXN0X2RlbF9pbml0KCZyZXF1ZXN0LT5yaW5nX2xp
bmspOwotCi0JcmluZy0+aGVhZCA9IHRhaWw7CisJcmVxdWVzdC0+cmluZy0+aGVhZCA9IHJlcXVl
c3QtPnBvc3RmaXg7CiB9CiAKIHN0YXRpYyB2b2lkIGZyZWVfY2FwdHVyZV9saXN0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCkBAIC0yOTAsNyArMjcwLDcgQEAgc3RhdGljIGJvb2wgaTkx
NV9yZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAogdm9pZCBpOTE1X3Jl
cXVlc3RfcmV0aXJlX3VwdG8oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7Ci0Jc3RydWN0IGlu
dGVsX3JpbmcgKnJpbmcgPSBycS0+cmluZzsKKwlzdHJ1Y3QgbGlzdF9oZWFkICpyZXF1ZXN0cyA9
ICZycS0+dGltZWxpbmUtPnJlcXVlc3RzOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnRtcDsKIAog
CUdFTV9UUkFDRSgiJXMgZmVuY2UgJWxseDolbGxkLCBjdXJyZW50ICVkXG4iLApAQCAtMzAwLDEx
ICsyODAsOSBAQCB2b2lkIGk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKIAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJxLT50aW1lbGluZS0+bXV0ZXgpOwog
CUdFTV9CVUdfT04oIWk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKTsKLQlHRU1fQlVHX09OKGxp
c3RfZW1wdHkoJnJxLT5yaW5nX2xpbmspKTsKIAogCWRvIHsKLQkJdG1wID0gbGlzdF9maXJzdF9l
bnRyeSgmcmluZy0+cmVxdWVzdF9saXN0LAotCQkJCSAgICAgICB0eXBlb2YoKnRtcCksIHJpbmdf
bGluayk7CisJCXRtcCA9IGxpc3RfZmlyc3RfZW50cnkocmVxdWVzdHMsIHR5cGVvZigqdG1wKSwg
bGluayk7CiAJfSB3aGlsZSAoaTkxNV9yZXF1ZXN0X3JldGlyZSh0bXApICYmIHRtcCAhPSBycSk7
CiB9CiAKQEAgLTUzNSwxMiArNTEzLDEyIEBAIHNlbWFwaG9yZV9ub3RpZnkoc3RydWN0IGk5MTVf
c3dfZmVuY2UgKmZlbmNlLCBlbnVtIGk5MTVfc3dfZmVuY2Vfbm90aWZ5IHN0YXRlKQogCXJldHVy
biBOT1RJRllfRE9ORTsKIH0KIAotc3RhdGljIHZvaWQgcmluZ19yZXRpcmVfcmVxdWVzdHMoc3Ry
dWN0IGludGVsX3JpbmcgKnJpbmcpCitzdGF0aWMgdm9pZCByZXRpcmVfcmVxdWVzdHMoc3RydWN0
IGk5MTVfdGltZWxpbmUgKnRsKQogewogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm47CiAK
LQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZyaW5nLT50aW1lbGluZS0+bXV0ZXgpOwotCWxpc3RfZm9y
X2VhY2hfZW50cnlfc2FmZShycSwgcm4sICZyaW5nLT5yZXF1ZXN0X2xpc3QsIHJpbmdfbGluaykK
Kwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ0bC0+bXV0ZXgpOworCWxpc3RfZm9yX2VhY2hfZW50cnlf
c2FmZShycSwgcm4sICZ0bC0+cmVxdWVzdHMsIGxpbmspCiAJCWlmICghaTkxNV9yZXF1ZXN0X3Jl
dGlyZShycSkpCiAJCQlicmVhazsKIH0KQEAgLTU0OCwxNyArNTI2LDE3IEBAIHN0YXRpYyB2b2lk
IHJpbmdfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQogc3RhdGljIG5v
aW5saW5lIHN0cnVjdCBpOTE1X3JlcXVlc3QgKgogcmVxdWVzdF9hbGxvY19zbG93KHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSwgZ2ZwX3QgZ2ZwKQogewotCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5n
ID0gY2UtPnJpbmc7CisJc3RydWN0IGk5MTVfdGltZWxpbmUgKnRsID0gY2UtPnJpbmctPnRpbWVs
aW5lOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCi0JaWYgKGxpc3RfZW1wdHkoJnJpbmct
PnJlcXVlc3RfbGlzdCkpCisJaWYgKGxpc3RfZW1wdHkoJnRsLT5yZXF1ZXN0cykpCiAJCWdvdG8g
b3V0OwogCiAJaWYgKCFnZnBmbGFnc19hbGxvd19ibG9ja2luZyhnZnApKQogCQlnb3RvIG91dDsK
IAogCS8qIE1vdmUgb3VyIG9sZGVzdCByZXF1ZXN0IHRvIHRoZSBzbGFiLWNhY2hlIChpZiBub3Qg
aW4gdXNlISkgKi8KLQlycSA9IGxpc3RfZmlyc3RfZW50cnkoJnJpbmctPnJlcXVlc3RfbGlzdCwg
dHlwZW9mKCpycSksIHJpbmdfbGluayk7CisJcnEgPSBsaXN0X2ZpcnN0X2VudHJ5KCZ0bC0+cmVx
dWVzdHMsIHR5cGVvZigqcnEpLCBsaW5rKTsKIAlpOTE1X3JlcXVlc3RfcmV0aXJlKHJxKTsKIAog
CXJxID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xhYl9yZXF1ZXN0cywKQEAgLTU2NywxMSAr
NTQ1LDExIEBAIHJlcXVlc3RfYWxsb2Nfc2xvdyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGdm
cF90IGdmcCkKIAkJcmV0dXJuIHJxOwogCiAJLyogUmF0ZWxpbWl0IG91cnNlbHZlcyB0byBwcmV2
ZW50IG9vbSBmcm9tIG1hbGljaW91cyBjbGllbnRzICovCi0JcnEgPSBsaXN0X2xhc3RfZW50cnko
JnJpbmctPnJlcXVlc3RfbGlzdCwgdHlwZW9mKCpycSksIHJpbmdfbGluayk7CisJcnEgPSBsaXN0
X2xhc3RfZW50cnkoJnRsLT5yZXF1ZXN0cywgdHlwZW9mKCpycSksIGxpbmspOwogCWNvbmRfc3lu
Y2hyb25pemVfcmN1KHJxLT5yY3VzdGF0ZSk7CiAKIAkvKiBSZXRpcmUgb3VyIG9sZCByZXF1ZXN0
cyBpbiB0aGUgaG9wZSB0aGF0IHdlIGZyZWUgc29tZSAqLwotCXJpbmdfcmV0aXJlX3JlcXVlc3Rz
KHJpbmcpOworCXJldGlyZV9yZXF1ZXN0cyh0bCk7CiAKIG91dDoKIAlyZXR1cm4ga21lbV9jYWNo
ZV9hbGxvYyhnbG9iYWwuc2xhYl9yZXF1ZXN0cywgZ2ZwKTsKQEAgLTcxMSw2ICs2ODksNyBAQCBf
X2k5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBnZnBfdCBnZnAp
CiBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKIGk5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQogeworCXN0cnVjdCBpOTE1X3RpbWVsaW5lICp0bCA9IGNlLT5yaW5nLT50
aW1lbGluZTsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAlpbnQgZXJyOwogCkBAIC03MTks
OCArNjk4LDggQEAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Up
CiAJCXJldHVybiBFUlJfUFRSKGVycik7CiAKIAkvKiBNb3ZlIG91ciBvbGRlc3QgcmVxdWVzdCB0
byB0aGUgc2xhYi1jYWNoZSAoaWYgbm90IGluIHVzZSEpICovCi0JcnEgPSBsaXN0X2ZpcnN0X2Vu
dHJ5KCZjZS0+cmluZy0+cmVxdWVzdF9saXN0LCB0eXBlb2YoKnJxKSwgcmluZ19saW5rKTsKLQlp
ZiAoIWxpc3RfaXNfbGFzdCgmcnEtPnJpbmdfbGluaywgJmNlLT5yaW5nLT5yZXF1ZXN0X2xpc3Qp
ICYmCisJcnEgPSBsaXN0X2ZpcnN0X2VudHJ5KCZ0bC0+cmVxdWVzdHMsIHR5cGVvZigqcnEpLCBs
aW5rKTsKKwlpZiAoIWxpc3RfaXNfbGFzdCgmcnEtPmxpbmssICZ0bC0+cmVxdWVzdHMpICYmCiAJ
ICAgIGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKQogCQlpOTE1X3JlcXVlc3RfcmV0aXJlKHJx
KTsKIApAQCAtNzMxLDcgKzcxMCw3IEBAIGk5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQogCQlnb3RvIGVycl91bmxvY2s7CiAKIAkvKiBDaGVjayB0aGF0IHdlIGRv
IG5vdCBpbnRlcnJ1cHQgb3Vyc2VsdmVzIHdpdGggYSBuZXcgcmVxdWVzdCAqLwotCXJxLT5jb29r
aWUgPSBsb2NrZGVwX3Bpbl9sb2NrKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KTsKKwlycS0+
Y29va2llID0gbG9ja2RlcF9waW5fbG9jaygmdGwtPm11dGV4KTsKIAogCXJldHVybiBycTsKIApA
QCAtNzQzLDEwICs3MjIsMTAgQEAgaTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCiBzdGF0aWMgaW50CiBpOTE1X3JlcXVlc3RfYXdhaXRfc3RhcnQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnNpZ25hbCkKIHsKLQlpZiAobGlz
dF9pc19maXJzdCgmc2lnbmFsLT5yaW5nX2xpbmssICZzaWduYWwtPnJpbmctPnJlcXVlc3RfbGlz
dCkpCisJaWYgKGxpc3RfaXNfZmlyc3QoJnNpZ25hbC0+bGluaywgJnNpZ25hbC0+cmluZy0+dGlt
ZWxpbmUtPnJlcXVlc3RzKSkKIAkJcmV0dXJuIDA7CiAKLQlzaWduYWwgPSBsaXN0X3ByZXZfZW50
cnkoc2lnbmFsLCByaW5nX2xpbmspOworCXNpZ25hbCA9IGxpc3RfcHJldl9lbnRyeShzaWduYWws
IGxpbmspOwogCWlmIChpOTE1X3RpbWVsaW5lX3N5bmNfaXNfbGF0ZXIocnEtPnRpbWVsaW5lLCAm
c2lnbmFsLT5mZW5jZSkpCiAJCXJldHVybiAwOwogCkBAIC0xMTQzLDYgKzExMjIsNyBAQCBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVzdF9jb21taXQoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCiAJICovCiAJR0VNX0JVR19PTihycS0+cmVzZXJ2ZWRfc3BhY2UgPiByaW5nLT5zcGFj
ZSk7CiAJcnEtPnJlc2VydmVkX3NwYWNlID0gMDsKKwlycS0+ZW1pdHRlZF9qaWZmaWVzID0gamlm
ZmllczsKIAogCS8qCiAJICogUmVjb3JkIHRoZSBwb3NpdGlvbiBvZiB0aGUgc3RhcnQgb2YgdGhl
IGJyZWFkY3J1bWIgc28gdGhhdApAQCAtMTE1NiwxMSArMTEzNiw2IEBAIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKl9faTkxNV9yZXF1ZXN0X2NvbW1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAog
CXByZXYgPSBfX2k5MTVfcmVxdWVzdF9hZGRfdG9fdGltZWxpbmUocnEpOwogCi0JbGlzdF9hZGRf
dGFpbCgmcnEtPnJpbmdfbGluaywgJnJpbmctPnJlcXVlc3RfbGlzdCk7Ci0JaWYgKGxpc3RfaXNf
Zmlyc3QoJnJxLT5yaW5nX2xpbmssICZyaW5nLT5yZXF1ZXN0X2xpc3QpKQotCQlsaXN0X2FkZCgm
cmluZy0+YWN0aXZlX2xpbmssICZycS0+aTkxNS0+Z3QuYWN0aXZlX3JpbmdzKTsKLQlycS0+ZW1p
dHRlZF9qaWZmaWVzID0gamlmZmllczsKLQogCS8qCiAJICogTGV0IHRoZSBiYWNrZW5kIGtub3cg
YSBuZXcgcmVxdWVzdCBoYXMgYXJyaXZlZCB0aGF0IG1heSBuZWVkCiAJICogdG8gYWRqdXN0IHRo
ZSBleGlzdGluZyBleGVjdXRpb24gc2NoZWR1bGUgZHVlIHRvIGEgaGlnaCBwcmlvcml0eQpAQCAt
MTQ1OSwyMiArMTQzNCwzMCBAQCBsb25nIGk5MTVfcmVxdWVzdF93YWl0KHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLAogCiBib29sIGk5MTVfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogewotCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCAqdG1wOworCXN0cnVj
dCBpOTE1X2d0X3RpbWVsaW5lcyAqZ3QgPSAmaTkxNS0+Z3QudGltZWxpbmVzOworCXN0cnVjdCBp
OTE1X3RpbWVsaW5lICp0bCwgKnRuOworCisJbXV0ZXhfbG9jaygmZ3QtPm11dGV4KTsKKwlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3NhZmUodGwsIHRuLCAmZ3QtPmFjdGl2ZV9saXN0LCBsaW5rKSB7CisJ
CWlmICghaTkxNV9hY3RpdmVfZmVuY2VfaXNzZXQoJnRsLT5sYXN0X3JlcXVlc3QpKQorCQkJY29u
dGludWU7CiAKLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
KwkJaTkxNV90aW1lbGluZV9nZXQodGwpOwogCi0JbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHJp
bmcsIHRtcCwKLQkJCQkgJmk5MTUtPmd0LmFjdGl2ZV9yaW5ncywgYWN0aXZlX2xpbmspIHsKLQkJ
aW50ZWxfcmluZ19nZXQocmluZyk7IC8qIGxhc3QgcnEgaG9sZHMgcmVmZXJlbmNlISAqLwotCQlt
dXRleF9sb2NrKCZyaW5nLT50aW1lbGluZS0+bXV0ZXgpOworCQltdXRleF91bmxvY2soJmd0LT5t
dXRleCk7CisJCWlmICghbXV0ZXhfdHJ5bG9jaygmdGwtPm11dGV4KSkKKwkJCWdvdG8gcmVsb2Nr
OwogCi0JCXJpbmdfcmV0aXJlX3JlcXVlc3RzKHJpbmcpOworCQlyZXRpcmVfcmVxdWVzdHModGwp
OwogCi0JCW11dGV4X3VubG9jaygmcmluZy0+dGltZWxpbmUtPm11dGV4KTsKLQkJaW50ZWxfcmlu
Z19wdXQocmluZyk7CisJCW11dGV4X3VubG9jaygmdGwtPm11dGV4KTsKK3JlbG9jazoKKwkJbXV0
ZXhfbG9jaygmZ3QtPm11dGV4KTsKKwkJaTkxNV90aW1lbGluZV9wdXQodGwpOwogCX0KKwltdXRl
eF91bmxvY2soJmd0LT5tdXRleCk7CiAKLQlyZXR1cm4gIWxpc3RfZW1wdHkoJmk5MTUtPmd0LmFj
dGl2ZV9yaW5ncyk7CisJcmV0dXJuICFsaXN0X2VtcHR5KCZndC0+YWN0aXZlX2xpc3QpOwogfQog
CiAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5oCmluZGV4IDgyNzdjZmYwZGY3MC4uZDYzYjdmNjljZDg3IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaApAQCAtMjIwLDkgKzIyMCw2IEBAIHN0cnVjdCBpOTE1
X3JlcXVlc3QgewogCS8qKiB0aW1lbGluZS0+cmVxdWVzdCBlbnRyeSBmb3IgdGhpcyByZXF1ZXN0
ICovCiAJc3RydWN0IGxpc3RfaGVhZCBsaW5rOwogCi0JLyoqIHJpbmctPnJlcXVlc3RfbGlzdCBl
bnRyeSBmb3IgdGhpcyByZXF1ZXN0ICovCi0Jc3RydWN0IGxpc3RfaGVhZCByaW5nX2xpbms7Ci0K
IAlzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXY7CiAJLyoqIGZpbGVfcHJp
diBsaXN0IGVudHJ5IGZvciB0aGlzIHJlcXVlc3QgKi8KIAlzdHJ1Y3QgbGlzdF9oZWFkIGNsaWVu
dF9saW5rOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9m
bHVzaF90ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2ZsdXNoX3Rl
c3QuYwppbmRleCA1YmZkMWIyNjI2YTIuLjBhMTAzNTFjM2M2NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmMKQEAgLTE0LDcgKzE0LDcgQEAK
IGludCBpZ3RfZmx1c2hfdGVzdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWdu
ZWQgaW50IGZsYWdzKQogewogCWludCByZXQgPSBpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5MTUp
ID8gLUVJTyA6IDA7Ci0JaW50IHJlcGVhdCA9ICEhKGZsYWdzICYgSTkxNV9XQUlUX0xPQ0tFRCk7
CisJaW50IHJlcGVhdCA9IDE7CiAKIAljb25kX3Jlc2NoZWQoKTsKIApAQCAtMzMsOCArMzMsNyBA
QCBpbnQgaWd0X2ZsdXNoX3Rlc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHVuc2ln
bmVkIGludCBmbGFncykKIAkJfQogCiAJCS8qIEVuc3VyZSB3ZSBhbHNvIGZsdXNoIGFmdGVyIHdl
ZGdpbmcuICovCi0JCWlmIChmbGFncyAmIEk5MTVfV0FJVF9MT0NLRUQpCi0JCQlpOTE1X3JldGly
ZV9yZXF1ZXN0cyhpOTE1KTsKKwkJaTkxNV9yZXRpcmVfcmVxdWVzdHMoaTkxNSk7CiAJfSB3aGls
ZSAocmVwZWF0LS0pOwogCiAJcmV0dXJuIHJldDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRleCBhOTZkMGMwMTJkNDYuLjFiNjZmMGQ5
NWEwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2Vt
X2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9k
ZXZpY2UuYwpAQCAtNDAsOCArNDAsNiBAQCB2b2lkIG1vY2tfZGV2aWNlX2ZsdXNoKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsK
IAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKIAotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwotCiAJZG8gewogCQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBp
OTE1LCBpZCkKIAkJCW1vY2tfZW5naW5lX2ZsdXNoKGVuZ2luZSk7CkBAIC0yMDAsNyArMTk4LDYg
QEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKm1vY2tfZ2VtX2RldmljZSh2b2lkKQogCiAJaTkx
NV90aW1lbGluZXNfaW5pdChpOTE1KTsKIAotCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5ndC5hY3Rp
dmVfcmluZ3MpOwogCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5ndC5jbG9zZWRfdm1hKTsKIAlzcGlu
X2xvY2tfaW5pdCgmaTkxNS0+Z3QuY2xvc2VkX2xvY2spOwogCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
