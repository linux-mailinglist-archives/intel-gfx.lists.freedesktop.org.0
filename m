Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A82B67C6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 18:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7E46F3F6;
	Wed, 18 Sep 2019 16:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D220A6F3EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 16:10:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18534970-1500050 for multiple; Wed, 18 Sep 2019 17:10:28 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <30887414-d268-ff26-13a1-36fb924abdd4@linux.intel.com>
References: <20190916113808.30386-1-chris@chris-wilson.co.uk>
 <f9dd99e9-2a2b-0ccb-5bde-ddb3e2c52718@linux.intel.com>
 <156873347535.5729.10751385580169175179@skylake-alporthouse-com>
 <30887414-d268-ff26-13a1-36fb924abdd4@linux.intel.com>
Message-ID: <156882302627.5729.14761907964387151217@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 18 Sep 2019 17:10:26 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Verify the engine after acquiring
 the active.lock
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xOCAxNjo1NDozNikKPiAKPiBPbiAxNy8w
OS8yMDE5IDE2OjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTE3IDE1OjU5OjI1KQo+ID4+Cj4gPj4gT24gMTYvMDkvMjAxOSAxMjozOCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBXaGVuIHVzaW5nIHZpcnR1YWwgZW5naW5lcywgdGhl
IHJxLT5lbmdpbmUgaXMgbm90IHN0YWJsZSB1bnRpbCB3ZSBob2xkCj4gPj4+IHRoZSBlbmdpbmUt
PmFjdGl2ZS5sb2NrIChhcyB0aGUgdmlydHVhbCBlbmdpbmUgbWF5IGJlIGV4Y2hhbmdlZCB3aXRo
IHRoZQo+ID4+PiBzaWJsaW5nKS4gU2luY2UgY29tbWl0IDIyYjdhNDI2YmJlMSAoImRybS9pOTE1
L2V4ZWNsaXN0czogUHJlZW1wdC10by1idXN5IikKPiA+Pj4gd2UgbWF5IHJldGlyZSBhIHJlcXVl
c3QgY29uY3VycmVudGx5IHdpdGggcmVzdWJtaXR0aW5nIGl0IHRvIEhXLCB3ZSBuZWVkCj4gPj4+
IHRvIGJlIGV4dHJhIGNhcmVmdWwgdG8gdmVyaWZ5IHdlIGFyZSBob2xkaW5nIHRoZSBjb3JyZWN0
IGxvY2sgZm9yIHRoZQo+ID4+PiByZXF1ZXN0J3MgYWN0aXZlIGxpc3QuIFRoaXMgaXMgc2ltaWxh
ciB0byB0aGUgaXNzdWUgd2Ugc2F3IHdpdGgKPiA+Pj4gcmVzY2hlZHVsaW5nIHRoZSB2aXJ0dWFs
IHJlcXVlc3RzLCBzZWUgc2NoZWRfbG9ja19lbmdpbmUoKS4KPiA+Pj4KPiA+Pj4gT3IgZWxzZToK
PiA+Pj4KPiA+Pj4gPDQ+IFs4NzYuNzM2MTI2XSBsaXN0X2FkZCBjb3JydXB0aW9uLiBwcmV2LT5u
ZXh0IHNob3VsZCBiZSBuZXh0IChmZmZmODg4M2Y5MzFhMWY4KSwgYnV0IHdhcyBkZWFkMDAwMDAw
MDAwMTAwLiAocHJldj1mZmZmODg4MzYxZmZhNjEwKS4KLi4uCj4gPj4+IDw0PiBbODc2LjczNjQx
NV0gbGlzdF9kZWwgY29ycnVwdGlvbi4gcHJldi0+bmV4dCBzaG91bGQgYmUgZmZmZjg4ODM2MWZm
Y2ExMCwgYnV0IHdhcyBmZmZmODg4NDBhYzJjNzMwCgo+ID4gWWVzLiBTbyBwcmVlbXB0LXRvLWJ1
c3kgaW50cm9kdWNlcyBhIHdpbmRvdyB3aGVyZSB0aGUgcmVxdWVzdCBpcyBzdGlsbAo+ID4gb24g
SFcgYnV0IHdlIGhhdmUgcmV0dXJuZWQgaXQgYmFjayB0byB0aGUgc3VibWlzc2lvbiBxdWV1ZS4g
V2UgY2F0Y2ggdXAKPiA+IHdpdGggdGhlIEhXIG9uIHRoZSBuZXh0IHByb2Nlc3NfY3NiLCBidXQg
aXQgbWF5IGhhdmUgY29tcGxldGVkIHRoZQo+ID4gcmVxdWVzdCBpbiB0aGUgbWVhbiB0aW1lIChp
dCBpcyBqdXN0IG5vdCBhbGxvd2VkIHRvIGFkdmFuY2UgYmV5b25kIHRoZQo+ID4gc3Vic2VxdWVu
dCBicmVhZGNydW1iIGFuZCBzbyBwcmV2ZW50ZWQgZnJvbSBvdmVydGFraW5nIG91ciBrbm93bGVk
Z2Ugb2YKPiA+IFJJTkdfVEFJTCBhbmQgc28gd2UgYXZvaWQgdGVsbGluZyB0aGUgSFcgdG8gZ28g
ImJhY2t3YXJkcyIuKS4KPiAKPiBXb3VsZCBpdCBiZSBzdWZmaWNpZW50IHRvIGRvOgo+IAo+ICAg
IGVuZ2luZSA9IFJFQURfT05DRShycS0+ZW5naW5lKTsKPiAgICBzcGluX2xvY2soLi4uKTsKPiAg
ICBsaXN0X2RlbCguLi4pOwo+ICAgIHNwaW5fdW5sb2NrKGVuZ2luZS0+YWN0aXZlLmxvY2spOwo+
IAo+IFRvIGVuc3VyZSB0aGUgc2FtZSBlbmdpbmUgaXMgdXNlZD8gQWx0aG91Z2ggdGhlIG9vcHMg
aXMgbm90IGFib3V0IAo+IHNwaW5sb2NrIGJ1dCBsaXN0IGNvcnJ1cHRpb24uIEhvdyBkb2VzIHRo
ZSBsaXN0IGdldCBjb3JydXB0IHRob3VnaD8gCj4gbGlzdF9kZWwgZG9lcyBub3QgY2FyZSBvbiB3
aGljaCBsaXN0IHRoZSByZXF1ZXN0IGlzLi4gSWYgaXQgaXMgcmVhbGx5IAo+IGtleSB0byBoYXZl
IHRoZSBjb3JyZWN0IGxvY2ssIHRoZW4gd2h5IGl0IGlzIGVub3VnaCB0byByZS1jaGVjayB0aGUg
Cj4gZW5naW5lIGFmdGVyIHRha2luZyB0aGUgbG9jaz8gV2h5IHJxLT5lbmdpbmUgY291bGRuJ3Qg
Y2hhbmdlIHVuZGVyIHRoZSAKPiBsb2NrIGFnYWluPyBycS0+ZW5naW5lIGRvZXMgZ2V0IHVwZGF0
ZWQgdW5kZXIgdGhlIHZlcnkgbG9jaywgbm8/CgpEb24ndCBmb3JnZXQgdGhhdCBsaXN0X2RlbCBj
aGFuZ2VzIHRoZSBsaXN0IGFyb3VuZCBpdDoKbGlzdF9kZWwoKSB7CglsaXN0LT5wcmV2LT5uZXh0
ID0gbGlzdC0+bmV4dDsKCWxpc3QtPm5leHQtPnByZXYgPSBsaXN0LT5wcmV2Owp9CgpycS0+ZW5n
aW5lIGNhbid0IGNoYW5nZSB1bmRlciB0aGUgcmVhbC0+YWN0aXZlLmxvY2ssIGFzIHRoZSBhc3Np
Z25tZW50CnRvIHJxLT5lbmdpbmUgPSAodmlydHVhbCwgcmVhbCkgaXMgbWFkZSB1bmRlciB0aGUg
cmVhbC0+YWN0aXZlLmxvY2suCgpleGVjbGlzdHNfZGVxdWV1ZToKCXJlYWwtPmFjdGl2ZS5sb2Nr
Cgl2ZS0+YWN0aXZlLmxvY2sKCl9fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHM6CglyZWFsLT5h
Y3RpdmUubG9jawoKSG1tLiBJIHRydXN0IHRoZSB0cmljayBlbXBsb3llZCBpbiB0aGUgcGF0Y2gg
aXMgd2VsbCBwcm92ZW4gYnkgdGhpcwpwb2ludCwgYnV0IGlmIHdlIHRvb2sgdGhlIG5lc3RlZCB2
ZSBsb2NrIGluc2lkZSBfX3Vud2luZCwgZG8gd2UgbmVlZCB0bwp3b3JyeS4gSG1tLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
