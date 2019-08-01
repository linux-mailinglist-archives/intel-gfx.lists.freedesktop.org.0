Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379D17D7F7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737876E3EC;
	Thu,  1 Aug 2019 08:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6A66E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:45:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17781180-1500050 for multiple; Thu, 01 Aug 2019 09:45:41 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
 <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
 <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
 <156447952867.6373.9286619293752854474@skylake-alporthouse-com>
 <32108668-b421-7b9f-ede1-19a87e2c0717@linux.intel.com>
In-Reply-To: <32108668-b421-7b9f-ede1-19a87e2c0717@linux.intel.com>
Message-ID: <156464913891.2512.14334081651644221889@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 09:45:38 +0100
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Push the ring creation
 flags to the backend
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAwOTo0MjoxNSkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDEwOjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTI5IDEzOjU5OjIyKQo+ID4+Cj4gPj4gT24gMjYvMDcvMjAxOSAwOTo0Mywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTI0IDEyOjExOjU0KQo+ID4+Pj4KPiA+Pj4+IE9uIDIzLzA3LzIwMTkgMTk6MzgsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZyb20gdGhl
IG91dGVyIEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+ID4+Pj4+IGludGVsX2NvdG5leHQgdG8g
YXZvaWQgYW4gdW5zaWdodGx5IGJhY2stcmVmZXJlbmNlIGZyb20gaW5zaWRlIHRoZQo+ID4+Pj4+
IGJhY2tlbmQuCj4gPj4+Pgo+ID4+Pj4gU29ycnkgSSBmaW5kIHRoaXMgcXVpdGUgdWdseS4gUGFz
c2luZyBpbiBpbnRlZ2VycyBpbiBwb2ludGVycyBmaWxlZCBhbmQKPiA+Pj4+IGNhc3RpbmcgYmFj
ayBhbmQgZm9ydGguCj4gPj4+Cj4gPj4+IEJ1dCBiZXR0ZXIgdGhhbiBhIHVuaW9uLCBzaW5jZSBv
bmNlIHRoZSBpbnRlbF9jb250ZXh0IGlzIGFjdGl2ZSwgdGhlCj4gPj4+IHJpbmcgaXMgYWx3YXlz
IGEgcmluZy4KPiA+Pgo+ID4+IFVubGVzcyBpdCBpcyB1NjQgc2l6ZS4gSSBhbSBub3QgYnV5aW5n
IGl0LiA6KQo+ID4gCj4gPiBXZSBkb24ndCBuZWVkIHU2NCBzaXplPyBJIGRvbid0IHVuZGVyc3Rh
bmQgd2hhdCB5b3UgbWVhbi4KPiAKPiBJIGNvbXBsYWluZWQgYWJvdXQgdmVyeSB1bm9idmlvdXMg
YW5kIHF1ZXN0aW9uYWJsZSBoYWNrIG9mIHBhc3NpbmcgdGhlIAo+IHNpemUgaW4gdGhlIHBvaW50
ZXIgZmllbGQgYW5kIHlvdSBzYWlkIGl0IGlzIGJldHRlciB0aGFuIGFuIHVuaW9uLiBGb3IgCj4g
bWUgdW5pb24gY2VydGFpbmx5IHJhdGVzIHdheSBoaWdoZXIgdGhhbiB0aGUgY2FzaW5nIGhhY2sg
d2l0aCBhIG1hY3JvLgo+IAo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4g
Pj4+Pj4gaW5kZXggNmQzOTExNDY5ODAxLi5lMjM3YmNlY2ZhMWYgMTAwNjQ0Cj4gPj4+Pj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+Pj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ID4+Pj4+IEBAIC0zMjgsMTAgKzMyOCwx
NCBAQCBzdGF0aWMgdm9pZCBwcmludF9jb250ZXh0X3N0YXRzKHN0cnVjdCBzZXFfZmlsZSAqbSwK
PiA+Pj4+PiAgICAgCj4gPj4+Pj4gICAgICAgICAgICAgICAgIGZvcl9lYWNoX2dlbV9lbmdpbmUo
Y2UsCj4gPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9nZW1f
Y29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKPiA+Pj4+PiAtICAgICAgICAgICAgICAg
ICAgICAgaWYgKGNlLT5zdGF0ZSkKPiA+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBwZXJfZmlsZV9zdGF0cygwLCBjZS0+c3RhdGUtPm9iaiwgJmtzdGF0cyk7Cj4gPj4+Pj4gLSAg
ICAgICAgICAgICAgICAgICAgIGlmIChjZS0+cmluZykKPiA+Pj4+PiArICAgICAgICAgICAgICAg
ICAgICAgaW50ZWxfY29udGV4dF9sb2NrX3Bpbm5lZChjZSk7Cj4gPj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIGlmIChpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpIHsKPiA+Pj4+Cj4gPj4+
PiBBbmQgdGhlc2UgaHVua3MgZG8gbm90IHNlZW0gdG8gYmVsb25nIHRvIHRoaXMgcGF0Y2guCj4g
Pj4+Cj4gPj4+IFRoZW4geW91IGFyZSBtaXN0YWtlbi4gVGhlIGJ1ZyBpcyBvbGRlciwgYnV0IGl0
IGdldHMgdHJpZ2dlcmVkIGJ5IHRoaXMKPiA+Pj4gcGF0Y2guCj4gPj4KPiA+PiBHZXRzIHRyaWdn
ZXJlZCBvciBnZXRzIGZpeGVkPyBQZXJoYXBzIGNvbW1pdCBtZXNzYWdlIG5lZWRzIGltcHJvdmlu
Zwo+ID4+IHNpbmNlIGl0IHRhbGtzIGFib3V0IGF2b2lkaW5nIGFuIHVuc2lnaHRseSBiYWNrLXJl
ZmVyZW5jZSAoYW5kIEkgYXJndWUKPiA+PiBjZS0+cmluZyA9IHU2NCBzaXplIGlzIGF0IGxlYXN0
IGVxdWFsbHkgdW5zaWdodGx5KSwgYW5kIG5vdCBmaXhpbmcgYW55IGJ1Z3MuCj4gPiAKPiA+IFRo
ZSBidWcgaXMgYSBwb3RlbnRpYWwgcmFjZSBjb25kaXRpb24gaW5zaWRlIHRoZSBkZWJ1Zy4gV2hh
dCBpcyBoaXQgaGVyZQo+ID4gaXMgdGhhdCB3aXRob3V0IHRoZSBzdGF0ZSBvZiB0aGUgcGluIGtu
b3duLCB0aGUgbWVhbmluZyBvZiBjZS0+cmluZyBpcwo+ID4gdW5rbm93biAod2hlcmVhcyB0aGUg
b3RoZXIgYnVnIGlzIHRoYXQgY29uZGl0aW9uIGNhbiBjaGFuZ2UgZHVyaW5nCj4gPiBldmFsdWF0
aW9uKS4KPiAKPiBDb21taXQgZG9lc24ndCBzYXkgYW55dGhpbmcgYWJvdXQgZml4aW5nIGJ1Z3Mu
IEl0IHRhbGtzIGFib3V0IG1ha2luZyB0aGUgCj4gY29kZSBwcmV0dGllci4KPiAKPiBJZiBoZXJl
IHdlIG5lZWQgYSBwaW4sIHRoZW4gaXQgc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2ggd2hpY2gg
c2F5cyBzbyAKPiBhbmQgZG9lcyBvbmx5IG9uZSB0aGluZy4KCkl0J3Mgbm90IGFzIGlmIHdlIGFy
ZSBnb2luZyB0byBiYWNrcG9ydCBpdC4uLiBUaGUgYnVnIGlzIHRyaXZpYWwgdG8gaGl0CndoZW4g
cmluZyBpcyBhbGlhcywgdG8gaGl0IGl0IGdvaW5nIHRoZSBvdGhlciB3YXkgcmVxdWlyZXMgbW9y
ZSBtdXRleApldmFzaW9uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
