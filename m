Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B4FDF21C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 17:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957856E162;
	Mon, 21 Oct 2019 15:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D086E6E162
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 15:56:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18915056-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 16:56:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 16:56:02 +0100
Message-Id: <20191021155602.10713-1-chris@chris-wilson.co.uk>
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
ZWF0LmMgIHwgIDc3ICsrKysrKysrKwogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
aGVhcnRiZWF0LmggIHwgIDE1ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfcG0uYyAgICAgfCAgIDIgKy0KIC4uLi9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVh
cnRiZWF0LmMgICB8IDE1NCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcHJpb2xpc3RfdHlwZXMuaCAgICB8ICAgMSArCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDEgKwogNyBmaWxlcyBjaGFuZ2VkLCAyNTEgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVh
cnRiZWF0LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IGExNmEyZGFlZjk3Ny4uMmZkNGJlZDE4
OGU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtNzgsOCArNzgsOSBAQCBndC15ICs9IFwKIAln
dC9pbnRlbF9icmVhZGNydW1icy5vIFwKIAlndC9pbnRlbF9jb250ZXh0Lm8gXAogCWd0L2ludGVs
X2VuZ2luZV9jcy5vIFwKLQlndC9pbnRlbF9lbmdpbmVfcG9vbC5vIFwKKwlndC9pbnRlbF9lbmdp
bmVfaGVhcnRiZWF0Lm8gXAogCWd0L2ludGVsX2VuZ2luZV9wbS5vIFwKKwlndC9pbnRlbF9lbmdp
bmVfcG9vbC5vIFwKIAlndC9pbnRlbF9lbmdpbmVfdXNlci5vIFwKIAlndC9pbnRlbF9ndC5vIFwK
IAlndC9pbnRlbF9ndF9pcnEubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfaGVhcnRiZWF0LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi40YjlhYjc4MTNkNTQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMKQEAgLTAsMCArMSw3NyBAQAorLyoKKyAqIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRl
bCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1X3JlcXVlc3QuaCIKKworI2luY2x1
ZGUgImludGVsX2NvbnRleHQuaCIKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lmgi
CisjaW5jbHVkZSAiaW50ZWxfZW5naW5lX3BtLmgiCisjaW5jbHVkZSAiaW50ZWxfZW5naW5lLmgi
CisjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKKworc3RhdGljIHZvaWQgaWRsZV9wdWxzZShzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCWVu
Z2luZS0+d2FrZXJlZl9zZXJpYWwgPSBSRUFEX09OQ0UoZW5naW5lLT5zZXJpYWwpICsgMTsKKwlp
OTE1X3JlcXVlc3RfYWRkX2FjdGl2ZV9iYXJyaWVycyhycSk7Cit9CisKK2ludCBpbnRlbF9lbmdp
bmVfcHVsc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpOTE1
X3NjaGVkX2F0dHIgYXR0ciA9IHsgLnByaW9yaXR5ID0gSTkxNV9QUklPUklUWV9CQVJSSUVSIH07
CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gZW5naW5lLT5rZXJuZWxfY29udGV4dDsKKwlz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlpbnQgZXJyID0gMDsKKworCWlmICghaW50ZWxfZW5n
aW5lX2hhc19wcmVlbXB0aW9uKGVuZ2luZSkpCisJCXJldHVybiAtRU5PREVWOworCisJaWYgKCFp
bnRlbF9lbmdpbmVfcG1fZ2V0X2lmX2F3YWtlKGVuZ2luZSkpCisJCXJldHVybiAwOworCisJaWYg
KG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmY2UtPnRpbWVsaW5lLT5tdXRleCkpCisJCWdvdG8g
b3V0X3JwbTsKKworCWludGVsX2NvbnRleHRfZW50ZXIoY2UpOworCXJxID0gX19pOTE1X3JlcXVl
c3RfY3JlYXRlKGNlLCBHRlBfTk9XQUlUIHwgX19HRlBfTk9XQVJOKTsKKwlpbnRlbF9jb250ZXh0
X2V4aXQoY2UpOworCWlmIChJU19FUlIocnEpKSB7CisJCWVyciA9IFBUUl9FUlIocnEpOworCQln
b3RvIG91dF91bmxvY2s7CisJfQorCisJcnEtPmZsYWdzIHw9IEk5MTVfUkVRVUVTVF9TRU5USU5F
TDsKKwlpZGxlX3B1bHNlKGVuZ2luZSwgcnEpOworCisJX19pOTE1X3JlcXVlc3RfY29tbWl0KHJx
KTsKKwlfX2k5MTVfcmVxdWVzdF9xdWV1ZShycSwgJmF0dHIpOworCitvdXRfdW5sb2NrOgorCW11
dGV4X3VubG9jaygmY2UtPnRpbWVsaW5lLT5tdXRleCk7CitvdXRfcnBtOgorCWludGVsX2VuZ2lu
ZV9wbV9wdXQoZW5naW5lKTsKKwlyZXR1cm4gZXJyOworfQorCitpbnQgaW50ZWxfZW5naW5lX2Zs
dXNoX2JhcnJpZXJzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycTsKKworCWlmIChsbGlzdF9lbXB0eSgmZW5naW5lLT5iYXJyaWVyX3Rh
c2tzKSkKKwkJcmV0dXJuIDA7CisKKwlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZW5naW5lLT5r
ZXJuZWxfY29udGV4dCk7CisJaWYgKElTX0VSUihycSkpCisJCXJldHVybiBQVFJfRVJSKHJxKTsK
KworCWlkbGVfcHVsc2UoZW5naW5lLCBycSk7CisJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisKKwly
ZXR1cm4gMDsKK30KKworI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQor
I2luY2x1ZGUgInNlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYyIKKyNlbmRpZgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oCm5ldyBmaWxlIG1v
ZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYjMzNGU1YWFmNzhkCi0tLSAvZGV2L251bGwK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oCkBA
IC0wLDAgKzEsMTUgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisgKgor
ICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVmIElO
VEVMX0VOR0lORV9IRUFSVEJFQVRfSAorI2RlZmluZSBJTlRFTF9FTkdJTkVfSEVBUlRCRUFUX0gK
Kworc3RydWN0IGludGVsX2VuZ2luZV9jczsKKworaW50IGludGVsX2VuZ2luZV9wdWxzZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOworaW50IGludGVsX2VuZ2luZV9mbHVzaF9iYXJy
aWVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOworCisjZW5kaWYgLyogSU5URUxf
RU5HSU5FX0hFQVJUQkVBVF9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9wbS5jCmluZGV4IDY3ZWI2MTgzNjQ4YS4uN2Q3NjYxMWQ5ZGYxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtMTExLDcgKzExMSw3IEBAIHN0YXRpYyBi
b29sIHN3aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiAJaTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVfYmFycmllcnMocnEpOwogCiAJLyogSW5zdGFs
bCBvdXJzZWx2ZXMgYXMgYSBwcmVlbXB0aW9uIGJhcnJpZXIgKi8KLQlycS0+c2NoZWQuYXR0ci5w
cmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfVU5QUkVFTVBUQUJMRTsKKwlycS0+c2NoZWQuYXR0ci5w
cmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfQkFSUklFUjsKIAlfX2k5MTVfcmVxdWVzdF9jb21taXQo
cnEpOwogCiAJLyogUmVsZWFzZSBvdXIgZXhjbHVzaXZlIGhvbGQgb24gdGhlIGVuZ2luZSAqLwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0
YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVh
dC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMTA3MjRkOThlNzk2
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5n
aW5lX2hlYXJ0YmVhdC5jCkBAIC0wLDAgKzEsMTU0IEBACisvKgorICogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE4IEludGVsIENvcnBvcmF0aW9u
CisgKi8KKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisKKyNpbmNsdWRlICJpbnRlbF9ndF9yZXF1
ZXN0cy5oIgorI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKKworc3RydWN0IHB1bHNlIHsKKwlz
dHJ1Y3QgaTkxNV9hY3RpdmUgYWN0aXZlOworCXN0cnVjdCBrcmVmIGtyZWY7Cit9OworCitzdGF0
aWMgaW50IHB1bHNlX2FjdGl2ZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKmFjdGl2ZSkKK3sKKwlrcmVm
X2dldCgmY29udGFpbmVyX29mKGFjdGl2ZSwgc3RydWN0IHB1bHNlLCBhY3RpdmUpLT5rcmVmKTsK
KwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgcHVsc2VfZnJlZShzdHJ1Y3Qga3JlZiAqa3Jl
ZikKK3sKKwlrZnJlZShjb250YWluZXJfb2Yoa3JlZiwgc3RydWN0IHB1bHNlLCBrcmVmKSk7Cit9
CisKK3N0YXRpYyB2b2lkIHB1bHNlX3B1dChzdHJ1Y3QgcHVsc2UgKnApCit7CisJa3JlZl9wdXQo
JnAtPmtyZWYsIHB1bHNlX2ZyZWUpOworfQorCitzdGF0aWMgdm9pZCBwdWxzZV9yZXRpcmUoc3Ry
dWN0IGk5MTVfYWN0aXZlICphY3RpdmUpCit7CisJcHVsc2VfcHV0KGNvbnRhaW5lcl9vZihhY3Rp
dmUsIHN0cnVjdCBwdWxzZSwgYWN0aXZlKSk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgcHVsc2UgKnB1
bHNlX2NyZWF0ZSh2b2lkKQoreworCXN0cnVjdCBwdWxzZSAqcDsKKworCXAgPSBrbWFsbG9jKHNp
emVvZigqcCksIEdGUF9LRVJORUwpOworCWlmICghcCkKKwkJcmV0dXJuIHA7CisKKwlrcmVmX2lu
aXQoJnAtPmtyZWYpOworCWk5MTVfYWN0aXZlX2luaXQoJnAtPmFjdGl2ZSwgcHVsc2VfYWN0aXZl
LCBwdWxzZV9yZXRpcmUpOworCisJcmV0dXJuIHA7Cit9CisKK3N0YXRpYyBpbnQgX19saXZlX2lk
bGVfcHVsc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAgICBpbnQgKCpm
bikoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqY3MpKQoreworCXN0cnVjdCBwdWxzZSAqcDsKKwlp
bnQgZXJyOworCisJR0VNX0JVR19PTighbGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmllcl90YXNr
cykpOworCisJcCA9IHB1bHNlX2NyZWF0ZSgpOworCWlmICghcCkKKwkJcmV0dXJuIC1FTk9NRU07
CisKKwllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoJnAtPmFj
dGl2ZSwgZW5naW5lKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dDsKKworCWk5MTVfYWN0aXZlX2Fj
cXVpcmVfYmFycmllcigmcC0+YWN0aXZlKTsKKworCWVyciA9IGZuKGVuZ2luZSk7CisJaWYgKGVy
cikgeworCQlsbGlzdF9kZWxfYWxsKCZlbmdpbmUtPmJhcnJpZXJfdGFza3MpOworCQlnb3RvIG91
dDsKKwl9CisKKwlpZiAoaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoZW5naW5lLT5n
dCwgSFogLyA1KSkgeworCQllcnIgPSAtRVRJTUU7CisJCWdvdG8gb3V0OworCX0KKworCWlmIChh
dG9taWNfcmVhZCgmcC0+YWN0aXZlLmNvdW50KSkgeworCQlwcl9lcnIoIiVzOiBoZWFydGJlYXQg
cHVsc2UgZGlkIG5vdCBmbHVzaCBpZGxlIHRhc2tzXG4iLAorCQkgICAgICAgZW5naW5lLT5uYW1l
KTsKKwkJZXJyID0gLUVJTlZBTDsKKwkJZ290byBvdXQ7CisJfQorCitvdXQ6CisJcHVsc2VfcHV0
KHApOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgbGl2ZV9pZGxlX2ZsdXNoKHZvaWQg
KmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwlpbnQgZXJyID0gMDsK
KworCS8qIENoZWNrIHRoYXQgd2UgY2FuIGZsdXNoIHRoZSBpZGxlIGJhcnJpZXJzICovCisKKwlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpIHsKKwkJaW50ZWxfZW5naW5lX3BtX2dldChl
bmdpbmUpOworCQllcnIgPSBfX2xpdmVfaWRsZV9wdWxzZShlbmdpbmUsIGludGVsX2VuZ2luZV9m
bHVzaF9iYXJyaWVycyk7CisJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKKwkJaWYgKGVy
cikKKwkJCWJyZWFrOworCX0KKworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgbGl2ZV9p
ZGxlX3B1bHNlKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsK
KwlpbnQgZXJyID0gMDsKKworCS8qIENoZWNrIHRoYXQgaGVhcnRiZWF0IHB1bHNlcyBmbHVzaCB0
aGUgaWRsZSBiYXJyaWVycyAqLworCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7
CisJCWludGVsX2VuZ2luZV9wbV9nZXQoZW5naW5lKTsKKwkJZXJyID0gX19saXZlX2lkbGVfcHVs
c2UoZW5naW5lLCBpbnRlbF9lbmdpbmVfcHVsc2UpOworCQlpbnRlbF9lbmdpbmVfcG1fcHV0KGVu
Z2luZSk7CisJCWlmIChlcnIgJiYgZXJyICE9IC1FTk9ERVYpCisJCQlicmVhazsKKworCQllcnIg
PSAwOworCX0KKworCXJldHVybiBlcnI7Cit9CisKK2ludCBpbnRlbF9oZWFydGJlYXRfbGl2ZV9z
ZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RhdGljIGNvbnN0
IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKKwkJU1VCVEVTVChsaXZlX2lkbGVfZmx1
c2gpLAorCQlTVUJURVNUKGxpdmVfaWRsZV9wdWxzZSksCisJfTsKKwlpbnQgc2F2ZWRfaGFuZ2No
ZWNrOworCWludCBlcnI7CisKKwlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKCZpOTE1LT5ndCkpCisJ
CXJldHVybiAwOworCisJc2F2ZWRfaGFuZ2NoZWNrID0gaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hh
bmdjaGVjazsKKwlpOTE1X21vZHBhcmFtcy5lbmFibGVfaGFuZ2NoZWNrID0gSU5UX01BWDsKKwor
CWVyciA9ICBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCAmaTkxNS0+Z3QpOworCisJaTkx
NV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdjaGVjayA9IHNhdmVkX2hhbmdjaGVjazsKKwlyZXR1cm4g
ZXJyOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wcmlvbGlzdF90
eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wcmlvbGlzdF90eXBlcy5oCmluZGV4
IDIxMDM3YTJlMjAzOC4uYWU4YmIzY2I2MjdlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wcmlvbGlzdF90eXBlcy5oCkBAIC0zOSw2ICszOSw3IEBAIGVudW0gewogICogYWN0aXZlIHJl
cXVlc3QuCiAgKi8KICNkZWZpbmUgSTkxNV9QUklPUklUWV9VTlBSRUVNUFRBQkxFIElOVF9NQVgK
KyNkZWZpbmUgSTkxNV9QUklPUklUWV9CQVJSSUVSIElOVF9NQVgKIAogI2RlZmluZSBfX05PX1BS
RUVNUFRJT04gKEk5MTVfUFJJT1JJVFlfV0FJVCkKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKaW5kZXggNmRhZjY1OTllYzc5
Li4wMGEwNjM3MzBiYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaApAQCAtMTcsNiArMTcsNyBAQCBzZWxmdGVzdChndF90
aW1lbGluZXMsIGludGVsX3RpbWVsaW5lX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoZ3RfY29u
dGV4dHMsIGludGVsX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChndF9scmMsIGlu
dGVsX2xyY19saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGd0X3BtLCBpbnRlbF9ndF9wbV9saXZl
X3NlbGZ0ZXN0cykKK3NlbGZ0ZXN0KGd0X2hlYXJ0YmVhdCwgaW50ZWxfaGVhcnRiZWF0X2xpdmVf
c2VsZnRlc3RzKQogc2VsZnRlc3QocmVxdWVzdHMsIGk5MTVfcmVxdWVzdF9saXZlX3NlbGZ0ZXN0
cykKIHNlbGZ0ZXN0KGFjdGl2ZSwgaTkxNV9hY3RpdmVfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVz
dChvYmplY3RzLCBpOTE1X2dlbV9vYmplY3RfbGl2ZV9zZWxmdGVzdHMpCi0tIAoyLjI0LjAucmMw
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
