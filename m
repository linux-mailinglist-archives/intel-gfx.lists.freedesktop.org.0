Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4456066C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 15:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5096E4A0;
	Fri,  5 Jul 2019 13:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263096E4A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 13:16:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17143386-1500050 
 for multiple; Fri, 05 Jul 2019 14:16:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 14:16:42 +0100
Message-Id: <20190705131642.9246-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705123057.19346-1-chris@chris-wilson.co.uk>
References: <20190705123057.19346-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/oa: Reconfigure contexts on the fly
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

QXZvaWQgYSBnbG9iYWwgaWRsZSBiYXJyaWVyIGJ5IHJlY29uZmlndXJpbmcgZWFjaCBjb250ZXh0
IGJ5IHJld3JpdGluZwp0aGVtIHdpdGggTUlfU1RPUkVfRFdPUkQgZnJvbSB0aGUga2VybmVsIGNv
bnRleHQuCgp2MjogV2Ugb25seSBuZWVkIHRvIGRldGVybWluZSB0aGUgZGVzaXJlZCByZWdpc3Rl
ciB2YWx1ZXMgb25jZSwgdGhleSBhcmUKdGhlIHNhbWUgZm9yIGFsbCBjb250ZXh0cy4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jICAgICAgICAgICAgfCAyNDQgKysrKysrKysrKysrKysrLS0tLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgMTkwIGluc2VydGlvbnMoKyksIDYzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IGUzNjdkY2UyYTY5Ni4uMWYw
ZDEwYmI4OGMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKQEAgLTYyNCw3ICs2MjQsOSBAQCBpOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9rZXJuZWwoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBwcmlvKQogCWN0eC0+c2NoZWQucHJpb3Jp
dHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7CiAJY3R4LT5yaW5nX3NpemUgPSBQQUdFX1NJ
WkU7CiAKKwkvKiBJc29sYXRlIHRoZSBrZXJuZWwgY29udGV4dCBmcm9tIHByeWluZyBleWVzIGFu
ZCBzdGlja3kgZmluZ2VycyAqLwogCUdFTV9CVUdfT04oIWk5MTVfZ2VtX2NvbnRleHRfaXNfa2Vy
bmVsKGN0eCkpOworCWxpc3RfZGVsX2luaXQoJmN0eC0+bGluayk7CiAKIAlyZXR1cm4gY3R4Owog
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBlMWFlMTM5OWM3MmIuLjljYzUz
NzQ0MDFlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE1NTIsOSArMTU1
MiwxMiBAQCBfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwKIAlyZWdzW0NUWF9SSU5HX1RBSUwgKyAxXSA9IHJpbmctPnRhaWw7CiAKIAkvKiBSUENT
ICovCi0JaWYgKGVuZ2luZS0+Y2xhc3MgPT0gUkVOREVSX0NMQVNTKQorCWlmIChlbmdpbmUtPmNs
YXNzID09IFJFTkRFUl9DTEFTUykgewogCQlyZWdzW0NUWF9SX1BXUl9DTEtfU1RBVEUgKyAxXSA9
CiAJCQlpbnRlbF9zc2V1X21ha2VfcnBjcyhlbmdpbmUtPmk5MTUsICZjZS0+c3NldSk7CisKKwkJ
aTkxNV9vYV9pbml0X3JlZ19zdGF0ZShlbmdpbmUsIGNlLCByZWdzKTsKKwl9CiB9CiAKIHN0YXRp
YyBpbnQKQEAgLTI5NjYsOCArMjk2OSw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19pbml0X3Jl
Z19zdGF0ZSh1MzIgKnJlZ3MsCiAJaWYgKHJjcykgewogCQlyZWdzW0NUWF9MUklfSEVBREVSXzJd
ID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0oMSk7CiAJCUNUWF9SRUcocmVncywgQ1RYX1JfUFdSX0NM
S19TVEFURSwgR0VOOF9SX1BXUl9DTEtfU1RBVEUsIDApOwotCi0JCWk5MTVfb2FfaW5pdF9yZWdf
c3RhdGUoZW5naW5lLCBjZSwgcmVncyk7CiAJfQogCiAJcmVnc1tDVFhfRU5EXSA9IE1JX0JBVENI
X0JVRkZFUl9FTkQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDM1N2U2M2JlYjM3My4u
ODM1MzU4OWVlMzFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMTYzMCw2ICsxNjMw
LDI3IEBAIHN0YXRpYyB2b2lkIGhzd19kaXNhYmxlX21ldHJpY19zZXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCQkJCSAgICAgIH5HVF9OT0FfRU5BQkxFKSk7CiB9CiAKK3N0
YXRpYyB1MzIgb2FfY29uZmlnX2ZsZXhfcmVnKGNvbnN0IHN0cnVjdCBpOTE1X29hX2NvbmZpZyAq
b2FfY29uZmlnLAorCQkJICAgICAgaTkxNV9yZWdfdCByZWcpCit7CisJdTMyIG1taW8gPSBpOTE1
X21taW9fcmVnX29mZnNldChyZWcpOworCWludCBpOworCisJLyoKKwkgKiBUaGlzIGFyYml0cmFy
eSBkZWZhdWx0IHdpbGwgc2VsZWN0IHRoZSAnRVUgRlBVMCBQaXBlbGluZQorCSAqIEFjdGl2ZScg
ZXZlbnQuIEluIHRoZSBmdXR1cmUgaXQncyBhbnRpY2lwYXRlZCB0aGF0IHRoZXJlCisJICogd2ls
bCBiZSBhbiBleHBsaWNpdCAnTm8gRXZlbnQnIHdlIGNhbiBzZWxlY3QsIGJ1dCBub3QgeWV0Li4u
CisJICovCisJaWYgKCFvYV9jb25maWcpCisJCXJldHVybiAwOworCisJZm9yIChpID0gMDsgaSA8
IG9hX2NvbmZpZy0+ZmxleF9yZWdzX2xlbjsgaSsrKSB7CisJCWlmIChpOTE1X21taW9fcmVnX29m
ZnNldChvYV9jb25maWctPmZsZXhfcmVnc1tpXS5hZGRyKSA9PSBtbWlvKQorCQkJcmV0dXJuIG9h
X2NvbmZpZy0+ZmxleF9yZWdzW2ldLnZhbHVlOworCX0KKworCXJldHVybiAwOworfQogLyoKICAq
IE5COiBJdCBtdXN0IGFsd2F5cyByZW1haW4gcG9pbnRlciBzYWZlIHRvIHJ1biB0aGlzIGV2ZW4g
aWYgdGhlIE9BIHVuaXQKICAqIGhhcyBiZWVuIGRpc2FibGVkLgpAQCAtMTY2MywyOCArMTY4NCw4
IEBAIGdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91bmxvY2tlZChzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsCiAJCUdFTjhfT0FfQ09VTlRFUl9SRVNVTUUpOwogCiAJZm9yIChpID0gMDsgaSA8IEFSUkFZ
X1NJWkUoZmxleF9yZWdzKTsgaSsrKSB7Ci0JCXUzMiBzdGF0ZV9vZmZzZXQgPSBjdHhfZmxleGV1
MCArIGkgKiAyOwotCQl1MzIgbW1pbyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KGZsZXhfcmVnc1tp
XSk7Ci0KLQkJLyoKLQkJICogVGhpcyBhcmJpdHJhcnkgZGVmYXVsdCB3aWxsIHNlbGVjdCB0aGUg
J0VVIEZQVTAgUGlwZWxpbmUKLQkJICogQWN0aXZlJyBldmVudC4gSW4gdGhlIGZ1dHVyZSBpdCdz
IGFudGljaXBhdGVkIHRoYXQgdGhlcmUKLQkJICogd2lsbCBiZSBhbiBleHBsaWNpdCAnTm8gRXZl
bnQnIHdlIGNhbiBzZWxlY3QsIGJ1dCBub3QgeWV0Li4uCi0JCSAqLwotCQl1MzIgdmFsdWUgPSAw
OwotCi0JCWlmIChvYV9jb25maWcpIHsKLQkJCXUzMiBqOwotCi0JCQlmb3IgKGogPSAwOyBqIDwg
b2FfY29uZmlnLT5mbGV4X3JlZ3NfbGVuOyBqKyspIHsKLQkJCQlpZiAoaTkxNV9tbWlvX3JlZ19v
ZmZzZXQob2FfY29uZmlnLT5mbGV4X3JlZ3Nbal0uYWRkcikgPT0gbW1pbykgewotCQkJCQl2YWx1
ZSA9IG9hX2NvbmZpZy0+ZmxleF9yZWdzW2pdLnZhbHVlOwotCQkJCQlicmVhazsKLQkJCQl9Ci0J
CQl9Ci0JCX0KLQotCQlDVFhfUkVHKHJlZ19zdGF0ZSwgc3RhdGVfb2Zmc2V0LCBmbGV4X3JlZ3Nb
aV0sIHZhbHVlKTsKKwkJQ1RYX1JFRyhyZWdfc3RhdGUsIGN0eF9mbGV4ZXUwICsgaSAqIDIsIGZs
ZXhfcmVnc1tpXSwKKwkJCW9hX2NvbmZpZ19mbGV4X3JlZyhvYV9jb25maWcsIGZsZXhfcmVnc1tp
XSkpOwogCX0KIAogCUNUWF9SRUcocmVnX3N0YXRlLApAQCAtMTY5Miw2ICsxNjkzLDEwNyBAQCBn
ZW44X3VwZGF0ZV9yZWdfc3RhdGVfdW5sb2NrZWQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAog
CQlpbnRlbF9zc2V1X21ha2VfcnBjcyhpOTE1LCAmY2UtPnNzZXUpKTsKIH0KIAorc3RydWN0IGZs
ZXggeworCWk5MTVfcmVnX3QgcmVnOworCXUzMiBvZmZzZXQ7CisJdTMyIHZhbHVlOworfTsKKwor
c3RhdGljIGludAorZ2VuOF9zdG9yZV9mbGV4KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorCQlz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCisJCWNvbnN0IHN0cnVjdCBmbGV4ICpmbGV4LCB1bnNp
Z25lZCBpbnQgY291bnQpCit7CisJdTMyIG9mZnNldDsKKwl1MzIgKmNzOworCisJY3MgPSBpbnRl
bF9yaW5nX2JlZ2luKHJxLCA0ICogY291bnQpOworCWlmIChJU19FUlIoY3MpKQorCQlyZXR1cm4g
UFRSX0VSUihjcyk7CisKKwlvZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KGNlLT5zdGF0ZSkgKyBM
UkNfU1RBVEVfUE4gKiBQQUdFX1NJWkU7CisJZG8geworCQkqY3MrKyA9IE1JX1NUT1JFX0RXT1JE
X0lNTV9HRU40IHwgTUlfVVNFX0dHVFQ7CisJCSpjcysrID0gb2Zmc2V0ICsgKGZsZXgtPm9mZnNl
dCArIDEpICogc2l6ZW9mKHUzMik7CisJCSpjcysrID0gMDsKKwkJKmNzKysgPSBmbGV4LT52YWx1
ZTsKKwl9IHdoaWxlIChmbGV4KyssIC0tY291bnQpOworCisJaW50ZWxfcmluZ19hZHZhbmNlKHJx
LCBjcyk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludAorZ2VuOF9sb2FkX2ZsZXgoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCisJICAgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwK
KwkgICAgICAgY29uc3Qgc3RydWN0IGZsZXggKmZsZXgsIHVuc2lnbmVkIGludCBjb3VudCkKK3sK
Kwl1MzIgKmNzOworCisJR0VNX0JVR19PTighY291bnQgfHwgY291bnQgPiA2Myk7CisKKwljcyA9
IGludGVsX3JpbmdfYmVnaW4ocnEsIDIgKiBjb3VudCArIDIpOworCWlmIChJU19FUlIoY3MpKQor
CQlyZXR1cm4gUFRSX0VSUihjcyk7CisKKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKGNv
dW50KTsKKwlkbyB7CisJCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoZmxleC0+cmVnKTsK
KwkJKmNzKysgPSBmbGV4LT52YWx1ZTsKKwl9IHdoaWxlIChmbGV4KyssIC0tY291bnQpOworCSpj
cysrID0gTUlfTk9PUDsKKworCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOworCisJcmV0dXJu
IDA7Cit9CisKK3N0YXRpYyBpbnQgZ2VuOF9tb2RpZnlfY29udGV4dChzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UsCisJCQkgICAgICAgY29uc3Qgc3RydWN0IGZsZXggKmZsZXgsIHVuc2lnbmVkIGlu
dCBjb3VudCkKK3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlpbnQgZXJyOworCisJbG9j
a2RlcF9hc3NlcnRfaGVsZCgmY2UtPnBpbl9tdXRleCk7CisKKwlycSA9IGk5MTVfcmVxdWVzdF9j
cmVhdGUoY2UtPmVuZ2luZS0+a2VybmVsX2NvbnRleHQpOworCWlmIChJU19FUlIocnEpKQorCQly
ZXR1cm4gUFRSX0VSUihycSk7CisKKwkvKiBTZXJpYWxpc2Ugd2l0aCB0aGUgcmVtb3RlIGNvbnRl
eHQgKi8KKwllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldCgmY2UtPnJpbmctPnRpbWVsaW5l
LT5sYXN0X3JlcXVlc3QsIHJxKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9hZGQ7CisKKwkvKiBL
ZWVwIHRoZSByZW1vdGUgY29udGV4dCBhbGl2ZSB1bnRpbCBhZnRlciB3ZSBmaW5pc2ggZWRpdGlu
ZyAqLworCWVyciA9IGk5MTVfYWN0aXZlX3JlZigmY2UtPmFjdGl2ZSwgcnEtPmZlbmNlLmNvbnRl
eHQsIHJxKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9hZGQ7CisKKwllcnIgPSBnZW44X3N0b3Jl
X2ZsZXgocnEsIGNlLCBmbGV4LCBjb3VudCk7CisKK291dF9hZGQ6CisJaTkxNV9yZXF1ZXN0X2Fk
ZChycSk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCBnZW44X21vZGlmeV9zZWxmKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgICBjb25zdCBzdHJ1Y3QgZmxleCAqZmxleCwg
dW5zaWduZWQgaW50IGNvdW50KQoreworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCWludCBl
cnI7CisKKwlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOworCWlmIChJU19FUlIocnEpKQor
CQlyZXR1cm4gUFRSX0VSUihycSk7CisKKwllcnIgPSBnZW44X2xvYWRfZmxleChycSwgY2UsIGZs
ZXgsIGNvdW50KTsKKworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCXJldHVybiBlcnI7Cit9CisK
IC8qCiAgKiBNYW5hZ2VzIHVwZGF0aW5nIHRoZSBwZXItY29udGV4dCBhc3BlY3RzIG9mIHRoZSBP
QSBzdHJlYW0KICAqIGNvbmZpZ3VyYXRpb24gYWNyb3NzIGFsbCBjb250ZXh0cy4KQEAgLTE3MTYs
MTUgKzE4MTgsNDMgQEAgZ2VuOF91cGRhdGVfcmVnX3N0YXRlX3VubG9ja2VkKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSwKICAqCiAgKiBOb3RlOiBpdCdzIG9ubHkgdGhlIFJDUy9SZW5kZXIgY29u
dGV4dCB0aGF0IGhhcyBhbnkgT0Egc3RhdGUuCiAgKi8KLXN0YXRpYyBpbnQgZ2VuOF9jb25maWd1
cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKK3N0YXRp
YyBpbnQgZ2VuOF9jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZp
ZykKIHsKLQl1bnNpZ25lZCBpbnQgbWFwX3R5cGUgPSBpOTE1X2NvaGVyZW50X21hcF90eXBlKGRl
dl9wcml2KTsKKwkvKiBUaGUgTU1JTyBvZmZzZXRzIGZvciBGbGV4IEVVIHJlZ2lzdGVycyBhcmVu
J3QgY29udGlndW91cyAqLworCWNvbnN0IHUzMiBjdHhfZmxleGV1MCA9IGk5MTUtPnBlcmYub2Eu
Y3R4X2ZsZXhldTBfb2Zmc2V0OworI2RlZmluZSBjdHhfZmxleGV1TihOKSAoY3R4X2ZsZXhldTAg
KyAyICogKE4pKQorCXN0cnVjdCBmbGV4IHJlZ3NbXSA9IHsKKwkJeworCQkJR0VOOF9SX1BXUl9D
TEtfU1RBVEUsCisJCQlDVFhfUl9QV1JfQ0xLX1NUQVRFLAorCQl9LAorCQl7CisJCQlHRU44X09B
Q1RYQ09OVFJPTCwKKwkJCWk5MTUtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZzZXQsCisJCQko
KGk5MTUtPnBlcmYub2EucGVyaW9kX2V4cG9uZW50IDw8IEdFTjhfT0FfVElNRVJfUEVSSU9EX1NI
SUZUKSB8CisJCQkgKGk5MTUtPnBlcmYub2EucGVyaW9kaWMgPyBHRU44X09BX1RJTUVSX0VOQUJM
RSA6IDApIHwKKwkJCSBHRU44X09BX0NPVU5URVJfUkVTVU1FKQorCQl9LAorCQl7IEVVX1BFUkZf
Q05UTDAsIGN0eF9mbGV4ZXVOKDApIH0sCisJCXsgRVVfUEVSRl9DTlRMMSwgY3R4X2ZsZXhldU4o
MSkgfSwKKwkJeyBFVV9QRVJGX0NOVEwyLCBjdHhfZmxleGV1TigyKSB9LAorCQl7IEVVX1BFUkZf
Q05UTDMsIGN0eF9mbGV4ZXVOKDMpIH0sCisJCXsgRVVfUEVSRl9DTlRMNCwgY3R4X2ZsZXhldU4o
NCkgfSwKKwkJeyBFVV9QRVJGX0NOVEw1LCBjdHhfZmxleGV1Tig1KSB9LAorCQl7IEVVX1BFUkZf
Q05UTDYsIGN0eF9mbGV4ZXVOKDYpIH0sCisJfTsKKyN1bmRlZiBjdHhfZmxleGV1TgorCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
OwotCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwotCWludCByZXQ7CisJZW51bSBpbnRlbF9lbmdp
bmVfaWQgaWQ7CisJaW50IGVycjsKKwlpbnQgaTsKIAotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRl
dl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKKwlmb3IgKGkgPSAyOyBpIDwgQVJSQVlfU0laRShy
ZWdzKTsgaSsrKQorCQlyZWdzW2ldLnZhbHVlID0gb2FfY29uZmlnX2ZsZXhfcmVnKG9hX2NvbmZp
ZywgcmVnc1tpXS5yZWcpOworCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CiAKIAkvKgogCSAqIFRoZSBPQSByZWdpc3RlciBjb25maWcgaXMgc2V0dXAgdGhy
b3VnaCB0aGUgY29udGV4dCBpbWFnZS4gVGhpcyBpbWFnZQpAQCAtMTczNSw1OSArMTg2NSw1MyBA
QCBzdGF0aWMgaW50IGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJICogV2UgY291bGQgZW1pdCB0aGUgT0EgcmVnaXN0ZXIgY29u
ZmlnIHRocm91Z2ggdGhlIGJhdGNoIGJ1ZmZlciBidXQKIAkgKiB0aGlzIG1pZ2h0IGxlYXZlIHNt
YWxsIGludGVydmFsIG9mIHRpbWUgd2hlcmUgdGhlIE9BIHVuaXQgaXMKIAkgKiBjb25maWd1cmVk
IGF0IGFuIGludmFsaWQgc2FtcGxpbmcgcGVyaW9kLgotCSAqCi0JICogU28gZmFyIHRoZSBiZXN0
IHdheSB0byB3b3JrIGFyb3VuZCB0aGlzIGlzc3VlIHNlZW1zIHRvIGJlIGRyYWluaW5nCi0JICog
dGhlIEdQVSBmcm9tIGFueSBzdWJtaXR0ZWQgd29yay4KIAkgKi8KLQlyZXQgPSBpOTE1X2dlbV93
YWl0X2Zvcl9pZGxlKGRldl9wcml2LAotCQkJCSAgICAgSTkxNV9XQUlUX0xPQ0tFRCwKLQkJCQkg
ICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0J
LyogVXBkYXRlIGFsbCBjb250ZXh0cyBub3cgdGhhdCB3ZSd2ZSBzdGFsbGVkIHRoZSBzdWJtaXNz
aW9uLiAqLwotCWxpc3RfZm9yX2VhY2hfZW50cnkoY3R4LCAmZGV2X3ByaXYtPmNvbnRleHRzLmxp
c3QsIGxpbmspIHsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGN0eCwgJmk5MTUtPmNvbnRleHRzLmxp
c3QsIGxpbmspIHsKIAkJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKIAkJc3RydWN0
IGludGVsX2NvbnRleHQgKmNlOwogCiAJCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsCiAJCQkJICAg
IGk5MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksCiAJCQkJICAgIGl0KSB7Ci0JCQl1
MzIgKnJlZ3M7Ci0KIAkJCWlmIChjZS0+ZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCiAJ
CQkJY29udGludWU7CiAKLQkJCS8qIE9BIHNldHRpbmdzIHdpbGwgYmUgc2V0IHVwb24gZmlyc3Qg
dXNlICovCi0JCQlpZiAoIWNlLT5zdGF0ZSkKLQkJCQljb250aW51ZTsKLQotCQkJcmVncyA9IGk5
MTVfZ2VtX29iamVjdF9waW5fbWFwKGNlLT5zdGF0ZS0+b2JqLAotCQkJCQkJICAgICAgIG1hcF90
eXBlKTsKLQkJCWlmIChJU19FUlIocmVncykpIHsKLQkJCQlpOTE1X2dlbV9jb250ZXh0X3VubG9j
a19lbmdpbmVzKGN0eCk7Ci0JCQkJcmV0dXJuIFBUUl9FUlIocmVncyk7Ci0JCQl9CisJCQllcnIg
PSBpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGNlKTsKKwkJCWlmIChlcnIpCisJCQkJYnJlYWs7
CiAKLQkJCWNlLT5zdGF0ZS0+b2JqLT5tbS5kaXJ0eSA9IHRydWU7Ci0JCQlyZWdzICs9IExSQ19T
VEFURV9QTiAqIFBBR0VfU0laRSAvIHNpemVvZigqcmVncyk7CisJCQlyZWdzWzBdLnZhbHVlID0g
aW50ZWxfc3NldV9tYWtlX3JwY3MoaTkxNSwgJmNlLT5zc2V1KTsKIAotCQkJZ2VuOF91cGRhdGVf
cmVnX3N0YXRlX3VubG9ja2VkKGNlLCByZWdzLCBvYV9jb25maWcpOworCQkJLyogT3RoZXJ3aXNl
IE9BIHNldHRpbmdzIHdpbGwgYmUgc2V0IHVwb24gZmlyc3QgdXNlICovCisJCQlpZiAoaW50ZWxf
Y29udGV4dF9pc19waW5uZWQoY2UpKQorCQkJCWVyciA9IGdlbjhfbW9kaWZ5X2NvbnRleHQoY2Us
IHJlZ3MsIEFSUkFZX1NJWkUocmVncykpOwogCi0JCQlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFw
KGNlLT5zdGF0ZS0+b2JqKTsKKwkJCWludGVsX2NvbnRleHRfdW5sb2NrX3Bpbm5lZChjZSk7CisJ
CQlpZiAoZXJyKQorCQkJCWJyZWFrOwogCQl9CiAJCWk5MTVfZ2VtX2NvbnRleHRfdW5sb2NrX2Vu
Z2luZXMoY3R4KTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7CiAJfQogCiAJLyoKLQkgKiBB
cHBseSB0aGUgY29uZmlndXJhdGlvbiBieSBkb2luZyBvbmUgY29udGV4dCByZXN0b3JlIG9mIHRo
ZSBlZGl0ZWQKLQkgKiBjb250ZXh0IGltYWdlLgorCSAqIEFmdGVyIHVwZGF0aW5nIGFsbCBvdGhl
ciBjb250ZXh0cywgd2UgbmVlZCB0byBtb2RpZnkgb3Vyc2VsdmVzLgorCSAqIElmIHdlIGRvbid0
IG1vZGlmeSB0aGUga2VybmVsX2NvbnRleHQsIHdlIGRvIG5vdCBnZXQgZXZlbnRzIHdoaWxlCisJ
ICogaWRsZS4KIAkgKi8KLQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZGV2X3ByaXYtPmVuZ2lu
ZVtSQ1MwXS0+a2VybmVsX2NvbnRleHQpOwotCWlmIChJU19FUlIocnEpKQotCQlyZXR1cm4gUFRS
X0VSUihycSk7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKKwkJc3RydWN0
IGludGVsX2NvbnRleHQgKmNlID0gZW5naW5lLT5rZXJuZWxfY29udGV4dDsKIAotCWk5MTVfcmVx
dWVzdF9hZGQocnEpOworCQlpZiAoZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJfQ0xBU1MpCisJCQlj
b250aW51ZTsKKworCQlyZWdzWzBdLnZhbHVlID0gaW50ZWxfc3NldV9tYWtlX3JwY3MoaTkxNSwg
JmNlLT5zc2V1KTsKKworCQllcnIgPSBnZW44X21vZGlmeV9zZWxmKGNlLCByZWdzLCBBUlJBWV9T
SVpFKHJlZ3MpKTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7CisJfQogCiAJcmV0dXJuIDA7
CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
