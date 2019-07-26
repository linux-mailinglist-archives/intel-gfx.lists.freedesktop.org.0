Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CDC76120
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 10:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C1F6E8AB;
	Fri, 26 Jul 2019 08:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D237E6E8A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 08:46:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17621083-1500050 
 for multiple; Fri, 26 Jul 2019 09:46:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 09:45:56 +0100
Message-Id: <20190726084613.22129-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726084613.22129-1-chris@chris-wilson.co.uk>
References: <20190726084613.22129-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/27] drm/i915: Flush extra hard after writing
 relocations through the GTT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVjZW50bHkgZGlzY292ZXJlZCBpbiBjb21taXQgYmRhZTMzYjhiODJiICgiZHJtL2k5MTU6IFVz
ZSBtYXhpbXVtIHdyaXRlCmZsdXNoIGZvciBwd3JpdGVfZ3R0Iikgd2FzIHRoYXQgd2UgbmVlZGVk
IHRvIG91ciBmdWxsIHdyaXRlIGJhcnJpZXIKYmVmb3JlIGNoYW5naW5nIHRoZSBHR1RUIFBURSB0
byBlbnN1cmUgdGhhdCBvdXIgaW5kaXJlY3Qgd3JpdGVzIHRocm91Z2gKdGhlIEdUVCBsYW5kZWQg
YmVmb3JlIHRoZSBQVEUgY2hhbmdlZCAoYW5kIHRoZSB3cml0ZXMgZW5kIHVwIGluIGEKZGlmZmVy
ZW50IHBhZ2UpLiBUaGF0IGFsc28gYXBwbGllcyB0byBvdXIgR0dUVCByZWxvY2F0aW9uIHBhdGgu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggY2JkN2M2ZTNhMWY4Li40ZGI0NDYzMDg5Y2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpA
QCAtMTAxNCwxMSArMTAxNCwxMiBAQCBzdGF0aWMgdm9pZCByZWxvY19jYWNoZV9yZXNldChzdHJ1
Y3QgcmVsb2NfY2FjaGUgKmNhY2hlKQogCQlrdW5tYXBfYXRvbWljKHZhZGRyKTsKIAkJaTkxNV9n
ZW1fb2JqZWN0X2ZpbmlzaF9hY2Nlc3MoKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICopY2Fj
aGUtPm5vZGUubW0pOwogCX0gZWxzZSB7Ci0JCXdtYigpOworCQlzdHJ1Y3QgaTkxNV9nZ3R0ICpn
Z3R0ID0gY2FjaGVfdG9fZ2d0dChjYWNoZSk7CisKKwkJaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0
ZXMoZ2d0dC0+dm0uZ3QpOwogCQlpb19tYXBwaW5nX3VubWFwX2F0b21pYygodm9pZCBfX2lvbWVt
ICopdmFkZHIpOwotCQlpZiAoY2FjaGUtPm5vZGUuYWxsb2NhdGVkKSB7Ci0JCQlzdHJ1Y3QgaTkx
NV9nZ3R0ICpnZ3R0ID0gY2FjaGVfdG9fZ2d0dChjYWNoZSk7CiAKKwkJaWYgKGNhY2hlLT5ub2Rl
LmFsbG9jYXRlZCkgewogCQkJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZtLAogCQkJCQkg
ICAgIGNhY2hlLT5ub2RlLnN0YXJ0LAogCQkJCQkgICAgIGNhY2hlLT5ub2RlLnNpemUpOwpAQCAt
MTA3Myw2ICsxMDc0LDcgQEAgc3RhdGljIHZvaWQgKnJlbG9jX2lvbWFwKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJdm9pZCAqdmFkZHI7CiAKIAlpZiAoY2FjaGUtPnZhZGRyKSB7
CisJCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKIAkJaW9fbWFwcGlu
Z191bm1hcF9hdG9taWMoKHZvaWQgX19mb3JjZSBfX2lvbWVtICopIHVubWFza19wYWdlKGNhY2hl
LT52YWRkcikpOwogCX0gZWxzZSB7CiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwpAQCAtMTExNCw3
ICsxMTE2LDYgQEAgc3RhdGljIHZvaWQgKnJlbG9jX2lvbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCiAKIAlvZmZzZXQgPSBjYWNoZS0+bm9kZS5zdGFydDsKIAlpZiAoY2FjaGUt
Pm5vZGUuYWxsb2NhdGVkKSB7Ci0JCXdtYigpOwogCQlnZ3R0LT52bS5pbnNlcnRfcGFnZSgmZ2d0
dC0+dm0sCiAJCQkJICAgICBpOTE1X2dlbV9vYmplY3RfZ2V0X2RtYV9hZGRyZXNzKG9iaiwgcGFn
ZSksCiAJCQkJICAgICBvZmZzZXQsIEk5MTVfQ0FDSEVfTk9ORSwgMCk7Ci0tIAoyLjIyLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
