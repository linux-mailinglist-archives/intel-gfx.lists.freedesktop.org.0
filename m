Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C20D72E97D1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 15:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBB489FEA;
	Mon,  4 Jan 2021 14:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26FF489CB5
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 14:57:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23497607-1500050 for multiple; Mon, 04 Jan 2021 14:57:46 +0000
MIME-Version: 1.0
In-Reply-To: <16204f921b930e527eccae0e8a986773a1c6b376.camel@intel.com>
References: <20201230103742.18577-1-chris@chris-wilson.co.uk>
 <20201231000210.GE3894148@mdroper-desk1.amr.corp.intel.com>
 <0e8a2ada254a3fb151aa133093a475577151d152.camel@intel.com>
 <160940627002.15472.4084597144232819762@build.alporthouse.com>
 <16204f921b930e527eccae0e8a986773a1c6b376.camel@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>, ville.syrjala@linux.intel.com
Date: Mon, 04 Jan 2021 14:57:47 +0000
Message-ID: <160977226742.31003.6329747237976503328@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
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
Cc: intel-gfx@lists.freedesktop.org, "Lin, Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTb3V6YSwgSm9zZSAoMjAyMS0wMS0wNCAxNDo1MDo1OSkKPiBPbiBUaHUsIDIwMjAt
MTItMzEgYXQgMDk6MTcgKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3RpbmcgQWxt
YWhhbGxhd3ksIEtoYWxlZCAoMjAyMC0xMi0zMSAwMToyNDozNCkKPiA+ID4gT24gV2VkLCAyMDIw
LTEyLTMwIGF0IDE2OjAyIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOgo+ID4gPiA+IE9uIFdlZCwg
RGVjIDMwLCAyMDIwIGF0IDEwOjM3OjQyQU0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+
ID4gPiA+IFRoZSB0aW1lb3V0cyBhcmUgZnJlcXVlbnQgYW5kIGV4cGVjdGVkLiBXZSB3aWxsIGNv
bXBsYWluIGlmIHdlCj4gPiA+ID4gPiByZXRyeSBzbwo+ID4gPiA+ID4gb2Z0ZW4gYXMgdG8gbG9z
ZSBwYXRpZW5jZSBhbmQgZ2l2ZSB1cCwgc28gdGhlIGNhY29waG9ueSBmcm9tCj4gPiA+ID4gPiBp
bmRpdmlkdWFsCj4gPiA+ID4gPiBjb21wbGFpbnRzIGlzIHJlZHVuZGFudC4KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiA+ID4gCj4gPiA+ID4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiAtLQo+ID4gPiA+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+ID4gPiA+IGluZGV4
IDhhZTc2OWIxODg3OS4uNzA0ZTRjZWJmN2YzIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+ID4gPiA+IEBAIC0xNjEzLDggKzE2
MTMsNiBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ID4g
PiA+ID4gwqDCoMKgwqAvKiBUaW1lb3V0cyBvY2N1ciB3aGVuIHRoZSBkZXZpY2UgaXNuJ3QgY29u
bmVjdGVkLCBzbyB0aGV5J3JlCj4gPiA+ID4gPiDCoMKgwqDCoMKgKiAibm9ybWFsIiAtLSBkb24n
dCBmaWxsIHRoZSBrZXJuZWwgbG9nIHdpdGggdGhlc2UgKi8KPiA+ID4gPiA+IMKgwqDCoMKgaWYg
KHN0YXR1cyAmIERQX0FVWF9DSF9DVExfVElNRV9PVVRfRVJST1IpIHsKPiA+ID4gPiA+IC0gICAg
ICAgICAgIGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICIlczogdGltZW91dCAoc3RhdHVzCj4gPiA+
ID4gPiAweCUwOHgpXG4iLAo+ID4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxf
ZHAtPmF1eC5uYW1lLCBzdGF0dXMpOwo+ID4gPiAKPiA+ID4gQVVYIHRpbWVvdXQgbG9ncyBhcmUg
dmVyeSBpbXBvcnRhbnQgZm9yIFRHTCBUQ1NTIERpc3BsYXkgZGVidWdnaW5nLiBXZQo+ID4gPiBh
Y3R1YWxseSBjYW4gZ2V0IEFVWCB0aW1lb3V0IHdoZW4gdGhlIGRpc3BsYXkgaXMgY29ubmVjdGVk
IGZvciB0aGUKPiA+ID4gZm9sbG93aW5nIHJlYXNvbnM6Cj4gPiA+ICogSWYgQVVYIG9yaWVudGF0
aW9uIGlzIG5vdCBjb25maWd1cmVkIGNvcnJlY3RseSBpbiBCSU9TCj4gPiA+ICogSWYgVVNCMyBk
b2NrIGlzIGRvd25ncmFkZWQgdG8gVVNCMiBhbmQgU0JVL0FVWCBsaW5lcyBhcmUgZGlzYWJsZWQK
PiA+ID4gKiBXaGVuIExUVFBSL1JldGltZXIgc3RhcnRlZCB0byBhY3QgZnVubnkgYW5kIG5vdCBj
b25maWd1cmVkIGNvcnJlY3RseQo+ID4gPiBieSBFQwo+ID4gPiAqIFdoZW4gd2UgaGF2ZSBhIGJ1
ZyBpbiB0aGUgUE1DIG11eCBjb25maWd1cmF0aW9uIGJlY2F1c2Ugb2YgYnVnIGluIHRoZQo+ID4g
PiBmb2xsb3dpbmcgZmlsZXM6IGRyaXZlcnMvdXNiL3R5cGVjL211eC9pbnRlbF9wbWNfbXV4LmMg
YW5kCj4gPiA+IGRyaXZlcnMvcGxhdGZvcm0veDg2L2ludGVsX3NjdV9pcGMuYwo+ID4gPiAqIFdo
ZW4gdXNlciBzcGFjZSBpcyBub3QgY2xlYW5seSBkaXNjb25uZWN0ZWQgYWxsIE1TVCBjb25uZWN0
b3JzIGZvcgo+ID4gPiBkaXNjb25uZWN0ZWQgTVNUIGh1YiB3aXRoIDIrIGRpc3BsYXkuIFdlIHdp
bGwgYmUgbGVmdCB3aXRoIGVuYWJsZWQKPiA+ID4gcGlwZXMgYWx0aG91Z2ggdGhlIGNhYmxlIGlz
IGRpc2Nvbm5lY3RlZCBhbmQgbmV4dCBjb25uZWN0IG9mIHR5cGUtYwo+ID4gPiBkaXNwbGF5IHdp
bGwgZ2l2ZSBhdXggdGltZW91dDogCj4gPiA+IMKgwqAqKiBVc2VyIHNwYWNlIGZpeCBpbiBDaHJv
bWU6IAo+ID4gPiBodHRwczovL2Nocm9taXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tL2MvY2hy
b21pdW0vc3JjLysvMjUxMjU1MC8gCj4gPiA+IMKgwqAqKiBXQSBpbiBkcml2ZXI6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zOTU5MDEvIAo+ID4gPiAKPiA+ID4gVGhl
c2UgbG9ncyBhcmUgZXNwZWNpYWxseSBpbXBvcnRhbnQgZm9yIENocm9tZSBiYXNlZCBwbGF0Zm9y
bXMgd2l0aAo+ID4gPiB0eXBlLUMuIFNlZWluZyB0aGVzZSBsb2dzIHdlIGNhbiBrbm93IHdobyBp
cyBzY3Jld2luZyB1cCAoVENTUyBkcml2ZXIsCj4gPiA+IENCLCBvciBFQykuCj4gPiAKPiA+IFRo
ZW4gY2FwdHVyZSB0aGUgaW5mb3JtYXRpb24geW91IHJlcXVpcmUgdG8gYW5hbHlzZSB5b3VyIGZh
aWx1cmVzLgo+ID4gRmxvb2RpbmcgdGhlIGRlYnVnIGxvZyBtYWtlcyBkZWJ1Z2dpbmcgZXZlcnl0
aGluZyBlbHNlIG11Y2gsIG11Y2ggaGFyZGVyLgo+ID4gLUNocmlzCj4gCj4gSSBhZ3JlZSB3aXRo
IEtoYWxlZCB0aGlzIG1lc3NhZ2UgaXMgaGVscGZ1bCB0byBkZWJ1ZyB3aHkgZGlzcGxheSBpcyBu
b3QgY29taW5nIHVwLgoKSXNuJ3QgdGhhdCB0aGUgY2FzZSB3aGVyZSBpdCBmYWxscyB0aHJvdWdo
IHRvIHRoZSBsYXRlciB0aW1lb3V0IHdhcm5pbmc/CgpJZiB0aGVyZSdzIHNvbWUgaW5mb3JtYXRp
b24gaW4gdGhlcmUgdG8gZXhwbGFpbiBhIGRpc3BsYXkgZmFpbHVyZSwgY2FuCml0IGJlIGV4dHJh
Y3RlZCBhdXRvbWF0aWNhbGx5PyBPciB0byB0dXJuIHRoZSB0YWJsZSBhcm91bmQsIGlmIGl0IGlz
IHNvCnVzZWZ1bCB0byBkZWJ1ZyBmYWlsdXJlcywgd2h5IGRvIHdlIHN0aWxsIHNlZSBpdCBpbiBD
ST8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
