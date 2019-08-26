Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECDB9D292
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 17:20:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49B689D66;
	Mon, 26 Aug 2019 15:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4421289D66;
 Mon, 26 Aug 2019 15:20:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18267579-1500050 
 for multiple; Mon, 26 Aug 2019 16:20:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 16:20:00 +0100
Message-Id: <20190826152000.23394-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Race mmap offset
 generation against closure
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
dGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyB8IDk4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDk4IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQu
YwppbmRleCA4ZWZmOTE4NTAuLjgxMDY4ZjdkMSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1f
bW1hcF9ndHQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCkBAIC0yNiw2ICsyNiw3
IEBACiAgKi8KIAogI2luY2x1ZGUgPHVuaXN0ZC5oPgorI2luY2x1ZGUgPHN0ZGF0b21pYy5oPgog
I2luY2x1ZGUgPHN0ZGxpYi5oPgogI2luY2x1ZGUgPHN0ZGlvLmg+CiAjaW5jbHVkZSA8c3RyaW5n
Lmg+CkBAIC0zNjAsNiArMzYxLDk5IEBAIHRlc3RfaXNvbGF0aW9uKGludCBpOTE1KQogCWlndF9h
c3NlcnQocHRyID09IE1BUF9GQUlMRUQpOwogfQogCitzdGF0aWMgdm9pZAordGVzdF9jbG9zZV9y
YWNlKGludCBpOTE1KQoreworCWNvbnN0IGludCBuY3B1cyA9IHN5c2NvbmYoX1NDX05QUk9DRVNT
T1JTX09OTE4pOworCXVpbnQzMl90ICpoYW5kbGVzOworCisJaGFuZGxlcyA9IG1tYXA2NCgwLCA0
MDk2LCBQUk9UX1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQX0FOT04sIC0xLCAwKTsKKwlpZ3RfYXNz
ZXJ0KGhhbmRsZXMgIT0gTUFQX0ZBSUxFRCk7CisKKwlpZ3RfZm9yayhjaGlsZCwgbmNwdXMpIHsK
KwkJZG8geworCQkJc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCBtbWFwX2FyZyA9IHt9Owor
CQkJaW50IGkgPSAxICsgcmFuZG9tKCkgJSBuY3B1czsKKwkJCXVpbnQzMl90IG9sZDsKKworCQkJ
bW1hcF9hcmcuaGFuZGxlID0gZ2VtX2NyZWF0ZShpOTE1LCA0MDk2KTsKKwkJCW9sZCA9IGF0b21p
Y19leGNoYW5nZSgmaGFuZGxlc1tpXSwgbW1hcF9hcmcuaGFuZGxlKTsKKwkJCWlvY3RsKGk5MTUs
IERSTV9JT0NUTF9HRU1fQ0xPU0UsICZvbGQpOworCisJCQlpZiAoaW9jdGwoaTkxNSwKKwkJCQkg
IERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQX0dUVCwKKwkJCQkgICZtbWFwX2FyZykgIT0gLTEpIHsK
KwkJCQl2b2lkICpwdHI7CisKKwkJCQlwdHIgPSBtbWFwNjQoMCwgNDA5NiwKKwkJCQkJICAgICBQ
Uk9UX1JFQUQsIE1BUF9TSEFSRUQsIGk5MTUsCisJCQkJCSAgICAgbW1hcF9hcmcub2Zmc2V0KTsK
KwkJCQlpZiAocHRyICE9IE1BUF9GQUlMRUQpCisJCQkJCW11bm1hcChwdHIsIDQwOTYpOworCQkJ
fQorCQl9IHdoaWxlICghUkVBRF9PTkNFKGhhbmRsZXNbMF0pKTsKKwl9CisKKwlzbGVlcCgyMCk7
CisJaGFuZGxlc1swXSA9IDE7CisJaWd0X3dhaXRjaGlsZHJlbigpOworCisJZm9yIChpbnQgaSA9
IDE7IGkgPD0gbmNwdXM7IGkrKykKKwkJaW9jdGwoaTkxNSwgRFJNX0lPQ1RMX0dFTV9DTE9TRSwg
aGFuZGxlc1tpXSk7CisJbXVubWFwKGhhbmRsZXMsIDQwOTYpOworfQorCitzdGF0aWMgdm9pZAor
dGVzdF9mbGlua19yYWNlKGludCBpOTE1KQoreworCWNvbnN0IGludCBuY3B1cyA9IHN5c2NvbmYo
X1NDX05QUk9DRVNTT1JTX09OTE4pOworCXVpbnQzMl90ICpoYW5kbGVzOworCisJaGFuZGxlcyA9
IG1tYXA2NCgwLCA0MDk2LCBQUk9UX1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQX0FOT04sIC0xLCAw
KTsKKwlpZ3RfYXNzZXJ0KGhhbmRsZXMgIT0gTUFQX0ZBSUxFRCk7CisKKwlpZ3RfZm9yayhjaGls
ZCwgbmNwdXMpIHsKKwkJaW50IGZkID0gZ2VtX3Jlb3Blbl9kcml2ZXIoaTkxNSk7CisKKwkJZG8g
eworCQkJc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCBtbWFwX2FyZyA9IHt9OworCQkJdWlu
dDMyX3Qgb2xkOworCQkJaW50IGkgPSAxICsgcmFuZG9tKCkgJSBuY3B1czsKKworCQkJb2xkID0g
YXRvbWljX2V4Y2hhbmdlKCZoYW5kbGVzW2ldLAorCQkJCQkgICAgICBnZW1fY3JlYXRlKGk5MTUs
IDQwOTYpKTsKKwkJCWlmICghb2xkKQorCQkJCWNvbnRpbnVlOworCisJCQltbWFwX2FyZy5oYW5k
bGUgPQorCQkJCWdlbV9vcGVuKGZkLCBnZW1fZmxpbmsoaTkxNSwgb2xkKSk7CisJCQlpb2N0bChp
OTE1LCBEUk1fSU9DVExfR0VNX0NMT1NFLCAmb2xkKTsKKworCQkJaWYgKGlvY3RsKGZkLAorCQkJ
CSAgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfR1RULAorCQkJCSAgJm1tYXBfYXJnKSAhPSAtMSkg
eworCQkJCXZvaWQgKnB0cjsKKworCQkJCXB0ciA9IG1tYXA2NCgwLCA0MDk2LAorCQkJCQkgICAg
IFBST1RfUkVBRCwgTUFQX1NIQVJFRCwgZmQsCisJCQkJCSAgICAgbW1hcF9hcmcub2Zmc2V0KTsK
KwkJCQlpZiAocHRyICE9IE1BUF9GQUlMRUQpCisJCQkJCW11bm1hcChwdHIsIDQwOTYpOworCQkJ
fQorCisJCQlpb2N0bChmZCwgRFJNX0lPQ1RMX0dFTV9DTE9TRSwgJm1tYXBfYXJnLmhhbmRsZSk7
CisJCX0gd2hpbGUgKCFSRUFEX09OQ0UoaGFuZGxlc1swXSkpOworCX0KKworCXNsZWVwKDIwKTsK
KwloYW5kbGVzWzBdID0gMTsKKwlpZ3Rfd2FpdGNoaWxkcmVuKCk7CisKKwlmb3IgKGludCBpID0g
MTsgaSA8PSBuY3B1czsgaSsrKQorCQlpb2N0bChpOTE1LCBEUk1fSU9DVExfR0VNX0NMT1NFLCBo
YW5kbGVzW2ldKTsKKwltdW5tYXAoaGFuZGxlcywgNDA5Nik7Cit9CisKIHN0YXRpYyB2b2lkCiB0
ZXN0X3dyaXRlX2d0dChpbnQgZmQpCiB7CkBAIC05ODUsNiArMTA3OSwxMCBAQCBpZ3RfbWFpbgog
CQl0ZXN0X3djKGZkKTsKIAlpZ3Rfc3VidGVzdCgiaXNvbGF0aW9uIikKIAkJdGVzdF9pc29sYXRp
b24oZmQpOworCWlndF9zdWJ0ZXN0KCJjbG9zZS1yYWNlIikKKwkJdGVzdF9jbG9zZV9yYWNlKGZk
KTsKKwlpZ3Rfc3VidGVzdCgiZmxpbmstcmFjZSIpCisJCXRlc3RfZmxpbmtfcmFjZShmZCk7CiAJ
aWd0X3N1YnRlc3QoInBmLW5vbmJsb2NrIikKIAkJdGVzdF9wZl9ub25ibG9jayhmZCk7CiAKLS0g
CjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
