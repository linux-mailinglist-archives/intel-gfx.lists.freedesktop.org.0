Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F373377EB9
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Jul 2019 11:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2068F6E029;
	Sun, 28 Jul 2019 09:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B22D6E029
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Jul 2019 09:10:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17670648-1500050 
 for multiple; Sun, 28 Jul 2019 10:10:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Jul 2019 10:10:11 +0100
Message-Id: <20190728091011.22746-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915_hangman: Force error capture
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

Rm9yIGZhc3QgcHJlZW1wdC1yZXNldHMsIGVycm9yIGNhcHR1cmUgaXMgc2tpcHBlZCwgc28gZGlz
YWJsZQpwcmVlbXB0LXJlc2V0cyBiZWZvcmUgY2hlY2tpbmcgdGhlIGVycm9yIHN0YXRlLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
bGliL2lndF9ndC5jICAgICAgICAgICAgICB8IDcgKysrKy0tLQogdGVzdHMvaTkxNS9pOTE1X2hh
bmdtYW4uYyB8IDcgKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9ndC5jIGIvbGliL2lndF9ndC5jCmlu
ZGV4IDc4ZTNjZDA4OS4uNWNhNzc0NzFjIDEwMDY0NAotLS0gYS9saWIvaWd0X2d0LmMKKysrIGIv
bGliL2lndF9ndC5jCkBAIC0xNjIsNiArMTYyLDcgQEAgaWd0X2hhbmdfdCBpZ3RfYWxsb3dfaGFu
ZyhpbnQgZmQsIHVuc2lnbmVkIGN0eCwgdW5zaWduZWQgZmxhZ3MpCiAJc3RydWN0IGRybV9pOTE1
X2dlbV9jb250ZXh0X3BhcmFtIHBhcmFtID0gewogCQkuY3R4X2lkID0gY3R4LAogCX07CisJaW50
IGFsbG93X3Jlc2V0OwogCXVuc2lnbmVkIGJhbjsKIAogCS8qCkBAIC0xNzcsOSArMTc4LDcgQEAg
aWd0X2hhbmdfdCBpZ3RfYWxsb3dfaGFuZyhpbnQgZmQsIHVuc2lnbmVkIGN0eCwgdW5zaWduZWQg
ZmxhZ3MpCiAJaWYgKCFpZ3RfY2hlY2tfYm9vbGVhbl9lbnZfdmFyKCJJR1RfSEFOR19XSVRIT1VU
X1JFU0VUIiwgZmFsc2UpKQogCQlpZ3RfcmVxdWlyZShoYXNfZ3B1X3Jlc2V0KGZkKSk7CiAKLQlp
Z3RfcmVxdWlyZShpZ3Rfc3lzZnNfc2V0X3BhcmFtZXRlcgotCQkgICAgKGZkLCAicmVzZXQiLCAi
JWQiLCBJTlRfTUFYIC8qIGFueSByZXNldCBtZXRob2QgKi8pKTsKLQorCWFsbG93X3Jlc2V0ID0g
MTsKIAlpZiAoKGZsYWdzICYgSEFOR19BTExPV19DQVBUVVJFKSA9PSAwKSB7CiAJCXBhcmFtLnBh
cmFtID0gSTkxNV9DT05URVhUX1BBUkFNX05PX0VSUk9SX0NBUFRVUkU7CiAJCXBhcmFtLnZhbHVl
ID0gMTsKQEAgLTE4OCw3ICsxODcsOSBAQCBpZ3RfaGFuZ190IGlndF9hbGxvd19oYW5nKGludCBm
ZCwgdW5zaWduZWQgY3R4LCB1bnNpZ25lZCBmbGFncykKIAkJICogdGhlIHJpZ2h0IG9uZSkuCiAJ
CSAqLwogCQlfX2dlbV9jb250ZXh0X3NldF9wYXJhbShmZCwgJnBhcmFtKTsKKwkJYWxsb3dfcmVz
ZXQgPSBJTlRfTUFYOyAvKiBhbnkgcmVzZXQgbWV0aG9kICovCiAJfQorCWlndF9yZXF1aXJlKGln
dF9zeXNmc19zZXRfcGFyYW1ldGVyKGZkLCAicmVzZXQiLCAiJWQiLCBhbGxvd19yZXNldCkpOwog
CiAJYmFuID0gY29udGV4dF9nZXRfYmFuKGZkLCBjdHgpOwogCWlmICgoZmxhZ3MgJiBIQU5HX0FM
TE9XX0JBTikgPT0gMCkKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvaTkxNV9oYW5nbWFuLmMgYi90
ZXN0cy9pOTE1L2k5MTVfaGFuZ21hbi5jCmluZGV4IDU4MTQxZmM5Mi4uN2ExNThkOGRiIDEwMDY0
NAotLS0gYS90ZXN0cy9pOTE1L2k5MTVfaGFuZ21hbi5jCisrKyBiL3Rlc3RzL2k5MTUvaTkxNV9o
YW5nbWFuLmMKQEAgLTE0MCwxMiArMTQwLDEzIEBAIHN0YXRpYyB2b2lkIGNoZWNrX2Vycm9yX3N0
YXRlKGNvbnN0IGNoYXIgKmV4cGVjdGVkX3JpbmdfbmFtZSwKIAlzaXplX3QgbGluZV9zaXplID0g
MDsKIAlib29sIGZvdW5kID0gZmFsc2U7CiAKLQlpZ3RfZGVidWcoIiVzKGV4cGVjdGVkIHJpbmcg
bmFtZT0lcywgZXhwZWN0ZWQgb2Zmc2V0PSUiUFJJeDY0IilcbiIsCi0JCSAgX19mdW5jX18sIGV4
cGVjdGVkX3JpbmdfbmFtZSwgZXhwZWN0ZWRfb2Zmc2V0KTsKIAlpZ3RfZGVidWdmc19kdW1wKGRl
dmljZSwgImk5MTVfZXJyb3Jfc3RhdGUiKTsKIAogCWlndF9hc3NlcnQoZ2V0bGluZSgmbGluZSwg
JmxpbmVfc2l6ZSwgZmlsZSkgIT0gLTEpOwotCWlndF9hc3NlcnQoc3RyY2FzZWNtcChsaW5lLCAi
Tm8gZXJyb3Igc3RhdGUgY29sbGVjdGVkIikpOworCWlndF9yZXF1aXJlKHN0cmNhc2VjbXAobGlu
ZSwgIk5vIGVycm9yIHN0YXRlIGNvbGxlY3RlZCIpKTsKKworCWlndF9kZWJ1ZygiJXMoZXhwZWN0
ZWQgcmluZyBuYW1lPSVzLCBleHBlY3RlZCBvZmZzZXQ9JSJQUkl4NjQiKVxuIiwKKwkJICBfX2Z1
bmNfXywgZXhwZWN0ZWRfcmluZ19uYW1lLCBleHBlY3RlZF9vZmZzZXQpOwogCiAJd2hpbGUgKGdl
dGxpbmUoJmxpbmUsICZsaW5lX3NpemUsIGZpbGUpID4gMCkgewogCQljaGFyICpkYXNoZXM7Ci0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
