Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A11BBA4E18
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6A189AA7;
	Mon,  2 Sep 2019 04:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA0689A8B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 04:03:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339014-1500050 
 for multiple; Mon, 02 Sep 2019 05:03:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:02:51 +0100
Message-Id: <20190902040303.14195-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902040303.14195-1-chris@chris-wilson.co.uk>
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/21] drm/i915: Only track bound elements of
 the GTT
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHByZW1pc2UgaGVyZSBpcyB0byBzaW1wbHkgYXZvaWRpbmcgaGF2aW5nIHRvIGFjcXVpcmUg
dGhlIHZtLT5tdXRleAppbnNpZGUgdm1hIGNyZWF0ZS9kZXN0cm95IHRvIHVwZGF0ZSB0aGUgdm0t
PnVuYm91bmRfbGlzdHMsIHRvIGF2b2lkIHNvbWUKbmFzdHkgbG9jayByZWN1cnNpb25zIGxhdGVy
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jICAgIHwgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICB8IDIzICsrKystLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAgICAgICAg
ICB8ICA1IC0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAg
ICB8IDEyICsrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dl
bV9ndHQuYyB8ICAyICstCiA1IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMzYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3N0b2xlbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCmlu
ZGV4IGFhNTMzYjRhYjVmNS4uMmUxYmZkNWU0YWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jCkBAIC02ODksNyArNjg5LDcgQEAgaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9zdG9sZW5fZm9yX3ByZWFsbG9jYXRlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYKIAlfX2k5MTVfdm1hX3NldF9tYXBfYW5kX2ZlbmNlYWJsZSh2bWEpOwogCiAJbXV0
ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwotCWxpc3RfbW92ZV90YWlsKCZ2bWEtPnZtX2xpbmss
ICZnZ3R0LT52bS5ib3VuZF9saXN0KTsKKwlsaXN0X2FkZF90YWlsKCZ2bWEtPnZtX2xpbmssICZn
Z3R0LT52bS5ib3VuZF9saXN0KTsKIAltdXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsKIAog
CUdFTV9CVUdfT04oaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDI3ZThiMTJiOWU0NS4uZDI4ZTVmZmEwYjlkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtNTA1LDE5ICs1MDUsMTIgQEAgc3Rh
dGljIHZvaWQgaTkxNV9hZGRyZXNzX3NwYWNlX2Zpbmkoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0pCiAKIHN0YXRpYyB2b2lkIHBwZ3R0X2Rlc3Ryb3lfdm1hKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtKQogewotCXN0cnVjdCBsaXN0X2hlYWQgKnBoYXNlc1tdID0gewotCQkmdm0t
PmJvdW5kX2xpc3QsCi0JCSZ2bS0+dW5ib3VuZF9saXN0LAotCQlOVUxMLAotCX0sICoqcGhhc2U7
CisJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKIAogCW11dGV4X2xvY2soJnZtLT5pOTE1LT5k
cm0uc3RydWN0X211dGV4KTsKLQlmb3IgKHBoYXNlID0gcGhhc2VzOyAqcGhhc2U7IHBoYXNlKysp
IHsKLQkJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKLQotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUodm1hLCB2biwgKnBoYXNlLCB2bV9saW5rKQotCQkJaTkxNV92bWFfZGVzdHJveSh2bWEp
OwotCX0KKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodm1hLCB2biwgJnZtLT5ib3VuZF9saXN0
LCB2bV9saW5rKQorCQlpOTE1X3ZtYV9kZXN0cm95KHZtYSk7CisJR0VNX0JVR19PTighbGlzdF9l
bXB0eSgmdm0tPmJvdW5kX2xpc3QpKTsKIAltdXRleF91bmxvY2soJnZtLT5pOTE1LT5kcm0uc3Ry
dWN0X211dGV4KTsKIH0KIApAQCAtNTI4LDkgKzUyMSw2IEBAIHN0YXRpYyB2b2lkIF9faTkxNV92
bV9yZWxlYXNlKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAogCXBwZ3R0X2Rlc3Ryb3lfdm1h
KHZtKTsKIAotCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnZtLT5ib3VuZF9saXN0KSk7Ci0JR0VN
X0JVR19PTighbGlzdF9lbXB0eSgmdm0tPnVuYm91bmRfbGlzdCkpOwotCiAJdm0tPmNsZWFudXAo
dm0pOwogCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKHZtKTsKIApAQCAtNTY5LDcgKzU1OSw2IEBA
IHN0YXRpYyB2b2lkIGk5MTVfYWRkcmVzc19zcGFjZV9pbml0KHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLCBpbnQgc3ViY2xhc3MpCiAKIAlzdGFzaF9pbml0KCZ2bS0+ZnJlZV9wYWdlcyk7
CiAKLQlJTklUX0xJU1RfSEVBRCgmdm0tPnVuYm91bmRfbGlzdCk7CiAJSU5JVF9MSVNUX0hFQUQo
JnZtLT5ib3VuZF9saXN0KTsKIH0KIApAQCAtMTg4MywxMCArMTg3Miw2IEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV92bWEgKnBkX3ZtYV9jcmVhdGUoc3RydWN0IGdlbjZfcHBndHQgKnBwZ3R0LCBpbnQg
c2l6ZSkKIAlJTklUX0xJU1RfSEVBRCgmdm1hLT5vYmpfbGluayk7CiAJSU5JVF9MSVNUX0hFQUQo
JnZtYS0+Y2xvc2VkX2xpbmspOwogCi0JbXV0ZXhfbG9jaygmdm1hLT52bS0+bXV0ZXgpOwotCWxp
c3RfYWRkKCZ2bWEtPnZtX2xpbmssICZ2bWEtPnZtLT51bmJvdW5kX2xpc3QpOwotCW11dGV4X3Vu
bG9jaygmdm1hLT52bS0+bXV0ZXgpOwotCiAJcmV0dXJuIHZtYTsKIH0KIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuaAppbmRleCAwN2M4NWMxMzRkNGMuLjU0NmE3YzBhYTBlNyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTMyMCwxMSArMzIwLDYgQEAgc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSB7CiAJICovCiAJc3RydWN0IGxpc3RfaGVhZCBib3VuZF9saXN0Owog
Ci0JLyoqCi0JICogTGlzdCBvZiB2bWEgdGhhdCBhcmUgbm90IHVuYm91bmQuCi0JICovCi0Jc3Ry
dWN0IGxpc3RfaGVhZCB1bmJvdW5kX2xpc3Q7Ci0KIAlzdHJ1Y3QgcGFnZXN0YXNoIGZyZWVfcGFn
ZXM7CiAKIAkvKiBHbG9iYWwgR1RUICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRleCA3NjUy
NTU0MzAwOWEuLjg0ODYwNWZmZmYyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV92bWEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBAIC0yMTgs
MTAgKzIxOCw2IEBAIHZtYV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAogCXNwaW5fdW5sb2NrKCZvYmotPnZtYS5sb2NrKTsKIAotCW11dGV4X2xvY2soJnZtLT5tdXRl
eCk7Ci0JbGlzdF9hZGQoJnZtYS0+dm1fbGluaywgJnZtLT51bmJvdW5kX2xpc3QpOwotCW11dGV4
X3VubG9jaygmdm0tPm11dGV4KTsKLQogCXJldHVybiB2bWE7CiAKIGVycl92bWE6CkBAIC02NTks
NyArNjU1LDcgQEAgaTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6
ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQogCUdFTV9CVUdfT04oIWk5MTVfZ2VtX3ZhbGlk
X2d0dF9zcGFjZSh2bWEsIGNhY2hlX2xldmVsKSk7CiAKIAltdXRleF9sb2NrKCZ2bWEtPnZtLT5t
dXRleCk7Ci0JbGlzdF9tb3ZlX3RhaWwoJnZtYS0+dm1fbGluaywgJnZtYS0+dm0tPmJvdW5kX2xp
c3QpOworCWxpc3RfYWRkX3RhaWwoJnZtYS0+dm1fbGluaywgJnZtYS0+dm0tPmJvdW5kX2xpc3Qp
OwogCW11dGV4X3VubG9jaygmdm1hLT52bS0+bXV0ZXgpOwogCiAJaWYgKHZtYS0+b2JqKSB7CkBA
IC02ODcsNyArNjgzLDcgQEAgaTkxNV92bWFfcmVtb3ZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQog
CiAJbXV0ZXhfbG9jaygmdm1hLT52bS0+bXV0ZXgpOwogCWRybV9tbV9yZW1vdmVfbm9kZSgmdm1h
LT5ub2RlKTsKLQlsaXN0X21vdmVfdGFpbCgmdm1hLT52bV9saW5rLCAmdm1hLT52bS0+dW5ib3Vu
ZF9saXN0KTsKKwlsaXN0X2RlbCgmdm1hLT52bV9saW5rKTsKIAltdXRleF91bmxvY2soJnZtYS0+
dm0tPm11dGV4KTsKIAogCS8qCkBAIC04MDAsMTAgKzc5Niw2IEBAIHN0YXRpYyB2b2lkIF9faTkx
NV92bWFfZGVzdHJveShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAlHRU1fQlVHX09OKGRybV9tbV9u
b2RlX2FsbG9jYXRlZCgmdm1hLT5ub2RlKSk7CiAJR0VNX0JVR19PTih2bWEtPmZlbmNlKTsKIAot
CW11dGV4X2xvY2soJnZtYS0+dm0tPm11dGV4KTsKLQlsaXN0X2RlbCgmdm1hLT52bV9saW5rKTsK
LQltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKLQogCWlmICh2bWEtPm9iaikgewogCQlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYwppbmRleCAzMWE1MWNhMWRkY2Iu
LmE5MGM5YmU5NWY4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9ndHQuYwpAQCAtMTIzNyw3ICsxMjM3LDcgQEAgc3RhdGljIHZvaWQgdHJhY2tfdm1hX2Jp
bmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJdm1hLT5wYWdlcyA9IG9iai0+bW0ucGFnZXM7CiAK
IAltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7Ci0JbGlzdF9tb3ZlX3RhaWwoJnZtYS0+dm1f
bGluaywgJnZtYS0+dm0tPmJvdW5kX2xpc3QpOworCWxpc3RfYWRkX3RhaWwoJnZtYS0+dm1fbGlu
aywgJnZtYS0+dm0tPmJvdW5kX2xpc3QpOwogCW11dGV4X3VubG9jaygmdm1hLT52bS0+bXV0ZXgp
OwogfQogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
