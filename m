Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3DBF615
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061116ED9C;
	Thu, 26 Sep 2019 15:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083416ED9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:40:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18629215-1500050 for multiple; Thu, 26 Sep 2019 16:40:37 +0100
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926153252.r5spqenjqvkhiixe@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <20190926151308.cl4iokerchlarfya@linutronix.de>
 <156951149939.26462.704766411515323977@skylake-alporthouse-com>
 <20190926153252.r5spqenjqvkhiixe@linutronix.de>
Message-ID: <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 16:40:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yICgyMDE5LTA5LTI2IDE2OjMyOjUyKQo+
IE9uIDIwMTktMDktMjYgMTY6MjQ6NTkgWyswMTAwXSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4gPiA+IGluZGV4IGJjODNmMDk0MDY1YS4uZjNk
Zjc3MTRhM2YzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gPiA+
ID4gQEAgLTQ0OTEsOCArNDQ5MSw4IEBAIGludCBpbnRlbF9pcnFfaW5zdGFsbChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiA+ID4gIAo+ID4gPiA+ICAgICAgIGludGVsX2ly
cV9yZXNldChkZXZfcHJpdik7Cj4gPiA+ID4gIAo+ID4gPiA+IC0gICAgIHJldCA9IHJlcXVlc3Rf
aXJxKGlycSwgaW50ZWxfaXJxX2hhbmRsZXIoZGV2X3ByaXYpLAo+ID4gPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgIElSUUZfU0hBUkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOwo+ID4gPiA+
ICsgICAgIHJldCA9IHJlcXVlc3RfdGhyZWFkZWRfaXJxKGlycSwgTlVMTCwgaW50ZWxfaXJxX2hh
bmRsZXIoZGV2X3ByaXYpLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IElSUUZfU0hBUkVELCBEUklWRVJfTkFNRSwgZGV2X3ByaXYpOwo+ID4gPiAKPiA+ID4gSSB0aGlu
ayB5b3Ugc2hvdWxkIGFkZCBJUlFGX09ORVNIT1QuIE90aGVyd2lzZSBhIExFVkVMIGludGVycnVw
dCB3aWxsCj4gPiA+IGtlZXAgaW50ZXJydXB0aW5nIHRoZSBDUFUgYW5kIHlvdSBuZXZlciBtYW5h
Z2UgdG8gc3dpdGNoIHRvIHRoZSB0aHJlYWQuCj4gPiAKPiA+IFRoZSBpbnRlcnJ1cHRzIG9ubHkg
a2VlcCBjb21pbmcgaWYgd2UgZmVlZCB0aGUgR1BVLCBhbmQgd2Ugb25seSBmZWVkIHRoZQo+ID4g
R1BVIGlmIHdlIHNlcnZpY2UgdGhlIGludGVycnVwdC4gVGhhdCBzaG91bGQgcHJvdmlkZSBhIG5h
dHVyYWwKPiA+IHF1aWVzY2VuY2UgOikKPiAKPiBJbiBJUlEtY29udGV4dCB5b3VyIHByaW1hcnkg
aGFuZGxlciBnZXRzIGludm9rZWQgd2hpY2ggd2FrZXMgdGhlIHRocmVhZAo+ICh3aGF0IGV2ZXIg
aW50ZWxfaXJxX2hhbmRsZXIoKSByZXR1cm5zKS4gVGhlbiB5b3UgbGVhdmUgdGhlIElSUSBjb250
ZXh0Cj4gYW5kIHNob3VsZCBzd2l0Y2ggdG8geW91ciBJUlEtaGFuZGxlci4gVGhpcyB3aWxsIG5l
dmVyIGhhcHBlbiBiZWNhdXNlCj4gdGhlIElSUSBsaW5lIHJlbWFpbnMgYXNzZXJ0ZWQgYW5kIENQ
VSBlbmRzIHVwIGluIHRoZSBwcmltYXJ5IGhhbmRsZXIKPiBhZ2Fpbi4KPiBBbiBFREdFIHR5cGVk
IElSUSB3b3VsZG4ndCBub3RpY2UgYSBkaWZmZXJlbmNlLiBCdXQgYSBMSU5FIHR5cGVkIElSUQo+
IHdpbGwgcmVtYWluIGFzc2VydGVkIHVudGlsIHRoZSBoYXJkd2FyZSBkZS1hc3NlcnRzIHRoZSBp
bnRlcnJ1cHQgYWdhaW4uCj4gU2luY2UgeW91IG5ldmVyIHJlYWNoIHlvdXIgdGhyZWFkIGhhbmRs
ZXIsIEkgZG9uJ3Qgc2VlIGhvdyB0aGlzIGNhbgo+IGhhcHBlbi4KCkl0J3MgYWxsIGVkZ2UgaW50
ZXJydXB0cyAtLSBhbHRob3VnaCBmb3IgZ2VuMi8zIG15IG1lbW9yeSBpcyBoYXp5LiBCdXQKdGhl
IEdQVSAoY2lyY2EgZ2VuNikgY2FuIGdlbmVyYXRlIG1vcmUgdGhhbiBlbm91Z2ggaW50ZXJydXB0
cyB0byBzYXR1cmF0ZQphIENQVS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
