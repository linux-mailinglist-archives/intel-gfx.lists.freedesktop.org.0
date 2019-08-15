Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719DD8E584
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 09:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD3A6E8B7;
	Thu, 15 Aug 2019 07:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295FD6E8B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 07:28:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18147100-1500050 for multiple; Thu, 15 Aug 2019 08:28:04 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190815072301.GE7444@phenom.ffwll.local>
References: <20190814124933.19056-2-daniel.vetter@ffwll.ch>
 <20190814184941.18355-1-daniel.vetter@ffwll.ch>
 <156580907713.2301.12392861013470996181@skylake-alporthouse-com>
 <20190815072301.GE7444@phenom.ffwll.local>
Message-ID: <156585408212.5838.2352101028159868521@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 15 Aug 2019 08:28:02 +0100
Subject: Re: [Intel-gfx] [PATCH] RFC: drm/i915: Switch obj->mm.lock lockdep
 annotations on its head
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTE1IDA4OjIzOjAxKQo+IE9uIFdlZCwgQXVn
IDE0LCAyMDE5IGF0IDA3OjU3OjU3UE0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1
b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0wOC0xNCAxOTo0OTo0MSkKPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+ID4gPiBpbmRl
eCBkNDc0YzZhYzQxMDAuLjFlYTNjM2M5NmE1YSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAo+ID4gPiBAQCAtMTU3
LDcgKzE1NywxNSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4gPiA+ICAgICAgICAg
dW5zaWduZWQgaW50IHBpbl9nbG9iYWw7Cj4gPiA+ICAKPiA+ID4gICAgICAgICBzdHJ1Y3Qgewo+
ID4gPiAtICAgICAgICAgICAgICAgc3RydWN0IG11dGV4IGxvY2s7IC8qIHByb3RlY3RzIHRoZSBw
YWdlcyBhbmQgdGhlaXIgdXNlICovCj4gPiA+ICsgICAgICAgICAgICAgICAvKgo+ID4gPiArICAg
ICAgICAgICAgICAgICogUHJvdGVjdHMgdGhlIHBhZ2VzIGFuZCB0aGVpciB1c2UuCj4gPiAKPiA+
ICJUaGVpciB1c2UiIGlzIHN0aWxsIGEgbWlzbGVhZGluZyBzdWdnZXN0IG9mIG1pbmUuIFRoaXMg
c2hvdWxkIGJlCj4gPiAicHJvdGVjdHMgdGhlIHBpbm5pbmcgb2YgcGFnZXMiLiBUaGUgY291cGxl
IG9mIG90aGVyIHRoaW5ncyBpdCBpcyB1c2VkCj4gPiBmb3IgYXJlIHRpZWQgdG8gdGhlIGNvbmNl
cHQgb2YgdGhlIHBhZ2VzIGJlaW5nIHBpbm5lZDsgZnVydGhlciB1c2Ugc2hvdWxkCj4gPiBiZSBk
aXNjb3VyYWdlZDsgZGlyZWN0IHVzZSBwcm9oaWJpdGVkLgo+IAo+IFNvIHNvbWV0aGluZyBsaWtl
ICJQcm90ZWN0cyB0aGUgcGlubmluZyBvZiBwYWdlcy4gRG8gbm90IHVzZSBkaXJlY3RseSwgYnV0
Cj4gaW5zdGVhZCBnbyB0aHJvdWdoIHRoZSBnZXQvcHV0X3BhZ2VzIGFuZCBwaW4vdW5waW4gaW50
ZXJmYWNlcy4iIFRoZXJlJ3MgYQo+IGZldyB0b28gbWFueSBvZiB0aG9zZSB0byBsaXN0IHRoZW0g
YWxsIGltbyAuLi4KCkkgd291bGQgc2F5IG9ubHkgcGluL3VucGluLiBnZXQvcHV0IGlzIHRoZSBm
b3IgaW1wbGVtZW50YXRpb24uCgpGd2l3LCBlbHNld2hlcmUgd2UgYWRvcHRlZCB0aGUgbmFtZSBw
aW5fbXV0ZXggLyBwaW5fY291bnQuIEJ1dCB0aGVyZSdzCmFsc28gdmFyaWF0aW9ucyBvbiB0aGF0
IG5hbWluZyBzY2hlbWUuIFRoZSBwYXR0ZXJuIG9mICJ0aGF0IHdobyBpcyBiZWluZwpwaW5uZWQg
bWF5IHVucGluIG90aGVycyIgaXMgcmVwZWF0aW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
