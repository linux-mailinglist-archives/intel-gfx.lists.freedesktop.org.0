Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B264686C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 21:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007F6892A4;
	Fri, 14 Jun 2019 19:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD23892A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 19:58:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16907081-1500050 for multiple; Fri, 14 Jun 2019 20:58:11 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHNBM-ow8LnyBZe1tp7ZcAE1-V9LiGV9=svarQrqP4nhOQ@mail.gmail.com>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-36-chris@chris-wilson.co.uk>
 <CAM0jSHNBM-ow8LnyBZe1tp7ZcAE1-V9LiGV9=svarQrqP4nhOQ@mail.gmail.com>
Message-ID: <156054228965.4513.10521691270666765118@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Jun 2019 20:58:09 +0100
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Pin pages before waiting
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMTQgMjA6NTM6MjYpCj4gT24gRnJpLCAxNCBK
dW4gMjAxOSBhdCAwODoxMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4gQEAgLTY3LDEwICs2MSwxNyBAQCBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3dj
X2RvbWFpbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCBib29sIHdyaXRlKQo+ID4g
ICAgICAgICAgKiBjb250aW51ZSB0byBhc3N1bWUgdGhhdCB0aGUgb2JqIHJlbWFpbmVkIG91dCBv
ZiB0aGUgQ1BVIGNhY2hlZAo+ID4gICAgICAgICAgKiBkb21haW4uCj4gPiAgICAgICAgICAqLwo+
ID4gLSAgICAgICByZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7Cj4gPiArICAg
ICAgIHJldCA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXNfYXN5bmMob2JqKTsKPiA+ICAgICAg
ICAgaWYgKHJldCkKPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4KPiA+ICsgICAg
ICAgcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2JqLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSB8Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICh3cml0ZSA/IEk5MTVfV0FJVF9BTEwgOiAwKSwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQp
Owo+ID4gKyAgICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0X3VucGlu
Owo+ID4gKwo+IAo+IERvIHdlIHNvbWVob3cgcHJvcGFnYXRlIGEgcG90ZW50aWFsIGVycm9yIGZy
b20gYSB3b3JrZXIgdG8gdGhlCj4gb2JqZWN0X3dhaXQoKT8gT3Igc2hvdWxkIHdlIGJlIGxvb2tp
bmcgYXQgb2JqLT5tbS5wYWdlcyBoZXJlPwoKWWVhaCwgSSd2ZSBwcm9wYWdhdGVkIHN1Y2ggZXJy
b3JzIGVsc2V3aGVyZSAocHJpbmNpcGFsbHkgYWxvbmcgdGhlCmZlbmNlcykuIFdoYXQgeW91IGFy
ZSBzdWdnZXN0aW5nIGlzIHRhbnRhbW91bnQgdG8gbWFraW5nCmk5MTVfZ2VtX29iamVjdF93YWl0
KCkgcmVwb3J0IGFuIGVycm9yLCBhbmQgSSBoYXZlIGJhZCBtZW1vcmllcyBmcm9tIGFsbAp0aGUg
dW5oYW5kbGVkIC1FSU8gaW4gdGhlIHBhc3QuIEhvd2V2ZXIsIHRoYXQgZmVlbHMgdGhlIG5hdHVy
YWwgdGhpbmcgdG8KZG8sIHNvIGxldHMgZ2l2ZSBpdCBhIHdoaXJsLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
