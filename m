Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E06E2C9B0B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B116E4BB;
	Tue,  1 Dec 2020 09:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2196E4B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172168-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:20 +0000
Message-Id: <20201201090729.24777-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Expose list of clients in sysfs
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkV4cG9zZSBh
IGxpc3Qgb2YgY2xpZW50cyB3aXRoIG9wZW4gZmlsZSBoYW5kbGVzIGluIHN5c2ZzLgoKVGhpcyB3
aWxsIGJlIGEgYmFzaXMgZm9yIGEgdG9wLWxpa2UgdXRpbGl0eSBzaG93aW5nIHBlci1jbGllbnQg
YW5kIHBlci0KZW5naW5lIEdQVSBsb2FkLgoKQ3VycmVudGx5IHdlIG9ubHkgZXhwb3NlIGVhY2gg
Y2xpZW50J3MgcGlkIGFuZCBuYW1lIHVuZGVyIG9wYXF1ZSBudW1iZXJlZApkaXJlY3RvcmllcyBp
biAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzLy4KCkZvciBpbnN0YW5jZToKCi9zeXMvY2xh
c3MvZHJtL2NhcmQwL2NsaWVudHMvMy9uYW1lOiBYb3JnCi9zeXMvY2xhc3MvZHJtL2NhcmQwL2Ns
aWVudHMvMy9waWQ6IDU2NjQKCnYyOgogQ2hyaXMgV2lsc29uOgogKiBFbmNsb3NlIG5ldyBtZW1i
ZXJzIGludG8gZGVkaWNhdGVkIHN0cnVjdHMuCiAqIFByb3RlY3QgYWdhaW5zdCBmYWlsZWQgc3lz
ZnMgcmVnaXN0cmF0aW9uLgoKdjM6CiAqIHN5c2ZzX2F0dHJfaW5pdC4KCnY0OgogKiBGaXggZm9y
IGludGVybmFsIGNsaWVudHMuCgp2NToKICogVXNlIGN5Y2xpYyBpZGEgZm9yIGNsaWVudCBpZC4g
KENocmlzKQogKiBEbyBub3QgbGVhayBwaWQgcmVmZXJlbmNlLiAoQ2hyaXMpCiAqIFRpZHkgY29k
ZSB3aXRoIHNvbWUgbG9jYWxzLgoKdjY6CiAqIFVzZSB4YV9hbGxvY19jeWNsaWMgdG8gc2ltcGxp
ZnkgbG9ja2luZy4gKENocmlzKQogKiBObyBuZWVkIHRvIHVucmVnaXN0ZXIgaW5kaXZpZGlhbCBz
eXNmcyBmaWxlcy4gKENocmlzKQogKiBSZWJhc2Ugb24gdG9wIG9mIGZwcml2IGtyZWYuCiAqIFRy
YWNrIGNsaWVudCBjbG9zZWQgc3RhdHVzIGFuZCByZWZsZWN0IGluIHN5c2ZzLgoKdjc6CiAqIE1h
a2UgZHJtX2NsaWVudCBtb3JlIHN0YW5kYWxvbmUgY29uY2VwdC4KCnY4OgogKiBTaW1wbGlmeSBz
eXNmcyBzaG93LiAoQ2hyaXMpCiAqIEFsd2F5cyB0cmFjayBuYW1lIGFuZCBwaWQuCgp2OToKICog
Rml4IGN5Y2xpYyBpZCBhc3NpZ25tZW50LgoKdjEwOgogKiBObyBuZWVkIGZvciBhIG11dGV4IGFy
b3VuZCB4YV9hbGxvY19jeWNsaWMuCiAqIFJlZmFjdG9yIHN5c2ZzIGludG8gb3duIGZ1bmN0aW9u
LgogKiBVbnJlZ2lzdGVyIHN5c2ZzIGJlZm9yZSBmcmVlaW5nIHBpZCBhbmQgbmFtZS4KICogTW92
ZSBjbGllbnRzIHNldHVwIGludG8gb3duIGZ1bmN0aW9uLgoKdjExOgogKiBDYWxsIGNsaWVudHMg
aW5pdCBkaXJlY3RseSBmcm9tIGRyaXZlciBpbml0LiAoQ2hyaXMpCgogdjEyOgogKiBSZWJhc2Vk
IGFmdGVyIGk5MTVfZ2VtX3JlbGVhc2UgcmVtb3ZhbC4KICogRG8gbm90IGZhaWwgY2xpZW50IGFk
ZCBvbiBpZCB3cmFwLiAoTWFjaWVqKQoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPiAjIHYxMQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGll
bnQuYyB8IDE5MCArKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RybV9jbGllbnQuaCB8ICA2OSArKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAg
IHwgIDIzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAgfCAgIDgg
KysKIDcgZmlsZXMgY2hhbmdlZCwgMjk5IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcm1fY2xpZW50LmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGllbnQu
aAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggZTU1NzRlNTA2YTVjLi4yNTBmMDA0ZDkyYmIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlCkBAIC0zNCw4ICszNCw5IEBAIHN1YmRpci1jY2ZsYWdzLXkgKz0g
LUkkKHNyY3RyZWUpLyQoc3JjKQogIyBQbGVhc2Uga2VlcCB0aGVzZSBidWlsZCBsaXN0cyBzb3J0
ZWQhCiAKICMgY29yZSBkcml2ZXIgY29kZQotaTkxNS15ICs9IGk5MTVfZHJ2Lm8gXAotCSAgaTkx
NV9jb25maWcubyBcCitpOTE1LXkgKz0gaTkxNV9jb25maWcubyBcCisJICBpOTE1X2RybV9jbGll
bnQubyBcCisJICBpOTE1X2Rydi5vIFwKIAkgIGk5MTVfaXJxLm8gXAogCSAgaTkxNV9nZXRwYXJh
bS5vIFwKIAkgIGk5MTVfcGFyYW1zLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcm1fY2xpZW50LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGll
bnQuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjU5NzgyOWYyYzY1
NwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVu
dC5jCkBAIC0wLDAgKzEsMTkwIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisv
KgorICogQ29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVk
ZSA8bGludXgva2VybmVsLmg+CisjaW5jbHVkZSA8bGludXgvc2xhYi5oPgorI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+CisKKyNpbmNsdWRlICJpOTE1X2RybV9jbGllbnQuaCIKKyNpbmNsdWRlICJp
OTE1X2dlbS5oIgorI2luY2x1ZGUgImk5MTVfdXRpbHMuaCIKKwordm9pZCBpOTE1X2RybV9jbGll
bnRzX2luaXQoc3RydWN0IGk5MTVfZHJtX2NsaWVudHMgKmNsaWVudHMsCisJCQkgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwljbGllbnRzLT5pOTE1ID0gaTkxNTsKKworCWNs
aWVudHMtPm5leHRfaWQgPSAwOworCXhhX2luaXRfZmxhZ3MoJmNsaWVudHMtPnhhcnJheSwgWEFf
RkxBR1NfQUxMT0MpOworfQorCitzdGF0aWMgc3NpemVfdAorc2hvd19jbGllbnRfbmFtZShzdHJ1
Y3QgZGV2aWNlICprZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVm
KQoreworCXN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCA9CisJCWNvbnRhaW5lcl9vZihh
dHRyLCB0eXBlb2YoKmNsaWVudCksIGF0dHIubmFtZSk7CisKKwlyZXR1cm4gc25wcmludGYoYnVm
LCBQQUdFX1NJWkUsCisJCQlSRUFEX09OQ0UoY2xpZW50LT5jbG9zZWQpID8gIjwlcz4iIDogIiVz
IiwKKwkJCWNsaWVudC0+bmFtZSk7Cit9CisKK3N0YXRpYyBzc2l6ZV90CitzaG93X2NsaWVudF9w
aWQoc3RydWN0IGRldmljZSAqa2Rldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsIGNo
YXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGllbnQgPQorCQljb250YWlu
ZXJfb2YoYXR0ciwgdHlwZW9mKCpjbGllbnQpLCBhdHRyLnBpZCk7CisKKwlyZXR1cm4gc25wcmlu
dGYoYnVmLCBQQUdFX1NJWkUsCisJCQlSRUFEX09OQ0UoY2xpZW50LT5jbG9zZWQpID8gIjwldT4i
IDogIiV1IiwKKwkJCXBpZF9ucihjbGllbnQtPnBpZCkpOworfQorCitzdGF0aWMgaW50IF9fY2xp
ZW50X3JlZ2lzdGVyX3N5c2ZzKHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKK3sKKwlj
b25zdCBzdHJ1Y3QgeworCQljb25zdCBjaGFyICpuYW1lOworCQlzdHJ1Y3QgZGV2aWNlX2F0dHJp
YnV0ZSAqYXR0cjsKKwkJc3NpemVfdCAoKnNob3cpKHN0cnVjdCBkZXZpY2UgKmRldiwKKwkJCQlz
dHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKKwkJCQljaGFyICpidWYpOworCX0gZmlsZXNb
XSA9IHsKKwkJeyAibmFtZSIsICZjbGllbnQtPmF0dHIubmFtZSwgc2hvd19jbGllbnRfbmFtZSB9
LAorCQl7ICJwaWQiLCAmY2xpZW50LT5hdHRyLnBpZCwgc2hvd19jbGllbnRfcGlkIH0sCisJfTsK
Kwl1bnNpZ25lZCBpbnQgaTsKKwljaGFyIGJ1ZlsxNl07CisJaW50IHJldDsKKworCXJldCA9IHNj
bnByaW50ZihidWYsIHNpemVvZihidWYpLCAiJXUiLCBjbGllbnQtPmlkKTsKKwlpZiAocmV0ID09
IHNpemVvZihidWYpKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWNsaWVudC0+cm9vdCA9IGtvYmpl
Y3RfY3JlYXRlX2FuZF9hZGQoYnVmLCBjbGllbnQtPmNsaWVudHMtPnJvb3QpOworCWlmICghY2xp
ZW50LT5yb290KQorCQlyZXR1cm4gLUVOT01FTTsKKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9T
SVpFKGZpbGVzKTsgaSsrKSB7CisJCXN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyID0gZmls
ZXNbaV0uYXR0cjsKKworCQlzeXNmc19hdHRyX2luaXQoJmF0dHItPmF0dHIpOworCisJCWF0dHIt
PmF0dHIubmFtZSA9IGZpbGVzW2ldLm5hbWU7CisJCWF0dHItPmF0dHIubW9kZSA9IDA0NDQ7CisJ
CWF0dHItPnNob3cgPSBmaWxlc1tpXS5zaG93OworCisJCXJldCA9IHN5c2ZzX2NyZWF0ZV9maWxl
KGNsaWVudC0+cm9vdCwgKHN0cnVjdCBhdHRyaWJ1dGUgKilhdHRyKTsKKwkJaWYgKHJldCkKKwkJ
CWJyZWFrOworCX0KKworCWlmIChyZXQpCisJCWtvYmplY3RfcHV0KGNsaWVudC0+cm9vdCk7CisK
KwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgdm9pZCBfX2NsaWVudF91bnJlZ2lzdGVyX3N5c2Zz
KHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKK3sKKwlrb2JqZWN0X3B1dChmZXRjaF9h
bmRfemVybygmY2xpZW50LT5yb290KSk7Cit9CisKK3N0YXRpYyBpbnQKK19faTkxNV9kcm1fY2xp
ZW50X3JlZ2lzdGVyKHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCwKKwkJCSAgIHN0cnVj
dCB0YXNrX3N0cnVjdCAqdGFzaykKK3sKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyAqY2xpZW50
cyA9IGNsaWVudC0+Y2xpZW50czsKKwljaGFyICpuYW1lOworCWludCByZXQ7CisKKwluYW1lID0g
a3N0cmR1cCh0YXNrLT5jb21tLCBHRlBfS0VSTkVMKTsKKwlpZiAoIW5hbWUpCisJCXJldHVybiAt
RU5PTUVNOworCisJY2xpZW50LT5waWQgPSBnZXRfdGFza19waWQodGFzaywgUElEVFlQRV9QSUQp
OworCWNsaWVudC0+bmFtZSA9IG5hbWU7CisKKwlpZiAoIWNsaWVudHMtPnJvb3QpCisJCXJldHVy
biAwOyAvKiBpbnRlbF9mYmRldl9pbml0IHJlZ2lzdGVycyBhIGNsaWVudCBiZWZvcmUgc3lzZnMg
Ki8KKworCXJldCA9IF9fY2xpZW50X3JlZ2lzdGVyX3N5c2ZzKGNsaWVudCk7CisJaWYgKHJldCkK
KwkJZ290byBlcnJfc3lzZnM7CisKKwlyZXR1cm4gMDsKKworZXJyX3N5c2ZzOgorCXB1dF9waWQo
Y2xpZW50LT5waWQpOworCWtmcmVlKGNsaWVudC0+bmFtZSk7CisKKwlyZXR1cm4gcmV0OworfQor
CitzdGF0aWMgdm9pZCBfX2k5MTVfZHJtX2NsaWVudF91bnJlZ2lzdGVyKHN0cnVjdCBpOTE1X2Ry
bV9jbGllbnQgKmNsaWVudCkKK3sKKwlfX2NsaWVudF91bnJlZ2lzdGVyX3N5c2ZzKGNsaWVudCk7
CisKKwlwdXRfcGlkKGZldGNoX2FuZF96ZXJvKCZjbGllbnQtPnBpZCkpOworCWtmcmVlKGZldGNo
X2FuZF96ZXJvKCZjbGllbnQtPm5hbWUpKTsKK30KKworc3RhdGljIHZvaWQgX19yY3VfaTkxNV9k
cm1fY2xpZW50X2ZyZWUoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspCit7CisJc3RydWN0IGk5MTVf
ZHJtX2NsaWVudCAqY2xpZW50ID0KKwkJY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpjbGllbnQp
LCByY3Uud29yayk7CisKKwlfX2k5MTVfZHJtX2NsaWVudF91bnJlZ2lzdGVyKGNsaWVudCk7CisK
Kwl4YV9lcmFzZSgmY2xpZW50LT5jbGllbnRzLT54YXJyYXksIGNsaWVudC0+aWQpOworCWtmcmVl
KGNsaWVudCk7Cit9CisKK3N0cnVjdCBpOTE1X2RybV9jbGllbnQgKgoraTkxNV9kcm1fY2xpZW50
X2FkZChzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50cyAqY2xpZW50cywgc3RydWN0IHRhc2tfc3RydWN0
ICp0YXNrKQoreworCXN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudDsKKwlpbnQgcmV0Owor
CisJY2xpZW50ID0ga3phbGxvYyhzaXplb2YoKmNsaWVudCksIEdGUF9LRVJORUwpOworCWlmICgh
Y2xpZW50KQorCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKworCWtyZWZfaW5pdCgmY2xpZW50
LT5rcmVmKTsKKwljbGllbnQtPmNsaWVudHMgPSBjbGllbnRzOworCUlOSVRfUkNVX1dPUksoJmNs
aWVudC0+cmN1LCBfX3JjdV9pOTE1X2RybV9jbGllbnRfZnJlZSk7CisKKwlyZXQgPSB4YV9hbGxv
Y19jeWNsaWMoJmNsaWVudHMtPnhhcnJheSwgJmNsaWVudC0+aWQsIGNsaWVudCwKKwkJCSAgICAg
IHhhX2xpbWl0XzMyYiwgJmNsaWVudHMtPm5leHRfaWQsIEdGUF9LRVJORUwpOworCWlmIChyZXQg
PCAwKQorCQlnb3RvIGVycl9pZDsKKworCXJldCA9IF9faTkxNV9kcm1fY2xpZW50X3JlZ2lzdGVy
KGNsaWVudCwgdGFzayk7CisJaWYgKHJldCkKKwkJZ290byBlcnJfcmVnaXN0ZXI7CisKKwlyZXR1
cm4gY2xpZW50OworCitlcnJfcmVnaXN0ZXI6CisJeGFfZXJhc2UoJmNsaWVudHMtPnhhcnJheSwg
Y2xpZW50LT5pZCk7CitlcnJfaWQ6CisJa2ZyZWUoY2xpZW50KTsKKworCXJldHVybiBFUlJfUFRS
KHJldCk7Cit9CisKK3ZvaWQgX19pOTE1X2RybV9jbGllbnRfZnJlZShzdHJ1Y3Qga3JlZiAqa3Jl
ZikKK3sKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICpjbGllbnQgPQorCQljb250YWluZXJfb2Yo
a3JlZiwgdHlwZW9mKCpjbGllbnQpLCBrcmVmKTsKKworCXF1ZXVlX3JjdV93b3JrKHN5c3RlbV93
cSwgJmNsaWVudC0+cmN1KTsKK30KKwordm9pZCBpOTE1X2RybV9jbGllbnRfY2xvc2Uoc3RydWN0
IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50KQoreworCUdFTV9CVUdfT04oUkVBRF9PTkNFKGNsaWVu
dC0+Y2xvc2VkKSk7CisJV1JJVEVfT05DRShjbGllbnQtPmNsb3NlZCwgdHJ1ZSk7CisJaTkxNV9k
cm1fY2xpZW50X3B1dChjbGllbnQpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcm1fY2xpZW50LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RybV9jbGll
bnQuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmUyMjI4NjQ3NDhj
NwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJtX2NsaWVu
dC5oCkBAIC0wLDAgKzEsNjkgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8K
Ky8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5k
ZWYgX19JOTE1X0RSTV9DTElFTlRfSF9fCisjZGVmaW5lIF9fSTkxNV9EUk1fQ0xJRU5UX0hfXwor
CisjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CisjaW5jbHVkZSA8bGludXgva29iamVjdC5oPgor
I2luY2x1ZGUgPGxpbnV4L2tyZWYuaD4KKyNpbmNsdWRlIDxsaW51eC9waWQuaD4KKyNpbmNsdWRl
IDxsaW51eC9yY3VwZGF0ZS5oPgorI2luY2x1ZGUgPGxpbnV4L3NjaGVkLmg+CisjaW5jbHVkZSA8
bGludXgveGFycmF5Lmg+CisKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOworCitzdHJ1Y3QgaTkx
NV9kcm1fY2xpZW50cyB7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisKKwlzdHJ1
Y3QgeGFycmF5IHhhcnJheTsKKwl1MzIgbmV4dF9pZDsKKworCXN0cnVjdCBrb2JqZWN0ICpyb290
OworfTsKKworc3RydWN0IGk5MTVfZHJtX2NsaWVudCB7CisJc3RydWN0IGtyZWYga3JlZjsKKwor
CXN0cnVjdCByY3Vfd29yayByY3U7CisKKwl1bnNpZ25lZCBpbnQgaWQ7CisJc3RydWN0IHBpZCAq
cGlkOworCWNoYXIgKm5hbWU7CisJYm9vbCBjbG9zZWQ7CisKKwlzdHJ1Y3QgaTkxNV9kcm1fY2xp
ZW50cyAqY2xpZW50czsKKworCXN0cnVjdCBrb2JqZWN0ICpyb290OworCXN0cnVjdCB7CisJCXN0
cnVjdCBkZXZpY2VfYXR0cmlidXRlIHBpZDsKKwkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgbmFt
ZTsKKwl9IGF0dHI7Cit9OworCit2b2lkIGk5MTVfZHJtX2NsaWVudHNfaW5pdChzdHJ1Y3QgaTkx
NV9kcm1fY2xpZW50cyAqY2xpZW50cywKKwkJCSAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KTsKKworc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9kcm1fY2xpZW50ICoKK2k5MTVfZHJt
X2NsaWVudF9nZXQoc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50KQoreworCWtyZWZfZ2V0
KCZjbGllbnQtPmtyZWYpOworCXJldHVybiBjbGllbnQ7Cit9CisKK3ZvaWQgX19pOTE1X2RybV9j
bGllbnRfZnJlZShzdHJ1Y3Qga3JlZiAqa3JlZik7CisKK3N0YXRpYyBpbmxpbmUgdm9pZCBpOTE1
X2RybV9jbGllbnRfcHV0KHN0cnVjdCBpOTE1X2RybV9jbGllbnQgKmNsaWVudCkKK3sKKwlrcmVm
X3B1dCgmY2xpZW50LT5rcmVmLCBfX2k5MTVfZHJtX2NsaWVudF9mcmVlKTsKK30KKwordm9pZCBp
OTE1X2RybV9jbGllbnRfY2xvc2Uoc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50KTsKKwor
c3RydWN0IGk5MTVfZHJtX2NsaWVudCAqaTkxNV9kcm1fY2xpZW50X2FkZChzdHJ1Y3QgaTkxNV9k
cm1fY2xpZW50cyAqY2xpZW50cywKKwkJCQkJICAgIHN0cnVjdCB0YXNrX3N0cnVjdCAqdGFzayk7
CisKKyNlbmRpZiAvKiAhX19JOTE1X0RSTV9DTElFTlRfSF9fICovCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwppbmRleCAzMjA4NTZiNjY1YTEuLjJkODMwZTgxMTVlMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCkBAIC02OSw2ICs2OSw3IEBACiAjaW5jbHVkZSAiZ3QvaW50ZWxfcmM2LmgiCiAKICNp
bmNsdWRlICJpOTE1X2RlYnVnZnMuaCIKKyNpbmNsdWRlICJpOTE1X2RybV9jbGllbnQuaCIKICNp
bmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfaW9jMzIuaCIKICNpbmNsdWRlICJp
OTE1X2lycS5oIgpAQCAtMzQwLDYgKzM0MSw4IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFy
bHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJaTkxNV9nZW1f
aW5pdF9lYXJseShkZXZfcHJpdik7CiAKKwlpOTE1X2RybV9jbGllbnRzX2luaXQoJmRldl9wcml2
LT5jbGllbnRzLCBkZXZfcHJpdik7CisKIAkvKiBUaGlzIG11c3QgYmUgY2FsbGVkIGJlZm9yZSBh
bnkgY2FsbHMgdG8gSEFTX1BDSF8qICovCiAJaW50ZWxfZGV0ZWN0X3BjaChkZXZfcHJpdik7CiAK
QEAgLTEwMTksNiArMTAyMiw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3Bvc3RjbG9zZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiAJc3RydWN0IGRy
bV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2ID0gZmlsZS0+ZHJpdmVyX3ByaXY7CiAKIAlp
OTE1X2dlbV9jb250ZXh0X2Nsb3NlKGZpbGUpOworCWk5MTVfZHJtX2NsaWVudF9jbG9zZShmaWxl
X3ByaXYtPmNsaWVudCk7CiAKIAlrZnJlZV9yY3UoZmlsZV9wcml2LCByY3UpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAppbmRleCAxYTJhMTI3NmRkMzEuLmY3M2IwZjM4ZWY1OSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCkBAIC05Myw2ICs5Myw3IEBACiAjaW5jbHVkZSAiaW50ZWxfd2FrZXJl
Zi5oIgogI2luY2x1ZGUgImludGVsX3dvcGNtLmgiCiAKKyNpbmNsdWRlICJpOTE1X2RybV9jbGll
bnQuaCIKICNpbmNsdWRlICJpOTE1X2dlbS5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2d0dC5oIgog
I2luY2x1ZGUgImk5MTVfZ3B1X2Vycm9yLmgiCkBAIC0yMjAsNiArMjIxLDggQEAgc3RydWN0IGRy
bV9pOTE1X2ZpbGVfcHJpdmF0ZSB7CiAJLyoqIGJhbl9zY29yZTogQWNjdW11bGF0ZWQgc2NvcmUg
b2YgYWxsIGN0eCBiYW5zIGFuZCBmYXN0IGhhbmdzLiAqLwogCWF0b21pY190IGJhbl9zY29yZTsK
IAl1bnNpZ25lZCBsb25nIGhhbmdfdGltZXN0YW1wOworCisJc3RydWN0IGk5MTVfZHJtX2NsaWVu
dCAqY2xpZW50OwogfTsKIAogLyogSW50ZXJmYWNlIGhpc3Rvcnk6CkBAIC0xMjA2LDYgKzEyMDks
OCBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAKIAlzdHJ1Y3QgaTkxNV9wbXUgcG11Owog
CisJc3RydWN0IGk5MTVfZHJtX2NsaWVudHMgY2xpZW50czsKKwogCXN0cnVjdCBpOTE1X2hkY3Bf
Y29tcF9tYXN0ZXIgKmhkY3BfbWFzdGVyOwogCWJvb2wgaGRjcF9jb21wX2FkZGVkOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwppbmRleCAxN2E0NjM2ZWU1NDIuLjFmOWZhNThlMTk2OSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xMjQ1LDYgKzEyNDUsOCBAQCB2b2lkIGk5MTVfZ2VtX2Ns
ZWFudXBfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCUdFTV9CVUdf
T04oIWxsaXN0X2VtcHR5KCZkZXZfcHJpdi0+bW0uZnJlZV9saXN0KSk7CiAJR0VNX0JVR19PTihh
dG9taWNfcmVhZCgmZGV2X3ByaXYtPm1tLmZyZWVfY291bnQpKTsKIAlkcm1fV0FSTl9PTigmZGV2
X3ByaXYtPmRybSwgZGV2X3ByaXYtPm1tLnNocmlua19jb3VudCk7CisJZHJtX1dBUk5fT04oJmRl
dl9wcml2LT5kcm0sICF4YV9lbXB0eSgmZGV2X3ByaXYtPmNsaWVudHMueGFycmF5KSk7CisJeGFf
ZGVzdHJveSgmZGV2X3ByaXYtPmNsaWVudHMueGFycmF5KTsKIH0KIAogaW50IGk5MTVfZ2VtX2Zy
ZWV6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xMjk3LDI1ICsxMjk5
LDQwIEBAIGludCBpOTE1X2dlbV9mcmVlemVfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIGludCBpOTE1X2dlbV9vcGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAq
ZmlsZV9wcml2OwotCWludCByZXQ7CisJc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50Owor
CWludCByZXQgPSAtRU5PTUVNOwogCiAJRFJNX0RFQlVHKCJcbiIpOwogCiAJZmlsZV9wcml2ID0g
a3phbGxvYyhzaXplb2YoKmZpbGVfcHJpdiksIEdGUF9LRVJORUwpOwogCWlmICghZmlsZV9wcml2
KQotCQlyZXR1cm4gLUVOT01FTTsKKwkJZ290byBlcnJfYWxsb2M7CisKKwljbGllbnQgPSBpOTE1
X2RybV9jbGllbnRfYWRkKCZpOTE1LT5jbGllbnRzLCBjdXJyZW50KTsKKwlpZiAoSVNfRVJSKGNs
aWVudCkpIHsKKwkJcmV0ID0gUFRSX0VSUihjbGllbnQpOworCQlnb3RvIGVycl9jbGllbnQ7CisJ
fQogCiAJZmlsZS0+ZHJpdmVyX3ByaXYgPSBmaWxlX3ByaXY7CiAJZmlsZV9wcml2LT5kZXZfcHJp
diA9IGk5MTU7CiAJZmlsZV9wcml2LT5maWxlID0gZmlsZTsKKwlmaWxlX3ByaXYtPmNsaWVudCA9
IGNsaWVudDsKIAogCWZpbGVfcHJpdi0+YnNkX2VuZ2luZSA9IC0xOwogCWZpbGVfcHJpdi0+aGFu
Z190aW1lc3RhbXAgPSBqaWZmaWVzOwogCiAJcmV0ID0gaTkxNV9nZW1fY29udGV4dF9vcGVuKGk5
MTUsIGZpbGUpOwogCWlmIChyZXQpCi0JCWtmcmVlKGZpbGVfcHJpdik7CisJCWdvdG8gZXJyX2Nv
bnRleHQ7CisKKwlyZXR1cm4gMDsKIAorZXJyX2NvbnRleHQ6CisJaTkxNV9kcm1fY2xpZW50X2Ns
b3NlKGNsaWVudCk7CitlcnJfY2xpZW50OgorCWtmcmVlKGZpbGVfcHJpdik7CitlcnJfYWxsb2M6
CiAJcmV0dXJuIHJldDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jCmluZGV4IDQ1ZDMy
ZWY0Mjc4Ny4uYjdkNGE2ZDJkZDVjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jCkBAIC01
NjAsNiArNTYwLDExIEBAIHZvaWQgaTkxNV9zZXR1cF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IGRldmljZSAqa2RldiA9IGRldl9wcml2LT5kcm0ucHJp
bWFyeS0+a2RldjsKIAlpbnQgcmV0OwogCisJZGV2X3ByaXYtPmNsaWVudHMucm9vdCA9CisJCWtv
YmplY3RfY3JlYXRlX2FuZF9hZGQoImNsaWVudHMiLCAma2Rldi0+a29iaik7CisJaWYgKCFkZXZf
cHJpdi0+Y2xpZW50cy5yb290KQorCQlEUk1fRVJST1IoIlBlci1jbGllbnQgc3lzZnMgc2V0dXAg
ZmFpbGVkXG4iKTsKKwogI2lmZGVmIENPTkZJR19QTQogCWlmIChIQVNfUkM2KGRldl9wcml2KSkg
ewogCQlyZXQgPSBzeXNmc19tZXJnZV9ncm91cCgma2Rldi0+a29iaiwKQEAgLTYyNyw0ICs2MzIs
NyBAQCB2b2lkIGk5MTVfdGVhcmRvd25fc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogCXN5c2ZzX3VubWVyZ2VfZ3JvdXAoJmtkZXYtPmtvYmosICZyYzZfYXR0cl9ncm91
cCk7CiAJc3lzZnNfdW5tZXJnZV9ncm91cCgma2Rldi0+a29iaiwgJnJjNnBfYXR0cl9ncm91cCk7
CiAjZW5kaWYKKworCWlmIChkZXZfcHJpdi0+Y2xpZW50cy5yb290KQorCQlrb2JqZWN0X3B1dChk
ZXZfcHJpdi0+Y2xpZW50cy5yb290KTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
