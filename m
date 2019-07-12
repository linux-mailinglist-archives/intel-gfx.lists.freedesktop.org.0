Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E80866A61
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 11:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41786E33B;
	Fri, 12 Jul 2019 09:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1206E33B
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 09:47:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17243271-1500050 for multiple; Fri, 12 Jul 2019 10:30:39 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b6682d3f-0593-1ca2-ab85-6c198dec1853@intel.com>
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
 <20190710064454.682-14-chris@chris-wilson.co.uk>
 <b6682d3f-0593-1ca2-ab85-6c198dec1853@intel.com>
Message-ID: <156292383824.31052.5483898074245627451@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 12 Jul 2019 10:30:38 +0100
Subject: Re: [Intel-gfx] [PATCH 14/14] drm/i915/gt: Use intel_gt as the
 primary object for handling resets
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTExIDIxOjQ1OjM2KQo+IDxz
bmlwPgo+IAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2Vs
ZnRlc3QuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2Vs
ZnRlc3QuYwo+ID4gQEAgLTI1Niw3ICsyNTYsNyBAQCBpbnQgX19pOTE1X2xpdmVfc2V0dXAodm9p
ZCAqZGF0YSkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkYXRhOwo+ID4gICAKPiA+IC0gICAgIHJldHVybiBpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5
MTUpOwo+ID4gKyAgICAgcmV0dXJuIGludGVsX2d0X3Rlcm1pbmFsbHlfd2VkZ2VkKCZpOTE1LT5n
dCk7Cj4gPiAgIH0KPiA+ICAgCj4gPiAgIGludCBfX2k5MTVfbGl2ZV90ZWFyZG93bihpbnQgZXJy
LCB2b2lkICpkYXRhKQo+ID4gQEAgLTI3Myw2ICsyNzMsMjcgQEAgaW50IF9faTkxNV9saXZlX3Rl
YXJkb3duKGludCBlcnIsIHZvaWQgKmRhdGEpCj4gPiAgICAgICByZXR1cm4gZXJyOwo+ID4gICB9
Cj4gPiAgIAo+ID4gK2ludCBfX2ludGVsX2d0X2xpdmVfc2V0dXAodm9pZCAqZGF0YSkKPiA+ICt7
Cj4gPiArICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZGF0YTsKPiA+ICsKPiA+ICsgICAgIHJl
dHVybiBpbnRlbF9ndF90ZXJtaW5hbGx5X3dlZGdlZChndCk7Cj4gPiArfQo+ID4gKwo+ID4gK2lu
dCBfX2ludGVsX2d0X2xpdmVfdGVhcmRvd24oaW50IGVyciwgdm9pZCAqZGF0YSkKPiA+ICt7Cj4g
PiArICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZGF0YTsKPiA+ICsKPiA+ICsgICAgIG11dGV4
X2xvY2soJmd0LT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+ICsgICAgIGlmIChpZ3RfZmx1
c2hfdGVzdChndC0+aTkxNSwgSTkxNV9XQUlUX0xPQ0tFRCkpCj4gPiArICAgICAgICAgICAgIGVy
ciA9IC1FSU87Cj4gPiArICAgICBtdXRleF91bmxvY2soJmd0LT5pOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKPiA+ICsKPiA+ICsgICAgIGk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoZ3QtPmk5
MTUpOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGVycjsKPiA+ICt9Cj4gCj4gdGhpcyBpcyBiYXNp
Y2FsbHkgYSBjb3B5IG9mIF9faTkxNV9saXZlX3RlYXJkb3duLCBpdCBtaWdodCBiZSB3b3J0aCAK
PiBoYXZpbmcgb25lIG9mIHRoZSAyIGZ1bmN0aW9ucyBjYWxsIGludG8gdGhlIG90aGVyIGlmIHlv
dSdyZSBub3QgcGxhbm5pbmcgCj4gdG8gaGF2ZSB0aGVtIGRpdmVyZ2UgaW4gdGhlIHNob3J0IHRl
cm0uCgpJIGhhZCBhIHN0YXJ0IG9mIGFuIGlkZWEgdG8gbW92ZSB0aGlzIG1vcmUgbG9jYWwgdG8g
dGhlIHRlc3Qgc3VpdGVzIGFuZApvdXQgb2YgdGhlIGNvcmUuIEFsc28gSSBleHBlY3QgdGhlIGd0
IHRlc3RzIHRvIGRpdmVyZ2Ugc29tZXdoYXQgOikKCj4gcy9pbnRlbF9ncHVfcmVzZXQvaW50ZWxf
Z3RfcmVzZXQvIGFsc28gZGlkbid0IG1hdGVyaWFsaXplIGJ1dCBJJ20gaGFwcHkgCj4gZm9yIHRo
YXQgdG8gY29tZSBsYXRlci4KClJpZ2h0LCBpbnRlbF9ndF9yZXNldCBpcyBhbHJlYWR5IHRha2Vu
LiBUaGUgaW50ZWxfZ3B1X3Jlc2V0IGlzIG1lYW50IHRvCmJlIHRoZSBjb3JlIGFnbm9zdGljIGJp
dCwgdGhhdCB1bmZvcnR1bmF0ZWx5IGdldHMgdXNlZCBvdXRzaWRlLiBJdCdzIG5vdAp0aGUgYmVz
dCBuYW1lLCBidXQgYXQgbGVhc3QgaXQncyB1bmNvbW1vbiBlbm91Z2ggZm9yIHBlb3BsZSBub3Qg
dG8KYXNzdW1lIHRvbyBtdWNoIGFib3V0IGl0LgoKPiBSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBQLlMuOiBp
ZiB5b3UgaGF2ZSB0byByZXNwaW4gZm9yIG90aGVyIHJlYXNvbnMsIGl0J2QgYmUgbmljZSBpZiB5
b3UgY291bGQgCj4gdXNlIGEgbG9jYWwgaTkxNSB2YXJpYWJsZSB3aGVyZSB0aGVyZSBhcmUgYSBs
b3Qgb2Ygcy9pOTE1L2d0LT5pOTE1LyB0byAKPiBrZWVwIHRoZSBkaWZmIHNtYWxsZXIgOlAKClRo
ZSBndC0+aTkxNSB0aGF0IHN0aWNrIG91dCBpbiBteSBtaW5kIGFyZSBpbnRlbnRpb25hbCBzb3Jl
IHBvaW50cyA6KQpJIGV4cGVjdCB0aG9zZSB0byBiZSByZWZpbmVkIHRvIHNvbWV0aGluZyBvdGhl
ciB0aGFuIGd0LT5pOTE1LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
