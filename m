Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29768ECDED
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Nov 2019 11:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D4A6E3B8;
	Sat,  2 Nov 2019 10:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB9F6E3B8
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Nov 2019 10:01:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19056467-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 02 Nov 2019 10:01:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  2 Nov 2019 10:01:08 +0000
Message-Id: <20191102100108.22847-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/execlists: Verify context register state
 before execution
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

Q2hlY2sgdGhhdCB0aGUgY29udGV4dCdzIHJpbmcgcmVnaXN0ZXIgc3RhdGUgc3RpbGwgbWF0Y2hl
cyBvdXIKZXhwZWN0YXRpb25zIHByaW9yIHRvIGV4ZWN1dGlvbi4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyAgICAgfCA3MyArKysrKysrKysrKysrKysrKysrKy0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggfCAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgIHwgIDQgKy0KIDMgZmlsZXMgY2hhbmdlZCwgNjMg
aW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwppbmRleCA1MWFlZjJhMjMzY2IuLjNlNTIyODM3YTFiOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKQEAgLTExNDYsNiArMTE0Niw2MCBAQCBleGVjbGlzdHNfc2NoZWR1bGVf
b3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCWk5MTVfcmVxdWVzdF9wdXQocnEpOwogfQog
CitzdGF0aWMgaW50IGxyY19yaW5nX21pX21vZGUoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoreworCWlmIChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA+PSAxMikKKwkJcmV0
dXJuIDB4NjA7CisJZWxzZSBpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gOSkKKwkJcmV0
dXJuIDB4NTQ7CisJZWxzZSBpZiAoZW5naW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1MpCisJCXJl
dHVybiAweDU4OworCWVsc2UKKwkJcmV0dXJuIC0xOworfQorCitzdGF0aWMgdm9pZAorZXhlY2xp
c3RzX2NoZWNrX2NvbnRleHQoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJY29u
c3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWNvbnN0IHN0cnVjdCBpbnRl
bF9yaW5nICpyaW5nID0gY2UtPnJpbmc7CisJdTMyICpyZWdzID0gY2UtPmxyY19yZWdfc3RhdGU7
CisJaW50IHg7CisKKwlpZiAocmVnc1tDVFhfUklOR19TVEFSVF0gIT0gaTkxNV9nZ3R0X29mZnNl
dChyaW5nLT52bWEpKSB7CisJCXByX2Vycl9vbmNlKCIlczogY29udGV4dCBzdWJtaXR0ZWQgd2l0
aCBpbmNvcnJlY3QgUklOR19CVUZGRVJfU1RBUlQgWyUwOHhdLCBleHBlY3RlZCAlMDh4XG4iLAor
CQkJICAgIGVuZ2luZS0+bmFtZSwKKwkJCSAgICByZWdzW0NUWF9SSU5HX1NUQVJUXSwKKwkJCSAg
ICBpOTE1X2dndHRfb2Zmc2V0KHJpbmctPnZtYSkpOworCQlyZWdzW0NUWF9SSU5HX1NUQVJUXSA9
IGk5MTVfZ2d0dF9vZmZzZXQocmluZy0+dm1hKTsKKwl9CisKKwlpZiAoKHJlZ3NbQ1RYX1JJTkdf
Q1RMXSAmIH4oUklOR19XQUlUIHwgUklOR19XQUlUX1NFTUFQSE9SRSkpICE9CisJICAgIChSSU5H
X0NUTF9TSVpFKHJpbmctPnNpemUpIHwgUklOR19WQUxJRCkpIHsKKwkJcHJfZXJyX29uY2UoIiVz
OiBjb250ZXh0IHN1Ym1pdHRlZCB3aXRoIGluY29ycmVjdCBSSU5HX0JVRkZFUl9DT05UUk9MIFsl
MDh4XSwgZXhwZWN0ZWQgJTA4eFxuIiwKKwkJCSAgICBlbmdpbmUtPm5hbWUsCisJCQkgICAgcmVn
c1tDVFhfUklOR19DVExdLAorCQkJICAgICh1MzIpKFJJTkdfQ1RMX1NJWkUocmluZy0+c2l6ZSkg
fCBSSU5HX1ZBTElEKSk7CisJCXJlZ3NbQ1RYX1JJTkdfQ1RMXSA9IFJJTkdfQ1RMX1NJWkUocmlu
Zy0+c2l6ZSkgfCBSSU5HX1ZBTElEOworCX0KKworCWlmIChyZWdzW0NUWF9CQl9TVEFURV0gIT0g
UklOR19CQl9QUEdUVCkgeworCQlwcl9lcnJfb25jZSgiJXM6IGNvbnRleHQgc3VibWl0dGVkIHdp
dGggaW5jb3JyZWN0IEJCX1NUQVRFIFslMDh4XSwgZXhwZWN0ZWQgJTA4eFxuIiwKKwkJCSAgICBl
bmdpbmUtPm5hbWUsCisJCQkgICAgcmVnc1tDVFhfQkJfU1RBVEVdLAorCQkJICAgIFJJTkdfQkJf
UFBHVFQpOworCQlyZWdzW0NUWF9CQl9TVEFURV0gPSBSSU5HX0JCX1BQR1RUOworCX0KKworCXgg
PSBscmNfcmluZ19taV9tb2RlKGVuZ2luZSk7CisJaWYgKHggIT0gLTEgJiYgcmVnc1t4ICsgMV0g
JiBTVE9QX1JJTkcpIHsKKwkJcHJfZXJyX29uY2UoIiVzOiBjb250ZXh0IHN1Ym1pdHRlZCB3aXRo
IFNUT1BfUklORyBbJTA4eF0gaW4gUklOR19NSV9NT0RFXG4iLAorCQkJICAgIGVuZ2luZS0+bmFt
ZSwgcmVnc1t4ICsgMV0pOworCQlyZWdzW3ggKyAxXSAmPSB+U1RPUF9SSU5HOworCQlyZWdzW3gg
KyAxXSB8PSBTVE9QX1JJTkcgPDwgMTY7CisJfQorfQorCiBzdGF0aWMgdTY0IGV4ZWNsaXN0c191
cGRhdGVfY29udGV4dChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKIAlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UgPSBycS0+aHdfY29udGV4dDsKQEAgLTExNTQsNiArMTIwOCw5IEBA
IHN0YXRpYyB1NjQgZXhlY2xpc3RzX3VwZGF0ZV9jb250ZXh0KGNvbnN0IHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQogCWNlLT5scmNfcmVnX3N0YXRlW0NUWF9SSU5HX1RBSUxdID0KIAkJaW50ZWxf
cmluZ19zZXRfdGFpbChycS0+cmluZywgcnEtPnRhaWwpOwogCisJaWYgKElTX0VOQUJMRUQoQ09O
RklHX0RSTV9JOTE1X0RFQlVHX0dFTSkpCisJCWV4ZWNsaXN0c19jaGVja19jb250ZXh0KGNlLCBy
cS0+ZW5naW5lKTsKKwogCS8qCiAJICogTWFrZSBzdXJlIHRoZSBjb250ZXh0IGltYWdlIGlzIGNv
bXBsZXRlIGJlZm9yZSB3ZSBzdWJtaXQgaXQgdG8gSFcuCiAJICoKQEAgLTIzNTMsNyArMjQxMCw3
IEBAIF9fZXhlY2xpc3RzX3VwZGF0ZV9yZWdfc3RhdGUoY29uc3Qgc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlLAogCUdFTV9CVUdfT04oIWludGVsX3Jpbmdfb2Zmc2V0X3ZhbGlkKHJpbmcsIHJpbmct
PmhlYWQpKTsKIAlHRU1fQlVHX09OKCFpbnRlbF9yaW5nX29mZnNldF92YWxpZChyaW5nLCByaW5n
LT50YWlsKSk7CiAKLQlyZWdzW0NUWF9SSU5HX0JVRkZFUl9TVEFSVF0gPSBpOTE1X2dndHRfb2Zm
c2V0KHJpbmctPnZtYSk7CisJcmVnc1tDVFhfUklOR19TVEFSVF0gPSBpOTE1X2dndHRfb2Zmc2V0
KHJpbmctPnZtYSk7CiAJcmVnc1tDVFhfUklOR19IRUFEXSA9IHJpbmctPmhlYWQ7CiAJcmVnc1tD
VFhfUklOR19UQUlMXSA9IHJpbmctPnRhaWw7CiAKQEAgLTI5NDAsMTggKzI5OTcsNiBAQCBzdGF0
aWMgdm9pZCByZXNldF9jc2JfcG9pbnRlcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogCQkJICAgICAgICZleGVjbGlzdHMtPmNzYl9zdGF0dXNbcmVzZXRfdmFsdWVdKTsKIH0KIAot
c3RhdGljIGludCBscmNfcmluZ19taV9tb2RlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKLXsKLQlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIpCi0JCXJldHVy
biAweDYwOwotCWVsc2UgaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDkpCi0JCXJldHVy
biAweDU0OwotCWVsc2UgaWYgKGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTKQotCQlyZXR1
cm4gMHg1ODsKLQllbHNlCi0JCXJldHVybiAtMTsKLX0KLQogc3RhdGljIHZvaWQgX19leGVjbGlz
dHNfcmVzZXRfcmVnX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAkJCQkJ
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewpAQCAtMzg4NSw3ICszOTMw
LDcgQEAgc3RhdGljIHZvaWQgaW5pdF9jb21tb25fcmVnX3N0YXRlKHUzMiAqIGNvbnN0IHJlZ3Ms
CiAJCQlfTUFTS0VEX0JJVF9ESVNBQkxFKENUWF9DVFJMX0VOR0lORV9DVFhfU0FWRV9JTkhJQklU
IHwKIAkJCQkJICAgIENUWF9DVFJMX1JTX0NUWF9FTkFCTEUpOwogCi0JcmVnc1tDVFhfUklOR19C
VUZGRVJfQ09OVFJPTF0gPSBSSU5HX0NUTF9TSVpFKHJpbmctPnNpemUpIHwgUklOR19WQUxJRDsK
KwlyZWdzW0NUWF9SSU5HX0NUTF0gPSBSSU5HX0NUTF9TSVpFKHJpbmctPnNpemUpIHwgUklOR19W
QUxJRDsKIAlyZWdzW0NUWF9CQl9TVEFURV0gPSBSSU5HX0JCX1BQR1RUOwogfQogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgKaW5kZXggMDZhYjAyNzZlMTBlLi4wOGEzYmU2
NWY3MDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyY19yZWcu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmgKQEAgLTEzLDgg
KzEzLDggQEAKICNkZWZpbmUgQ1RYX0NPTlRFWFRfQ09OVFJPTAkJKDB4MDIgKyAxKQogI2RlZmlu
ZSBDVFhfUklOR19IRUFECQkJKDB4MDQgKyAxKQogI2RlZmluZSBDVFhfUklOR19UQUlMCQkJKDB4
MDYgKyAxKQotI2RlZmluZSBDVFhfUklOR19CVUZGRVJfU1RBUlQJCSgweDA4ICsgMSkKLSNkZWZp
bmUgQ1RYX1JJTkdfQlVGRkVSX0NPTlRST0wJCSgweDBhICsgMSkKKyNkZWZpbmUgQ1RYX1JJTkdf
U1RBUlQJCQkoMHgwOCArIDEpCisjZGVmaW5lIENUWF9SSU5HX0NUTAkJCSgweDBhICsgMSkKICNk
ZWZpbmUgQ1RYX0JCX1NUQVRFCQkJKDB4MTAgKyAxKQogI2RlZmluZSBDVFhfQkJfUEVSX0NUWF9Q
VFIJCSgweDE4ICsgMSkKICNkZWZpbmUgQ1RYX1BEUDNfVURXCQkJKDB4MjQgKyAxKQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwppbmRleCBlYjcxYWMyZjk5MmMuLmQxYTc1NjVl
YWQxOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKQEAgLTMyMDcsMTIg
KzMyMDcsMTIgQEAgc3RhdGljIGludCBsaXZlX2xyY19maXhlZCh2b2lkICphcmcpCiAJCX0gdGJs
W10gPSB7CiAJCQl7CiAJCQkJaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19TVEFSVChlbmdpbmUt
Pm1taW9fYmFzZSkpLAotCQkJCUNUWF9SSU5HX0JVRkZFUl9TVEFSVCAtIDEsCisJCQkJQ1RYX1JJ
TkdfU1RBUlQgLSAxLAogCQkJCSJSSU5HX1NUQVJUIgogCQkJfSwKIAkJCXsKIAkJCQlpOTE1X21t
aW9fcmVnX29mZnNldChSSU5HX0NUTChlbmdpbmUtPm1taW9fYmFzZSkpLAotCQkJCUNUWF9SSU5H
X0JVRkZFUl9DT05UUk9MIC0gMSwKKwkJCQlDVFhfUklOR19DVEwgLSAxLAogCQkJCSJSSU5HX0NU
TCIKIAkJCX0sCiAJCQl7Ci0tIAoyLjI0LjAucmMyCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
