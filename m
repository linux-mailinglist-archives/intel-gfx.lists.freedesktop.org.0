Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EDFC2396
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 16:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D7A8920A;
	Mon, 30 Sep 2019 14:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60070891C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 14:49:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18668579-1500050 
 for multiple; Mon, 30 Sep 2019 15:49:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 15:49:19 +0100
Message-Id: <20190930144919.27992-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190930113106.27596-1-chris@chris-wilson.co.uk>
References: <20190930113106.27596-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4] drm/i915/selftests: Exercise context
 switching in parallel
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

V2UgY3VycmVudGx5IHRlc3QgY29udGV4dCBzd2l0Y2hpbmcgb24gZWFjaCBlbmdpbmUgYXMgYSBi
YXNpYyBzdHJlc3MKdGVzdCAoanVzdCB2ZXJpZnlpbmcgdGhhdCBub3RoaW5nIGV4cGxvZGVzIGlm
IHdlIGV4ZWN1dGUgMiByZXF1ZXN0cyBmcm9tCmRpZmZlcmVudCBjb250ZXh0cyBzZXF1ZW50aWFs
bHkpLiBXaGF0IHdlIGhhdmUgbm90IHRlc3RlZCBpcyB3aGF0CmhhcHBlbnMgaWYgd2UgdHJ5IGFu
ZCBkbyBzbyBvbiBhbGwgYXZhaWxhYmxlIGVuZ2luZXMgc2ltdWx0YW5lb3VzbHksCnB1dHRpbmcg
b3VyIFNXIGFuZCB0aGUgSFcgdW5kZXIgdGhlIG1heGltYWwgc3RyZXNzLgoKdjI6IENsb25lIHRo
ZSBzZXQgb2YgZW5naW5lcyBmcm9tIHRoZSBmaXJzdCBjb250ZXh0IGludG8gdGhlIHNlY29uZGFy
eQpjb250ZXh0cy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIC4u
Li9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDIyNSArKysrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMK
aW5kZXggZGMyNWJjYzNlMzcyLi44MWE4M2MzNDQwNGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCkBAIC0xNTYsNiAr
MTU2LDIzMCBAQCBzdGF0aWMgaW50IGxpdmVfbm9wX3N3aXRjaCh2b2lkICphcmcpCiAJcmV0dXJu
IGVycjsKIH0KIAorc3RydWN0IHBhcmFsbGVsX3N3aXRjaCB7CisJc3RydWN0IHRhc2tfc3RydWN0
ICp0c2s7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlWzJdOworfTsKKworc3RhdGljIGludCBf
X2xpdmVfcGFyYWxsZWxfc3dpdGNoMSh2b2lkICpkYXRhKQoreworCXN0cnVjdCBwYXJhbGxlbF9z
d2l0Y2ggKmFyZyA9IGRhdGE7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmct
PmNlWzBdLT5lbmdpbmUtPmk5MTU7CisJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOworCXVuc2lnbmVk
IGxvbmcgY291bnQ7CisKKwljb3VudCA9IDA7CisJZG8geworCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSA9IE5VTEw7CisJCWludCBlcnIsIG47CisKKwkJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJ
WkUoYXJnLT5jZSk7IG4rKykgeworCQkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisKKwkJCW11dGV4
X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCQkJcnEgPSBpOTE1X3JlcXVlc3RfY3Jl
YXRlKGFyZy0+Y2Vbbl0pOworCQkJaWYgKElTX0VSUihycSkpIHsKKwkJCQltdXRleF91bmxvY2so
Jmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCQkJCXJldHVybiBQVFJfRVJSKHJxKTsKKwkJCX0K
KworCQkJaTkxNV9yZXF1ZXN0X2dldChycSk7CisJCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKKwkJ
CW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCX0KKworCQllcnIgPSAw
OworCQlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAsIEhaIC8gNSkgPCAwKQorCQkJZXJyID0g
LUVUSU1FOworCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBl
cnI7CisKKwkJY291bnQrKzsKKwl9IHdoaWxlICghX19pZ3RfdGltZW91dChlbmRfdGltZSwgTlVM
TCkpOworCisJcHJfaW5mbygiJXM6ICVsdSBzd2l0Y2hlcyAoc3luYylcbiIsIGFyZy0+Y2VbMF0t
PmVuZ2luZS0+bmFtZSwgY291bnQpOworCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IF9fbGl2
ZV9wYXJhbGxlbF9zd2l0Y2hOKHZvaWQgKmRhdGEpCit7CisJc3RydWN0IHBhcmFsbGVsX3N3aXRj
aCAqYXJnID0gZGF0YTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZy0+Y2Vb
MF0tPmVuZ2luZS0+aTkxNTsKKwlJR1RfVElNRU9VVChlbmRfdGltZSk7CisJdW5zaWduZWQgbG9u
ZyBjb3VudDsKKwlpbnQgbjsKKworCWNvdW50ID0gMDsKKwlkbyB7CisJCWZvciAobiA9IDA7IG4g
PCBBUlJBWV9TSVpFKGFyZy0+Y2UpOyBuKyspIHsKKwkJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
OworCisJCQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJCXJxID0gaTkx
NV9yZXF1ZXN0X2NyZWF0ZShhcmctPmNlW25dKTsKKwkJCWlmIChJU19FUlIocnEpKSB7CisJCQkJ
bXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJCQlyZXR1cm4gUFRSX0VS
UihycSk7CisJCQl9CisKKwkJCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCQkJbXV0ZXhfdW5sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJfQorCisJCWNvdW50Kys7CisJfSB3aGlsZSAo
IV9faWd0X3RpbWVvdXQoZW5kX3RpbWUsIE5VTEwpKTsKKworCXByX2luZm8oIiVzOiAlbHUgc3dp
dGNoZXMgKG1hbnkpXG4iLCBhcmctPmNlWzBdLT5lbmdpbmUtPm5hbWUsIGNvdW50KTsKKwlyZXR1
cm4gMDsKK30KKworc3RhdGljIGludCBsaXZlX3BhcmFsbGVsX3N3aXRjaCh2b2lkICphcmcpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7CisJc3RhdGljIGludCAoKiBj
b25zdCBmdW5jW10pKHZvaWQgKmFyZykgPSB7CisJCV9fbGl2ZV9wYXJhbGxlbF9zd2l0Y2gxLAor
CQlfX2xpdmVfcGFyYWxsZWxfc3dpdGNoTiwKKwkJTlVMTCwKKwl9OworCXN0cnVjdCBwYXJhbGxl
bF9zd2l0Y2ggKmRhdGEgPSBOVUxMOworCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICplbmdpbmVz
OworCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CisJaW50ICgqIGNvbnN0ICpmbiko
dm9pZCAqYXJnKTsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4OworCXN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZTsKKwlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7CisJaW50IG4sIG0sIGNvdW50
OworCWludCBlcnIgPSAwOworCisJLyoKKwkgKiBDaGVjayB3ZSBjYW4gcHJvY2VzcyBzd2l0Y2hl
cyBvbiBhbGwgZW5naW5lcyBzaW11bHRhbmVvdXNseS4KKwkgKi8KKworCWlmICghRFJJVkVSX0NB
UFMoaTkxNSktPmhhc19sb2dpY2FsX2NvbnRleHRzKQorCQlyZXR1cm4gMDsKKworCWZpbGUgPSBt
b2NrX2ZpbGUoaTkxNSk7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJuIFBUUl9FUlIoZmls
ZSk7CisKKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKworCWN0eCA9IGxp
dmVfY29udGV4dChpOTE1LCBmaWxlKTsKKwlpZiAoSVNfRVJSKGN0eCkpIHsKKwkJZXJyID0gUFRS
X0VSUihjdHgpOworCQlnb3RvIG91dF9sb2NrZWQ7CisJfQorCisJZW5naW5lcyA9IGk5MTVfZ2Vt
X2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCk7CisJY291bnQgPSBlbmdpbmVzLT5udW1fZW5naW5l
czsKKworCWRhdGEgPSBrY2FsbG9jKGNvdW50LCBzaXplb2YoKmRhdGEpLCBHRlBfS0VSTkVMKTsK
KwlpZiAoIWRhdGEpIHsKKwkJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHgpOwor
CQllcnIgPSAtRU5PTUVNOworCQlnb3RvIG91dF9sb2NrZWQ7CisJfQorCisJbSA9IDA7IC8qIFVz
ZSB0aGUgZmlyc3QgY29udGV4dCBhcyBvdXIgdGVtcGxhdGUgZm9yIHRoZSBlbmdpbmVzICovCisJ
Zm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgZW5naW5lcywgaXQpIHsKKwkJZXJyID0gaW50ZWxfY29u
dGV4dF9waW4oY2UpOworCQlpZiAoZXJyKSB7CisJCQlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19l
bmdpbmVzKGN0eCk7CisJCQlnb3RvIG91dF9sb2NrZWQ7CisJCX0KKwkJZGF0YVttKytdLmNlWzBd
ID0gaW50ZWxfY29udGV4dF9nZXQoY2UpOworCX0KKwlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19l
bmdpbmVzKGN0eCk7CisKKwkvKiBDbG9uZSB0aGUgc2FtZSBzZXQgb2YgZW5naW5lcyBpbiB0aGUg
b3RoZXIgY29udGV4dHMgKi8KKwlmb3IgKG4gPSAxOyBuIDwgQVJSQVlfU0laRShkYXRhLT5jZSk7
IG4rKykgeworCQljdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7CisJCWlmIChJU19FUlIo
Y3R4KSkgeworCQkJZXJyID0gUFRSX0VSUihjdHgpOworCQkJZ290byBvdXRfbG9ja2VkOworCQl9
CisKKwkJZm9yIChtID0gMDsgbSA8IGNvdW50OyBtKyspIHsKKwkJCWlmICghZGF0YVttXS5jZVsw
XSkKKwkJCQljb250aW51ZTsKKworCQkJY2UgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZShjdHgsIGRh
dGFbbV0uY2VbMF0tPmVuZ2luZSk7CisJCQlpZiAoSVNfRVJSKGNlKSkKKwkJCQlnb3RvIG91dF9s
b2NrZWQ7CisKKwkJCWVyciA9IGludGVsX2NvbnRleHRfcGluKGNlKTsKKwkJCWlmIChlcnIpIHsK
KwkJCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJCQkJZ290byBvdXRfbG9ja2VkOworCQkJfQor
CisJCQlkYXRhW21dLmNlW25dID0gY2U7CisJCX0KKwl9CisKKwltdXRleF91bmxvY2soJmk5MTUt
PmRybS5zdHJ1Y3RfbXV0ZXgpOworCisJZm9yIChmbiA9IGZ1bmM7ICFlcnIgJiYgKmZuOyBmbisr
KSB7CisJCXN0cnVjdCBpZ3RfbGl2ZV90ZXN0IHQ7CisJCWludCBuOworCisJCW11dGV4X2xvY2so
Jmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCQllcnIgPSBpZ3RfbGl2ZV90ZXN0X2JlZ2luKCZ0
LCBpOTE1LCBfX2Z1bmNfXywgIiIpOworCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOworCQlpZiAoZXJyKQorCQkJYnJlYWs7CisKKwkJZm9yIChuID0gMDsgbiA8IGNvdW50
OyBuKyspIHsKKwkJCWlmIChkYXRhW25dLmNlWzBdID09IE5VTEwpCisJCQkJY29udGludWU7CisK
KwkJCWRhdGFbbl0udHNrID0ga3RocmVhZF9ydW4oKmZuLCAmZGF0YVtuXSwKKwkJCQkJCSAgImln
dC9wYXJhbGxlbDolcyIsCisJCQkJCQkgIGRhdGFbbl0uY2VbMF0tPmVuZ2luZS0+bmFtZSk7CisJ
CQlpZiAoSVNfRVJSKGRhdGFbbl0udHNrKSkgeworCQkJCWVyciA9IFBUUl9FUlIoZGF0YVtuXS50
c2spOworCQkJCWJyZWFrOworCQkJfQorCQkJZ2V0X3Rhc2tfc3RydWN0KGRhdGFbbl0udHNrKTsK
KwkJfQorCisJCWZvciAobiA9IDA7IG4gPCBjb3VudDsgbisrKSB7CisJCQlpbnQgc3RhdHVzOwor
CisJCQlpZiAoSVNfRVJSX09SX05VTEwoZGF0YVtuXS50c2spKQorCQkJCWNvbnRpbnVlOworCisJ
CQlzdGF0dXMgPSBrdGhyZWFkX3N0b3AoZGF0YVtuXS50c2spOworCQkJaWYgKHN0YXR1cyAmJiAh
ZXJyKQorCQkJCWVyciA9IHN0YXR1czsKKworCQkJcHV0X3Rhc2tfc3RydWN0KGRhdGFbbl0udHNr
KTsKKwkJCWRhdGFbbl0udHNrID0gTlVMTDsKKwkJfQorCisJCW11dGV4X2xvY2soJmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpOworCQlpZiAoaWd0X2xpdmVfdGVzdF9lbmQoJnQpKQorCQkJZXJyID0g
LUVJTzsKKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwl9CisKKwlt
dXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKK291dF9sb2NrZWQ6CisJZm9yIChu
ID0gMDsgbiA8IGNvdW50OyBuKyspIHsKKwkJZm9yIChtID0gMDsgbSA8IEFSUkFZX1NJWkUoZGF0
YS0+Y2UpOyBtKyspIHsKKwkJCWlmICghZGF0YVtuXS5jZVttXSkKKwkJCQljb250aW51ZTsKKwor
CQkJaW50ZWxfY29udGV4dF91bnBpbihkYXRhW25dLmNlW21dKTsKKwkJCWludGVsX2NvbnRleHRf
cHV0KGRhdGFbbl0uY2VbbV0pOworCQl9CisJfQorCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CisJa2ZyZWUoZGF0YSk7CisJbW9ja19maWxlX2ZyZWUoaTkxNSwgZmlsZSk7
CisJcmV0dXJuIGVycjsKK30KKwogc3RhdGljIHVuc2lnbmVkIGxvbmcgcmVhbF9wYWdlX2NvdW50
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CiAJcmV0dXJuIGh1Z2VfZ2VtX29i
amVjdF9waHlzX3NpemUob2JqKSA+PiBQQUdFX1NISUZUOwpAQCAtMTY4MSw2ICsxOTA1LDcgQEAg
aW50IGk5MTVfZ2VtX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB7CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9
IHsKIAkJU1VCVEVTVChsaXZlX25vcF9zd2l0Y2gpLAorCQlTVUJURVNUKGxpdmVfcGFyYWxsZWxf
c3dpdGNoKSwKIAkJU1VCVEVTVChpZ3RfY3R4X2V4ZWMpLAogCQlTVUJURVNUKGlndF9jdHhfcmVh
ZG9ubHkpLAogCQlTVUJURVNUKGlndF9jdHhfc3NldSksCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
