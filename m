Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 664B2DEEFD
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 16:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF1A6E113;
	Mon, 21 Oct 2019 14:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA496E115
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 14:13:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18913761-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 15:13:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 15:13:13 +0100
Message-Id: <20191021141313.19664-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Introduce barrier pulses along engines
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

VG8gZmx1c2ggaWRsZSBiYXJyaWVycywgYW5kIGV2ZW4gaW5mbGlnaHQgcmVxdWVzdHMsIHdlIHdh
bnQgdG8gc2VuZCBhCnByZWVtcHRpdmUgJ3B1bHNlJyBhbG9uZyBhbiBlbmdpbmUuIFdlIHVzZSBh
IG5vLW9wIHJlcXVlc3QgYWxvbmcgdGhlCnBpbm5lZCBrZXJuZWxfY29udGV4dCBhdCBoaWdoIHBy
aW9yaXR5IHNvIHRoYXQgaXQgc2hvdWxkIHJ1biBvciBlbHNlCmtpY2sgb2ZmIHRoZSBzdHVjayBy
ZXF1ZXN0cy4gV2UgY2FuIHVzZSB0aGlzIHRvIGVuc3VyZSBpZGxlIGJhcnJpZXJzIGFyZQppbW1l
ZGlhdGVseSBmbHVzaGVkLCBhcyBwYXJ0IG9mIGEgY29udGV4dCBjYW5jZWxsYXRpb24gbWVjaGFu
aXNtLCBvciBhcwpwYXJ0IG9mIGEgaGVhcnRiZWF0IG1lY2hhbmlzbSB0byBkZXRlY3QgYW5kIHJl
c2V0IGEgc3R1Y2sgR1BVLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAg
ICAgICAgICB8ICAgMyArLQogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRi
ZWF0LmMgIHwgIDc3ICsrKysrKysrKysrKwogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfaGVhcnRiZWF0LmggIHwgIDE1ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3BtLmMgICAgIHwgICAyICstCiAuLi4vZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5l
X2hlYXJ0YmVhdC5jICAgfCAxMTAgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmggICAgfCAgIDEgKwogLi4uL2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAxICsKIDcgZmlsZXMgY2hhbmdlZCwgMjA3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5l
X2hlYXJ0YmVhdC5jCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCBhMTZhMmRhZWY5NzcuLjJmZDRi
ZWQxODhlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTc4LDggKzc4LDkgQEAgZ3QteSArPSBc
CiAJZ3QvaW50ZWxfYnJlYWRjcnVtYnMubyBcCiAJZ3QvaW50ZWxfY29udGV4dC5vIFwKIAlndC9p
bnRlbF9lbmdpbmVfY3MubyBcCi0JZ3QvaW50ZWxfZW5naW5lX3Bvb2wubyBcCisJZ3QvaW50ZWxf
ZW5naW5lX2hlYXJ0YmVhdC5vIFwKIAlndC9pbnRlbF9lbmdpbmVfcG0ubyBcCisJZ3QvaW50ZWxf
ZW5naW5lX3Bvb2wubyBcCiAJZ3QvaW50ZWxfZW5naW5lX3VzZXIubyBcCiAJZ3QvaW50ZWxfZ3Qu
byBcCiAJZ3QvaW50ZWxfZ3RfaXJxLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAw
MDAwMDAwMC4uNGI5YWI3ODEzZDU0Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jCkBAIC0wLDAgKzEsNzcgQEAKKy8qCisg
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgorICogQ29weXJpZ2h0IMKpIDIwMTkg
SW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiaTkxNV9yZXF1ZXN0LmgiCisKKyNp
bmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX2hlYXJ0YmVh
dC5oIgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgorI2luY2x1ZGUgImludGVsX2VuZ2lu
ZS5oIgorI2luY2x1ZGUgImludGVsX2d0LmgiCisKK3N0YXRpYyB2b2lkIGlkbGVfcHVsc2Uoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sK
KwllbmdpbmUtPndha2VyZWZfc2VyaWFsID0gUkVBRF9PTkNFKGVuZ2luZS0+c2VyaWFsKSArIDE7
CisJaTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVfYmFycmllcnMocnEpOworfQorCitpbnQgaW50ZWxf
ZW5naW5lX3B1bHNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3Qg
aTkxNV9zY2hlZF9hdHRyIGF0dHIgPSB7IC5wcmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfQkFSUklF
UiB9OworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGVuZ2luZS0+a2VybmVsX2NvbnRleHQ7
CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJaW50IGVyciA9IDA7CisKKwlpZiAoIWludGVs
X2VuZ2luZV9oYXNfcHJlZW1wdGlvbihlbmdpbmUpKQorCQlyZXR1cm4gLUVOT0RFVjsKKworCWlm
ICghaW50ZWxfZW5naW5lX3BtX2dldF9pZl9hd2FrZShlbmdpbmUpKQorCQlyZXR1cm4gMDsKKwor
CWlmIChtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmNlLT50aW1lbGluZS0+bXV0ZXgpKQorCQln
b3RvIG91dF9ycG07CisKKwlpbnRlbF9jb250ZXh0X2VudGVyKGNlKTsKKwlycSA9IF9faTkxNV9y
ZXF1ZXN0X2NyZWF0ZShjZSwgR0ZQX05PV0FJVCB8IF9fR0ZQX05PV0FSTik7CisJaW50ZWxfY29u
dGV4dF9leGl0KGNlKTsKKwlpZiAoSVNfRVJSKHJxKSkgeworCQllcnIgPSBQVFJfRVJSKHJxKTsK
KwkJZ290byBvdXRfdW5sb2NrOworCX0KKworCXJxLT5mbGFncyB8PSBJOTE1X1JFUVVFU1RfU0VO
VElORUw7CisJaWRsZV9wdWxzZShlbmdpbmUsIHJxKTsKKworCV9faTkxNV9yZXF1ZXN0X2NvbW1p
dChycSk7CisJX19pOTE1X3JlcXVlc3RfcXVldWUocnEsICZhdHRyKTsKKworb3V0X3VubG9jazoK
KwltdXRleF91bmxvY2soJmNlLT50aW1lbGluZS0+bXV0ZXgpOworb3V0X3JwbToKKwlpbnRlbF9l
bmdpbmVfcG1fcHV0KGVuZ2luZSk7CisJcmV0dXJuIGVycjsKK30KKworaW50IGludGVsX2VuZ2lu
ZV9mbHVzaF9iYXJyaWVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7CisKKwlpZiAobGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmll
cl90YXNrcykpCisJCXJldHVybiAwOworCisJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQpOworCWlmIChJU19FUlIocnEpKQorCQlyZXR1cm4gUFRSX0VSUihy
cSk7CisKKwlpZGxlX3B1bHNlKGVuZ2luZSwgcnEpOworCWk5MTVfcmVxdWVzdF9hZGQocnEpOwor
CisJcmV0dXJuIDA7Cit9CisKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVT
VCkKKyNpbmNsdWRlICJzZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMiCisjZW5kaWYKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmIzMzRlNWFhZjc4ZAotLS0gL2Rldi9u
dWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQu
aApAQCAtMCwwICsxLDE1IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAor
ICoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRl
ZiBJTlRFTF9FTkdJTkVfSEVBUlRCRUFUX0gKKyNkZWZpbmUgSU5URUxfRU5HSU5FX0hFQVJUQkVB
VF9ICisKK3N0cnVjdCBpbnRlbF9lbmdpbmVfY3M7CisKK2ludCBpbnRlbF9lbmdpbmVfcHVsc2Uo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKK2ludCBpbnRlbF9lbmdpbmVfZmx1c2hf
YmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKKworI2VuZGlmIC8qIElO
VEVMX0VOR0lORV9IRUFSVEJFQVRfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG0uYwppbmRleCA2N2ViNjE4MzY0OGEuLjdkNzY2MTFkOWRmMSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKQEAgLTExMSw3ICsxMTEsNyBAQCBzdGF0
aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogCWk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXJzKHJxKTsKIAogCS8qIElu
c3RhbGwgb3Vyc2VsdmVzIGFzIGEgcHJlZW1wdGlvbiBiYXJyaWVyICovCi0JcnEtPnNjaGVkLmF0
dHIucHJpb3JpdHkgPSBJOTE1X1BSSU9SSVRZX1VOUFJFRU1QVEFCTEU7CisJcnEtPnNjaGVkLmF0
dHIucHJpb3JpdHkgPSBJOTE1X1BSSU9SSVRZX0JBUlJJRVI7CiAJX19pOTE1X3JlcXVlc3RfY29t
bWl0KHJxKTsKIAogCS8qIFJlbGVhc2Ugb3VyIGV4Y2x1c2l2ZSBob2xkIG9uIHRoZSBlbmdpbmUg
Ki8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9o
ZWFydGJlYXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFy
dGJlYXQuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjQ5YzY4M2Qz
YjI0NAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2VuZ2luZV9oZWFydGJlYXQuYwpAQCAtMCwwICsxLDExMCBAQAorLyoKKyAqIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxOCBJbnRlbCBDb3Jwb3Jh
dGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1X2Rydi5oIgorCisjaW5jbHVkZSAiaW50ZWxfZ3Rf
cmVxdWVzdHMuaCIKKyNpbmNsdWRlICJpOTE1X3NlbGZ0ZXN0LmgiCisKK3N0YXRpYyBpbnQgX19s
aXZlX2lkbGVfcHVsc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAgICBp
bnQgKCpmbikoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqY3MpKQoreworCXN0cnVjdCBpOTE1X2Fj
dGl2ZSByZWY7CisJaW50IGVycjsKKworCUdFTV9CVUdfT04oIWxsaXN0X2VtcHR5KCZlbmdpbmUt
PmJhcnJpZXJfdGFza3MpKTsKKworCWk5MTVfYWN0aXZlX2luaXQoJnJlZiwgTlVMTCwgTlVMTCk7
CisKKwllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoJnJlZiwg
ZW5naW5lKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJaTkxNV9hY3RpdmVfYWNxdWly
ZV9iYXJyaWVyKCZyZWYpOworCisJZXJyID0gZm4oZW5naW5lKTsKKwlpZiAoZXJyKSB7CisJCWxs
aXN0X2RlbF9hbGwoJmVuZ2luZS0+YmFycmllcl90YXNrcyk7CisJCXJldHVybiBlcnI7CisJfQor
CisJaWYgKGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KGVuZ2luZS0+Z3QsIEhaIC8g
NSkpIHsKKwkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChlbmdpbmUtPmd0KTsKKwkJcmV0dXJuIC1FVElN
RTsgLyogbGVha2luZyBzdHJ1Y3QgaTkxNV9hY3RpdmUhISEgKi8KKwl9CisKKwlpZiAoYXRvbWlj
X3JlYWQoJnJlZi5jb3VudCkpIHsKKwkJcHJfZXJyKCIlczogaGVhcnRiZWF0IHB1bHNlIGRpZCBu
b3QgZmx1c2ggaWRsZSB0YXNrc1xuIiwKKwkJICAgICAgIGVuZ2luZS0+bmFtZSk7CisJCWludGVs
X2d0X3NldF93ZWRnZWQoZW5naW5lLT5ndCk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCXJl
dHVybiAwOworfQorCitzdGF0aWMgaW50IGxpdmVfaWRsZV9mbHVzaCh2b2lkICphcmcpCit7CisJ
c3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50IGVyciA9IDA7CisKKwkvKiBDaGVj
ayB0aGF0IHdlIGNhbiBmbHVzaCB0aGUgaWRsZSBiYXJyaWVycyAqLworCisJZm9yX2VhY2hfZW5n
aW5lKGVuZ2luZSwgZ3QsIGlkKSB7CisJCWludGVsX2VuZ2luZV9wbV9nZXQoZW5naW5lKTsKKwkJ
ZXJyID0gX19saXZlX2lkbGVfcHVsc2UoZW5naW5lLCBpbnRlbF9lbmdpbmVfZmx1c2hfYmFycmll
cnMpOworCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CisJCWlmIChlcnIpCisJCQlicmVh
azsKKwl9CisKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IGxpdmVfaWRsZV9wdWxzZSh2
b2lkICphcmcpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50IGVyciA9
IDA7CisKKwkvKiBDaGVjayB0aGF0IGhlYXJ0YmVhdCBwdWxzZXMgZmx1c2ggdGhlIGlkbGUgYmFy
cmllcnMgKi8KKworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgeworCQlpbnRlbF9l
bmdpbmVfcG1fZ2V0KGVuZ2luZSk7CisJCWVyciA9IF9fbGl2ZV9pZGxlX3B1bHNlKGVuZ2luZSwg
aW50ZWxfZW5naW5lX3B1bHNlKTsKKwkJaW50ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOworCQlp
ZiAoZXJyICYmIGVyciAhPSAtRU5PREVWKQorCQkJYnJlYWs7CisKKwkJZXJyID0gMDsKKwl9CisK
KwlyZXR1cm4gZXJyOworfQorCitpbnQgaW50ZWxfaGVhcnRiZWF0X2xpdmVfc2VsZnRlc3RzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkx
NV9zdWJ0ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1QobGl2ZV9pZGxlX2ZsdXNoKSwKKwkJU1VC
VEVTVChsaXZlX2lkbGVfcHVsc2UpLAorCX07CisJaW50IHNhdmVkX2hhbmdjaGVjazsKKwlpbnQg
ZXJyOworCisJaWYgKGludGVsX2d0X2lzX3dlZGdlZCgmaTkxNS0+Z3QpKQorCQlyZXR1cm4gMDsK
KworCXNhdmVkX2hhbmdjaGVjayA9IGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hlY2s7CisJ
aTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdjaGVjayA9IElOVF9NQVg7CisKKwllcnIgPSAgaW50
ZWxfZ3RfbGl2ZV9zdWJ0ZXN0cyh0ZXN0cywgJmk5MTUtPmd0KTsKKworCWk5MTVfbW9kcGFyYW1z
LmVuYWJsZV9oYW5nY2hlY2sgPSBzYXZlZF9oYW5nY2hlY2s7CisJcmV0dXJuIGVycjsKK30KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaAppbmRleCAyMTAzN2EyZTIw
MzguLmFlOGJiM2NiNjI3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
cmlvbGlzdF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3Rf
dHlwZXMuaApAQCAtMzksNiArMzksNyBAQCBlbnVtIHsKICAqIGFjdGl2ZSByZXF1ZXN0LgogICov
CiAjZGVmaW5lIEk5MTVfUFJJT1JJVFlfVU5QUkVFTVBUQUJMRSBJTlRfTUFYCisjZGVmaW5lIEk5
MTVfUFJJT1JJVFlfQkFSUklFUiBJTlRfTUFYCiAKICNkZWZpbmUgX19OT19QUkVFTVBUSU9OIChJ
OTE1X1BSSU9SSVRZX1dBSVQpCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmluZGV4IDZkYWY2NTk5ZWM3OS4uMDBhMDYzNzMw
YmMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZl
X3NlbGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xp
dmVfc2VsZnRlc3RzLmgKQEAgLTE3LDYgKzE3LDcgQEAgc2VsZnRlc3QoZ3RfdGltZWxpbmVzLCBp
bnRlbF90aW1lbGluZV9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGd0X2NvbnRleHRzLCBpbnRl
bF9jb250ZXh0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZ3RfbHJjLCBpbnRlbF9scmNfbGl2
ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChndF9wbSwgaW50ZWxfZ3RfcG1fbGl2ZV9zZWxmdGVzdHMp
CitzZWxmdGVzdChndF9oZWFydGJlYXQsIGludGVsX2hlYXJ0YmVhdF9saXZlX3NlbGZ0ZXN0cykK
IHNlbGZ0ZXN0KHJlcXVlc3RzLCBpOTE1X3JlcXVlc3RfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVz
dChhY3RpdmUsIGk5MTVfYWN0aXZlX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3Qob2JqZWN0cywg
aTkxNV9nZW1fb2JqZWN0X2xpdmVfc2VsZnRlc3RzKQotLSAKMi4yNC4wLnJjMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
