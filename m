Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E594681F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 21:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280E08973E;
	Fri, 14 Jun 2019 19:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC1D8973E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 19:20:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16906884-1500050 for multiple; Fri, 14 Jun 2019 20:20:55 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHNdseC+x6XoD65SCAJ4Pgp_2S29uv7im+hXtp8qT6_iyQ@mail.gmail.com>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-35-chris@chris-wilson.co.uk>
 <CAM0jSHNdseC+x6XoD65SCAJ4Pgp_2S29uv7im+hXtp8qT6_iyQ@mail.gmail.com>
Message-ID: <156054005297.4079.8397050363428940488@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Jun 2019 20:20:53 +0100
Subject: Re: [Intel-gfx] [PATCH 34/39] drm/i915: Use vm->mutex for
 serialising GTT insertion
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMTQgMjA6MTQ6MjcpCj4gT24gRnJpLCAxNCBK
dW4gMjAxOSBhdCAwODoxMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IFNlcmlhbGlzaW5nIGluc2VydGlvbiBpbnRvIGVhY2ggb2YgdGhlIGds
b2JhbCBHVFQgYW5kIHBwR1RUIGFjY291bnRzIGZvcgo+ID4gYSBsYXJnZSBjaHVuayBvZiB0aGUg
Y3VycmVudCBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbiByZXF1aXJlZW1udHMuCj4gPiAoTm90
ZSB0aGF0IGl0IGlzIG5vdCBqdXN0IHRoZSBkcm1fbW0gLyBndHQgbWFuYWdlbWVudCBpdHNlbGYg
YmVpbmcKPiA+IHNlcmlhbGlzZWQsIGJ1dCB0aGUgcGluIGNvdW50IGFuZCB2YXJpb3VzIGZsYWdz
LikgUHJldmlvdXNseSwgdGhlIG1haW4KPiA+IGJsb2NrZXIgZm9yIHJlcGxhY2luZyB0aGlzIG11
dGV4IHdhcyB0aGUgcmVzZXQgaGFuZGluZywgYnV0IHdpdGggdGhlCj4gPiBhZHZlbnQgb2YgImxv
Y2tsZXNzIiByZXNldHMsIHdlIGNhbiBmcmVlbHkgdGFrZSB0aGUgdm0tPm11dGV4IGFuZCBibG9j
awo+ID4gd2FpdGluZyBmb3IgdGhlIEdQVSAod2l0aG91dCBmZWFyIG9mIGRlYWRsb2NrIGlmIHRo
ZSBHUFUgaGFuZ3MpLiBXZSBhbHNvCj4gPiBwcm9zY3JpYmUgYWxsb2NhdGlvbnMgdW5kZXJuZWF0
aCB2bS0+bXV0ZXgsIGFsbG93aW5nIHVzIHRvIHRha2UgdGhlCj4gPiBtdXRleCBpbnNpZGUgdGhl
IHNocmlua2VyLCBhdm9pZGluZyB0aGUgcmVjdXJzaXZlIHN0cnVjdF9tdXRleCB3ZQo+ID4gcHJl
dmlvdXNseSB1c2VkLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gCj4gW3NuaXBdCj4gCj4gPiBAQCAtMjQ4LDE2
ICsyNDgsNiBAQCB2bV9mYXVsdF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1m
KQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX3JwbTsKPiA+ICAgICAgICAgfQo+ID4KPiA+
IC0gICAgICAgcmV0ID0gaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoZGV2KTsKPiA+IC0g
ICAgICAgaWYgKHJldCkKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycl9yZXNldDsKPiA+IC0K
PiA+IC0gICAgICAgLyogQWNjZXNzIHRvIHNub29wYWJsZSBwYWdlcyB0aHJvdWdoIHRoZSBHVFQg
aXMgaW5jb2hlcmVudC4gKi8KPiA+IC0gICAgICAgaWYgKG9iai0+Y2FjaGVfbGV2ZWwgIT0gSTkx
NV9DQUNIRV9OT05FICYmICFIQVNfTExDKGk5MTUpKSB7Cj4gPiAtICAgICAgICAgICAgICAgcmV0
ID0gLUVGQVVMVDsKPiA+IC0gICAgICAgICAgICAgICBnb3RvIGVycl91bmxvY2s7Cj4gPiAtICAg
ICAgIH0KPiAKPiBJbnRlbnRpb25hbD8gUGVyaGFwcyBoYXJkZXIgdG8gZW5mb3JjZSBub3c/CgpS
ZW1vdmVkLCB0aGVuIHRob3VnaHQgb2YgaG93IHRvIGxvY2sgaXQgY29ycmVjdGx5LiBJIHdhcyBj
aGlja2VuaW5nIG91dAphdCBzZXRfY2FjaGVfbGV2ZWwsIGJ1dCBhbGwgaXQgcmVhbGx5IG5lZWRz
IGlzIG9iamVjdF9sb2NrIGFsdGhvdWdoCnRoZXJlJ3Mgc29tZSBzY29wZSB0byBtb3ZpbmcgdGhl
IGNhY2hlIGxldmVsIG9udG8gdGhlIHZtYSBhbmQgdGhlbiB3ZQp3b3VsZCBvbmx5IG5lZWQgdG8g
Y2hlY2sgYWZ0ZXIgcGlubmluZyB0aGUgdm1hIChzbyBsb25nIGFzIHRoZW4gYWxsb3cKd2FpdGlu
ZyBvbiBwaW5uZWQgdm1hIGZvciBzZXRfY2FjaGVfbGV2ZWwpLiBJIHRob3VnaHQgSSBtaWdodCBo
YXZlIGJlZW4KYWJsZSB0byBqdXN0aWZ5IGl0LCBidXQgb24gc2Vjb25kIHRob3VnaHRzIEkgdGhp
bmsgaXQgaXMgYSBtYWNoaW5lIGtpbGxlcgpmb3Igb2xkZXIgZ2VuIGlpcmMgc28gcHJvYmFibHkg
YmVzdCBub3QgbGVmdCBvcGVuLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
