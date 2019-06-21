Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DB44EC09
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3B66E8DB;
	Fri, 21 Jun 2019 15:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BEC6E8DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:30:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16981174-1500050 for multiple; Fri, 21 Jun 2019 16:30:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190621130544.24226-1-chris@chris-wilson.co.uk>
 <20190621130544.24226-2-chris@chris-wilson.co.uk>
 <556cc5aa-bd24-78cc-9b90-f24b9ec265cb@intel.com>
In-Reply-To: <556cc5aa-bd24-78cc-9b90-f24b9ec265cb@intel.com>
Message-ID: <156113105336.2401.11659768507493751138@skylake-alporthouse-com>
Date: Fri, 21 Jun 2019 16:30:53 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Track i915_active using
 debugobjects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjEgMTY6MjU6MDUpCj4gT24gMjEvMDYvMjAx
OSAxNDowNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUHJvdmlkZSBydW50aW1lIGFzc2VydHMg
YW5kIHRyYWNraW5nIG9mIGk5MTVfYWN0aXZlIHZpYSBkZWJ1Z29iamVjdHMuCj4gPiBGb3IgZXhh
bXBsZSwgdGhpcyBzaG91bGQgYWxsb3cgdXMgdG8gY2hlY2sgdGhhdCB0aGUgaTkxNV9hY3RpdmUg
aXMgb25seQo+ID4gYWN0aXZlIHdoZW4gd2UgZXhwZWN0IGl0IHRvIGJlIGFuZCBpcyBuZXZlciBm
cmVlZCB0b28gZWFybHkuCj4gPiAKPiA+IE9uZSBjb25zZXF1ZW5jZSBpcyB0aGF0LCBmb3Igc2lt
cGxpY2l0eSwgd2Ugbm8gbG9uZ2VyIGFsbG93IGk5MTVfYWN0aXZlCj4gPiB0byBiZSBvbi1zdGFj
ayB3aGljaCBvbmx5IGFmZmVjdGVkIHRoZSBzZWxmdGVzdHMuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgIHwgNjYgKysrKysr
KysrKysrKysrKy0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0
aXZlLmMgfCA3OCArKysrKysrKysrKysrKystLS0tLQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDEy
MyBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPiA+IAo+IAo+IFtzbmlwXQo+IAo+ID4g
Kwo+ID4gK3N0YXRpYyBzdHJ1Y3QgbGl2ZV9hY3RpdmUgKgo+ID4gK19fbGl2ZV9hY3RpdmVfc2V0
dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgIHsKPiA+ICAgICAgIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiA+ICAgICAgIHN0cnVjdCBpOTE1X3N3X2ZlbmNl
ICpzdWJtaXQ7Cj4gPiArICAgICBzdHJ1Y3QgbGl2ZV9hY3RpdmUgKmFjdGl2ZTsKPiA+ICAgICAg
IGVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+ID4gICAgICAgdW5zaWduZWQgaW50IGNvdW50ID0g
MDsKPiA+ICAgICAgIGludCBlcnIgPSAwOwo+ID4gICAKPiA+IC0gICAgIHN1Ym1pdCA9IGhlYXBf
ZmVuY2VfY3JlYXRlKEdGUF9LRVJORUwpOwo+ID4gLSAgICAgaWYgKCFzdWJtaXQpCj4gPiAtICAg
ICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+ID4gKyAgICAgYWN0aXZlID0gX19saXZlX2FsbG9j
KGk5MTUpOwo+ID4gKyAgICAgaWYgKCFhY3RpdmUpCj4gPiArICAgICAgICAgICAgIHJldHVybiBF
UlJfUFRSKC1FTk9NRU0pOwo+ID4gICAKPiA+IC0gICAgIGk5MTVfYWN0aXZlX2luaXQoaTkxNSwg
JmFjdGl2ZS0+YmFzZSwgX19saXZlX2FjdGl2ZV9yZXRpcmUpOwo+ID4gLSAgICAgYWN0aXZlLT5y
ZXRpcmVkID0gZmFsc2U7Cj4gPiArICAgICBzdWJtaXQgPSBoZWFwX2ZlbmNlX2NyZWF0ZShHRlBf
S0VSTkVMKTsKPiA+ICsgICAgIGlmICghc3VibWl0KSB7Cj4gPiArICAgICAgICAgICAgIGtmcmVl
KGFjdGl2ZSk7Cj4gPiArICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ID4g
KyAgICAgfQo+ID4gICAKPiA+ICAgICAgIGlmICghaTkxNV9hY3RpdmVfYWNxdWlyZSgmYWN0aXZl
LT5iYXNlKSkgewo+ID4gICAgICAgICAgICAgICBwcl9lcnIoIkZpcnN0IGk5MTVfYWN0aXZlX2Fj
cXVpcmUgc2hvdWxkIHJlcG9ydCBiZWluZyBpZGxlXG4iKTsKPiA+IEBAIC04NCw2NCArMTA3LDc5
IEBAIHN0YXRpYyBpbnQgX19saXZlX2FjdGl2ZV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiA+ICAgICAgIGk5MTVfc3dfZmVuY2VfY29tbWl0KHN1Ym1pdCk7Cj4gPiAgICAg
ICBoZWFwX2ZlbmNlX3B1dChzdWJtaXQpOwo+ID4gICAKPiA+IC0gICAgIHJldHVybiBlcnI7Cj4g
PiArICAgICAvKiBYWFggbGVha3MgbGl2ZV9hY3RpdmUgb24gZXJyb3IgKi8KPiA+ICsgICAgIHJl
dHVybiBlcnIgPyBFUlJfUFRSKGVycikgOiBhY3RpdmUKPiAKPiBUb28gbXVjaCBvZiBhIHBhaW4/
CgpJbiB0aGUgbmV4dCBwYXRjaCAod2l0aCBhbiBhY3RpdmUgY2FsbGJhY2spLCBpdCBncmV3IGEg
cmVmIGNvdW50IGFuZApnZXRzIGNsZWFuZWQgdXAgYXV0b21hdGljYWxseS4gQ291bGQgaGF2ZSBw
dWxsZWQgaXQgaW50byB0aGlzIHBhdGNoLCBidXQKdG9vIG11Y2ggZWZmb3J0IGZvciBhIGhvcGVm
dWxseSBuZXZlciBzZWVuIHJlc3VsdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
