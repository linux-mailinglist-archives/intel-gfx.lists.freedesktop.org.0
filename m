Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F53AAFC5B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D906EAE5;
	Wed, 11 Sep 2019 12:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6AE66EAE4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:19:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18451028-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:19:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <CAKMK7uHAng4bZGP0B_WC-hJ4z+CsTi0FFxmqOvQUQnDRZWTD2Q@mail.gmail.com>
 <D5FCAD9A-8C9C-48ED-8ACD-40D24A572AF0@intel.com>
In-Reply-To: <D5FCAD9A-8C9C-48ED-8ACD-40D24A572AF0@intel.com>
Message-ID: <156820434402.2643.4250597472608226193@skylake-alporthouse-com>
Date: Wed, 11 Sep 2019 13:19:04 +0100
Subject: Re: [Intel-gfx] FW: [PATCH 1/5] drm/i915: Allow i915 to manage the
 vma offset nodes instead of drm core
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

UXVvdGluZyBCYWxlc3RyaWVyaSwgRnJhbmNlc2NvICgyMDE5LTA5LTExIDEzOjAzOjI1KQo+IO+7
v09uIDA0LzA5LzIwMTksIDEzLjMzLCAiSW50ZWwtZ2Z4IG9uIGJlaGFsZiBvZiBEYW5pZWwgVmV0
dGVyIiA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIG9uIGJlaGFsZiBv
ZiBkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+IAo+ICAgICBPbiBNb24sIEF1ZyAyNiwgMjAxOSBh
dCAyOjIxIFBNIEFiZGllbCBKYW51bGd1ZQo+ICAgICA+IC0gICAgICAgcmV0ID0gY3JlYXRlX21t
YXBfb2Zmc2V0KG9iaik7Cj4gICAgID4gLSAgICAgICBpZiAocmV0ID09IDApCj4gICAgID4gLSAg
ICAgICAgICAgICAgICpvZmZzZXQgPSBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJm9iai0+YmFz
ZS52bWFfbm9kZSk7Cj4gICAgID4gKyAgICAgICBtbW8gPSBremFsbG9jKHNpemVvZigqbW1vKSwg
R0ZQX0tFUk5FTCk7Cj4gICAgIAo+ICAgICBJIGdvdCB0aHJvd24gb2ZmIGEgYnVuY2ggb2YgdGlt
ZXMgaGVyZSByZWFkaW5nIHRoZSBjb2RlLCBidXQgSSB0aGluayBJCj4gICAgIGdvdCB0aGlzIHJp
Z2h0IG5vdy4KPiAgICAgCj4gICAgIFdoeSBleGFjdGx5IGRvIHdlIHdhbnQgbXVsdGlwbGUgdm1h
IG9mZnNldHM/IFllcyB0aGlzIG1ha2VzIGl0IGEKPiAgICAgZHJvcC1pbiByZXBsYWNlbWVudCBm
b3IgdGhlIG9sZCBjcHUgbW1hcCBpb2N0bCwgd2hpY2ggd2FzIGEgYml0Cj4gICAgIGR1YmlvdXMg
ZGVzaWduLiBCdXQgaWYgd2UgZ28gYWxsIG5ldyBoZXJlLCBJIHJlYWxseSB3b25kZXIgYWJvdXQg
d2h5Cj4gICAgIHRoaXMgaXMgbmVjZXNzYXJ5LiBObyBvdGhlciBkaXNjcmV0ZSBkcml2ZXIgbmVl
ZHMgdGhpcywgdGhleSBhbGwgZml4Cj4gICAgIHRoZSBtbWFwIG1vZGUgZm9yIHRoZSBsaWZldGlt
ZSBvZiBhbiBvYmplY3QsIGJlY2F1c2UgZmx1c2hpbmcgc3R1ZmYgaXMKPiAgICAgYXMgZXhwZW5z
aXZlIGFzIGp1c3QgcmVhbGxvY2F0aW5nIChvciBhdCBsZWFzdCBjbG9zZSBlbm91Z2gpLgo+ICAg
ICAKPiAgICAgSSB0aGluayB1cyBnb2luZyBvbmNlIGFnYWluIG91ciBzZXBhcmF0ZSByb3V0ZSBo
ZXJlIG5lZWRzIGEgbG90IG1vcmUKPiAgICAganVzdGlmaWNhdGlvbiB0aGFuIGp1c3QgIndlJ3Zl
IGFjY2lkZW50YWxseSBlbmRlZCB1cCB3aXRoIHVhcGkgbGlrZQo+ICAgICB0aGlzIDEwIHllYXJz
IGFnbyIuCgpUaGF0J3MgZXhhY3RseSB0aGUgd2hvbGUgcG9pbnQsIHRvIHJlcGxhY2UgdGhlIHVh
cGkgd2UgYWNjaWRlbnRhbGx5CmVuZGVkIHVwIHdpdGggMTAgeWVhcnMgYWdvIHdpdGggdGhlIGFw
aSB0aGF0IGRvZXNuJ3QgY2F1c2UgdmFsZ3JpbmQgdG8KY29tcGxhaW4sIGlzIGVhc2lseSBleHRl
bnNpYmxlIGFuZCBzdXBwb3J0cyBhbGwgbGVnYWN5IHVzZWNhc2VzIHdoaWNoCnNob3VsZCBiZSBh
IHZlcnkgZ29vZCBwb3NpdGlvbiB0byBiZSBpbiB0byBzdXBwb3J0IHVua25vd24gZnV0dXJlCnVz
ZWNhc2VzIGFzIHdlbGwuIExldHRpbmcgdXNlcnNwYWNlIGNvbnRyb2wgdGhlaXIgbW1hcGluZ3Mg
aXMgdmVyeQpwb3dlcmZ1bCwgYW5kIHdlIGRlZmluaXRlbHkgZG8gbm90IHdhbnQgdG8gYmUgbGlt
aXRpbmcgdGhlaXIKZmxleGliaWxpdHkuCgpUaGF0IG5vIG90aGVyIGRyaXZlciBldmVuIHNlZW1z
IHRvIGFsbG93IG11bHRpcGxlIG1tYXBzLCBhbmQgc28gaGFzCm5vdCBkZXZlbG9wZWQgYSBkZXNp
cmUgdG8gbWFuYWdlIG11bHRpcGxlIHZtYSBwZXIgb2JqZWN0IGRvZXMgbm90IHNlZW0KdG8gYmUg
YSByZWFzb24gdG8gbGltaXQgb3Vyc2VsdmVzLiBUaGUgaW5mcmFzdHJ1Y3R1cmUgYWxsIHN1cHBv
cnRzIGl0Owp0aGUgb25seSB0aGluZyB0aGF0IGlzIGF0IG9kZHMgaXMgdGhlIGRlc2lyZSB0byBm
b3JjZSB0aGUgbG93ZXN0IGNvbW1vbgpkZW5vbWluYXRvciBhcyB0aGUgZGVmYWN0byBzdGFuZGFy
ZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
