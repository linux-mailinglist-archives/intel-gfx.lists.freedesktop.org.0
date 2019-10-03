Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DD3CAF9D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1033C6EA76;
	Thu,  3 Oct 2019 19:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC056EA76
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:56:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714741-1500050 for multiple; Thu, 03 Oct 2019 20:56:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-20-matthew.auld@intel.com>
In-Reply-To: <20191003192444.10113-20-matthew.auld@intel.com>
Message-ID: <157013255769.12925.3275211921517044581@skylake-alporthouse-com>
Date: Thu, 03 Oct 2019 20:55:57 +0100
Subject: Re: [Intel-gfx] [PATCH v2 19/22] drm/i915: don't allocate the ring
 in stolen if we lack aperture
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6NDEpCj4gU2luY2Ugd2UgaGF2
ZSBubyB3YXkgYWNjZXNzIGl0IGZyb20gdGhlIENQVS4gRm9yIHN1Y2ggY2FzZXMganVzdAo+IGZh
bGxiYWNrIHRvIGludGVybmFsIG9iamVjdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nYnVmZmVyLmMKPiBpbmRleCBlMjIwYzA5YzZmMzIuLmM0OGYxZDIwYWY1ZiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiBAQCAtMTI3
Myw3ICsxMjczLDkgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jpbmdfdm1hKHN0
cnVjdCBpOTE1X2dndHQgKmdndHQsIGludCBzaXplKQogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgpUaGVyZSdzIGEgZ2d0dCBy
aWdodCB0aGVyZSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKPiAgICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gICAgICAgICBzdHJ1Y3QgaTkx
NV92bWEgKnZtYTsKPiAgCj4gLSAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0
b2xlbihpOTE1LCBzaXplKTsKPiArICAgICAgIG9iaiA9IEVSUl9QVFIoLUVOT0RFVik7Cj4gKyAg
ICAgICBpZiAoSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKQo+ICsgICAgICAgICAgICAgICBv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKPiAgICAgICAg
IGlmIChJU19FUlIob2JqKSkKPiAgICAgICAgICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsKPiAgICAgICAgIGlmIChJU19FUlIob2JqKSkK
PiAtLSAKPiAyLjIwLjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
