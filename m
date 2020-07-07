Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 387E72175BF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 20:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC18A6E227;
	Tue,  7 Jul 2020 18:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB916E227
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 18:00:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21744392-1500050 for multiple; Tue, 07 Jul 2020 19:00:21 +0100
MIME-Version: 1.0
In-Reply-To: <c78d5bb1-9bdb-b477-ed18-a08de4d354e4@linux.intel.com>
References: <20200707171517.28183-1-chris@chris-wilson.co.uk>
 <c78d5bb1-9bdb-b477-ed18-a08de4d354e4@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 07 Jul 2020 19:00:20 +0100
Message-ID: <159414482034.17526.9831561840418014593@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix initial fb to use
 resource_size_t
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0wNy0wNyAxODo0ODoyMykKPiAKPiBPbiAwNy8w
Ny8yMDIwIDE4OjE1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBsb29rdXAgdXAgdGhlIHBo
eXNpY2FsIGFkZHJlc3Mgb2YgdGhlIGluaGVyaXRlZCBmcmFtZWJ1ZmZlciwgYW5kCj4gPiBwcmVz
dW1lIHRoYXQgaXMgYW4gb2Zmc2V0IGludG8gdGhlIHN0b2xlbiBtZW1vcnkgcmVnaW9uLiBBcyB3
ZSBhcmUKPiA+IGRlYWxpbmcgd2l0aCBwaHlzaWNhbCByZXNvdXJjZXMgYW5kIHRoZWlyIGFkZHJl
c3Nlcywgd2UgbmVlZCB0byB1c2UKPiA+IHJlc291cmNlX3NpemVfdCBhbmQgbm90IGFzc3VtZSBl
dmVyeXRoaW5nIGZpdHMgd2l0aGluIGEgcGxhaW4gdTMyIFtiYXNlZAo+ID4gb24gcHJpb3IgYXNz
dW1wdGlvbnMgdGhhdCB3ZSB3ZXJlIHNpbXBsaW5nIGhhbmRsaW5nIG9mZnNldHMgaW50byB0aGUK
PiA+IEdHVFQgbm90IHBoeXNpY2FsIG1lbW9yeV0uCj4gPiAKPiA+IFdlIG1hZGUgdGhlIHN3aXRj
aCB0byB1c2luZyByZXNvdXJjZV9zaXplX3QgZm9yIHN0b2xlbiBpbiBjb21taXQKPiA+IGI3MTI4
ZWYxMjViNCAoImRybS9pOTE1OiBwcmVmZXIgcmVzb3VyY2Vfc2l6ZV90IGZvciBldmVyeXRoaW5n
IHN0b2xlbiIpCj4gPiAKPiA+IFJlcG9ydGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgo+ID4gUmVmZXJlbmNlczogYjcxMjhlZjEyNWI0ICgiZHJtL2k5MTU6
IHByZWZlciByZXNvdXJjZV9zaXplX3QgZm9yIGV2ZXJ5dGhpbmcgc3RvbGVuIikKPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IENjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICsrLQo+ID4gICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCBkZmY3YzE3ZjNk
MmIuLjZiZmUzMTQ4ZjkyNyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTM0MDksNyArMzQwOSw4IEBAIGluaXRpYWxfcGxh
bmVfdm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ID4gICB7Cj4gPiAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ID4gICAgICAgc3RydWN0IGk5MTVfdm1h
ICp2bWE7Cj4gPiAtICAgICB1MzIgYmFzZSwgc2l6ZTsKPiA+ICsgICAgIHJlc291cmNlX3NpemVf
dCBiYXNlOwo+ID4gKyAgICAgcmVzb3VyY2Vfc2l6ZV90IHNpemU7Cj4gPiAgIAo+ID4gICAgICAg
aWYgKHBsYW5lX2NvbmZpZy0+c2l6ZSA9PSAwKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gTlVM
TDsKPiA+IAo+IAo+IFRoZXJlIGlzIGFsc286Cj4gCj4gICAgICAgICBiYXNlID0gcm91bmRfZG93
bihwbGFuZV9jb25maWctPmJhc2UsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0dU
VF9NSU5fQUxJR05NRU5UKTsKPiAKPiBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcg
ewo+ICAgICAgICAgIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqZmI7Cj4gICAgICAgICAgc3Ry
dWN0IGk5MTVfdm1hICp2bWE7Cj4gICAgICAgICAgdW5zaWduZWQgaW50IHRpbGluZzsKPiAgICAg
ICAgICBpbnQgc2l6ZTsKPiAgICAgICAgICB1MzIgYmFzZTsKPiAgICAgICAgICB1OCByb3RhdGlv
bjsKPiB9Owo+IAo+IFNvIG5vdCBzdXJlLCBqdXN0IHRocm93aW5nIGl0IG91dCB0aGVyZS4KCklu
IGZvciBhIHBlbm55LCBpbiBmb3IgYSBwb3VuZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
