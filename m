Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1084B30E3
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2019 18:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D2B6E095;
	Sun, 15 Sep 2019 16:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC446E095
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Sep 2019 16:38:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18497938-1500050 
 for multiple; Sun, 15 Sep 2019 17:37:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Sep 2019 17:37:49 +0100
Message-Id: <20190915163749.19540-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise CS TLB invalidation
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

Q2hlY2sgdGhhdCB3ZSBhcmUgY29ycmVjdGx5IGludmFsaWRhdGluZyB0aGUgVExCIGF0IHRoZSBz
dGFydCBvZiBhCmJhdGNoIGFmdGVyIHVwZGF0aW5nIHRoZSBHVFQuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAyMjcgKysrKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMjI3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKaW5kZXggNTk4YzE4ZDEwNjQwLi5mODcwOWIzMzJi
ZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9n
dHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMK
QEAgLTI1LDEzICsyNSwxNiBAQAogI2luY2x1ZGUgPGxpbnV4L2xpc3Rfc29ydC5oPgogI2luY2x1
ZGUgPGxpbnV4L3ByaW1lX251bWJlcnMuaD4KIAorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250
ZXh0LmgiCiAjaW5jbHVkZSAiZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuaCIKKyNpbmNsdWRl
ICJndC9pbnRlbF9jb250ZXh0LmgiCiAKICNpbmNsdWRlICJpOTE1X3JhbmRvbS5oIgogI2luY2x1
ZGUgImk5MTVfc2VsZnRlc3QuaCIKIAogI2luY2x1ZGUgIm1vY2tfZHJtLmgiCiAjaW5jbHVkZSAi
bW9ja19nZW1fZGV2aWNlLmgiCisjaW5jbHVkZSAiaWd0X2ZsdXNoX3Rlc3QuaCIKIAogc3RhdGlj
IHZvaWQgY2xlYW51cF9mcmVlZF9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogewpAQCAtMTcwNSw2ICsxNzA4LDIyOSBAQCBpbnQgaTkxNV9nZW1fZ3R0X21vY2tfc2VsZnRl
c3RzKHZvaWQpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBjb250ZXh0X3N5bmMoc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCWxv
bmcgdGltZW91dDsKKworCXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChjZSk7CisJ
aWYgKElTX0VSUihycSkpCisJCXJldHVybiBQVFJfRVJSKHJxKTsKKworCWk5MTVfcmVxdWVzdF9n
ZXQocnEpOworCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCisJdGltZW91dCA9IGk5MTVfcmVxdWVz
dF93YWl0KHJxLCAwLCBIWiAvIDUpOworCWk5MTVfcmVxdWVzdF9wdXQocnEpOworCisJcmV0dXJu
IHRpbWVvdXQgPCAwID8gLUVJTyA6IDA7Cit9CisKK3N0YXRpYyBpbnQgc3VibWl0X2JhdGNoKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdTY0IGFkZHIpCit7CisJc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnE7CisJaW50IGVycjsKKworCXJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChj
ZSk7CisJaWYgKElTX0VSUihycSkpCisJCXJldHVybiBQVFJfRVJSKHJxKTsKKworCWVyciA9IDA7
CisJaWYgKHJxLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKSAvKiBkZXRlY3QgYSBoYW5n
ICovCisJCWVyciA9IHJxLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsKKwlpZiAo
ZXJyID09IDApCisJCWVyciA9IHJxLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsIGFkZHIsIDAs
IDApOworCisJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisKKwlyZXR1cm4gZXJyOworfQorCitzdGF0
aWMgaW50IGlndF9jc190bGIodm9pZCAqYXJnKQoreworCWNvbnN0IHVuc2lnbmVkIGludCBjb3Vu
dCA9IFBBR0VfU0laRSAvIDY0OworCWNvbnN0IHVuc2lnbmVkIGludCBjaHVua19zaXplID0gY291
bnQgKiBQQUdFX1NJWkU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7CisJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmJiZSwgKm91dDsKKwlzdHJ1Y3QgaTkxNV9nZW1f
ZW5naW5lc19pdGVyIGl0OworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOworCXN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOworCXN0
cnVjdCBkcm1fZmlsZSAqZmlsZTsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwl1bnNpZ25lZCBp
bnQgaTsKKwl1MzIgKnJlc3VsdDsKKwl1MzIgKmJhdGNoOworCWludCBlcnIgPSAwOworCisJZmls
ZSA9IG1vY2tfZmlsZShpOTE1KTsKKwlpZiAoSVNfRVJSKGZpbGUpKQorCQlyZXR1cm4gUFRSX0VS
UihmaWxlKTsKKworCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCWN0eCA9
IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsKKwlpZiAoSVNfRVJSKGN0eCkpIHsKKwkJZXJyID0g
UFRSX0VSUihjdHgpOworCQlnb3RvIG91dF91bmxvY2s7CisJfQorCisJdm0gPSBjdHgtPnZtOwor
CWlmICghdm0pCisJCWdvdG8gb3V0X3VubG9jazsKKworCWJiZSA9IGk5MTVfZ2VtX29iamVjdF9j
cmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFHRV9TSVpFKTsKKwlpZiAoSVNfRVJSKGJiZSkpIHsKKwkJ
ZXJyID0gUFRSX0VSUihiYmUpOworCQlnb3RvIG91dF91bmxvY2s7CisJfQorCisJYmF0Y2ggPSBp
OTE1X2dlbV9vYmplY3RfcGluX21hcChiYmUsIEk5MTVfTUFQX1dDKTsKKwlpZiAoSVNfRVJSKGJh
dGNoKSkgeworCQllcnIgPSBQVFJfRVJSKGJhdGNoKTsKKwkJZ290byBvdXRfYmJlOworCX0KKwlm
b3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgeworCQl1MzIgKmNzID0gYmF0Y2ggKyBpICogNjQg
LyBzaXplb2YoKmNzKTsKKwkJdTY0IGFkZHIgPSAodm0tPnRvdGFsIC0gUEFHRV9TSVpFKSArIGkg
KiBzaXplb2YodTMyKTsKKworCQlHRU1fQlVHX09OKElOVEVMX0dFTihpOTE1KSA8IDYpOworCQlj
c1swXSA9IE1JX1NUT1JFX0RXT1JEX0lNTV9HRU40OworCQlpZiAoSU5URUxfR0VOKGk5MTUpID49
IDgpIHsKKwkJCWNzWzFdID0gbG93ZXJfMzJfYml0cyhhZGRyKTsKKwkJCWNzWzJdID0gdXBwZXJf
MzJfYml0cyhhZGRyKTsKKwkJCWNzWzNdID0gaTsKKwkJCWNzWzRdID0gTUlfTk9PUDsKKwkJCWNz
WzVdID0gTUlfQkFUQ0hfQlVGRkVSX1NUQVJUX0dFTjg7CisJCX0gZWxzZSB7CisJCQljc1sxXSA9
IDA7CisJCQljc1syXSA9IGxvd2VyXzMyX2JpdHMoYWRkcik7CisJCQljc1szXSA9IGk7CisJCQlj
c1s0XSA9IE1JX05PT1A7CisJCQljc1s1XSA9IE1JX0JBVENIX0JVRkZFUl9TVEFSVDsKKwkJfQor
CX0KKworCW91dCA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFHRV9T
SVpFKTsKKwlpZiAoSVNfRVJSKG91dCkpIHsKKwkJZXJyID0gUFRSX0VSUihvdXQpOworCQlnb3Rv
IG91dF9iYXRjaDsKKwl9CisJaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNoZV9jb2hlcmVuY3kob3V0
LCBJOTE1X0NBQ0hJTkdfQ0FDSEVEKTsKKworCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG91dCwg
dm0sIE5VTEwpOworCWlmIChJU19FUlIodm1hKSkgeworCQllcnIgPSBQVFJfRVJSKHZtYSk7CisJ
CWdvdG8gb3V0X2JhdGNoOworCX0KKworCWVyciA9IGk5MTVfdm1hX3Bpbih2bWEsIDAsIDAsCisJ
CQkgICBQSU5fVVNFUiB8CisJCQkgICBQSU5fT0ZGU0VUX0ZJWEVEIHwKKwkJCSAgICh2bS0+dG90
YWwgLSBQQUdFX1NJWkUpKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9vdXQ7CisJR0VNX0JVR19P
Tih2bWEtPm5vZGUuc3RhcnQgIT0gdm0tPnRvdGFsIC0gUEFHRV9TSVpFKTsKKworCXJlc3VsdCA9
IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG91dCwgSTkxNV9NQVBfV0IpOworCWlmIChJU19FUlIo
cmVzdWx0KSkgeworCQllcnIgPSBQVFJfRVJSKHJlc3VsdCk7CisJCWdvdG8gb3V0X291dDsKKwl9
CisKKwlmb3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5l
cyhjdHgpLCBpdCkgeworCQlJR1RfVElNRU9VVChlbmRfdGltZSk7CisJCXVuc2lnbmVkIGxvbmcg
cGFzcyA9IDA7CisKKwkJaWYgKCFpbnRlbF9lbmdpbmVfY2FuX3N0b3JlX2R3b3JkKGNlLT5lbmdp
bmUpKQorCQkJY29udGludWU7CisKKwkJd2hpbGUgKCFfX2lndF90aW1lb3V0KGVuZF90aW1lLCBO
VUxMKSkgeworCQkJdTY0IG9mZnNldDsKKworCQkJb2Zmc2V0ID0gcmFuZG9tX29mZnNldCgwLCB2
bS0+dG90YWwgLSBQQUdFX1NJWkUsCisJCQkJCSAgICAgICBjaHVua19zaXplLCBQQUdFX1NJWkUp
OworCisJCQllcnIgPSB2bS0+YWxsb2NhdGVfdmFfcmFuZ2Uodm0sIG9mZnNldCwgY2h1bmtfc2l6
ZSk7CisJCQlpZiAoZXJyKQorCQkJCWdvdG8gZW5kOworCisJCQltZW1zZXQzMihyZXN1bHQsIFNU
QUNLX01BR0lDLCBQQUdFX1NJWkUgLyBzaXplb2YodTMyKSk7CisKKwkJCXZtYSA9IGk5MTVfdm1h
X2luc3RhbmNlKGJiZSwgdm0sIE5VTEwpOworCQkJaWYgKElTX0VSUih2bWEpKSB7CisJCQkJZXJy
ID0gUFRSX0VSUih2bWEpOworCQkJCWdvdG8gZW5kOworCQkJfQorCisJCQllcnIgPSB2bWEtPm9w
cy0+c2V0X3BhZ2VzKHZtYSk7CisJCQlpZiAoZXJyKQorCQkJCWdvdG8gZW5kOworCisJCQkvKiBS
ZXBsYWNlIHRoZSBUTEIgd2l0aCB0YXJnZXQgYmF0Y2hlcyAqLworCQkJZm9yIChpID0gMDsgaSA8
IGNvdW50OyBpKyspIHsKKwkJCQl1MzIgKmNzID0gYmF0Y2ggKyBpICogNjQgLyBzaXplb2YoKmNz
KTsKKwkJCQl1NjQgYWRkcjsKKworCQkJCXZtYS0+bm9kZS5zdGFydCA9IG9mZnNldCArIGkgKiBQ
QUdFX1NJWkU7CisJCQkJdm0tPmluc2VydF9lbnRyaWVzKHZtLCB2bWEsIEk5MTVfQ0FDSEVfTk9O
RSwgMCk7CisKKwkJCQlhZGRyID0gdm1hLT5ub2RlLnN0YXJ0ICsgaSAqIDY0OworCQkJCWNzWzRd
ID0gTUlfTk9PUDsKKwkJCQljc1s2XSA9IGxvd2VyXzMyX2JpdHMoYWRkcik7CisJCQkJY3NbN10g
PSB1cHBlcl8zMl9iaXRzKGFkZHIpOworCQkJCXdtYigpOworCisJCQkJZXJyID0gc3VibWl0X2Jh
dGNoKGNlLCBhZGRyKTsKKwkJCQlpZiAoZXJyKQorCQkJCQlnb3RvIGVuZDsKKwkJCX0KKworCQkJ
eWllbGQoKTsKKwkJCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKQorCQkJCWJhdGNoW2kgKiA2
NCAvIHNpemVvZigqYmF0Y2gpICsgNF0gPQorCQkJCQlNSV9CQVRDSF9CVUZGRVJfRU5EOworCQkJ
d21iKCk7CisKKwkJCXZtYS0+b3BzLT5jbGVhcl9wYWdlcyh2bWEpOworCisJCQllcnIgPSBjb250
ZXh0X3N5bmMoY2UpOworCQkJaWYgKGVycikgeworCQkJCXByX2VycigiJXM6IHdyaXRlcyB0aW1l
ZCBvdXRcbiIsCisJCQkJICAgICAgIGNlLT5lbmdpbmUtPm5hbWUpOworCQkJCWdvdG8gZW5kOwor
CQkJfQorCisJCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgeworCQkJCWlmIChyZXN1bHRb
aV0gIT0gaSkgeworCQkJCQlwcl9lcnIoIiVzOiBXcml0ZSBsb3N0IG9uIHBhc3MgJWx1LCBhdCBv
ZmZzZXQgJWxseCwgaW5kZXggJWQsIGZvdW5kICV4LCBleHBlY3RlZCAleFxuIiwKKwkJCQkJICAg
ICAgIGNlLT5lbmdpbmUtPm5hbWUsIHBhc3MsCisJCQkJCSAgICAgICBvZmZzZXQsIGksIHJlc3Vs
dFtpXSwgaSk7CisJCQkJCWVyciA9IC1FSU5WQUw7CisJCQkJCWdvdG8gZW5kOworCQkJCX0KKwkJ
CX0KKworCQkJdm0tPmNsZWFyX3JhbmdlKHZtLCBvZmZzZXQsIGNodW5rX3NpemUpOworCQkJcGFz
cysrOworCQl9CisJfQorZW5kOgorCWlmIChpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRf
TE9DS0VEKSkKKwkJZXJyID0gLUVJTzsKKwlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVz
KGN0eCk7CisJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvdXQpOworb3V0X291dDoKKwlpOTE1
X2dlbV9vYmplY3RfcHV0KG91dCk7CitvdXRfYmF0Y2g6CisJaTkxNV9nZW1fb2JqZWN0X3VucGlu
X21hcChiYmUpOworb3V0X2JiZToKKwlpOTE1X2dlbV9vYmplY3RfcHV0KGJiZSk7CitvdXRfdW5s
b2NrOgorCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJbW9ja19maWxl
X2ZyZWUoaTkxNSwgZmlsZSk7CisJcmV0dXJuIGVycjsKK30KKwogaW50IGk5MTVfZ2VtX2d0dF9s
aXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdGF0aWMg
Y29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewpAQCAtMTcyMiw2ICsxOTQ4LDcg
QEAgaW50IGk5MTVfZ2VtX2d0dF9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIAkJU1VCVEVTVChpZ3RfZ2d0dF9wb3QpLAogCQlTVUJURVNUKGlndF9nZ3R0X2Zp
bGwpLAogCQlTVUJURVNUKGlndF9nZ3R0X3BhZ2UpLAorCQlTVUJURVNUKGlndF9jc190bGIpLAog
CX07CiAKIAlHRU1fQlVHX09OKG9mZnNldF9pbl9wYWdlKGk5MTUtPmdndHQudm0udG90YWwpKTsK
LS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
