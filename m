Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8B67A2D9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0273F89BF0;
	Tue, 30 Jul 2019 08:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA8D89BF0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:10:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17721844-1500050 for multiple; Tue, 30 Jul 2019 09:09:58 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190729234727.28286-6-daniele.ceraolospurio@intel.com>
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-6-daniele.ceraolospurio@intel.com>
Message-ID: <156447419713.6373.2255802324339564953@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 09:09:57 +0100
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/uc: move uc_resume under
 gt_resume
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMwIDAwOjQ3OjI2KQo+IGlu
dGVsX3VjIGlzIHBhcnQgb2YgaW50ZWxfZ3Qgc28gaXQgbWFrZXMgbG9naWNhbCBzZW5zZSBmb3Ig
aXQgdG8gYmUKPiByZXN1bWVkIGFzIHBhcnQgb2YgaXQuIE5vdGUgdGhhdCwgc2luY2UgZ3RfcmVz
dW1lIGlzIGFsc28gY2FsbGVkIGR1cmluZwo+IHRoZSBpbml0IGZsb3csIGEgc3RhdGUgdmFyaWFi
bGUgaGFzIGJlZW4gYWRkZWQgdG8gaW50ZWxfdWMgdG8gYXZvaWQKPiBhc2tpbmcgYW4gYWxyZWFk
eSBydW5uaW5nIEd1QyB0byByZXN1bWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFs
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYyB8ICAyIC0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3BtLmMgIHwgIDMgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMgIHwgMTAgKysrKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Yy5oICB8ICAyICsrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwo+IGlu
ZGV4IGI1NTYxY2JkYzVlYS4uMjU2MTBkZTM5NjFiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3BtLmMKPiBAQCAtMjY1LDggKzI2NSw2IEBAIHZvaWQgaTkxNV9nZW1fcmVz
dW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgICAgICAgaWYgKGludGVsX2d0
X3Jlc3VtZSgmaTkxNS0+Z3QpKQo+ICAgICAgICAgICAgICAgICBnb3RvIGVycl93ZWRnZWQ7Cj4g
IAo+IC0gICAgICAgaW50ZWxfdWNfcmVzdW1lKCZpOTE1LT5ndC51Yyk7Cj4gLQo+ICAgICAgICAg
LyogQWx3YXlzIHJlbG9hZCBhIGNvbnRleHQgZm9yIHBvd2Vyc2F2aW5nLiAqLwo+ICAgICAgICAg
aWYgKCFpOTE1X2dlbV9sb2FkX3Bvd2VyX2NvbnRleHQoaTkxNSkpCj4gICAgICAgICAgICAgICAg
IGdvdG8gZXJyX3dlZGdlZDsKClRoaXMgc2VxdWVuY2UgaXRzZWxmIGRvZXMgbm90IGJlbG9uZyB0
byBpOTE1X2dlbV9yZXN1bWUoKSBhbmQgbmVlZHMgdG8KYmUgbGlmdGVkIHRvIGludGVsX2d0X3Jl
c3VtZSAodGhhdCBpcyBlc3RhYmxpc2hpbmcgdGhlIGJhc2VsaW5lIEdUIHBvd2VyCmNvbnRleHQp
LiBTbyBJIHdvdWxkIHJhdGhlciBwb3N0cG9uZSB0aGlzIHRvIHRyeSBhbmQgYXZvaWQgaGF2aW5n
IHRvCmludHJvZHVjZSBib29sIHN1c3BlbmRlZCBpZiBhdCBhbGwgcG9zc2libGUuCgpBbm90aGVy
IHJ1bGUgb2YgdGh1bWIgdG8gY29uc2lkZXIgaXMgdGhhdCB3ZSBzaG91bGQgYmUgYWJsZSB0byB0
aHJvdyBndAppbml0aWFsaXNhdGlvbiBpbnRvIGFuIGFzeW5jIHRhc2sgKGFuZCBJJ20gY29uc2lk
ZXJpbmcgYW4gYXN5bmMgdGFzawpwZXIgZW5naW5lLCBhbHRob3VnaCBmb3IgYSBsYXJnZSBwYXJ0
IHdlIGNhbiBhY2hpZXZlIGFzeW5jaHJvbmljaXR5IHZpYQpIVyBxdWV1ZXMpLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
