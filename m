Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D025A7AC5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 07:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CED8991E;
	Wed,  4 Sep 2019 05:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825188991E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 05:36:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18365303-1500050 
 for multiple; Wed, 04 Sep 2019 06:36:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 06:36:45 +0100
Message-Id: <20190904053645.4477-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: If the first pin in map_ggtt doesn't
 success, try again
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

QmVpbmcgdW5hYmxlIHRvIGZpbmQgYSBob2xlIGluIHRoZSBtYXBwYWJsZSBhcGVydHVyZSwgc2hv
dWxkIG9ubHkgYmUKcG9zc2libGUgaWYgdGhlIGVudGlyZSBhcGVydHVyZSBpcyAqcGlubmVkKi4g
T3VyIHBpbnMgYXJlIHNob3J0bGl2ZWQsCm9ubHkgdGFrZW4gd2hpbGUgYmluZGluZyBhbmQgY29u
c3RydWN0aW5nIGJhdGNoZXMvbWFwcGluZ3MsIHNvIGlmIHdlCmZpbmQgbm8gcm9vbSB0cnkgYWdh
aW4uIFRoZXJlIGFyZSBhIGZldyBzZW1pLXBlcm1hbmVudCBwaW5zIGZvciByaW5ncywKY29udGV4
dHMsIHBhZ2UgdGFibGVzIHdoaWNoIHRha2UgYSBsaXR0bGUgbG9uZ2VyIHRvIGJlIHJlbGVhc2Vk
LCBidXQgZm9yCm91ciBIYXN3ZWxsIGZhaWx1cmUgY2FzZSwgc2hvdWxkIG5vdCBiZSB0aGUgaXNz
dWUuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9MTExNTMwClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCA0
ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCBlMGJmYzAyMWVjNmYu
LjNjMDQ2ODAzZmM2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5j
CkBAIC0yODAsNyArMjgwLDkgQEAgdm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1f
ZmF1bHQgKnZtZikKIAkJfQogCiAJCS8qIFRoZSBlbnRpcmUgbWFwcGFibGUgR0dUVCBpcyBwaW5u
ZWQ/IFVuZXhwZWN0ZWQhICovCi0JCUdFTV9CVUdfT04odm1hID09IEVSUl9QVFIoLUVOT1NQQykp
OworCQlpZiAodW5saWtlbHkodm1hID09IEVSUl9QVFIoLUVOT1NQQykpKQorCQkJLyogUGlucyAq
c2hvdWxkKiBiZSB0cmFuc2llbnQsIHNvIHRyeSBhZ2FpbiAqLworCQkJdm1hID0gRVJSX1BUUigt
RUFHQUlOKTsKIAl9CiAJaWYgKElTX0VSUih2bWEpKSB7CiAJCXJldCA9IFBUUl9FUlIodm1hKTsK
LS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
