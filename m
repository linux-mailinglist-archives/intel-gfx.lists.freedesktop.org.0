Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4085EB566E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 21:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85F76ED35;
	Tue, 17 Sep 2019 19:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8A06ED35
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 19:49:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18524326-1500050 for multiple; Tue, 17 Sep 2019 20:49:21 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <89b92e0a-cbcc-3118-cbda-7e97438116fa@intel.com>
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
 <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
 <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
 <156874666808.5729.14440148691607723440@skylake-alporthouse-com>
 <89b92e0a-cbcc-3118-cbda-7e97438116fa@intel.com>
Message-ID: <156874975966.5729.1781539964892814467@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 20:49:19 +0100
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE3IDIwOjQ1OjAyKQo+IAo+
IAo+IE9uIDkvMTcvMjAxOSAxMTo1NyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGlu
ZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE3IDE5OjM2OjM1KQo+ID4+Cj4gPj4g
T24gOS8xNy8yMDE5IDEyOjU3IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4+IFF1b3Rpbmcg
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOS0xNiAyMjo0MTowNCkKPiA+Pj4+IE91ciBh
c3N1bXB0aW9uIHRoYXQgdGhlIHdlIGNhbiBhc2sgdGhlIEhXIHRvIGxvY2sgdGhlIFNGQyBldmVu
IGlmIG5vdAo+ID4+Pj4gY3VycmVudGx5IGluIHVzZSBkb2VzIG5vdCBtYXRjaCB0aGUgSFcgY29t
bWl0bWVudC4gVGhlIGV4cGVjdGF0aW9uIGZyb20KPiA+Pj4+IHRoZSBIVyBpcyB0aGF0IFNXIHdp
bGwgbm90IHRyeSB0byBsb2NrIHRoZSBTRkMgaWYgdGhlIGVuZ2luZSBpcyBub3QKPiA+Pj4+IHVz
aW5nIGl0IGFuZCBpZiB3ZSBkbyB0aGF0IHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQ7IG9uIElD
TCB0aGUgSFcKPiA+Pj4+IGVuZHMgdXAgdG8gcmV0dXJuaW5nIHRoZSBhY2sgYW5kIGlnbm9yaW5n
IG91ciBsb2NrIHJlcXVlc3QsIGJ1dCB0aGlzIGlzCj4gPj4+PiBub3QgZ3VhcmFudGVlZCBhbmQg
d2Ugc2hvdWxkbid0IGV4cGVjdCBpdCBnb2luZyBmb3J3YXJkLgo+ID4+Pj4KPiA+Pj4+IFJlcG9y
dGVkLWJ5OiBPd2VuIFpoYW5nIDxvd2VuLnpoYW5nQGludGVsLmNvbT4KPiA+Pj4+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+Cj4gPj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4gQEAgLTM2NiwxMCArMzY4LDEzIEBAIHN0YXRpYyB1
MzIgZ2VuMTFfbG9ja19zZmMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNmY19mb3JjZWRfbG9j
a19hY2tfYml0LAo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNmY19mb3JjZWRfbG9ja19hY2tfYml0LAo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDEwMDAsIDAsIE5VTEwpKSB7Cj4gPj4+PiAtICAgICAgICAg
ICAgICAgRFJNX0RFQlVHX0RSSVZFUigiV2FpdCBmb3IgU0ZDIGZvcmNlZCBsb2NrIGFjayBmYWls
ZWRcbiIpOwo+ID4+Pj4gKyAgICAgICAgICAgICAgIC8qIGRpZCB3ZSByYWNlIHRoZSB1bmxvY2s/
ICovCj4gPj4+PiArICAgICAgICAgICAgICAgaWYgKGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29y
ZSwgc2ZjX3VzYWdlKSAmIHNmY191c2FnZV9iaXQpCj4gPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICBEUk1fRVJST1IoIldhaXQgZm9yIFNGQyBmb3JjZWQgbG9jayBhY2sgZmFpbGVkXG4iKTsK
PiA+Pj4gV2hhdCdzIG91ciBwbGFuIGlmIHRoaXMgKkVSUk9SKiBpcyBldmVyIHRyaWdnZXJlZD8K
PiA+Pj4KPiA+Pj4gSWYgaXQgcmVtYWlucyBkbyBub3RoaW5nIGFuZCBjaGVjayB0aGUgbG9ncyBv
biBkZWF0aCwgdGhlbiBpdCByZW1haW5zCj4gPj4+IGp1c3QgYSBkZWJ1ZyBzcGxhdC4gSWYgdGhl
cmUgaXMgYSBwbGFuIHRvIGFjdHVhbGx5IGRvIHNvbWV0aGluZyB0bwo+ID4+PiBoYW5kbGUgdGhl
IGVycm9yLCBkbyBpdCEKPiA+Pj4gLUNocmlzCj4gPj4gQUZBSVUgdGhlIG9ubHkgdGhpbmcgd2Ug
Y2FuIGRvIGlzIGVzY2FsYXRlIHRvIGZ1bGwgZ3B1IHJlc2V0LiBIb3dldmVyLAo+ID4+IHRoZSBw
cm9iYWJpbGl0eSBvZiB0aGlzIGZhaWxpbmcgc2hvdWxkIGJlIG5leHQgdG8gbm9uLWV4aXN0ZW50
IChvbmx5IG9uZQo+ID4+IGVuZ2luZSBjYW4gdXNlIHRoZSBTRkMgYXQgYW55IHRpbWUgc28gdGhl
cmUgaXMgbm8gbG9jayBjb250ZW50aW9uKSwgc28KPiA+PiBJJ20gbm90IGNvbnZpbmNlZCB0aGUg
ZmFsbGJhY2sgaXMgd29ydGggdGhlIGVmZm9ydC4gVGhlIGVycm9yIGlzIHN0aWxsCj4gPj4gdXNl
ZnVsIElNTyB0byBjYXRjaCB1bmV4cGVjdGVkIGJlaGF2aW9yIG9uIG5ldyBwbGF0Zm9ybXMsIGFz
IGl0IGhhcHBlbmVkCj4gPj4gaW4gdGhpcyBjYXNlIHdpdGggdGhlIG1lZGlhIHRlYW0gcmVwb3J0
aW5nIHNlZWluZyB0aGlzIG1lc3NhZ2Ugb24gZ2VuMTIKPiA+PiB3aXRoIHRoZSBwcmV2aW91cyBi
ZWhhdmlvci4gVGhpcyBzYWlkLCBJJ20gaGFwcHkgdG8gYWRkIHRoZSBleHRyYSBsb2dpYwo+ID4+
IGlmIHlvdSBiZWxpZXZlIGl0IGlzIHdvcnRoIGl0Lgo+ID4gV2UndmUgc2VlIHRoaXMgbWVzc2Fn
ZSBvbiBldmVyeSBpY2wgcnVuIQo+ID4gLUNocmlzCj4gCj4gSSd2ZSBuZXZlciBub3RpY2VkIGl0
LCB3aGljaCB0ZXN0cyBhcmUgaGl0dGluZyBpdD8gTXkgdW5kZXJzdGFuZGluZyBmcm9tIAo+IHdo
YXQgdGhlIEhXIHRlYW0gc2FpZCBpcyB0aGF0IG9uIElDTCB0aGUgYWNrIHdpbGwgYWx3YXlzIGNv
bWUgYmFjayAoZXZlbiAKPiBpZiBpdCBpcyBub3QgcGFydCBvZiB0aGUgIm9mZmljaWFsIiBTVy9I
VyBpbnRlcmZhY2UpIGFuZCB0aGUgSFcgdHdlYWsgCj4gdGhhdCBzdG9wcyB0aGF0IGlzIGEgZ2Vu
MTIgY2hhbmdlLiBTb21ldGhpbmcgZWxzZSBtaWdodCBiZSB3cm9uZyBpcyB0aGlzIAo+IGlzIGZp
cmluZyBvZmYgaW4gb3VyIElDTCBDSSwgYWxzbyBiZWNhdXNlIEkgZG9uJ3QgdGhpbmsgd2UgaGF2
ZSBhbnkgdGVzdCAKPiBjYXNlIHRoYXQgYWN0dWFsbHkgdXNlcyB0aGUgU0ZDLCBkbyB3ZT8KCmh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MTEvZmktaWNs
LXUyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKCkFsbCBpY2wsIGxpdmVf
aGFuZ2NoZWNrIG9yIGxpdmVfcmVzZXQsIGZvciBhcyBsb25nIGFzIEkgY2FuIHJlbWVtYmVyLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
