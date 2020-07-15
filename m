Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5822210AD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 17:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6FE89FDE;
	Wed, 15 Jul 2020 15:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2511E89FDE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 15:17:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21829143-1500050 for multiple; Wed, 15 Jul 2020 16:17:24 +0100
MIME-Version: 1.0
In-Reply-To: <20200715142224.GS6112@intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
 <20200714201945.18959-1-ville.syrjala@linux.intel.com>
 <159475877439.3188.13441765978982805094@build.alporthouse.com>
 <20200715142224.GS6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Wed, 15 Jul 2020 16:17:23 +0100
Message-ID: <159482624332.31020.16355852148496350818@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/fbc: Limit cfb to the first
 256MiB of stolen on g4x+
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDctMTUgMTU6MjI6MjQpCj4gT24gVHVlLCBK
dWwgMTQsIDIwMjAgYXQgMDk6MzI6NTRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA3LTE0IDIxOjE5OjQ1KQo+ID4gPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiAKPiA+
ID4gU2luY2UgZzR4IHRoZSBDRkIgYmFzZSBvbmx5IHRha2VzIGEgMjhiaXQgb2Zmc2V0IGludG8g
c3RvbGVuLgo+ID4gPiBOb3Qgc3VyZSBpZiB0aGUgQ0ZCIGlzIGFsbG93ZWQgdG8gc3RhcnQgYmVs
b3cgdGhhdCBsaW1pdCBidXQKPiA+ID4gdGhlbiBleHRlbmQgYmV5b25kIGl0LiBMZXQncyBhc3N1
bWUgbm90IGFuZCBqdXN0IHJlc3RyaWN0IHRoZQo+ID4gPiBhbGxvY2F0aW9uIHRvIHRoZSBmaXJz
dCAyNTZNaUIgKGluIHRoZSB1bmxpa2VseSBjYXNlCj4gPiA+IHdlIGhhdmUgbW9yZSBzdG9sZW4g
dGhhbiB0aGF0KS4KPiA+ID4gCj4gPiA+IHYyOiBzL0JJVC9CSVRfVUxMLyAoQ2hyaXMpCj4gPiA+
IAo+ID4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYyB8IDEwICsrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMKPiA+ID4gaW5kZXggODU3MjNmYmE2MDAyLi4zYTRmOTgwNzg4YTYgMTAwNjQ0Cj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4gPiBAQCAtNDI0LDYg
KzQyNCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfZGVhY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiA+ICAgICAgICAgZmJjLT5ub19mYmNfcmVhc29uID0g
cmVhc29uOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICtzdGF0aWMgdTY0IGludGVsX2ZiY19jZmJf
YmFzZV9tYXgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+ICt7Cj4gPiA+ICsg
ICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA1IHx8IElTX0c0WChpOTE1KSkKPiA+ID4gKyAg
ICAgICAgICAgICAgIHJldHVybiBCSVRfVUxMKDI4KTsKPiA+ID4gKyAgICAgICBlbHNlCj4gPiA+
ICsgICAgICAgICAgICAgICByZXR1cm4gQklUX1VMTCgzMik7Cj4gPiA+ICt9Cj4gPiAKPiA+IENv
bmZpcm1lZCB0aGF0IGlsayB1c2VzIDIzOjEyLiBJIHRydXN0IGc0eCBpcyB0aGUgc2FtZS4KPiAK
PiBJIGd1ZXNzIHlvdSBtZWFuIDI3OjEyPyBPciBkaWQgeW91IGZpbmQgYSBzb21lIGRvY3Mgc2F5
aW5nIGl0J3Mgb25seQo+IDI0IGJpdHM/IEFsbCB0aGUgZG9jcyBJIGhhdmUgc2F5IDI3OjEyLgoK
VHlwbywgMjc6MTIgZnJvbSBEUEZDX0NCX0JBU0UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
