Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 888FC4DB63
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C286E802;
	Thu, 20 Jun 2019 20:39:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 421486E802
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938735"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:28 +0100
Message-Id: <20190620203835.1421-26-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 26/33] drm/i915: Compartmentalize
 i915_ggtt_cleanup_hw
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRpbnVp
bmcgb24gdGhlIHRoZW1lIG9mIGJldHRlciBsb2dpY2FsIG9yZ2FuaXphdGlvbiBvZiBvdXIgY29k
ZSwgbWFrZQp0aGUgZmlyc3Qgc3RlcCB0b3dhcmRzIG1ha2luZyB0aGUgZ2d0dCBjb2RlIGJldHRl
ciBpc29sYXRlZCBmcm9tIHdpZGVyCnN0cnVjdCBkcm1faTkxNV9wcml2YXRlLgoKdjI6CiAqIENs
ZWFudXAgb2YgbW0ud2Nfc3Rhc2ggZG9lcyBub3QgbmVlZCBzdHJ1Y3RfbXV0ZXguIChDaHJpcykK
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDU1ICsrKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMjQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBhZmIxYmFkOTgw
YmIuLjk1NWVmODk2MmQwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI4
MTksMTQgKzI4MTksMTkgQEAgc3RhdGljIHZvaWQgZmluaV9hbGlhc2luZ19wcGd0dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUt
PmdndHQ7CiAJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0OwogCisJbXV0ZXhfbG9jaygmaTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7CisKIAlwcGd0dCA9IGZldGNoX2FuZF96ZXJvKCZpOTE1LT5tbS5h
bGlhc2luZ19wcGd0dCk7CiAJaWYgKCFwcGd0dCkKLQkJcmV0dXJuOworCQlnb3RvIG91dDsKIAog
CWk5MTVfdm1fcHV0KCZwcGd0dC0+dm0pOwogCiAJZ2d0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSAg
ID0gZ2d0dF9iaW5kX3ZtYTsKIAlnZ3R0LT52bS52bWFfb3BzLnVuYmluZF92bWEgPSBnZ3R0X3Vu
YmluZF92bWE7CisKK291dDoKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OwogfQogCiBzdGF0aWMgaW50IGdndHRfcmVzZXJ2ZV9ndWNfdG9wKHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpCkBAIC0yOTI3LDIwICsyOTMyLDE0IEBAIGludCBpOTE1X2dlbV9pbml0X2dndHQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiByZXQ7CiB9CiAKLS8qKgot
ICogaTkxNV9nZ3R0X2NsZWFudXBfaHcgLSBDbGVhbiB1cCBHR1RUIGhhcmR3YXJlIGluaXRpYWxp
emF0aW9uCi0gKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNlCi0gKi8KLXZvaWQgaTkxNV9nZ3R0X2Ns
ZWFudXBfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQg
Z2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7Ci0Jc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCA9ICZkZXZfcHJpdi0+Z2d0dDsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGdndHQtPnZtLmk5MTU7CiAJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKLQlzdHJ1
Y3QgcGFnZXZlYyAqcHZlYzsKIAogCWdndHQtPnZtLmNsb3NlZCA9IHRydWU7CiAKLQltdXRleF9s
b2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0JZmluaV9hbGlhc2luZ19wcGd0dChk
ZXZfcHJpdik7CisJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAlsaXN0
X2Zvcl9lYWNoX2VudHJ5X3NhZmUodm1hLCB2biwgJmdndHQtPnZtLmJvdW5kX2xpc3QsIHZtX2xp
bmspCiAJCVdBUk5fT04oaTkxNV92bWFfdW5iaW5kKHZtYSkpOwpAQCAtMjk1NywxOCArMjk1Niwz
MSBAQCB2b2lkIGk5MTVfZ2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAogCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKIAotCXB2ZWMgPSAmZGV2
X3ByaXYtPm1tLndjX3N0YXNoLnB2ZWM7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKKworCWFyY2hfcGh5c193Y19kZWwoZ2d0dC0+bXRycik7CisJaW9fbWFwcGluZ19m
aW5pKCZnZ3R0LT5pb21hcCk7Cit9CisKKy8qKgorICogaTkxNV9nZ3R0X2NsZWFudXBfaHcgLSBD
bGVhbiB1cCBHR1RUIGhhcmR3YXJlIGluaXRpYWxpemF0aW9uCisgKiBAZGV2X3ByaXY6IGk5MTUg
ZGV2aWNlCisgKi8KK3ZvaWQgaTkxNV9nZ3R0X2NsZWFudXBfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCit7CisJc3RydWN0IHBhZ2V2ZWMgKnB2ZWM7CisKKwlmaW5pX2FsaWFzaW5n
X3BwZ3R0KGk5MTUpOworCisJZ2d0dF9jbGVhbnVwX2h3KCZpOTE1LT5nZ3R0KTsKKworCXB2ZWMg
PSAmaTkxNS0+bW0ud2Nfc3Rhc2gucHZlYzsKIAlpZiAocHZlYy0+bnIpIHsKIAkJc2V0X3BhZ2Vz
X2FycmF5X3diKHB2ZWMtPnBhZ2VzLCBwdmVjLT5ucik7CiAJCV9fcGFnZXZlY19yZWxlYXNlKHB2
ZWMpOwogCX0KIAotCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwot
Ci0JYXJjaF9waHlzX3djX2RlbChnZ3R0LT5tdHJyKTsKLQlpb19tYXBwaW5nX2ZpbmkoJmdndHQt
PmlvbWFwKTsKLQotCWk5MTVfZ2VtX2NsZWFudXBfc3RvbGVuKGRldl9wcml2KTsKKwlpOTE1X2dl
bV9jbGVhbnVwX3N0b2xlbihpOTE1KTsKIH0KIAogc3RhdGljIHVuc2lnbmVkIGludCBnZW42X2dl
dF90b3RhbF9ndHRfc2l6ZSh1MTYgc25iX2dtY2hfY3RsKQpAQCAtMzU2NCwxMSArMzU3Niw2IEBA
IGludCBpOTE1X2dndHRfcHJvYmVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJ
cmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KQotewotCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKLX0KLQogc3RhdGlj
IGludCBnZ3R0X2luaXRfaHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGdndHQtPnZtLmk5MTU7CkBAIC0zNTg5LDcgKzM1OTYsNyBA
QCBzdGF0aWMgaW50IGdndHRfaW5pdF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCWlmICgh
aW9fbWFwcGluZ19pbml0X3djKCZnZ3R0LT5pb21hcCwKIAkJCQlnZ3R0LT5nbWFkci5zdGFydCwK
IAkJCQlnZ3R0LT5tYXBwYWJsZV9lbmQpKSB7Ci0JCWdndHRfY2xlYW51cF9odyhnZ3R0KTsKKwkJ
Z2d0dC0+dm0uY2xlYW51cCgmZ2d0dC0+dm0pOwogCQlyZXQgPSAtRUlPOwogCQlnb3RvIG91dDsK
IAl9CkBAIC0zNjM0LDcgKzM2NDEsNyBAQCBpbnQgaTkxNV9nZ3R0X2luaXRfaHcoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXJldHVybiAwOwogCiBvdXRfZ3R0X2NsZWFudXA6
Ci0JZ2d0dF9jbGVhbnVwX2h3KCZkZXZfcHJpdi0+Z2d0dCk7CisJZGV2X3ByaXYtPmdndHQudm0u
Y2xlYW51cCgmZGV2X3ByaXYtPmdndHQudm0pOwogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
