Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09412128E8B
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 15:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8066E546;
	Sun, 22 Dec 2019 14:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F656E0E3
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 14:40:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19663603-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 14:40:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 14:40:46 +0000
Message-Id: <20191222144046.1674865-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Move pm debug files into a gt
 aware debugfs
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

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpUaGUgR1Qgc3lzdGVtIGlz
IGJlY29taW5nIG1vcmUgYW5kIG1vcmUgYSBzdGFuZC1hbG9uZSBzeXN0ZW0gaW4KaTkxNSBhbmQg
aXQncyBmYWlyIHRvIGFzc2lnbiBpdCBpdHMgb3duIGRlYnVnZnMgZGlyZWN0b3J5LgoKcmM2LCBy
cHMgYW5kIGxsYyBkZWJ1Z2ZzIGZpbGVzIGFyZSBndCByZWxhdGVkLCBtb3ZlIHRoZW0gaW50byB0
aGUKZ3QgZGVidWdmcyBkaXJlY3RvcnkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRpIFNoeXRpIDxhbmRp
LnNoeXRpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAg
ICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2VuZ2luZXMuYyB8ICAz
NiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19lbmdpbmVzLmggfCAgMTUgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndC5jICAgICAgfCAgNDIgKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3QuaCAgICAgIHwgIDM5ICsrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0X3BtLmMgICB8IDYwMSArKysrKysrKysrKysrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0X3BtLmggICB8ICAxNCArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICB8ICAgMyArCiA4IGZpbGVz
IGNoYW5nZWQsIDc1MyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZGVidWdmc19lbmdpbmVzLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2VuZ2luZXMuaAogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3QuYwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3QuaAogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3RfcG0uYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3RfcG0uaAoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUKaW5kZXggZTBmZDEwYzBjZmI4Li5iMGM1MzY2MWY2MmIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCkBAIC03NSw2ICs3NSw5IEBAIGk5MTUtJChDT05GSUdfUEVSRl9FVkVOVFMpICs9IGk5MTVf
cG11Lm8KICMgIkdyYXBoaWNzIFRlY2hub2xvZ3kiIChha2Egd2UgdGFsayB0byB0aGUgZ3B1KQog
b2JqLXkgKz0gZ3QvCiBndC15ICs9IFwKKwlndC9kZWJ1Z2ZzX2VuZ2luZXMubyBcCisJZ3QvZGVi
dWdmc19ndC5vIFwKKwlndC9kZWJ1Z2ZzX2d0X3BtLm8gXAogCWd0L2ludGVsX2JyZWFkY3J1bWJz
Lm8gXAogCWd0L2ludGVsX2NvbnRleHQubyBcCiAJZ3QvaW50ZWxfZW5naW5lX2NzLm8gXApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19lbmdpbmVzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2VuZ2luZXMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCAwMDAwMDAwMDAwMDAuLjZhNWU5YWIyMGI5NAotLS0gL2Rldi9udWxsCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2RlYnVnZnNfZW5naW5lcy5jCkBAIC0wLDAgKzEsMzYgQEAK
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKworLyoKKyAqIENvcHlyaWdodCDCqSAy
MDE5IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4K
KworI2luY2x1ZGUgImRlYnVnZnNfZW5naW5lcy5oIgorI2luY2x1ZGUgImRlYnVnZnNfZ3QuaCIK
KyNpbmNsdWRlICJpOTE1X2Rydi5oIiAvKiBmb3JfZWFjaF9lbmdpbmUhICovCisjaW5jbHVkZSAi
aW50ZWxfZW5naW5lLmgiCisKK3N0YXRpYyBpbnQgZW5naW5lc19zaG93KHN0cnVjdCBzZXFfZmls
ZSAqbSwgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gbS0+cHJpdmF0ZTsK
KwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7CisJc3RydWN0IGRybV9wcmludGVyIHA7CisKKwlwID0gZHJtX3NlcV9maWxlX3ByaW50ZXIo
bSk7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKQorCQlpbnRlbF9lbmdpbmVfZHVt
cChlbmdpbmUsICZwLCAiJXNcbiIsIGVuZ2luZS0+bmFtZSk7CisKKwlyZXR1cm4gMDsKK30KK0RF
RklORV9HVF9ERUJVR0ZTX0FUVFJJQlVURShlbmdpbmVzKTsKKwordm9pZCBkZWJ1Z2ZzX2VuZ2lu
ZXNfcmVnaXN0ZXIoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRlbnRyeSAqcm9vdCkKK3sK
KwlzdGF0aWMgY29uc3Qgc3RydWN0IGRlYnVnZnNfZ3RfZmlsZSBmaWxlc1tdID0geworCQl7ICJl
bmdpbmVzIiwgJmVuZ2luZXNfZm9wcyB9LAorCX07CisKKwlkZWJ1Z2ZzX2d0X3JlZ2lzdGVyX2Zp
bGVzKGd0LCByb290LCBmaWxlcywgQVJSQVlfU0laRShmaWxlcykpOworfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19lbmdpbmVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9kZWJ1Z2ZzX2VuZ2luZXMuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjdkYWU0NTQ1OWQzMAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2RlYnVnZnNfZW5naW5lcy5oCkBAIC0wLDAgKzEsMTUgQEAKKy8qIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRl
bCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgREVCVUdGU19FTkdJTkVTX0gKKyNkZWZpbmUg
REVCVUdGU19FTkdJTkVTX0gKKworc3RydWN0IGludGVsX2d0Oworc3RydWN0IGRlbnRyeTsKKwor
dm9pZCBkZWJ1Z2ZzX2VuZ2luZXNfcmVnaXN0ZXIoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0
IGRlbnRyeSAqcm9vdCk7CisKKyNlbmRpZiAvKiBERUJVR0ZTX0VOR0lORVNfSCAqLworCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi43NTI1NWFhYWNhZWQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0LmMKQEAgLTAsMCArMSw0MiBAQAorLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAorCisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9y
YXRpb24KKyAqLworCisjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPgorCisjaW5jbHVkZSAiZGVi
dWdmc19lbmdpbmVzLmgiCisjaW5jbHVkZSAiZGVidWdmc19ndC5oIgorI2luY2x1ZGUgImRlYnVn
ZnNfZ3RfcG0uaCIKKyNpbmNsdWRlICJpOTE1X2Rydi5oIgorCit2b2lkIGRlYnVnZnNfZ3RfcmVn
aXN0ZXIoc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3QgZGVudHJ5ICpyb290OworCisJ
aWYgKCFndC0+aTkxNS0+ZHJtLnByaW1hcnktPmRlYnVnZnNfcm9vdCkKKwkJcmV0dXJuOworCisJ
cm9vdCA9IGRlYnVnZnNfY3JlYXRlX2RpcigiZ3QiLCBndC0+aTkxNS0+ZHJtLnByaW1hcnktPmRl
YnVnZnNfcm9vdCk7CisJaWYgKElTX0VSUihyb290KSkKKwkJcmV0dXJuOworCisJZGVidWdmc19l
bmdpbmVzX3JlZ2lzdGVyKGd0LCByb290KTsKKwlkZWJ1Z2ZzX2d0X3BtX3JlZ2lzdGVyKGd0LCBy
b290KTsKK30KKwordm9pZCBkZWJ1Z2ZzX2d0X3JlZ2lzdGVyX2ZpbGVzKHN0cnVjdCBpbnRlbF9n
dCAqZ3QsCisJCQkgICAgICAgc3RydWN0IGRlbnRyeSAqcm9vdCwKKwkJCSAgICAgICBjb25zdCBz
dHJ1Y3QgZGVidWdmc19ndF9maWxlICpmaWxlcywKKwkJCSAgICAgICB1bnNpZ25lZCBsb25nIGNv
dW50KQoreworCXdoaWxlIChjb3VudC0tKSB7CisJCWlmICghZmlsZXMtPmV2YWwgfHwgZmlsZXMt
PmV2YWwoZ3QpKQorCQkJZGVidWdmc19jcmVhdGVfZmlsZShmaWxlcy0+bmFtZSwKKwkJCQkJICAg
IDA0NDQsIHJvb3QsIGd0LAorCQkJCQkgICAgZmlsZXMtPmZvcHMpOworCisJCWZpbGVzKys7CisJ
fQorfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAwMDAwMC4uNGVhMGYwNmNkYThmCi0tLSAvZGV2L251bGwKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndC5oCkBAIC0wLDAgKzEsMzkgQEAKKy8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJ
bnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgREVCVUdGU19HVF9ICisjZGVmaW5lIERF
QlVHRlNfR1RfSAorCisjaW5jbHVkZSA8bGludXgvZmlsZS5oPgorCitzdHJ1Y3QgaW50ZWxfZ3Q7
CisKKyNkZWZpbmUgREVGSU5FX0dUX0RFQlVHRlNfQVRUUklCVVRFKF9fbmFtZSkJCQkJXAorCXN0
YXRpYyBpbnQgX19uYW1lICMjIF9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxl
ICpmaWxlKSBcCit7CQkJCQkJCQkJXAorCXJldHVybiBzaW5nbGVfb3BlbihmaWxlLCBfX25hbWUg
IyMgX3Nob3csIGlub2RlLT5pX3ByaXZhdGUpOwlcCit9CQkJCQkJCQkJXAorc3RhdGljIGNvbnN0
IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgX19uYW1lICMjIF9mb3BzID0gewkJCVwKKwkub3duZXIg
PSBUSElTX01PRFVMRSwJCQkJCQlcCisJLm9wZW4gPSBfX25hbWUgIyMgX29wZW4sCQkJCQlcCisJ
LnJlYWQgPSBzZXFfcmVhZCwJCQkJCQlcCisJLmxsc2VlayA9IHNlcV9sc2VlaywJCQkJCQlcCisJ
LnJlbGVhc2UgPSBzaW5nbGVfcmVsZWFzZSwJCQkJCVwKK30KKwordm9pZCBkZWJ1Z2ZzX2d0X3Jl
Z2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOworCitzdHJ1Y3QgZGVidWdmc19ndF9maWxlIHsK
Kwljb25zdCBjaGFyICpuYW1lOworCWNvbnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgKmZvcHM7
CisJYm9vbCAoKmV2YWwpKGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QpOworfTsKKwordm9pZCBk
ZWJ1Z2ZzX2d0X3JlZ2lzdGVyX2ZpbGVzKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCisJCQkgICAgICAg
c3RydWN0IGRlbnRyeSAqcm9vdCwKKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgZGVidWdmc19ndF9m
aWxlICpmaWxlcywKKwkJCSAgICAgICB1bnNpZ25lZCBsb25nIGNvdW50KTsKKworI2VuZGlmIC8q
IERFQlVHRlNfR1RfSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVi
dWdmc19ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndF9wbS5jCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMDU5YzllNWMwMDJlCi0tLSAv
ZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndF9wbS5jCkBA
IC0wLDAgKzEsNjAxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisKKy8qCisg
KiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxs
aW51eC9zZXFfZmlsZS5oPgorCisjaW5jbHVkZSAiZGVidWdmc19ndC5oIgorI2luY2x1ZGUgImRl
YnVnZnNfZ3RfcG0uaCIKKyNpbmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX2d0
LmgiCisjaW5jbHVkZSAiaW50ZWxfbGxjLmgiCisjaW5jbHVkZSAiaW50ZWxfcmM2LmgiCisjaW5j
bHVkZSAiaW50ZWxfcnBzLmgiCisjaW5jbHVkZSAiaW50ZWxfcnVudGltZV9wbS5oIgorI2luY2x1
ZGUgImludGVsX3NpZGViYW5kLmgiCisjaW5jbHVkZSAiaW50ZWxfdW5jb3JlLmgiCisKK3N0YXRp
YyBpbnQgZndfZG9tYWluc19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKK3sK
KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gbS0+cHJpdmF0ZTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSBndC0+dW5jb3JlOworCXN0cnVjdCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2Rv
bWFpbiAqZndfZG9tYWluOworCXVuc2lnbmVkIGludCB0bXA7CisKKwlzZXFfcHJpbnRmKG0sICJ1
c2VyLmJ5cGFzc19jb3VudCA9ICV1XG4iLAorCQkgICB1bmNvcmUtPnVzZXJfZm9yY2V3YWtlX2Nv
dW50KTsKKworCWZvcl9lYWNoX2Z3X2RvbWFpbihmd19kb21haW4sIHVuY29yZSwgdG1wKQorCQlz
ZXFfcHJpbnRmKG0sICIlcy53YWtlX2NvdW50ID0gJXVcbiIsCisJCQkgICBpbnRlbF91bmNvcmVf
Zm9yY2V3YWtlX2RvbWFpbl90b19zdHIoZndfZG9tYWluLT5pZCksCisJCQkgICBSRUFEX09OQ0Uo
ZndfZG9tYWluLT53YWtlX2NvdW50KSk7CisKKwlyZXR1cm4gMDsKK30KK0RFRklORV9HVF9ERUJV
R0ZTX0FUVFJJQlVURShmd19kb21haW5zKTsKKworc3RhdGljIHZvaWQgcHJpbnRfcmM2X3Jlcyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sCisJCQkgIGNvbnN0IGNoYXIgKnRpdGxlLAorCQkJICBjb25zdCBp
OTE1X3JlZ190IHJlZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gbS0+cHJpdmF0ZTsKKwlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKworCXdpdGhfaW50ZWxfcnVudGltZV9wbShndC0+dW5j
b3JlLT5ycG0sIHdha2VyZWYpCisJCXNlcV9wcmludGYobSwgIiVzICV1ICglbGx1IHVzKVxuIiwg
dGl0bGUsCisJCQkgICBpbnRlbF91bmNvcmVfcmVhZChndC0+dW5jb3JlLCByZWcpLAorCQkJICAg
aW50ZWxfcmM2X3Jlc2lkZW5jeV91cygmZ3QtPnJjNiwgcmVnKSk7Cit9CisKK3N0YXRpYyBpbnQg
dmx2X2RycGMoc3RydWN0IHNlcV9maWxlICptKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBt
LT5wcml2YXRlOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CisJ
dTMyIHJjY3RsMSwgcHdfc3RhdHVzOworCisJcHdfc3RhdHVzID0gaW50ZWxfdW5jb3JlX3JlYWQo
dW5jb3JlLCBWTFZfR1RMQ19QV19TVEFUVVMpOworCXJjY3RsMSA9IGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwgR0VONl9SQ19DT05UUk9MKTsKKworCXNlcV9wcmludGYobSwgIlJDNiBFbmFibGVk
OiAlc1xuIiwKKwkJICAgeWVzbm8ocmNjdGwxICYgKEdFTjdfUkNfQ1RMX1RPX01PREUgfAorCQkJ
CQlHRU42X1JDX0NUTF9FSV9NT0RFKDEpKSkpOworCXNlcV9wcmludGYobSwgIlJlbmRlciBQb3dl
ciBXZWxsOiAlc1xuIiwKKwkJICAgKHB3X3N0YXR1cyAmIFZMVl9HVExDX1BXX1JFTkRFUl9TVEFU
VVNfTUFTSykgPyAiVXAiIDogIkRvd24iKTsKKwlzZXFfcHJpbnRmKG0sICJNZWRpYSBQb3dlciBX
ZWxsOiAlc1xuIiwKKwkJICAgKHB3X3N0YXR1cyAmIFZMVl9HVExDX1BXX01FRElBX1NUQVRVU19N
QVNLKSA/ICJVcCIgOiAiRG93biIpOworCisJcHJpbnRfcmM2X3JlcyhtLCAiUmVuZGVyIFJDNiBy
ZXNpZGVuY3kgc2luY2UgYm9vdDoiLCBWTFZfR1RfUkVOREVSX1JDNik7CisJcHJpbnRfcmM2X3Jl
cyhtLCAiTWVkaWEgUkM2IHJlc2lkZW5jeSBzaW5jZSBib290OiIsIFZMVl9HVF9NRURJQV9SQzYp
OworCisJcmV0dXJuIGZ3X2RvbWFpbnNfc2hvdyhtLCBOVUxMKTsKK30KKworc3RhdGljIGludCBn
ZW42X2RycGMoc3RydWN0IHNlcV9maWxlICptKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBt
LT5wcml2YXRlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJ
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKKwl1MzIgZ3RfY29yZV9z
dGF0dXMsIHJjY3RsMSwgcmM2dmlkcyA9IDA7CisJdTMyIGdlbjlfcG93ZXJnYXRlX2VuYWJsZSA9
IDAsIGdlbjlfcG93ZXJnYXRlX3N0YXR1cyA9IDA7CisKKwlndF9jb3JlX3N0YXR1cyA9IGludGVs
X3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgR0VONl9HVF9DT1JFX1NUQVRVUyk7CisKKwlyY2N0bDEg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUkNfQ09OVFJPTCk7CisJaWYgKElOVEVM
X0dFTihpOTE1KSA+PSA5KSB7CisJCWdlbjlfcG93ZXJnYXRlX2VuYWJsZSA9CisJCQlpbnRlbF91
bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjlfUEdfRU5BQkxFKTsKKwkJZ2VuOV9wb3dlcmdhdGVfc3Rh
dHVzID0KKwkJCWludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOV9QV1JHVF9ET01BSU5fU1RB
VFVTKTsKKwl9CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpIDw9IDcpCisJCXNhbmR5YnJpZGdlX3Bj
b2RlX3JlYWQoaTkxNSwgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMsCisJCQkJICAgICAgICZyYzZ2
aWRzLCBOVUxMKTsKKworCXNlcV9wcmludGYobSwgIlJDMWUgRW5hYmxlZDogJXNcbiIsCisJCSAg
IHllc25vKHJjY3RsMSAmIEdFTjZfUkNfQ1RMX1JDMWVfRU5BQkxFKSk7CisJc2VxX3ByaW50Ziht
LCAiUkM2IEVuYWJsZWQ6ICVzXG4iLAorCQkgICB5ZXNubyhyY2N0bDEgJiBHRU42X1JDX0NUTF9S
QzZfRU5BQkxFKSk7CisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSA5KSB7CisJCXNlcV9wcmludGYo
bSwgIlJlbmRlciBXZWxsIEdhdGluZyBFbmFibGVkOiAlc1xuIiwKKwkJCSAgIHllc25vKGdlbjlf
cG93ZXJnYXRlX2VuYWJsZSAmIEdFTjlfUkVOREVSX1BHX0VOQUJMRSkpOworCQlzZXFfcHJpbnRm
KG0sICJNZWRpYSBXZWxsIEdhdGluZyBFbmFibGVkOiAlc1xuIiwKKwkJCSAgIHllc25vKGdlbjlf
cG93ZXJnYXRlX2VuYWJsZSAmIEdFTjlfTUVESUFfUEdfRU5BQkxFKSk7CisJfQorCXNlcV9wcmlu
dGYobSwgIkRlZXAgUkM2IEVuYWJsZWQ6ICVzXG4iLAorCQkgICB5ZXNubyhyY2N0bDEgJiBHRU42
X1JDX0NUTF9SQzZwX0VOQUJMRSkpOworCXNlcV9wcmludGYobSwgIkRlZXBlc3QgUkM2IEVuYWJs
ZWQ6ICVzXG4iLAorCQkgICB5ZXNubyhyY2N0bDEgJiBHRU42X1JDX0NUTF9SQzZwcF9FTkFCTEUp
KTsKKwlzZXFfcHV0cyhtLCAiQ3VycmVudCBSQyBzdGF0ZTogIik7CisJc3dpdGNoIChndF9jb3Jl
X3N0YXR1cyAmIEdFTjZfUkNuX01BU0spIHsKKwljYXNlIEdFTjZfUkMwOgorCQlpZiAoZ3RfY29y
ZV9zdGF0dXMgJiBHRU42X0NPUkVfQ1BEX1NUQVRFX01BU0spCisJCQlzZXFfcHV0cyhtLCAiQ29y
ZSBQb3dlciBEb3duXG4iKTsKKwkJZWxzZQorCQkJc2VxX3B1dHMobSwgIm9uXG4iKTsKKwkJYnJl
YWs7CisJY2FzZSBHRU42X1JDMzoKKwkJc2VxX3B1dHMobSwgIlJDM1xuIik7CisJCWJyZWFrOwor
CWNhc2UgR0VONl9SQzY6CisJCXNlcV9wdXRzKG0sICJSQzZcbiIpOworCQlicmVhazsKKwljYXNl
IEdFTjZfUkM3OgorCQlzZXFfcHV0cyhtLCAiUkM3XG4iKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoK
KwkJc2VxX3B1dHMobSwgIlVua25vd25cbiIpOworCQlicmVhazsKKwl9CisKKwlzZXFfcHJpbnRm
KG0sICJDb3JlIFBvd2VyIERvd246ICVzXG4iLAorCQkgICB5ZXNubyhndF9jb3JlX3N0YXR1cyAm
IEdFTjZfQ09SRV9DUERfU1RBVEVfTUFTSykpOworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOSkg
eworCQlzZXFfcHJpbnRmKG0sICJSZW5kZXIgUG93ZXIgV2VsbDogJXNcbiIsCisJCQkgICAoZ2Vu
OV9wb3dlcmdhdGVfc3RhdHVzICYKKwkJCSAgICBHRU45X1BXUkdUX1JFTkRFUl9TVEFUVVNfTUFT
SykgPyAiVXAiIDogIkRvd24iKTsKKwkJc2VxX3ByaW50ZihtLCAiTWVkaWEgUG93ZXIgV2VsbDog
JXNcbiIsCisJCQkgICAoZ2VuOV9wb3dlcmdhdGVfc3RhdHVzICYKKwkJCSAgICBHRU45X1BXUkdU
X01FRElBX1NUQVRVU19NQVNLKSA/ICJVcCIgOiAiRG93biIpOworCX0KKworCS8qIE5vdCBleGFj
dGx5IHN1cmUgd2hhdCB0aGlzIGlzICovCisJcHJpbnRfcmM2X3JlcyhtLCAiUkM2IFwiTG9ja2Vk
IHRvIFJQblwiIHJlc2lkZW5jeSBzaW5jZSBib290OiIsCisJCSAgICAgIEdFTjZfR1RfR0ZYX1JD
Nl9MT0NLRUQpOworCXByaW50X3JjNl9yZXMobSwgIlJDNiByZXNpZGVuY3kgc2luY2UgYm9vdDoi
LCBHRU42X0dUX0dGWF9SQzYpOworCXByaW50X3JjNl9yZXMobSwgIlJDNisgcmVzaWRlbmN5IHNp
bmNlIGJvb3Q6IiwgR0VONl9HVF9HRlhfUkM2cCk7CisJcHJpbnRfcmM2X3JlcyhtLCAiUkM2Kysg
cmVzaWRlbmN5IHNpbmNlIGJvb3Q6IiwgR0VONl9HVF9HRlhfUkM2cHApOworCisJaWYgKElOVEVM
X0dFTihpOTE1KSA8PSA3KSB7CisJCXNlcV9wcmludGYobSwgIlJDNiAgIHZvbHRhZ2U6ICVkbVZc
biIsCisJCQkgICBHRU42X0RFQ09ERV9SQzZfVklEKCgocmM2dmlkcyA+PiAwKSAmIDB4ZmYpKSk7
CisJCXNlcV9wcmludGYobSwgIlJDNisgIHZvbHRhZ2U6ICVkbVZcbiIsCisJCQkgICBHRU42X0RF
Q09ERV9SQzZfVklEKCgocmM2dmlkcyA+PiA4KSAmIDB4ZmYpKSk7CisJCXNlcV9wcmludGYobSwg
IlJDNisrIHZvbHRhZ2U6ICVkbVZcbiIsCisJCQkgICBHRU42X0RFQ09ERV9SQzZfVklEKCgocmM2
dmlkcyA+PiAxNikgJiAweGZmKSkpOworCX0KKworCXJldHVybiBmd19kb21haW5zX3Nob3cobSwg
TlVMTCk7Cit9CisKK3N0YXRpYyBpbnQgaWxrX2RycGMoc3RydWN0IHNlcV9maWxlICptKQorewor
CXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBtLT5wcml2YXRlOworCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IGd0LT51bmNvcmU7CisJdTMyIHJndm1vZGVjdGwsIHJzdGRieWN0bDsKKwl1MTYg
Y3JzdGFuZHZpZDsKKworCXJndm1vZGVjdGwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIE1F
TU1PREVDVEwpOworCXJzdGRieWN0bCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgUlNUREJZ
Q1RMKTsKKwljcnN0YW5kdmlkID0gaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUsIENSU1RBTkRW
SUQpOworCisJc2VxX3ByaW50ZihtLCAiSEQgYm9vc3Q6ICVzXG4iLCB5ZXNubyhyZ3Ztb2RlY3Rs
ICYgTUVNTU9ERV9CT09TVF9FTikpOworCXNlcV9wcmludGYobSwgIkJvb3N0IGZyZXE6ICVkXG4i
LAorCQkgICAocmd2bW9kZWN0bCAmIE1FTU1PREVfQk9PU1RfRlJFUV9NQVNLKSA+PgorCQkgICBN
RU1NT0RFX0JPT1NUX0ZSRVFfU0hJRlQpOworCXNlcV9wcmludGYobSwgIkhXIGNvbnRyb2wgZW5h
YmxlZDogJXNcbiIsCisJCSAgIHllc25vKHJndm1vZGVjdGwgJiBNRU1NT0RFX0hXSURMRV9FTikp
OworCXNlcV9wcmludGYobSwgIlNXIGNvbnRyb2wgZW5hYmxlZDogJXNcbiIsCisJCSAgIHllc25v
KHJndm1vZGVjdGwgJiBNRU1NT0RFX1NXTU9ERV9FTikpOworCXNlcV9wcmludGYobSwgIkdhdGVk
IHZvbHRhZ2UgY2hhbmdlOiAlc1xuIiwKKwkJICAgeWVzbm8ocmd2bW9kZWN0bCAmIE1FTU1PREVf
UkNMS19HQVRFKSk7CisJc2VxX3ByaW50ZihtLCAiU3RhcnRpbmcgZnJlcXVlbmN5OiBQJWRcbiIs
CisJCSAgIChyZ3Ztb2RlY3RsICYgTUVNTU9ERV9GU1RBUlRfTUFTSykgPj4gTUVNTU9ERV9GU1RB
UlRfU0hJRlQpOworCXNlcV9wcmludGYobSwgIk1heCBQLXN0YXRlOiBQJWRcbiIsCisJCSAgIChy
Z3Ztb2RlY3RsICYgTUVNTU9ERV9GTUFYX01BU0spID4+IE1FTU1PREVfRk1BWF9TSElGVCk7CisJ
c2VxX3ByaW50ZihtLCAiTWluIFAtc3RhdGU6IFAlZFxuIiwgKHJndm1vZGVjdGwgJiBNRU1NT0RF
X0ZNSU5fTUFTSykpOworCXNlcV9wcmludGYobSwgIlJTMSBWSUQ6ICVkXG4iLCAoY3JzdGFuZHZp
ZCAmIDB4M2YpKTsKKwlzZXFfcHJpbnRmKG0sICJSUzIgVklEOiAlZFxuIiwgKChjcnN0YW5kdmlk
ID4+IDgpICYgMHgzZikpOworCXNlcV9wcmludGYobSwgIlJlbmRlciBzdGFuZGJ5IGVuYWJsZWQ6
ICVzXG4iLAorCQkgICB5ZXNubyghKHJzdGRieWN0bCAmIFJDWF9TV19FWElUKSkpOworCXNlcV9w
dXRzKG0sICJDdXJyZW50IFJTIHN0YXRlOiAiKTsKKwlzd2l0Y2ggKHJzdGRieWN0bCAmIFJTWF9T
VEFUVVNfTUFTSykgeworCWNhc2UgUlNYX1NUQVRVU19PTjoKKwkJc2VxX3B1dHMobSwgIm9uXG4i
KTsKKwkJYnJlYWs7CisJY2FzZSBSU1hfU1RBVFVTX1JDMToKKwkJc2VxX3B1dHMobSwgIlJDMVxu
Iik7CisJCWJyZWFrOworCWNhc2UgUlNYX1NUQVRVU19SQzFFOgorCQlzZXFfcHV0cyhtLCAiUkMx
RVxuIik7CisJCWJyZWFrOworCWNhc2UgUlNYX1NUQVRVU19SUzE6CisJCXNlcV9wdXRzKG0sICJS
UzFcbiIpOworCQlicmVhazsKKwljYXNlIFJTWF9TVEFUVVNfUlMyOgorCQlzZXFfcHV0cyhtLCAi
UlMyIChSQzYpXG4iKTsKKwkJYnJlYWs7CisJY2FzZSBSU1hfU1RBVFVTX1JTMzoKKwkJc2VxX3B1
dHMobSwgIlJDMyAoUkM2KylcbiIpOworCQlicmVhazsKKwlkZWZhdWx0OgorCQlzZXFfcHV0cyht
LCAidW5rbm93blxuIik7CisJCWJyZWFrOworCX0KKworCXJldHVybiAwOworfQorCitzdGF0aWMg
aW50IGRycGNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKK3sKKwlzdHJ1
Y3QgaW50ZWxfZ3QgKmd0ID0gbS0+cHJpdmF0ZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGd0LT5pOTE1OworCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOworCWludCBlcnIgPSAt
RU5PREVWOworCisJd2l0aF9pbnRlbF9ydW50aW1lX3BtKGd0LT51bmNvcmUtPnJwbSwgd2FrZXJl
ZikgeworCQlpZiAoSVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKQor
CQkJZXJyID0gdmx2X2RycGMobSk7CisJCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA2KQor
CQkJZXJyID0gZ2VuNl9kcnBjKG0pOworCQllbHNlCisJCQllcnIgPSBpbGtfZHJwYyhtKTsKKwl9
CisKKwlyZXR1cm4gZXJyOworfQorREVGSU5FX0dUX0RFQlVHRlNfQVRUUklCVVRFKGRycGMpOwor
CitzdGF0aWMgaW50IGZyZXF1ZW5jeV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51
c2VkKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBtLT5wcml2YXRlOworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gZ3QtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxfcnBzICpycHMgPSAmZ3QtPnJwczsKKwlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKworCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dl
dCh1bmNvcmUtPnJwbSk7CisKKwlpZiAoSVNfR0VOKGk5MTUsIDUpKSB7CisJCXUxNiByZ3Zzd2N0
bCA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLCBNRU1TV0NUTCk7CisJCXUxNiByZ3ZzdGF0
ID0gaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUsIE1FTVNUQVRfSUxLKTsKKworCQlzZXFfcHJp
bnRmKG0sICJSZXF1ZXN0ZWQgUC1zdGF0ZTogJWRcbiIsIChyZ3Zzd2N0bCA+PiA4KSAmIDB4Zik7
CisJCXNlcV9wcmludGYobSwgIlJlcXVlc3RlZCBWSUQ6ICVkXG4iLCByZ3Zzd2N0bCAmIDB4M2Yp
OworCQlzZXFfcHJpbnRmKG0sICJDdXJyZW50IFZJRDogJWRcbiIsIChyZ3ZzdGF0ICYgTUVNU1RB
VF9WSURfTUFTSykgPj4KKwkJCSAgIE1FTVNUQVRfVklEX1NISUZUKTsKKwkJc2VxX3ByaW50Ziht
LCAiQ3VycmVudCBQLXN0YXRlOiAlZFxuIiwKKwkJCSAgIChyZ3ZzdGF0ICYgTUVNU1RBVF9QU1RB
VEVfTUFTSykgPj4gTUVNU1RBVF9QU1RBVEVfU0hJRlQpOworCX0gZWxzZSBpZiAoSVNfVkFMTEVZ
VklFVyhpOTE1KSB8fCBJU19DSEVSUllWSUVXKGk5MTUpKSB7CisJCXUzMiBycG1vZGVjdGwsIGZy
ZXFfc3RzOworCisJCXJwbW9kZWN0bCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VONl9S
UF9DT05UUk9MKTsKKwkJc2VxX3ByaW50ZihtLCAiVmlkZW8gVHVyYm8gTW9kZTogJXNcbiIsCisJ
CQkgICB5ZXNubyhycG1vZGVjdGwgJiBHRU42X1JQX01FRElBX1RVUkJPKSk7CisJCXNlcV9wcmlu
dGYobSwgIkhXIGNvbnRyb2wgZW5hYmxlZDogJXNcbiIsCisJCQkgICB5ZXNubyhycG1vZGVjdGwg
JiBHRU42X1JQX0VOQUJMRSkpOworCQlzZXFfcHJpbnRmKG0sICJTVyBjb250cm9sIGVuYWJsZWQ6
ICVzXG4iLAorCQkJICAgeWVzbm8oKHJwbW9kZWN0bCAmIEdFTjZfUlBfTUVESUFfTU9ERV9NQVNL
KSA9PQorCQkJCSAgR0VONl9SUF9NRURJQV9TV19NT0RFKSk7CisKKwkJdmx2X3B1bml0X2dldChp
OTE1KTsKKwkJZnJlcV9zdHMgPSB2bHZfcHVuaXRfcmVhZChpOTE1LCBQVU5JVF9SRUdfR1BVX0ZS
RVFfU1RTKTsKKwkJdmx2X3B1bml0X3B1dChpOTE1KTsKKworCQlzZXFfcHJpbnRmKG0sICJQVU5J
VF9SRUdfR1BVX0ZSRVFfU1RTOiAweCUwOHhcbiIsIGZyZXFfc3RzKTsKKwkJc2VxX3ByaW50Ziht
LCAiRERSIGZyZXE6ICVkIE1IelxuIiwgaTkxNS0+bWVtX2ZyZXEpOworCisJCXNlcV9wcmludGYo
bSwgImFjdHVhbCBHUFUgZnJlcTogJWQgTUh6XG4iLAorCQkJICAgaW50ZWxfZ3B1X2ZyZXEocnBz
LCAoZnJlcV9zdHMgPj4gOCkgJiAweGZmKSk7CisKKwkJc2VxX3ByaW50ZihtLCAiY3VycmVudCBH
UFUgZnJlcTogJWQgTUh6XG4iLAorCQkJICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPmN1cl9m
cmVxKSk7CisKKwkJc2VxX3ByaW50ZihtLCAibWF4IEdQVSBmcmVxOiAlZCBNSHpcbiIsCisJCQkg
ICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+bWF4X2ZyZXEpKTsKKworCQlzZXFfcHJpbnRmKG0s
ICJtaW4gR1BVIGZyZXE6ICVkIE1IelxuIiwKKwkJCSAgIGludGVsX2dwdV9mcmVxKHJwcywgcnBz
LT5taW5fZnJlcSkpOworCisJCXNlcV9wcmludGYobSwgImlkbGUgR1BVIGZyZXE6ICVkIE1Ielxu
IiwKKwkJCSAgIGludGVsX2dwdV9mcmVxKHJwcywgcnBzLT5pZGxlX2ZyZXEpKTsKKworCQlzZXFf
cHJpbnRmKG0sICJlZmZpY2llbnQgKFJQZSkgZnJlcXVlbmN5OiAlZCBNSHpcbiIsCisJCQkgICBp
bnRlbF9ncHVfZnJlcShycHMsIHJwcy0+ZWZmaWNpZW50X2ZyZXEpKTsKKwl9IGVsc2UgaWYgKElO
VEVMX0dFTihpOTE1KSA+PSA2KSB7CisJCXUzMiBycF9zdGF0ZV9saW1pdHM7CisJCXUzMiBndF9w
ZXJmX3N0YXR1czsKKwkJdTMyIHJwX3N0YXRlX2NhcDsKKwkJdTMyIHJwbW9kZWN0bCwgcnBpbmNs
aW1pdCwgcnBkZWNsaW1pdDsKKwkJdTMyIHJwc3RhdCwgY2FnZiwgcmVxZjsKKwkJdTMyIHJwdXBl
aSwgcnBjdXJ1cCwgcnBwcmV2dXA7CisJCXUzMiBycGRvd25laSwgcnBjdXJkb3duLCBycHByZXZk
b3duOworCQl1MzIgcG1faWVyLCBwbV9pbXIsIHBtX2lzciwgcG1faWlyLCBwbV9tYXNrOworCQlp
bnQgbWF4X2ZyZXE7CisKKwkJcnBfc3RhdGVfbGltaXRzID0gaW50ZWxfdW5jb3JlX3JlYWQodW5j
b3JlLCBHRU42X1JQX1NUQVRFX0xJTUlUUyk7CisJCWlmIChJU19HRU45X0xQKGk5MTUpKSB7CisJ
CQlycF9zdGF0ZV9jYXAgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEJYVF9SUF9TVEFURV9D
QVApOworCQkJZ3RfcGVyZl9zdGF0dXMgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEJYVF9H
VF9QRVJGX1NUQVRVUyk7CisJCX0gZWxzZSB7CisJCQlycF9zdGF0ZV9jYXAgPSBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfU1RBVEVfQ0FQKTsKKwkJCWd0X3BlcmZfc3RhdHVzID0g
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X0dUX1BFUkZfU1RBVFVTKTsKKwkJfQorCisJ
CS8qIFJQU1RBVDEgaXMgaW4gdGhlIEdUIHBvd2VyIHdlbGwgKi8KKwkJaW50ZWxfdW5jb3JlX2Zv
cmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKworCQlyZXFmID0gaW50ZWxfdW5j
b3JlX3JlYWQodW5jb3JlLCBHRU42X1JQTlNXUkVRKTsKKwkJaWYgKElOVEVMX0dFTihpOTE1KSA+
PSA5KSB7CisJCQlyZXFmID4+PSAyMzsKKwkJfSBlbHNlIHsKKwkJCXJlcWYgJj0gfkdFTjZfVFVS
Qk9fRElTQUJMRTsKKwkJCWlmIChJU19IQVNXRUxMKGk5MTUpIHx8IElTX0JST0FEV0VMTChpOTE1
KSkKKwkJCQlyZXFmID4+PSAyNDsKKwkJCWVsc2UKKwkJCQlyZXFmID4+PSAyNTsKKwkJfQorCQly
ZXFmID0gaW50ZWxfZ3B1X2ZyZXEocnBzLCByZXFmKTsKKworCQlycG1vZGVjdGwgPSBpbnRlbF91
bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfQ09OVFJPTCk7CisJCXJwaW5jbGltaXQgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfVVBfVEhSRVNIT0xEKTsKKwkJcnBkZWNsaW1p
dCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VONl9SUF9ET1dOX1RIUkVTSE9MRCk7CisK
KwkJcnBzdGF0ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1JQU1RBVDEpOworCQly
cHVwZWkgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfQ1VSX1VQX0VJKSAmIEdF
TjZfQ1VSSUNPTlRfTUFTSzsKKwkJcnBjdXJ1cCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwg
R0VONl9SUF9DVVJfVVApICYgR0VONl9DVVJCU1lUQVZHX01BU0s7CisJCXJwcHJldnVwID0gaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1JQX1BSRVZfVVApICYgR0VONl9DVVJCU1lUQVZH
X01BU0s7CisJCXJwZG93bmVpID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1JQX0NV
Ul9ET1dOX0VJKSAmIEdFTjZfQ1VSSUFWR19NQVNLOworCQlycGN1cmRvd24gPSBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfQ1VSX0RPV04pICYgR0VONl9DVVJCU1lUQVZHX01BU0s7
CisJCXJwcHJldmRvd24gPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBfUFJFVl9E
T1dOKSAmIEdFTjZfQ1VSQlNZVEFWR19NQVNLOworCQljYWdmID0gaW50ZWxfcnBzX3JlYWRfYWN0
dWFsX2ZyZXF1ZW5jeShycHMpOworCisJCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHVuY29y
ZSwgRk9SQ0VXQUtFX0FMTCk7CisKKwkJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkgeworCQkJ
cG1faWVyID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU4xMV9HUE1fV0dCT1hQRVJGX0lO
VFJfRU5BQkxFKTsKKwkJCXBtX2ltciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOMTFf
R1BNX1dHQk9YUEVSRl9JTlRSX01BU0spOworCQkJLyoKKwkJCSAqIFRoZSBlcXVpdmFsZW50IHRv
IHRoZSBQTSBJU1IgJiBJSVIgY2Fubm90IGJlIHJlYWQKKwkJCSAqIHdpdGhvdXQgYWZmZWN0aW5n
IHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBzeXN0ZW0KKwkJCSAqLworCQkJcG1faXNyID0gMDsK
KwkJCXBtX2lpciA9IDA7CisJCX0gZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDgpIHsKKwkJ
CXBtX2llciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOF9HVF9JRVIoMikpOworCQkJ
cG1faW1yID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU44X0dUX0lNUigyKSk7CisJCQlw
bV9pc3IgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjhfR1RfSVNSKDIpKTsKKwkJCXBt
X2lpciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOF9HVF9JSVIoMikpOworCQl9IGVs
c2UgeworCQkJcG1faWVyID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1BNSUVSKTsK
KwkJCXBtX2ltciA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VONl9QTUlNUik7CisJCQlw
bV9pc3IgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUE1JU1IpOworCQkJcG1faWly
ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1BNSUlSKTsKKwkJfQorCQlwbV9tYXNr
ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42X1BNSU5UUk1TSyk7CisKKwkJc2VxX3By
aW50ZihtLCAiVmlkZW8gVHVyYm8gTW9kZTogJXNcbiIsCisJCQkgICB5ZXNubyhycG1vZGVjdGwg
JiBHRU42X1JQX01FRElBX1RVUkJPKSk7CisJCXNlcV9wcmludGYobSwgIkhXIGNvbnRyb2wgZW5h
YmxlZDogJXNcbiIsCisJCQkgICB5ZXNubyhycG1vZGVjdGwgJiBHRU42X1JQX0VOQUJMRSkpOwor
CQlzZXFfcHJpbnRmKG0sICJTVyBjb250cm9sIGVuYWJsZWQ6ICVzXG4iLAorCQkJICAgeWVzbm8o
KHJwbW9kZWN0bCAmIEdFTjZfUlBfTUVESUFfTU9ERV9NQVNLKSA9PQorCQkJCSAgR0VONl9SUF9N
RURJQV9TV19NT0RFKSk7CisKKwkJc2VxX3ByaW50ZihtLCAiUE0gSUVSPTB4JTA4eCBJTVI9MHgl
MDh4LCBNQVNLPTB4JTA4eFxuIiwKKwkJCSAgIHBtX2llciwgcG1faW1yLCBwbV9tYXNrKTsKKwkJ
aWYgKElOVEVMX0dFTihpOTE1KSA8PSAxMCkKKwkJCXNlcV9wcmludGYobSwgIlBNIElTUj0weCUw
OHggSUlSPTB4JTA4eFxuIiwKKwkJCQkgICBwbV9pc3IsIHBtX2lpcik7CisJCXNlcV9wcmludGYo
bSwgInBtX2ludHJtc2tfbWJ6OiAweCUwOHhcbiIsCisJCQkgICBycHMtPnBtX2ludHJtc2tfbWJ6
KTsKKwkJc2VxX3ByaW50ZihtLCAiR1RfUEVSRl9TVEFUVVM6IDB4JTA4eFxuIiwgZ3RfcGVyZl9z
dGF0dXMpOworCQlzZXFfcHJpbnRmKG0sICJSZW5kZXIgcC1zdGF0ZSByYXRpbzogJWRcbiIsCisJ
CQkgICAoZ3RfcGVyZl9zdGF0dXMgJiAoSU5URUxfR0VOKGk5MTUpID49IDkgPyAweDFmZjAwIDog
MHhmZjAwKSkgPj4gOCk7CisJCXNlcV9wcmludGYobSwgIlJlbmRlciBwLXN0YXRlIFZJRDogJWRc
biIsCisJCQkgICBndF9wZXJmX3N0YXR1cyAmIDB4ZmYpOworCQlzZXFfcHJpbnRmKG0sICJSZW5k
ZXIgcC1zdGF0ZSBsaW1pdDogJWRcbiIsCisJCQkgICBycF9zdGF0ZV9saW1pdHMgJiAweGZmKTsK
KwkJc2VxX3ByaW50ZihtLCAiUlBTVEFUMTogMHglMDh4XG4iLCBycHN0YXQpOworCQlzZXFfcHJp
bnRmKG0sICJSUE1PREVDVEw6IDB4JTA4eFxuIiwgcnBtb2RlY3RsKTsKKwkJc2VxX3ByaW50Ziht
LCAiUlBJTkNMSU1JVDogMHglMDh4XG4iLCBycGluY2xpbWl0KTsKKwkJc2VxX3ByaW50ZihtLCAi
UlBERUNMSU1JVDogMHglMDh4XG4iLCBycGRlY2xpbWl0KTsKKwkJc2VxX3ByaW50ZihtLCAiUlBO
U1dSRVE6ICVkTUh6XG4iLCByZXFmKTsKKwkJc2VxX3ByaW50ZihtLCAiQ0FHRjogJWRNSHpcbiIs
IGNhZ2YpOworCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVAgRUk6ICVkICglZHVzKVxuIiwKKwkJ
CSAgIHJwdXBlaSwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkxNSwgcnB1cGVpKSk7CisJCXNlcV9w
cmludGYobSwgIlJQIENVUiBVUDogJWQgKCVkdXMpXG4iLAorCQkJICAgcnBjdXJ1cCwgR1RfUE1f
SU5URVJWQUxfVE9fVVMoaTkxNSwgcnBjdXJ1cCkpOworCQlzZXFfcHJpbnRmKG0sICJSUCBQUkVW
IFVQOiAlZCAoJWR1cylcbiIsCisJCQkgICBycHByZXZ1cCwgR1RfUE1fSU5URVJWQUxfVE9fVVMo
aTkxNSwgcnBwcmV2dXApKTsKKwkJc2VxX3ByaW50ZihtLCAiVXAgdGhyZXNob2xkOiAlZCUlXG4i
LAorCQkJICAgcnBzLT5wb3dlci51cF90aHJlc2hvbGQpOworCisJCXNlcV9wcmludGYobSwgIlJQ
IENVUiBET1dOIEVJOiAlZCAoJWR1cylcbiIsCisJCQkgICBycGRvd25laSwgR1RfUE1fSU5URVJW
QUxfVE9fVVMoaTkxNSwgcnBkb3duZWkpKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIERPV046
ICVkICglZHVzKVxuIiwKKwkJCSAgIHJwY3VyZG93biwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkx
NSwgcnBjdXJkb3duKSk7CisJCXNlcV9wcmludGYobSwgIlJQIFBSRVYgRE9XTjogJWQgKCVkdXMp
XG4iLAorCQkJICAgcnBwcmV2ZG93biwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkxNSwgcnBwcmV2
ZG93bikpOworCQlzZXFfcHJpbnRmKG0sICJEb3duIHRocmVzaG9sZDogJWQlJVxuIiwKKwkJCSAg
IHJwcy0+cG93ZXIuZG93bl90aHJlc2hvbGQpOworCisJCW1heF9mcmVxID0gKElTX0dFTjlfTFAo
aTkxNSkgPyBycF9zdGF0ZV9jYXAgPj4gMCA6CisJCQkgICAgcnBfc3RhdGVfY2FwID4+IDE2KSAm
IDB4ZmY7CisJCW1heF9mcmVxICo9IChJU19HRU45X0JDKGk5MTUpIHx8CisJCQkgICAgIElOVEVM
X0dFTihpOTE1KSA+PSAxMCA/IEdFTjlfRlJFUV9TQ0FMRVIgOiAxKTsKKwkJc2VxX3ByaW50Ziht
LCAiTG93ZXN0IChSUE4pIGZyZXF1ZW5jeTogJWRNSHpcbiIsCisJCQkgICBpbnRlbF9ncHVfZnJl
cShycHMsIG1heF9mcmVxKSk7CisKKwkJbWF4X2ZyZXEgPSAocnBfc3RhdGVfY2FwICYgMHhmZjAw
KSA+PiA4OworCQltYXhfZnJlcSAqPSAoSVNfR0VOOV9CQyhpOTE1KSB8fAorCQkJICAgICBJTlRF
TF9HRU4oaTkxNSkgPj0gMTAgPyBHRU45X0ZSRVFfU0NBTEVSIDogMSk7CisJCXNlcV9wcmludGYo
bSwgIk5vbWluYWwgKFJQMSkgZnJlcXVlbmN5OiAlZE1IelxuIiwKKwkJCSAgIGludGVsX2dwdV9m
cmVxKHJwcywgbWF4X2ZyZXEpKTsKKworCQltYXhfZnJlcSA9IChJU19HRU45X0xQKGk5MTUpID8g
cnBfc3RhdGVfY2FwID4+IDE2IDoKKwkJCSAgICBycF9zdGF0ZV9jYXAgPj4gMCkgJiAweGZmOwor
CQltYXhfZnJlcSAqPSAoSVNfR0VOOV9CQyhpOTE1KSB8fAorCQkJICAgICBJTlRFTF9HRU4oaTkx
NSkgPj0gMTAgPyBHRU45X0ZSRVFfU0NBTEVSIDogMSk7CisJCXNlcV9wcmludGYobSwgIk1heCBu
b24tb3ZlcmNsb2NrZWQgKFJQMCkgZnJlcXVlbmN5OiAlZE1IelxuIiwKKwkJCSAgIGludGVsX2dw
dV9mcmVxKHJwcywgbWF4X2ZyZXEpKTsKKwkJc2VxX3ByaW50ZihtLCAiTWF4IG92ZXJjbG9ja2Vk
IGZyZXF1ZW5jeTogJWRNSHpcbiIsCisJCQkgICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+bWF4
X2ZyZXEpKTsKKworCQlzZXFfcHJpbnRmKG0sICJDdXJyZW50IGZyZXE6ICVkIE1IelxuIiwKKwkJ
CSAgIGludGVsX2dwdV9mcmVxKHJwcywgcnBzLT5jdXJfZnJlcSkpOworCQlzZXFfcHJpbnRmKG0s
ICJBY3R1YWwgZnJlcTogJWQgTUh6XG4iLCBjYWdmKTsKKwkJc2VxX3ByaW50ZihtLCAiSWRsZSBm
cmVxOiAlZCBNSHpcbiIsCisJCQkgICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+aWRsZV9mcmVx
KSk7CisJCXNlcV9wcmludGYobSwgIk1pbiBmcmVxOiAlZCBNSHpcbiIsCisJCQkgICBpbnRlbF9n
cHVfZnJlcShycHMsIHJwcy0+bWluX2ZyZXEpKTsKKwkJc2VxX3ByaW50ZihtLCAiQm9vc3QgZnJl
cTogJWQgTUh6XG4iLAorCQkJICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPmJvb3N0X2ZyZXEp
KTsKKwkJc2VxX3ByaW50ZihtLCAiTWF4IGZyZXE6ICVkIE1IelxuIiwKKwkJCSAgIGludGVsX2dw
dV9mcmVxKHJwcywgcnBzLT5tYXhfZnJlcSkpOworCQlzZXFfcHJpbnRmKG0sCisJCQkgICAiZWZm
aWNpZW50IChSUGUpIGZyZXF1ZW5jeTogJWQgTUh6XG4iLAorCQkJICAgaW50ZWxfZ3B1X2ZyZXEo
cnBzLCBycHMtPmVmZmljaWVudF9mcmVxKSk7CisJfSBlbHNlIHsKKwkJc2VxX3B1dHMobSwgIm5v
IFAtc3RhdGUgaW5mbyBhdmFpbGFibGVcbiIpOworCX0KKworCXNlcV9wcmludGYobSwgIkN1cnJl
bnQgQ0QgY2xvY2sgZnJlcXVlbmN5OiAlZCBrSHpcbiIsIGk5MTUtPmNkY2xrLmh3LmNkY2xrKTsK
KwlzZXFfcHJpbnRmKG0sICJNYXggQ0QgY2xvY2sgZnJlcXVlbmN5OiAlZCBrSHpcbiIsIGk5MTUt
Pm1heF9jZGNsa19mcmVxKTsKKwlzZXFfcHJpbnRmKG0sICJNYXggcGl4ZWwgY2xvY2sgZnJlcXVl
bmN5OiAlZCBrSHpcbiIsIGk5MTUtPm1heF9kb3RjbGtfZnJlcSk7CisKKwlpbnRlbF9ydW50aW1l
X3BtX3B1dCh1bmNvcmUtPnJwbSwgd2FrZXJlZik7CisKKwlyZXR1cm4gMDsKK30KK0RFRklORV9H
VF9ERUJVR0ZTX0FUVFJJQlVURShmcmVxdWVuY3kpOworCitzdGF0aWMgaW50IGxsY19zaG93KHN0
cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0g
bS0+cHJpdmF0ZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Owor
CWNvbnN0IGJvb2wgZWRyYW0gPSBJTlRFTF9HRU4oaTkxNSkgPiA4OworCXN0cnVjdCBpbnRlbF9y
cHMgKnJwcyA9ICZndC0+cnBzOworCXVuc2lnbmVkIGludCBtYXhfZ3B1X2ZyZXEsIG1pbl9ncHVf
ZnJlcTsKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKwlpbnQgZ3B1X2ZyZXEsIGlhX2ZyZXE7
CisKKwlzZXFfcHJpbnRmKG0sICJMTEM6ICVzXG4iLCB5ZXNubyhIQVNfTExDKGk5MTUpKSk7CisJ
c2VxX3ByaW50ZihtLCAiJXM6ICV1TUJcbiIsIGVkcmFtID8gImVEUkFNIiA6ICJlTExDIiwKKwkJ
ICAgaTkxNS0+ZWRyYW1fc2l6ZV9tYik7CisKKwltaW5fZ3B1X2ZyZXEgPSBycHMtPm1pbl9mcmVx
OworCW1heF9ncHVfZnJlcSA9IHJwcy0+bWF4X2ZyZXE7CisJaWYgKElTX0dFTjlfQkMoaTkxNSkg
fHwgSU5URUxfR0VOKGk5MTUpID49IDEwKSB7CisJCS8qIENvbnZlcnQgR1QgZnJlcXVlbmN5IHRv
IDUwIEhaIHVuaXRzICovCisJCW1pbl9ncHVfZnJlcSAvPSBHRU45X0ZSRVFfU0NBTEVSOworCQlt
YXhfZ3B1X2ZyZXEgLz0gR0VOOV9GUkVRX1NDQUxFUjsKKwl9CisKKwlzZXFfcHV0cyhtLCAiR1BV
IGZyZXEgKE1IeilcdEVmZmVjdGl2ZSBDUFUgZnJlcSAoTUh6KVx0RWZmZWN0aXZlIFJpbmcgZnJl
cSAoTUh6KVxuIik7CisKKwl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoZ3QtPnVuY29y
ZS0+cnBtKTsKKwlmb3IgKGdwdV9mcmVxID0gbWluX2dwdV9mcmVxOyBncHVfZnJlcSA8PSBtYXhf
Z3B1X2ZyZXE7IGdwdV9mcmVxKyspIHsKKwkJaWFfZnJlcSA9IGdwdV9mcmVxOworCQlzYW5keWJy
aWRnZV9wY29kZV9yZWFkKGk5MTUsCisJCQkJICAgICAgIEdFTjZfUENPREVfUkVBRF9NSU5fRlJF
UV9UQUJMRSwKKwkJCQkgICAgICAgJmlhX2ZyZXEsIE5VTEwpOworCQlzZXFfcHJpbnRmKG0sICIl
ZFx0XHQlZFx0XHRcdFx0JWRcbiIsCisJCQkgICBpbnRlbF9ncHVfZnJlcShycHMsCisJCQkJCSAg
KGdwdV9mcmVxICoKKwkJCQkJICAgKElTX0dFTjlfQkMoaTkxNSkgfHwKKwkJCQkJICAgIElOVEVM
X0dFTihpOTE1KSA+PSAxMCA/CisJCQkJCSAgICBHRU45X0ZSRVFfU0NBTEVSIDogMSkpKSwKKwkJ
CSAgICgoaWFfZnJlcSA+PiAwKSAmIDB4ZmYpICogMTAwLAorCQkJICAgKChpYV9mcmVxID4+IDgp
ICYgMHhmZikgKiAxMDApOworCX0KKwlpbnRlbF9ydW50aW1lX3BtX3B1dChndC0+dW5jb3JlLT5y
cG0sIHdha2VyZWYpOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBib29sIGxsY19ldmFsKGNv
bnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJcmV0dXJuIEhBU19MTEMoZ3QtPmk5MTUpOwor
fQorCitERUZJTkVfR1RfREVCVUdGU19BVFRSSUJVVEUobGxjKTsKKworc3RhdGljIGNvbnN0IGNo
YXIgKnJwc19wb3dlcl90b19zdHIodW5zaWduZWQgaW50IHBvd2VyKQoreworCXN0YXRpYyBjb25z
dCBjaGFyICogY29uc3Qgc3RyaW5nc1tdID0geworCQlbTE9XX1BPV0VSXSA9ICJsb3cgcG93ZXIi
LAorCQlbQkVUV0VFTl0gPSAibWl4ZWQiLAorCQlbSElHSF9QT1dFUl0gPSAiaGlnaCBwb3dlciIs
CisJfTsKKworCWlmIChwb3dlciA+PSBBUlJBWV9TSVpFKHN0cmluZ3MpIHx8ICFzdHJpbmdzW3Bv
d2VyXSkKKwkJcmV0dXJuICJ1bmtub3duIjsKKworCXJldHVybiBzdHJpbmdzW3Bvd2VyXTsKK30K
Kworc3RhdGljIGludCBycHNfYm9vc3Rfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRh
dGEpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IG0tPnByaXZhdGU7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKwlzdHJ1Y3QgaW50ZWxfcnBzICpycHMgPSAm
Z3QtPnJwczsKKworCXNlcV9wcmludGYobSwgIlJQUyBlbmFibGVkPyAlZFxuIiwgcnBzLT5lbmFi
bGVkKTsKKwlzZXFfcHJpbnRmKG0sICJHUFUgYnVzeT8gJXNcbiIsIHllc25vKGd0LT5hd2FrZSkp
OworCXNlcV9wcmludGYobSwgIkJvb3N0cyBvdXRzdGFuZGluZz8gJWRcbiIsCisJCSAgIGF0b21p
Y19yZWFkKCZycHMtPm51bV93YWl0ZXJzKSk7CisJc2VxX3ByaW50ZihtLCAiSW50ZXJhY3RpdmU/
ICVkXG4iLCBSRUFEX09OQ0UocnBzLT5wb3dlci5pbnRlcmFjdGl2ZSkpOworCXNlcV9wcmludGYo
bSwgIkZyZXF1ZW5jeSByZXF1ZXN0ZWQgJWQsIGFjdHVhbCAlZFxuIiwKKwkJICAgaW50ZWxfZ3B1
X2ZyZXEocnBzLCBycHMtPmN1cl9mcmVxKSwKKwkJICAgaW50ZWxfcnBzX3JlYWRfYWN0dWFsX2Zy
ZXF1ZW5jeShycHMpKTsKKwlzZXFfcHJpbnRmKG0sICIgIG1pbiBoYXJkOiVkLCBzb2Z0OiVkOyBt
YXggc29mdDolZCwgaGFyZDolZFxuIiwKKwkJICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPm1p
bl9mcmVxKSwKKwkJICAgaW50ZWxfZ3B1X2ZyZXEocnBzLCBycHMtPm1pbl9mcmVxX3NvZnRsaW1p
dCksCisJCSAgIGludGVsX2dwdV9mcmVxKHJwcywgcnBzLT5tYXhfZnJlcV9zb2Z0bGltaXQpLAor
CQkgICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+bWF4X2ZyZXEpKTsKKwlzZXFfcHJpbnRmKG0s
ICIgIGlkbGU6JWQsIGVmZmljaWVudDolZCwgYm9vc3Q6JWRcbiIsCisJCSAgIGludGVsX2dwdV9m
cmVxKHJwcywgcnBzLT5pZGxlX2ZyZXEpLAorCQkgICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+
ZWZmaWNpZW50X2ZyZXEpLAorCQkgICBpbnRlbF9ncHVfZnJlcShycHMsIHJwcy0+Ym9vc3RfZnJl
cSkpOworCisJc2VxX3ByaW50ZihtLCAiV2FpdCBib29zdHM6ICVkXG4iLCBhdG9taWNfcmVhZCgm
cnBzLT5ib29zdHMpKTsKKworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNiAmJiBycHMtPmVuYWJs
ZWQgJiYgZ3QtPmF3YWtlKSB7CisJCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51
bmNvcmU7CisJCXUzMiBycHVwLCBycHVwZWk7CisJCXUzMiBycGRvd24sIHJwZG93bmVpOworCisJ
CWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisJCXJw
dXAgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUlBfQ1VSX1VQKSAmIEdFTjZf
UlBfRUlfTUFTSzsKKwkJcnB1cGVpID0gaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCBHRU42
X1JQX0NVUl9VUF9FSSkgJiBHRU42X1JQX0VJX01BU0s7CisJCXJwZG93biA9IGludGVsX3VuY29y
ZV9yZWFkX2Z3KHVuY29yZSwgR0VONl9SUF9DVVJfRE9XTikgJiBHRU42X1JQX0VJX01BU0s7CisJ
CXJwZG93bmVpID0gaW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCBHRU42X1JQX0NVUl9ET1dO
X0VJKSAmIEdFTjZfUlBfRUlfTUFTSzsKKwkJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQodW5j
b3JlLCBGT1JDRVdBS0VfQUxMKTsKKworCQlzZXFfcHJpbnRmKG0sICJcblJQUyBBdXRvdHVuaW5n
IChjdXJyZW50IFwiJXNcIiB3aW5kb3cpOlxuIiwKKwkJCSAgIHJwc19wb3dlcl90b19zdHIocnBz
LT5wb3dlci5tb2RlKSk7CisJCXNlcV9wcmludGYobSwgIiAgQXZnLiB1cDogJWQlJSBbYWJvdmUg
dGhyZXNob2xkPyAlZCUlXVxuIiwKKwkJCSAgIHJwdXAgJiYgcnB1cGVpID8gMTAwICogcnB1cCAv
IHJwdXBlaSA6IDAsCisJCQkgICBycHMtPnBvd2VyLnVwX3RocmVzaG9sZCk7CisJCXNlcV9wcmlu
dGYobSwgIiAgQXZnLiBkb3duOiAlZCUlIFtiZWxvdyB0aHJlc2hvbGQ/ICVkJSVdXG4iLAorCQkJ
ICAgcnBkb3duICYmIHJwZG93bmVpID8gMTAwICogcnBkb3duIC8gcnBkb3duZWkgOiAwLAorCQkJ
ICAgcnBzLT5wb3dlci5kb3duX3RocmVzaG9sZCk7CisJfSBlbHNlIHsKKwkJc2VxX3B1dHMobSwg
IlxuUlBTIEF1dG90dW5pbmcgaW5hY3RpdmVcbiIpOworCX0KKworCXJldHVybiAwOworfQorCitz
dGF0aWMgYm9vbCBycHNfZXZhbChjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCXJldHVy
biBIQVNfUlBTKGd0LT5pOTE1KTsKK30KKworREVGSU5FX0dUX0RFQlVHRlNfQVRUUklCVVRFKHJw
c19ib29zdCk7CisKK3ZvaWQgZGVidWdmc19ndF9wbV9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCBzdHJ1Y3QgZGVudHJ5ICpyb290KQoreworCXN0YXRpYyBjb25zdCBzdHJ1Y3QgZGVidWdm
c19ndF9maWxlIGZpbGVzW10gPSB7CisJCXsgImRycGMiLCAmZHJwY19mb3BzLCBOVUxMIH0sCisJ
CXsgImZyZXF1ZW5jeSIsICZmcmVxdWVuY3lfZm9wcywgTlVMTCB9LAorCQl7ICJmb3JjZXdha2Ui
LCAmZndfZG9tYWluc19mb3BzLCBOVUxMIH0sCisJCXsgImxsYyIsICZsbGNfZm9wcywgbGxjX2V2
YWwgfSwKKwkJeyAicnBzX2Jvb3N0IiwgJnJwc19ib29zdF9mb3BzLCBycHNfZXZhbCB9LAorCX07
CisKKwlkZWJ1Z2ZzX2d0X3JlZ2lzdGVyX2ZpbGVzKGd0LCByb290LCBmaWxlcywgQVJSQVlfU0la
RShmaWxlcykpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdm
c19ndF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndF9wbS5oCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNGNmNWY1YzlkYTdkCi0tLSAvZGV2
L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndF9wbS5oCkBAIC0w
LDAgKzEsMTQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBD
b3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgREVCVUdG
U19HVF9QTV9ICisjZGVmaW5lIERFQlVHRlNfR1RfUE1fSAorCitzdHJ1Y3QgaW50ZWxfZ3Q7Citz
dHJ1Y3QgZGVudHJ5OworCit2b2lkIGRlYnVnZnNfZ3RfcG1fcmVnaXN0ZXIoc3RydWN0IGludGVs
X2d0ICpndCwgc3RydWN0IGRlbnRyeSAqcm9vdCk7CisKKyNlbmRpZiAvKiBERUJVR0ZTX0dUX1BN
X0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IDE3MjEwMmE2YzVmYi4uZWM4
NGI1ZTYyZmVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTMsNiArMyw3IEBA
CiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgogICovCiAKKyNpbmNsdWRl
ICJkZWJ1Z2ZzX2d0LmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9j
b250ZXh0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKQEAgLTMyNSw2ICszMjYsOCBAQCB2b2lk
IGludGVsX2d0X2NoaXBzZXRfZmx1c2goc3RydWN0IGludGVsX2d0ICpndCkKIHZvaWQgaW50ZWxf
Z3RfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJaW50ZWxfcnBzX2Ry
aXZlcl9yZWdpc3RlcigmZ3QtPnJwcyk7CisKKwlkZWJ1Z2ZzX2d0X3JlZ2lzdGVyKGd0KTsKIH0K
IAogc3RhdGljIGludCBpbnRlbF9ndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCwg
dW5zaWduZWQgaW50IHNpemUpCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
