Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E826D47D5A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 10:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5411988EEB;
	Mon, 17 Jun 2019 08:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F7588E9D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 08:41:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16923926-1500050 
 for multiple; Mon, 17 Jun 2019 09:40:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 09:40:44 +0100
Message-Id: <20190617084044.1894-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Keep engine alive as we retire the
 context
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

VGhvdWdoIHdlIHBpbiB0aGUgY29udGV4dCBmaXJzdCBiZWZvcmUgdGFraW5nIHRoZSBwbSB3YWtl
cmVmLCBkdXJpbmcKcmV0aXJlIHdlIG5lZWQgdG8gdW5waW4gYmVmb3JlIGRyb3BwaW5nIHRoZSBw
bSB3YWtlcmVmIChicmVha2luZyB0aGUKIm5hdHVyYWwiIG9uaW9uKS4gRHVyaW5nIHRoZSB1bnBp
biwgd2UgbWF5IG5lZWQgdG8gYXR0YWNoIGEgY2xlYW51cApvcGVyYXRpb24gb24gdG8gdGhlIGVu
Z2luZSB3YWtlcmVmLCBlcmdvIHdlIHdhbnQgdG8ga2VlcCB0aGUgZW5naW5lCmF3YWtlIHVudGls
IGFmdGVyIHRoZSB1bnBpbi4KCkZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBj
b250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNo
IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYwppbmRleCA5ODE5NDgzZDFiNWQuLjhkOTUyYmMwM2Q1YyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTI1MCw4ICsyNTAsOSBAQCBzdGF0aWMgYm9vbCBpOTE1X3Jl
cXVlc3RfcmV0aXJlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCiAJbG9jYWxfaXJxX2VuYWJs
ZSgpOwogCi0JaW50ZWxfY29udGV4dF9leGl0KHJxLT5od19jb250ZXh0KTsKKwkvKiBPbmlvbiBy
ZXZlcnNlZCB0byBrZWVwIGVuZ2luZSBhbGl2ZSB1bnRpbCBhZnRlciB1bnBpbm5pbmcgKi8KIAlp
bnRlbF9jb250ZXh0X3VucGluKHJxLT5od19jb250ZXh0KTsKKwlpbnRlbF9jb250ZXh0X2V4aXQo
cnEtPmh3X2NvbnRleHQpOwogCiAJaTkxNV9yZXF1ZXN0X3JlbW92ZV9mcm9tX2NsaWVudChycSk7
CiAJbGlzdF9kZWwoJnJxLT5saW5rKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
