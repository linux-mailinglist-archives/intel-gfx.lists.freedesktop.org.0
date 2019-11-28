Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A9210CFF5
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 00:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7C26E06D;
	Thu, 28 Nov 2019 23:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30E86E06D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 23:29:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19383315-1500050 
 for multiple; Thu, 28 Nov 2019 23:29:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 23:29:46 +0000
Message-Id: <20191128232946.546831-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Use sgt_iter for
 huge_pages_free
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

VXNlIHRoZSBub3JtYWwgc2d0X2l0ZXIgdG8gd2FsayB0aGUgcGFnZXMgc2NhdHRlcmxpc3Qgb24g
ZnJlZSBzbyB0aGF0IHdlCmhhbmRsZSB0aGUgZXJyb3IgcGF0aCBjb3JyZWN0bHkuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfZ2VtX29iamVjdC5jIHwgMTEgKysr
KysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX2dl
bV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1f
b2JqZWN0LmMKaW5kZXggODkyZDEyZGI2YzQ5Li5mYTE2ZjJjM2YzYWMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX2dlbV9vYmplY3QuYwpAQCAt
MTIsMTAgKzEyLDE0IEBAIHN0YXRpYyB2b2lkIGh1Z2VfZnJlZV9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJICAgIHN0cnVjdCBzZ190YWJsZSAqcGFnZXMpCiB7CiAJ
dW5zaWduZWQgbG9uZyBucmVhbCA9IG9iai0+c2NyYXRjaCAvIFBBR0VfU0laRTsKLQlzdHJ1Y3Qg
c2NhdHRlcmxpc3QgKnNnOworCXN0cnVjdCBzZ3RfaXRlciBzZ3RfaXRlcjsKKwlzdHJ1Y3QgcGFn
ZSAqcGFnZTsKIAotCWZvciAoc2cgPSBwYWdlcy0+c2dsOyBzZyAmJiBucmVhbC0tOyBzZyA9IF9f
c2dfbmV4dChzZykpCi0JCV9fZnJlZV9wYWdlKHNnX3BhZ2Uoc2cpKTsKKwlmb3JfZWFjaF9zZ3Rf
cGFnZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKKwkJX19mcmVlX3BhZ2UocGFnZSk7CisJCWlm
ICghLS1ucmVhbCkKKwkJCWJyZWFrOworCX0KIAogCXNnX2ZyZWVfdGFibGUocGFnZXMpOwogCWtm
cmVlKHBhZ2VzKTsKQEAgLTcwLDcgKzc0LDYgQEAgc3RhdGljIGludCBodWdlX2dldF9wYWdlcyhz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCiBlcnI6CiAJaHVnZV9mcmVlX3BhZ2Vz
KG9iaiwgcGFnZXMpOwotCiAJcmV0dXJuIC1FTk9NRU07CiAjdW5kZWYgR0ZQCiB9Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
