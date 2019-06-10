Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010563B3C7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E7389128;
	Mon, 10 Jun 2019 11:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBEB289126
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 11:09:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16851365-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:09:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 12:09:52 +0100
Message-Id: <20190610110952.14241-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610101739.16058-1-chris@chris-wilson.co.uk>
References: <20190610101739.16058-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Promote i915->mm.obj_lock to be irqsafe
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

VGhlIGludGVudCBpcyB0byBiZSBhYmxlIHRvIHVwZGF0ZSB0aGUgbW0ubGlzdHMgZnJvbSBpbnNp
ZGUgYW4gaXJxc29mZgpzZWN0aW9uIChlLmcuIGZyb20gYSBzb2Z0aXJxIHJjdSB3b3JrcXVldWUp
LCBlcmdvIHdlIG5lZWQgdG8gbWFrZSB0aGUKaTkxNS0+bW0ub2JqX2xvY2sgaXJxc2FmZS4KCnYy
OiBjYW5fZGlzY2FyZF9wYWdlcygpIGVuc3VyZXMgd2UgYXJlIHNocmlua2FibGUKCkZpeGVzOiAz
YjRmYTk2NDBjY2QgKCJkcm0vaTkxNTogVHJhY2sgdGhlIHB1cmdlYWJsZSBvYmplY3RzIG9uIGEg
c2VwYXJhdGUgZXZpY3Rpb24gbGlzdCIpCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4NjkKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlh
bS5hdWxkQGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxs
aWFtLmF1bGRAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9kb21haW4uYyAgIHwgMjMgKysrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgIHwgMTIgKysrKysrLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgfCAxNiArKysrKysrKysrLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgfCAxNCArKysrKysrLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyAgIHwgIDUgKysr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwgMTAgKysr
KystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICB8ICA4
ICsrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAgIHwg
MTcgKysrKysrKysrKy0tLS0tCiA4IGZpbGVzIGNoYW5nZWQsIDY4IGluc2VydGlvbnMoKyksIDM3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4u
YwppbmRleCBlNWRlYWU2MjY4MWYuLjMxOTI5MjIwYjkwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtNDc1LDE1ICs0NzUsMjAgQEAgc3RhdGljIHZv
aWQgaTkxNV9nZW1fb2JqZWN0X2J1bXBfaW5hY3RpdmVfZ2d0dChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQogCX0KIAltdXRleF91bmxvY2soJmk5MTUtPmdndHQudm0ubXV0ZXgpOwog
Ci0JaWYgKGk5MTVfZ2VtX29iamVjdF9pc19zaHJpbmthYmxlKG9iaikgJiYKLQkgICAgb2JqLT5t
bS5tYWR2ID09IEk5MTVfTUFEVl9XSUxMTkVFRCkgewotCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0
OwotCi0JCXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwotCQlsaXN0ID0gb2JqLT5iaW5k
X2NvdW50ID8KLQkJCSZpOTE1LT5tbS5ib3VuZF9saXN0IDogJmk5MTUtPm1tLnVuYm91bmRfbGlz
dDsKLQkJbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywgbGlzdCk7Ci0JCXNwaW5fdW5sb2Nr
KCZpOTE1LT5tbS5vYmpfbG9jayk7CisJaWYgKGk5MTVfZ2VtX29iamVjdF9pc19zaHJpbmthYmxl
KG9iaikpIHsKKwkJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCQlzcGluX2xvY2tfaXJxc2F2ZSgm
aTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKKworCQlpZiAob2JqLT5tbS5tYWR2ID09IEk5MTVf
TUFEVl9XSUxMTkVFRCkgeworCQkJc3RydWN0IGxpc3RfaGVhZCAqbGlzdDsKKworCQkJbGlzdCA9
IG9iai0+YmluZF9jb3VudCA/CisJCQkJJmk5MTUtPm1tLmJvdW5kX2xpc3QgOiAmaTkxNS0+bW0u
dW5ib3VuZF9saXN0OworCQkJbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywgbGlzdCk7CisJ
CX0KKworCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3Mp
OwogCX0KIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCmlu
ZGV4IGEwYmM4ZjdhYjc4MC4uZDAyYTFhZmYyMDU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jCkBAIC0yMDcsOSArMjA3LDExIEBAIHN0YXRpYyB2b2lkIF9f
aTkxNV9nZW1fZnJlZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkg
Ki8KIAkJaWYgKGk5MTVfZ2VtX29iamVjdF9oYXNfcGFnZXMob2JqKSAmJgogCQkgICAgaTkxNV9n
ZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSkgewotCQkJc3Bpbl9sb2NrKCZpOTE1LT5tbS5v
YmpfbG9jayk7CisJCQl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJCQlzcGluX2xvY2tfaXJxc2F2
ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAkJCWxpc3RfZGVsX2luaXQoJm9iai0+bW0u
bGluayk7Ci0JCQlzcGluX3VubG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOworCQkJc3Bpbl91bmxv
Y2tfaXJxcmVzdG9yZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAkJfQogCiAJCW11dGV4
X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CkBAIC0zMzAsOSArMzMyLDExIEBAIHZv
aWQgaTkxNV9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpnZW1fb2JqKQog
CQlvYmotPm1tLm1hZHYgPSBJOTE1X01BRFZfRE9OVE5FRUQ7CiAKIAkJaWYgKGk5MTVfZ2VtX29i
amVjdF9oYXNfcGFnZXMob2JqKSkgewotCQkJc3Bpbl9sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7
CisJCQl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJCQlzcGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+
bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmssICZp
OTE1LT5tbS5wdXJnZV9saXN0KTsKLQkJCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7
CisJCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwog
CQl9CiAJfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCmluZGV4
IDdlNjRmZDZiYzE5Yi4uN2ZmOTA3ZDZkMGM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYwpAQCAtNTcsMTEgKzU3LDE1IEBAIHZvaWQgX19pOTE1X2dlbV9vYmpl
Y3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJR0VNX0JVR19P
TighSEFTX1BBR0VfU0laRVMoaTkxNSwgb2JqLT5tbS5wYWdlX3NpemVzLnNnKSk7CiAKIAlpZiAo
aTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSkgewotCQlzcGluX2xvY2soJmk5MTUt
Pm1tLm9ial9sb2NrKTsKKwkJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCQlzcGluX2xvY2tfaXJx
c2F2ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKKwogCQlpOTE1LT5tbS5zaHJpbmtfY291
bnQrKzsKIAkJaTkxNS0+bW0uc2hyaW5rX21lbW9yeSArPSBvYmotPmJhc2Uuc2l6ZTsKIAkJbGlz
dF9hZGQoJm9iai0+bW0ubGluaywgJmk5MTUtPm1tLnVuYm91bmRfbGlzdCk7Ci0JCXNwaW5fdW5s
b2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaTkx
NS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAl9CiB9CiAKQEAgLTE1MSwxMSArMTU1LDE1IEBAIF9f
aTkxNV9nZW1fb2JqZWN0X3Vuc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmopCiAJCXJldHVybiBwYWdlczsKIAogCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJs
ZShvYmopKSB7Ci0JCXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOworCQl1bnNpZ25lZCBs
b25nIGZsYWdzOworCisJCXNwaW5fbG9ja19pcnFzYXZlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxh
Z3MpOworCiAJCWxpc3RfZGVsKCZvYmotPm1tLmxpbmspOwogCQlpOTE1LT5tbS5zaHJpbmtfY291
bnQtLTsKIAkJaTkxNS0+bW0uc2hyaW5rX21lbW9yeSAtPSBvYmotPmJhc2Uuc2l6ZTsKLQkJc3Bp
bl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKKworCQlzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCX0KIAogCWlmIChvYmotPm1tLm1hcHBpbmcp
IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMKaW5kZXgg
ZDcxZTYzMGM2ZmI4Li43ODgyMTgwYzI0NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9zaHJpbmtlci5jCkBAIC0yMDcsNiArMjA3LDcgQEAgaTkxNV9nZW1fc2hyaW5r
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWZvciAocGhhc2UgPSBwaGFzZXM7IHBo
YXNlLT5saXN0OyBwaGFzZSsrKSB7CiAJCXN0cnVjdCBsaXN0X2hlYWQgc3RpbGxfaW5fbGlzdDsK
IAkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwkJdW5zaWduZWQgbG9uZyBmbGFn
czsKIAogCQlpZiAoKGZsYWdzICYgcGhhc2UtPmJpdCkgPT0gMCkKIAkJCWNvbnRpbnVlOwpAQCAt
MjIwLDcgKzIyMSw3IEBAIGk5MTVfZ2VtX3NocmluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKIAkJICogdG8gYmUgYWJsZSB0byBzaHJpbmsgdGhlaXIgcGFnZXMsIHNvIHRoZXkgcmVt
YWluIG9uCiAJCSAqIHRoZSB1bmJvdW5kL2JvdW5kIGxpc3QgdW50aWwgYWN0dWFsbHkgZnJlZWQu
CiAJCSAqLwotCQlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKKwkJc3Bpbl9sb2NrX2ly
cXNhdmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAJCXdoaWxlIChjb3VudCA8IHRhcmdl
dCAmJgogCQkgICAgICAgKG9iaiA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbChwaGFzZS0+bGlz
dCwKIAkJCQkJCSAgICAgICB0eXBlb2YoKm9iaiksCkBAIC0yNDMsNyArMjQ0LDcgQEAgaTkxNV9n
ZW1fc2hyaW5rKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJaWYgKCFjYW5fcmVs
ZWFzZV9wYWdlcyhvYmopKQogCQkJCWNvbnRpbnVlOwogCi0JCQlzcGluX3VubG9jaygmaTkxNS0+
bW0ub2JqX2xvY2spOworCQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaTkxNS0+bW0ub2JqX2xv
Y2ssIGZsYWdzKTsKIAogCQkJaWYgKHVuc2FmZV9kcm9wX3BhZ2VzKG9iaikpIHsKIAkJCQkvKiBN
YXkgYXJyaXZlIGZyb20gZ2V0X3BhZ2VzIG9uIGFub3RoZXIgYm8gKi8KQEAgLTI1NywxMCArMjU4
LDEwIEBAIGk5MTVfZ2VtX3NocmluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJ
CX0KIAkJCXNjYW5uZWQgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKIAotCQkJc3Bp
bl9sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisJCQlzcGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+
bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAkJfQogCQlsaXN0X3NwbGljZV90YWlsKCZzdGlsbF9pbl9s
aXN0LCBwaGFzZS0+bGlzdCk7Ci0JCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisJ
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAJfQog
CiAJaWYgKGZsYWdzICYgSTkxNV9TSFJJTktfQk9VTkQpCkBAIC0zNzksNiArMzgwLDcgQEAgaTkx
NV9nZW1fc2hyaW5rZXJfb29tKHN0cnVjdCBub3RpZmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxv
bmcgZXZlbnQsIHZvaWQgKnB0cikKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwog
CXVuc2lnbmVkIGxvbmcgdW5ldmljdGFibGUsIGJvdW5kLCB1bmJvdW5kLCBmcmVlZF9wYWdlczsK
IAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOwogCiAJZnJl
ZWRfcGFnZXMgPSAwOwogCXdpdGhfaW50ZWxfcnVudGltZV9wbShpOTE1LCB3YWtlcmVmKQpAQCAt
MzkyLDcgKzM5NCw3IEBAIGk5MTVfZ2VtX3Nocmlua2VyX29vbShzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sgKm5iLCB1bnNpZ25lZCBsb25nIGV2ZW50LCB2b2lkICpwdHIpCiAJICogYmVpbmcgcG9pbnRl
ZCB0byBieSBoYXJkd2FyZS4KIAkgKi8KIAl1bmJvdW5kID0gYm91bmQgPSB1bmV2aWN0YWJsZSA9
IDA7Ci0Jc3Bpbl9sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisJc3Bpbl9sb2NrX2lycXNhdmUo
Jmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICZp
OTE1LT5tbS51bmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKIAkJaWYgKCFjYW5fcmVsZWFzZV9wYWdl
cyhvYmopKQogCQkJdW5ldmljdGFibGUgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsK
QEAgLTQwNSw3ICs0MDcsNyBAQCBpOTE1X2dlbV9zaHJpbmtlcl9vb20oc3RydWN0IG5vdGlmaWVy
X2Jsb2NrICpuYiwgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyKQogCQllbHNlCiAJCQli
b3VuZCArPSBvYmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCX0KLQlzcGluX3VubG9jaygm
aTkxNS0+bW0ub2JqX2xvY2spOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9i
al9sb2NrLCBmbGFncyk7CiAKIAlpZiAoZnJlZWRfcGFnZXMgfHwgdW5ib3VuZCB8fCBib3VuZCkK
IAkJcHJfaW5mbygiUHVyZ2luZyBHUFUgbWVtb3J5LCAlbHUgcGFnZXMgZnJlZWQsICIKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwppbmRleCA4NGQ0ZjU0OWViMjEu
LmYxOTBlYzIzNmE4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3N0b2xlbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9s
ZW4uYwpAQCAtNjEzLDYgKzYxMyw3IEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuX2Zv
cl9wcmVhbGxvY2F0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2CiAJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgZHJtX21tX25vZGUgKnN0b2xlbjsK
IAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOwogCWludCByZXQ7
CiAKIAlpZiAoIWRybV9tbV9pbml0aWFsaXplZCgmZGV2X3ByaXYtPm1tLnN0b2xlbikpCkBAIC02
ODksMTAgKzY5MCwxMCBAQCBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbl9mb3JfcHJlYWxs
b2NhdGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdgogCWxpc3RfbW92ZV90YWls
KCZ2bWEtPnZtX2xpbmssICZnZ3R0LT52bS5ib3VuZF9saXN0KTsKIAltdXRleF91bmxvY2soJmdn
dHQtPnZtLm11dGV4KTsKIAotCXNwaW5fbG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKKwlz
cGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAJR0VNX0JV
R19PTihpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKTsKIAlvYmotPmJpbmRfY291
bnQrKzsKLQlzcGluX3VubG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKKwlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAogCXJldHVybiBv
Ymo7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZjIxMjI0MWEyNzU4Li4y
ZTc5ZjBlNGM1YWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNjksNiAr
MjY5LDcgQEAgc3RhdGljIGludCBpOTE1X2dlbV9zdG9sZW5fbGlzdF9pbmZvKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgdm9pZCAqZGF0YSkKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwog
CXU2NCB0b3RhbF9vYmpfc2l6ZSwgdG90YWxfZ3R0X3NpemU7CiAJdW5zaWduZWQgbG9uZyB0b3Rh
bCwgY291bnQsIG47CisJdW5zaWduZWQgbG9uZyBmbGFnczsKIAlpbnQgcmV0OwogCiAJdG90YWwg
PSBSRUFEX09OQ0UoZGV2X3ByaXYtPm1tLnNocmlua19jb3VudCk7CkBAIC0yODIsNyArMjgzLDcg
QEAgc3RhdGljIGludCBpOTE1X2dlbV9zdG9sZW5fbGlzdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqZGF0YSkKIAogCXRvdGFsX29ial9zaXplID0gdG90YWxfZ3R0X3NpemUgPSBjb3Vu
dCA9IDA7CiAKLQlzcGluX2xvY2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7CisJc3Bpbl9sb2Nr
X2lycXNhdmUoJmRldl9wcml2LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCWxpc3RfZm9yX2VhY2hf
ZW50cnkob2JqLCAmZGV2X3ByaXYtPm1tLmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKIAkJaWYgKGNv
dW50ID09IHRvdGFsKQogCQkJYnJlYWs7CkBAIC0zMDUsNyArMzA2LDcgQEAgc3RhdGljIGludCBp
OTE1X2dlbV9zdG9sZW5fbGlzdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkK
IAkJb2JqZWN0c1tjb3VudCsrXSA9IG9iajsKIAkJdG90YWxfb2JqX3NpemUgKz0gb2JqLT5iYXNl
LnNpemU7CiAJfQotCXNwaW5fdW5sb2NrKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2spOworCXNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCiAJc29y
dChvYmplY3RzLCBjb3VudCwgc2l6ZW9mKCpvYmplY3RzKSwgb2JqX3JhbmtfYnlfc3RvbGVuLCBO
VUxMKTsKIApAQCAtNDU3LDYgKzQ1OCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQogCXU2NCBzaXplLCBtYXBwZWRfc2l6
ZSwgcHVyZ2VhYmxlX3NpemUsIGRweV9zaXplLCBodWdlX3NpemU7CiAJc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iajsKIAl1bnNpZ25lZCBpbnQgcGFnZV9zaXplcyA9IDA7CisJdW5zaWdu
ZWQgbG9uZyBmbGFnczsKIAljaGFyIGJ1Zls4MF07CiAJaW50IHJldDsKIApAQCAtNDY5LDcgKzQ3
MSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X2luZm8oc3RydWN0IHNlcV9maWxlICpt
LCB2b2lkICpkYXRhKQogCXB1cmdlYWJsZV9zaXplID0gcHVyZ2VhYmxlX2NvdW50ID0gMDsKIAlo
dWdlX3NpemUgPSBodWdlX2NvdW50ID0gMDsKIAotCXNwaW5fbG9jaygmZGV2X3ByaXYtPm1tLm9i
al9sb2NrKTsKKwlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPm1tLm9ial9sb2NrLCBmbGFn
cyk7CiAJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICZkZXZfcHJpdi0+bW0udW5ib3VuZF9saXN0
LCBtbS5saW5rKSB7CiAJCXNpemUgKz0gb2JqLT5iYXNlLnNpemU7CiAJCSsrY291bnQ7CkBAIC01
MTgsNyArNTIwLDcgQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfaW5mbyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCQlwYWdlX3NpemVzIHw9IG9iai0+bW0ucGFnZV9zaXpl
cy5zZzsKIAkJfQogCX0KLQlzcGluX3VubG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKKwlz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAog
CXNlcV9wcmludGYobSwgIiV1IGJvdW5kIG9iamVjdHMsICVsbHUgYnl0ZXNcbiIsCiAJCSAgIGNv
dW50LCBzaXplKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDlmMmUyMTNjNjA0Ni4uZTk4
MGMxZWUzZGNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTExMzgsNyArMTEzOCwxMCBA
QCBpOTE1X2dlbV9tYWR2aXNlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRh
dGEsCiAJCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3Q7CiAKIAkJaWYgKGk5MTVfZ2VtX29iamVjdF9p
c19zaHJpbmthYmxlKG9iaikpIHsKLQkJCXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwor
CQkJdW5zaWduZWQgbG9uZyBmbGFnczsKKworCQkJc3Bpbl9sb2NrX2lycXNhdmUoJmk5MTUtPm1t
Lm9ial9sb2NrLCBmbGFncyk7CisKIAkJCWlmIChvYmotPm1tLm1hZHYgIT0gSTkxNV9NQURWX1dJ
TExORUVEKQogCQkJCWxpc3QgPSAmaTkxNS0+bW0ucHVyZ2VfbGlzdDsKIAkJCWVsc2UgaWYgKG9i
ai0+YmluZF9jb3VudCkKQEAgLTExNDYsNyArMTE0OSw4IEBAIGk5MTVfZ2VtX21hZHZpc2VfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJCWVsc2UKIAkJCQlsaXN0
ID0gJmk5MTUtPm1tLnVuYm91bmRfbGlzdDsKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxp
bmssIGxpc3QpOwotCQkJc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKKworCQkJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAkJfQogCX0K
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggZjZhYzgzOTRkYTc3Li44MDA1MGY2YTA4OTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtODAsMTEgKzgwLDE0IEBAIHN0YXRpYyB2b2lk
IHZtYV9wcmludF9hbGxvY2F0b3Ioc3RydWN0IGk5MTVfdm1hICp2bWEsIGNvbnN0IGNoYXIgKnJl
YXNvbikKIHN0YXRpYyB2b2lkIG9ial9idW1wX21ydShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmot
PmJhc2UuZGV2KTsKKwl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJc3Bpbl9sb2NrX2lycXNhdmUo
Jmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAKLQlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9s
b2NrKTsKIAlpZiAob2JqLT5iaW5kX2NvdW50KQogCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5s
aW5rLCAmaTkxNS0+bW0uYm91bmRfbGlzdCk7Ci0Jc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9s
b2NrKTsKKworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFn
cyk7CiAKIAlvYmotPm1tLmRpcnR5ID0gdHJ1ZTsgLyogYmUgcGFyYW5vaWQgICovCiB9CkBAIC02
NzgsOCArNjgxLDkgQEAgaTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQg
c2l6ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQogCiAJaWYgKHZtYS0+b2JqKSB7CiAJCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKKwkJdW5zaWduZWQgbG9u
ZyBmbGFnczsKIAotCQlzcGluX2xvY2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7CisJCXNwaW5f
bG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKIAogCQlpZiAoaTkx
NV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSkKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmot
Pm1tLmxpbmssICZkZXZfcHJpdi0+bW0uYm91bmRfbGlzdCk7CkBAIC02ODcsNyArNjkxLDcgQEAg
aTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6ZSwgdTY0IGFsaWdu
bWVudCwgdTY0IGZsYWdzKQogCQlvYmotPmJpbmRfY291bnQrKzsKIAkJYXNzZXJ0X2JpbmRfY291
bnQob2JqKTsKIAotCQlzcGluX3VubG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKKwkJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAJfQog
CiAJcmV0dXJuIDA7CkBAIC03MjEsOCArNzI1LDkgQEAgaTkxNV92bWFfcmVtb3ZlKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKQogCSAqLwogCWlmICh2bWEtPm9iaikgewogCQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7CisJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKLQkJ
c3Bpbl9sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisJCXNwaW5fbG9ja19pcnFzYXZlKCZpOTE1
LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCiAJCUdFTV9CVUdfT04ob2JqLT5iaW5kX2NvdW50ID09
IDApOwogCQlpZiAoLS1vYmotPmJpbmRfY291bnQgPT0gMCAmJgpAQCAtNzMwLDcgKzczNSw3IEBA
IGk5MTVfdm1hX3JlbW92ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAkJICAgIG9iai0+bW0ubWFk
diA9PSBJOTE1X01BRFZfV0lMTE5FRUQpCiAJCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5r
LCAmaTkxNS0+bW0udW5ib3VuZF9saXN0KTsKIAotCQlzcGluX3VubG9jaygmaTkxNS0+bW0ub2Jq
X2xvY2spOworCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxh
Z3MpOwogCiAJCS8qCiAJCSAqIEFuZCBmaW5hbGx5IG5vdyB0aGUgb2JqZWN0IGlzIGNvbXBsZXRl
bHkgZGVjb3VwbGVkIGZyb20gdGhpcwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
