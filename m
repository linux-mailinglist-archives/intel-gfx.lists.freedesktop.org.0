Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEDC2C7E9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 15:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6063889C9C;
	Tue, 28 May 2019 13:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D88389C9C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 13:38:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16706665-1500050 
 for multiple; Tue, 28 May 2019 14:37:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 14:37:42 +0100
Message-Id: <20190528133750.12775-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Move object close under its own
 lock
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

VXNlIGk5MTVfZ2VtX29iamVjdF9sb2NrKCkgdG8gZ3VhcmQgdGhlIExVVCBhbmQgYWN0aXZlIHJl
ZmVyZW5jZSB0bwphbGxvdyB1cyB0byBicmVhayBmcmVlIG9mIHN0cnVjdF9tdXRleCBmb3IgaGFu
ZGxpbmcgR0VNX0NMT1NFLgoKVGVzdGNhc2U6IGlndC9nZW1fY2xvc2VfcmFjZQpUZXN0Y2FzZTog
aWd0L2dlbV9leGVjX3BhcmFsbGVsClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMgICB8IDc1ICsrKysrKysrKystLS0tLS0tLS0KIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaCB8IDEyICstLQogLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMjUgKysrKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgMzggKysrKysrLS0tLQogLi4uL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgIDEgLQogLi4uL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jIHwgIDEgLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdGltZWxpbmUuYyAgICAgICAgICB8IDEzICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdm1hLmMgICAgICAgICAgICAgICB8IDQyICsrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5oICAgICAgICAgICAgICAgfCAxNyArKy0tLQogLi4uL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgIHwgIDEgKwogMTMgZmlsZXMgY2hhbmdlZCwg
MTMxIGluc2VydGlvbnMoKyksIDEwMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCAwODcyMWVmNjJlNGUuLmZiMDNhMTk5MzJj
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC05
NSwyNCArOTUsNDAgQEAgdm9pZCBpOTE1X2x1dF9oYW5kbGVfZnJlZShzdHJ1Y3QgaTkxNV9sdXRf
aGFuZGxlICpsdXQpCiAKIHN0YXRpYyB2b2lkIGx1dF9jbG9zZShzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4KQogewotCXN0cnVjdCBpOTE1X2x1dF9oYW5kbGUgKmx1dCwgKmxuOwogCXN0cnVj
dCByYWRpeF90cmVlX2l0ZXIgaXRlcjsKIAl2b2lkIF9fcmN1ICoqc2xvdDsKIAotCWxpc3RfZm9y
X2VhY2hfZW50cnlfc2FmZShsdXQsIGxuLCAmY3R4LT5oYW5kbGVzX2xpc3QsIGN0eF9saW5rKSB7
Ci0JCWxpc3RfZGVsKCZsdXQtPm9ial9saW5rKTsKLQkJaTkxNV9sdXRfaGFuZGxlX2ZyZWUobHV0
KTsKLQl9Ci0JSU5JVF9MSVNUX0hFQUQoJmN0eC0+aGFuZGxlc19saXN0KTsKKwlsb2NrZGVwX2Fz
c2VydF9oZWxkKCZjdHgtPm11dGV4KTsKIAogCXJjdV9yZWFkX2xvY2soKTsKIAlyYWRpeF90cmVl
X2Zvcl9lYWNoX3Nsb3Qoc2xvdCwgJmN0eC0+aGFuZGxlc192bWEsICZpdGVyLCAwKSB7CiAJCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hID0gcmN1X2RlcmVmZXJlbmNlX3Jhdygqc2xvdCk7CisJCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKKwkJc3RydWN0IGk5MTVfbHV0
X2hhbmRsZSAqbHV0OworCisJCXJjdV9yZWFkX3VubG9jaygpOworCQlpOTE1X2dlbV9vYmplY3Rf
bG9jayhvYmopOworCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGx1dCwgJm9iai0+bHV0X2xpc3QsIG9i
al9saW5rKSB7CisJCQlpZiAobHV0LT5jdHggIT0gY3R4KQorCQkJCWNvbnRpbnVlOwogCi0JCXJh
ZGl4X3RyZWVfaXRlcl9kZWxldGUoJmN0eC0+aGFuZGxlc192bWEsICZpdGVyLCBzbG90KTsKKwkJ
CWlmIChsdXQtPmhhbmRsZSAhPSBpdGVyLmluZGV4KQorCQkJCWNvbnRpbnVlOwogCi0JCXZtYS0+
b3Blbl9jb3VudC0tOwotCQlpOTE1X3ZtYV9wdXQodm1hKTsKKwkJCWxpc3RfZGVsKCZsdXQtPm9i
al9saW5rKTsKKwkJCWJyZWFrOworCQl9CisJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsK
KwkJcmN1X3JlYWRfbG9jaygpOworCisJCWlmICgmbHV0LT5vYmpfbGluayAhPSAmb2JqLT5sdXRf
bGlzdCkgeworCQkJaTkxNV9sdXRfaGFuZGxlX2ZyZWUobHV0KTsKKwkJCXJhZGl4X3RyZWVfaXRl
cl9kZWxldGUoJmN0eC0+aGFuZGxlc192bWEsICZpdGVyLCBzbG90KTsKKwkJCWlmIChhdG9taWNf
ZGVjX2FuZF90ZXN0KCZ2bWEtPm9wZW5fY291bnQpICYmCisJCQkgICAgIWk5MTVfdm1hX2lzX2dn
dHQodm1hKSkKKwkJCQlpOTE1X3ZtYV9jbG9zZSh2bWEpOworCQkJaTkxNV9nZW1fb2JqZWN0X3B1
dChvYmopOworCQl9CiAJfQogCXJjdV9yZWFkX3VubG9jaygpOwogfQpAQCAtMjUwLDE1ICsyNjYs
OSBAQCBzdGF0aWMgdm9pZCBmcmVlX2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmUp
CiAJX19mcmVlX2VuZ2luZXMoZSwgZS0+bnVtX2VuZ2luZXMpOwogfQogCi1zdGF0aWMgdm9pZCBm
cmVlX2VuZ2luZXNfcmN1KHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQorc3RhdGljIHZvaWQgZnJl
ZV9lbmdpbmVzX3JjdShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkKIHsKLQlzdHJ1Y3QgaTkxNV9nZW1f
ZW5naW5lcyAqZSA9Ci0JCWNvbnRhaW5lcl9vZih3cmssIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVz
LCByY3Uud29yayk7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlLT5pOTE1Owot
Ci0JbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0JZnJlZV9lbmdpbmVzKGUp
OwotCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJZnJlZV9lbmdpbmVz
KGNvbnRhaW5lcl9vZihyY3UsIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzLCByY3UpKTsKIH0KIAog
c3RhdGljIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzICpkZWZhdWx0X2VuZ2luZXMoc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eCkKQEAgLTI3MSw3ICsyODEsNyBAQCBzdGF0aWMgc3RydWN0IGk5
MTVfZ2VtX2VuZ2luZXMgKmRlZmF1bHRfZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAq
Y3R4KQogCWlmICghZSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQllLT5pOTE1ID0g
Y3R4LT5pOTE1OworCWluaXRfcmN1X2hlYWQoJmUtPnJjdSk7CiAJZm9yX2VhY2hfZW5naW5lKGVu
Z2luZSwgY3R4LT5pOTE1LCBpZCkgewogCQlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CiAKQEAg
LTM1OSw3ICszNjksMTAgQEAgdm9pZCBpOTE1X2dlbV9jb250ZXh0X3JlbGVhc2Uoc3RydWN0IGty
ZWYgKnJlZikKIAogc3RhdGljIHZvaWQgY29udGV4dF9jbG9zZShzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4KQogeworCW11dGV4X2xvY2soJmN0eC0+bXV0ZXgpOworCiAJaTkxNV9nZW1fY29u
dGV4dF9zZXRfY2xvc2VkKGN0eCk7CisJY3R4LT5maWxlX3ByaXYgPSBFUlJfUFRSKC1FQkFERik7
CiAKIAkvKgogCSAqIFRoaXMgY29udGV4dCB3aWxsIG5ldmVyIGFnYWluIGJlIGFzc2luZ2VkIHRv
IEhXLCBzbyB3ZSBjYW4KQEAgLTM3NCw3ICszODcsNyBAQCBzdGF0aWMgdm9pZCBjb250ZXh0X2Ns
b3NlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCiAJICovCiAJbHV0X2Nsb3NlKGN0eCk7
CiAKLQljdHgtPmZpbGVfcHJpdiA9IEVSUl9QVFIoLUVCQURGKTsKKwltdXRleF91bmxvY2soJmN0
eC0+bXV0ZXgpOwogCWk5MTVfZ2VtX2NvbnRleHRfcHV0KGN0eCk7CiB9CiAKQEAgLTQyOSw3ICs0
NDIsNiBAQCBfX2NyZWF0ZV9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAlSQ1VfSU5JVF9QT0lOVEVSKGN0eC0+ZW5naW5lcywgZSk7CiAKIAlJTklUX1JBRElYX1RS
RUUoJmN0eC0+aGFuZGxlc192bWEsIEdGUF9LRVJORUwpOwotCUlOSVRfTElTVF9IRUFEKCZjdHgt
PmhhbmRsZXNfbGlzdCk7CiAJSU5JVF9MSVNUX0hFQUQoJmN0eC0+aHdfaWRfbGluayk7CiAKIAkv
KiBOQjogTWFyayBhbGwgc2xpY2VzIGFzIG5lZWRpbmcgYSByZW1hcCBzbyB0aGF0IHdoZW4gdGhl
IGNvbnRleHQgZmlyc3QKQEAgLTc3Miw5ICs3ODQsNyBAQCBpbnQgaTkxNV9nZW1fY29udGV4dF9v
cGVuKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCXJldHVybiAwOwogCiBlcnJfY3R4
OgotCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWNvbnRleHRfY2xvc2Uo
Y3R4KTsKLQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogZXJyOgogCWlk
cl9kZXN0cm95KCZmaWxlX3ByaXYtPnZtX2lkcik7CiAJaWRyX2Rlc3Ryb3koJmZpbGVfcHJpdi0+
Y29udGV4dF9pZHIpOwpAQCAtNzg3LDggKzc5Nyw2IEBAIHZvaWQgaTkxNV9nZW1fY29udGV4dF9j
bG9zZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJp
dmF0ZSAqZmlsZV9wcml2ID0gZmlsZS0+ZHJpdmVyX3ByaXY7CiAKLQlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZmaWxlX3ByaXYtPmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKLQogCWlkcl9mb3Jf
ZWFjaCgmZmlsZV9wcml2LT5jb250ZXh0X2lkciwgY29udGV4dF9pZHJfY2xlYW51cCwgTlVMTCk7
CiAJaWRyX2Rlc3Ryb3koJmZpbGVfcHJpdi0+Y29udGV4dF9pZHIpOwogCW11dGV4X2Rlc3Ryb3ko
JmZpbGVfcHJpdi0+Y29udGV4dF9pZHJfbG9jayk7CkBAIC0xMDkzLDcgKzExMDEsOSBAQCBzdGF0
aWMgaW50IHNldF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYs
CiAJCWdvdG8gdW5sb2NrOwogCiAJLyogVGVhcmRvd24gdGhlIGV4aXN0aW5nIG9iajp2bWEgY2Fj
aGUsIGl0IHdpbGwgaGF2ZSB0byBiZSByZWJ1aWx0LiAqLworCW11dGV4X2xvY2soJmN0eC0+bXV0
ZXgpOwogCWx1dF9jbG9zZShjdHgpOworCW11dGV4X3VubG9jaygmY3R4LT5tdXRleCk7CiAKIAlv
bGQgPSBfX3NldF9wcGd0dChjdHgsIHBwZ3R0KTsKIApAQCAtMTYxMiw3ICsxNjIyLDcgQEAgc2V0
X2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlpZiAoIXNldC5lbmdpbmVz
KQogCQlyZXR1cm4gLUVOT01FTTsKIAotCXNldC5lbmdpbmVzLT5pOTE1ID0gY3R4LT5pOTE1Owor
CWluaXRfcmN1X2hlYWQoJnNldC5lbmdpbmVzLT5yY3UpOwogCWZvciAobiA9IDA7IG4gPCBudW1f
ZW5naW5lczsgbisrKSB7CiAJCXN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSBjaTsK
IAkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwpAQCAtMTY2Niw4ICsxNjc2LDcgQEAg
c2V0X2VuZ2luZXMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlyY3Vfc3dhcF9wcm90
ZWN0ZWQoY3R4LT5lbmdpbmVzLCBzZXQuZW5naW5lcywgMSk7CiAJbXV0ZXhfdW5sb2NrKCZjdHgt
PmVuZ2luZXNfbXV0ZXgpOwogCi0JSU5JVF9SQ1VfV09SSygmc2V0LmVuZ2luZXMtPnJjdSwgZnJl
ZV9lbmdpbmVzX3JjdSk7Ci0JcXVldWVfcmN1X3dvcmsoc3lzdGVtX3dxLCAmc2V0LmVuZ2luZXMt
PnJjdSk7CisJY2FsbF9yY3UoJnNldC5lbmdpbmVzLT5yY3UsIGZyZWVfZW5naW5lc19yY3UpOwog
CiAJcmV0dXJuIDA7CiB9CkBAIC0xNjgyLDcgKzE2OTEsNyBAQCBfX2NvcHlfZW5naW5lcyhzdHJ1
Y3QgaTkxNV9nZW1fZW5naW5lcyAqZSkKIAlpZiAoIWNvcHkpCiAJCXJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOwogCi0JY29weS0+aTkxNSA9IGUtPmk5MTU7CisJaW5pdF9yY3VfaGVhZCgmY29weS0+
cmN1KTsKIAlmb3IgKG4gPSAwOyBuIDwgZS0+bnVtX2VuZ2luZXM7IG4rKykgewogCQlpZiAoZS0+
ZW5naW5lc1tuXSkKIAkJCWNvcHktPmVuZ2luZXNbbl0gPSBpbnRlbF9jb250ZXh0X2dldChlLT5l
bmdpbmVzW25dKTsKQEAgLTE3NjksOCArMTc3OCw3IEBAIGdldF9lbmdpbmVzKHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgsCiAJYXJncy0+c2l6ZSA9IHNpemU7CiAKIGVycl9mcmVlOgotCUlO
SVRfUkNVX1dPUksoJmUtPnJjdSwgZnJlZV9lbmdpbmVzX3JjdSk7Ci0JcXVldWVfcmN1X3dvcmso
c3lzdGVtX3dxLCAmZS0+cmN1KTsKKwlmcmVlX2VuZ2luZXMoZSk7CiAJcmV0dXJuIGVycjsKIH0K
IApAQCAtMTg5MSw3ICsxODk5LDcgQEAgc3RhdGljIGludCBjbG9uZV9lbmdpbmVzKHN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICpkc3QsCiAJaWYgKCFjbG9uZSkKIAkJZ290byBlcnJfdW5sb2NrOwog
Ci0JY2xvbmUtPmk5MTUgPSBkc3QtPmk5MTU7CisJaW5pdF9yY3VfaGVhZCgmY2xvbmUtPnJjdSk7
CiAJZm9yIChuID0gMDsgbiA8IGUtPm51bV9lbmdpbmVzOyBuKyspIHsKIAkJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lOwogCkBAIC0yMTYzLDkgKzIxNzEsNyBAQCBpbnQgaTkxNV9nZW1f
Y29udGV4dF9jcmVhdGVfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwK
IAlyZXR1cm4gMDsKIAogZXJyX2N0eDoKLQltdXRleF9sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7
CiAJY29udGV4dF9jbG9zZShleHRfZGF0YS5jdHgpOwotCW11dGV4X3VubG9jaygmZGV2LT5zdHJ1
Y3RfbXV0ZXgpOwogCXJldHVybiByZXQ7CiB9CiAKQEAgLTIxOTAsMTAgKzIxOTYsNyBAQCBpbnQg
aTkxNV9nZW1fY29udGV4dF9kZXN0cm95X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCiAJaWYgKCFjdHgpCiAJCXJldHVybiAtRU5PRU5UOwogCi0JbXV0ZXhfbG9jaygm
ZGV2LT5zdHJ1Y3RfbXV0ZXgpOwogCWNvbnRleHRfY2xvc2UoY3R4KTsKLQltdXRleF91bmxvY2so
JmRldi0+c3RydWN0X211dGV4KTsKLQogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAppbmRleCBmYjk2NWRlZDI1
MDguLjNkYjc0NDhiOTczMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHRfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dF90eXBlcy5oCkBAIC0zMCw4ICszMCw3IEBAIHN0cnVjdCBpOTE1X3RpbWVs
aW5lOwogc3RydWN0IGludGVsX3Jpbmc7CiAKIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzIHsKLQlz
dHJ1Y3QgcmN1X3dvcmsgcmN1OwotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1OworCXN0
cnVjdCByY3VfaGVhZCByY3U7CiAJdW5zaWduZWQgaW50IG51bV9lbmdpbmVzOwogCXN0cnVjdCBp
bnRlbF9jb250ZXh0ICplbmdpbmVzW107CiB9OwpAQCAtMTkyLDE3ICsxOTEsMTIgQEAgc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgewogCS8qKiByZW1hcF9zbGljZTogQml0bWFzayBvZiBjYWNoZSBs
aW5lcyB0aGF0IG5lZWQgcmVtYXBwaW5nICovCiAJdTggcmVtYXBfc2xpY2U7CiAKLQkvKiogaGFu
ZGxlc192bWE6IHJidHJlZSB0byBsb29rIHVwIG91ciBjb250ZXh0IHNwZWNpZmljIG9iai92bWEg
Zm9yCisJLyoqCisJICogaGFuZGxlc192bWE6IHJidHJlZSB0byBsb29rIHVwIG91ciBjb250ZXh0
IHNwZWNpZmljIG9iai92bWEgZm9yCiAJICogdGhlIHVzZXIgaGFuZGxlLiAodXNlciBoYW5kbGVz
IGFyZSBwZXIgZmQsIGJ1dCB0aGUgYmluZGluZyBpcwogCSAqIHBlciB2bSwgd2hpY2ggbWF5IGJl
IG9uZSBwZXIgY29udGV4dCBvciBzaGFyZWQgd2l0aCB0aGUgZ2xvYmFsIEdUVCkKIAkgKi8KIAlz
dHJ1Y3QgcmFkaXhfdHJlZV9yb290IGhhbmRsZXNfdm1hOwotCi0JLyoqIGhhbmRsZXNfbGlzdDog
cmV2ZXJzZSBsaXN0IG9mIGFsbCB0aGUgcmJ0cmVlIGVudHJpZXMgaW4gdXNlIGZvcgotCSAqIHRo
aXMgY29udGV4dCwgd2hpY2ggYWxsb3dzIHVzIHRvIGZyZWUgYWxsIHRoZSBhbGxvY2F0aW9ucyBv
bgotCSAqIGNvbnRleHQgY2xvc2UuCi0JICovCi0Jc3RydWN0IGxpc3RfaGVhZCBoYW5kbGVzX2xp
c3Q7CiB9OwogCiAjZW5kaWYgLyogX19JOTE1X0dFTV9DT05URVhUX1RZUEVTX0hfXyAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggZWQ1
MjJmZGZiZTdmLi4yYzRmMzIyOTM2MWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtODAxLDkgKzgwMSw2IEBAIHN0YXRpYyBpbnQgZWJf
bG9va3VwX3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJdW5zaWduZWQgaW50IGks
IGJhdGNoOwogCWludCBlcnI7CiAKLQlpZiAodW5saWtlbHkoaTkxNV9nZW1fY29udGV4dF9pc19j
bG9zZWQoZWItPmdlbV9jb250ZXh0KSkpCi0JCXJldHVybiAtRU5PRU5UOwotCiAJaWYgKHVubGlr
ZWx5KGk5MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGViLT5nZW1fY29udGV4dCkpKQogCQlyZXR1
cm4gLUVJTzsKIApAQCAtODEyLDYgKzgwOSwxMiBAQCBzdGF0aWMgaW50IGViX2xvb2t1cF92bWFz
KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCiAJYmF0Y2ggPSBlYl9iYXRjaF9pbmRleChl
Yik7CiAKKwltdXRleF9sb2NrKCZlYi0+Z2VtX2NvbnRleHQtPm11dGV4KTsKKwlpZiAodW5saWtl
bHkoaTkxNV9nZW1fY29udGV4dF9pc19jbG9zZWQoZWItPmdlbV9jb250ZXh0KSkpIHsKKwkJZXJy
ID0gLUVOT0VOVDsKKwkJZ290byBlcnJfY3R4OworCX0KKwogCWZvciAoaSA9IDA7IGkgPCBlYi0+
YnVmZmVyX2NvdW50OyBpKyspIHsKIAkJdTMyIGhhbmRsZSA9IGViLT5leGVjW2ldLmhhbmRsZTsK
IAkJc3RydWN0IGk5MTVfbHV0X2hhbmRsZSAqbHV0OwpAQCAtODQ1LDEzICs4NDgsMTUgQEAgc3Rh
dGljIGludCBlYl9sb29rdXBfdm1hcyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAkJCWdv
dG8gZXJyX29iajsKIAkJfQogCi0JCS8qIHRyYW5zZmVyIHJlZiB0byBjdHggKi8KLQkJaWYgKCF2
bWEtPm9wZW5fY291bnQrKykKKwkJLyogdHJhbnNmZXIgcmVmIHRvIGx1dCAqLworCQlpZiAoIWF0
b21pY19mZXRjaF9pbmMoJnZtYS0+b3Blbl9jb3VudCkpCiAJCQlpOTE1X3ZtYV9yZW9wZW4odm1h
KTsKLQkJbGlzdF9hZGQoJmx1dC0+b2JqX2xpbmssICZvYmotPmx1dF9saXN0KTsKLQkJbGlzdF9h
ZGQoJmx1dC0+Y3R4X2xpbmssICZlYi0+Z2VtX2NvbnRleHQtPmhhbmRsZXNfbGlzdCk7Ci0JCWx1
dC0+Y3R4ID0gZWItPmdlbV9jb250ZXh0OwogCQlsdXQtPmhhbmRsZSA9IGhhbmRsZTsKKwkJbHV0
LT5jdHggPSBlYi0+Z2VtX2NvbnRleHQ7CisKKwkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsK
KwkJbGlzdF9hZGQoJmx1dC0+b2JqX2xpbmssICZvYmotPmx1dF9saXN0KTsKKwkJaTkxNV9nZW1f
b2JqZWN0X3VubG9jayhvYmopOwogCiBhZGRfdm1hOgogCQllcnIgPSBlYl9hZGRfdm1hKGViLCBp
LCBiYXRjaCwgdm1hKTsKQEAgLTg2NCw2ICs4NjksOCBAQCBzdGF0aWMgaW50IGViX2xvb2t1cF92
bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCQkJICAgZWJfdm1hX21pc3BsYWNlZCgm
ZWItPmV4ZWNbaV0sIHZtYSwgZWItPmZsYWdzW2ldKSk7CiAJfQogCisJbXV0ZXhfdW5sb2NrKCZl
Yi0+Z2VtX2NvbnRleHQtPm11dGV4KTsKKwogCWViLT5hcmdzLT5mbGFncyB8PSBfX0VYRUNfVkFM
SURBVEVEOwogCXJldHVybiBlYl9yZXNlcnZlKGViKTsKIApAQCAtODcxLDYgKzg3OCw4IEBAIHN0
YXRpYyBpbnQgZWJfbG9va3VwX3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJaTkx
NV9nZW1fb2JqZWN0X3B1dChvYmopOwogZXJyX3ZtYToKIAllYi0+dm1hW2ldID0gTlVMTDsKK2Vy
cl9jdHg6CisJbXV0ZXhfdW5sb2NrKCZlYi0+Z2VtX2NvbnRleHQtPm11dGV4KTsKIAlyZXR1cm4g
ZXJyOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5k
ZXggZjA2NDg3NmYxMjE0Li5lNWU3MDdiMWE3M2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTEyNiwzOSArMTI2LDQ3IEBAIHZvaWQgaTkxNV9nZW1f
b2JqZWN0X3NldF9jYWNoZV9jb2hlcmVuY3koc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKIAogdm9pZCBpOTE1X2dlbV9jbG9zZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpn
ZW0sIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoZ2VtLT5kZXYpOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmogPSB0b19pbnRlbF9ibyhnZW0pOwogCXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZw
cml2ID0gZmlsZS0+ZHJpdmVyX3ByaXY7CiAJc3RydWN0IGk5MTVfbHV0X2hhbmRsZSAqbHV0LCAq
bG47CisJTElTVF9IRUFEKGNsb3NlKTsKIAotCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3Rf
bXV0ZXgpOwotCisJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5X3NhZmUobHV0LCBsbiwgJm9iai0+bHV0X2xpc3QsIG9ial9saW5rKSB7CiAJCXN0cnVjdCBp
OTE1X2dlbV9jb250ZXh0ICpjdHggPSBsdXQtPmN0eDsKLQkJc3RydWN0IGk5MTVfdm1hICp2bWE7
CiAKLQkJR0VNX0JVR19PTihjdHgtPmZpbGVfcHJpdiA9PSBFUlJfUFRSKC1FQkFERikpOwogCQlp
ZiAoY3R4LT5maWxlX3ByaXYgIT0gZnByaXYpCiAJCQljb250aW51ZTsKIAotCQl2bWEgPSByYWRp
eF90cmVlX2RlbGV0ZSgmY3R4LT5oYW5kbGVzX3ZtYSwgbHV0LT5oYW5kbGUpOwotCQlHRU1fQlVH
X09OKHZtYS0+b2JqICE9IG9iaik7CisJCWk5MTVfZ2VtX2NvbnRleHRfZ2V0KGN0eCk7CisJCWxp
c3RfbW92ZSgmbHV0LT5vYmpfbGluaywgJmNsb3NlKTsKKwl9CisJaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayhvYmopOworCisJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGx1dCwgbG4sICZjbG9zZSwg
b2JqX2xpbmspIHsKKwkJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGx1dC0+Y3R4Owor
CQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAotCQkvKiBXZSBhbGxvdyB0aGUgcHJvY2VzcyB0byBo
YXZlIG11bHRpcGxlIGhhbmRsZXMgdG8gdGhlIHNhbWUKKwkJLyoKKwkJICogV2UgYWxsb3cgdGhl
IHByb2Nlc3MgdG8gaGF2ZSBtdWx0aXBsZSBoYW5kbGVzIHRvIHRoZSBzYW1lCiAJCSAqIHZtYSwg
aW4gdGhlIHNhbWUgZmQgbmFtZXNwYWNlLCBieSB2aXJ0dWUgb2YgZmxpbmsvb3Blbi4KIAkJICov
Ci0JCUdFTV9CVUdfT04oIXZtYS0+b3Blbl9jb3VudCk7Ci0JCWlmICghLS12bWEtPm9wZW5fY291
bnQgJiYgIWk5MTVfdm1hX2lzX2dndHQodm1hKSkKLQkJCWk5MTVfdm1hX2Nsb3NlKHZtYSk7CiAK
LQkJbGlzdF9kZWwoJmx1dC0+b2JqX2xpbmspOwotCQlsaXN0X2RlbCgmbHV0LT5jdHhfbGluayk7
CisJCW11dGV4X2xvY2soJmN0eC0+bXV0ZXgpOworCQl2bWEgPSByYWRpeF90cmVlX2RlbGV0ZSgm
Y3R4LT5oYW5kbGVzX3ZtYSwgbHV0LT5oYW5kbGUpOworCQlpZiAodm1hKSB7CisJCQlHRU1fQlVH
X09OKHZtYS0+b2JqICE9IG9iaik7CisJCQlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmdm1hLT5v
cGVuX2NvdW50KSk7CisJCQlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmdm1hLT5vcGVuX2NvdW50
KSAmJgorCQkJICAgICFpOTE1X3ZtYV9pc19nZ3R0KHZtYSkpCisJCQkJaTkxNV92bWFfY2xvc2Uo
dm1hKTsKKwkJfQorCQltdXRleF91bmxvY2soJmN0eC0+bXV0ZXgpOwogCisJCWk5MTVfZ2VtX2Nv
bnRleHRfcHV0KGx1dC0+Y3R4KTsKIAkJaTkxNV9sdXRfaGFuZGxlX2ZyZWUobHV0KTsKIAkJaTkx
NV9nZW1fb2JqZWN0X3B1dChvYmopOwogCX0KLQotCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CiB9CiAKIHN0YXRpYyBib29sIGRpc2NhcmRfYmFja2luZ19zdG9yYWdlKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKaW5kZXggNjdhOTkyZDZlZTBjLi45YzE2MWJh
NzM1NTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
X3R5cGVzLmgKQEAgLTI0LDcgKzI0LDYgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Q7CiAg
Ki8KIHN0cnVjdCBpOTE1X2x1dF9oYW5kbGUgewogCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xpbms7
Ci0Jc3RydWN0IGxpc3RfaGVhZCBjdHhfbGluazsKIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAq
Y3R4OwogCXUzMiBoYW5kbGU7CiB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9z
ZWxmdGVzdHMvbW9ja19jb250ZXh0LmMKaW5kZXggNjhkNTBkYTAzNWU2Li42NTc4ZjJmNmMzZjgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19jb250
ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRl
eHQuYwpAQCAtMzAsNyArMzAsNiBAQCBtb2NrX2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCiAJUkNVX0lOSVRfUE9JTlRFUihjdHgtPmVuZ2luZXMsIGUpOwogCiAJSU5JVF9S
QURJWF9UUkVFKCZjdHgtPmhhbmRsZXNfdm1hLCBHRlBfS0VSTkVMKTsKLQlJTklUX0xJU1RfSEVB
RCgmY3R4LT5oYW5kbGVzX2xpc3QpOwogCUlOSVRfTElTVF9IRUFEKCZjdHgtPmh3X2lkX2xpbmsp
OwogCW11dGV4X2luaXQoJmN0eC0+bXV0ZXgpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRl
eCA0ZWI4ZjZhMTgxYzEuLjM3N2JjOTZhOTk1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC0yMDAyLDEwICsyMDAyLDEyIEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAkJfSB0aW1l
bGluZXM7CiAKIAkJc3RydWN0IGxpc3RfaGVhZCBhY3RpdmVfcmluZ3M7Ci0JCXN0cnVjdCBsaXN0
X2hlYWQgY2xvc2VkX3ZtYTsKIAogCQlzdHJ1Y3QgaW50ZWxfd2FrZXJlZiB3YWtlcmVmOwogCisJ
CXN0cnVjdCBsaXN0X2hlYWQgY2xvc2VkX3ZtYTsKKwkJc3BpbmxvY2tfdCBjbG9zZWRfbG9jazsg
LyogZ3VhcmRzIHRoZSBsaXN0IG9mIGNsb3NlZF92bWEgKi8KKwogCQkvKioKIAkJICogSXMgdGhl
IEdQVSBjdXJyZW50bHkgY29uc2lkZXJlZCBpZGxlLCBvciBidXN5IGV4ZWN1dGluZwogCQkgKiB1
c2Vyc3BhY2UgcmVxdWVzdHM/IFdoaWxzdCBpZGxlLCB3ZSBhbGxvdyBydW50aW1lIHBvd2VyCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBlNWFhZmJlYjFkMTkuLjhkY2NmMWRmNWNlNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xNzYwLDYgKzE3NjAsNyBAQCBpbnQgaTkxNV9nZW1f
aW5pdF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlJTklUX0xJ
U1RfSEVBRCgmZGV2X3ByaXYtPmd0LmFjdGl2ZV9yaW5ncyk7CiAJSU5JVF9MSVNUX0hFQUQoJmRl
dl9wcml2LT5ndC5jbG9zZWRfdm1hKTsKKwlzcGluX2xvY2tfaW5pdCgmZGV2X3ByaXYtPmd0LmNs
b3NlZF9sb2NrKTsKIAogCWk5MTVfZ2VtX2luaXRfX21tKGRldl9wcml2KTsKIAlpOTE1X2dlbV9p
bml0X19wbShkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDc0
OTZjY2UwZDc5OC4uODVkOGEzYjJkOWUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YwpAQCAtMTk4MCw2ICsxOTgwLDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqcGRfdm1hX2Ny
ZWF0ZShzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQsIGludCBzaXplKQogCXZtYS0+Z2d0dF92
aWV3LnR5cGUgPSBJOTE1X0dHVFRfVklFV19ST1RBVEVEOyAvKiBwcmV2ZW50IGZlbmNpbmcgKi8K
IAogCUlOSVRfTElTVF9IRUFEKCZ2bWEtPm9ial9saW5rKTsKKwlJTklUX0xJU1RfSEVBRCgmdm1h
LT5jbG9zZWRfbGluayk7CiAKIAltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7CiAJbGlzdF9h
ZGQoJnZtYS0+dm1fbGluaywgJnZtYS0+dm0tPnVuYm91bmRfbGlzdCk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3RpbWVsaW5lLmMKaW5kZXggNWZiZWEwODkyZjMzLi4wMDBlMWE5YjY3NTAgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMKQEAgLTYxLDcgKzYxLDcgQEAgaHdzcF9hbGxv
YyhzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAqY2FjaGVsaW5l
KQogCiAJQlVJTERfQlVHX09OKEJJVFNfUEVSX1RZUEUodTY0KSAqIENBQ0hFTElORV9CWVRFUyA+
IFBBR0VfU0laRSk7CiAKLQlzcGluX2xvY2soJmd0LT5od3NwX2xvY2spOworCXNwaW5fbG9ja19p
cnEoJmd0LT5od3NwX2xvY2spOwogCiAJLyogaHdzcF9mcmVlX2xpc3Qgb25seSBjb250YWlucyBI
V1NQIHRoYXQgaGF2ZSBhdmFpbGFibGUgY2FjaGVsaW5lcyAqLwogCWh3c3AgPSBsaXN0X2ZpcnN0
X2VudHJ5X29yX251bGwoJmd0LT5od3NwX2ZyZWVfbGlzdCwKQEAgLTY5LDcgKzY5LDcgQEAgaHdz
cF9hbGxvYyhzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAqY2Fj
aGVsaW5lKQogCWlmICghaHdzcCkgewogCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAotCQlzcGlu
X3VubG9jaygmZ3QtPmh3c3BfbG9jayk7CisJCXNwaW5fdW5sb2NrX2lycSgmZ3QtPmh3c3BfbG9j
ayk7CiAKIAkJaHdzcCA9IGttYWxsb2Moc2l6ZW9mKCpod3NwKSwgR0ZQX0tFUk5FTCk7CiAJCWlm
ICghaHdzcCkKQEAgLTg2LDcgKzg2LDcgQEAgaHdzcF9hbGxvYyhzdHJ1Y3QgaTkxNV90aW1lbGlu
ZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAqY2FjaGVsaW5lKQogCQlod3NwLT5mcmVlX2JpdG1h
cCA9IH4wdWxsOwogCQlod3NwLT5ndCA9IGd0OwogCi0JCXNwaW5fbG9jaygmZ3QtPmh3c3BfbG9j
ayk7CisJCXNwaW5fbG9ja19pcnEoJmd0LT5od3NwX2xvY2spOwogCQlsaXN0X2FkZCgmaHdzcC0+
ZnJlZV9saW5rLCAmZ3QtPmh3c3BfZnJlZV9saXN0KTsKIAl9CiAKQEAgLTk2LDcgKzk2LDcgQEAg
aHdzcF9hbGxvYyhzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAq
Y2FjaGVsaW5lKQogCWlmICghaHdzcC0+ZnJlZV9iaXRtYXApCiAJCWxpc3RfZGVsKCZod3NwLT5m
cmVlX2xpbmspOwogCi0Jc3Bpbl91bmxvY2soJmd0LT5od3NwX2xvY2spOworCXNwaW5fdW5sb2Nr
X2lycSgmZ3QtPmh3c3BfbG9jayk7CiAKIAlHRU1fQlVHX09OKGh3c3AtPnZtYS0+cHJpdmF0ZSAh
PSBod3NwKTsKIAlyZXR1cm4gaHdzcC0+dm1hOwpAQCAtMTA1LDggKzEwNSw5IEBAIGh3c3BfYWxs
b2Moc3RydWN0IGk5MTVfdGltZWxpbmUgKnRpbWVsaW5lLCB1bnNpZ25lZCBpbnQgKmNhY2hlbGlu
ZSkKIHN0YXRpYyB2b2lkIF9faWRsZV9od3NwX2ZyZWUoc3RydWN0IGk5MTVfdGltZWxpbmVfaHdz
cCAqaHdzcCwgaW50IGNhY2hlbGluZSkKIHsKIAlzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgKmd0
ID0gaHdzcC0+Z3Q7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKIAotCXNwaW5fbG9jaygmZ3QtPmh3
c3BfbG9jayk7CisJc3Bpbl9sb2NrX2lycXNhdmUoJmd0LT5od3NwX2xvY2ssIGZsYWdzKTsKIAog
CS8qIEFzIGEgY2FjaGVsaW5lIGJlY29tZXMgYXZhaWxhYmxlLCBwdWJsaXNoIHRoZSBIV1NQIG9u
IHRoZSBmcmVlbGlzdCAqLwogCWlmICghaHdzcC0+ZnJlZV9iaXRtYXApCkBAIC0xMjIsNyArMTIz
LDcgQEAgc3RhdGljIHZvaWQgX19pZGxlX2h3c3BfZnJlZShzdHJ1Y3QgaTkxNV90aW1lbGluZV9o
d3NwICpod3NwLCBpbnQgY2FjaGVsaW5lKQogCQlrZnJlZShod3NwKTsKIAl9CiAKLQlzcGluX3Vu
bG9jaygmZ3QtPmh3c3BfbG9jayk7CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZ3QtPmh3c3Bf
bG9jaywgZmxhZ3MpOwogfQogCiBzdGF0aWMgdm9pZCBfX2lkbGVfY2FjaGVsaW5lX2ZyZWUoc3Ry
dWN0IGk5MTVfdGltZWxpbmVfY2FjaGVsaW5lICpjbCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmlu
ZGV4IDU5YTJmNmFmNjEwMy4uOThlZmM2YjU0MzQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMK
QEAgLTE0MCw2ICsxNDAsOCBAQCB2bWFfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCiAJdm1hLT5zaXplID0gb2JqLT5iYXNlLnNpemU7CiAJdm1hLT5kaXNwbGF5X2FsaWdu
bWVudCA9IEk5MTVfR1RUX01JTl9BTElHTk1FTlQ7CiAKKwlJTklUX0xJU1RfSEVBRCgmdm1hLT5j
bG9zZWRfbGluayk7CisKIAlpZiAodmlldyAmJiB2aWV3LT50eXBlICE9IEk5MTVfR0dUVF9WSUVX
X05PUk1BTCkgewogCQl2bWEtPmdndHRfdmlldyA9ICp2aWV3OwogCQlpZiAodmlldy0+dHlwZSA9
PSBJOTE1X0dHVFRfVklFV19QQVJUSUFMKSB7CkBAIC03NzgsMTAgKzc4MCwxMCBAQCBpbnQgX19p
OTE1X3ZtYV9kb19waW4oc3RydWN0IGk5MTVfdm1hICp2bWEsCiAKIHZvaWQgaTkxNV92bWFfY2xv
c2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0JbG9ja2RlcF9hc3NlcnRfaGVsZCgmdm1hLT52
bS0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB2bWEtPnZtLT5pOTE1OworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKIAlHRU1fQlVHX09O
KGk5MTVfdm1hX2lzX2Nsb3NlZCh2bWEpKTsKLQl2bWEtPmZsYWdzIHw9IEk5MTVfVk1BX0NMT1NF
RDsKIAogCS8qCiAJICogV2UgZGVmZXIgYWN0dWFsbHkgY2xvc2luZywgdW5iaW5kaW5nIGFuZCBk
ZXN0cm95aW5nIHRoZSBWTUEgdW50aWwKQEAgLTc5NSwxNyArNzk3LDI2IEBAIHZvaWQgaTkxNV92
bWFfY2xvc2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJICogY2F1c2luZyB1cyB0byByZWJpbmQg
dGhlIFZNQSBvbmNlIG1vcmUuIFRoaXMgZW5kcyB1cCBiZWluZyBhIGxvdAogCSAqIG9mIHdhc3Rl
ZCB3b3JrIGZvciB0aGUgc3RlYWR5IHN0YXRlLgogCSAqLwotCWxpc3RfYWRkX3RhaWwoJnZtYS0+
Y2xvc2VkX2xpbmssICZ2bWEtPnZtLT5pOTE1LT5ndC5jbG9zZWRfdm1hKTsKKwlzcGluX2xvY2tf
aXJxc2F2ZSgmaTkxNS0+Z3QuY2xvc2VkX2xvY2ssIGZsYWdzKTsKKwlsaXN0X2FkZCgmdm1hLT5j
bG9zZWRfbGluaywgJmk5MTUtPmd0LmNsb3NlZF92bWEpOworCXNwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJmk5MTUtPmd0LmNsb3NlZF9sb2NrLCBmbGFncyk7CiB9CiAKLXZvaWQgaTkxNV92bWFfcmVv
cGVuKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQorc3RhdGljIHZvaWQgX19pOTE1X3ZtYV9yZW1vdmVf
Y2xvc2VkKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnZt
YS0+dm0tPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdm1hLT52bS0+aTkxNTsKIAotCWlmICh2bWEtPmZsYWdzICYgSTkxNV9WTUFfQ0xP
U0VEKSB7Ci0JCXZtYS0+ZmxhZ3MgJj0gfkk5MTVfVk1BX0NMT1NFRDsKLQkJbGlzdF9kZWwoJnZt
YS0+Y2xvc2VkX2xpbmspOwotCX0KKwlpZiAoIWk5MTVfdm1hX2lzX2Nsb3NlZCh2bWEpKQorCQly
ZXR1cm47CisKKwlzcGluX2xvY2tfaXJxKCZpOTE1LT5ndC5jbG9zZWRfbG9jayk7CisJbGlzdF9k
ZWxfaW5pdCgmdm1hLT5jbG9zZWRfbGluayk7CisJc3Bpbl91bmxvY2tfaXJxKCZpOTE1LT5ndC5j
bG9zZWRfbG9jayk7Cit9CisKK3ZvaWQgaTkxNV92bWFfcmVvcGVuKHN0cnVjdCBpOTE1X3ZtYSAq
dm1hKQoreworCV9faTkxNV92bWFfcmVtb3ZlX2Nsb3NlZCh2bWEpOwogfQogCiBzdGF0aWMgdm9p
ZCBfX2k5MTVfdm1hX2Rlc3Ryb3koc3RydWN0IGk5MTVfdm1hICp2bWEpCkBAIC04MzksOCArODUw
LDcgQEAgdm9pZCBpOTE1X3ZtYV9kZXN0cm95KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCiAJR0VN
X0JVR19PTihpOTE1X3ZtYV9pc19waW5uZWQodm1hKSk7CiAKLQlpZiAoaTkxNV92bWFfaXNfY2xv
c2VkKHZtYSkpCi0JCWxpc3RfZGVsKCZ2bWEtPmNsb3NlZF9saW5rKTsKKwlfX2k5MTVfdm1hX3Jl
bW92ZV9jbG9zZWQodm1hKTsKIAogCVdBUk5fT04oaTkxNV92bWFfdW5iaW5kKHZtYSkpOwogCUdF
TV9CVUdfT04oaTkxNV92bWFfaXNfYWN0aXZlKHZtYSkpOwpAQCAtODUyLDEyICs4NjIsMTYgQEAg
dm9pZCBpOTE1X3ZtYV9wYXJrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJ
c3RydWN0IGk5MTVfdm1hICp2bWEsICpuZXh0OwogCisJc3Bpbl9sb2NrX2lycSgmaTkxNS0+Z3Qu
Y2xvc2VkX2xvY2spOwogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh2bWEsIG5leHQsICZpOTE1
LT5ndC5jbG9zZWRfdm1hLCBjbG9zZWRfbGluaykgewotCQlHRU1fQlVHX09OKCFpOTE1X3ZtYV9p
c19jbG9zZWQodm1hKSk7CisJCWxpc3RfZGVsX2luaXQoJnZtYS0+Y2xvc2VkX2xpbmspOworCQlz
cGluX3VubG9ja19pcnEoJmk5MTUtPmd0LmNsb3NlZF9sb2NrKTsKKwogCQlpOTE1X3ZtYV9kZXN0
cm95KHZtYSk7Ci0JfQogCi0JR0VNX0JVR19PTighbGlzdF9lbXB0eSgmaTkxNS0+Z3QuY2xvc2Vk
X3ZtYSkpOworCQlzcGluX2xvY2tfaXJxKCZpOTE1LT5ndC5jbG9zZWRfbG9jayk7CisJfQorCXNw
aW5fdW5sb2NrX2lycSgmaTkxNS0+Z3QuY2xvc2VkX2xvY2spOwogfQogCiBzdGF0aWMgdm9pZCBf
X2k5MTVfdm1hX2lvdW5tYXAoc3RydWN0IGk5MTVfdm1hICp2bWEpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuaAppbmRleCAyNjU3Yzk5ZmUxODcuLjA3ZWQ4MWVkODk4YiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3ZtYS5oCkBAIC02OSw3ICs2OSw3IEBAIHN0cnVjdCBpOTE1X3ZtYSB7CiAJICogaGFuZGxlcyAo
YnV0IHNhbWUgZmlsZSkgZm9yIGV4ZWNidWYsIGkuZS4gdGhlIG51bWJlciBvZiBhbGlhc2VzCiAJ
ICogdGhhdCBleGlzdCBpbiB0aGUgY3R4LT5oYW5kbGVfdm1hcyBMVVQgZm9yIHRoaXMgdm1hLgog
CSAqLwotCXVuc2lnbmVkIGludCBvcGVuX2NvdW50OworCWF0b21pY190IG9wZW5fY291bnQ7CiAJ
dW5zaWduZWQgbG9uZyBmbGFnczsKIAkvKioKIAkgKiBIb3cgbWFueSB1c2VycyBoYXZlIHBpbm5l
ZCB0aGlzIG9iamVjdCBpbiBHVFQgc3BhY2UuCkBAIC0xMDQsMTAgKzEwNCw5IEBAIHN0cnVjdCBp
OTE1X3ZtYSB7CiAKICNkZWZpbmUgSTkxNV9WTUFfR0dUVAkJQklUKDExKQogI2RlZmluZSBJOTE1
X1ZNQV9DQU5fRkVOQ0UJQklUKDEyKQotI2RlZmluZSBJOTE1X1ZNQV9DTE9TRUQJCUJJVCgxMykK
LSNkZWZpbmUgSTkxNV9WTUFfVVNFUkZBVUxUX0JJVAkxNAorI2RlZmluZSBJOTE1X1ZNQV9VU0VS
RkFVTFRfQklUCTEzCiAjZGVmaW5lIEk5MTVfVk1BX1VTRVJGQVVMVAlCSVQoSTkxNV9WTUFfVVNF
UkZBVUxUX0JJVCkKLSNkZWZpbmUgSTkxNV9WTUFfR0dUVF9XUklURQlCSVQoMTUpCisjZGVmaW5l
IEk5MTVfVk1BX0dHVFRfV1JJVEUJQklUKDE0KQogCiAJc3RydWN0IGk5MTVfYWN0aXZlIGFjdGl2
ZTsKIAlzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCBsYXN0X2ZlbmNlOwpAQCAtMTkwLDExICsx
ODksNiBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFibGUo
Y29uc3Qgc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJcmV0dXJuIHZtYS0+ZmxhZ3MgJiBJOTE1X1ZN
QV9DQU5fRkVOQ0U7CiB9CiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X3ZtYV9pc19jbG9zZWQo
Y29uc3Qgc3RydWN0IGk5MTVfdm1hICp2bWEpCi17Ci0JcmV0dXJuIHZtYS0+ZmxhZ3MgJiBJOTE1
X1ZNQV9DTE9TRUQ7Ci19Ci0KIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X3ZtYV9zZXRfdXNlcmZh
dWx0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewogCUdFTV9CVUdfT04oIWk5MTVfdm1hX2lzX21h
cF9hbmRfZmVuY2VhYmxlKHZtYSkpOwpAQCAtMjExLDYgKzIwNSwxMSBAQCBzdGF0aWMgaW5saW5l
IGJvb2wgaTkxNV92bWFfaGFzX3VzZXJmYXVsdChjb25zdCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkK
IAlyZXR1cm4gdGVzdF9iaXQoSTkxNV9WTUFfVVNFUkZBVUxUX0JJVCwgJnZtYS0+ZmxhZ3MpOwog
fQogCitzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV92bWFfaXNfY2xvc2VkKGNvbnN0IHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKQoreworCXJldHVybiAhbGlzdF9lbXB0eSgmdm1hLT5jbG9zZWRfbGluayk7
Cit9CisKIHN0YXRpYyBpbmxpbmUgdTMyIGk5MTVfZ2d0dF9vZmZzZXQoY29uc3Qgc3RydWN0IGk5
MTVfdm1hICp2bWEpCiB7CiAJR0VNX0JVR19PTighaTkxNV92bWFfaXNfZ2d0dCh2bWEpKTsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRl
eCBlMjViNzRhMjdmODMuLmI3ZjNmYmI0YWU4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwpAQCAtMjAzLDYgKzIwMyw3IEBAIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAogCUlOSVRfTElTVF9I
RUFEKCZpOTE1LT5ndC5hY3RpdmVfcmluZ3MpOwogCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5ndC5j
bG9zZWRfdm1hKTsKKwlzcGluX2xvY2tfaW5pdCgmaTkxNS0+Z3QuY2xvc2VkX2xvY2spOwogCiAJ
bXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
