Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB50696220
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CCD6E80A;
	Tue, 20 Aug 2019 14:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68676E80A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:12:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18203224-1500050 
 for multiple; Tue, 20 Aug 2019 15:12:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 15:12:18 +0100
Message-Id: <20190820141218.14714-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Relax pd_used assertion
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

VGhlIGN1cnJlbnQgYXNzZXJ0aW9uIHRyaWVzIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGRvIG5vdCBv
dmVyIGNvdW50IHRoZQpudW1iZXIgb2YgdXNlZCBQREUgaW5zaWRlIGEgcGFnZSBkaXJlY3Rvcnkg
LS0gdGhhdCBpcyB3aXRoIGFuIGFycmF5IG9mCjUxMiBwZGUsIHdlIGRvIG5vdCBleHBlY3QgbW9y
ZSB0aGFuIDUxMiBlbGVtZW50cyB1c2VkISBIb3dldmVyLCBvdXIKYXNzZXJ0aW9uIGhhcyB0byB0
YWtlIGludG8gYWNjb3VudCB0aGF0IGFzIHdlIHBpbiBhbiBlbGVtZW50IGludG8gdGhlCnBhZ2Ug
ZGlyZWN0b3J5LCB0aGUgY2FsbGVyIGZpcnN0IHBpbnMgdGhlIHBhZ2UgZGlyZWN0b3J5IHNvIHRo
ZSB1c2FnZQpjb3VudCBpcyBvbmUgaGlnaGVyLiBIb3dldmVyLCB0aGlzIHNob3VsZCBiZSBvbmUg
ZXh0cmEgcGluIHBlciB0aHJlYWQsCmFuZCB0aGUgdXBwZXIgYm91bmQgaXMgdGhhdCB3ZSBtYXkg
aGF2ZSBvbmUgdGhyZWFkIGZvciBlYWNoIGVudHJ5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBlNDhkZjExYTE5ZmIu
Ljk0MzVkMTg0ZGRmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTc3MSw3
ICs3NzEsOCBAQCBfX3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNv
bnN0IHBkLAogCSAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RtYSAqIGNvbnN0IHRvLAogCSAgICAg
ICB1NjQgKCplbmNvZGUpKGNvbnN0IGRtYV9hZGRyX3QsIGNvbnN0IGVudW0gaTkxNV9jYWNoZV9s
ZXZlbCkpCiB7Ci0JR0VNX0JVR19PTihhdG9taWNfcmVhZChweF91c2VkKHBkKSkgPiBBUlJBWV9T
SVpFKHBkLT5lbnRyeSkpOworCS8qIEVhY2ggdGhyZWFkIHByZS1waW5zIHRoZSBwZCwgYW5kIHdl
IG1heSBoYXZlIGEgdGhyZWFkIHBlciBlYWNoIHBkZSAqLworCUdFTV9CVUdfT04oYXRvbWljX3Jl
YWQocHhfdXNlZChwZCkpID4gMiAqIEFSUkFZX1NJWkUocGQtPmVudHJ5KSk7CiAKIAlhdG9taWNf
aW5jKHB4X3VzZWQocGQpKTsKIAlwZC0+ZW50cnlbaWR4XSA9IHRvOwotLSAKMi4yMy4wLnJjMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
