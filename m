Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A6B8BFFB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 19:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BFB6E145;
	Tue, 13 Aug 2019 17:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C65B89CD8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 17:54:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18018917-1500050 for multiple; Tue, 13 Aug 2019 18:54:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190813174121.129593-1-stuart.summers@intel.com>
In-Reply-To: <20190813174121.129593-1-stuart.summers@intel.com>
Message-ID: <156571886655.2301.17809116448263908293@skylake-alporthouse-com>
Date: Tue, 13 Aug 2019 18:54:26 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use render class for
 MI_SET_CONTEXT
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0xMyAxODo0MToxOSkKPiBSZXBsYWNlIEdF
TV9CVUdfT04gd2l0aCBleHBsaWNpdCBjaGVjayBmb3IgcmVuZGVyIGNsYXNzCj4gd2hlbiBkb2lu
ZyB0aGUga2VybmVsIGNvbnRleHQgc3dpdGNoLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBT
dW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+IGluZGV4IDQwOWQ3NjRmOGM2ZC4uMDRlYTliYmI4OGNl
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+IEBA
IC0xNzgxLDkgKzE3ODEsNyBAQCBzdGF0aWMgaW50IHN3aXRjaF9jb250ZXh0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQo+ICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICB9Cj4gIAo+IC0gICAg
ICAgaWYgKHJxLT5od19jb250ZXh0LT5zdGF0ZSkgewo+IC0gICAgICAgICAgICAgICBHRU1fQlVH
X09OKGVuZ2luZS0+aWQgIT0gUkNTMCk7Cj4gLQo+ICsgICAgICAgaWYgKGVuZ2luZS0+Y2xhc3Mg
PT0gUkVOREVSX0NMQVNTICYmIHJxLT5od19jb250ZXh0LT5zdGF0ZSkgewoKSXQgd291bGQgY29t
ZSBhcyBzb21lIHN1cnByaXNlIGZvciB0aGlzIG5vdCB0byBiZSByY3MwLiBJIGRvbid0IHRoaW5r
IHdlCmFyZSBwcmVwYXJlZCBmb3IgdGhhdCBvbiBsZWdhY3kgSFcgOikKLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
