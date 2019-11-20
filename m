Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B09A1040C5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93BF6E894;
	Wed, 20 Nov 2019 16:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C5A6E894
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:28:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19274319-1500050 for multiple; Wed, 20 Nov 2019 16:28:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
 <0635e1d3-79c5-621a-faa5-b850386297eb@linux.intel.com>
 <157426575648.13839.14923384484472849836@skylake-alporthouse-com>
 <d132f808-7a5a-016a-9111-59da21d984b3@linux.intel.com>
In-Reply-To: <d132f808-7a5a-016a-9111-59da21d984b3@linux.intel.com>
Message-ID: <157426728427.13839.11332585781191106197@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 16:28:04 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reduce flush_ggtt() from a
 wait-for-idle to a mere barrier flush
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxNjoxNDo0MCkKPiAKPiBPbiAyMC8x
MS8yMDE5IDE2OjAyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTIwIDE1OjU4OjQ5KQo+ID4+Cj4gPj4gT24gMjAvMTEvMjAxOSAxMzo0MSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBTaW5jZSB3ZSB1c2UgYmFycmllcnMsIHdlIG5lZWQg
b25seSBleHBsaWNpdGx5IGZsdXNoIHRob3NlIGJhcnJpZXJzIHRvCj4gPj4+IGVuc3VyZSB0aGEg
d2UgY2FuIHJlY2xhaW0gdGhlIGF2YWlsYWJsZSBnZ3R0IGZvciBvdXJzZWx2ZXMuIFRoZSBiYXJy
aWVyCj4gPj4+IGZsdXNoIHdhcyBpbXBsaWNpdCBpbnNpZGUgdGhlIGludGVsX2d0X3dhaXRfZm9y
X2lkbGUoKSAtLSBleGNlcHQgYmVjYXVzZQo+ID4+PiB3ZSB1c2UgaTkxNV9nZW1fZXZpY3QgZnJv
bSBpbnNpZGUgYW4gYWN0aXZlIHRpbWVsaW5lIGR1cmluZyBleGVjYnVmLCB3ZQo+ID4+PiBjb3Vs
ZCBlYXNpbHkgZW5kIHVwIHdhaXRpbmcgdXBvbiBvdXJzZWx2ZXMuCj4gPj4+Cj4gPj4+IEZpeGVz
OiA3OTM2YTIyZGQ0NjYgKCJkcm0vaTkxNS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGlu
dGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIikKPiA+Pj4gRml4ZXM6IGE0NmJmZGM4M2ZlZSAoImRy
bS9pOTE1L2d0OiBXYWl0IGZvciBuZXcgcmVxdWVzdHMgaW4gaW50ZWxfZ3RfcmV0aXJlX3JlcXVl
c3RzKCkiKQo+ID4+PiBUZXN0Y2FzZTogaWd0L2dlbV9leGVjX3JlbG9jL2Jhc2ljLXJhbmdlCj4g
Pj4KPiA+PiBCdWd6aWxsYTogPwo+ID4gCj4gPiBJdCdzIGJlZW4gaW4gQ0kgc2luY2UgYmVmb3Jl
IHRoZSB3L2UgKHRoZSB0ZXN0IGl0c2VsZiBpcyBtdWNoLCBtdWNoCj4gPiBvbGRlciksIEkgZ3Vl
c3MgaXQgaGFzbid0IGJlZW4gdmV0dGVkIHlldCBhcyBubyBidWcgaGFzIGJlZW4gZmlsZWQuCj4g
PiAgIAo+ID4+IFRoaXMgdGVzdCBnZXRzIHBlcm1hbmVudGx5IHN0dWNrIG9uIHNvbWUgcGxhdGZv
cm1zPwo+ID4gCj4gPiBBbGwgIWZ1bGwtcHBndHQgcGxhdGZvcm1zLgo+IAo+IEhvdyBpdCB3aWxs
IGNvcGUgd2l0aCBhY3R1YWwgZ2d0dCBwcmVzc3VyZT8gV2FpdCBmb3IgcHJlc3VtYWJseSB0aGVy
ZSAKPiBmb3IgYSByZWFzb24gYW5kIG5vdyBpdCB3aWxsIG9ubHkgcmV0aXJlIHdoYXQncyBhbHJl
YWR5IGRvbmUgYW5kIHNlbmQgYW4gCj4gaWRsZSBwdWxzZSBkb3duIHRoZSBlbmdpbmVzLgoKU2Ft
ZSBpdCBkaWQgcHJldmlvdXNseS4uLiBJJ3ZlIHZhY2lsbGF0ZWQgYmV0d2VlbiB1c2luZyBhIGZs
dXNoIGFuZCBhCndhaXQuIE9yaWdpbmFsbHksIGl0IHdhcyBtZWFudCB0byBqdXN0IGJlIGEgZmx1
c2ggYXMgd2Ugd291bGQgd2FpdCBvbgppbmRpdmlkdWFsIG9iamVjdHMuIEJ1dCBub3cgY29udGV4
dCBwaW5uaW5nIHJlcXVpcmVzIHdhaXRpbmcgb24KYmFycmllcnMuIEhtbSwgYWN0dWFsbHkgdGhh
dCB3b3VsZCBiZSBhIHNpbXBsZSB3YXkgb2Ygb2J0YWluaW5nIHRoZQpwcmV2aW91cyBiZWhhdmlv
dXIgd2hlbiByZXF1aXJlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
