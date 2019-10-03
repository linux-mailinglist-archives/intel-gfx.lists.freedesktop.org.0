Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16849C9ADB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 11:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB676E98A;
	Thu,  3 Oct 2019 09:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD866E98C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 09:36:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18704187-1500050 
 for multiple; Thu, 03 Oct 2019 10:36:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 10:36:29 +0100
Message-Id: <20191003093639.10186-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003093639.10186-1-chris@chris-wilson.co.uk>
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/22] drm/i915/gem: Retire directly for
 mmap-offset shrinking
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

Tm93IHRoYXQgd2UgY2FuIHJldGlyZSB3aXRob3V0IHRha2luZyBzdHJ1Y3RfbXV0ZXgsIHdlIGNh
biBkbyBzbyB0bwpoYW5kbGUgc2hyaW5raW5nIHRoZSBtbWFwLW9mZnNldCBzcGFjZSBhZnRlciBh
biBhbGxvY2F0aW9uIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCAxNyArKysrKy0tLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggNDE4ZDBkMmI1ZmE5
Li40NWJiZDIyYzE0ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YwpAQCAtNDMxLDE5ICs0MzEsMTIgQEAgc3RhdGljIGludCBjcmVhdGVfbW1hcF9vZmZzZXQoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJcmV0dXJuIDA7CiAKIAkvKiBBdHRlbXB0
IHRvIHJlYXAgc29tZSBtbWFwIHNwYWNlIGZyb20gZGVhZCBvYmplY3RzICovCi0JZG8gewotCQll
cnIgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5MTUsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsK
LQkJaWYgKGVycikKLQkJCWJyZWFrOworCWVyciA9IGk5MTVfcmV0aXJlX3JlcXVlc3RzX3RpbWVv
dXQoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7
CiAKLQkJaTkxNV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsKLQkJZXJyID0gZHJtX2dl
bV9jcmVhdGVfbW1hcF9vZmZzZXQoJm9iai0+YmFzZSk7Ci0JCWlmICghZXJyKQotCQkJYnJlYWs7
Ci0KLQl9IHdoaWxlIChmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yaykp
OwotCi0JcmV0dXJuIGVycjsKKwlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwor
CXJldHVybiBkcm1fZ2VtX2NyZWF0ZV9tbWFwX29mZnNldCgmb2JqLT5iYXNlKTsKIH0KIAogaW50
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
