Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E4798699
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 23:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE386EA18;
	Wed, 21 Aug 2019 21:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2136EA18
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 21:27:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18219691-1500050 for multiple; Wed, 21 Aug 2019 22:27:33 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHO87Jnd5mLCTTgNBdZUSUN5UNa7XwT1ztjOOmDB2DOePw@mail.gmail.com>
References: <20190821155728.2839-1-chris@chris-wilson.co.uk>
 <20190821155728.2839-5-chris@chris-wilson.co.uk>
 <CAM0jSHO87Jnd5mLCTTgNBdZUSUN5UNa7XwT1ztjOOmDB2DOePw@mail.gmail.com>
Message-ID: <156642285106.20466.6918052465121723973@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 22:27:31 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Replace i915_vma_put_fence()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMjEgMjI6MDU6NTUpCj4gT24gV2VkLCAyMSBB
dWcgMjAxOSBhdCAxNjo1OSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IEF2b2lkIGNhbGxpbmcgaTkxNV92bWFfcHV0X2ZlbmNlKCkgYnkgdXNp
bmcgb3VyIGFsdGVybmF0ZSBwYXRocyB0aGF0Cj4gPiBiaW5kIGEgc2Vjb25kYXJ5IHZtYSBhdm9p
ZGluZyB0aGUgb3JpZ2luYWwgZmVuY2VkIHZtYS4gRm9yIHRoZSBmZXcKPiA+IGluc3RhbmNlcyB3
aGVyZSB3ZSBuZWVkIHRvIHJlbGVhc2UgdGhlIGZlbmNlIChpLmUuIG9uIGJpbmRpbmcgd2hlbiB0
aGUKPiA+IEdHVFQgcmFuZ2UgYmVjb21lcyBpbnZhbGlkKSwgcmVwbGFjZSB0aGUgcHV0X2ZlbmNl
IHdpdGggYSByZXZva2VfZmVuY2UuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gPHNuaXA+Cj4gCj4gPiBAQCAtNTU3LDIw
ICs1NTMsMTYgQEAgaTkxNV9nZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCj4gPiAgICAgICAgICAgICAgICAgd2FrZXJlZiA9IGludGVsX3J1bnRpbWVf
cG1fZ2V0KHJwbSk7Cj4gPiAgICAgICAgIH0KPiA+Cj4gPiAtICAgICAgIHZtYSA9IGk5MTVfZ2Vt
X29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQSU5fTUFQUEFCTEUgfAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUElOX05PTkJMT0NLIC8qIE5PV0FSTiAqLyB8Cj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSU5fTk9FVklDVCk7Cj4gPiArICAg
ICAgIHZtYSA9IEVSUl9QVFIoLUVOT0RFVik7Cj4gPiArICAgICAgIGlmIChpOTE1X2dlbV9vYmpl
Y3RfaXNfdGlsZWQob2JqKSkKPiA+ICsgICAgICAgICAgICAgICB2bWEgPSBpOTE1X2dlbV9vYmpl
Y3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLAo+IAo+IEhtbT8KCldlbGwgc3BvdHRlZC4gSnVz
dCBzaG93cyBob3cgb2Z0ZW4gd2UgaGl0IHRoaXMgcGF0aCEKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
