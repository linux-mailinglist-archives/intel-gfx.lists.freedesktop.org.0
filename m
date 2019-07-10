Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A7E64D29
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 22:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD1F6E12F;
	Wed, 10 Jul 2019 20:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134846E130
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 20:04:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17206620-1500050 
 for multiple; Wed, 10 Jul 2019 21:04:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 21:04:28 +0100
Message-Id: <20190710200428.3275-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Drop the duplicate workaround
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

VGhlIHdvcmthcm91bmRzIHdhcyByZXZpdmVkIGluIHRoZSBiYWNrbWVyZ2UgdGhhdCB3YXMgbWVh
bnQgdG8gZml4IGl0IQoKRml4ZXM6IDg4YzkwZTgwMDY3NSAoIk1lcmdlIGRybS9kcm0tbmV4dCBp
bnRvIGRybS1pbnRlbC1uZXh0LXF1ZXVlZCIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMgfCA2IC0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggZjZmZDY5MDVlZTZmLi45
ZTA2OTI4NmQzY2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwpAQCAtNTMxLDEyICs1MzEsNiBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1OwogCi0JLyogV2FEaXNhYmxlQmFua0hhbmdN
b2RlOmljbCAqLwotCXdhX3dyaXRlKHdhbCwKLQkJIEdFTjhfTDNDTlRMUkVHLAotCQkgaW50ZWxf
dW5jb3JlX3JlYWQoZW5naW5lLT51bmNvcmUsIEdFTjhfTDNDTlRMUkVHKSB8Ci0JCSBHRU44X0VS
UkRFVEJDVFJMKTsKLQogCS8qIFdhRGlzYWJsZUJhbmtIYW5nTW9kZTppY2wgKi8KIAl3YV93cml0
ZSh3YWwsCiAJCSBHRU44X0wzQ05UTFJFRywKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
