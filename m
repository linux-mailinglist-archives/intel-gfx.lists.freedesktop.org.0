Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAA710CAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0A46E838;
	Thu, 28 Nov 2019 14:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA7F6E838
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 14:54:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19377664-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 14:54:24 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20191128145211.3920290-1-chris@chris-wilson.co.uk>
 <20191128145211.3920290-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191128145211.3920290-2-chris@chris-wilson.co.uk>
Message-ID: <157495286170.8489.6239043973586066494@skylake-alporthouse-com>
Date: Thu, 28 Nov 2019 14:54:21 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjggMTQ6NTI6MTEpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IFRoaXMgaXMg
cmVhbGx5IGp1c3QgYW4gYWxpYXMgb2YgbW1hcF9ndHQuIFRoZSAnbW1hcCBvZmZzZXQnIG5vbWVu
Y2xhdHVyZQo+IGNvbWVzIGZyb20gdGhlIHZhbHVlIHJldHVybmVkIGJ5IHRoaXMgaW9jdGwgd2hp
Y2ggaXMgdGhlIG9mZnNldCBpbnRvIHRoZQo+IGRldmljZSBmZCB3aGljaCB1c2VycGFjZSB1c2Vz
IHdpdGggbW1hcCgyKS4KPiAKPiBtbWFwX2d0dCB3YXMgb3VyIGluaXRpYWwgbW1hcF9vZmZzZXQg
aW1wbGVtZW50YXRpb24sIHRoaXMgZXh0ZW5kcwo+IG91ciBDUFUgbW1hcCBzdXBwb3J0IHRvIGFs
bG93IGFkZGl0aW9uYWwgZmF1bHQgaGFuZGxlcnMgdGhhdCBkZXBlbmRzIG9uCj4gdGhlIG9iamVj
dCdzIGJhY2tpbmcgcGFnZXMuCj4gCj4gTm90ZSB0aGF0IHdlIG11bHRpcGxleCBtbWFwX2d0dCBh
bmQgbW1hcF9vZmZzZXQgdGhyb3VnaCB0aGUgc2FtZSBpb2N0bCwKPiBhbmQgdXNlIHRoZSB6ZXJv
IGV4dGVuZGluZyBiZWhhdmlvdXIgb2YgZHJtIHRvIGRpZmZlcmVudGlhdGUgYmV0d2Vlbgo+IHRo
ZW0sIHdoZW4gd2UgaW5zcGVjdCB0aGUgZmxhZ3MuCj4gCj4gdjI6Cj4gLSBEcm9wIHRoZSBhbGlh
cywganVzdCByZW5hbWUgdGhlIHN0cnVjdCAoQ2hyaXMpCj4gLSBEb24ndCBiYWlsIG91dCBvbiBu
byBQQVQgd2hlbiBkb2luZyBXQiBtbWFwcwo+IC0gUHJlcGFyZSB1QVBJIGZvciBmdXJ0aGVyIGV4
dGVuc2lvbnMKPiB2MzoKPiAtIGRyb3AgTU1BUF9PRkZTRVRfRkxBR1MKPiB2NDoKPiAtIFR3ZWFr
cywgaGVhZGVyIHJlLW9yZwo+IAo+IFNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJk
aWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpTaWdoLCBpZ25vcmUgdGhpcy4gVGhpcyBwYXRjaCBp
cyBub3Qgc3RhbmRhbG9uZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
