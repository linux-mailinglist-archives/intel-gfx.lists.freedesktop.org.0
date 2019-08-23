Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFBC9B2E9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D92C6ECBD;
	Fri, 23 Aug 2019 15:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EDE6ECBC
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:03:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18241843-1500050 
 for multiple; Fri, 23 Aug 2019 16:03:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 16:03:02 +0100
Message-Id: <20190823150302.5719-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush the existing fence before GGTT
 read/write
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

T3VyIGZlbmNlIG1hbmFnZW1lbnQgaXMgbGF6eSwgdmVyeSBsYXp5LiBJZiB0aGUgdXNlciBtYXJr
cyBhbiBvYmplY3QgYXMKdW50aWxlZCwgd2UgZG8gbm90IGltbWVkaWF0ZWx5IGZsdXNoIHRoZSBm
ZW5jZSBidXQgbWVyZWx5IG1hcmsgaXQgYXMKZGlydHkuIE9uIHRoZSB1c2Ugd2UgaGF2ZSB0byBy
ZW1lbWJlciB0byBjaGVjayBhbmQgcmVtb3ZlIHRoZSBmZW5jZSwgYnkKd2hpY2ggdGltZSB3ZSBo
b3BlIGl0IGlzIGlkbGUgYW5kIHdlIGRvIG5vdCBoYXZlIHRvIHdhaXQuCgpCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDY4CkZpeGVzOiAx
ZjdmZDQ4NGZmZjEgKCJkcm0vaTkxNTogUmVwbGFjZSBpOTE1X3ZtYV9wdXRfZmVuY2UoKSIpClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCmluZGV4IGViMzFiNjlhMzE2YS4uNDFiMjhmNmQ4NjIwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMKQEAgLTMyNCw2ICszMjQsMjYgQEAgZ3R0X3VzZXJfcmVhZChzdHJ1Y3Qg
aW9fbWFwcGluZyAqbWFwcGluZywKIAlyZXR1cm4gdW53cml0dGVuOwogfQogCitzdGF0aWMgaW50
IGxpbmVhcl9nZ3R0X29mZnNldChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0ICpvZmZzZXQpCit7
CisJaW50IHJldDsKKworCUdFTV9CVUdfT04oIWk5MTVfdm1hX2lzX21hcF9hbmRfZmVuY2VhYmxl
KHZtYSkpOworCisJLyogT3Blbi1jb2RlZCBpOTE1X3ZtYV9waW5faW9tYXAoKSAqLworCisJaWYg
KHZtYS0+ZmVuY2UpIHsKKwkJbXV0ZXhfbG9jaygmdm1hLT52bS0+bXV0ZXgpOworCQlyZXQgPSBp
OTE1X3ZtYV9yZXZva2VfZmVuY2Uodm1hKTsKKwkJbXV0ZXhfdW5sb2NrKCZ2bWEtPnZtLT5tdXRl
eCk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCX0KKworCSpvZmZzZXQgPSBpOTE1X2dn
dHRfb2Zmc2V0KHZtYSk7CisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQKIGk5MTVfZ2VtX2d0
dF9wcmVhZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkgICBjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX3ByZWFkICphcmdzKQpAQCAtMzUwLDcgKzM3MCwxMCBAQCBpOTE1X2dl
bV9ndHRfcHJlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkJICAgICAg
IFBJTl9OT05CTE9DSyAvKiBOT1dBUk4gKi8gfAogCQkJCQkgICAgICAgUElOX05PRVZJQ1QpOwog
CWlmICghSVNfRVJSKHZtYSkpIHsKLQkJbm9kZS5zdGFydCA9IGk5MTVfZ2d0dF9vZmZzZXQodm1h
KTsKKwkJcmV0ID0gbGluZWFyX2dndHRfb2Zmc2V0KHZtYSwgJm5vZGUuc3RhcnQpOworCQlpZiAo
cmV0KQorCQkJZ290byBvdXRfdW5waW47CisKIAkJbm9kZS5hbGxvY2F0ZWQgPSBmYWxzZTsKIAl9
IGVsc2UgewogCQlyZXQgPSBpbnNlcnRfbWFwcGFibGVfbm9kZShnZ3R0LCAmbm9kZSwgUEFHRV9T
SVpFKTsKQEAgLTU2MCw3ICs1ODMsMTAgQEAgaTkxNV9nZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJCSAgICAgICBQSU5fTk9OQkxPQ0sgLyog
Tk9XQVJOICovIHwKIAkJCQkJICAgICAgIFBJTl9OT0VWSUNUKTsKIAlpZiAoIUlTX0VSUih2bWEp
KSB7Ci0JCW5vZGUuc3RhcnQgPSBpOTE1X2dndHRfb2Zmc2V0KHZtYSk7CisJCXJldCA9IGxpbmVh
cl9nZ3R0X29mZnNldCh2bWEsICZub2RlLnN0YXJ0KTsKKwkJaWYgKHJldCkKKwkJCWdvdG8gb3V0
X3VucGluOworCiAJCW5vZGUuYWxsb2NhdGVkID0gZmFsc2U7CiAJfSBlbHNlIHsKIAkJcmV0ID0g
aW5zZXJ0X21hcHBhYmxlX25vZGUoZ2d0dCwgJm5vZGUsIFBBR0VfU0laRSk7Ci0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
