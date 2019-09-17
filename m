Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AECB55C7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 20:57:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F216E86A;
	Tue, 17 Sep 2019 18:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A086E867
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 18:57:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18523943-1500050 for multiple; Tue, 17 Sep 2019 19:57:50 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
 <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
 <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
Message-ID: <156874666808.5729.14440148691607723440@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 19:57:48 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix SFC reset flow
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
Cc: Owen Zhang <owen.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE3IDE5OjM2OjM1KQo+IAo+
IAo+IE9uIDkvMTcvMjAxOSAxMjo1NyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGlu
ZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE2IDIyOjQxOjA0KQo+ID4+IE91ciBh
c3N1bXB0aW9uIHRoYXQgdGhlIHdlIGNhbiBhc2sgdGhlIEhXIHRvIGxvY2sgdGhlIFNGQyBldmVu
IGlmIG5vdAo+ID4+IGN1cnJlbnRseSBpbiB1c2UgZG9lcyBub3QgbWF0Y2ggdGhlIEhXIGNvbW1p
dG1lbnQuIFRoZSBleHBlY3RhdGlvbiBmcm9tCj4gPj4gdGhlIEhXIGlzIHRoYXQgU1cgd2lsbCBu
b3QgdHJ5IHRvIGxvY2sgdGhlIFNGQyBpZiB0aGUgZW5naW5lIGlzIG5vdAo+ID4+IHVzaW5nIGl0
IGFuZCBpZiB3ZSBkbyB0aGF0IHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQ7IG9uIElDTCB0aGUg
SFcKPiA+PiBlbmRzIHVwIHRvIHJldHVybmluZyB0aGUgYWNrIGFuZCBpZ25vcmluZyBvdXIgbG9j
ayByZXF1ZXN0LCBidXQgdGhpcyBpcwo+ID4+IG5vdCBndWFyYW50ZWVkIGFuZCB3ZSBzaG91bGRu
J3QgZXhwZWN0IGl0IGdvaW5nIGZvcndhcmQuCj4gPj4KPiA+PiBSZXBvcnRlZC1ieTogT3dlbiBa
aGFuZyA8b3dlbi56aGFuZ0BpbnRlbC5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+PiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPiA+PiAtLS0K
PiA+PiBAQCAtMzY2LDEwICszNjgsMTMgQEAgc3RhdGljIHUzMiBnZW4xMV9sb2NrX3NmYyhzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc2ZjX2ZvcmNlZF9sb2NrX2Fja19iaXQsCj4gPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2ZjX2ZvcmNlZF9sb2NrX2Fja19iaXQs
Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwMCwgMCwg
TlVMTCkpIHsKPiA+PiAtICAgICAgICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiV2FpdCBmb3Ig
U0ZDIGZvcmNlZCBsb2NrIGFjayBmYWlsZWRcbiIpOwo+ID4+ICsgICAgICAgICAgICAgICAvKiBk
aWQgd2UgcmFjZSB0aGUgdW5sb2NrPyAqLwo+ID4+ICsgICAgICAgICAgICAgICBpZiAoaW50ZWxf
dW5jb3JlX3JlYWRfZncodW5jb3JlLCBzZmNfdXNhZ2UpICYgc2ZjX3VzYWdlX2JpdCkKPiA+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJST1IoIldhaXQgZm9yIFNGQyBmb3JjZWQgbG9j
ayBhY2sgZmFpbGVkXG4iKTsKPiA+IFdoYXQncyBvdXIgcGxhbiBpZiB0aGlzICpFUlJPUiogaXMg
ZXZlciB0cmlnZ2VyZWQ/Cj4gPgo+ID4gSWYgaXQgcmVtYWlucyBkbyBub3RoaW5nIGFuZCBjaGVj
ayB0aGUgbG9ncyBvbiBkZWF0aCwgdGhlbiBpdCByZW1haW5zCj4gPiBqdXN0IGEgZGVidWcgc3Bs
YXQuIElmIHRoZXJlIGlzIGEgcGxhbiB0byBhY3R1YWxseSBkbyBzb21ldGhpbmcgdG8KPiA+IGhh
bmRsZSB0aGUgZXJyb3IsIGRvIGl0IQo+ID4gLUNocmlzCj4gCj4gQUZBSVUgdGhlIG9ubHkgdGhp
bmcgd2UgY2FuIGRvIGlzIGVzY2FsYXRlIHRvIGZ1bGwgZ3B1IHJlc2V0LiBIb3dldmVyLCAKPiB0
aGUgcHJvYmFiaWxpdHkgb2YgdGhpcyBmYWlsaW5nIHNob3VsZCBiZSBuZXh0IHRvIG5vbi1leGlz
dGVudCAob25seSBvbmUgCj4gZW5naW5lIGNhbiB1c2UgdGhlIFNGQyBhdCBhbnkgdGltZSBzbyB0
aGVyZSBpcyBubyBsb2NrIGNvbnRlbnRpb24pLCBzbyAKPiBJJ20gbm90IGNvbnZpbmNlZCB0aGUg
ZmFsbGJhY2sgaXMgd29ydGggdGhlIGVmZm9ydC4gVGhlIGVycm9yIGlzIHN0aWxsIAo+IHVzZWZ1
bCBJTU8gdG8gY2F0Y2ggdW5leHBlY3RlZCBiZWhhdmlvciBvbiBuZXcgcGxhdGZvcm1zLCBhcyBp
dCBoYXBwZW5lZCAKPiBpbiB0aGlzIGNhc2Ugd2l0aCB0aGUgbWVkaWEgdGVhbSByZXBvcnRpbmcg
c2VlaW5nIHRoaXMgbWVzc2FnZSBvbiBnZW4xMiAKPiB3aXRoIHRoZSBwcmV2aW91cyBiZWhhdmlv
ci4gVGhpcyBzYWlkLCBJJ20gaGFwcHkgdG8gYWRkIHRoZSBleHRyYSBsb2dpYyAKPiBpZiB5b3Ug
YmVsaWV2ZSBpdCBpcyB3b3J0aCBpdC4KCldlJ3ZlIHNlZSB0aGlzIG1lc3NhZ2Ugb24gZXZlcnkg
aWNsIHJ1biEKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
