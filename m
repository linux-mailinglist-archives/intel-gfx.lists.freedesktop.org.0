Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832AFDD3A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1876E554;
	Fri, 15 Nov 2019 12:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09436E554
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:17:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19211883-1500050 
 for multiple; Fri, 15 Nov 2019 12:17:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 12:17:12 +0000
Message-Id: <20191115121712.809037-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Exercise the per-batch whitelist
 from the context
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

T25lIGRvZXMgbm90IGxpZ2h0bHkgYWRkIGEgbmV3IGhpZGRlbiBzdHJ1Y3RfbXV0ZXggZGVwZW5k
ZW5jeSBkZWVwIHdpdGhpbgp0aGUgZXhlY2J1ZiBib3dlbHMhIFRoZSBpbW1lZGlhdGUgc3VzcGlj
aW9uIGluIHNlZWluZyB0aGUgd2hpdGVsaXN0CmNhY2hlZCBvbiB0aGUgY29udGV4dCwgaXMgdGhh
dCBpdCBpcyBpbnRlbmRlZCB0byBiZSBwcmVzZXJ2ZWQgYmV0d2VlbgpiYXRjaGVzLCBhcyB0aGUg
a2VybmVsIGlzIHF1aXRlIGFkZXB0IGF0IGNhY2hpbmcgc21hbGwgYWxsb2NhdGlvbnMKaXRzZWxm
LiBCdXQgbm8sIGl0J3Mgc29sZSBwdXJwb3NlIGlzIHRvIHNlcmlhbGlzZSBjb21tYW5kIHN1Ym1p
c3Npb24gaW4Kb3JkZXIgdG8gc2F2ZSBhIGttYWxsb2Mgb24gYSBzbG93LCBzbG93IHBhdGghCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDUgLS0KIC4uLi9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaCB8ICA3IC0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMgICAgICAgIHwgNTkgKysrKysrKy0tLS0tLS0tLS0tLQog
MyBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA1MSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAxMjg0ZjQ3MzAz
ZmEuLjE3ZjM5NTY3MmU1ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jCkBAIC0yNzQsOCArMjc0LDYgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fY29udGV4
dF9mcmVlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCiAJZnJlZV9lbmdpbmVzKHJjdV9h
Y2Nlc3NfcG9pbnRlcihjdHgtPmVuZ2luZXMpKTsKIAltdXRleF9kZXN0cm95KCZjdHgtPmVuZ2lu
ZXNfbXV0ZXgpOwogCi0Ja2ZyZWUoY3R4LT5qdW1wX3doaXRlbGlzdCk7Ci0KIAlpZiAoY3R4LT50
aW1lbGluZSkKIAkJaW50ZWxfdGltZWxpbmVfcHV0KGN0eC0+dGltZWxpbmUpOwogCkBAIC01ODMs
OSArNTgxLDYgQEAgX19jcmVhdGVfY29udGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShjdHgtPmhhbmdfdGltZXN0YW1wKTsgaSsr
KQogCQljdHgtPmhhbmdfdGltZXN0YW1wW2ldID0gamlmZmllcyAtIENPTlRFWFRfRkFTVF9IQU5H
X0pJRkZJRVM7CiAKLQljdHgtPmp1bXBfd2hpdGVsaXN0ID0gTlVMTDsKLQljdHgtPmp1bXBfd2hp
dGVsaXN0X2NtZHMgPSAwOwotCiAJc3Bpbl9sb2NrKCZpOTE1LT5nZW0uY29udGV4dHMubG9jayk7
CiAJbGlzdF9hZGRfdGFpbCgmY3R4LT5saW5rLCAmaTkxNS0+Z2VtLmNvbnRleHRzLmxpc3QpOwog
CXNwaW5fdW5sb2NrKCZpOTE1LT5nZW0uY29udGV4dHMubG9jayk7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAppbmRleCBjMDYwYmM0Mjhm
NDkuLjY5ZGY1NDU5YzM1MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dF90eXBlcy5oCkBAIC0xNjgsMTMgKzE2OCw2IEBAIHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0IHsKIAkgKi8KIAlzdHJ1Y3QgcmFkaXhfdHJlZV9yb290IGhhbmRsZXNfdm1hOwog
Ci0JLyoqIGp1bXBfd2hpdGVsaXN0OiBCaXQgYXJyYXkgZm9yIHRyYWNraW5nIGNtZHMgZHVyaW5n
IGNtZHBhcnNpbmcKLQkgKiAgR3VhcmRlZCBieSBzdHJ1Y3RfbXV0ZXgKLQkgKi8KLQl1bnNpZ25l
ZCBsb25nICpqdW1wX3doaXRlbGlzdDsKLQkvKioganVtcF93aGl0ZWxpc3RfY21kczogTm8gb2Yg
Y21kIHNsb3RzIGF2YWlsYWJsZSAqLwotCXUzMiBqdW1wX3doaXRlbGlzdF9jbWRzOwotCiAJLyoq
CiAJICogQG5hbWU6IGFyYml0cmFyeSBuYW1lLCB1c2VkIGZvciB1c2VyIGRlYnVnCiAJICoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKaW5kZXggZjI0MDk2ZTI3YmVmLi42NGY0
NGQ3Yjg2YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNl
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCkBAIC0xMzEw
LDcgKzEzMTAsOCBAQCBzdGF0aWMgaW50IGNoZWNrX2Jic3RhcnQoY29uc3Qgc3RydWN0IGk5MTVf
Z2VtX2NvbnRleHQgKmN0eCwKIAkJCSB1MzIgKmNtZCwgdTMyIG9mZnNldCwgdTMyIGxlbmd0aCwK
IAkJCSB1MzIgYmF0Y2hfbGVuLAogCQkJIHU2NCBiYXRjaF9zdGFydCwKLQkJCSB1NjQgc2hhZG93
X2JhdGNoX3N0YXJ0KQorCQkJIHU2NCBzaGFkb3dfYmF0Y2hfc3RhcnQsCisJCQkgdW5zaWduZWQg
bG9uZyAqanVtcF93aGl0ZWxpc3QpCiB7CiAJdTY0IGp1bXBfb2Zmc2V0LCBqdW1wX3RhcmdldDsK
IAl1MzIgdGFyZ2V0X2NtZF9vZmZzZXQsIHRhcmdldF9jbWRfaW5kZXg7CkBAIC0xMzUyLDEwICsx
MzUzLDcgQEAgc3RhdGljIGludCBjaGVja19iYnN0YXJ0KGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCiAJaWYgKHRhcmdldF9jbWRfaW5kZXggPT0gb2Zmc2V0KQogCQlyZXR1cm4g
MDsKIAotCWlmIChjdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMgPD0gdGFyZ2V0X2NtZF9pbmRleCkg
ewotCQlEUk1fREVCVUcoIkNNRDogUmVqZWN0aW5nIEJCX1NUQVJUIC0gdHJ1bmNhdGVkIHdoaXRl
bGlzdCBhcnJheVxuIik7Ci0JCXJldHVybiAtRUlOVkFMOwotCX0gZWxzZSBpZiAoIXRlc3RfYml0
KHRhcmdldF9jbWRfaW5kZXgsIGN0eC0+anVtcF93aGl0ZWxpc3QpKSB7CisJaWYgKCF0ZXN0X2Jp
dCh0YXJnZXRfY21kX2luZGV4LCBqdW1wX3doaXRlbGlzdCkpIHsKIAkJRFJNX0RFQlVHKCJDTUQ6
IEJCX1NUQVJUIHRvIDB4JWxseCBub3QgYSBwcmV2aW91c2x5IGV4ZWN1dGVkIGNtZFxuIiwKIAkJ
CSAganVtcF90YXJnZXQpOwogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTEzNjQsNDAgKzEzNjIsMTkg
QEAgc3RhdGljIGludCBjaGVja19iYnN0YXJ0KGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgsCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB2b2lkIGluaXRfd2hpdGVsaXN0KHN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsIHUzMiBiYXRjaF9sZW4pCitzdGF0aWMgdW5zaWduZWQg
bG9uZyAqCithbGxvY193aGl0ZWxpc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUz
MiBiYXRjaF9sZW4pCiB7Ci0JY29uc3QgdTMyIGJhdGNoX2NtZHMgPSBESVZfUk9VTkRfVVAoYmF0
Y2hfbGVuLCBzaXplb2YodTMyKSk7Ci0JY29uc3QgdTMyIGV4YWN0X3NpemUgPSBCSVRTX1RPX0xP
TkdTKGJhdGNoX2NtZHMpOwotCXUzMiBuZXh0X3NpemUgPSBCSVRTX1RPX0xPTkdTKHJvdW5kdXBf
cG93X29mX3R3byhiYXRjaF9jbWRzKSk7Ci0JdW5zaWduZWQgbG9uZyAqbmV4dF93aGl0ZWxpc3Q7
Ci0KLQlpZiAoQ01EUEFSU0VSX1VTRVNfR0dUVChjdHgtPmk5MTUpKQotCQlyZXR1cm47Ci0KLQlp
ZiAoYmF0Y2hfY21kcyA8PSBjdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMpIHsKLQkJYml0bWFwX3pl
cm8oY3R4LT5qdW1wX3doaXRlbGlzdCwgYmF0Y2hfY21kcyk7Ci0JCXJldHVybjsKLQl9CisJdW5z
aWduZWQgbG9uZyAqam1wOwogCi1hZ2FpbjoKLQluZXh0X3doaXRlbGlzdCA9IGtjYWxsb2MobmV4
dF9zaXplLCBzaXplb2YobG9uZyksIEdGUF9LRVJORUwpOwotCWlmIChuZXh0X3doaXRlbGlzdCkg
ewotCQlrZnJlZShjdHgtPmp1bXBfd2hpdGVsaXN0KTsKLQkJY3R4LT5qdW1wX3doaXRlbGlzdCA9
IG5leHRfd2hpdGVsaXN0OwotCQljdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMgPQotCQkJbmV4dF9z
aXplICogQklUU19QRVJfQllURSAqIHNpemVvZihsb25nKTsKLQkJcmV0dXJuOwotCX0KLQotCWlm
IChuZXh0X3NpemUgPiBleGFjdF9zaXplKSB7Ci0JCW5leHRfc2l6ZSA9IGV4YWN0X3NpemU7Ci0J
CWdvdG8gYWdhaW47Ci0JfQorCWlmIChDTURQQVJTRVJfVVNFU19HR1RUKGk5MTUpKQorCQlyZXR1
cm4gTlVMTDsKIAotCURSTV9ERUJVRygiQ01EOiBGYWlsZWQgdG8gZXh0ZW5kIHdoaXRlbGlzdC4g
QkJfU1RBUlQgbWF5IGJlIGRpc2FsbG93ZWRcbiIpOwotCWJpdG1hcF96ZXJvKGN0eC0+anVtcF93
aGl0ZWxpc3QsIGN0eC0+anVtcF93aGl0ZWxpc3RfY21kcyk7CisJam1wID0gYml0bWFwX3phbGxv
YyhESVZfUk9VTkRfVVAoYmF0Y2hfbGVuLCBzaXplb2YodTMyKSksIEdGUF9LRVJORUwpOworCWlm
ICgham1wKQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotCXJldHVybjsKKwlyZXR1cm4g
am1wOwogfQogCiAjZGVmaW5lIExFTkdUSF9CSUFTIDIKQEAgLTE0MzMsNiArMTQxMCw3IEBAIGlu
dCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAog
CXN0cnVjdCBkcm1faTkxNV9jbWRfZGVzY3JpcHRvciBkZWZhdWx0X2Rlc2MgPSBub29wX2Rlc2M7
CiAJY29uc3Qgc3RydWN0IGRybV9pOTE1X2NtZF9kZXNjcmlwdG9yICpkZXNjID0gJmRlZmF1bHRf
ZGVzYzsKIAlib29sIG5lZWRzX2NsZmx1c2hfYWZ0ZXIgPSBmYWxzZTsKKwl1bnNpZ25lZCBsb25n
ICpqdW1wX3doaXRlbGlzdDsKIAlpbnQgcmV0ID0gMDsKIAogCWNtZCA9IGNvcHlfYmF0Y2goc2hh
ZG93X2JhdGNoX29iaiwgYmF0Y2hfb2JqLApAQCAtMTQ0Myw3ICsxNDIxLDkgQEAgaW50IGludGVs
X2VuZ2luZV9jbWRfcGFyc2VyKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCXJldHVy
biBQVFJfRVJSKGNtZCk7CiAJfQogCi0JaW5pdF93aGl0ZWxpc3QoY3R4LCBiYXRjaF9sZW4pOwor
CWp1bXBfd2hpdGVsaXN0ID0gYWxsb2Nfd2hpdGVsaXN0KGN0eC0+aTkxNSwgYmF0Y2hfbGVuKTsK
KwlpZiAoSVNfRVJSKGp1bXBfd2hpdGVsaXN0KSkKKwkJcmV0dXJuIFBUUl9FUlIoanVtcF93aGl0
ZWxpc3QpOwogCiAJLyoKIAkgKiBXZSB1c2UgdGhlIGJhdGNoIGxlbmd0aCBhcyBzaXplIGJlY2F1
c2UgdGhlIHNoYWRvdyBvYmplY3QgaXMgYXMKQEAgLTE0ODcsMTUgKzE0NjcsMTUgQEAgaW50IGlu
dGVsX2VuZ2luZV9jbWRfcGFyc2VyKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCWlm
IChkZXNjLT5jbWQudmFsdWUgPT0gTUlfQkFUQ0hfQlVGRkVSX1NUQVJUKSB7CiAJCQlyZXQgPSBj
aGVja19iYnN0YXJ0KGN0eCwgY21kLCBvZmZzZXQsIGxlbmd0aCwKIAkJCQkJICAgIGJhdGNoX2xl
biwgYmF0Y2hfc3RhcnQsCi0JCQkJCSAgICBzaGFkb3dfYmF0Y2hfc3RhcnQpOworCQkJCQkgICAg
c2hhZG93X2JhdGNoX3N0YXJ0LAorCQkJCQkgICAganVtcF93aGl0ZWxpc3QpOwogCiAJCQlpZiAo
cmV0KQogCQkJCWdvdG8gZXJyOwogCQkJYnJlYWs7CiAJCX0KIAotCQlpZiAoY3R4LT5qdW1wX3do
aXRlbGlzdF9jbWRzID4gb2Zmc2V0KQotCQkJc2V0X2JpdChvZmZzZXQsIGN0eC0+anVtcF93aGl0
ZWxpc3QpOworCQlzZXRfYml0KG9mZnNldCwganVtcF93aGl0ZWxpc3QpOwogCiAJCWNtZCArPSBs
ZW5ndGg7CiAJCW9mZnNldCArPSBsZW5ndGg7CkBAIC0xNTEzLDYgKzE0OTMsNyBAQCBpbnQgaW50
ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAl9CiAK
IGVycjoKKwlrZnJlZShqdW1wX3doaXRlbGlzdCk7CiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX21h
cChzaGFkb3dfYmF0Y2hfb2JqKTsKIAlyZXR1cm4gcmV0OwogfQotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
