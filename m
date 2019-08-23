Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C6E9B91F
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 01:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB616ED6F;
	Fri, 23 Aug 2019 23:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B11DB6ED6F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 23:51:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18246220-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Aug 2019 00:51:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 24 Aug 2019 00:51:41 +0100
Message-Id: <20190823235141.31799-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Teach igt_gpu_fill_dw() to
 take intel_context
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

QXZvaWQgaGF2aW5nIHRvIHBhc3MgYXJvdW5kIChjdHgsIGVuZ2luZSkgZXZlcnl3aGVyZSBieSBw
YXNzaW5nIHRoZQphY3R1YWwgaW50ZWxfY29udGV4dCB3ZSBpbnRlbmQgdG8gdXNlLiBUb2RheSB3
ZSBwcmVhY2ggdGhpcyBsZXNzb24gdG8KaWd0X2dwdV9maWxsX2R3IGFuZCBpdHMgY2FsbGVycycg
Y2FsbGVycy4KClRoZSBpbW1lZGlhdGUgYmVuZWZpdCBmb3IgdGhlIEdFTSBzZWxmdGVzdHMgaXMg
dGhhdCB3ZSBhaW0gdG8gdXNlIHRoZQpHRU0gY29udGV4dCBhcyB0aGUgY29udHJvbCwgdGhlIHNv
dXJjZSBvZiB0aGUgZW5naW5lcyBvbiB3aGljaCB0byB0ZXN0CnRoZSBHRU0gY29udGV4dC4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8IDEwMyArKysrKysrKysrLS0tLS0tLS0KIC4uLi9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8ICA3MCArKysrKysrLS0t
LS0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuYyAgICB8ICAyNiAr
Ky0tLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5oICAgIHwgIDEz
ICstLQogNCBmaWxlcyBjaGFuZ2VkLCAxMTYgaW5zZXJ0aW9ucygrKSwgOTYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpp
bmRleCA4ZGU4M2M2ZDgxZjUuLmM1Y2VhNDM3OTIxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKQEAgLTg3OSw5ICs4NzksOCBAQCBzdGF0
aWMgaW50IGlndF9tb2NrX3BwZ3R0XzY0Syh2b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAot
c3RhdGljIGludCBncHVfd3JpdGUoc3RydWN0IGk5MTVfdm1hICp2bWEsCi0JCSAgICAgc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKLQkJICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCitzdGF0aWMgaW50IGdwdV93cml0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCisJ
CSAgICAgc3RydWN0IGk5MTVfdm1hICp2bWEsCiAJCSAgICAgdTMyIGR3LAogCQkgICAgIHUzMiB2
YWwpCiB7CkBAIC04OTMsNyArODkyLDcgQEAgc3RhdGljIGludCBncHVfd3JpdGUoc3RydWN0IGk5
MTVfdm1hICp2bWEsCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAotCXJldHVybiBpZ3RfZ3B1
X2ZpbGxfZHcodm1hLCBjdHgsIGVuZ2luZSwgZHcgKiBzaXplb2YodTMyKSwKKwlyZXR1cm4gaWd0
X2dwdV9maWxsX2R3KGNlLCB2bWEsIGR3ICogc2l6ZW9mKHUzMiksCiAJCQkgICAgICAgdm1hLT5z
aXplID4+IFBBR0VfU0hJRlQsIHZhbCk7CiB9CiAKQEAgLTkyOSwxOCArOTI4LDE2IEBAIHN0YXRp
YyBpbnQgY3B1X2NoZWNrKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHUzMiBkd29y
ZCwgdTMyIHZhbCkKIAlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgaW50IF9faWd0X3dyaXRlX2h1
Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKLQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCitzdGF0aWMgaW50IF9faWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAogCQkJICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
CQkgICAgdTY0IHNpemUsIHU2NCBvZmZzZXQsCiAJCQkgICAgdTMyIGR3b3JkLCB1MzIgdmFsKQog
ewotCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gY3R4LT52bSA/OiAmZW5naW5lLT5n
dC0+Z2d0dC0+dm07CiAJdW5zaWduZWQgaW50IGZsYWdzID0gUElOX1VTRVIgfCBQSU5fT0ZGU0VU
X0ZJWEVEOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCWludCBlcnI7CiAKLQl2bWEgPSBpOTE1
X3ZtYV9pbnN0YW5jZShvYmosIHZtLCBOVUxMKTsKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShv
YmosIGNlLT52bSwgTlVMTCk7CiAJaWYgKElTX0VSUih2bWEpKQogCQlyZXR1cm4gUFRSX0VSUih2
bWEpOwogCkBAIC05NTQsNyArOTUxLDcgQEAgc3RhdGljIGludCBfX2lndF93cml0ZV9odWdlKHN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCSAqIFRoZSBnZ3R0IG1heSBoYXZlIHNvbWUg
cGFnZXMgcmVzZXJ2ZWQgc28KIAkJICogcmVmcmFpbiBmcm9tIGVycm9yaW5nIG91dC4KIAkJICov
Ci0JCWlmIChlcnIgPT0gLUVOT1NQQyAmJiBpOTE1X2lzX2dndHQodm0pKQorCQlpZiAoZXJyID09
IC1FTk9TUEMgJiYgaTkxNV9pc19nZ3R0KGNlLT52bSkpCiAJCQllcnIgPSAwOwogCiAJCWdvdG8g
b3V0X3ZtYV9jbG9zZTsKQEAgLTk2NCw3ICs5NjEsNyBAQCBzdGF0aWMgaW50IF9faWd0X3dyaXRl
X2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlpZiAoZXJyKQogCQlnb3RvIG91
dF92bWFfdW5waW47CiAKLQllcnIgPSBncHVfd3JpdGUodm1hLCBjdHgsIGVuZ2luZSwgZHdvcmQs
IHZhbCk7CisJZXJyID0gZ3B1X3dyaXRlKGNlLCB2bWEsIGR3b3JkLCB2YWwpOwogCWlmIChlcnIp
IHsKIAkJcHJfZXJyKCJncHUtd3JpdGUgZmFpbGVkIGF0IG9mZnNldD0lbGx4XG4iLCBvZmZzZXQp
OwogCQlnb3RvIG91dF92bWFfdW5waW47CkBAIC05ODcsMTQgKzk4NCwxMyBAQCBzdGF0aWMgaW50
IF9faWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIHN0YXRpYyBp
bnQgaWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkJCSAgc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Ci0Jc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0gPSBjdHgtPnZtID86ICZpOTE1LT5nZ3R0LnZtOwotCXN0YXRpYyBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmVzW0k5MTVfTlVNX0VOR0lORVNdOwotCXN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZTsKKwlzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lcyAqZW5naW5lczsKKwlz
dHJ1Y3QgaTkxNV9nZW1fZW5naW5lc19pdGVyIGl0OworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZTsKIAlJOTE1X1JORF9TVEFURShwcm5nKTsKIAlJR1RfVElNRU9VVChlbmRfdGltZSk7CiAJdW5z
aWduZWQgaW50IG1heF9wYWdlX3NpemU7Ci0JdW5zaWduZWQgaW50IGlkOworCXVuc2lnbmVkIGlu
dCBjb3VudDsKIAl1NjQgbWF4OwogCXU2NCBudW07CiAJdTY0IHNpemU7CkBAIC0xMDA4LDE5ICsx
MDA0LDE4IEBAIHN0YXRpYyBpbnQgaWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCwKIAlpZiAob2JqLT5tbS5wYWdlX3NpemVzLnNnICYgSTkxNV9HVFRfUEFHRV9TSVpF
XzY0SykKIAkJc2l6ZSA9IHJvdW5kX3VwKHNpemUsIEk5MTVfR1RUX1BBR0VfU0laRV8yTSk7CiAK
LQltYXhfcGFnZV9zaXplID0gcm91bmRkb3duX3Bvd19vZl90d28ob2JqLT5tbS5wYWdlX3NpemVz
LnNnKTsKLQltYXggPSBkaXZfdTY0KCh2bS0+dG90YWwgLSBzaXplKSwgbWF4X3BhZ2Vfc2l6ZSk7
Ci0KIAluID0gMDsKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgewotCQlpZiAo
IWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSkgewotCQkJcHJfaW5mbygic3Rv
cmUtZHdvcmQtaW1tIG5vdCBzdXBwb3J0ZWQgb24gZW5naW5lPSV1XG4iLAotCQkJCWlkKTsKKwlj
b3VudCA9IDA7CisJbWF4ID0gVTY0X01BWDsKKwlmb3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1
X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgeworCQljb3VudCsrOworCQlpZiAo
IWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpCiAJCQljb250aW51ZTsK
LQkJfQotCQllbmdpbmVzW24rK10gPSBlbmdpbmU7Ci0JfQogCisJCW1heCA9IG1pbihtYXgsIGNl
LT52bS0+dG90YWwpOworCQluKys7CisJfQorCWk5MTVfZ2VtX2NvbnRleHRfdW5sb2NrX2VuZ2lu
ZXMoY3R4KTsKIAlpZiAoIW4pCiAJCXJldHVybiAwOwogCkBAIC0xMDI5LDIzICsxMDI0LDMwIEBA
IHN0YXRpYyBpbnQgaWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwK
IAkgKiByYW5kb21pemVkIG9yZGVyLCBsZXRzIGFsc28gbWFrZSBmZWVkaW5nIHRvIHRoZSBzYW1l
IGVuZ2luZSBhIGZldwogCSAqIHRpbWVzIGluIHN1Y2Nlc3Npb24gYSBwb3NzaWJpbGl0eSBieSBl
bmxhcmdpbmcgdGhlIHBlcm11dGF0aW9uIGFycmF5LgogCSAqLwotCW9yZGVyID0gaTkxNV9yYW5k
b21fb3JkZXIobiAqIEk5MTVfTlVNX0VOR0lORVMsICZwcm5nKTsKKwlvcmRlciA9IGk5MTVfcmFu
ZG9tX29yZGVyKGNvdW50ICogY291bnQsICZwcm5nKTsKIAlpZiAoIW9yZGVyKQogCQlyZXR1cm4g
LUVOT01FTTsKIAorCW1heF9wYWdlX3NpemUgPSByb3VuZGRvd25fcG93X29mX3R3byhvYmotPm1t
LnBhZ2Vfc2l6ZXMuc2cpOworCW1heCA9IGRpdl91NjQobWF4IC0gc2l6ZSwgbWF4X3BhZ2Vfc2l6
ZSk7CisKIAkvKgogCSAqIFRyeSB2YXJpb3VzIG9mZnNldHMgaW4gYW4gYXNjZW5kaW5nL2Rlc2Nl
bmRpbmcgZmFzaGlvbiB1bnRpbCB3ZQogCSAqIHRpbWVvdXQgLS0gd2Ugd2FudCB0byBhdm9pZCBp
c3N1ZXMgaGlkZGVuIGJ5IGVmZmVjdGl2ZWx5IGFsd2F5cyB1c2luZwogCSAqIG9mZnNldCA9IDAu
CiAJICovCiAJaSA9IDA7CisJZW5naW5lcyA9IGk5MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdpbmVz
KGN0eCk7CiAJZm9yX2VhY2hfcHJpbWVfbnVtYmVyX2Zyb20obnVtLCAwLCBtYXgpIHsKIAkJdTY0
IG9mZnNldF9sb3cgPSBudW0gKiBtYXhfcGFnZV9zaXplOwogCQl1NjQgb2Zmc2V0X2hpZ2ggPSAo
bWF4IC0gbnVtKSAqIG1heF9wYWdlX3NpemU7CiAJCXUzMiBkd29yZCA9IG9mZnNldF9pbl9wYWdl
KG51bSkgLyA0OworCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CiAKLQkJZW5naW5lID0gZW5n
aW5lc1tvcmRlcltpXSAlIG5dOwotCQlpID0gKGkgKyAxKSAlIChuICogSTkxNV9OVU1fRU5HSU5F
Uyk7CisJCWNlID0gZW5naW5lcy0+ZW5naW5lc1tvcmRlcltpXSAlIGVuZ2luZXMtPm51bV9lbmdp
bmVzXTsKKwkJaSA9IChpICsgMSkgJSAoY291bnQgKiBjb3VudCk7CisJCWlmICghY2UgfHwgIWlu
dGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpCisJCQljb250aW51ZTsKIAog
CQkvKgogCQkgKiBJbiBvcmRlciB0byB1dGlsaXplIDY0SyBwYWdlcyB3ZSBuZWVkIHRvIGJvdGgg
cGFkIHRoZSB2bWEKQEAgLTEwNTcsMjIgKzEwNTksMjMgQEAgc3RhdGljIGludCBpZ3Rfd3JpdGVf
aHVnZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJb2Zmc2V0X2xvdyA9IHJvdW5k
X2Rvd24ob2Zmc2V0X2xvdywKIAkJCQkJCUk5MTVfR1RUX1BBR0VfU0laRV8yTSk7CiAKLQkJZXJy
ID0gX19pZ3Rfd3JpdGVfaHVnZShjdHgsIGVuZ2luZSwgb2JqLCBzaXplLCBvZmZzZXRfbG93LAor
CQllcnIgPSBfX2lndF93cml0ZV9odWdlKGNlLCBvYmosIHNpemUsIG9mZnNldF9sb3csCiAJCQkJ
ICAgICAgIGR3b3JkLCBudW0gKyAxKTsKIAkJaWYgKGVycikKIAkJCWJyZWFrOwogCi0JCWVyciA9
IF9faWd0X3dyaXRlX2h1Z2UoY3R4LCBlbmdpbmUsIG9iaiwgc2l6ZSwgb2Zmc2V0X2hpZ2gsCisJ
CWVyciA9IF9faWd0X3dyaXRlX2h1Z2UoY2UsIG9iaiwgc2l6ZSwgb2Zmc2V0X2hpZ2gsCiAJCQkJ
ICAgICAgIGR3b3JkLCBudW0gKyAxKTsKIAkJaWYgKGVycikKIAkJCWJyZWFrOwogCiAJCWlmIChp
Z3RfdGltZW91dChlbmRfdGltZSwKLQkJCQkiJXMgdGltZWQgb3V0IG9uIGVuZ2luZT0ldSwgb2Zm
c2V0X2xvdz0lbGx4IG9mZnNldF9oaWdoPSVsbHgsIG1heF9wYWdlX3NpemU9JXhcbiIsCi0JCQkJ
X19mdW5jX18sIGVuZ2luZS0+aWQsIG9mZnNldF9sb3csIG9mZnNldF9oaWdoLAorCQkJCSIlcyB0
aW1lZCBvdXQgb24gJXMsIG9mZnNldF9sb3c9JWxseCBvZmZzZXRfaGlnaD0lbGx4LCBtYXhfcGFn
ZV9zaXplPSV4XG4iLAorCQkJCV9fZnVuY19fLCBjZS0+ZW5naW5lLT5uYW1lLCBvZmZzZXRfbG93
LCBvZmZzZXRfaGlnaCwKIAkJCQltYXhfcGFnZV9zaXplKSkKIAkJCWJyZWFrOwogCX0KKwlpOTE1
X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CiAKIAlrZnJlZShvcmRlcik7CiAKQEAg
LTEzMTYsMTAgKzEzMTksMTAgQEAgc3RhdGljIGludCBpZ3RfcHBndHRfcGluX3VwZGF0ZSh2b2lk
ICphcmcpCiAJdW5zaWduZWQgbG9uZyBzdXBwb3J0ZWQgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+
cGFnZV9zaXplczsKIAlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm07CiAJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkxNV9nZW1fZW5naW5l
c19pdGVyIGl0OworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKIAlzdHJ1Y3QgaTkxNV92bWEg
KnZtYTsKIAl1bnNpZ25lZCBpbnQgZmxhZ3MgPSBQSU5fVVNFUiB8IFBJTl9PRkZTRVRfRklYRUQ7
Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0gaW50ZWxfZW5naW5lX2lk
IGlkOwogCXVuc2lnbmVkIGludCBuOwogCWludCBmaXJzdCwgbGFzdDsKIAlpbnQgZXJyOwpAQCAt
MTQxOSwxNCArMTQyMiwxOCBAQCBzdGF0aWMgaW50IGlndF9wcGd0dF9waW5fdXBkYXRlKHZvaWQg
KmFyZykKIAkgKi8KIAogCW4gPSAwOwotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGRldl9wcml2
LCBpZCkgewotCQlpZiAoIWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSkKKwlm
b3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgp
LCBpdCkgeworCQlpZiAoIWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkp
CiAJCQljb250aW51ZTsKIAotCQllcnIgPSBncHVfd3JpdGUodm1hLCBjdHgsIGVuZ2luZSwgbisr
LCAweGRlYWRiZWFmKTsKKwkJZXJyID0gZ3B1X3dyaXRlKGNlLCB2bWEsIG4rKywgMHhkZWFkYmVh
Zik7CiAJCWlmIChlcnIpCi0JCQlnb3RvIG91dF91bnBpbjsKKwkJCWJyZWFrOwogCX0KKwlpOTE1
X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eCk7CisJaWYgKGVycikKKwkJZ290byBvdXRf
dW5waW47CisKIAl3aGlsZSAobi0tKSB7CiAJCWVyciA9IGNwdV9jaGVjayhvYmosIG4sIDB4ZGVh
ZGJlYWYpOwogCQlpZiAoZXJyKQpAQCAtMTUwNyw4ICsxNTE0LDggQEAgc3RhdGljIGludCBpZ3Rf
c2hyaW5rX3RocCh2b2lkICphcmcpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBj
dHgtPmk5MTU7CiAJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSBjdHgtPnZtID86ICZp
OTE1LT5nZ3R0LnZtOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOworCXN0
cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCXVuc2lnbmVkIGludCBmbGFncyA9IFBJTl9VU0VS
OwogCXVuc2lnbmVkIGludCBuOwpAQCAtMTU0OCwxNiArMTU1NSwxOSBAQCBzdGF0aWMgaW50IGln
dF9zaHJpbmtfdGhwKHZvaWQgKmFyZykKIAkJZ290byBvdXRfdW5waW47CiAKIAluID0gMDsKLQlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgewotCQlpZiAoIWludGVsX2VuZ2luZV9j
YW5fc3RvcmVfZHdvcmQoZW5naW5lKSkKKworCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVf
Z2VtX2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7CisJCWlmICghaW50ZWxfZW5naW5l
X2Nhbl9zdG9yZV9kd29yZChjZS0+ZW5naW5lKSkKIAkJCWNvbnRpbnVlOwogCi0JCWVyciA9IGdw
dV93cml0ZSh2bWEsIGN0eCwgZW5naW5lLCBuKyssIDB4ZGVhZGJlYWYpOworCQllcnIgPSBncHVf
d3JpdGUoY2UsIHZtYSwgbisrLCAweGRlYWRiZWFmKTsKIAkJaWYgKGVycikKLQkJCWdvdG8gb3V0
X3VucGluOworCQkJYnJlYWs7CiAJfQotCisJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5l
cyhjdHgpOwogCWk5MTVfdm1hX3VucGluKHZtYSk7CisJaWYgKGVycikKKwkJZ290byBvdXRfY2xv
c2U7CiAKIAkvKgogCSAqIE5vdyB0aGF0IHRoZSBwYWdlcyBhcmUgKnVucGlubmVkKiBzaHJpbmst
YWxsIHNob3VsZCBpbnZva2UKQEAgLTE1ODMsMTAgKzE1OTMsOSBAQCBzdGF0aWMgaW50IGlndF9z
aHJpbmtfdGhwKHZvaWQgKmFyZykKIAl3aGlsZSAobi0tKSB7CiAJCWVyciA9IGNwdV9jaGVjayhv
YmosIG4sIDB4ZGVhZGJlYWYpOwogCQlpZiAoZXJyKQotCQkJZ290byBvdXRfdW5waW47CisJCQli
cmVhazsKIAl9CiAKLQogb3V0X3VucGluOgogCWk5MTVfdm1hX3VucGluKHZtYSk7CiBvdXRfY2xv
c2U6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jCmluZGV4IDNlNmY0YTY1ZDM1Ni4uM2FkYjYwYzJmZDFmIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQu
YwpAQCAtMTY2LDE5ICsxNjYsMTcgQEAgc3RhdGljIHVuc2lnbmVkIGxvbmcgZmFrZV9wYWdlX2Nv
dW50KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIGh1Z2VfZ2VtX29i
amVjdF9kbWFfc2l6ZShvYmopID4+IFBBR0VfU0hJRlQ7CiB9CiAKLXN0YXRpYyBpbnQgZ3B1X2Zp
bGwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKLQkJICAgIHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCi0JCSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCitz
dGF0aWMgaW50IGdwdV9maWxsKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJICAgIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCSAgICB1bnNpZ25lZCBpbnQgZHcpCiB7Ci0J
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSBjdHgtPnZtID86ICZlbmdpbmUtPmd0LT5n
Z3R0LT52bTsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAlpbnQgZXJyOwogCi0JR0VNX0JVR19P
TihvYmotPmJhc2Uuc2l6ZSA+IHZtLT50b3RhbCk7Ci0JR0VNX0JVR19PTighaW50ZWxfZW5naW5l
X2Nhbl9zdG9yZV9kd29yZChlbmdpbmUpKTsKKwlHRU1fQlVHX09OKG9iai0+YmFzZS5zaXplID4g
Y2UtPnZtLT50b3RhbCk7CisJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX2Nhbl9zdG9yZV9kd29y
ZChjZS0+ZW5naW5lKSk7CiAKLQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtLCBOVUxM
KTsKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIGNlLT52bSwgTlVMTCk7CiAJaWYgKElT
X0VSUih2bWEpKQogCQlyZXR1cm4gUFRSX0VSUih2bWEpOwogCkBAIC0yMDAsOSArMTk4LDcgQEAg
c3RhdGljIGludCBncHVfZmlsbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCSAq
IHdoaWxzdCBjaGVja2luZyB0aGF0IGVhY2ggY29udGV4dCBwcm92aWRlcyBhIHVuaXF1ZSB2aWV3
CiAJICogaW50byB0aGUgb2JqZWN0LgogCSAqLwotCWVyciA9IGlndF9ncHVfZmlsbF9kdyh2bWEs
Ci0JCQkgICAgICBjdHgsCi0JCQkgICAgICBlbmdpbmUsCisJZXJyID0gaWd0X2dwdV9maWxsX2R3
KGNlLCB2bWEsCiAJCQkgICAgICAoZHcgKiByZWFsX3BhZ2VfY291bnQob2JqKSkgPDwgUEFHRV9T
SElGVCB8CiAJCQkgICAgICAoZHcgKiBzaXplb2YodTMyKSksCiAJCQkgICAgICByZWFsX3BhZ2Vf
Y291bnQob2JqKSwKQEAgLTMwNSwyMiArMzAxLDIxIEBAIHN0YXRpYyBpbnQgZmlsZV9hZGRfb2Jq
ZWN0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICoKLWNyZWF0ZV90ZXN0X29iamVjdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAq
Y3R4LAorY3JlYXRlX3Rlc3Rfb2JqZWN0KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAog
CQkgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCSAgIHN0cnVjdCBsaXN0X2hlYWQgKm9iamVj
dHMpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm0gPzogJmN0eC0+aTkxNS0+Z2d0dC52bTsKIAl1NjQg
c2l6ZTsKIAlpbnQgZXJyOwogCiAJLyogS2VlcCBpbiBHRU0ncyBnb29kIGdyYWNlcyAqLwotCWk5
MTVfcmV0aXJlX3JlcXVlc3RzKGN0eC0+aTkxNSk7CisJaTkxNV9yZXRpcmVfcmVxdWVzdHModm0t
Pmk5MTUpOwogCiAJc2l6ZSA9IG1pbih2bS0+dG90YWwgLyAyLCAxMDI0dWxsICogRFdfUEVSX1BB
R0UgKiBQQUdFX1NJWkUpOwogCXNpemUgPSByb3VuZF9kb3duKHNpemUsIERXX1BFUl9QQUdFICog
UEFHRV9TSVpFKTsKIAotCW9iaiA9IGh1Z2VfZ2VtX29iamVjdChjdHgtPmk5MTUsIERXX1BFUl9Q
QUdFICogUEFHRV9TSVpFLCBzaXplKTsKKwlvYmogPSBodWdlX2dlbV9vYmplY3Qodm0tPmk5MTUs
IERXX1BFUl9QQUdFICogUEFHRV9TSVpFLCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCXJl
dHVybiBvYmo7CiAKQEAgLTM5Myw2ICszODgsNyBAQCBzdGF0aWMgaW50IGlndF9jdHhfZXhlYyh2
b2lkICphcmcpCiAJCWR3ID0gMDsKIAkJd2hpbGUgKCF0aW1lX2FmdGVyKGppZmZpZXMsIGVuZF90
aW1lKSkgewogCQkJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKKwkJCXN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZTsKIAogCQkJY3R4ID0gbGl2ZV9jb250ZXh0KGk5MTUsIGZpbGUpOwogCQkJ
aWYgKElTX0VSUihjdHgpKSB7CkBAIC00MDAsMTUgKzM5NiwyMCBAQCBzdGF0aWMgaW50IGlndF9j
dHhfZXhlYyh2b2lkICphcmcpCiAJCQkJZ290byBvdXRfdW5sb2NrOwogCQkJfQogCisJCQljZSA9
IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIGVuZ2luZS0+bGVnYWN5X2lkeCk7CisK
IAkJCWlmICghb2JqKSB7Ci0JCQkJb2JqID0gY3JlYXRlX3Rlc3Rfb2JqZWN0KGN0eCwgZmlsZSwg
Jm9iamVjdHMpOworCQkJCW9iaiA9IGNyZWF0ZV90ZXN0X29iamVjdChjZS0+dm0sIGZpbGUsICZv
YmplY3RzKTsKIAkJCQlpZiAoSVNfRVJSKG9iaikpIHsKIAkJCQkJZXJyID0gUFRSX0VSUihvYmop
OworCQkJCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7CiAJCQkJCWdvdG8gb3V0X3VubG9jazsKIAkJ
CQl9CiAJCQl9CiAKLQkJCWVyciA9IGdwdV9maWxsKG9iaiwgY3R4LCBlbmdpbmUsIGR3KTsKKwkJ
CWVyciA9IGdwdV9maWxsKGNlLCBvYmosIGR3KTsKKwkJCWludGVsX2NvbnRleHRfcHV0KGNlKTsK
KwogCQkJaWYgKGVycikgewogCQkJCXByX2VycigiRmFpbGVkIHRvIGZpbGwgZHdvcmQgJWx1IFsl
bHUvJWx1XSB3aXRoIGdwdSAoJXMpIGluIGN0eCAldSBbZnVsbC1wcGd0dD8gJXNdLCBlcnI9JWRc
biIsCiAJCQkJICAgICAgIG5kd29yZHMsIGR3LCBtYXhfZHdvcmRzKG9iaiksCkBAIC01MDksNiAr
NTEwLDcgQEAgc3RhdGljIGludCBpZ3Rfc2hhcmVkX2N0eF9leGVjKHZvaWQgKmFyZykKIAkJbmNv
bnRleHRzID0gMDsKIAkJd2hpbGUgKCF0aW1lX2FmdGVyKGppZmZpZXMsIGVuZF90aW1lKSkgewog
CQkJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKKwkJCXN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZTsKIAogCQkJY3R4ID0ga2VybmVsX2NvbnRleHQoaTkxNSk7CiAJCQlpZiAoSVNfRVJSKGN0
eCkpIHsKQEAgLTUxOCwyMiArNTIwLDI2IEBAIHN0YXRpYyBpbnQgaWd0X3NoYXJlZF9jdHhfZXhl
Yyh2b2lkICphcmcpCiAKIAkJCV9fYXNzaWduX3BwZ3R0KGN0eCwgcGFyZW50LT52bSk7CiAKKwkJ
CWNlID0gaTkxNV9nZW1fY29udGV4dF9nZXRfZW5naW5lKGN0eCwgZW5naW5lLT5sZWdhY3lfaWR4
KTsKIAkJCWlmICghb2JqKSB7Ci0JCQkJb2JqID0gY3JlYXRlX3Rlc3Rfb2JqZWN0KHBhcmVudCwg
ZmlsZSwgJm9iamVjdHMpOworCQkJCW9iaiA9IGNyZWF0ZV90ZXN0X29iamVjdChwYXJlbnQtPnZt
LCBmaWxlLCAmb2JqZWN0cyk7CiAJCQkJaWYgKElTX0VSUihvYmopKSB7CiAJCQkJCWVyciA9IFBU
Ul9FUlIob2JqKTsKKwkJCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOwogCQkJCQlrZXJuZWxfY29u
dGV4dF9jbG9zZShjdHgpOwogCQkJCQlnb3RvIG91dF90ZXN0OwogCQkJCX0KIAkJCX0KIAotCQkJ
ZXJyID0gZ3B1X2ZpbGwob2JqLCBjdHgsIGVuZ2luZSwgZHcpOworCQkJZXJyID0gZ3B1X2ZpbGwo
Y2UsIG9iaiwgZHcpOworCQkJaW50ZWxfY29udGV4dF9wdXQoY2UpOworCQkJa2VybmVsX2NvbnRl
eHRfY2xvc2UoY3R4KTsKKwogCQkJaWYgKGVycikgewogCQkJCXByX2VycigiRmFpbGVkIHRvIGZp
bGwgZHdvcmQgJWx1IFslbHUvJWx1XSB3aXRoIGdwdSAoJXMpIGluIGN0eCAldSBbZnVsbC1wcGd0
dD8gJXNdLCBlcnI9JWRcbiIsCiAJCQkJICAgICAgIG5kd29yZHMsIGR3LCBtYXhfZHdvcmRzKG9i
aiksCiAJCQkJICAgICAgIGVuZ2luZS0+bmFtZSwgY3R4LT5od19pZCwKIAkJCQkgICAgICAgeWVz
bm8oISFjdHgtPnZtKSwgZXJyKTsKLQkJCQlrZXJuZWxfY29udGV4dF9jbG9zZShjdHgpOwogCQkJ
CWdvdG8gb3V0X3Rlc3Q7CiAJCQl9CiAKQEAgLTU0NCw4ICs1NTAsNiBAQCBzdGF0aWMgaW50IGln
dF9zaGFyZWRfY3R4X2V4ZWModm9pZCAqYXJnKQogCiAJCQluZHdvcmRzKys7CiAJCQluY29udGV4
dHMrKzsKLQotCQkJa2VybmVsX2NvbnRleHRfY2xvc2UoY3R4KTsKIAkJfQogCQlwcl9pbmZvKCJT
dWJtaXR0ZWQgJWx1IGNvbnRleHRzIHRvICVzLCBmaWxsaW5nICVsdSBkd29yZHNcbiIsCiAJCQlu
Y29udGV4dHMsIGVuZ2luZS0+bmFtZSwgbmR3b3Jkcyk7CkBAIC02MDQsNiArNjA4LDggQEAgc3Rh
dGljIHN0cnVjdCBpOTE1X3ZtYSAqcnBjc19xdWVyeV9iYXRjaChzdHJ1Y3QgaTkxNV92bWEgKnZt
YSkKIAlfX2k5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAob2JqLCAwLCA2NCk7CiAJaTkxNV9nZW1f
b2JqZWN0X3VucGluX21hcChvYmopOwogCisJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaCh2bWEtPnZt
LT5ndCk7CisKIAl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtYS0+dm0sIE5VTEwpOwog
CWlmIChJU19FUlIodm1hKSkgewogCQllcnIgPSBQVFJfRVJSKHZtYSk7CkBAIC0xMDgyLDE3ICsx
MDg4LDE5IEBAIHN0YXRpYyBpbnQgaWd0X2N0eF9yZWFkb25seSh2b2lkICphcmcpCiAJbmR3b3Jk
cyA9IDA7CiAJZHcgPSAwOwogCXdoaWxlICghdGltZV9hZnRlcihqaWZmaWVzLCBlbmRfdGltZSkp
IHsKLQkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCQl1bnNpZ25lZCBpbnQgaWQ7
CisJCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CisJCXN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZTsKIAotCQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgewotCQkJaWYg
KCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGVuZ2luZSkpCisJCWZvcl9lYWNoX2dlbV9l
bmdpbmUoY2UsCisJCQkJICAgIGk5MTVfZ2VtX2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0
KSB7CisJCQlpZiAoIWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpCiAJ
CQkJY29udGludWU7CiAKIAkJCWlmICghb2JqKSB7Ci0JCQkJb2JqID0gY3JlYXRlX3Rlc3Rfb2Jq
ZWN0KGN0eCwgZmlsZSwgJm9iamVjdHMpOworCQkJCW9iaiA9IGNyZWF0ZV90ZXN0X29iamVjdChj
ZS0+dm0sIGZpbGUsICZvYmplY3RzKTsKIAkJCQlpZiAoSVNfRVJSKG9iaikpIHsKIAkJCQkJZXJy
ID0gUFRSX0VSUihvYmopOworCQkJCQlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0
eCk7CiAJCQkJCWdvdG8gb3V0X3VubG9jazsKIAkJCQl9CiAKQEAgLTExMDAsMTIgKzExMDgsMTMg
QEAgc3RhdGljIGludCBpZ3RfY3R4X3JlYWRvbmx5KHZvaWQgKmFyZykKIAkJCQkJaTkxNV9nZW1f
b2JqZWN0X3NldF9yZWFkb25seShvYmopOwogCQkJfQogCi0JCQllcnIgPSBncHVfZmlsbChvYmos
IGN0eCwgZW5naW5lLCBkdyk7CisJCQllcnIgPSBncHVfZmlsbChjZSwgb2JqLCBkdyk7CiAJCQlp
ZiAoZXJyKSB7CiAJCQkJcHJfZXJyKCJGYWlsZWQgdG8gZmlsbCBkd29yZCAlbHUgWyVsdS8lbHVd
IHdpdGggZ3B1ICglcykgaW4gY3R4ICV1IFtmdWxsLXBwZ3R0PyAlc10sIGVycj0lZFxuIiwKIAkJ
CQkgICAgICAgbmR3b3JkcywgZHcsIG1heF9kd29yZHMob2JqKSwKLQkJCQkgICAgICAgZW5naW5l
LT5uYW1lLCBjdHgtPmh3X2lkLAorCQkJCSAgICAgICBjZS0+ZW5naW5lLT5uYW1lLCBjdHgtPmh3
X2lkLAogCQkJCSAgICAgICB5ZXNubyghIWN0eC0+dm0pLCBlcnIpOworCQkJCWk5MTVfZ2VtX2Nv
bnRleHRfdW5sb2NrX2VuZ2luZXMoY3R4KTsKIAkJCQlnb3RvIG91dF91bmxvY2s7CiAJCQl9CiAK
QEAgLTExMTUsNiArMTEyNCw3IEBAIHN0YXRpYyBpbnQgaWd0X2N0eF9yZWFkb25seSh2b2lkICph
cmcpCiAJCQl9CiAJCQluZHdvcmRzKys7CiAJCX0KKwkJaTkxNV9nZW1fY29udGV4dF91bmxvY2tf
ZW5naW5lcyhjdHgpOwogCX0KIAlwcl9pbmZvKCJTdWJtaXR0ZWQgJWx1IGR3b3JkcyAoYWNyb3Nz
ICV1IGVuZ2luZXMpXG4iLAogCQluZHdvcmRzLCBSVU5USU1FX0lORk8oaTkxNSktPm51bV9lbmdp
bmVzKTsKQEAgLTExOTcsNiArMTIwNyw4IEBAIHN0YXRpYyBpbnQgd3JpdGVfdG9fc2NyYXRjaChz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCV9faTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21h
cChvYmosIDAsIDY0KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CiAKKwlpbnRl
bF9ndF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+Z3QpOworCiAJdm1hID0gaTkxNV92bWFfaW5zdGFu
Y2Uob2JqLCBjdHgtPnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJZXJyID0gUFRS
X0VSUih2bWEpOwpAQCAtMTI5Niw2ICsxMzA4LDggQEAgc3RhdGljIGludCByZWFkX2Zyb21fc2Ny
YXRjaChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCWk5MTVfZ2VtX29iamVjdF9mbHVz
aF9tYXAob2JqKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CiAKKwlpbnRlbF9n
dF9jaGlwc2V0X2ZsdXNoKGVuZ2luZS0+Z3QpOworCiAJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uo
b2JqLCBjdHgtPnZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJZXJyID0gUFRSX0VS
Uih2bWEpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
Z3RfZ2VtX3V0aWxzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9n
ZW1fdXRpbHMuYwppbmRleCA1N2VjZTUzYzEwNzUuLmVlNWRjMTNhMzBiMyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKQEAgLTks
NiArOSw3IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJn
ZW0vaTkxNV9nZW1fcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0LmgiCisjaW5jbHVk
ZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJpOTE1X3ZtYS5oIgogI2luY2x1ZGUgImk5MTVf
ZHJ2LmgiCiAKQEAgLTg0LDYgKzg1LDggQEAgaWd0X2VtaXRfc3RvcmVfZHcoc3RydWN0IGk5MTVf
dm1hICp2bWEsCiAJKmNtZCA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CiAJaTkxNV9nZW1fb2JqZWN0
X3VucGluX21hcChvYmopOwogCisJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaCh2bWEtPnZtLT5ndCk7
CisKIAl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtYS0+dm0sIE5VTEwpOwogCWlmIChJ
U19FUlIodm1hKSkgewogCQllcnIgPSBQVFJfRVJSKHZtYSk7CkBAIC0xMDEsNDAgKzEwNCwzNSBA
QCBpZ3RfZW1pdF9zdG9yZV9kdyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKIAlyZXR1cm4gRVJSX1BU
UihlcnIpOwogfQogCi1pbnQgaWd0X2dwdV9maWxsX2R3KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAot
CQkgICAgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKLQkJICAgIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKLQkJICAgIHU2NCBvZmZzZXQsCi0JCSAgICB1bnNpZ25lZCBsb25n
IGNvdW50LAotCQkgICAgdTMyIHZhbCkKK2ludCBpZ3RfZ3B1X2ZpbGxfZHcoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAorCQkgICAgc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2NCBvZmZzZXQsCisJ
CSAgICB1bnNpZ25lZCBsb25nIGNvdW50LCB1MzIgdmFsKQogewotCXN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtID0gY3R4LT52bSA/OiAmZW5naW5lLT5ndC0+Z2d0dC0+dm07CiAJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7CiAJc3RydWN0IGk5MTVfdm1hICpiYXRjaDsKIAl1bnNpZ25lZCBp
bnQgZmxhZ3M7CiAJaW50IGVycjsKIAotCUdFTV9CVUdfT04odm1hLT5zaXplID4gdm0tPnRvdGFs
KTsKLQlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGVuZ2luZSkpOwor
CUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoY2UtPmVuZ2luZSkpOwog
CUdFTV9CVUdfT04oIWk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKTsKIAogCWJhdGNoID0gaWd0X2Vt
aXRfc3RvcmVfZHcodm1hLCBvZmZzZXQsIGNvdW50LCB2YWwpOwogCWlmIChJU19FUlIoYmF0Y2gp
KQogCQlyZXR1cm4gUFRSX0VSUihiYXRjaCk7CiAKLQlycSA9IGlndF9yZXF1ZXN0X2FsbG9jKGN0
eCwgZW5naW5lKTsKKwlycSA9IGludGVsX2NvbnRleHRfY3JlYXRlX3JlcXVlc3QoY2UpOwogCWlm
IChJU19FUlIocnEpKSB7CiAJCWVyciA9IFBUUl9FUlIocnEpOwogCQlnb3RvIGVycl9iYXRjaDsK
IAl9CiAKIAlmbGFncyA9IDA7Ci0JaWYgKElOVEVMX0dFTih2bS0+aTkxNSkgPD0gNSkKKwlpZiAo
SU5URUxfR0VOKGNlLT52bS0+aTkxNSkgPD0gNSkKIAkJZmxhZ3MgfD0gSTkxNV9ESVNQQVRDSF9T
RUNVUkU7CiAKLQllcnIgPSBlbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsCi0JCQkJICAgIGJhdGNo
LT5ub2RlLnN0YXJ0LCBiYXRjaC0+bm9kZS5zaXplLAotCQkJCSAgICBmbGFncyk7CisJZXJyID0g
cnEtPmVuZ2luZS0+ZW1pdF9iYl9zdGFydChycSwKKwkJCQkJYmF0Y2gtPm5vZGUuc3RhcnQsIGJh
dGNoLT5ub2RlLnNpemUsCisJCQkJCWZsYWdzKTsKIAlpZiAoZXJyKQogCQlnb3RvIGVycl9yZXF1
ZXN0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2ln
dF9nZW1fdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dl
bV91dGlscy5oCmluZGV4IDM2MWE3ZWY4NjZiMC4uNDIyMWNmODRkMTc1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuaApAQCAtMTEs
OSArMTEsMTEgQEAKIAogc3RydWN0IGk5MTVfcmVxdWVzdDsKIHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0Owotc3RydWN0IGludGVsX2VuZ2luZV9jczsKIHN0cnVjdCBpOTE1X3ZtYTsKIAorc3RydWN0
IGludGVsX2NvbnRleHQ7CitzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOworCiBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICoKIGlndF9yZXF1ZXN0X2FsbG9jKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgs
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKQEAgLTIzLDExICsyNSw4IEBAIGln
dF9lbWl0X3N0b3JlX2R3KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCQkgIHVuc2lnbmVkIGxvbmcg
Y291bnQsCiAJCSAgdTMyIHZhbCk7CiAKLWludCBpZ3RfZ3B1X2ZpbGxfZHcoc3RydWN0IGk5MTVf
dm1hICp2bWEsCi0JCSAgICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAotCQkgICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAotCQkgICAgdTY0IG9mZnNldCwKLQkJICAgIHVu
c2lnbmVkIGxvbmcgY291bnQsCi0JCSAgICB1MzIgdmFsKTsKK2ludCBpZ3RfZ3B1X2ZpbGxfZHco
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkgICAgc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2
NCBvZmZzZXQsCisJCSAgICB1bnNpZ25lZCBsb25nIGNvdW50LCB1MzIgdmFsKTsKIAogI2VuZGlm
IC8qIF9fSUdUX0dFTV9VVElMU19IX18gKi8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
