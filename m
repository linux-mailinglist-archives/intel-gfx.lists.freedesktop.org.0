Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB91B10CEAB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 19:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADAC46E87A;
	Thu, 28 Nov 2019 18:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDE86E87A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 18:54:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19381148-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 18:54:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 18:54:01 +0000
Message-Id: <20191128185402.110678-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/selftests: Drop local vm reference!
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

QWZ0ZXIgb2J0YWluaW5nIGEgbG9jYWwgcmVmZXJlbmNlIHRvIHRoZSB2bSBmcm9tIHRoZSBjb250
ZXh0LCByZW1lbWJlcgp0byBkcm9wIGl0IGJlZm9yZSBpdCBnb2VzIG91dCBvZiBzY29wZSEKClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDM0ICsrKysrKysrLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRl
eHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4
dC5jCmluZGV4IDMzZTU2ZDlhZjA2MS4uNzgwZTU4ZmU1YzY0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMTUw
MCw3ICsxNTAwLDcgQEAgc3RhdGljIGludCB3cml0ZV90b19zY3JhdGNoKHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCiAJY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1
X01BUF9XQik7CiAJaWYgKElTX0VSUihjbWQpKSB7CiAJCWVyciA9IFBUUl9FUlIoY21kKTsKLQkJ
Z290byBlcnI7CisJCWdvdG8gb3V0OwogCX0KIAogCSpjbWQrKyA9IE1JX1NUT1JFX0RXT1JEX0lN
TV9HRU40OwpAQCAtMTUyMiwxMiArMTUyMiwxMiBAQCBzdGF0aWMgaW50IHdyaXRlX3RvX3NjcmF0
Y2goc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5j
ZShvYmosIHZtLCBOVUxMKTsKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJZXJyID0gUFRSX0VSUih2
bWEpOwotCQlnb3RvIGVycl92bTsKKwkJZ290byBvdXRfdm07CiAJfQogCiAJZXJyID0gaTkxNV92
bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIgfCBQSU5fT0ZGU0VUX0ZJWEVEKTsKIAlpZiAoZXJy
KQotCQlnb3RvIGVycl92bTsKKwkJZ290byBvdXRfdm07CiAKIAllcnIgPSBjaGVja19zY3JhdGNo
KHZtLCBvZmZzZXQpOwogCWlmIChlcnIpCkBAIC0xNTUxLDIyICsxNTUxLDIwIEBAIHN0YXRpYyBp
bnQgd3JpdGVfdG9fc2NyYXRjaChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCWlmIChl
cnIpCiAJCWdvdG8gc2tpcF9yZXF1ZXN0OwogCi0JaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2Uo
JnZtYSwgMCk7CisJaTkxNV92bWFfdW5waW4odm1hKTsKIAogCWk5MTVfcmVxdWVzdF9hZGQocnEp
OwogCi0JaTkxNV92bV9wdXQodm0pOwotCXJldHVybiAwOwotCisJZ290byBvdXRfdm07CiBza2lw
X3JlcXVlc3Q6CiAJaTkxNV9yZXF1ZXN0X3NraXAocnEsIGVycik7CiBlcnJfcmVxdWVzdDoKIAlp
OTE1X3JlcXVlc3RfYWRkKHJxKTsKIGVycl91bnBpbjoKIAlpOTE1X3ZtYV91bnBpbih2bWEpOwot
ZXJyX3ZtOgorb3V0X3ZtOgogCWk5MTVfdm1fcHV0KHZtKTsKLWVycjoKK291dDoKIAlpOTE1X2dl
bV9vYmplY3RfcHV0KG9iaik7CiAJcmV0dXJuIGVycjsKIH0KQEAgLTE1OTQsNyArMTU5Miw3IEBA
IHN0YXRpYyBpbnQgcmVhZF9mcm9tX3NjcmF0Y2goc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eCwKIAljbWQgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKIAlp
ZiAoSVNfRVJSKGNtZCkpIHsKIAkJZXJyID0gUFRSX0VSUihjbWQpOwotCQlnb3RvIGVycjsKKwkJ
Z290byBvdXQ7CiAJfQogCiAJbWVtc2V0KGNtZCwgUE9JU09OX0lOVVNFLCBQQUdFX1NJWkUpOwpA
QCAtMTYyNiwxMiArMTYyNCwxMiBAQCBzdGF0aWMgaW50IHJlYWRfZnJvbV9zY3JhdGNoKHN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCB2
bSwgTlVMTCk7CiAJaWYgKElTX0VSUih2bWEpKSB7CiAJCWVyciA9IFBUUl9FUlIodm1hKTsKLQkJ
Z290byBlcnJfdm07CisJCWdvdG8gb3V0X3ZtOwogCX0KIAogCWVyciA9IGk5MTVfdm1hX3Bpbih2
bWEsIDAsIDAsIFBJTl9VU0VSIHwgUElOX09GRlNFVF9GSVhFRCk7CiAJaWYgKGVycikKLQkJZ290
byBlcnJfdm07CisJCWdvdG8gb3V0X3ZtOwogCiAJZXJyID0gY2hlY2tfc2NyYXRjaCh2bSwgb2Zm
c2V0KTsKIAlpZiAoZXJyKQpAQCAtMTY2NCwyOSArMTY2MiwyNyBAQCBzdGF0aWMgaW50IHJlYWRf
ZnJvbV9zY3JhdGNoKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJZXJyID0gaTkxNV9n
ZW1fb2JqZWN0X3NldF90b19jcHVfZG9tYWluKG9iaiwgZmFsc2UpOwogCWk5MTVfZ2VtX29iamVj
dF91bmxvY2sob2JqKTsKIAlpZiAoZXJyKQotCQlnb3RvIGVycl92bTsKKwkJZ290byBvdXRfdm07
CiAKIAljbWQgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKIAlp
ZiAoSVNfRVJSKGNtZCkpIHsKIAkJZXJyID0gUFRSX0VSUihjbWQpOwotCQlnb3RvIGVycl92bTsK
KwkJZ290byBvdXRfdm07CiAJfQogCiAJKnZhbHVlID0gY21kW3Jlc3VsdCAvIHNpemVvZigqY21k
KV07CiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOwotCWk5MTVfZ2VtX29iamVjdF9w
dXQob2JqKTsKLQotCXJldHVybiAwOwogCisJZ290byBvdXRfdm07CiBza2lwX3JlcXVlc3Q6CiAJ
aTkxNV9yZXF1ZXN0X3NraXAocnEsIGVycik7CiBlcnJfcmVxdWVzdDoKIAlpOTE1X3JlcXVlc3Rf
YWRkKHJxKTsKIGVycl91bnBpbjoKIAlpOTE1X3ZtYV91bnBpbih2bWEpOwotZXJyX3ZtOgorb3V0
X3ZtOgogCWk5MTVfdm1fcHV0KHZtKTsKLWVycjoKK291dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0
KG9iaik7CiAJcmV0dXJuIGVycjsKIH0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
