Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A3E50121
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 07:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88592898F5;
	Mon, 24 Jun 2019 05:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C278990D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 05:43:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17000411-1500050 
 for multiple; Mon, 24 Jun 2019 06:43:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2019 06:43:04 +0100
Message-Id: <20190624054315.18910-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624054315.18910-1-chris@chris-wilson.co.uk>
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/19] drm/i915: Add a wakeref getter for iff
 the wakeref is already active
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

Rm9yIHVzZSBpbiB0aGUgbmV4dCBwYXRjaCwgd2Ugd2FudCB0byBhY3F1aXJlIGEgd2FrZXJlZiB3
aXRob3V0IGhhdmluZwp0byB3YWtlIHRoZSBkZXZpY2UgdXAgLS0gaS5lLiBvbmx5IGFjcXVpcmUg
dGhlIGVuZ2luZSB3YWtlcmVmIGlmIHRoZQplbmdpbmUgaXMgYWxyZWFkeSBhY3RpdmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCB8ICA3ICsrKysrKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaCAgICAgIHwgMTUgKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oCmluZGV4IGYzZjViMDMxYjRh
MS4uN2QwNTdjZGNkOTE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
cG0uaApAQCAtMTEsNyArMTEsNiBAQAogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKIAogc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGU7Ci1zdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOwogCiB2b2lkIGlu
dGVsX2VuZ2luZV9wbV9nZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIHZvaWQg
aW50ZWxfZW5naW5lX3BtX3B1dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwpAQCAt
MjIsNiArMjEsMTIgQEAgaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGNvbnN0IHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlyZXR1cm4gaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUoJmVu
Z2luZS0+d2FrZXJlZik7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9vbAoraW50ZWxfZW5naW5lX3Bt
X2dldF9pZl9hd2FrZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJcmV0dXJu
IGludGVsX3dha2VyZWZfZ2V0X2lmX2FjdGl2ZSgmZW5naW5lLT53YWtlcmVmKTsKK30KKwogdm9p
ZCBpbnRlbF9lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCiB2
b2lkIGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCmluZGV4IGY3NDI3Mjc3MGE1Yy4uMWQ2
ZjU5ODZlNGU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVm
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCkBAIC03MSw2ICs3
MSwyMSBAQCBpbnRlbF93YWtlcmVmX2dldChzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtLAog
CXJldHVybiAwOwogfQogCisvKioKKyAqIGludGVsX3dha2VyZWZfZ2V0X2lmX2luX3VzZTogQWNx
dWlyZSB0aGUgd2FrZXJlZgorICogQHdmOiB0aGUgd2FrZXJlZgorICoKKyAqIEFjcXVpcmUgYSBo
b2xkIG9uIHRoZSB3YWtlcmVmLCBidXQgb25seSBpZiB0aGUgd2FrZXJlZiBpcyBhbHJlYWR5Cisg
KiBhY3RpdmUuCisgKgorICogUmV0dXJuczogdHJ1ZSBpZiB0aGUgd2FrZXJlZiB3YXMgYWNxdWly
ZWQsIGZhbHNlIG90aGVyd2lzZS4KKyAqLworc3RhdGljIGlubGluZSBib29sCitpbnRlbF93YWtl
cmVmX2dldF9pZl9hY3RpdmUoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQoreworCXJldHVybiBh
dG9taWNfaW5jX25vdF96ZXJvKCZ3Zi0+Y291bnQpOworfQorCiAvKioKICAqIGludGVsX3dha2Vy
ZWZfcHV0OiBSZWxlYXNlIHRoZSB3YWtlcmVmCiAgKiBAaTkxNTogdGhlIGRybV9pOTE1X3ByaXZh
dGUgZGV2aWNlCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
