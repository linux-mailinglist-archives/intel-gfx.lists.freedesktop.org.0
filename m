Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272F0601AE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 09:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFC66E422;
	Fri,  5 Jul 2019 07:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A933A6E422
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 07:46:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17137009-1500050 
 for multiple; Fri, 05 Jul 2019 08:46:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 08:45:57 +0100
Message-Id: <20190705074604.16496-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Order assert forcewake test
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

UmVhZCB0aGUgY3VycmVudCB2YWx1ZSBiZWZvcmUgY29tcHV0aW5nIHRoZSBleHBlY3RlZCB0byBl
bnN1cmUgdGhhdCBpZgp0aGUgdGltZXIgZG9lcyBjb21wbGV0ZSBlYXJseSAoYWdhaW5zdCBvdXIg
d2lsbCksIGl0IHNob3VsZCBub3QgY2F1c2UgYQpmYWxzZSBwb3NpdGl2ZS4KCnYyOiBUaGUgbG9j
YWwgaXJxIGRpc2FibGUgZGlkIG5vdCBwcmV2ZW50IHRoZSB0aW1lciBmcm9tIHJ1bm5pbmcuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuYwppbmRleCAyMDQyYzk0YzljYzkuLmJiOWUwZGEzMGU5NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmMKQEAgLTc1OCwxOSArNzU4LDE4IEBAIHZvaWQgYXNzZXJ0X2ZvcmNld2Fr
ZXNfYWN0aXZlKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkgKiBDaGVjayB0aGF0IHRo
ZSBjYWxsZXIgaGFzIGFuIGV4cGxpY2l0IHdha2VyZWYgYW5kIHdlIGRvbid0IG1pc3Rha2UKIAkg
KiBpdCBmb3IgdGhlIGF1dG8gd2FrZXJlZi4KIAkgKi8KLQlsb2NhbF9pcnFfZGlzYWJsZSgpOwog
CWZvcl9lYWNoX2Z3X2RvbWFpbl9tYXNrZWQoZG9tYWluLCBmd19kb21haW5zLCB1bmNvcmUsIHRt
cCkgeworCQl1bnNpZ25lZCBpbnQgYWN0dWFsID0gUkVBRF9PTkNFKGRvbWFpbi0+d2FrZV9jb3Vu
dCk7CiAJCXVuc2lnbmVkIGludCBleHBlY3QgPSAxOwogCiAJCWlmIChocnRpbWVyX2FjdGl2ZSgm
ZG9tYWluLT50aW1lcikgJiYgUkVBRF9PTkNFKGRvbWFpbi0+YWN0aXZlKSkKIAkJCWV4cGVjdCsr
OyAvKiBwZW5kaW5nIGF1dG9tYXRpYyByZWxlYXNlICovCiAKLQkJaWYgKFdBUk4oZG9tYWluLT53
YWtlX2NvdW50IDwgZXhwZWN0LAorCQlpZiAoV0FSTihhY3R1YWwgPCBleHBlY3QsCiAJCQkgIkV4
cGVjdGVkIGRvbWFpbiAlZCB0byBiZSBoZWxkIGF3YWtlIGJ5IGNhbGxlciwgY291bnQ9JWRcbiIs
Ci0JCQkgZG9tYWluLT5pZCwgZG9tYWluLT53YWtlX2NvdW50KSkKKwkJCSBkb21haW4tPmlkLCBh
Y3R1YWwpKQogCQkJYnJlYWs7CiAJfQotCWxvY2FsX2lycV9lbmFibGUoKTsKIH0KIAogLyogV2Ug
Z2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5IGNvb2wgcmVnaXN0ZXJzICovCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
