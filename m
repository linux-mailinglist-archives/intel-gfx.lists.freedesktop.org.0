Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC08E4F54C
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 12:42:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DF06E96C;
	Sat, 22 Jun 2019 10:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235E46E96C
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 10:42:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16988150-1500050 
 for multiple; Sat, 22 Jun 2019 11:42:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Jun 2019 11:42:15 +0100
Message-Id: <20190622104216.24201-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190622104216.24201-1-chris@chris-wilson.co.uk>
References: <20190622104216.24201-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Add a wakeref getter for iff the
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHVzZSBpbiB0aGUgbmV4dCBwYXRjaCwgd2Ugd2FudCB0byBhY3F1aXJlIGEgd2FrZXJlZiB3
aXRob3V0IGhhdmluZwp0byB3YWtlIHRoZSBkZXZpY2UgdXAgLS0gaS5lLiBvbmx5IGFjcXVpcmUg
dGhlIGVuZ2luZSB3YWtlcmVmIGlmIHRoZQplbmdpbmUgaXMgYWxyZWFkeSBhY3RpdmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCB8ICA5ICsrKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oICAgICAgfCAxNSArKysrKysrKysr
KysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmgKaW5kZXggYjMyNmNkOTkz
ZDYwLi5iNGY3MmRlM2UxZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9wbS5oCkBAIC03LDEyICs3LDE5IEBACiAjaWZuZGVmIElOVEVMX0VOR0lORV9QTV9ICiAjZGVm
aW5lIElOVEVMX0VOR0lORV9QTV9ICiAKKyNpbmNsdWRlICJpbnRlbF9lbmdpbmVfdHlwZXMuaCIK
KyNpbmNsdWRlICJpbnRlbF93YWtlcmVmLmgiCisKIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwot
c3RydWN0IGludGVsX2VuZ2luZV9jczsKIAogdm9pZCBpbnRlbF9lbmdpbmVfcG1fZ2V0KHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiB2b2lkIGludGVsX2VuZ2luZV9wbV9wdXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIAorc3RhdGljIGlubGluZSBib29sIGludGVs
X2VuZ2luZV9wbV9nZXRfaWZfYXdha2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQor
eworCXJldHVybiBpbnRlbF93YWtlcmVmX2dldF9pZl9hY3RpdmUoJmVuZ2luZS0+d2FrZXJlZik7
Cit9CisKIHZvaWQgaW50ZWxfZW5naW5lX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKTsKIAogdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9fcG0oc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2Vy
ZWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaAppbmRleCBmNzQyNzI3
NzBhNWMuLjFkNmY1OTg2ZTRlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfd2FrZXJlZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaApA
QCAtNzEsNiArNzEsMjEgQEAgaW50ZWxfd2FrZXJlZl9nZXQoc3RydWN0IGludGVsX3J1bnRpbWVf
cG0gKnJwbSwKIAlyZXR1cm4gMDsKIH0KIAorLyoqCisgKiBpbnRlbF93YWtlcmVmX2dldF9pZl9p
bl91c2U6IEFjcXVpcmUgdGhlIHdha2VyZWYKKyAqIEB3ZjogdGhlIHdha2VyZWYKKyAqCisgKiBB
Y3F1aXJlIGEgaG9sZCBvbiB0aGUgd2FrZXJlZiwgYnV0IG9ubHkgaWYgdGhlIHdha2VyZWYgaXMg
YWxyZWFkeQorICogYWN0aXZlLgorICoKKyAqIFJldHVybnM6IHRydWUgaWYgdGhlIHdha2VyZWYg
d2FzIGFjcXVpcmVkLCBmYWxzZSBvdGhlcndpc2UuCisgKi8KK3N0YXRpYyBpbmxpbmUgYm9vbAor
aW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0aXZlKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKK3sK
KwlyZXR1cm4gYXRvbWljX2luY19ub3RfemVybygmd2YtPmNvdW50KTsKK30KKwogLyoqCiAgKiBp
bnRlbF93YWtlcmVmX3B1dDogUmVsZWFzZSB0aGUgd2FrZXJlZgogICogQGk5MTU6IHRoZSBkcm1f
aTkxNV9wcml2YXRlIGRldmljZQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
