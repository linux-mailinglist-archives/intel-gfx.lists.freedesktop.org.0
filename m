Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C68E77A2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49016E99C;
	Mon, 28 Oct 2019 17:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB626E99C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 17:33:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18996905-1500050 for multiple; Mon, 28 Oct 2019 17:33:55 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191028164646.GR1208@intel.com>
References: <20191028163950.9429-1-matthew.auld@intel.com>
 <20191028164646.GR1208@intel.com>
Message-ID: <157228403288.3489.13752814135679745018@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 28 Oct 2019 17:33:52 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/blt: fixup block_size rounding
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMTAtMjggMTY6NDY6NDYpCj4gT24gTW9uLCBP
Y3QgMjgsIDIwMTkgYXQgMDQ6Mzk6NTBQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4g
VGhlcmUgaXMgbm90aGluZyB0byBzYXkgdGhhdCB0aGUgb2JqLT5iYXNlLnNpemUgaXMgYWN0dWFs
bHkgYSBtdWx0aXBsZQo+ID4gb2YgdGhlIGJsb2NrX3NpemUuCj4gPiAKPiA+IFJlcG9ydGVkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgfCA0ICsrLS0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKPiA+IGluZGV4IDUx
NmU2MWU5OTIxMi4uNTU5N2YxMzQ1YTYzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwo+ID4gQEAgLTMwLDcgKzMwLDcgQEAgc3Ry
dWN0IGk5MTVfdm1hICppbnRlbF9lbWl0X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCj4gPiAgICAgICBHRU1fQlVHX09OKGludGVsX2VuZ2luZV9pc192aXJ0dWFsKGNlLT5l
bmdpbmUpKTsKPiA+ICAgICAgIGludGVsX2VuZ2luZV9wbV9nZXQoY2UtPmVuZ2luZSk7Cj4gPiAg
Cj4gPiAtICAgICBjb3VudCA9IGRpdl91NjQodm1hLT5zaXplLCBibG9ja19zaXplKTsKPiA+ICsg
ICAgIGNvdW50ID0gRElWNjRfVTY0X1JPVU5EX1VQKHZtYS0+c2l6ZSwgYmxvY2tfc2l6ZSk7Cj4g
Cj4gYmxvY2tfc2l6ZSBzaXplIGxvb2sgdG8gYmUgdTMyPwoKQW5kIHdlIGNhbiBjb250cm9sIGl0
IHRvIGJlIGEgcG90LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
