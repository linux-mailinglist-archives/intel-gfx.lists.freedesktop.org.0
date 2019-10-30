Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A4E9A19
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 11:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA4C6E949;
	Wed, 30 Oct 2019 10:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FB26E934
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 10:38:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19017336-1500050 
 for multiple; Wed, 30 Oct 2019 10:38:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 10:38:25 +0000
Message-Id: <20191030103827.2413-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030103827.2413-1-chris@chris-wilson.co.uk>
References: <20191030103827.2413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/gem: Leave reloading kernel
 context on resume to GT
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

QXMgd2UgYWxyZWFkeSBkbyByZWxvYWQgdGhlIGtlcm5lbCBjb250ZXh0IGluIGludGVsX2d0X3Jl
c3VtZSwgcmVwZWF0aW5nCnRoYXQgYWN0aW9uIGluc2lkZSBpOTE1X2dlbV9yZXN1bWUoKSBhcyB3
ZWxsIGlzIHJlZHVuZGFudC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
bS5jIHwgMzAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCmluZGV4IGUy
ZWU5YzA0ZWNlOC4uNjRkZDA0YWUzZDU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcG0uYwpAQCAtMTEsMzIgKzExLDYgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAKLXN0
YXRpYyBib29sIHN3aXRjaF90b19rZXJuZWxfY29udGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCi17Ci0JYm9vbCByZXN1bHQgPSAhaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KTsKLQotCWlmIChp
bnRlbF9ndF93YWl0X2Zvcl9pZGxlKGd0LCBJOTE1X0dFTV9JRExFX1RJTUVPVVQpID09IC1FVElN
RSkgewotCQkvKiBYWFggaGlkZSB3YXJuaW5nIGZyb20gZ2VtX2VpbyAqLwotCQlpZiAoaTkxNV9t
b2RwYXJhbXMucmVzZXQpIHsKLQkJCWRldl9lcnIoZ3QtPmk5MTUtPmRybS5kZXYsCi0JCQkJIkZh
aWxlZCB0byBpZGxlIGVuZ2luZXMsIGRlY2xhcmluZyB3ZWRnZWQhXG4iKTsKLQkJCUdFTV9UUkFD
RV9EVU1QKCk7Ci0JCX0KLQotCQkvKgotCQkgKiBGb3JjaWJseSBjYW5jZWwgb3V0c3RhbmRpbmcg
d29yayBhbmQgbGVhdmUKLQkJICogdGhlIGdwdSBxdWlldC4KLQkJICovCi0JCWludGVsX2d0X3Nl
dF93ZWRnZWQoZ3QpOwotCQlyZXN1bHQgPSBmYWxzZTsKLQl9Ci0KLQlpZiAoaW50ZWxfZ3RfcG1f
d2FpdF9mb3JfaWRsZShndCkpCi0JCXJlc3VsdCA9IGZhbHNlOwotCi0JcmV0dXJuIHJlc3VsdDsK
LX0KLQogc3RhdGljIHZvaWQgdXNlcl9mb3JjZXdha2Uoc3RydWN0IGludGVsX2d0ICpndCwgYm9v
bCBzdXNwZW5kKQogewogCWludCBjb3VudCA9IGF0b21pY19yZWFkKCZndC0+dXNlcl93YWtlcmVm
KTsKQEAgLTE1OCwxMCArMTMyLDYgQEAgdm9pZCBpOTE1X2dlbV9yZXN1bWUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKGludGVsX2d0X3Jlc3VtZSgmaTkxNS0+Z3QpKQogCQln
b3RvIGVycl93ZWRnZWQ7CiAKLQkvKiBBbHdheXMgcmVsb2FkIGEgY29udGV4dCBmb3IgcG93ZXJz
YXZpbmcuICovCi0JaWYgKCFzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHRfc3luYygmaTkxNS0+Z3Qp
KQotCQlnb3RvIGVycl93ZWRnZWQ7Ci0KIAl1c2VyX2ZvcmNld2FrZSgmaTkxNS0+Z3QsIGZhbHNl
KTsKIAogb3V0X3VubG9jazoKLS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
