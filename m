Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8BE94AB2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 18:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F354889951;
	Mon, 19 Aug 2019 16:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298006E22C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 16:45:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18192167-1500050 
 for multiple; Mon, 19 Aug 2019 17:45:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 17:44:46 +0100
Message-Id: <20190819164448.22132-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819164448.22132-1-chris@chris-wilson.co.uk>
References: <20190819164448.22132-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: Replace i915_vma_put_fence()
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

QXZvaWQgY2FsbGluZyBpOTE1X3ZtYV9wdXRfZmVuY2UoKSBieSB1c2luZyBvdXIgYWx0ZXJuYXRl
IHBhdGhzIHRoYXQKYmluZCBhIHNlY29uZGFyeSB2bWEgYXZvaWRpbmcgdGhlIG9yaWdpbmFsIGZl
bmNlZCB2bWEuIEZvciB0aGUgZmV3Cmluc3RhbmNlcyB3aGVyZSB3ZSBuZWVkIHRvIHJlbGVhc2Ug
dGhlIGZlbmNlIChpLmUuIG9uIGJpbmRpbmcgd2hlbiB0aGUKR0dUVCByYW5nZSBiZWNvbWVzIGlu
dmFsaWQpLCByZXBsYWNlIHRoZSBwdXRfZmVuY2Ugd2l0aCBhIHJldm9rZV9mZW5jZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jICB8ICA0IC0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jICAgIHwgMTYgKysrKysrLS0t
CiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAgOSArKy0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgMzYgKysr
KysrKystLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmMgICAgIHwgMTYgKysrLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAg
ICAgICAgICAgICAgfCAgNCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmggICAg
ICAgICAgICAgICB8ICA0ICstLQogNyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCA1
MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX292ZXJsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3Zl
cmxheS5jCmluZGV4IGVjYTQxYzRhNWFhNi4uMjllZGZjMzQzNzE2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYwpAQCAtNzcwLDEwICs3NzAsNiBAQCBz
dGF0aWMgaW50IGludGVsX292ZXJsYXlfZG9fcHV0X2ltYWdlKHN0cnVjdCBpbnRlbF9vdmVybGF5
ICpvdmVybGF5LAogCX0KIAlpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaChuZXdfYm8tPmZyb250YnVm
ZmVyLCBPUklHSU5fRElSVFlGQik7CiAKLQlyZXQgPSBpOTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsK
LQlpZiAocmV0KQotCQlnb3RvIG91dF91bnBpbjsKLQogCWlmICghb3ZlcmxheS0+YWN0aXZlKSB7
CiAJCXUzMiBvY29uZmlnOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9t
YWluLmMKaW5kZXggYTFhZmMyNjkwZTllLi42MDEzNGM1YWVmYTcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKQEAgLTIyMSw2ICsyMjEsOCBAQCBpbnQgaTkx
NV9nZW1fb2JqZWN0X3NldF9jYWNoZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogCSAqIHN0YXRlIGFuZCBzbyBpbnZvbHZlcyBsZXNzIHdvcmsuCiAJICovCiAJaWYgKGF0
b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQpKSB7CisJCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKKwogCQkvKiBCZWZvcmUgd2UgY2hhbmdl
IHRoZSBQVEUsIHRoZSBHUFUgbXVzdCBub3QgYmUgYWNjZXNzaW5nIGl0LgogCQkgKiBJZiB3ZSB3
YWl0IHVwb24gdGhlIG9iamVjdCwgd2Uga25vdyB0aGF0IGFsbCB0aGUgYm91bmQKIAkJICogVk1B
IGFyZSBubyBsb25nZXIgYWN0aXZlLgpAQCAtMjMyLDggKzIzNCw3IEBAIGludCBpOTE1X2dlbV9v
YmplY3Rfc2V0X2NhY2hlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
CWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCi0JCWlmICghSEFTX0xMQyh0b19pOTE1KG9iai0+
YmFzZS5kZXYpKSAmJgotCQkgICAgY2FjaGVfbGV2ZWwgIT0gSTkxNV9DQUNIRV9OT05FKSB7CisJ
CWlmICghSEFTX0xMQyhpOTE1KSAmJiBjYWNoZV9sZXZlbCAhPSBJOTE1X0NBQ0hFX05PTkUpIHsK
IAkJCS8qIEFjY2VzcyB0byBzbm9vcGFibGUgcGFnZXMgdGhyb3VnaCB0aGUgR1RUIGlzCiAJCQkg
KiBpbmNvaGVyZW50IGFuZCBvbiBzb21lIG1hY2hpbmVzIGNhdXNlcyBhIGhhcmQKIAkJCSAqIGxv
Y2t1cC4gUmVsaW5xdWlzaCB0aGUgQ1BVIG1tYXBpbmcgdG8gZm9yY2UKQEAgLTI0MSw2ICsyNDIs
MTAgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAqIHRoZW4gZG91YmxlIGNoZWNrIGlmIHRoZSBHVFQgbWFw
cGluZyBpcyBzdGlsbAogCQkJICogdmFsaWQgZm9yIHRoYXQgcG9pbnRlciBhY2Nlc3MuCiAJCQkg
Ki8KKwkJCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkxNS0+Z2d0dC52bS5tdXRl
eCk7CisJCQlpZiAocmV0KQorCQkJCXJldHVybiByZXQ7CisKIAkJCWk5MTVfZ2VtX29iamVjdF9y
ZWxlYXNlX21tYXAob2JqKTsKIAogCQkJLyogQXMgd2Ugbm8gbG9uZ2VyIG5lZWQgYSBmZW5jZSBm
b3IgR1RUIGFjY2VzcywKQEAgLTI1MSwxMCArMjU2LDEzIEBAIGludCBpOTE1X2dlbV9vYmplY3Rf
c2V0X2NhY2hlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgKiBz
dXBwb3NlZCB0byBiZSBsaW5lYXIuCiAJCQkgKi8KIAkJCWZvcl9lYWNoX2dndHRfdm1hKHZtYSwg
b2JqKSB7Ci0JCQkJcmV0ID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7CisJCQkJcmV0ID0gaTkx
NV92bWFfcmV2b2tlX2ZlbmNlKHZtYSk7CiAJCQkJaWYgKHJldCkKLQkJCQkJcmV0dXJuIHJldDsK
KwkJCQkJYnJlYWs7CiAJCQl9CisJCQltdXRleF91bmxvY2soJmk5MTUtPmdndHQudm0ubXV0ZXgp
OworCQkJaWYgKHJldCkKKwkJCQlyZXR1cm4gcmV0OwogCQl9IGVsc2UgewogCQkJLyogV2UgZWl0
aGVyIGhhdmUgaW5jb2hlcmVudCBiYWNraW5nIHN0b3JlIGFuZAogCQkJICogc28gbm8gR1RUIGFj
Y2VzcyBvciB0aGUgYXJjaGl0ZWN0dXJlIGlzIGZ1bGx5CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAzYmUzMzI3MWI1ZjYuLjU0NjZhNzg4
MWQ4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jCkBAIC0xMDI0LDYgKzEwMjQsOSBAQCBzdGF0aWMgdm9pZCAqcmVsb2NfaW9tYXAoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAJCWlu
dCBlcnI7CiAKKwkJaWYgKGk5MTVfZ2VtX29iamVjdF9pc190aWxlZChvYmopKQorCQkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7CisKIAkJaWYgKHVzZV9jcHVfcmVsb2MoY2FjaGUsIG9iaikpCiAJ
CQlyZXR1cm4gTlVMTDsKIApAQCAtMTA0NywxMiArMTA1MCw2IEBAIHN0YXRpYyB2b2lkICpyZWxv
Y19pb21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJaWYgKGVycikgLyog
bm8gaW5hY3RpdmUgYXBlcnR1cmUgc3BhY2UsIHVzZSBjcHUgcmVsb2MgKi8KIAkJCQlyZXR1cm4g
TlVMTDsKIAkJfSBlbHNlIHsKLQkJCWVyciA9IGk5MTVfdm1hX3B1dF9mZW5jZSh2bWEpOwotCQkJ
aWYgKGVycikgewotCQkJCWk5MTVfdm1hX3VucGluKHZtYSk7Ci0JCQkJcmV0dXJuIEVSUl9QVFIo
ZXJyKTsKLQkJCX0KLQogCQkJY2FjaGUtPm5vZGUuc3RhcnQgPSB2bWEtPm5vZGUuc3RhcnQ7CiAJ
CQljYWNoZS0+bm9kZS5tbSA9ICh2b2lkICopdm1hOwogCQl9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YwppbmRleCA2ODk3NjY4OWQ1NjkuLmJlZjQwNGZhNzU1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCkBAIC0zNDMsMjAgKzM0MywxNiBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJcmV0dXJuIHJldDsKIAogCXdha2VyZWYgPSBpbnRlbF9y
dW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7Ci0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0
X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwKLQkJCQkgICAgICAgUElOX01BUFBBQkxFIHwKLQkJ
CQkgICAgICAgUElOX05PTkJMT0NLIC8qIE5PV0FSTiAqLyB8Ci0JCQkJICAgICAgIFBJTl9OT0VW
SUNUKTsKKwl2bWEgPSBFUlJfUFRSKC1FTk9ERVYpOworCWlmICghaTkxNV9nZW1fb2JqZWN0X2lz
X3RpbGVkKG9iaikpCisJCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEws
IDAsIDAsCisJCQkJCSAgICAgICBQSU5fTUFQUEFCTEUgfAorCQkJCQkgICAgICAgUElOX05PTkJM
T0NLIC8qIE5PV0FSTiAqLyB8CisJCQkJCSAgICAgICBQSU5fTk9FVklDVCk7CiAJaWYgKCFJU19F
UlIodm1hKSkgewogCQlub2RlLnN0YXJ0ID0gaTkxNV9nZ3R0X29mZnNldCh2bWEpOwogCQlub2Rl
LmFsbG9jYXRlZCA9IGZhbHNlOwotCQlyZXQgPSBpOTE1X3ZtYV9wdXRfZmVuY2Uodm1hKTsKLQkJ
aWYgKHJldCkgewotCQkJaTkxNV92bWFfdW5waW4odm1hKTsKLQkJCXZtYSA9IEVSUl9QVFIocmV0
KTsKLQkJfQotCX0KLQlpZiAoSVNfRVJSKHZtYSkpIHsKKwl9IGVsc2UgewogCQlyZXQgPSBpbnNl
cnRfbWFwcGFibGVfbm9kZShnZ3R0LCAmbm9kZSwgUEFHRV9TSVpFKTsKIAkJaWYgKHJldCkKIAkJ
CWdvdG8gb3V0X3VubG9jazsKQEAgLTU1NywyMCArNTUzLDE2IEBAIGk5MTVfZ2VtX2d0dF9wd3Jp
dGVfZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQl3YWtlcmVmID0gaW50
ZWxfcnVudGltZV9wbV9nZXQocnBtKTsKIAl9CiAKLQl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0
dF9waW4ob2JqLCBOVUxMLCAwLCAwLAotCQkJCSAgICAgICBQSU5fTUFQUEFCTEUgfAotCQkJCSAg
ICAgICBQSU5fTk9OQkxPQ0sgLyogTk9XQVJOICovIHwKLQkJCQkgICAgICAgUElOX05PRVZJQ1Qp
OworCXZtYSA9IEVSUl9QVFIoLUVOT0RFVik7CisJaWYgKGk5MTVfZ2VtX29iamVjdF9pc190aWxl
ZChvYmopKQorCQl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAw
LAorCQkJCQkgICAgICAgUElOX01BUFBBQkxFIHwKKwkJCQkJICAgICAgIFBJTl9OT05CTE9DSyAv
KiBOT1dBUk4gKi8gfAorCQkJCQkgICAgICAgUElOX05PRVZJQ1QpOwogCWlmICghSVNfRVJSKHZt
YSkpIHsKIAkJbm9kZS5zdGFydCA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKTsKIAkJbm9kZS5hbGxv
Y2F0ZWQgPSBmYWxzZTsKLQkJcmV0ID0gaTkxNV92bWFfcHV0X2ZlbmNlKHZtYSk7Ci0JCWlmIChy
ZXQpIHsKLQkJCWk5MTVfdm1hX3VucGluKHZtYSk7Ci0JCQl2bWEgPSBFUlJfUFRSKHJldCk7Ci0J
CX0KLQl9Ci0JaWYgKElTX0VSUih2bWEpKSB7CisJfSBlbHNlIHsKIAkJcmV0ID0gaW5zZXJ0X21h
cHBhYmxlX25vZGUoZ2d0dCwgJm5vZGUsIFBBR0VfU0laRSk7CiAJCWlmIChyZXQpCiAJCQlnb3Rv
IG91dF9ycG07CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5j
ZV9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCmluZGV4
IDZhMzNhMGJiOTdhOS4uNjE1YTlmNGVmMzBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9mZW5jZV9yZWcuYwpAQCAtMjg3LDcgKzI4Nyw3IEBAIHN0YXRpYyBpbnQgZmVuY2VfdXBk
YXRlKHN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2UsCiB9CiAKIC8qKgotICogaTkxNV92bWFf
cHV0X2ZlbmNlIC0gZm9yY2UtcmVtb3ZlIGZlbmNlIGZvciBhIFZNQQorICogaTkxNV92bWFfcmV2
b2tlX2ZlbmNlIC0gZm9yY2UtcmVtb3ZlIGZlbmNlIGZvciBhIFZNQQogICogQHZtYTogdm1hIHRv
IG1hcCBsaW5lYXJseSAobm90IHRocm91Z2ggYSBmZW5jZSByZWcpCiAgKgogICogVGhpcyBmdW5j
dGlvbiBmb3JjZS1yZW1vdmVzIGFueSBmZW5jZSBmcm9tIHRoZSBnaXZlbiBvYmplY3QsIHdoaWNo
IGlzIHVzZWZ1bApAQCAtMjk3LDI2ICsyOTcsMTggQEAgc3RhdGljIGludCBmZW5jZV91cGRhdGUo
c3RydWN0IGk5MTVfZmVuY2VfcmVnICpmZW5jZSwKICAqCiAgKiAwIG9uIHN1Y2Nlc3MsIG5lZ2F0
aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KICAqLwotaW50IGk5MTVfdm1hX3B1dF9mZW5jZShz
dHJ1Y3QgaTkxNV92bWEgKnZtYSkKK2ludCBpOTE1X3ZtYV9yZXZva2VfZmVuY2Uoc3RydWN0IGk5
MTVfdm1hICp2bWEpCiB7Ci0Jc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9IGk5MTVfdm1fdG9fZ2d0
dCh2bWEtPnZtKTsKIAlzdHJ1Y3QgaTkxNV9mZW5jZV9yZWcgKmZlbmNlID0gdm1hLT5mZW5jZTsK
LQlpbnQgZXJyOwogCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmdm1hLT52bS0+bXV0ZXgpOwogCWlm
ICghZmVuY2UpCiAJCXJldHVybiAwOwogCiAJaWYgKGF0b21pY19yZWFkKCZmZW5jZS0+cGluX2Nv
dW50KSkKIAkJcmV0dXJuIC1FQlVTWTsKIAotCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZSgmZ2d0dC0+dm0ubXV0ZXgpOwotCWlmIChlcnIpCi0JCXJldHVybiBlcnI7Ci0KLQllcnIgPSBm
ZW5jZV91cGRhdGUoZmVuY2UsIE5VTEwpOwotCW11dGV4X3VubG9jaygmZ2d0dC0+dm0ubXV0ZXgp
OwotCi0JcmV0dXJuIGVycjsKKwlyZXR1cm4gZmVuY2VfdXBkYXRlKGZlbmNlLCBOVUxMKTsKIH0K
IAogc3RhdGljIHN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2VfZmluZChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmluZGV4IDc5MWNiNzk5MGQ3
ZC4uYWExYmNkOWZlYWJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKQEAgLTk3NSw3ICs5NzUs
OSBAQCBpbnQgaTkxNV92bWFfdW5iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCQlHRU1fQlVH
X09OKGk5MTVfdm1hX2hhc19nZ3R0X3dyaXRlKHZtYSkpOwogCiAJCS8qIHJlbGVhc2UgdGhlIGZl
bmNlIHJlZyBfYWZ0ZXJfIGZsdXNoaW5nICovCi0JCXJldCA9IGk5MTVfdm1hX3B1dF9mZW5jZSh2
bWEpOworCQltdXRleF9sb2NrKCZ2bWEtPnZtLT5tdXRleCk7CisJCXJldCA9IGk5MTVfdm1hX3Jl
dm9rZV9mZW5jZSh2bWEpOworCQltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKIAkJaWYg
KHJldCkKIAkJCXJldHVybiByZXQ7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oCmluZGV4IGVkZWQy
NjQ2MTI2Yi4uOTEwZDM2NWQ1NTk5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgKQEAgLTQxMyw4
ICs0MTMsOCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBwYWdlICppOTE1X3ZtYV9maXJzdF9wYWdl
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogICoKICAqIFRydWUgaWYgdGhlIHZtYSBoYXMgYSBmZW5j
ZSwgZmFsc2Ugb3RoZXJ3aXNlLgogICovCi1pbnQgaTkxNV92bWFfcGluX2ZlbmNlKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKTsKLWludCBfX211c3RfY2hlY2sgaTkxNV92bWFfcHV0X2ZlbmNlKHN0cnVj
dCBpOTE1X3ZtYSAqdm1hKTsKK2ludCBfX211c3RfY2hlY2sgaTkxNV92bWFfcGluX2ZlbmNlKHN0
cnVjdCBpOTE1X3ZtYSAqdm1hKTsKK2ludCBfX211c3RfY2hlY2sgaTkxNV92bWFfcmV2b2tlX2Zl
bmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKTsKIAogc3RhdGljIGlubGluZSB2b2lkIF9faTkxNV92
bWFfdW5waW5fZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0tIAoyLjIzLjAucmMxCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
