Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B93BEDA943
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 11:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69ABB6EA34;
	Thu, 17 Oct 2019 09:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 234E66EA43
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 09:52:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18867052-1500050 
 for multiple; Thu, 17 Oct 2019 10:52:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 10:52:06 +0100
Message-Id: <20191017095206.3954-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016195251.17863-1-chris@chris-wilson.co.uk>
References: <20191016195251.17863-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Don't merely skip
 submission if maybe timeslicing
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

Tm9ybWFsbHksIHdlIHRyeSBhbmQgc2tpcCBzdWJtaXNzaW9uIGlmIEVMU1BbMV0gaXMgZmlsbGVk
LiBIb3dldmVyLCB3ZQptYXkgZGVzaXJlIHRvIGVuYWJsZSB0aW1lc2xpY2luZyBkdWUgdG8gdGhl
IHF1ZXVlIHByaW9yaXR5LCBldmVuIGlmCkVMU1BbMV0gaXRzZWxmIGRvZXMgbm90IHJlcXVpcmUg
dGltZXNsaWNpbmcuIFRoYXQgaXMgdGhlIHF1ZXVlIGlzIGVxdWFsCnByaW9yaXR5IHRvIEVMU1Bb
MF0gYW5kIGhpZ2hlciBwcmlvcml0eSB0aGVuIEVMU1BbMV0uIFByZXZpb3VzbHksIHdlCndvdWxk
IHdhaXQgdW50aWwgdGhlIGNvbnRleHQgc3dpdGNoIHRvIHByZWVtcHQgdGhlIGN1cnJlbnQgRUxT
UFsxXSwgYnV0CndpdGggdGltZXNsaWNpbmcsIHdlIHdhbnQgdG8gcHJlZW1wdCBFTFNQWzBdIGFu
ZCByZXBsYWNlIGl0IHdpdGggdGhlCnF1ZXVlLgoKSW4gd3JpdGluZyB0aGUgdGVzdCBjYXNlLCBp
dCBiZWNvbWUgcXVpY2tseSBhcHBhcmVudCB0aGF0IHdlIHdlcmUgYWxzbwpzdXBwcmVzc2luZyB0
aGUgdGFza2xldCBkdXJpbmcgcHJvbW90aW9uIGFuZCBzbyBmYWlsaW5nIHRvIG5vdGljZSB3aGVu
CnRoZSBxdWV1ZSBzdGFydGVkIHJlcXVpcmluZyB0aW1lc2xpY2luZy4KCkZpeGVzOiAyMjI5YWRj
ODEzODAgKCJkcm0vaTkxNS9leGVjbGlzdDogVHJpbSBpbW1lZGlhdGUgdGltZXNsaWNlIGV4cGly
eSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCktpY2sg
ZXhlY2xpc3RzX3N1Ym1pc3Npb25fdGFza2xldCBoYXJkZXIuCi0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgfCAgMjIgKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfbHJjLmMgfCAxNjQgKysrKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyAgfCAgMTcgKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oICB8ICAxOCAtLS0KIDQgZmlsZXMgY2hhbmdlZCwgMTky
IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKaW5kZXggZTlmZTlmNzljZWRkLi5kMDA4OGQwMjAyMjAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCkBAIC0zNTIsMTAgKzM1MiwxNSBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
bmVlZF9wcmVlbXB0KGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkgKiBI
b3dldmVyLCB0aGUgcHJpb3JpdHkgaGludCBpcyBhIG1lcmUgaGludCB0aGF0IHdlIG1heSBuZWVk
IHRvCiAJICogcHJlZW1wdC4gSWYgdGhhdCBoaW50IGlzIHN0YWxlIG9yIHdlIG1heSBiZSB0cnlp
bmcgdG8gcHJlZW1wdAogCSAqIG91cnNlbHZlcywgaWdub3JlIHRoZSByZXF1ZXN0LgorCSAqCisJ
ICogTW9yZSBuYXR1cmFsbHkgd2Ugd291bGQgd3JpdGUKKwkgKiAgICAgIHByaW8gPj0gbWF4KDAs
IGxhc3QpOworCSAqIGV4Y2VwdCB0aGF0IHdlIHdpc2ggdG8gcHJldmVudCB0cmlnZ2VyaW5nIHBy
ZWVtcHRpb24gYXQgdGhlIHNhbWUKKwkgKiBwcmlvcml0eSBsZXZlbDogdGhlIHRhc2sgdGhhdCBp
cyBydW5uaW5nIHNob3VsZCByZW1haW4gcnVubmluZworCSAqIHRvIHByZXNlcnZlIEZJRk8gb3Jk
ZXJpbmcgb2YgZGVwZW5kZW5jaWVzLgogCSAqLwotCWxhc3RfcHJpbyA9IGVmZmVjdGl2ZV9wcmlv
KHJxKTsKLQlpZiAoIWk5MTVfc2NoZWR1bGVyX25lZWRfcHJlZW1wdChlbmdpbmUtPmV4ZWNsaXN0
cy5xdWV1ZV9wcmlvcml0eV9oaW50LAotCQkJCQkgbGFzdF9wcmlvKSkKKwlsYXN0X3ByaW8gPSBt
YXgoZWZmZWN0aXZlX3ByaW8ocnEpLCBJOTE1X1BSSU9SSVRZX05PUk1BTCAtIDEpOworCWlmIChl
bmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50IDw9IGxhc3RfcHJpbykKIAkJcmV0
dXJuIGZhbHNlOwogCiAJLyoKQEAgLTE1MDksOCArMTUxNCwxNyBAQCBzdGF0aWMgdm9pZCBleGVj
bGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQkgKiBzdWJt
aXNzaW9uLgogCQkJICovCiAJCQlpZiAoIWxpc3RfaXNfbGFzdCgmbGFzdC0+c2NoZWQubGluaywK
LQkJCQkJICAmZW5naW5lLT5hY3RpdmUucmVxdWVzdHMpKQorCQkJCQkgICZlbmdpbmUtPmFjdGl2
ZS5yZXF1ZXN0cykpIHsKKwkJCQkvKgorCQkJCSAqIEV2ZW4gaWYgRUxTUFsxXSBpcyBvY2N1cGll
ZCBhbmQgbm90IHdvcnRoeQorCQkJCSAqIG9mIHRpbWVzbGljZXMsIG91ciBxdWV1ZSBtaWdodCBi
ZS4KKwkJCQkgKi8KKwkJCQlpZiAoIWV4ZWNsaXN0cy0+dGltZXIuZXhwaXJlcyAmJgorCQkJCSAg
ICBuZWVkX3RpbWVzbGljZShlbmdpbmUsIGxhc3QpKQorCQkJCQltb2RfdGltZXIoJmV4ZWNsaXN0
cy0+dGltZXIsCisJCQkJCQkgIGppZmZpZXMgKyAxKTsKIAkJCQlyZXR1cm47CisJCQl9CiAKIAkJ
CS8qCiAJCQkgKiBXYUlkbGVMaXRlUmVzdG9yZTpiZHcsc2tsCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IDI4NjgzNzFjNjA5ZS4uNWJjZmU0YTI0NjZmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtMzI1LDcgKzMyNSwxMyBAQCBzZW1h
cGhvcmVfcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV92
bWEgKnZtYSwgaW50IGlkeCkKIAlpZiAoSVNfRVJSKHJxKSkKIAkJZ290byBvdXRfY3R4OwogCi0J
ZXJyID0gZW1pdF9zZW1hcGhvcmVfY2hhaW4ocnEsIHZtYSwgaWR4KTsKKwllcnIgPSAwOworCWlm
IChycS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYikKKwkJZXJyID0gcnEtPmVuZ2luZS0+
ZW1pdF9pbml0X2JyZWFkY3J1bWIocnEpOworCWlmIChlcnIgPT0gMCkKKwkJZXJyID0gZW1pdF9z
ZW1hcGhvcmVfY2hhaW4ocnEsIHZtYSwgaWR4KTsKKwlpZiAoZXJyID09IDApCisJCWk5MTVfcmVx
dWVzdF9nZXQocnEpOwogCWk5MTVfcmVxdWVzdF9hZGQocnEpOwogCWlmIChlcnIpCiAJCXJxID0g
RVJSX1BUUihlcnIpOwpAQCAtMzM4LDEwICszNDQsMTAgQEAgc2VtYXBob3JlX3F1ZXVlKHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfdm1hICp2bWEsIGludCBpZHgp
CiBzdGF0aWMgaW50CiByZWxlYXNlX3F1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwKIAkgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKLQkgICAgICBpbnQgaWR4KQorCSAgICAg
IGludCBpZHgsIGludCBwcmlvKQogewogCXN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgYXR0ciA9IHsK
LQkJLnByaW9yaXR5ID0gSTkxNV9VU0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfTUFYKSwKKwkJ
LnByaW9yaXR5ID0gcHJpbywKIAl9OwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXUzMiAq
Y3M7CkBAIC0zNjIsOSArMzY4LDE1IEBAIHJlbGVhc2VfcXVldWUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAogCSpjcysrID0gMTsKIAogCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3Mp
OworCisJaTkxNV9yZXF1ZXN0X2dldChycSk7CiAJaTkxNV9yZXF1ZXN0X2FkZChycSk7CiAKKwls
b2NhbF9iaF9kaXNhYmxlKCk7CiAJZW5naW5lLT5zY2hlZHVsZShycSwgJmF0dHIpOworCWxvY2Fs
X2JoX2VuYWJsZSgpOyAvKiBraWNrIHRhc2tsZXQgKi8KKworCWk5MTVfcmVxdWVzdF9wdXQocnEp
OwogCiAJcmV0dXJuIDA7CiB9CkBAIC0zODMsNyArMzk1LDYgQEAgc2xpY2Vfc2VtYXBob3JlX3F1
ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm91dGVyLAogCWlmIChJU19FUlIoaGVhZCkpCiAJ
CXJldHVybiBQVFJfRVJSKGhlYWQpOwogCi0JaTkxNV9yZXF1ZXN0X2dldChoZWFkKTsKIAlmb3Jf
ZWFjaF9lbmdpbmUoZW5naW5lLCBvdXRlci0+aTkxNSwgaWQpIHsKIAkJZm9yIChpID0gMDsgaSA8
IGNvdW50OyBpKyspIHsKIAkJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwpAQCAtMzkzLDEwICs0
MDQsMTIgQEAgc2xpY2Vfc2VtYXBob3JlX3F1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm91
dGVyLAogCQkJCWVyciA9IFBUUl9FUlIocnEpOwogCQkJCWdvdG8gb3V0OwogCQkJfQorCisJCQlp
OTE1X3JlcXVlc3RfcHV0KHJxKTsKIAkJfQogCX0KIAotCWVyciA9IHJlbGVhc2VfcXVldWUob3V0
ZXIsIHZtYSwgbik7CisJZXJyID0gcmVsZWFzZV9xdWV1ZShvdXRlciwgdm1hLCBuLCBJTlRfTUFY
KTsKIAlpZiAoZXJyKQogCQlnb3RvIG91dDsKIApAQCAtNDgyLDYgKzQ5NSwxNDYgQEAgc3RhdGlj
IGludCBsaXZlX3RpbWVzbGljZV9wcmVlbXB0KHZvaWQgKmFyZykKIAlyZXR1cm4gZXJyOwogfQog
CitzdGF0aWMgaW50IG5vcF9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
K3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKworCXJxID0gaTkxNV9yZXF1ZXN0X2NyZWF0
ZShlbmdpbmUtPmtlcm5lbF9jb250ZXh0KTsKKwlpZiAoSVNfRVJSKHJxKSkKKwkJcmV0dXJuIFBU
Ul9FUlIocnEpOworCisJaTkxNV9yZXF1ZXN0X2FkZChycSk7CisJcmV0dXJuIDA7Cit9CisKK3N0
YXRpYyB2b2lkIHdhaXRfZm9yX3N1Ym1pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Cit7CisJZG8geworCQljb25kX3Jlc2NoZWQoKTsKKwkJaW50ZWxfZW5naW5lX2ZsdXNoX3N1Ym1p
c3Npb24oZW5naW5lKTsKKwl9IHdoaWxlIChSRUFEX09OQ0UoZW5naW5lLT5leGVjbGlzdHMucGVu
ZGluZ1swXSkpOworfQorCitzdGF0aWMgaW50IGxpdmVfdGltZXNsaWNlX3F1ZXVlKHZvaWQgKmFy
ZykKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmo7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCWVudW0gaW50
ZWxfZW5naW5lX2lkIGlkOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCXZvaWQgKnZhZGRyOwor
CWludCBlcnIgPSAwOworCisJLyoKKwkgKiBNYWtlIHN1cmUgdGhhdCBldmVuIGlmIEVMU1BbMF0g
YW5kIEVMU1BbMV0gYXJlIGZpbGxlZCB3aXRoCisJICogdGltZXNsaWNpbmcgYmV0d2VlbiB0aGVt
IGRpc2FibGVkLCB3ZSAqZG8qIGVuYWJsZSB0aW1lc2xpY2luZworCSAqIGlmIHRoZSBxdWV1ZSBk
ZW1hbmRzIGl0LiAoTm9ybWFsbHksIHdlIGRvIG5vdCBzdWJtaXQgaWYKKwkgKiBFTFNQWzFdIGlz
IGFscmVhZHkgb2NjdXBpZWQsIHNvIG11c3QgcmVseSBvbiB0aW1lc2xpY2luZyB0bworCSAqIGVq
ZWN0IEVMU1BbMF0gaW4gZmF2b3VyIG9mIHRoZSBxdWV1ZS4pCisJICovCisKKwlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGd0LT5pOTE1LCBQQUdFX1NJWkUpOworCWlmIChJ
U19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCXZtYSA9IGk5MTVfdm1hX2lu
c3RhbmNlKG9iaiwgJmd0LT5nZ3R0LT52bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKSB7CisJ
CWVyciA9IFBUUl9FUlIodm1hKTsKKwkJZ290byBlcnJfb2JqOworCX0KKworCXZhZGRyID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUih2YWRk
cikpIHsKKwkJZXJyID0gUFRSX0VSUih2YWRkcik7CisJCWdvdG8gZXJyX29iajsKKwl9CisKKwll
cnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fR0xPQkFMKTsKKwlpZiAoZXJyKQorCQln
b3RvIGVycl9tYXA7CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpIHsK
KwkJc3RydWN0IGk5MTVfc2NoZWRfYXR0ciBhdHRyID0geworCQkJLnByaW9yaXR5ID0gSTkxNV9V
U0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfTUFYKSwKKwkJfTsKKwkJc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7CisKKwkJaWYgKCFpbnRlbF9lbmdpbmVfaGFzX3ByZWVtcHRpb24oZW5naW5lKSkK
KwkJCWNvbnRpbnVlOworCisJCW1lbXNldCh2YWRkciwgMCwgUEFHRV9TSVpFKTsKKworCQkvKiBF
TFNQWzBdOiBzZW1hcGhvcmUgd2FpdCAqLworCQlycSA9IHNlbWFwaG9yZV9xdWV1ZShlbmdpbmUs
IHZtYSwgMCk7CisJCWlmIChJU19FUlIocnEpKSB7CisJCQllcnIgPSBQVFJfRVJSKHJxKTsKKwkJ
CWdvdG8gZXJyX3BpbjsKKwkJfQorCQllbmdpbmUtPnNjaGVkdWxlKHJxLCAmYXR0cik7CisJCXdh
aXRfZm9yX3N1Ym1pdChlbmdpbmUpOworCisJCS8qIEVMU1BbMV06IG5vcCByZXF1ZXN0ICovCisJ
CWVyciA9IG5vcF9yZXF1ZXN0KGVuZ2luZSk7CisJCWlmIChlcnIpIHsKKwkJCWk5MTVfcmVxdWVz
dF9wdXQocnEpOworCQkJZ290byBlcnJfcGluOworCQl9CisJCXdhaXRfZm9yX3N1Ym1pdChlbmdp
bmUpOworCisJCUdFTV9CVUdfT04oaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpOworCQlHRU1f
QlVHX09OKGV4ZWNsaXN0c19hY3RpdmUoJmVuZ2luZS0+ZXhlY2xpc3RzKSAhPSBycSk7CisKKwkJ
LyogUXVldWU6IHNlbWFwaG9yZSBzaWduYWwsIG1hdGNoaW5nIHByaW9yaXR5IGFzIHNlbWFwaG9y
ZSAqLworCQllcnIgPSByZWxlYXNlX3F1ZXVlKGVuZ2luZSwgdm1hLCAxLCBlZmZlY3RpdmVfcHJp
byhycSkpOworCQlpZiAoZXJyKSB7CisJCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKKwkJCWdvdG8g
ZXJyX3BpbjsKKwkJfQorCisJCWludGVsX2VuZ2luZV9mbHVzaF9zdWJtaXNzaW9uKGVuZ2luZSk7
CisJCWlmICghUkVBRF9PTkNFKGVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyLmV4cGlyZXMpICYmCisJ
CSAgICAhaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpIHsKKwkJCXN0cnVjdCBkcm1fcHJpbnRl
ciBwID0KKwkJCQlkcm1faW5mb19wcmludGVyKGd0LT5pOTE1LT5kcm0uZGV2KTsKKworCQkJR0VN
X1RSQUNFX0VSUigiJXM6IEZhaWxlZCB0byBlbmFibGUgdGltZXNsaWNpbmchXG4iLAorCQkJCSAg
ICAgIGVuZ2luZS0+bmFtZSk7CisJCQlpbnRlbF9lbmdpbmVfZHVtcChlbmdpbmUsICZwLAorCQkJ
CQkgICIlc1xuIiwgZW5naW5lLT5uYW1lKTsKKwkJCUdFTV9UUkFDRV9EVU1QKCk7CisKKwkJCW1l
bXNldCh2YWRkciwgMHhmZiwgUEFHRV9TSVpFKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCX0KKwor
CQkvKiBUaW1lc2xpY2UgZXZlcnkgamlmZmllLCBzbyB3aXRoaW4gMiB3ZSBzaG91bGQgc2lnbmFs
ICovCisJCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgMykgPCAwKSB7CisJCQlzdHJ1Y3Qg
ZHJtX3ByaW50ZXIgcCA9CisJCQkJZHJtX2luZm9fcHJpbnRlcihndC0+aTkxNS0+ZHJtLmRldik7
CisKKwkJCXByX2VycigiJXM6IEZhaWxlZCB0byB0aW1lc2xpY2UgaW50byBxdWV1ZVxuIiwKKwkJ
CSAgICAgICBlbmdpbmUtPm5hbWUpOworCQkJaW50ZWxfZW5naW5lX2R1bXAoZW5naW5lLCAmcCwK
KwkJCQkJICAiJXNcbiIsIGVuZ2luZS0+bmFtZSk7CisKKwkJCW1lbXNldCh2YWRkciwgMHhmZiwg
UEFHRV9TSVpFKTsKKwkJCWVyciA9IC1FSU87CisJCX0KKwkJaTkxNV9yZXF1ZXN0X3B1dChycSk7
CisJCWlmIChlcnIpCisJCQlicmVhazsKKwl9CisKKworZXJyX3BpbjoKKwlpOTE1X3ZtYV91bnBp
bih2bWEpOworZXJyX21hcDoKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CitlcnJf
b2JqOgorCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0
aWMgaW50IGxpdmVfYnVzeXdhaXRfcHJlZW1wdCh2b2lkICphcmcpCiB7CiAJc3RydWN0IGludGVs
X2d0ICpndCA9IGFyZzsKQEAgLTI0MzcsNiArMjU5MCw3IEBAIGludCBpbnRlbF9leGVjbGlzdHNf
bGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCVNVQlRFU1Qo
bGl2ZV91bmxpdGVfc3dpdGNoKSwKIAkJU1VCVEVTVChsaXZlX3VubGl0ZV9wcmVlbXB0KSwKIAkJ
U1VCVEVTVChsaXZlX3RpbWVzbGljZV9wcmVlbXB0KSwKKwkJU1VCVEVTVChsaXZlX3RpbWVzbGlj
ZV9xdWV1ZSksCiAJCVNVQlRFU1QobGl2ZV9idXN5d2FpdF9wcmVlbXB0KSwKIAkJU1VCVEVTVChs
aXZlX3ByZWVtcHQpLAogCQlTVUJURVNUKGxpdmVfbGF0ZV9wcmVlbXB0KSwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3NjaGVkdWxlci5jCmluZGV4IDdiODRlYmNhMjkwMS4uMGNhNDBmNmJmMDhjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKQEAgLTE3Nyw5ICsxNzcsMjIgQEAg
c3RhdGljIGlubGluZSBpbnQgcnFfcHJpbyhjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAlyZXR1cm4gcnEtPnNjaGVkLmF0dHIucHJpb3JpdHkgfCBfX05PX1BSRUVNUFRJT047CiB9CiAK
K3N0YXRpYyBpbmxpbmUgYm9vbCBuZWVkX3ByZWVtcHQoaW50IHByaW8sIGludCBhY3RpdmUpCit7
CisJLyoKKwkgKiBBbGxvdyBwcmVlbXB0aW9uIG9mIGxvdyAtPiBub3JtYWwgLT4gaGlnaCwgYnV0
IHdlIGRvCisJICogbm90IGFsbG93IGxvdyBwcmlvcml0eSB0YXNrcyB0byBwcmVlbXB0IG90aGVy
IGxvdyBwcmlvcml0eQorCSAqIHRhc2tzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgbGF0ZW5j
eSBmb3IgbG93IHByaW9yaXR5CisJICogdGFza3MgZG9lcyBub3QgbWF0dGVyIChhcyBtdWNoIGFz
IGJhY2tncm91bmQgdGhyb3VnaHB1dCksCisJICogc28ga2lzcy4KKwkgKi8KKwlyZXR1cm4gcHJp
byA+PSBtYXgoSTkxNV9QUklPUklUWV9OT1JNQUwsIGFjdGl2ZSk7Cit9CisKIHN0YXRpYyB2b2lk
IGtpY2tfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGludCBwcmlv
KQogewotCWNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKmluZmxpZ2h0ID0gKmVuZ2luZS0+ZXhl
Y2xpc3RzLmFjdGl2ZTsKKwljb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICppbmZsaWdodCA9CisJ
CWV4ZWNsaXN0c19hY3RpdmUoJmVuZ2luZS0+ZXhlY2xpc3RzKTsKIAogCS8qCiAJICogSWYgd2Ug
YXJlIGFscmVhZHkgdGhlIGN1cnJlbnRseSBleGVjdXRpbmcgY29udGV4dCwgZG9uJ3QKQEAgLTE4
OCw3ICsyMDEsNyBAQCBzdGF0aWMgdm9pZCBraWNrX3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBpbnQgcHJpbykKIAkgKiB0YXNrbGV0LCBpLmUuIHdlIGhhdmUgbm90
IGNoYW5nZSB0aGUgcHJpb3JpdHkgcXVldWUKIAkgKiBzdWZmaWNpZW50bHkgdG8gb3VzdCB0aGUg
cnVubmluZyBjb250ZXh0LgogCSAqLwotCWlmICghaW5mbGlnaHQgfHwgIWk5MTVfc2NoZWR1bGVy
X25lZWRfcHJlZW1wdChwcmlvLCBycV9wcmlvKGluZmxpZ2h0KSkpCisJaWYgKCFpbmZsaWdodCB8
fCAhbmVlZF9wcmVlbXB0KHByaW8sIHJxX3ByaW8oaW5mbGlnaHQpKSkKIAkJcmV0dXJuOwogCiAJ
dGFza2xldF9oaV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuaAppbmRleCA3ZWVmY2NmZjM5YmYuLjA3ZDI0M2FjZjU1
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oCkBAIC01MiwyMiArNTIsNCBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9wcmlvbGlzdF9mcmVlKHN0cnVjdCBpOTE1X3ByaW9s
aXN0ICpwKQogCQlfX2k5MTVfcHJpb2xpc3RfZnJlZShwKTsKIH0KIAotc3RhdGljIGlubGluZSBi
b29sIGk5MTVfc2NoZWR1bGVyX25lZWRfcHJlZW1wdChpbnQgcHJpbywgaW50IGFjdGl2ZSkKLXsK
LQkvKgotCSAqIEFsbG93IHByZWVtcHRpb24gb2YgbG93IC0+IG5vcm1hbCAtPiBoaWdoLCBidXQg
d2UgZG8KLQkgKiBub3QgYWxsb3cgbG93IHByaW9yaXR5IHRhc2tzIHRvIHByZWVtcHQgb3RoZXIg
bG93IHByaW9yaXR5Ci0JICogdGFza3MgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCBsYXRlbmN5
IGZvciBsb3cgcHJpb3JpdHkKLQkgKiB0YXNrcyBkb2VzIG5vdCBtYXR0ZXIgKGFzIG11Y2ggYXMg
YmFja2dyb3VuZCB0aHJvdWdocHV0KSwKLQkgKiBzbyBraXNzLgotCSAqCi0JICogTW9yZSBuYXR1
cmFsbHkgd2Ugd291bGQgd3JpdGUKLQkgKglwcmlvID49IG1heCgwLCBsYXN0KTsKLQkgKiBleGNl
cHQgdGhhdCB3ZSB3aXNoIHRvIHByZXZlbnQgdHJpZ2dlcmluZyBwcmVlbXB0aW9uIGF0IHRoZSBz
YW1lCi0JICogcHJpb3JpdHkgbGV2ZWw6IHRoZSB0YXNrIHRoYXQgaXMgcnVubmluZyBzaG91bGQg
cmVtYWluIHJ1bm5pbmcKLQkgKiB0byBwcmVzZXJ2ZSBGSUZPIG9yZGVyaW5nIG9mIGRlcGVuZGVu
Y2llcy4KLQkgKi8KLQlyZXR1cm4gcHJpbyA+IG1heChJOTE1X1BSSU9SSVRZX05PUk1BTCAtIDEs
IGFjdGl2ZSk7Ci19Ci0KICNlbmRpZiAvKiBfSTkxNV9TQ0hFRFVMRVJfSF8gKi8KLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
