Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EF2BDBA3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 12:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9727D6EB6A;
	Wed, 25 Sep 2019 10:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A406EB66
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 10:01:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18609385-1500050 
 for multiple; Wed, 25 Sep 2019 11:01:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 11:01:34 +0100
Message-Id: <20190925100137.17956-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925100137.17956-1-chris@chris-wilson.co.uk>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/27] drm/i915: Remove struct_mutex guard for
 debugfs/opregion
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

SGF2aW5nIGEgc3RydWN0X211dGV4IGFyb3VuZCB0aGUgcmVhZCBvZiBhIEJJT1MgYmxvYiBzZXJ2
ZXMgbm8gcHVycG9zZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwg
MTIgKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDExIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggNWU5ODRiYTI3YmVm
Li44ZjQ4ZjI1NDNiN2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0xNDEx
LDIxICsxNDExLDExIEBAIHN0YXRpYyBpbnQgaTkxNV9yaW5nX2ZyZXFfdGFibGUoc3RydWN0IHNl
cV9maWxlICptLCB2b2lkICp1bnVzZWQpCiAKIHN0YXRpYyBpbnQgaTkxNV9vcHJlZ2lvbihzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Ci0Jc3RydWN0IGRybV9kZXZp
Y2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwotCXN0cnVjdCBpbnRlbF9vcHJlZ2lvbiAqb3ByZWdp
b24gPSAmZGV2X3ByaXYtPm9wcmVnaW9uOwotCWludCByZXQ7Ci0KLQlyZXQgPSBtdXRleF9sb2Nr
X2ludGVycnVwdGlibGUoJmRldi0+c3RydWN0X211dGV4KTsKLQlpZiAocmV0KQotCQlnb3RvIG91
dDsKKwlzdHJ1Y3QgaW50ZWxfb3ByZWdpb24gKm9wcmVnaW9uID0gJm5vZGVfdG9faTkxNShtLT5w
cml2YXRlKS0+b3ByZWdpb247CiAKIAlpZiAob3ByZWdpb24tPmhlYWRlcikKIAkJc2VxX3dyaXRl
KG0sIG9wcmVnaW9uLT5oZWFkZXIsIE9QUkVHSU9OX1NJWkUpOwogCi0JbXV0ZXhfdW5sb2NrKCZk
ZXYtPnN0cnVjdF9tdXRleCk7Ci0KLW91dDoKIAlyZXR1cm4gMDsKIH0KIAotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
