Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF9B115A0C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 01:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B946FAB6;
	Sat,  7 Dec 2019 00:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720886FAB6
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 00:20:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19490802-1500050 for multiple; Sat, 07 Dec 2019 00:20:42 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191207000327.GB1300@jack.zhora.eu>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
 <20191206105527.1130413-5-chris@chris-wilson.co.uk>
 <20191207000327.GB1300@jack.zhora.eu>
Message-ID: <157567804007.2300.9959810670397535928@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 07 Dec 2019 00:20:40 +0000
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Avoid calling
 i915_gem_object_unbind holding object lock
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEyLTA3IDAwOjAzOjI3KQo+IEhpIENocmlzLAo+IAo+
IFsuLi5dCj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
Cj4gPiBpbmRleCA4MDhlYjMyN2EyOWIuLjUzZTI4ZTQxN2NjOSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gPiBAQCAtMTg3LDIxICsxODcs
MjMgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKPiA+ICB7Cj4gPiAgICAgICBpbnQgcmV0Owo+ID4gIAo+ID4gLSAg
ICAgYXNzZXJ0X29iamVjdF9oZWxkKG9iaik7Cj4gPiAtCj4gPiAgICAgICBpZiAob2JqLT5jYWNo
ZV9sZXZlbCA9PSBjYWNoZV9sZXZlbCkKPiAKPiB5b3UncmUgY2hlY2tpbmcgaGVyZS4uLgo+IAo+
ID4gICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ICAKPiA+IC0gICAgIHJldCA9IGk5MTVfZ2Vt
X29iamVjdF91bmJpbmQob2JqLCBJOTE1X0dFTV9PQkpFQ1RfVU5CSU5EX0FDVElWRSk7Cj4gPiAr
ICAgICByZXQgPSBpOTE1X2dlbV9vYmplY3RfbG9ja19pbnRlcnJ1cHRpYmxlKG9iaik7Cj4gPiAg
ICAgICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gIAo+ID4gLSAg
ICAgLyogVGhlIGNhY2hlLWxldmVsIHdpbGwgYmUgYXBwbGllZCB3aGVuIGVhY2ggdm1hIGlzIHJl
Ym91bmQuICovCj4gPiArICAgICAvKiBBbHdheXMgaW52YWxpZGF0ZSBzdGFsZSBjYWNoZWxpbmVz
ICovCj4gPiArICAgICBpZiAob2JqLT5jYWNoZV9sZXZlbCAhPSBjYWNoZV9sZXZlbCkgewo+IAo+
IC4uLiBhbmQgaGVyZS4uLiB5b3UgbWlnaHQgd2FudCB0byBnZXQgcmlkIG9mIHRoaXMgb25lPwoK
T25lIG91dHNpZGUsIG9uZSBpbnNpZGUgdGhlIGxvY2suCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
