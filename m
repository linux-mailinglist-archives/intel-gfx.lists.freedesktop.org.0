Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB032C84F2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2FB6E4AF;
	Mon, 30 Nov 2020 13:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024A86E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:19:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23162379-1500050 
 for multiple; Mon, 30 Nov 2020 13:19:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:19:09 +0000
Message-Id: <20201130131910.9412-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201130131910.9412-1-chris@chris-wilson.co.uk>
References: <20201130131910.9412-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Pipelined page migration
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgcGlwZWxpbmUgdGhlIFBURSB1cGRhdGVzIGFuZCB0aGVuIGRvIHRoZSBjb3B5IG9mIHRo
b3NlIHBhZ2VzCndpdGhpbiBhIHNpbmdsZSB1bnByZWVtcHRpYmxlIGNvbW1hbmQgcGFja2V0LCB3
ZSBjYW4gc3VibWl0IHRoZSBjb3BpZXMKYW5kIGxlYXZlIHRoZW0gdG8gYmUgc2NoZWR1bGVkIHdp
dGhvdXQgaGF2aW5nIHRvIHN5bmNocm9ub3VzbHkgd2FpdAp1bmRlciBhIGdsb2JhbCBsb2NrLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oICAgICAgICB8ICAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgIDIgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5jICAgICAgIHwgNDIzICsrKysrKysr
KysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oICAgICAg
IHwgIDM2ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRlLmMgICAg
fCAxMDkgKysrKysKIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5o
ICB8ICAgMSArCiA3IGZpbGVzIGNoYW5nZWQsIDU3MyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5jCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5j
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCBlNTU3NGU1MDZhNWMuLjBiMmUxMmM4N2Y5ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTEwMyw2ICsxMDMsNyBAQCBndC15ICs9IFwKIAlndC9pbnRl
bF9ndHQubyBcCiAJZ3QvaW50ZWxfbGxjLm8gXAogCWd0L2ludGVsX2xyYy5vIFwKKwlndC9pbnRl
bF9taWdyYXRlLm8gXAogCWd0L2ludGVsX21vY3MubyBcCiAJZ3QvaW50ZWxfcHBndHQubyBcCiAJ
Z3QvaW50ZWxfcmM2Lm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAppbmRl
eCBhYzU4ZmNkYTQ5MjcuLjA3OWQyNmI0N2E5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lLmgKQEAgLTE4OCw2ICsxODgsNyBAQCBpbnRlbF93cml0ZV9zdGF0dXNfcGFnZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGludCByZWcsIHUzMiB2YWx1ZSkKICNkZWZp
bmUgSTkxNV9HRU1fSFdTX1BSRUVNUFRfQUREUgkoSTkxNV9HRU1fSFdTX1BSRUVNUFQgKiBzaXpl
b2YodTMyKSkKICNkZWZpbmUgSTkxNV9HRU1fSFdTX1NFUU5PCQkweDQwCiAjZGVmaW5lIEk5MTVf
R0VNX0hXU19TRVFOT19BRERSCQkoSTkxNV9HRU1fSFdTX1NFUU5PICogc2l6ZW9mKHUzMikpCisj
ZGVmaW5lIEk5MTVfR0VNX0hXU19NSUdSQVRFCQkoMHg0MiAqIHNpemVvZih1MzIpKQogI2RlZmlu
ZSBJOTE1X0dFTV9IV1NfU0NSQVRDSAkJMHg4MAogCiAjZGVmaW5lIEk5MTVfSFdTX0NTQl9CVUYw
X0lOREVYCQkweDEwCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
cHVfY29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5k
cy5oCmluZGV4IDUzNGU0MzVmMjBiYy4uY2Y0MmQxNzE5OThhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMTI0LDggKzEyNCwxMCBAQAogI2Rl
ZmluZSAgIE1JX1NFTUFQSE9SRV9TQURfTkVRX1NERAkoNSA8PCAxMikKICNkZWZpbmUgICBNSV9T
RU1BUEhPUkVfVE9LRU5fTUFTSwlSRUdfR0VOTUFTSyg5LCA1KQogI2RlZmluZSAgIE1JX1NFTUFQ
SE9SRV9UT0tFTl9TSElGVAk1CisjZGVmaW5lIE1JX1NUT1JFX0RBVEFfSU1NCU1JX0lOU1RSKDB4
MjAsIDApCiAjZGVmaW5lIE1JX1NUT1JFX0RXT1JEX0lNTQlNSV9JTlNUUigweDIwLCAxKQogI2Rl
ZmluZSBNSV9TVE9SRV9EV09SRF9JTU1fR0VONAlNSV9JTlNUUigweDIwLCAyKQorI2RlZmluZSBN
SV9TVE9SRV9RV09SRF9JTU1fR0VOOCAoTUlfSU5TVFIoMHgyMCwgMykgfCBSRUdfQklUKDIxKSkK
ICNkZWZpbmUgICBNSV9NRU1fVklSVFVBTAkoMSA8PCAyMikgLyogOTQ1LGczMyw5NjUgKi8KICNk
ZWZpbmUgICBNSV9VU0VfR0dUVAkJKDEgPDwgMjIpIC8qIGc0eCsgKi8KICNkZWZpbmUgTUlfU1RP
UkVfRFdPUkRfSU5ERVgJTUlfSU5TVFIoMHgyMSwgMSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21pZ3JhdGUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjQ1
NDk5MTc4OTk4NQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21pZ3JhdGUuYwpAQCAtMCwwICsxLDQyMyBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8K
KworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgorI2lu
Y2x1ZGUgImludGVsX2d0LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3R0LmgiCisjaW5jbHVkZSAiaW50
ZWxfbHJjLmgiIC8qIHZpcnR1YWwgZW5naW5lICovCisjaW5jbHVkZSAiaW50ZWxfbWlncmF0ZS5o
IgorI2luY2x1ZGUgImludGVsX3JpbmcuaCIKKworI2RlZmluZSBDSFVOS19TWiBTWl84TSAvKiB+
MW1zIGF0IDhHaUIvcyBwcmVlbXB0aW9uIGRlbGF5ICovCisKK3N0YXRpYyB2b2lkIGluc2VydF9w
dGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCSAgICAgICBzdHJ1Y3QgaTkxNV9w
YWdlX3RhYmxlICpwdCwKKwkJICAgICAgIHZvaWQgKmRhdGEpCit7CisJdTY0ICpvZmZzZXQgPSBk
YXRhOworCisJdm0tPmluc2VydF9wYWdlKHZtLCBweF9kbWEocHQpLCAqb2Zmc2V0LCBJOTE1X0NB
Q0hFX05PTkUsIDApOworCSpvZmZzZXQgKz0gUEFHRV9TSVpFOworfQorCitzdGF0aWMgc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqbWlncmF0ZV92bShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQorewor
CXN0cnVjdCBpOTE1X3ZtX3B0X3N0YXNoIHN0YXNoID0ge307CisJc3RydWN0IGk5MTVfcHBndHQg
KnZtOworCXU2NCBvZmZzZXQsIHN6OworCWludCBlcnI7CisKKwl2bSA9IGk5MTVfcHBndHRfY3Jl
YXRlKGd0KTsKKwlpZiAoSVNfRVJSKHZtKSkKKwkJcmV0dXJuIEVSUl9DQVNUKHZtKTsKKworCWlm
ICghdm0tPnZtLmFsbG9jYXRlX3ZhX3JhbmdlIHx8ICF2bS0+dm0uZm9yZWFjaCkgeworCQllcnIg
PSAtRU5PREVWOworCQlnb3RvIGVycl92bTsKKwl9CisKKwkvKgorCSAqIFdlIGNvcHkgaW4gOE1p
QiBjaHVua3MuIEVhY2ggUERFIGNvdmVycyAyTWlCLCBzbyB3ZSBuZWVkCisJICogNHgyIHBhZ2Ug
ZGlyZWN0b3JpZXMgZm9yIHNvdXJjZS9kZXN0aW5hdGlvbi4KKwkgKi8KKwlzeiA9IDIgKiBDSFVO
S19TWjsKKwlvZmZzZXQgPSBzejsKKworCS8qCisJICogV2UgbmVlZCBhbm90aGVyIHBhZ2UgZGly
ZWN0b3J5IHNldHVwIHNvIHRoYXQgd2UgY2FuIHdyaXRlCisJICogdGhlIDh4NTEyIFBURSBpbiBl
YWNoIGNodW5rLgorCSAqLworCXN6ICs9IChzeiA+PiAxMikgKiBzaXplb2YodTY0KTsKKworCWVy
ciA9IGk5MTVfdm1fYWxsb2NfcHRfc3Rhc2goJnZtLT52bSwgJnN0YXNoLCBzeik7CisJaWYgKGVy
cikKKwkJZ290byBlcnJfdm07CisKKwllcnIgPSBpOTE1X3ZtX3Bpbl9wdF9zdGFzaCgmdm0tPnZt
LCAmc3Rhc2gpOworCWlmIChlcnIpCisJCWdvdG8gZXJyX3B0OworCisJdm0tPnZtLmFsbG9jYXRl
X3ZhX3JhbmdlKCZ2bS0+dm0sICZzdGFzaCwgMCwgc3opOworCWk5MTVfdm1fZnJlZV9wdF9zdGFz
aCgmdm0tPnZtLCAmc3Rhc2gpOworCisJLyogTm93IGFsbG93IHRoZSBHUFUgdG8gcmV3cml0ZSB0
aGUgUFRFIHZpYSBpdHMgb3duIHBwR1RUICovCisJdm0tPnZtLmZvcmVhY2goJnZtLT52bSwgMCwg
c3osIGluc2VydF9wdGUsICZvZmZzZXQpOworCisJcmV0dXJuICZ2bS0+dm07CisKK2Vycl9wdDoK
KwlpOTE1X3ZtX2ZyZWVfcHRfc3Rhc2goJnZtLT52bSwgJnN0YXNoKTsKK2Vycl92bToKKwlpOTE1
X3ZtX3B1dCgmdm0tPnZtKTsKKwlyZXR1cm4gRVJSX1BUUihlcnIpOworfQorCitzdGF0aWMgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZmlyc3RfY29weV9lbmdpbmUoc3RydWN0IGludGVsX2d0ICpn
dCkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJaW50IGk7CisKKwlmb3Ig
KGkgPSAwOyBpIDwgQVJSQVlfU0laRShndC0+ZW5naW5lX2NsYXNzW0NPUFlfRU5HSU5FX0NMQVNT
XSk7IGkrKykgeworCQllbmdpbmUgPSBndC0+ZW5naW5lX2NsYXNzW0NPUFlfRU5HSU5FX0NMQVNT
XVtpXTsKKwkJaWYgKGVuZ2luZSkKKwkJCXJldHVybiBlbmdpbmU7CisJfQorCisJcmV0dXJuIE5V
TEw7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqcGlubmVkX2NvbnRleHQoc3Ry
dWN0IGludGVsX2d0ICpndCkKK3sKKwlzdGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGtleTsK
KwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm07CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOworCWludCBlcnI7CisKKwllbmdp
bmUgPSBmaXJzdF9jb3B5X2VuZ2luZShndCk7CisJaWYgKCFlbmdpbmUpCisJCXJldHVybiBFUlJf
UFRSKC1FTk9ERVYpOworCisJY2UgPSBpbnRlbF9lbmdpbmVfY3JlYXRlX3Bpbm5lZF9jb250ZXh0
KGVuZ2luZSwgU1pfNTEySywKKwkJCQkJCUk5MTVfR0VNX0hXU19NSUdSQVRFLAorCQkJCQkJJmtl
eSwgIm1pZ3JhdGUiKTsKKwlpZiAoSVNfRVJSKGNlKSkKKwkJcmV0dXJuIGNlOworCisJdm0gPSBt
aWdyYXRlX3ZtKGd0KTsKKwlpZiAoSVNfRVJSKHZtKSkgeworCQllcnIgPSBQVFJfRVJSKHZtKTsK
KwkJZ290byBlcnJfY2U7CisJfQorCWk5MTVfdm1fcHV0KGNlLT52bSk7CisJY2UtPnZtID0gdm07
CisKKwlyZXR1cm4gY2U7CisKK2Vycl9jZToKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJcmV0
dXJuIEVSUl9QVFIoZXJyKTsKK30KKworaW50IGludGVsX21pZ3JhdGVfaW5pdChzdHJ1Y3QgaW50
ZWxfbWlncmF0ZSAqbSwgc3RydWN0IGludGVsX2d0ICpndCkKK3sKKwlzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2U7CisKKwljZSA9IHBpbm5lZF9jb250ZXh0KGd0KTsKKwlpZiAoSVNfRVJSKGNlKSkK
KwkJcmV0dXJuIFBUUl9FUlIoY2UpOworCisJbS0+Y2UgPSBjZTsKKwlyZXR1cm4gMDsKK30KKwor
c3RhdGljIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpfX21pZ3JhdGVfZW5naW5lcyhzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZXNbTUFYX0VOR0lO
RV9JTlNUQU5DRV07CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCXVuc2lnbmVk
IGludCBjb3VudCwgaTsKKworCWNvdW50ID0gMDsKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0la
RShndC0+ZW5naW5lX2NsYXNzW0NPUFlfRU5HSU5FX0NMQVNTXSk7IGkrKykgeworCQllbmdpbmUg
PSBndC0+ZW5naW5lX2NsYXNzW0NPUFlfRU5HSU5FX0NMQVNTXVtpXTsKKwkJaWYgKGVuZ2luZSkK
KwkJCWVuZ2luZXNbY291bnQrK10gPSBlbmdpbmU7CisJfQorCisJcmV0dXJuIGludGVsX2V4ZWNs
aXN0c19jcmVhdGVfdmlydHVhbChlbmdpbmVzLCBjb3VudCk7Cit9CisKK3N0cnVjdCBpbnRlbF9j
b250ZXh0ICppbnRlbF9taWdyYXRlX2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBpbnRlbF9taWdyYXRl
ICptKQoreworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKKworCWNlID0gX19taWdyYXRlX2Vu
Z2luZXMobS0+Y2UtPmVuZ2luZS0+Z3QpOworCWlmIChJU19FUlIoY2UpKQorCQlyZXR1cm4gY2U7
CisKKwljZS0+cmluZyA9IF9faW50ZWxfY29udGV4dF9yaW5nX3NpemUoU1pfNTEySyk7CisKKwlp
OTE1X3ZtX3B1dChjZS0+dm0pOworCWNlLT52bSA9IGk5MTVfdm1fZ2V0KG0tPmNlLT52bSk7CisK
KwlyZXR1cm4gY2U7Cit9CisKK3N0YXRpYyBpbmxpbmUgc3RydWN0IHNndF9kbWEgc2dfc2d0KHN0
cnVjdCBzY2F0dGVybGlzdCAqc2cpCit7CisJZG1hX2FkZHJfdCBhZGRyID0gc2dfZG1hX2FkZHJl
c3Moc2cpOworCisJcmV0dXJuIChzdHJ1Y3Qgc2d0X2RtYSl7IHNnLCBhZGRyLCBhZGRyICsgc2df
ZG1hX2xlbihzZykgfTsKK30KKworc3RhdGljIGludCBlbWl0X3B0ZShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwKKwkJICAgIHN0cnVjdCBzZ3RfZG1hICppdCwKKwkJICAgIHU2NCBlbmNvZGUsCisJ
CSAgICBpbnQgb2Zmc2V0LAorCQkgICAgaW50IGxlbmd0aCkKK3sKKwlzdHJ1Y3QgaW50ZWxfcmlu
ZyAqcmluZyA9IHJxLT5yaW5nOworCWludCB0b3RhbCA9IDA7CisJdTMyICpoZHIsICpjczsKKwlp
bnQgcGt0OworCisJR0VNX0JVR19PTihJTlRFTF9HRU4ocnEtPmVuZ2luZS0+aTkxNSkgPCA4KTsK
KworCW9mZnNldCA+Pj0gMTI7CisJb2Zmc2V0ICo9IHNpemVvZih1NjQpOworCW9mZnNldCArPSAy
ICogQ0hVTktfU1o7CisKKwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDYpOworCWlmIChJU19F
UlIoY3MpKQorCQlyZXR1cm4gUFRSX0VSUihjcyk7CisKKwlwa3QgPSBtaW5fdChpbnQsIDEyNywg
cmluZy0+c3BhY2UgLyBzaXplb2YodTMyKSArIDYpOworCXBrdCA9IG1pbl90KGludCwgcGt0LCAo
cmluZy0+c2l6ZSAtIHJpbmctPmVtaXQpIC9zaXplb2YodTMyKSAtIDYpOworCisJaGRyID0gY3M7
CisJKmNzKysgPSBNSV9TVE9SRV9EQVRBX0lNTSB8IFJFR19CSVQoMjEpOyAvKiBhcyBxd29yZCBl
bGVtZW50cyAqLworCSpjcysrID0gb2Zmc2V0OworCSpjcysrID0gMDsKKworCWRvIHsKKwkJaWYg
KGNzIC0gaGRyID49IHBrdCkgeworCQkJKmhkciArPSBjcyAtIGhkciAtIDI7CisJCQkqY3MrKyA9
IE1JX05PT1A7CisKKwkJCXJpbmctPmVtaXQgPSAodm9pZCAqKWNzIC0gcmluZy0+dmFkZHI7CisJ
CQloZHIgPSBOVUxMOworCQl9CisKKwkJaWYgKGhkciA9PSBOVUxMKSB7CisJCQljcyA9IGludGVs
X3JpbmdfYmVnaW4ocnEsIDYpOworCQkJaWYgKElTX0VSUihjcykpCisJCQkJcmV0dXJuIFBUUl9F
UlIoY3MpOworCisJCQlwa3QgPSBtaW5fdChpbnQsIDEyNywgcmluZy0+c3BhY2UgLyBzaXplb2Yo
dTMyKSArIDYpOworCQkJcGt0ID0gbWluX3QoaW50LCBwa3QsIChyaW5nLT5zaXplIC0gcmluZy0+
ZW1pdCkgL3NpemVvZih1MzIpIC0gNik7CisKKwkJCWhkciA9IGNzOworCQkJKmNzKysgPSBNSV9T
VE9SRV9EQVRBX0lNTSB8IFJFR19CSVQoMjEpOworCQkJKmNzKysgPSBvZmZzZXQ7CisJCQkqY3Mr
KyA9IDA7CisJCX0KKworCQkqY3MrKyA9IGxvd2VyXzMyX2JpdHMoZW5jb2RlIHwgaXQtPmRtYSk7
CisJCSpjcysrID0gdXBwZXJfMzJfYml0cyhlbmNvZGUgfCBpdC0+ZG1hKTsKKworCQlvZmZzZXQg
Kz0gODsKKwkJdG90YWwgKz0gSTkxNV9HVFRfUEFHRV9TSVpFOworCisJCWl0LT5kbWEgKz0gSTkx
NV9HVFRfUEFHRV9TSVpFOworCQlpZiAoaXQtPmRtYSA+PSBpdC0+bWF4KSB7CisJCQlpdC0+c2cg
PSBfX3NnX25leHQoaXQtPnNnKTsKKwkJCWlmICghaXQtPnNnIHx8IHNnX2RtYV9sZW4oaXQtPnNn
KSA9PSAwKQorCQkJCWJyZWFrOworCisJCQlpdC0+ZG1hID0gc2dfZG1hX2FkZHJlc3MoaXQtPnNn
KTsKKwkJCWl0LT5tYXggPSBpdC0+ZG1hICsgc2dfZG1hX2xlbihpdC0+c2cpOworCQl9CisJfSB3
aGlsZSAodG90YWwgPCBsZW5ndGgpOworCisJKmhkciArPSBjcyAtIGhkciAtIDI7CisJKmNzKysg
PSBNSV9OT09QOworCisJcmluZy0+ZW1pdCA9ICh2b2lkICopY3MgLSByaW5nLT52YWRkcjsKKwor
CXJldHVybiB0b3RhbDsKK30KKworc3RhdGljIGJvb2wgd2FfMTIwOTY0NDYxMV9hcHBsaWVzKGlu
dCBnZW4sIHUzMiBzaXplKQoreworCXUzMiBoZWlnaHQgPSBzaXplID4+IFBBR0VfU0hJRlQ7CisK
KwlpZiAoZ2VuICE9IDExKQorCQlyZXR1cm4gZmFsc2U7CisKKwlyZXR1cm4gaGVpZ2h0ICUgNCA9
PSAzICYmIGhlaWdodCA8PSA4OworfQorCitzdGF0aWMgaW50IGVtaXRfY29weShzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSwgaW50IHNpemUpCit7CisJY29uc3QgaW50IGdlbiA9IElOVEVMX0dFTihy
cS0+ZW5naW5lLT5pOTE1KTsKKwl1MzIgKmNzOworCisJY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJx
LCBnZW4gPj0gOCA/IDEwIDogNik7CisJaWYgKElTX0VSUihjcykpCisJCXJldHVybiBQVFJfRVJS
KGNzKTsKKworCWlmIChnZW4gPj0gOSAmJiAhd2FfMTIwOTY0NDYxMV9hcHBsaWVzKGdlbiwgc2l6
ZSkpIHsKKwkJKmNzKysgPSBHRU45X1hZX0ZBU1RfQ09QWV9CTFRfQ01EIHwgKDEwIC0gMik7CisJ
CSpjcysrID0gQkxUX0RFUFRIXzMyIHwgUEFHRV9TSVpFOworCQkqY3MrKyA9IDA7CisJCSpjcysr
ID0gc2l6ZSA+PiBQQUdFX1NISUZUIDw8IDE2IHwgUEFHRV9TSVpFIC8gNDsKKwkJKmNzKysgPSBD
SFVOS19TWjsgLyogZHN0IG9mZnNldCAqLworCQkqY3MrKyA9IDA7CisJCSpjcysrID0gMDsKKwkJ
KmNzKysgPSBQQUdFX1NJWkU7CisJCSpjcysrID0gMDsgLyogc3JjIG9mZnNldCAqLworCQkqY3Mr
KyA9IDA7CisJfSBlbHNlIGlmIChnZW4gPj0gOCkgeworCQkqY3MrKyA9IFhZX1NSQ19DT1BZX0JM
VF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICgxMCAtIDIpOworCQkqY3MrKyA9IEJMVF9ERVBUSF8z
MiB8IEJMVF9ST1BfU1JDX0NPUFkgfCBQQUdFX1NJWkU7CisJCSpjcysrID0gMDsKKwkJKmNzKysg
PSBzaXplID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUgLyA0OworCQkqY3MrKyA9IENI
VU5LX1NaOyAvKiBkc3Qgb2Zmc2V0ICovCisJCSpjcysrID0gMDsKKwkJKmNzKysgPSAwOworCQkq
Y3MrKyA9IFBBR0VfU0laRTsKKwkJKmNzKysgPSAwOyAvKiBzcmMgb2Zmc2V0ICovCisJCSpjcysr
ID0gMDsKKwl9IGVsc2UgeworCQkqY3MrKyA9IFNSQ19DT1BZX0JMVF9DTUQgfCBCTFRfV1JJVEVf
UkdCQSB8ICg2IC0gMik7CisJCSpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9TUkNfQ09Q
WSB8IFBBR0VfU0laRTsKKwkJKmNzKysgPSBzaXplID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdF
X1NJWkU7CisJCSpjcysrID0gQ0hVTktfU1o7IC8qIGRzdCBvZmZzZXQgKi8KKwkJKmNzKysgPSBQ
QUdFX1NJWkU7CisJCSpjcysrID0gMDsgLyogc3JjIG9mZnNldCAqLworCX0KKworCWludGVsX3Jp
bmdfYWR2YW5jZShycSwgY3MpOworCXJldHVybiAwOworfQorCitpbnQKK2ludGVsX2NvbnRleHRf
bWlncmF0ZV9jb3B5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgIHN0cnVjdCBkbWFf
ZmVuY2UgKmF3YWl0LAorCQkJICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzcmMsCisJCQkgICBzdHJ1
Y3Qgc2NhdHRlcmxpc3QgKmRzdCwKKwkJCSAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKipvdXQpCit7
CisJY29uc3QgdTY0IGVuY29kZSA9IGNlLT52bS0+cHRlX2VuY29kZSgwLCBJOTE1X0NBQ0hFX0xM
QywgMCk7IC8qIGZsYWdzICovCisJc3RydWN0IHNndF9kbWEgaXRfc3JjID0gc2dfc2d0KHNyYyks
IGl0X2RzdCA9IHNnX3NndChkc3QpOworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCWludCBl
cnI7CisKKwkqb3V0ID0gTlVMTDsKKworCS8qIEdFTV9CVUdfT04oY2UtPnZtICE9IG1pZ3JhdGVf
dm0pOyAqLworCisJZXJyID0gaW50ZWxfY29udGV4dF9waW4oY2UpOworCWlmIChlcnIpCisJCXJl
dHVybiBlcnI7CisKKwlHRU1fQlVHX09OKGNlLT5yaW5nLT5zaXplIDwgU1pfNjRLKTsKKworCWRv
IHsKKwkJaW50IGxlbjsKKworCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOworCQlpZiAo
SVNfRVJSKHJxKSkgeworCQkJZXJyID0gUFRSX0VSUihycSk7CisJCQlnb3RvIG91dF9jZTsKKwkJ
fQorCisJCWlmIChhd2FpdCkgeworCQkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5j
ZShycSwgYXdhaXQpOworCQkJaWYgKGVycikKKwkJCQlnb3RvIG91dF9ycTsKKworCQkJaWYgKHJx
LT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKSB7CisJCQkJZXJyID0gcnEtPmVuZ2luZS0+
ZW1pdF9pbml0X2JyZWFkY3J1bWIocnEpOworCQkJCWlmIChlcnIpCisJCQkJCWdvdG8gb3V0X3Jx
OworCQkJfQorCisJCQlhd2FpdCA9IE5VTEw7CisJCX0KKworCQlsZW4gPSBlbWl0X3B0ZShycSwg
Jml0X3NyYywgZW5jb2RlLCAwLCBDSFVOS19TWik7CisJCWlmIChsZW4gPD0gMCkgeworCQkJZXJy
ID0gbGVuOworCQkJZ290byBvdXRfcnE7CisJCX0KKworCQllcnIgPSBlbWl0X3B0ZShycSwgJml0
X2RzdCwgZW5jb2RlLCBDSFVOS19TWiwgbGVuKTsKKwkJaWYgKGVyciA8IDApCisJCQlnb3RvIG91
dF9ycTsKKwkJaWYgKGVyciA8IGxlbikgeworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gb3V0
X3JxOworCQl9CisKKwkJZXJyID0gcnEtPmVuZ2luZS0+ZW1pdF9mbHVzaChycSwgRU1JVF9JTlZB
TElEQVRFKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gb3V0X3JxOworCisJCWVyciA9IGVtaXRfY29w
eShycSwgbGVuKTsKKworb3V0X3JxOgorCQlpZiAoKm91dCkKKwkJCWk5MTVfcmVxdWVzdF9wdXQo
Km91dCk7CisJCSpvdXQgPSBpOTE1X3JlcXVlc3RfZ2V0KHJxKTsKKwkJaTkxNV9yZXF1ZXN0X2Fk
ZChycSk7CisJCWlmIChlcnIgfHwgIWl0X3NyYy5zZykKKwkJCWJyZWFrOworCisJCWNvbmRfcmVz
Y2hlZCgpOworCX0gd2hpbGUgKDEpOworCitvdXRfY2U6CisJaW50ZWxfY29udGV4dF91bnBpbihj
ZSk7CisJcmV0dXJuIGVycjsKK30KKworaW50CitpbnRlbF9taWdyYXRlX2NvcHkoc3RydWN0IGlu
dGVsX21pZ3JhdGUgKm0sCisJCSAgIHN0cnVjdCBkbWFfZmVuY2UgKmF3YWl0LAorCQkgICBzdHJ1
Y3Qgc2NhdHRlcmxpc3QgKnNyYywKKwkJICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpkc3QsCisJCSAg
IHN0cnVjdCBpOTE1X3JlcXVlc3QgKipvdXQpCit7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OworCWludCBlcnI7CisKKwlpZiAoIW0tPmNlKQorCQlyZXR1cm4gLUVOT0RFVjsKKworCWNlID0g
aW50ZWxfbWlncmF0ZV9jcmVhdGVfY29udGV4dChtKTsKKwlpZiAoSVNfRVJSKGNlKSkKKwkJY2Ug
PSBpbnRlbF9jb250ZXh0X2dldChtLT5jZSk7CisJR0VNX0JVR19PTihJU19FUlIoY2UpKTsKKwor
CWVyciA9IGludGVsX2NvbnRleHRfbWlncmF0ZV9jb3B5KGNlLCBhd2FpdCwgc3JjLCBkc3QsIG91
dCk7CisKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJcmV0dXJuIGVycjsKK30KKwordm9pZCBp
bnRlbF9taWdyYXRlX2Zpbmkoc3RydWN0IGludGVsX21pZ3JhdGUgKm0pCit7CisJaWYgKCFtLT5j
ZSkKKwkJcmV0dXJuOworCisJaW50ZWxfY29udGV4dF91bnBpbihtLT5jZSk7CisJaW50ZWxfY29u
dGV4dF9wdXQobS0+Y2UpOworfQorCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VM
RlRFU1QpCisjaW5jbHVkZSAic2VsZnRlc3RfbWlncmF0ZS5jIgorI2VuZGlmCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi45N2Y3NTlhYWY5MjEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmgKQEAgLTAsMCArMSwzNiBAQAorLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENv
cnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX01JR1JBVEVfXworI2RlZmluZSBfX0lO
VEVMX01JR1JBVEVfXworCitzdHJ1Y3QgZG1hX2ZlbmNlOworc3RydWN0IGk5MTVfcmVxdWVzdDsK
K3N0cnVjdCBpbnRlbF9jb250ZXh0Oworc3RydWN0IGludGVsX2d0Oworc3RydWN0IHNjYXR0ZXJs
aXN0OworCitzdHJ1Y3QgaW50ZWxfbWlncmF0ZSB7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OworfTsKKworaW50IGludGVsX21pZ3JhdGVfaW5pdChzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbSwg
c3RydWN0IGludGVsX2d0ICpndCk7CisKK3N0cnVjdCBpbnRlbF9jb250ZXh0ICppbnRlbF9taWdy
YXRlX2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBpbnRlbF9taWdyYXRlICptKTsKKworaW50IGludGVs
X21pZ3JhdGVfY29weShzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbSwKKwkJICAgICAgIHN0cnVjdCBk
bWFfZmVuY2UgKmF3YWl0LAorCQkgICAgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzcmMsCisJCSAg
ICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKmRzdCwKKwkJICAgICAgIHN0cnVjdCBpOTE1X3JlcXVl
c3QgKipvdXQpOworaW50IGludGVsX2NvbnRleHRfbWlncmF0ZV9jb3B5KHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSwKKwkJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICphd2FpdCwKKwkJCSAgICAg
ICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNyYywKKwkJCSAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3Qg
KmRzdCwKKwkJCSAgICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqb3V0KTsKKwordm9pZCBpbnRl
bF9taWdyYXRlX2Zpbmkoc3RydWN0IGludGVsX21pZ3JhdGUgKm0pOworCisjZW5kaWYgLyogX19J
TlRFTF9NSUdSQVRFX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X21pZ3JhdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21pZ3Jh
dGUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmMwOWY0MzJmM2E1
OAotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21p
Z3JhdGUuYwpAQCAtMCwwICsxLDEwOSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1J
VAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lu
Y2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5oIgorCitzdGF0aWMgaW50IGxpdmVfbWlncmF0
ZV9jb3B5KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbSA9IGFyZzsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG0tPmNlLT5lbmdpbmUtPmk5MTU7CisJY29u
c3QgdW5zaWduZWQgaW50IHNpemVzW10gPSB7CisJCVNaXzRLLAorCQlTWl82NEssCisJCVNaXzJN
LAorCQlTWl82NE0sCisJCS8vU1pfMkcsCisJfTsKKwlJOTE1X1JORF9TVEFURShwcm5nKTsKKwlp
bnQgaSwgaiwgazsKKwlpbnQgZXJyID0gMDsKKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpF
KHNpemVzKTsgaSsrKSB7CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpzcmMsICpkc3Q7
CisJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOworCQl1MzIgKnZhZGRyOworCisJCXNyYyA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZXNbaV0pOworCQlpZiAoSVNf
RVJSKHNyYykpCisJCQlicmVhazsKKworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFw
KHNyYywgSTkxNV9NQVBfV0MpOworCQlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQkJaTkxNV9nZW1f
b2JqZWN0X3B1dChzcmMpOworCQkJYnJlYWs7CisJCX0KKworCQlmb3IgKGogPSAwOyBqIDwgc2l6
ZXNbaV0gLyBzaXplb2YodTMyKTsgaisrKQorCQkJdmFkZHJbal0gPSBqOworCQlpOTE1X2dlbV9v
YmplY3RfZmx1c2hfbWFwKHNyYyk7CisKKwkJZHN0ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9p
bnRlcm5hbChpOTE1LCBzaXplc1tpXSk7CisJCWlmIChJU19FUlIoZHN0KSkgeworCQkJaTkxNV9n
ZW1fb2JqZWN0X3B1dChkc3QpOworCQkJYnJlYWs7CisJCX0KKworCQl2YWRkciA9IGk5MTVfZ2Vt
X29iamVjdF9waW5fbWFwKGRzdCwgSTkxNV9NQVBfV0MpOworCQlpZiAoSVNfRVJSKHZhZGRyKSkg
eworCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChkc3QpOworCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChz
cmMpOworCQkJYnJlYWs7CisJCX0KKworCQlmb3IgKGogPSAwOyBqIDwgc2l6ZXNbaV0gLyBzaXpl
b2YodTMyKTsgaisrKQorCQkJdmFkZHJbal0gPSB+ajsKKwkJaTkxNV9nZW1fb2JqZWN0X2ZsdXNo
X21hcChkc3QpOworCisJCWVyciA9IGludGVsX21pZ3JhdGVfY29weShtLCBOVUxMLAorCQkJCQkg
c3JjLT5tbS5wYWdlcy0+c2dsLAorCQkJCQkgZHN0LT5tbS5wYWdlcy0+c2dsLAorCQkJCQkgJnJx
KTsKKwkJaWYgKGVycikKKwkJCXByX2VycigiQ29weSBmYWlsZWQsIHNpemU6ICV1XG4iLCBzaXpl
c1tpXSk7CisKKwkJaWYgKHJxKSB7CisJCQlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAsIEha
KSA8IDApIHsKKwkJCQlwcl9lcnIoIkNvcHkgdGltZWQgb3V0LCBzaXplOiAldVxuIiwgc2l6ZXNb
aV0pOworCQkJCWVyciA9IC1FVElNRTsKKwkJCX0KKwkJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwor
CQl9CisKKwkJZm9yIChqID0gMDsgIWVyciAmJiBqIDwgc2l6ZXNbaV0gLyBQQUdFX1NJWkU7IGor
KykgeworCQkJayA9IGk5MTVfcHJhbmRvbV91MzJfbWF4X3N0YXRlKDEwMjQsICZwcm5nKTsKKwkJ
CWlmICh2YWRkcltqICogMTAyNCArIGtdICE9IGogKiAxMDI0ICsgaykgeworCQkJCXByX2Vycigi
Q29weSBmYWlsZWQsIHNpemU6ICV1LCBvZmZzZXQ6ICV6dVxuIiwKKwkJCQkgICAgICAgc2l6ZXNb
aV0sIChqICogMTAyNCArIGspICogc2l6ZW9mKHUzMikpOworCQkJCWlndF9oZXhkdW1wKHZhZGRy
ICsgaiAqIDEwMjQsIDQwOTYpOworCQkJCWVyciA9IC1FSU5WQUw7CisJCQl9CisJCX0KKworCQlp
OTE1X2dlbV9vYmplY3RfcHV0KGRzdCk7CisJCWk5MTVfZ2VtX29iamVjdF9wdXQoc3JjKTsKKwkJ
aTkxNV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsKKwkJaWYgKGVycikKKwkJCWJyZWFr
OworCX0KKworCXJldHVybiBlcnI7Cit9CisKK2ludCBpbnRlbF9taWdyYXRlX2xpdmVfc2VsZnRl
c3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBzdHJ1
Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1QobGl2ZV9taWdyYXRlX2NvcHkp
LAorCX07CisJc3RydWN0IGludGVsX21pZ3JhdGUgbTsKKwlpbnQgZXJyOworCisJaWYgKGludGVs
X21pZ3JhdGVfaW5pdCgmbSwgJmk5MTUtPmd0KSkKKwkJcmV0dXJuIDA7CisKKwllcnIgPSBpOTE1
X3N1YnRlc3RzKHRlc3RzLCAmbSk7CisJaW50ZWxfbWlncmF0ZV9maW5pKCZtKTsKKworCXJldHVy
biBlcnI7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9saXZlX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
bGl2ZV9zZWxmdGVzdHMuaAppbmRleCBhOTJjMGU5YjdlNmIuLmJlNWUwMTkxZWFlYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0
cy5oCkBAIC0yNiw2ICsyNiw3IEBAIHNlbGZ0ZXN0KGd0X21vY3MsIGludGVsX21vY3NfbGl2ZV9z
ZWxmdGVzdHMpCiBzZWxmdGVzdChndF9wbSwgaW50ZWxfZ3RfcG1fbGl2ZV9zZWxmdGVzdHMpCiBz
ZWxmdGVzdChndF9oZWFydGJlYXQsIGludGVsX2hlYXJ0YmVhdF9saXZlX3NlbGZ0ZXN0cykKIHNl
bGZ0ZXN0KHJlcXVlc3RzLCBpOTE1X3JlcXVlc3RfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVzdCht
aWdyYXRlLCBpbnRlbF9taWdyYXRlX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoYWN0aXZlLCBp
OTE1X2FjdGl2ZV9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KG9iamVjdHMsIGk5MTVfZ2VtX29i
amVjdF9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KG1tYW4sIGk5MTVfZ2VtX21tYW5fbGl2ZV9z
ZWxmdGVzdHMpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
