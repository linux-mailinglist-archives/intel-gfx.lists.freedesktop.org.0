Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 273D410C7FF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF246E7C1;
	Thu, 28 Nov 2019 11:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B965895E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:34:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19374254-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:34:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 11:34:24 +0000
Message-Id: <20191128113424.3885958-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Excise the per-batch whitelist from
 the context
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
c3Npb24gaW4Kb3JkZXIgdG8gc2F2ZSBhIGttYWxsb2Mgb24gYSBzbG93LCBzbG93IHBhdGghCgpC
eSByZW1vdmluZyB0aGUgd2hpdGVsaXN0IGRlcGVuZGVuY3kgZnJvbSB0aGUgY29udGV4dCwgb3Vy
IGZyZWVkb20gdG8KY2hvcCB0aGUgYmlnIHN0cnVjdF9tdXRleCBpcyBncmVhdGx5IGF1Z21lbnRl
ZC4KCnYyOiBzL3NldF9iaXQvX19zZXRfYml0LyBhcyB0aGUgd2hpdGVsaXN0IHNoYWxsIG5ldmVy
IGJlIGFjY2Vzc2VkCmNvbmN1cnJlbnRseS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4
LmludGVsLmNvbT4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAg
IHwgIDUgLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaCB8
ICA3IC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYyAgICAgICAgfCA2
NyArKysrKysrKy0tLS0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyks
IDUyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCmluZGV4IGM5NGFjODM4NDAxYS4uYTE3OWUxNzBjOTM2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTI3NSw4ICsyNzUsNiBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV9jb250ZXh0X2ZyZWUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eCkKIAlmcmVlX2VuZ2luZXMocmN1X2FjY2Vzc19wb2ludGVyKGN0eC0+ZW5naW5lcykpOwogCW11
dGV4X2Rlc3Ryb3koJmN0eC0+ZW5naW5lc19tdXRleCk7CiAKLQlrZnJlZShjdHgtPmp1bXBfd2hp
dGVsaXN0KTsKLQogCWlmIChjdHgtPnRpbWVsaW5lKQogCQlpbnRlbF90aW1lbGluZV9wdXQoY3R4
LT50aW1lbGluZSk7CiAKQEAgLTU4NCw5ICs1ODIsNiBAQCBfX2NyZWF0ZV9jb250ZXh0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGN0
eC0+aGFuZ190aW1lc3RhbXApOyBpKyspCiAJCWN0eC0+aGFuZ190aW1lc3RhbXBbaV0gPSBqaWZm
aWVzIC0gQ09OVEVYVF9GQVNUX0hBTkdfSklGRklFUzsKIAotCWN0eC0+anVtcF93aGl0ZWxpc3Qg
PSBOVUxMOwotCWN0eC0+anVtcF93aGl0ZWxpc3RfY21kcyA9IDA7Ci0KIAlzcGluX2xvY2soJmk5
MTUtPmdlbS5jb250ZXh0cy5sb2NrKTsKIAlsaXN0X2FkZF90YWlsKCZjdHgtPmxpbmssICZpOTE1
LT5nZW0uY29udGV4dHMubGlzdCk7CiAJc3Bpbl91bmxvY2soJmk5MTUtPmdlbS5jb250ZXh0cy5s
b2NrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90
eXBlcy5oCmluZGV4IGMwNjBiYzQyOGY0OS4uNjlkZjU0NTljMzUwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgKQEAgLTE2OCwxMyAr
MTY4LDYgQEAgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgewogCSAqLwogCXN0cnVjdCByYWRpeF90
cmVlX3Jvb3QgaGFuZGxlc192bWE7CiAKLQkvKioganVtcF93aGl0ZWxpc3Q6IEJpdCBhcnJheSBm
b3IgdHJhY2tpbmcgY21kcyBkdXJpbmcgY21kcGFyc2luZwotCSAqICBHdWFyZGVkIGJ5IHN0cnVj
dF9tdXRleAotCSAqLwotCXVuc2lnbmVkIGxvbmcgKmp1bXBfd2hpdGVsaXN0OwotCS8qKiBqdW1w
X3doaXRlbGlzdF9jbWRzOiBObyBvZiBjbWQgc2xvdHMgYXZhaWxhYmxlICovCi0JdTMyIGp1bXBf
d2hpdGVsaXN0X2NtZHM7Ci0KIAkvKioKIAkgKiBAbmFtZTogYXJiaXRyYXJ5IG5hbWUsIHVzZWQg
Zm9yIHVzZXIgZGVidWcKIAkgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9jbWRfcGFyc2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYwpp
bmRleCBmMjQwOTZlMjdiZWYuLjIxM2FjZTUwY2QwOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9jbWRfcGFyc2VyLmMKQEAgLTEzMTAsMTMgKzEzMTAsMTQgQEAgc3RhdGljIGludCBjaGVja19i
YnN0YXJ0KGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCQkgdTMyICpjbWQs
IHUzMiBvZmZzZXQsIHUzMiBsZW5ndGgsCiAJCQkgdTMyIGJhdGNoX2xlbiwKIAkJCSB1NjQgYmF0
Y2hfc3RhcnQsCi0JCQkgdTY0IHNoYWRvd19iYXRjaF9zdGFydCkKKwkJCSB1NjQgc2hhZG93X2Jh
dGNoX3N0YXJ0LAorCQkJIGNvbnN0IHVuc2lnbmVkIGxvbmcgKmp1bXBfd2hpdGVsaXN0KQogewog
CXU2NCBqdW1wX29mZnNldCwganVtcF90YXJnZXQ7CiAJdTMyIHRhcmdldF9jbWRfb2Zmc2V0LCB0
YXJnZXRfY21kX2luZGV4OwogCiAJLyogRm9yIGlndCBjb21wYXRpYmlsaXR5IG9uIG9sZGVyIHBs
YXRmb3JtcyAqLwotCWlmIChDTURQQVJTRVJfVVNFU19HR1RUKGN0eC0+aTkxNSkpIHsKKwlpZiAo
IWp1bXBfd2hpdGVsaXN0KSB7CiAJCURSTV9ERUJVRygiQ01EOiBSZWplY3RpbmcgQkJfU1RBUlQg
Zm9yIGdndHQgYmFzZWQgc3VibWlzc2lvblxuIik7CiAJCXJldHVybiAtRUFDQ0VTOwogCX0KQEAg
LTEzNTIsMTAgKzEzNTMsMTAgQEAgc3RhdGljIGludCBjaGVja19iYnN0YXJ0KGNvbnN0IHN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJaWYgKHRhcmdldF9jbWRfaW5kZXggPT0gb2Zmc2V0
KQogCQlyZXR1cm4gMDsKIAotCWlmIChjdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMgPD0gdGFyZ2V0
X2NtZF9pbmRleCkgewotCQlEUk1fREVCVUcoIkNNRDogUmVqZWN0aW5nIEJCX1NUQVJUIC0gdHJ1
bmNhdGVkIHdoaXRlbGlzdCBhcnJheVxuIik7Ci0JCXJldHVybiAtRUlOVkFMOwotCX0gZWxzZSBp
ZiAoIXRlc3RfYml0KHRhcmdldF9jbWRfaW5kZXgsIGN0eC0+anVtcF93aGl0ZWxpc3QpKSB7CisJ
aWYgKElTX0VSUihqdW1wX3doaXRlbGlzdCkpCisJCXJldHVybiBQVFJfRVJSKGp1bXBfd2hpdGVs
aXN0KTsKKworCWlmICghdGVzdF9iaXQodGFyZ2V0X2NtZF9pbmRleCwganVtcF93aGl0ZWxpc3Qp
KSB7CiAJCURSTV9ERUJVRygiQ01EOiBCQl9TVEFSVCB0byAweCVsbHggbm90IGEgcHJldmlvdXNs
eSBleGVjdXRlZCBjbWRcbiIsCiAJCQkgIGp1bXBfdGFyZ2V0KTsKIAkJcmV0dXJuIC1FSU5WQUw7
CkBAIC0xMzY0LDQwICsxMzY1LDIxIEBAIHN0YXRpYyBpbnQgY2hlY2tfYmJzdGFydChjb25zdCBz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCXJldHVybiAwOwogfQogCi1zdGF0aWMgdm9p
ZCBpbml0X3doaXRlbGlzdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LCB1MzIgYmF0Y2hf
bGVuKQorc3RhdGljIHVuc2lnbmVkIGxvbmcgKgorYWxsb2Nfd2hpdGVsaXN0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LCB1MzIgYmF0Y2hfbGVuKQogewotCWNvbnN0IHUzMiBiYXRjaF9j
bWRzID0gRElWX1JPVU5EX1VQKGJhdGNoX2xlbiwgc2l6ZW9mKHUzMikpOwotCWNvbnN0IHUzMiBl
eGFjdF9zaXplID0gQklUU19UT19MT05HUyhiYXRjaF9jbWRzKTsKLQl1MzIgbmV4dF9zaXplID0g
QklUU19UT19MT05HUyhyb3VuZHVwX3Bvd19vZl90d28oYmF0Y2hfY21kcykpOwotCXVuc2lnbmVk
IGxvbmcgKm5leHRfd2hpdGVsaXN0OwotCi0JaWYgKENNRFBBUlNFUl9VU0VTX0dHVFQoY3R4LT5p
OTE1KSkKLQkJcmV0dXJuOwotCi0JaWYgKGJhdGNoX2NtZHMgPD0gY3R4LT5qdW1wX3doaXRlbGlz
dF9jbWRzKSB7Ci0JCWJpdG1hcF96ZXJvKGN0eC0+anVtcF93aGl0ZWxpc3QsIGJhdGNoX2NtZHMp
OwotCQlyZXR1cm47Ci0JfQotCi1hZ2FpbjoKLQluZXh0X3doaXRlbGlzdCA9IGtjYWxsb2MobmV4
dF9zaXplLCBzaXplb2YobG9uZyksIEdGUF9LRVJORUwpOwotCWlmIChuZXh0X3doaXRlbGlzdCkg
ewotCQlrZnJlZShjdHgtPmp1bXBfd2hpdGVsaXN0KTsKLQkJY3R4LT5qdW1wX3doaXRlbGlzdCA9
IG5leHRfd2hpdGVsaXN0OwotCQljdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMgPQotCQkJbmV4dF9z
aXplICogQklUU19QRVJfQllURSAqIHNpemVvZihsb25nKTsKLQkJcmV0dXJuOwotCX0KKwl1bnNp
Z25lZCBsb25nICpqbXA7CiAKLQlpZiAobmV4dF9zaXplID4gZXhhY3Rfc2l6ZSkgewotCQluZXh0
X3NpemUgPSBleGFjdF9zaXplOwotCQlnb3RvIGFnYWluOwotCX0KKwlpZiAoQ01EUEFSU0VSX1VT
RVNfR0dUVChpOTE1KSkKKwkJcmV0dXJuIE5VTEw7CiAKLQlEUk1fREVCVUcoIkNNRDogRmFpbGVk
IHRvIGV4dGVuZCB3aGl0ZWxpc3QuIEJCX1NUQVJUIG1heSBiZSBkaXNhbGxvd2VkXG4iKTsKLQli
aXRtYXBfemVybyhjdHgtPmp1bXBfd2hpdGVsaXN0LCBjdHgtPmp1bXBfd2hpdGVsaXN0X2NtZHMp
OworCS8qIFByZWZlciB0byByZXBvcnQgdHJhbnNpZW50IGFsbG9jYXRpb24gZmFpbHVyZSByYXRo
ZXIgdGhhbiBoaXQgb29tICovCisJam1wID0gYml0bWFwX3phbGxvYyhESVZfUk9VTkRfVVAoYmF0
Y2hfbGVuLCBzaXplb2YodTMyKSksCisJCQkgICAgR0ZQX0tFUk5FTCB8IF9fR0ZQX1JFVFJZX01B
WUZBSUwgfCBfX0dGUF9OT1dBUk4pOworCWlmICgham1wKQorCQlyZXR1cm4gRVJSX1BUUigtRU5P
TUVNKTsKIAotCXJldHVybjsKKwlyZXR1cm4gam1wOwogfQogCiAjZGVmaW5lIExFTkdUSF9CSUFT
IDIKQEAgLTE0MzMsNiArMTQxNSw3IEBAIGludCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCXN0cnVjdCBkcm1faTkxNV9jbWRfZGVzY3JpcHRv
ciBkZWZhdWx0X2Rlc2MgPSBub29wX2Rlc2M7CiAJY29uc3Qgc3RydWN0IGRybV9pOTE1X2NtZF9k
ZXNjcmlwdG9yICpkZXNjID0gJmRlZmF1bHRfZGVzYzsKIAlib29sIG5lZWRzX2NsZmx1c2hfYWZ0
ZXIgPSBmYWxzZTsKKwl1bnNpZ25lZCBsb25nICpqdW1wX3doaXRlbGlzdDsKIAlpbnQgcmV0ID0g
MDsKIAogCWNtZCA9IGNvcHlfYmF0Y2goc2hhZG93X2JhdGNoX29iaiwgYmF0Y2hfb2JqLApAQCAt
MTQ0Myw3ICsxNDI2LDggQEAgaW50IGludGVsX2VuZ2luZV9jbWRfcGFyc2VyKHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgsCiAJCXJldHVybiBQVFJfRVJSKGNtZCk7CiAJfQogCi0JaW5pdF93
aGl0ZWxpc3QoY3R4LCBiYXRjaF9sZW4pOworCS8qIERlZmVyIGZhaWx1cmUgdW50aWwgYXR0ZW1w
dGVkIHVzZSAqLworCWp1bXBfd2hpdGVsaXN0ID0gYWxsb2Nfd2hpdGVsaXN0KGN0eC0+aTkxNSwg
YmF0Y2hfbGVuKTsKIAogCS8qCiAJICogV2UgdXNlIHRoZSBiYXRjaCBsZW5ndGggYXMgc2l6ZSBi
ZWNhdXNlIHRoZSBzaGFkb3cgb2JqZWN0IGlzIGFzCkBAIC0xNDg3LDE1ICsxNDcxLDE2IEBAIGlu
dCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAog
CQlpZiAoZGVzYy0+Y21kLnZhbHVlID09IE1JX0JBVENIX0JVRkZFUl9TVEFSVCkgewogCQkJcmV0
ID0gY2hlY2tfYmJzdGFydChjdHgsIGNtZCwgb2Zmc2V0LCBsZW5ndGgsCiAJCQkJCSAgICBiYXRj
aF9sZW4sIGJhdGNoX3N0YXJ0LAotCQkJCQkgICAgc2hhZG93X2JhdGNoX3N0YXJ0KTsKKwkJCQkJ
ICAgIHNoYWRvd19iYXRjaF9zdGFydCwKKwkJCQkJICAgIGp1bXBfd2hpdGVsaXN0KTsKIAogCQkJ
aWYgKHJldCkKIAkJCQlnb3RvIGVycjsKIAkJCWJyZWFrOwogCQl9CiAKLQkJaWYgKGN0eC0+anVt
cF93aGl0ZWxpc3RfY21kcyA+IG9mZnNldCkKLQkJCXNldF9iaXQob2Zmc2V0LCBjdHgtPmp1bXBf
d2hpdGVsaXN0KTsKKwkJaWYgKCFJU19FUlJfT1JfTlVMTChqdW1wX3doaXRlbGlzdCkpCisJCQlf
X3NldF9iaXQob2Zmc2V0LCBqdW1wX3doaXRlbGlzdCk7CiAKIAkJY21kICs9IGxlbmd0aDsKIAkJ
b2Zmc2V0ICs9IGxlbmd0aDsKQEAgLTE1MTMsNiArMTQ5OCw4IEBAIGludCBpbnRlbF9lbmdpbmVf
Y21kX3BhcnNlcihzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCX0KIAogZXJyOgorCWlm
ICghSVNfRVJSX09SX05VTEwoanVtcF93aGl0ZWxpc3QpKQorCQlrZnJlZShqdW1wX3doaXRlbGlz
dCk7CiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChzaGFkb3dfYmF0Y2hfb2JqKTsKIAlyZXR1
cm4gcmV0OwogfQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
