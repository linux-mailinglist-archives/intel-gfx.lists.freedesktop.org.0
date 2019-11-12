Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E3FF8BB9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08EE6EAA3;
	Tue, 12 Nov 2019 09:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB7E6EA95
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:29:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19170020-1500050 
 for multiple; Tue, 12 Nov 2019 09:28:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 09:28:42 +0000
Message-Id: <20191112092854.869-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191112092854.869-1-chris@chris-wilson.co.uk>
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/27] drm/i915/gt: Expose engine->mmio_base via
 sysfs
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

VXNlIHRoZSBwZXItZW5naW5lIHN5c2ZzIGRpcmVjdG9yeSB0byBsZXQgdXNlcnNwYWNlIGRpc2Nv
dmVyIHRoZQptbWlvX2Jhc2Ugb2YgZWFjaCBlbmdpbmUuIFByaW9yIHRvIHJlY2VudCBnZW5lcmF0
aW9ucywgdGhlIHVzZXIKYWNjZXNzaWJsZSByZWdpc3RlcnMgb24gZWFjaCBlbmdpbmUgYXJlIGF0
IGEgZml4ZWQgb2Zmc2V0IHJlbGF0aXZlIHRvCmVhY2ggZW5naW5lIC0tIGJ1dCByZXF1aXJlIGFi
c29sdXRlIGFkZHJlc3NpbmcuIEFzIHRoZSBhYnNvbHV0ZSBhZGRyZXNzCmRlcGVuZHMgb24gdGhl
IGFjdHVhbCBwaHlzaWNhbCBlbmdpbmUsIHRoaXMgaXMgbm90IGFsd2F5cyBwb3NzaWJsZSB0bwpk
ZXRlcm1pbmUgZnJvbSB1c2Vyc3BhY2UgKGZvciBleGFtcGxlIGljbCBtYXkgZXhwb3NlIHZjczEg
b3IgdmNzMiBhcyB0aGUKc2Vjb25kIHZjcyBlbmdpbmUpLiBNYWtlIHRoaXMgZWFzeSBmb3IgdXNl
cnNwYWNlIHRvIGRpc2NvdmVyIGJ5CnByb3ZpZGluZyB0aGUgbW1pb19iYXNlIGluIHN5c2ZzLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMgfCAxMCArKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKaW5kZXggZGYyNjNhZjNhOWVhLi5hYmRk
ZDhkMGY5YWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9zeXNmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNm
cy5jCkBAIC00OCw2ICs0OCwxNSBAQCBpbnN0X3Nob3coc3RydWN0IGtvYmplY3QgKmtvYmosIHN0
cnVjdCBrb2JqX2F0dHJpYnV0ZSAqYXR0ciwgY2hhciAqYnVmKQogc3RhdGljIHN0cnVjdCBrb2Jq
X2F0dHJpYnV0ZSBpbnN0X2F0dHIgPQogX19BVFRSKGluc3RhbmNlLCAwNDQ0LCBpbnN0X3Nob3cs
IE5VTEwpOwogCitzdGF0aWMgc3NpemVfdAorbW1pb19zaG93KHN0cnVjdCBrb2JqZWN0ICprb2Jq
LCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlyZXR1cm4gc3By
aW50ZihidWYsICIweCV4XG4iLCBrb2JqX3RvX2VuZ2luZShrb2JqKS0+bW1pb19iYXNlKTsKK30K
Kworc3RhdGljIHN0cnVjdCBrb2JqX2F0dHJpYnV0ZSBtbWlvX2F0dHIgPQorX19BVFRSKG1taW9f
YmFzZSwgMDQ0NCwgbW1pb19zaG93LCBOVUxMKTsKKwogc3RhdGljIGNvbnN0IGNoYXIgKiBjb25z
dCB2Y3NfY2Fwc1tdID0gewogCVtpbG9nMihJOTE1X1ZJREVPX0NMQVNTX0NBUEFCSUxJVFlfSEVW
QyldID0gImhldmMiLAogCVtpbG9nMihJOTE1X1ZJREVPX0FORF9FTkhBTkNFX0NMQVNTX0NBUEFC
SUxJVFlfU0ZDKV0gPSAic2ZjIiwKQEAgLTE3MCw2ICsxNzksNyBAQCB2b2lkIGludGVsX2VuZ2lu
ZXNfYWRkX3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQkmbmFtZV9hdHRy
LmF0dHIsCiAJCSZjbGFzc19hdHRyLmF0dHIsCiAJCSZpbnN0X2F0dHIuYXR0ciwKKwkJJm1taW9f
YXR0ci5hdHRyLAogCQkmY2Fwc19hdHRyLmF0dHIsCiAJCSZhbGxfY2Fwc19hdHRyLmF0dHIsCiAJ
CU5VTEwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
