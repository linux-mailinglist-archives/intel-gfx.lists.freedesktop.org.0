Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 612452CF1A7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 17:14:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85BB16E17F;
	Fri,  4 Dec 2020 16:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97ED76E17F
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 16:14:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23216895-1500050 for multiple; Fri, 04 Dec 2020 16:14:07 +0000
MIME-Version: 1.0
In-Reply-To: <X8pdR3wUue1tNhJJ@intel.com>
References: <20201127220548.3713-1-chris@chris-wilson.co.uk>
 <20201201160517.GX6112@intel.com>
 <160686233758.408.13656920081137084390@build.alporthouse.com>
 <X8pdR3wUue1tNhJJ@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Fri, 04 Dec 2020 16:14:05 +0000
Message-ID: <160709844559.20460.2447602113685186052@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable outputs during unregister
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTItMDQgMTY6MDE6MTEpCj4gT24gVHVlLCBE
ZWMgMDEsIDIwMjAgYXQgMTA6Mzg6NTdQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTItMDEgMTY6MDU6MTcpCj4gPiA+IE9uIEZy
aSwgTm92IDI3LCAyMDIwIGF0IDEwOjA1OjQ4UE0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToK
PiA+ID4gPiBTd2l0Y2ggb2ZmIHRoZSBzY2Fub3V0IGR1cmluZyBkcml2ZXIgdW5yZWdpc3Rlciwg
c28gd2UgY2FuIHNodXRkb3duIHRoZQo+ID4gPiA+IEhXIGltbWVkaWF0ZWx5IGZvciB1bmJpbmQu
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgfCAxICsKPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiA+ID4gaW5kZXggMzIw
ODU2YjY2NWExLi42MmQxODhlNWNiOGQgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKPiA+ID4gPiBAQCAtNzM4LDYgKzczOCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJp
dmVyX3VucmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4gPiA+
ICAgICAgICAqIGV2ZW50cy4KPiA+ID4gPiAgICAgICAgKi8KPiA+ID4gPiAgICAgICBkcm1fa21z
X2hlbHBlcl9wb2xsX2ZpbmkoJmRldl9wcml2LT5kcm0pOwo+ID4gPiA+ICsgICAgIGRybV9hdG9t
aWNfaGVscGVyX3NodXRkb3duKCZkZXZfcHJpdi0+ZHJtKTsKPiA+ID4gCj4gPiA+IExvb2tzIGxp
a2Ugd2UgYWxyZWFkeSBoYXZlIHRoaXMgaW4gcmVtb3ZlKCkuIElzIHRoYXQgdG9vIGxhdGU/Cj4g
PiAKPiA+IEZvciB0aGUgb3BlcmF0aW9ucyB3ZSBkbyBkdXJpbmcgdW5iaW5kLCB5ZXMuCj4gPiAK
PiA+IEZvciB0aGUgY29yZV9ob3RwbHVnL3JlYmluZCBkYW5jZSwgd2UgaGF2ZSB0byByZXNldCB0
aGUgR1BVIHdoaWxlIHdlCj4gPiBzdGlsbCBoYXZlIHJ1bnRpbWUtcG0gb3BlcmF0aW9uYWwgYW5k
IGhhdmUgcHVzaGVkIHRoZSByZXNldCB0bwo+ID4gdW5yZWdpc3RlciAoZnJvbSBleHBlcmltZW50
YXRpb24gdGhhdCdzIGFzIGxhdGUgYXMgd2UgY2FuIHB1dCBpdCB3aGVyZQo+ID4gdGhlIEdQVSB3
b3JrcyBhZnRlciByZWJpbmRpbmcgYW5kIHdlIGRvbid0IGNvcnJ1cHQgdGhlIHN5c3RlbSBvbiB1
bmJpbmQsCj4gPiB3aXRoIHRoZSBjdXJyZW50IGhvb2tzKS4gWW91IGNhbiBndWVzcyBob3cgd2Vs
bCBnZW4zIGxpa2VzIHRoYXQuCj4gPiAKPiA+IEJ1dCBJIGRvbid0IHRoaW5rIHRoZSByaWdodCBh
bnN3ZXIgaXMgdG8gc2tpcCB0aGUgcmVzZXQgZm9yIGdlbjMuCj4gPiBTdXBwb3NlIHdlIGVuYWJs
ZSBjb250ZXh0IHN1cHBvcnQgZm9yIGdlbjMsIHRoZW4gdGhlIHJlc2V0IHdvdWxkIGJlCj4gPiBy
ZXF1aXJlZCBhcyB3ZWxsLCBhbmQgc28gd2Ugd291bGQgc3RpbGwgbmVlZCB0aGUgd2hvbGUgZGlz
cGxheQo+ID4gc2hlbmFuaWdhbnMgdG8gdHVybiBpdCBvZmYuIE1vdmluZyB0aGUgbW9kZXNldCB0
byB0dXJuIHRoZSBkaXNwbGF5IG9mZgo+ID4gdG8gdGhlIGVuZCBvZiB1c2Vyc3BhY2Ugc2VlbXMg
cmVhc29uYWJsZS4KPiAKPiBZZWFoLCBqdXN0IGEgYml0IG9kZCB0byBoYXZlIHRoZSBzYW1lIGNh
bGwgdHdpY2UgaW4gdGhlCj4gc2VxdWVuY2UuIENhbiB3ZSByZW1vdmUgdGhlIHNlY29uZCBjYWxs
IGF0IGxlYXN0PwoKSSB0aGluayB3ZSBjYW4sIGJ1dCBJIGFtIHN1ZmZpY2llbnRseSBwYXJhbm9p
ZCB0byBsZWF2ZSBpdC4KSSBwcmVzdW1lIGlmIGl0IGlzIGEgbm8tb3AsIGl0IHdpbGwgcmV0dXJu
IHdpdGhvdXQgdG91Y2hpbmcgSFc/CiAKPiBBbHNvIGEgYml0IGFubm95aW5nIHRoZSB1bmxvYWQg
c2VxdWVuY2Ugbm8gbG9uZ2VyIG1hdGNoZXMgdGhlCj4gc3VzcGVuZCBzZXF1ZW5jZS4gV2VsbCwg
SSBndWVzcyBpdCB3YXMgbmV2ZXIgMTAwJSBhbnl3YXkgYnV0Cj4gSSB0aGluayBpdCB3YXMgYSBi
aXQgY2xvc2VyIGJlZm9yZSB0aGlzIHBhdGNoLiBCdXQgdGhlIHdob2xlCj4gdGhpbmcgaXMgcmF0
aGVyIG1lc3N5IGFueXdheSBzbyBJIGd1ZXNzIHQncyBub3Qgc2lnbmlmaWNhbnRseQo+IHdvcnNl
IGFmdGVyIHRoaXMuCgpZZXMsIEkgZmVlbCB0aGluZ3MgaGF2ZSBiZWVuIHRocm93biBpbnRvIGEg
Yml0IG9mIGRpc2FycmF5IGJ5CmhhcGhhemFyZGx5IGZpeGluZyB1bmJpbmQuCgpUaGUgbGFzdCog
cmVtYWluaW5nIGZseSBpbiB0aGUgb2ludG1lbnQgaXMgcmViaW5kaW5nIGlvbW11LiBPbmNlIHdl
IGhhdmUKdGhhdCBzb2xpZCAoYW5kIHRoZSBzeXN0ZW0gc3RvcHMgcmFuZG9tbHkgZWF0aW5nIGl0
c2VsZiAxLTEwIG1pbnV0ZXMKYWZ0ZXIgdGhlIHRlc3QgcGFzc2VzKSwgd2Ugc2hvdWxkIGJlIGlu
IGEgbXVjaCBiZXR0ZXIgc3BvdCB0byBzYWZlbHkKcmVtb3ZlIGR1cGxpY2F0aW9uIGFuZCByZWZp
bmUgdGhlIGZsb3cuCgoqIHRoYXQgSSBhbSBhd2FyZSBvZi4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
