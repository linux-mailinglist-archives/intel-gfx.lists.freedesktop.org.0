Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E1656E46
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 18:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD296E48A;
	Wed, 26 Jun 2019 16:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530FE6E489
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 16:03:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17033373-1500050 
 for multiple; Wed, 26 Jun 2019 16:45:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 16:45:47 +0100
Message-Id: <20190626154549.10066-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Add a wakeref getter for iff the
 wakeref is already active
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHVzZSBpbiB0aGUgbmV4dCBwYXRjaCwgd2Ugd2FudCB0byBhY3F1aXJlIGEgd2FrZXJlZiB3
aXRob3V0IGhhdmluZwp0byB3YWtlIHRoZSBkZXZpY2UgdXAgLS0gaS5lLiBvbmx5IGFjcXVpcmUg
dGhlIGVuZ2luZSB3YWtlcmVmIGlmIHRoZQplbmdpbmUgaXMgYWxyZWFkeSBhY3RpdmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3
ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIHwgIDcgKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oICAgICAgfCAxNSArKysrKysrKysr
KysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmgKaW5kZXggZjNmNWIwMzFi
NGExLi43ZDA1N2NkY2Q5MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9wbS5oCkBAIC0xMSw3ICsxMSw2IEBACiAjaW5jbHVkZSAiaW50ZWxfd2FrZXJlZi5oIgogCiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKLXN0cnVjdCBpbnRlbF9lbmdpbmVfY3M7CiAKIHZvaWQg
aW50ZWxfZW5naW5lX3BtX2dldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogdm9p
ZCBpbnRlbF9lbmdpbmVfcG1fcHV0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CkBA
IC0yMiw2ICsyMSwxMiBAQCBpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoY29uc3Qgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCXJldHVybiBpbnRlbF93YWtlcmVmX2lzX2FjdGl2ZSgm
ZW5naW5lLT53YWtlcmVmKTsKIH0KIAorc3RhdGljIGlubGluZSBib29sCitpbnRlbF9lbmdpbmVf
cG1fZ2V0X2lmX2F3YWtlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlyZXR1
cm4gaW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0aXZlKCZlbmdpbmUtPndha2VyZWYpOworfQorCiB2
b2lkIGludGVsX2VuZ2luZV9wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAK
IHZvaWQgaW50ZWxfZW5naW5lX2luaXRfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmgKaW5kZXggZjc0MjcyNzcwYTVjLi4x
ZDZmNTk4NmU0ZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2Vy
ZWYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmgKQEAgLTcxLDYg
KzcxLDIxIEBAIGludGVsX3dha2VyZWZfZ2V0KHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0s
CiAJcmV0dXJuIDA7CiB9CiAKKy8qKgorICogaW50ZWxfd2FrZXJlZl9nZXRfaWZfaW5fdXNlOiBB
Y3F1aXJlIHRoZSB3YWtlcmVmCisgKiBAd2Y6IHRoZSB3YWtlcmVmCisgKgorICogQWNxdWlyZSBh
IGhvbGQgb24gdGhlIHdha2VyZWYsIGJ1dCBvbmx5IGlmIHRoZSB3YWtlcmVmIGlzIGFscmVhZHkK
KyAqIGFjdGl2ZS4KKyAqCisgKiBSZXR1cm5zOiB0cnVlIGlmIHRoZSB3YWtlcmVmIHdhcyBhY3F1
aXJlZCwgZmFsc2Ugb3RoZXJ3aXNlLgorICovCitzdGF0aWMgaW5saW5lIGJvb2wKK2ludGVsX3dh
a2VyZWZfZ2V0X2lmX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCit7CisJcmV0dXJu
IGF0b21pY19pbmNfbm90X3plcm8oJndmLT5jb3VudCk7Cit9CisKIC8qKgogICogaW50ZWxfd2Fr
ZXJlZl9wdXQ6IFJlbGVhc2UgdGhlIHdha2VyZWYKICAqIEBpOTE1OiB0aGUgZHJtX2k5MTVfcHJp
dmF0ZSBkZXZpY2UKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
