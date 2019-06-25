Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E454F99
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E694D6E10A;
	Tue, 25 Jun 2019 13:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903066E0F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:03:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018183-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:27 +0100
Message-Id: <20190625130128.11009-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/20] drm/i915: Protect request retirement with
 timeline->mutex
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

Rm9yZ28gdGhlIHN0cnVjdF9tdXRleCByZXF1aXJlbWVudCBmb3IgcmVxdWVzdCByZXRpcmVtZW50
IGFzIHdlIGhhdmUKYmVlbiB0cmFuc2l0aW9uaW5nIG92ZXIgdG8gb25seSB1c2luZyB0aGUgdGlt
ZWxpbmUtPm11dGV4IGZvcgpjb250cm9sbGluZyB0aGUgbGlmZXRpbWUgb2YgYSByZXF1ZXN0IG9u
IHRoYXQgdGltZWxpbmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCAxOTIgKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9jb250ZXh0LmggICAgICAgfCAgMjUgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfY3MuYyAgICAgfCAgIDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3R5cGVzLmggIHwgICAyIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmMgICAgICAgICAgICB8ICAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF90eXBlcy5oICAgICAgfCAgIDIgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jp
bmdidWZmZXIuYyAgICB8ICAxMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdp
bmUuYyAgICAgICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
ICAgICAgICAgICB8IDE1MSArKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmggICAgICAgICAgIHwgICAzIC0KIDExIGZpbGVzIGNoYW5nZWQsIDIwMyBpbnNl
cnRpb25zKCspLCAxODkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggZjQzZWFhYTVkYjVmLi44MGM5YzU3YTMwMmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpA
QCAtNzM5LDYzICs3MzksNiBAQCBzdGF0aWMgaW50IGViX3NlbGVjdF9jb250ZXh0KHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgKmViKQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgc3RydWN0IGk5MTVf
cmVxdWVzdCAqX19lYl93YWl0X2Zvcl9yaW5nKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQotewot
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwotCi0JLyoKLQkgKiBDb21wbGV0ZWx5IHVuc2NpZW50
aWZpYyBmaW5nZXItaW4tdGhlLWFpciBlc3RpbWF0ZXMgZm9yIHN1aXRhYmxlCi0JICogbWF4aW11
bSB1c2VyIHJlcXVlc3Qgc2l6ZSAodG8gYXZvaWQgYmxvY2tpbmcpIGFuZCB0aGVuIGJhY2tvZmYu
Ci0JICovCi0JaWYgKGludGVsX3JpbmdfdXBkYXRlX3NwYWNlKHJpbmcpID49IFBBR0VfU0laRSkK
LQkJcmV0dXJuIE5VTEw7Ci0KLQkvKgotCSAqIEZpbmQgYSByZXF1ZXN0IHRoYXQgYWZ0ZXIgd2Fp
dGluZyB1cG9uLCB0aGVyZSB3aWxsIGJlIGF0IGxlYXN0IGhhbGYKLQkgKiB0aGUgcmluZyBhdmFp
bGFibGUuIFRoZSBoeXN0ZXJlc2lzIGFsbG93cyB1cyB0byBjb21wZXRlIGZvciB0aGUKLQkgKiBz
aGFyZWQgcmluZyBhbmQgc2hvdWxkIG1lYW4gdGhhdCB3ZSBzbGVlcCBsZXNzIG9mdGVuIHByaW9y
IHRvCi0JICogY2xhaW1pbmcgb3VyIHJlc291cmNlcywgYnV0IG5vdCBzbyBsb25nIHRoYXQgdGhl
IHJpbmcgY29tcGxldGVseQotCSAqIGRyYWlucyBiZWZvcmUgd2UgY2FuIHN1Ym1pdCBvdXIgbmV4
dCByZXF1ZXN0LgotCSAqLwotCWxpc3RfZm9yX2VhY2hfZW50cnkocnEsICZyaW5nLT5yZXF1ZXN0
X2xpc3QsIHJpbmdfbGluaykgewotCQlpZiAoX19pbnRlbF9yaW5nX3NwYWNlKHJxLT5wb3N0Zml4
LAotCQkJCSAgICAgICByaW5nLT5lbWl0LCByaW5nLT5zaXplKSA+IHJpbmctPnNpemUgLyAyKQot
CQkJYnJlYWs7Ci0JfQotCWlmICgmcnEtPnJpbmdfbGluayA9PSAmcmluZy0+cmVxdWVzdF9saXN0
KQotCQlyZXR1cm4gTlVMTDsgLyogd2VpcmQsIHdlIHdpbGwgY2hlY2sgYWdhaW4gbGF0ZXIgZm9y
IHJlYWwgKi8KLQotCXJldHVybiBpOTE1X3JlcXVlc3RfZ2V0KHJxKTsKLX0KLQotc3RhdGljIGlu
dCBlYl93YWl0X2Zvcl9yaW5nKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQotewot
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwotCWludCByZXQgPSAwOwotCi0JLyoKLQkgKiBBcHBs
eSBhIGxpZ2h0IGFtb3VudCBvZiBiYWNrcHJlc3N1cmUgdG8gcHJldmVudCBleGNlc3NpdmUgaG9n
cwotCSAqIGZyb20gYmxvY2tpbmcgd2FpdGluZyBmb3Igc3BhY2Ugd2hpbHN0IGhvbGRpbmcgc3Ry
dWN0X211dGV4IGFuZAotCSAqIGtlZXBpbmcgYWxsIG9mIHRoZWlyIHJlc291cmNlcyBwaW5uZWQu
Ci0JICovCi0KLQlycSA9IF9fZWJfd2FpdF9mb3JfcmluZyhlYi0+Y29udGV4dC0+cmluZyk7Ci0J
aWYgKHJxKSB7Ci0JCW11dGV4X3VubG9jaygmZWItPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwot
Ci0JCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwKLQkJCQkgICAgICBJOTE1X1dBSVRfSU5URVJS
VVBUSUJMRSwKLQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCkgPCAwKQotCQkJcmV0ID0g
LUVJTlRSOwotCi0JCWk5MTVfcmVxdWVzdF9wdXQocnEpOwotCi0JCW11dGV4X2xvY2soJmViLT5p
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKLQl9Ci0KLQlyZXR1cm4gcmV0OwotfQotCiBzdGF0aWMg
aW50IGViX2xvb2t1cF92bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogewogCXN0cnVj
dCByYWRpeF90cmVlX3Jvb3QgKmhhbmRsZXNfdm1hID0gJmViLT5nZW1fY29udGV4dC0+aGFuZGxl
c192bWE7CkBAIC0yMTIyLDEwICsyMDY1LDc1IEBAIHN0YXRpYyBjb25zdCBlbnVtIGludGVsX2Vu
Z2luZV9pZCB1c2VyX3JpbmdfbWFwW10gPSB7CiAJW0k5MTVfRVhFQ19WRUJPWF0JPSBWRUNTMAog
fTsKIAotc3RhdGljIGludCBlYl9waW5fY29udGV4dChzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICpl
Yiwgc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQorc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KmViX3Rocm90dGxlKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
cmluZyAqcmluZyA9IGNlLT5yaW5nOworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSByaW5n
LT50aW1lbGluZTsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKworCS8qCisJICogQ29tcGxl
dGVseSB1bnNjaWVudGlmaWMgZmluZ2VyLWluLXRoZS1haXIgZXN0aW1hdGVzIGZvciBzdWl0YWJs
ZQorCSAqIG1heGltdW0gdXNlciByZXF1ZXN0IHNpemUgKHRvIGF2b2lkIGJsb2NraW5nKSBhbmQg
dGhlbiBiYWNrb2ZmLgorCSAqLworCWlmIChpbnRlbF9yaW5nX3VwZGF0ZV9zcGFjZShyaW5nKSA+
PSBQQUdFX1NJWkUpCisJCXJldHVybiBOVUxMOworCisJLyoKKwkgKiBGaW5kIGEgcmVxdWVzdCB0
aGF0IGFmdGVyIHdhaXRpbmcgdXBvbiwgdGhlcmUgd2lsbCBiZSBhdCBsZWFzdCBoYWxmCisJICog
dGhlIHJpbmcgYXZhaWxhYmxlLiBUaGUgaHlzdGVyZXNpcyBhbGxvd3MgdXMgdG8gY29tcGV0ZSBm
b3IgdGhlCisJICogc2hhcmVkIHJpbmcgYW5kIHNob3VsZCBtZWFuIHRoYXQgd2Ugc2xlZXAgbGVz
cyBvZnRlbiBwcmlvciB0bworCSAqIGNsYWltaW5nIG91ciByZXNvdXJjZXMsIGJ1dCBub3Qgc28g
bG9uZyB0aGF0IHRoZSByaW5nIGNvbXBsZXRlbHkKKwkgKiBkcmFpbnMgYmVmb3JlIHdlIGNhbiBz
dWJtaXQgb3VyIG5leHQgcmVxdWVzdC4KKwkgKi8KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAm
dGwtPnJlcXVlc3RzLCBsaW5rKSB7CisJCWlmIChycS0+cmluZyAhPSByaW5nKQorCQkJY29udGlu
dWU7CisKKwkJaWYgKF9faW50ZWxfcmluZ19zcGFjZShycS0+cG9zdGZpeCwKKwkJCQkgICAgICAg
cmluZy0+ZW1pdCwgcmluZy0+c2l6ZSkgPiByaW5nLT5zaXplIC8gMikKKwkJCWJyZWFrOworCX0K
KwlpZiAoJnJxLT5saW5rID09ICZ0bC0+cmVxdWVzdHMpCisJCXJldHVybiBOVUxMOyAvKiB3ZWly
ZCwgd2Ugd2lsbCBjaGVjayBhZ2FpbiBsYXRlciBmb3IgcmVhbCAqLworCisJcmV0dXJuIGk5MTVf
cmVxdWVzdF9nZXQocnEpOworfQorCitzdGF0aWMgaW50CitfX2ViX3Bpbl9jb250ZXh0KHN0cnVj
dCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CiAJaW50
IGVycjsKIAorCWlmIChsaWtlbHkoYXRvbWljX2luY19ub3RfemVybygmY2UtPnBpbl9jb3VudCkp
KQorCQlyZXR1cm4gMDsKKworCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZWItPmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwllcnIg
PSBfX2ludGVsX2NvbnRleHRfZG9fcGluKGNlKTsKKwltdXRleF91bmxvY2soJmViLT5pOTE1LT5k
cm0uc3RydWN0X211dGV4KTsKKworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyB2b2lkCitfX2Vi
X3VucGluX2NvbnRleHQoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsIHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSkKK3sKKwlpZiAobGlrZWx5KGF0b21pY19hZGRfdW5sZXNzKCZjZS0+cGluX2Nv
dW50LCAtMSwgMSkpKQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZlYi0+aTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CisJaW50ZWxfY29udGV4dF91bnBpbihjZSk7CisJbXV0ZXhfdW5sb2NrKCZl
Yi0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cit9CisKK3N0YXRpYyBpbnQgX19lYl9waW5fZW5n
aW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Up
Cit7CisJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cTsKKwlpbnQgZXJyOworCiAJLyoKIAkgKiBBQkk6IEJlZm9yZSB1c2Vyc3BhY2UgYWNjZXNzZXMg
dGhlIEdQVSAoZS5nLiBleGVjYnVmZmVyKSwgcmVwb3J0CiAJICogRUlPIGlmIHRoZSBHUFUgaXMg
YWxyZWFkeSB3ZWRnZWQuCkBAIC0yMTM5LDcgKzIxNDcsNyBAQCBzdGF0aWMgaW50IGViX3Bpbl9j
b250ZXh0KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCiAJICogR0dUVCBzcGFjZSwgc28gZG8gdGhpcyBmaXJzdCBiZWZvcmUgd2UgcmVzZXJ2ZSBh
IHNlcW5vIGZvcgogCSAqIG91cnNlbHZlcy4KIAkgKi8KLQllcnIgPSBpbnRlbF9jb250ZXh0X3Bp
bihjZSk7CisJZXJyID0gX19lYl9waW5fY29udGV4dChlYiwgY2UpOwogCWlmIChlcnIpCiAJCXJl
dHVybiBlcnI7CiAKQEAgLTIxNTAsMjkgKzIxNTgsNTIgQEAgc3RhdGljIGludCBlYl9waW5fY29u
dGV4dChzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgc3RydWN0IGludGVsX2NvbnRleHQgKmNl
KQogCSAqIHdha2VyZWYgdGhhdCB3ZSBob2xkIHVudGlsIHRoZSBHUFUgaGFzIGJlZW4gaWRsZSBm
b3IgYXQgbGVhc3QKIAkgKiAxMDBtcy4KIAkgKi8KLQllcnIgPSBpbnRlbF9jb250ZXh0X3RpbWVs
aW5lX2xvY2soY2UpOwotCWlmIChlcnIpCisJdGwgPSBpbnRlbF9jb250ZXh0X3RpbWVsaW5lX2xv
Y2soY2UpOworCWlmIChJU19FUlIodGwpKSB7CisJCWVyciA9IFBUUl9FUlIodGwpOwogCQlnb3Rv
IGVycl91bnBpbjsKKwl9CiAKIAlpbnRlbF9jb250ZXh0X2VudGVyKGNlKTsKLQlpbnRlbF9jb250
ZXh0X3RpbWVsaW5lX3VubG9jayhjZSk7CisJcnEgPSBlYl90aHJvdHRsZShjZSk7CisKKwlpbnRl
bF9jb250ZXh0X3RpbWVsaW5lX3VubG9jayh0bCk7CisKKwlpZiAocnEpIHsKKwkJaWYgKGk5MTVf
cmVxdWVzdF93YWl0KHJxLAorCQkJCSAgICAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFLAorCQkJ
CSAgICAgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSA8IDApIHsKKwkJCWk5MTVfcmVxdWVzdF9wdXQo
cnEpOworCQkJZXJyID0gLUVJTlRSOworCQkJZ290byBlcnJfZXhpdDsKKwkJfQorCisJCWk5MTVf
cmVxdWVzdF9wdXQocnEpOworCX0KIAogCWViLT5lbmdpbmUgPSBjZS0+ZW5naW5lOwogCWViLT5j
b250ZXh0ID0gY2U7CiAJcmV0dXJuIDA7CiAKK2Vycl9leGl0OgorCW11dGV4X2xvY2soJnRsLT5t
dXRleCk7CisJaW50ZWxfY29udGV4dF9leGl0KGNlKTsKKwlpbnRlbF9jb250ZXh0X3RpbWVsaW5l
X3VubG9jayh0bCk7CiBlcnJfdW5waW46Ci0JaW50ZWxfY29udGV4dF91bnBpbihjZSk7CisJX19l
Yl91bnBpbl9jb250ZXh0KGViLCBjZSk7CiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGljIHZvaWQg
ZWJfdW5waW5fY29udGV4dChzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3N0YXRpYyB2b2lk
IGViX3VucGluX2VuZ2luZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIHsKLQlfX2ludGVs
X2NvbnRleHRfdGltZWxpbmVfbG9jayhlYi0+Y29udGV4dCk7Ci0JaW50ZWxfY29udGV4dF9leGl0
KGViLT5jb250ZXh0KTsKLQlpbnRlbF9jb250ZXh0X3RpbWVsaW5lX3VubG9jayhlYi0+Y29udGV4
dCk7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gZWItPmNvbnRleHQ7CisJc3RydWN0IGlu
dGVsX3RpbWVsaW5lICp0bCA9IGNlLT5yaW5nLT50aW1lbGluZTsKKworCW11dGV4X2xvY2soJnRs
LT5tdXRleCk7CisJaW50ZWxfY29udGV4dF9leGl0KGNlKTsKKwlpbnRlbF9jb250ZXh0X3RpbWVs
aW5lX3VubG9jayh0bCk7CiAKLQlpbnRlbF9jb250ZXh0X3VucGluKGViLT5jb250ZXh0KTsKKwlf
X2ViX3VucGluX2NvbnRleHQoZWIsIGNlKTsKIH0KIAogc3RhdGljIHVuc2lnbmVkIGludApAQCAt
MjIxNyw5ICsyMjQ4LDkgQEAgZWJfc2VsZWN0X2xlZ2FjeV9yaW5nKHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViLAogfQogCiBzdGF0aWMgaW50Ci1lYl9zZWxlY3RfZW5naW5lKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViLAotCQkgc3RydWN0IGRybV9maWxlICpmaWxlLAotCQkgc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncykKK2ViX3Bpbl9lbmdpbmUoc3RydWN0IGk5MTVf
ZXhlY2J1ZmZlciAqZWIsCisJICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlLAorCSAgICAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MpCiB7CiAJc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlOwogCXVuc2lnbmVkIGludCBpZHg7CkBAIC0yMjM0LDcgKzIyNjUsNyBAQCBlYl9z
ZWxlY3RfZW5naW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCWlmIChJU19FUlIoY2Up
KQogCQlyZXR1cm4gUFRSX0VSUihjZSk7CiAKLQllcnIgPSBlYl9waW5fY29udGV4dChlYiwgY2Up
OworCWVyciA9IF9fZWJfcGluX2VuZ2luZShlYiwgY2UpOwogCWludGVsX2NvbnRleHRfcHV0KGNl
KTsKIAogCXJldHVybiBlcnI7CkBAIC0yNDUyLDE2ICsyNDgzLDEyIEBAIGk5MTVfZ2VtX2RvX2V4
ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAodW5saWtlbHkoZXJyKSkKIAkJ
Z290byBlcnJfZGVzdHJveTsKIAotCWVyciA9IGk5MTVfbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxl
KGRldik7Ci0JaWYgKGVycikKLQkJZ290byBlcnJfY29udGV4dDsKLQotCWVyciA9IGViX3NlbGVj
dF9lbmdpbmUoJmViLCBmaWxlLCBhcmdzKTsKKwllcnIgPSBlYl9waW5fZW5naW5lKCZlYiwgZmls
ZSwgYXJncyk7CiAJaWYgKHVubGlrZWx5KGVycikpCi0JCWdvdG8gZXJyX3VubG9jazsKKwkJZ290
byBlcnJfY29udGV4dDsKIAotCWVyciA9IGViX3dhaXRfZm9yX3JpbmcoJmViKTsgLyogbWF5IHRl
bXBvcmFyaWx5IGRyb3Agc3RydWN0X211dGV4ICovCi0JaWYgKHVubGlrZWx5KGVycikpCisJZXJy
ID0gaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoZGV2KTsKKwlpZiAoZXJyKQogCQlnb3Rv
IGVycl9lbmdpbmU7CiAKIAllcnIgPSBlYl9yZWxvY2F0ZSgmZWIpOwpAQCAtMjYxNSwxMCArMjY0
Miw5IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIGVy
cl92bWE6CiAJaWYgKGViLmV4ZWMpCiAJCWViX3JlbGVhc2Vfdm1hcygmZWIpOwotZXJyX2VuZ2lu
ZToKLQllYl91bnBpbl9jb250ZXh0KCZlYik7Ci1lcnJfdW5sb2NrOgogCW11dGV4X3VubG9jaygm
ZGV2LT5zdHJ1Y3RfbXV0ZXgpOworZXJyX2VuZ2luZToKKwllYl91bnBpbl9lbmdpbmUoJmViKTsK
IGVycl9jb250ZXh0OgogCWk5MTVfZ2VtX2NvbnRleHRfcHV0KGViLmdlbV9jb250ZXh0KTsKIGVy
cl9kZXN0cm95OgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5oCmluZGV4IDA2
NWJhNGFjNGU4Ny4uMzhiNjBjYmYyNTkyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dC5oCkBAIC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSAiaTkxNV9hY3RpdmUuaCIKICNp
bmNsdWRlICJpbnRlbF9jb250ZXh0X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3R5
cGVzLmgiCisjaW5jbHVkZSAiaW50ZWxfdGltZWxpbmVfdHlwZXMuaCIKIAogdm9pZCBpbnRlbF9j
b250ZXh0X2luaXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQkJc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCwKQEAgLTEyNiwyNCArMTI3LDI0IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBp
bnRlbF9jb250ZXh0X3B1dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJa3JlZl9wdXQoJmNl
LT5yZWYsIGNlLT5vcHMtPmRlc3Ryb3kpOwogfQogCi1zdGF0aWMgaW5saW5lIHZvaWQKLV9faW50
ZWxfY29udGV4dF90aW1lbGluZV9sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKLQlfX2Fj
cXVpcmVzKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KQotewotCW11dGV4X2xvY2soJmNlLT5y
aW5nLT50aW1lbGluZS0+bXV0ZXgpOwotfQotCi1zdGF0aWMgaW5saW5lIGludCBfX211c3RfY2hl
Y2sKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX3RpbWVsaW5lICpfX211c3RfY2hlY2sKIGlu
dGVsX2NvbnRleHRfdGltZWxpbmVfbG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJX19h
Y3F1aXJlcygmY2UtPnJpbmctPnRpbWVsaW5lLT5tdXRleCkKIHsKLQlyZXR1cm4gbXV0ZXhfbG9j
a19pbnRlcnJ1cHRpYmxlKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KTsKKwlzdHJ1Y3QgaW50
ZWxfdGltZWxpbmUgKnRsID0gY2UtPnJpbmctPnRpbWVsaW5lOworCWludCBlcnI7CisKKwllcnIg
PSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnRsLT5tdXRleCk7CisJaWYgKGVycikKKwkJcmV0
dXJuIEVSUl9QVFIoZXJyKTsKKworCXJldHVybiB0bDsKIH0KIAotc3RhdGljIGlubGluZSB2b2lk
IGludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
LQlfX3JlbGVhc2VzKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KQorc3RhdGljIGlubGluZSB2
b2lkIGludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHN0cnVjdCBpbnRlbF90aW1lbGluZSAq
dGwpCisJX19yZWxlYXNlcygmdGwtPm11dGV4KQogewotCW11dGV4X3VubG9jaygmY2UtPnJpbmct
PnRpbWVsaW5lLT5tdXRleCk7CisJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgpOwogfQogCiBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICppbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
CmluZGV4IGQxNTA4ZjBiNGM4NC4uYjI3ZmM1NTVmZTA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtNzQ1LDcgKzc0NSw2IEBAIHN0YXRpYyBpbnQgbWVh
c3VyZV9icmVhZGNydW1iX2R3KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCQll
bmdpbmUtPnN0YXR1c19wYWdlLnZtYSkpCiAJCWdvdG8gb3V0X2ZyYW1lOwogCi0JSU5JVF9MSVNU
X0hFQUQoJmZyYW1lLT5yaW5nLnJlcXVlc3RfbGlzdCk7CiAJZnJhbWUtPnJpbmcudGltZWxpbmUg
PSAmZnJhbWUtPnRpbWVsaW5lOwogCWZyYW1lLT5yaW5nLnZhZGRyID0gZnJhbWUtPmNzOwogCWZy
YW1lLT5yaW5nLnNpemUgPSBzaXplb2YoZnJhbWUtPmNzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggN2UwNTYxMTQzNDRlLi4wZGRlN2UwNGIx
MDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCkBA
IC02OSw4ICs2OSw2IEBAIHN0cnVjdCBpbnRlbF9yaW5nIHsKIAl2b2lkICp2YWRkcjsKIAogCXN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxpbmU7Ci0Jc3RydWN0IGxpc3RfaGVhZCByZXF1ZXN0
X2xpc3Q7Ci0Jc3RydWN0IGxpc3RfaGVhZCBhY3RpdmVfbGluazsKIAogCS8qCiAJICogQXMgd2Ug
aGF2ZSB0d28gdHlwZXMgb2YgcmluZ3MsIG9uZSBnbG9iYWwgdG8gdGhlIGVuZ2luZSB1c2VkCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwppbmRleCA4Y2NhNmIyMmIzODYuLjQ2ZDI0ZDlkNjJh
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCkBAIC0xNCw3ICsxNCw2IEBAIHZvaWQg
aW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlndC0+aTkxNSA9IGk5MTU7CiAJZ3QtPnVuY29yZSA9ICZpOTE1LT51
bmNvcmU7CiAKLQlJTklUX0xJU1RfSEVBRCgmZ3QtPmFjdGl2ZV9yaW5ncyk7CiAJSU5JVF9MSVNU
X0hFQUQoJmd0LT5jbG9zZWRfdm1hKTsKIAogCXNwaW5fbG9ja19pbml0KCZndC0+Y2xvc2VkX2xv
Y2spOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKaW5kZXggY2ZkNDFl
NmM1NGUxLi5mNDNlYTgzMGIxZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rf
dHlwZXMuaApAQCAtMzQsOCArMzQsNiBAQCBzdHJ1Y3QgaW50ZWxfZ3QgewogCQlzdHJ1Y3QgbGlz
dF9oZWFkIGh3c3BfZnJlZV9saXN0OwogCX0gdGltZWxpbmVzOwogCi0Jc3RydWN0IGxpc3RfaGVh
ZCBhY3RpdmVfcmluZ3M7Ci0KIAlzdHJ1Y3QgaW50ZWxfd2FrZXJlZiB3YWtlcmVmOwogCiAJc3Ry
dWN0IGxpc3RfaGVhZCBjbG9zZWRfdm1hOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpp
bmRleCAxOGI5NGZjOTUyZDguLjI5NjVjNTBmMjljMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKQEAgLTE1MTMsNiArMTUxMyw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250
ZXh0X3VucGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAkJICBjZS0+ZW5naW5lLT5uYW1l
LCBjZS0+cmluZy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQpOwogCWk5MTVfZ2VtX2NvbnRleHRf
dW5waW5faHdfaWQoY2UtPmdlbV9jb250ZXh0KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFw
KGNlLT5zdGF0ZS0+b2JqKTsKKwlpbnRlbF9yaW5nX3Jlc2V0KGNlLT5yaW5nLCBjZS0+cmluZy0+
dGFpbCk7CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nYnVmZmVyLmMKaW5kZXggODFmOWIwNDIyZTZhLi5iNzcxMTcwZWI1NmEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQEAgLTEyMjcsNyArMTIyNyw3IEBA
IHZvaWQgaW50ZWxfcmluZ191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKIAlHRU1fVFJB
Q0UoInJpbmc6JWxseCB1bnBpblxuIiwgcmluZy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQpOwog
CiAJLyogRGlzY2FyZCBhbnkgdW51c2VkIGJ5dGVzIGJleW9uZCB0aGF0IHN1Ym1pdHRlZCB0byBo
dy4gKi8KLQlpbnRlbF9yaW5nX3Jlc2V0KHJpbmcsIHJpbmctPnRhaWwpOworCWludGVsX3Jpbmdf
cmVzZXQocmluZywgcmluZy0+ZW1pdCk7CiAKIAlHRU1fQlVHX09OKCFyaW5nLT52bWEpOwogCWk5
MTVfdm1hX3Vuc2V0X2dndHRfd3JpdGUocmluZy0+dm1hKTsKQEAgLTEyOTMsNyArMTI5Myw2IEBA
IGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
CiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJa3JlZl9pbml0KCZyaW5nLT5yZWYpOwot
CUlOSVRfTElTVF9IRUFEKCZyaW5nLT5yZXF1ZXN0X2xpc3QpOwogCXJpbmctPnRpbWVsaW5lID0g
aW50ZWxfdGltZWxpbmVfZ2V0KHRpbWVsaW5lKTsKIAogCXJpbmctPnNpemUgPSBzaXplOwpAQCAt
MTgxNywyMSArMTgxNiwyNSBAQCBzdGF0aWMgaW50IHJpbmdfcmVxdWVzdF9hbGxvYyhzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogCiBzdGF0aWMgbm9pbmxpbmUgaW50IHdhaXRfZm9yX3Nw
YWNlKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB1bnNpZ25lZCBpbnQgYnl0ZXMpCiB7CisJc3Ry
dWN0IGludGVsX3RpbWVsaW5lICp0bCA9IHJpbmctPnRpbWVsaW5lOwogCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnRhcmdldDsKIAlsb25nIHRpbWVvdXQ7CiAKIAlpZiAoaW50ZWxfcmluZ191cGRhdGVf
c3BhY2UocmluZykgPj0gYnl0ZXMpCiAJCXJldHVybiAwOwogCi0JR0VNX0JVR19PTihsaXN0X2Vt
cHR5KCZyaW5nLT5yZXF1ZXN0X2xpc3QpKTsKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KHRhcmdldCwg
JnJpbmctPnJlcXVlc3RfbGlzdCwgcmluZ19saW5rKSB7CisJR0VNX0JVR19PTihsaXN0X2VtcHR5
KCZ0bC0+cmVxdWVzdHMpKTsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHRhcmdldCwgJnRsLT5yZXF1
ZXN0cywgbGluaykgeworCQlpZiAodGFyZ2V0LT5yaW5nICE9IHJpbmcpCisJCQljb250aW51ZTsK
KwogCQkvKiBXb3VsZCBjb21wbGV0aW9uIG9mIHRoaXMgcmVxdWVzdCBmcmVlIGVub3VnaCBzcGFj
ZT8gKi8KIAkJaWYgKGJ5dGVzIDw9IF9faW50ZWxfcmluZ19zcGFjZSh0YXJnZXQtPnBvc3RmaXgs
CiAJCQkJCQlyaW5nLT5lbWl0LCByaW5nLT5zaXplKSkKIAkJCWJyZWFrOwogCX0KIAotCWlmIChX
QVJOX09OKCZ0YXJnZXQtPnJpbmdfbGluayA9PSAmcmluZy0+cmVxdWVzdF9saXN0KSkKKwlpZiAo
R0VNX1dBUk5fT04oJnRhcmdldC0+bGluayA9PSAmdGwtPnJlcXVlc3RzKSkKIAkJcmV0dXJuIC1F
Tk9TUEM7CiAKIAl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQodGFyZ2V0LApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L21vY2tfZW5naW5lLmMKaW5kZXggYTQ4YjM2ZDMxZTY1Li41YmNiNDYxYjgzNzIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwpAQCAtNjgsNyArNjgsNiBAQCBz
dGF0aWMgc3RydWN0IGludGVsX3JpbmcgKm1vY2tfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiAJcmluZy0+YmFzZS50aW1lbGluZSA9ICZyaW5nLT50aW1lbGluZTsKIAlhdG9t
aWNfc2V0KCZyaW5nLT5iYXNlLnBpbl9jb3VudCwgMSk7CiAKLQlJTklUX0xJU1RfSEVBRCgmcmlu
Zy0+YmFzZS5yZXF1ZXN0X2xpc3QpOwogCWludGVsX3JpbmdfdXBkYXRlX3NwYWNlKCZyaW5nLT5i
YXNlKTsKIAogCXJldHVybiAmcmluZy0+YmFzZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMKaW5kZXggNWIxYzYzOGQzNzU0Li4zZjMzYTcyMDg1ZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jCkBAIC0xODAsNDAgKzE4MCw2IEBAIGk5MTVfcmVxdWVzdF9yZW1vdmVfZnJv
bV9jbGllbnQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKIAlzcGluX3VubG9jaygmZmls
ZV9wcml2LT5tbS5sb2NrKTsKIH0KIAotc3RhdGljIHZvaWQgYWR2YW5jZV9yaW5nKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCi17Ci0Jc3RydWN0IGludGVsX3JpbmcgKnJpbmcgPSByZXF1
ZXN0LT5yaW5nOwotCXVuc2lnbmVkIGludCB0YWlsOwotCi0JLyoKLQkgKiBXZSBrbm93IHRoZSBH
UFUgbXVzdCBoYXZlIHJlYWQgdGhlIHJlcXVlc3QgdG8gaGF2ZQotCSAqIHNlbnQgdXMgdGhlIHNl
cW5vICsgaW50ZXJydXB0LCBzbyB1c2UgdGhlIHBvc2l0aW9uCi0JICogb2YgdGFpbCBvZiB0aGUg
cmVxdWVzdCB0byB1cGRhdGUgdGhlIGxhc3Qga25vd24gcG9zaXRpb24KLQkgKiBvZiB0aGUgR1BV
IGhlYWQuCi0JICoKLQkgKiBOb3RlIHRoaXMgcmVxdWlyZXMgdGhhdCB3ZSBhcmUgYWx3YXlzIGNh
bGxlZCBpbiByZXF1ZXN0Ci0JICogY29tcGxldGlvbiBvcmRlci4KLQkgKi8KLQlHRU1fQlVHX09O
KCFsaXN0X2lzX2ZpcnN0KCZyZXF1ZXN0LT5yaW5nX2xpbmssICZyaW5nLT5yZXF1ZXN0X2xpc3Qp
KTsKLQlpZiAobGlzdF9pc19sYXN0KCZyZXF1ZXN0LT5yaW5nX2xpbmssICZyaW5nLT5yZXF1ZXN0
X2xpc3QpKSB7Ci0JCS8qCi0JCSAqIFdlIG1heSByYWNlIGhlcmUgd2l0aCBleGVjbGlzdHMgcmVz
dWJtaXR0aW5nIHRoaXMgcmVxdWVzdAotCQkgKiBhcyB3ZSByZXRpcmUgaXQuIFRoZSByZXN1Ym1p
c3Npb24gd2lsbCBtb3ZlIHRoZSByaW5nLT50YWlsCi0JCSAqIGZvcndhcmRzICh0byByZXF1ZXN0
LT53YV90YWlsKS4gV2UgZWl0aGVyIHJlYWQgdGhlCi0JCSAqIGN1cnJlbnQgdmFsdWUgdGhhdCB3
YXMgd3JpdHRlbiB0byBodywgb3IgdGhlIHZhbHVlIHRoYXQKLQkJICogaXMganVzdCBhYm91dCB0
byBiZS4gRWl0aGVyIHdvcmtzLCBpZiB3ZSBtaXNzIHRoZSBsYXN0IHR3bwotCQkgKiBub29wcyAt
IHRoZXkgYXJlIHNhZmUgdG8gYmUgcmVwbGF5ZWQgb24gYSByZXNldC4KLQkJICovCi0JCXRhaWwg
PSBSRUFEX09OQ0UocmVxdWVzdC0+dGFpbCk7Ci0JCWxpc3RfZGVsKCZyaW5nLT5hY3RpdmVfbGlu
ayk7Ci0JfSBlbHNlIHsKLQkJdGFpbCA9IHJlcXVlc3QtPnBvc3RmaXg7Ci0JfQotCWxpc3RfZGVs
X2luaXQoJnJlcXVlc3QtPnJpbmdfbGluayk7Ci0KLQlyaW5nLT5oZWFkID0gdGFpbDsKLX0KLQog
c3RhdGljIHZvaWQgZnJlZV9jYXB0dXJlX2xpc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVz
dCkKIHsKIAlzdHJ1Y3QgaTkxNV9jYXB0dXJlX2xpc3QgKmNhcHR1cmU7CkBAIC0yMzEsNyArMTk3
LDcgQEAgc3RhdGljIGJvb2wgaTkxNV9yZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKIHsKIAlzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAqYWN0aXZlLCAqbmV4dDsKIAot
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJxLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwlsb2Nr
ZGVwX2Fzc2VydF9oZWxkKCZycS0+dGltZWxpbmUtPm11dGV4KTsKIAlpZiAoIWk5MTVfcmVxdWVz
dF9jb21wbGV0ZWQocnEpKQogCQlyZXR1cm4gZmFsc2U7CiAKQEAgLTI0Myw3ICsyMDksMTcgQEAg
c3RhdGljIGJvb2wgaTkxNV9yZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAlHRU1fQlVHX09OKCFpOTE1X3N3X2ZlbmNlX3NpZ25hbGVkKCZycS0+c3VibWl0KSk7CiAJdHJh
Y2VfaTkxNV9yZXF1ZXN0X3JldGlyZShycSk7CiAKLQlhZHZhbmNlX3JpbmcocnEpOworCS8qCisJ
ICogV2Uga25vdyB0aGUgR1BVIG11c3QgaGF2ZSByZWFkIHRoZSByZXF1ZXN0IHRvIGhhdmUKKwkg
KiBzZW50IHVzIHRoZSBzZXFubyArIGludGVycnVwdCwgc28gdXNlIHRoZSBwb3NpdGlvbgorCSAq
IG9mIHRhaWwgb2YgdGhlIHJlcXVlc3QgdG8gdXBkYXRlIHRoZSBsYXN0IGtub3duIHBvc2l0aW9u
CisJICogb2YgdGhlIEdQVSBoZWFkLgorCSAqCisJICogTm90ZSB0aGlzIHJlcXVpcmVzIHRoYXQg
d2UgYXJlIGFsd2F5cyBjYWxsZWQgaW4gcmVxdWVzdAorCSAqIGNvbXBsZXRpb24gb3JkZXIuCisJ
ICovCisJR0VNX0JVR19PTighbGlzdF9pc19maXJzdCgmcnEtPmxpbmssICZycS0+dGltZWxpbmUt
PnJlcXVlc3RzKSk7CisJcnEtPnJpbmctPmhlYWQgPSBycS0+cG9zdGZpeDsKIAogCS8qCiAJICog
V2FsayB0aHJvdWdoIHRoZSBhY3RpdmUgbGlzdCwgY2FsbGluZyByZXRpcmUgb24gZWFjaC4gVGhp
cyBhbGxvd3MKQEAgLTMyMCw3ICsyOTYsNyBAQCBzdGF0aWMgYm9vbCBpOTE1X3JlcXVlc3RfcmV0
aXJlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCiB2b2lkIGk5MTVfcmVxdWVzdF9yZXRpcmVf
dXB0byhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKLQlzdHJ1Y3QgaW50ZWxfcmluZyAqcmlu
ZyA9IHJxLT5yaW5nOworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqIGNvbnN0IHRsID0gcnEtPnRp
bWVsaW5lOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnRtcDsKIAogCUdFTV9UUkFDRSgiJXMgZmVu
Y2UgJWxseDolbGxkLCBjdXJyZW50ICVkXG4iLApAQCAtMzI4LDE1ICszMDQsMTEgQEAgdm9pZCBp
OTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCSAgcnEt
PmZlbmNlLmNvbnRleHQsIHJxLT5mZW5jZS5zZXFubywKIAkJICBod3NwX3NlcW5vKHJxKSk7CiAK
LQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZycS0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJbG9j
a2RlcF9hc3NlcnRfaGVsZCgmdGwtPm11dGV4KTsKIAlhc3NlcnRfcmVxdWVzdF9jb21wbGV0ZShy
cSk7CiAKLQlpZiAobGlzdF9lbXB0eSgmcnEtPnJpbmdfbGluaykpCi0JCXJldHVybjsKLQogCWRv
IHsKLQkJdG1wID0gbGlzdF9maXJzdF9lbnRyeSgmcmluZy0+cmVxdWVzdF9saXN0LAotCQkJCSAg
ICAgICB0eXBlb2YoKnRtcCksIHJpbmdfbGluayk7CisJCXRtcCA9IGxpc3RfZmlyc3RfZW50cnko
JnRsLT5yZXF1ZXN0cywgdHlwZW9mKCp0bXApLCBsaW5rKTsKIAl9IHdoaWxlIChpOTE1X3JlcXVl
c3RfcmV0aXJlKHRtcCkgJiYgdG1wICE9IHJxKTsKIH0KIApAQCAtNTYzLDI5ICs1MzUsMjggQEAg
c2VtYXBob3JlX25vdGlmeShzdHJ1Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsIGVudW0gaTkxNV9z
d19mZW5jZV9ub3RpZnkgc3RhdGUpCiAJcmV0dXJuIE5PVElGWV9ET05FOwogfQogCi1zdGF0aWMg
dm9pZCByaW5nX3JldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKK3N0YXRp
YyB2b2lkIHJldGlyZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewogCXN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm47CiAKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
cnEsIHJuLCAmcmluZy0+cmVxdWVzdF9saXN0LCByaW5nX2xpbmspCisJbGlzdF9mb3JfZWFjaF9l
bnRyeV9zYWZlKHJxLCBybiwgJnRsLT5yZXF1ZXN0cywgbGluaykKIAkJaWYgKCFpOTE1X3JlcXVl
c3RfcmV0aXJlKHJxKSkKIAkJCWJyZWFrOwogfQogCiBzdGF0aWMgbm9pbmxpbmUgc3RydWN0IGk5
MTVfcmVxdWVzdCAqCi1yZXF1ZXN0X2FsbG9jX3Nsb3coc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LCBnZnBfdCBnZnApCityZXF1ZXN0X2FsbG9jX3Nsb3coc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bCwgZ2ZwX3QgZ2ZwKQogewotCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nID0gY2UtPnJpbmc7CiAJ
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAKLQlpZiAobGlzdF9lbXB0eSgmcmluZy0+cmVxdWVz
dF9saXN0KSkKKwlpZiAobGlzdF9lbXB0eSgmdGwtPnJlcXVlc3RzKSkKIAkJZ290byBvdXQ7CiAK
IAlpZiAoIWdmcGZsYWdzX2FsbG93X2Jsb2NraW5nKGdmcCkpCiAJCWdvdG8gb3V0OwogCiAJLyog
TW92ZSBvdXIgb2xkZXN0IHJlcXVlc3QgdG8gdGhlIHNsYWItY2FjaGUgKGlmIG5vdCBpbiB1c2Uh
KSAqLwotCXJxID0gbGlzdF9maXJzdF9lbnRyeSgmcmluZy0+cmVxdWVzdF9saXN0LCB0eXBlb2Yo
KnJxKSwgcmluZ19saW5rKTsKKwlycSA9IGxpc3RfZmlyc3RfZW50cnkoJnRsLT5yZXF1ZXN0cywg
dHlwZW9mKCpycSksIGxpbmspOwogCWk5MTVfcmVxdWVzdF9yZXRpcmUocnEpOwogCiAJcnEgPSBr
bWVtX2NhY2hlX2FsbG9jKGdsb2JhbC5zbGFiX3JlcXVlc3RzLApAQCAtNTk0LDExICs1NjUsMTEg
QEAgcmVxdWVzdF9hbGxvY19zbG93KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgZ2ZwX3QgZ2Zw
KQogCQlyZXR1cm4gcnE7CiAKIAkvKiBSYXRlbGltaXQgb3Vyc2VsdmVzIHRvIHByZXZlbnQgb29t
IGZyb20gbWFsaWNpb3VzIGNsaWVudHMgKi8KLQlycSA9IGxpc3RfbGFzdF9lbnRyeSgmcmluZy0+
cmVxdWVzdF9saXN0LCB0eXBlb2YoKnJxKSwgcmluZ19saW5rKTsKKwlycSA9IGxpc3RfbGFzdF9l
bnRyeSgmdGwtPnJlcXVlc3RzLCB0eXBlb2YoKnJxKSwgbGluayk7CiAJY29uZF9zeW5jaHJvbml6
ZV9yY3UocnEtPnJjdXN0YXRlKTsKIAogCS8qIFJldGlyZSBvdXIgb2xkIHJlcXVlc3RzIGluIHRo
ZSBob3BlIHRoYXQgd2UgZnJlZSBzb21lICovCi0JcmluZ19yZXRpcmVfcmVxdWVzdHMocmluZyk7
CisJcmV0aXJlX3JlcXVlc3RzKHRsKTsKIAogb3V0OgogCXJldHVybiBrbWVtX2NhY2hlX2FsbG9j
KGdsb2JhbC5zbGFiX3JlcXVlc3RzLCBnZnApOwpAQCAtNjQ5LDcgKzYyMCw3IEBAIF9faTkxNV9y
ZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGdmcF90IGdmcCkKIAlycSA9
IGttZW1fY2FjaGVfYWxsb2MoZ2xvYmFsLnNsYWJfcmVxdWVzdHMsCiAJCQkgICAgICBnZnAgfCBf
X0dGUF9SRVRSWV9NQVlGQUlMIHwgX19HRlBfTk9XQVJOKTsKIAlpZiAodW5saWtlbHkoIXJxKSkg
ewotCQlycSA9IHJlcXVlc3RfYWxsb2Nfc2xvdyhjZSwgZ2ZwKTsKKwkJcnEgPSByZXF1ZXN0X2Fs
bG9jX3Nsb3codGwsIGdmcCk7CiAJCWlmICghcnEpIHsKIAkJCXJldCA9IC1FTk9NRU07CiAJCQln
b3RvIGVycl91bnJlc2VydmU7CkBAIC03NDEsMTUgKzcxMiwxNSBAQCBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICoKIGk5MTVfcmVxdWVzdF9jcmVhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogewog
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwotCWludCBlcnI7CisJc3RydWN0IGludGVsX3RpbWVs
aW5lICp0bDsKIAotCWVyciA9IGludGVsX2NvbnRleHRfdGltZWxpbmVfbG9jayhjZSk7Ci0JaWYg
KGVycikKLQkJcmV0dXJuIEVSUl9QVFIoZXJyKTsKKwl0bCA9IGludGVsX2NvbnRleHRfdGltZWxp
bmVfbG9jayhjZSk7CisJaWYgKElTX0VSUih0bCkpCisJCXJldHVybiBFUlJfQ0FTVCh0bCk7CiAK
IAkvKiBNb3ZlIG91ciBvbGRlc3QgcmVxdWVzdCB0byB0aGUgc2xhYi1jYWNoZSAoaWYgbm90IGlu
IHVzZSEpICovCi0JcnEgPSBsaXN0X2ZpcnN0X2VudHJ5KCZjZS0+cmluZy0+cmVxdWVzdF9saXN0
LCB0eXBlb2YoKnJxKSwgcmluZ19saW5rKTsKLQlpZiAoIWxpc3RfaXNfbGFzdCgmcnEtPnJpbmdf
bGluaywgJmNlLT5yaW5nLT5yZXF1ZXN0X2xpc3QpKQorCXJxID0gbGlzdF9maXJzdF9lbnRyeSgm
dGwtPnJlcXVlc3RzLCB0eXBlb2YoKnJxKSwgbGluayk7CisJaWYgKCFsaXN0X2lzX2xhc3QoJnJx
LT5saW5rLCAmdGwtPnJlcXVlc3RzKSkKIAkJaTkxNV9yZXF1ZXN0X3JldGlyZShycSk7CiAKIAlp
bnRlbF9jb250ZXh0X2VudGVyKGNlKTsKQEAgLTc1OSwyMiArNzMwLDIyIEBAIGk5MTVfcmVxdWVz
dF9jcmVhdGUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCQlnb3RvIGVycl91bmxvY2s7CiAK
IAkvKiBDaGVjayB0aGF0IHdlIGRvIG5vdCBpbnRlcnJ1cHQgb3Vyc2VsdmVzIHdpdGggYSBuZXcg
cmVxdWVzdCAqLwotCXJxLT5jb29raWUgPSBsb2NrZGVwX3Bpbl9sb2NrKCZjZS0+cmluZy0+dGlt
ZWxpbmUtPm11dGV4KTsKKwlycS0+Y29va2llID0gbG9ja2RlcF9waW5fbG9jaygmdGwtPm11dGV4
KTsKIAogCXJldHVybiBycTsKIAogZXJyX3VubG9jazoKLQlpbnRlbF9jb250ZXh0X3RpbWVsaW5l
X3VubG9jayhjZSk7CisJaW50ZWxfY29udGV4dF90aW1lbGluZV91bmxvY2sodGwpOwogCXJldHVy
biBycTsKIH0KIAogc3RhdGljIGludAogaTkxNV9yZXF1ZXN0X2F3YWl0X3N0YXJ0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpzaWduYWwpCiB7Ci0JaWYgKGxp
c3RfaXNfZmlyc3QoJnNpZ25hbC0+cmluZ19saW5rLCAmc2lnbmFsLT5yaW5nLT5yZXF1ZXN0X2xp
c3QpKQorCWlmIChsaXN0X2lzX2ZpcnN0KCZzaWduYWwtPmxpbmssICZzaWduYWwtPnJpbmctPnRp
bWVsaW5lLT5yZXF1ZXN0cykpCiAJCXJldHVybiAwOwogCi0Jc2lnbmFsID0gbGlzdF9wcmV2X2Vu
dHJ5KHNpZ25hbCwgcmluZ19saW5rKTsKKwlzaWduYWwgPSBsaXN0X3ByZXZfZW50cnkoc2lnbmFs
LCBsaW5rKTsKIAlpZiAoaW50ZWxfdGltZWxpbmVfc3luY19pc19sYXRlcihycS0+dGltZWxpbmUs
ICZzaWduYWwtPmZlbmNlKSkKIAkJcmV0dXJuIDA7CiAKQEAgLTExNjcsNiArMTEzOCw3IEBAIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKl9faTkxNV9yZXF1ZXN0X2NvbW1pdChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKIAkgKi8KIAlHRU1fQlVHX09OKHJxLT5yZXNlcnZlZF9zcGFjZSA+IHJpbmctPnNw
YWNlKTsKIAlycS0+cmVzZXJ2ZWRfc3BhY2UgPSAwOworCXJxLT5lbWl0dGVkX2ppZmZpZXMgPSBq
aWZmaWVzOwogCiAJLyoKIAkgKiBSZWNvcmQgdGhlIHBvc2l0aW9uIG9mIHRoZSBzdGFydCBvZiB0
aGUgYnJlYWRjcnVtYiBzbyB0aGF0CkBAIC0xMTgwLDExICsxMTUyLDYgQEAgc3RydWN0IGk5MTVf
cmVxdWVzdCAqX19pOTE1X3JlcXVlc3RfY29tbWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQog
CiAJcHJldiA9IF9faTkxNV9yZXF1ZXN0X2FkZF90b190aW1lbGluZShycSk7CiAKLQlsaXN0X2Fk
ZF90YWlsKCZycS0+cmluZ19saW5rLCAmcmluZy0+cmVxdWVzdF9saXN0KTsKLQlpZiAobGlzdF9p
c19maXJzdCgmcnEtPnJpbmdfbGluaywgJnJpbmctPnJlcXVlc3RfbGlzdCkpCi0JCWxpc3RfYWRk
KCZyaW5nLT5hY3RpdmVfbGluaywgJnJxLT5pOTE1LT5ndC5hY3RpdmVfcmluZ3MpOwotCXJxLT5l
bWl0dGVkX2ppZmZpZXMgPSBqaWZmaWVzOwotCiAJLyoKIAkgKiBMZXQgdGhlIGJhY2tlbmQga25v
dyBhIG5ldyByZXF1ZXN0IGhhcyBhcnJpdmVkIHRoYXQgbWF5IG5lZWQKIAkgKiB0byBhZGp1c3Qg
dGhlIGV4aXN0aW5nIGV4ZWN1dGlvbiBzY2hlZHVsZSBkdWUgdG8gYSBoaWdoIHByaW9yaXR5CkBA
IC0xMjM3LDEwICsxMjA0LDExIEBAIHN0cnVjdCBpOTE1X3JlcXVlc3QgKl9faTkxNV9yZXF1ZXN0
X2NvbW1pdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAogdm9pZCBpOTE1X3JlcXVlc3RfYWRk
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogeworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqIGNv
bnN0IHRsID0gcnEtPnRpbWVsaW5lOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnByZXY7CiAKLQls
b2NrZGVwX2Fzc2VydF9oZWxkKCZycS0+dGltZWxpbmUtPm11dGV4KTsKLQlsb2NrZGVwX3VucGlu
X2xvY2soJnJxLT50aW1lbGluZS0+bXV0ZXgsIHJxLT5jb29raWUpOworCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJnRsLT5tdXRleCk7CisJbG9ja2RlcF91bnBpbl9sb2NrKCZ0bC0+bXV0ZXgsIHJxLT5j
b29raWUpOwogCiAJdHJhY2VfaTkxNV9yZXF1ZXN0X2FkZChycSk7CiAKQEAgLTEyNjMsMTAgKzEy
MzEsMTAgQEAgdm9pZCBpOTE1X3JlcXVlc3RfYWRkKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQog
CSAqIHdvcmsgb24gYmVoYWxmIG9mIG90aGVycyAtLSBidXQgaW5zdGVhZCB3ZSBzaG91bGQgYmVu
ZWZpdCBmcm9tCiAJICogaW1wcm92ZWQgcmVzb3VyY2UgbWFuYWdlbWVudC4gKFdlbGwsIHRoYXQn
cyB0aGUgdGhlb3J5IGF0IGxlYXN0LikKIAkgKi8KLQlpZiAocHJldiAmJiBpOTE1X3JlcXVlc3Rf
Y29tcGxldGVkKHByZXYpKQorCWlmIChwcmV2ICYmIGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocHJl
dikgJiYgcHJldi0+dGltZWxpbmUgPT0gdGwpCiAJCWk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhw
cmV2KTsKIAotCW11dGV4X3VubG9jaygmcnEtPnRpbWVsaW5lLT5tdXRleCk7CisJbXV0ZXhfdW5s
b2NrKCZ0bC0+bXV0ZXgpOwogfQogCiBzdGF0aWMgdW5zaWduZWQgbG9uZyBsb2NhbF9jbG9ja191
cyh1bnNpZ25lZCBpbnQgKmNwdSkKQEAgLTE0ODcsMTggKzE0NTUsNDMgQEAgbG9uZyBpOTE1X3Jl
cXVlc3Rfd2FpdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKIAogYm9vbCBpOTE1X3JldGlyZV9y
ZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgaW50ZWxf
cmluZyAqcmluZywgKnRtcDsKKwlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMg
PSAmaTkxNS0+Z3QudGltZWxpbmVzOworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwsICp0bjsK
KwlMSVNUX0hFQUQoZnJlZSk7CisKKwlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7CisJbGlz
dF9mb3JfZWFjaF9lbnRyeV9zYWZlKHRsLCB0biwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxp
bmspIHsKKwkJaWYgKCFtdXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKQorCQkJY29udGludWU7CisK
KwkJaW50ZWxfdGltZWxpbmVfZ2V0KHRsKTsKKwkJR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3Vu
dCk7CisJCXRsLT5hY3RpdmVfY291bnQrKzsgLyogcGluIHRoZSBsaXN0IGVsZW1lbnQgKi8KKwkJ
c3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7CiAKLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJcmV0aXJlX3JlcXVlc3RzKHRsKTsKIAotCWxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZShyaW5nLCB0bXAsCi0JCQkJICZpOTE1LT5ndC5hY3RpdmVfcmlu
Z3MsIGFjdGl2ZV9saW5rKSB7Ci0JCWludGVsX3JpbmdfZ2V0KHJpbmcpOyAvKiBsYXN0IHJxIGhv
bGRzIHJlZmVyZW5jZSEgKi8KLQkJcmluZ19yZXRpcmVfcmVxdWVzdHMocmluZyk7Ci0JCWludGVs
X3JpbmdfcHV0KHJpbmcpOworCQlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7CisKKwkJLyog
UmVzdGFydCBpdGVyYXRpb24gYWZ0ZXIgZHJvcHBpbmcgbG9jayAqLworCQlsaXN0X3NhZmVfcmVz
ZXRfbmV4dCh0bCwgdG4sIGxpbmspOworCQlpZiAoIS0tdGwtPmFjdGl2ZV9jb3VudCkKKwkJCWxp
c3RfZGVsKCZ0bC0+bGluayk7CisKKwkJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgpOworCisJCS8q
IERlZmVyIHRoZSBmaW5hbCByZWxlYXNlIHRvIGFmdGVyIHRoZSBzcGlubG9jayAqLworCQlpZiAo
cmVmY291bnRfZGVjX2FuZF90ZXN0KCZ0bC0+a3JlZi5yZWZjb3VudCkpIHsKKwkJCUdFTV9CVUdf
T04odGwtPmFjdGl2ZV9jb3VudCk7CisJCQlsaXN0X2FkZCgmdGwtPmxpbmssICZmcmVlKTsKKwkJ
fQogCX0KKwlzcGluX3VubG9jaygmdGltZWxpbmVzLT5sb2NrKTsKKworCWxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZSh0bCwgdG4sICZmcmVlLCBsaW5rKQorCQlfX2ludGVsX3RpbWVsaW5lX2ZyZWUo
JnRsLT5rcmVmKTsKIAotCXJldHVybiAhbGlzdF9lbXB0eSgmaTkxNS0+Z3QuYWN0aXZlX3Jpbmdz
KTsKKwlyZXR1cm4gIWxpc3RfZW1wdHkoJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QpOwogfQogCiAj
aWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5oCmluZGV4IGE0MTc5MTYzNzA3Ni4uNzU0NTM0NzRkZGRiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuaApAQCAtMjIxLDkgKzIyMSw2IEBAIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgewogCS8qKiB0aW1lbGluZS0+cmVxdWVzdCBlbnRyeSBmb3IgdGhpcyByZXF1ZXN0ICov
CiAJc3RydWN0IGxpc3RfaGVhZCBsaW5rOwogCi0JLyoqIHJpbmctPnJlcXVlc3RfbGlzdCBlbnRy
eSBmb3IgdGhpcyByZXF1ZXN0ICovCi0Jc3RydWN0IGxpc3RfaGVhZCByaW5nX2xpbms7Ci0KIAlz
dHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXY7CiAJLyoqIGZpbGVfcHJpdiBs
aXN0IGVudHJ5IGZvciB0aGlzIHJlcXVlc3QgKi8KIAlzdHJ1Y3QgbGlzdF9oZWFkIGNsaWVudF9s
aW5rOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
