Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8037BF61F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE7F6ED9D;
	Thu, 26 Sep 2019 15:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAC46ED9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:44:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18629243-1500050 for multiple; Thu, 26 Sep 2019 16:44:36 +0100
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <20190926151308.cl4iokerchlarfya@linutronix.de>
 <156951149939.26462.704766411515323977@skylake-alporthouse-com>
 <20190926153252.r5spqenjqvkhiixe@linutronix.de>
 <156951243438.26462.2512562221056029684@skylake-alporthouse-com>
Message-ID: <156951267358.26462.10383059640355784434@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 16:44:33 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjYgMTY6NDA6MzQpCj4gUXVvdGluZyBTZWJh
c3RpYW4gQW5kcnplaiBTaWV3aW9yICgyMDE5LTA5LTI2IDE2OjMyOjUyKQo+ID4gT24gMjAxOS0w
OS0yNiAxNjoyNDo1OSBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKPiA+ID4gPiA+IGluZGV4IGJjODNmMDk0MDY1YS4uZjNkZjc3MTRh
M2YzIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Ywo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4gPiA+
ID4gQEAgLTQ0OTEsOCArNDQ5MSw4IEBAIGludCBpbnRlbF9pcnFfaW5zdGFsbChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgICAgICBpbnRl
bF9pcnFfcmVzZXQoZGV2X3ByaXYpOwo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gLSAgICAgcmV0ID0g
cmVxdWVzdF9pcnEoaXJxLCBpbnRlbF9pcnFfaGFuZGxlcihkZXZfcHJpdiksCj4gPiA+ID4gPiAt
ICAgICAgICAgICAgICAgICAgICAgICBJUlFGX1NIQVJFRCwgRFJJVkVSX05BTUUsIGRldl9wcml2
KTsKPiA+ID4gPiA+ICsgICAgIHJldCA9IHJlcXVlc3RfdGhyZWFkZWRfaXJxKGlycSwgTlVMTCwg
aW50ZWxfaXJxX2hhbmRsZXIoZGV2X3ByaXYpLAo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgSVJRRl9TSEFSRUQsIERSSVZFUl9OQU1FLCBkZXZfcHJpdik7Cj4gPiA+
ID4gCj4gPiA+ID4gSSB0aGluayB5b3Ugc2hvdWxkIGFkZCBJUlFGX09ORVNIT1QuIE90aGVyd2lz
ZSBhIExFVkVMIGludGVycnVwdCB3aWxsCj4gPiA+ID4ga2VlcCBpbnRlcnJ1cHRpbmcgdGhlIENQ
VSBhbmQgeW91IG5ldmVyIG1hbmFnZSB0byBzd2l0Y2ggdG8gdGhlIHRocmVhZC4KPiA+ID4gCj4g
PiA+IFRoZSBpbnRlcnJ1cHRzIG9ubHkga2VlcCBjb21pbmcgaWYgd2UgZmVlZCB0aGUgR1BVLCBh
bmQgd2Ugb25seSBmZWVkIHRoZQo+ID4gPiBHUFUgaWYgd2Ugc2VydmljZSB0aGUgaW50ZXJydXB0
LiBUaGF0IHNob3VsZCBwcm92aWRlIGEgbmF0dXJhbAo+ID4gPiBxdWllc2NlbmNlIDopCj4gPiAK
PiA+IEluIElSUS1jb250ZXh0IHlvdXIgcHJpbWFyeSBoYW5kbGVyIGdldHMgaW52b2tlZCB3aGlj
aCB3YWtlcyB0aGUgdGhyZWFkCj4gPiAod2hhdCBldmVyIGludGVsX2lycV9oYW5kbGVyKCkgcmV0
dXJucykuIFRoZW4geW91IGxlYXZlIHRoZSBJUlEgY29udGV4dAo+ID4gYW5kIHNob3VsZCBzd2l0
Y2ggdG8geW91ciBJUlEtaGFuZGxlci4gVGhpcyB3aWxsIG5ldmVyIGhhcHBlbiBiZWNhdXNlCj4g
PiB0aGUgSVJRIGxpbmUgcmVtYWlucyBhc3NlcnRlZCBhbmQgQ1BVIGVuZHMgdXAgaW4gdGhlIHBy
aW1hcnkgaGFuZGxlcgo+ID4gYWdhaW4uCj4gPiBBbiBFREdFIHR5cGVkIElSUSB3b3VsZG4ndCBu
b3RpY2UgYSBkaWZmZXJlbmNlLiBCdXQgYSBMSU5FIHR5cGVkIElSUQo+ID4gd2lsbCByZW1haW4g
YXNzZXJ0ZWQgdW50aWwgdGhlIGhhcmR3YXJlIGRlLWFzc2VydHMgdGhlIGludGVycnVwdCBhZ2Fp
bi4KPiA+IFNpbmNlIHlvdSBuZXZlciByZWFjaCB5b3VyIHRocmVhZCBoYW5kbGVyLCBJIGRvbid0
IHNlZSBob3cgdGhpcyBjYW4KPiA+IGhhcHBlbi4KPiAKPiBJdCdzIGFsbCBlZGdlIGludGVycnVw
dHMgLS0gYWx0aG91Z2ggZm9yIGdlbjIvMyBteSBtZW1vcnkgaXMgaGF6eS4gQnV0Cj4gdGhlIEdQ
VSAoY2lyY2EgZ2VuNikgY2FuIGdlbmVyYXRlIG1vcmUgdGhhbiBlbm91Z2ggaW50ZXJydXB0cyB0
byBzYXR1cmF0ZQo+IGEgQ1BVLgoKU28gZXZlcnl0aGluZyBvbGRlciB0aGFuIGdlbjUgaGFzIE1T
SSBkaXNhYmxlZCBpdCBhcHBlYXJzIGFuZCBuZWVkcwpPTkVTSE9ULgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
