Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9415A98B3E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 08:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBDC6E43F;
	Thu, 22 Aug 2019 06:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3D76E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 06:09:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18221641-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 07:09:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 07:09:13 +0100
Message-Id: <20190822060914.2671-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190822060914.2671-1-chris@chris-wilson.co.uk>
References: <20190822060914.2671-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915: Pull obj->userfault tracking under
 the ggtt->mutex
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

U2luY2Ugd2Ugd2FudCB0byByZXZva2UgdGhlIGdndHQgdm1hIGZyb20gb25seSB1bmRlciB0aGUg
Z2d0dC0+bXV0ZXgsIHdlCm5lZWQgdG8gbW92ZSBwcm90ZWN0aW9uIG9mIHRoZSB1c2VyZmF1bHQg
dHJhY2tpbmcgZnJvbSB0aGUgc3RydWN0X211dGV4CnRvIHRoZSBnZ3R0LT5tdXRleC4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCAxMCArKysrKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAgfCAgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMKaW5kZXggZGJhNWRkNzc5MTQ5Li41OTU1MzlhMDllMzggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwpAQCAtMzA2LDE0ICszMDYsMTcgQEAg
dm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIAlpZiAocmV0
KQogCQlnb3RvIGVycl9mZW5jZTsKIAotCS8qIE1hcmsgYXMgYmVpbmcgbW1hcHBlZCBpbnRvIHVz
ZXJzcGFjZSBmb3IgbGF0ZXIgcmV2b2NhdGlvbiAqLwogCWFzc2VydF9ycG1fd2FrZWxvY2tfaGVs
ZChycG0pOworCisJLyogTWFyayBhcyBiZWluZyBtbWFwcGVkIGludG8gdXNlcnNwYWNlIGZvciBs
YXRlciByZXZvY2F0aW9uICovCisJbXV0ZXhfbG9jaygmaTkxNS0+Z2d0dC52bS5tdXRleCk7CiAJ
aWYgKCFpOTE1X3ZtYV9zZXRfdXNlcmZhdWx0KHZtYSkgJiYgIW9iai0+dXNlcmZhdWx0X2NvdW50
KyspCiAJCWxpc3RfYWRkKCZvYmotPnVzZXJmYXVsdF9saW5rLCAmaTkxNS0+Z2d0dC51c2VyZmF1
bHRfbGlzdCk7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5nZ3R0LnZtLm11dGV4KTsKKwogCWlmIChD
T05GSUdfRFJNX0k5MTVfVVNFUkZBVUxUX0FVVE9TVVNQRU5EKQogCQlpbnRlbF93YWtlcmVmX2F1
dG8oJmk5MTUtPmdndHQudXNlcmZhdWx0X3dha2VyZWYsCiAJCQkJICAgbXNlY3NfdG9famlmZmll
c190aW1lb3V0KENPTkZJR19EUk1fSTkxNV9VU0VSRkFVTFRfQVVUT1NVU1BFTkQpKTsKLQlHRU1f
QlVHX09OKCFvYmotPnVzZXJmYXVsdF9jb3VudCk7CiAKIAlpOTE1X3ZtYV9zZXRfZ2d0dF93cml0
ZSh2bWEpOwogCkBAIC00MDgsOCArNDExLDggQEAgdm9pZCBpOTE1X2dlbV9vYmplY3RfcmVsZWFz
ZV9tbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJICogcmVxdWlyZW1lbnQg
dGhhdCBvcGVyYXRpb25zIHRvIHRoZSBHR1RUIGJlIG1hZGUgaG9sZGluZyB0aGUgUlBNCiAJICog
d2FrZXJlZi4KIAkgKi8KLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0p
OworCW11dGV4X2xvY2soJmk5MTUtPmdndHQudm0ubXV0ZXgpOwogCiAJaWYgKCFvYmotPnVzZXJm
YXVsdF9jb3VudCkKIAkJZ290byBvdXQ7CkBAIC00MjYsNiArNDI5LDcgQEAgdm9pZCBpOTE1X2dl
bV9vYmplY3RfcmVsZWFzZV9tbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJ
d21iKCk7CiAKIG91dDoKKwltdXRleF91bmxvY2soJmk5MTUtPmdndHQudm0ubXV0ZXgpOwogCWlu
dGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIH0KIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBmNWQ2NzAyZWM3ZGYuLmIwZjUxNTkxZjJl
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTk0LDcgKzk0LDcgQEAgc3Rh
dGljIGNoYXIgZ2V0X3RpbGluZ19mbGFnKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmop
CiAKIHN0YXRpYyBjaGFyIGdldF9nbG9iYWxfZmxhZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQogewotCXJldHVybiBvYmotPnVzZXJmYXVsdF9jb3VudCA/ICdnJyA6ICcgJzsKKwly
ZXR1cm4gUkVBRF9PTkNFKG9iai0+dXNlcmZhdWx0X2NvdW50KSA/ICdnJyA6ICcgJzsKIH0KIAog
c3RhdGljIGNoYXIgZ2V0X3Bpbl9tYXBwZWRfZmxhZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggNzlmOWQxZmI3NjExLi45ODQwY2Iy
ZjcwYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtODY0LDcgKzg2NCw3IEBAIHZvaWQg
aTkxNV92bWFfcmV2b2tlX21tYXAoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJc3RydWN0IGRybV92
bWFfb2Zmc2V0X25vZGUgKm5vZGUgPSAmdm1hLT5vYmotPmJhc2Uudm1hX25vZGU7CiAJdTY0IHZt
YV9vZmZzZXQ7CiAKLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ2bWEtPnZtLT5pOTE1LT5kcm0uc3Ry
dWN0X211dGV4KTsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ2bWEtPnZtLT5tdXRleCk7CiAKIAlp
ZiAoIWk5MTVfdm1hX2hhc191c2VyZmF1bHQodm1hKSkKIAkJcmV0dXJuOwpAQCAtOTg3LDcgKzk4
Nyw5IEBAIGludCBpOTE1X3ZtYV91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJCQlyZXR1
cm4gcmV0OwogCiAJCS8qIEZvcmNlIGEgcGFnZWZhdWx0IGZvciBkb21haW4gdHJhY2tpbmcgb24g
bmV4dCB1c2VyIGFjY2VzcyAqLworCQltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7CiAJCWk5
MTVfdm1hX3Jldm9rZV9tbWFwKHZtYSk7CisJCW11dGV4X3VubG9jaygmdm1hLT52bS0+bXV0ZXgp
OwogCiAJCV9faTkxNV92bWFfaW91bm1hcCh2bWEpOwogCQl2bWEtPmZsYWdzICY9IH5JOTE1X1ZN
QV9DQU5fRkVOQ0U7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
