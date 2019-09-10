Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BD0AE597
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 10:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFCC6E86F;
	Tue, 10 Sep 2019 08:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4143E6E86F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 08:32:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18434399-1500050 for multiple; Tue, 10 Sep 2019 09:32:47 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190910073931.GY7482@intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190910073931.GY7482@intel.com>
Message-ID: <156810436552.30942.9639859021370310826@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Sep 2019 09:32:45 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Allow clobbering gpu
 resets if the display is off
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTAgMDg6Mzk6MzEpCj4gT24gTW9uLCBT
ZXAgMDksIDIwMTkgYXQgMTE6NTU6MzVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
SWYgdGhlIGRpc3BsYXkgaXMgaW5hY3RpdmUsIHdlIG5lZWQgbm90IHdvcnJ5IGFib3V0IHRoZSBn
cHUgcmVzZXQKPiA+IGNsb2JiZXJpbmcgdGhlIGRpc3BsYXkhCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDE4ICsrKysrKysrKysrKysr
KysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNl
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4gaW5kZXggYjlk
ODRkNTJlOTg2Li5mZTU3Mjk2Yjc5MGMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCj4gPiBAQCAtNyw2ICs3LDcgQEAKPiA+ICAjaW5jbHVkZSA8bGludXgvc2No
ZWQvbW0uaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvc3RvcF9tYWNoaW5lLmg+Cj4gPiAgCj4gPiAr
I2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheS5oIgo+ID4gICNpbmNsdWRlICJkaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9vdmVy
bGF5LmgiCj4gPiAgCj4gPiBAQCAtNzI5LDYgKzczMCwyMSBAQCBzdGF0aWMgdm9pZCBub3Bfc3Vi
bWl0X3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKPiA+ICAgICAgIGludGVs
X2VuZ2luZV9xdWV1ZV9icmVhZGNydW1icyhlbmdpbmUpOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0
aWMgYm9vbCByZXNldF9jbG9iYmVyc19kaXNwbGF5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ID4gKwo+ID4g
KyAgICAgaWYgKCFJTlRFTF9JTkZPKGk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlzcGxheSkK
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4gKwo+ID4gKyAgICAgZm9yX2VhY2hf
aW50ZWxfY3J0YygmaTkxNS0+ZHJtLCBjcnRjKSB7Cj4gPiArICAgICAgICAgICAgIGlmIChjcnRj
LT5hY3RpdmUpCj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHRydWU7Cj4gPiArICAg
ICB9Cj4gCj4gVGhpcyBmZWVscyByYWN5LiBjcnRjLT5hY3RpdmUgZ2V0cyBzZXQgc29tZXdoZXJl
IGluIHRoZSBtaWRkbGUgb2YgdGhlCj4gbW9kZXNldCwgc28gbG9va3MgbGlrZSBub3cgd2UgY291
bGQgY2xvYmJlciBhbGwgdGhlIHN0dWZmIHdlJ3ZlIGFscmVhZHkKPiBzZXQgdXAgYmVmb3JlIGNy
dGMtPmFjdGl2ZSBnb3Qgc2V0LgoKVGhlIHF1ZXN0aW9uIGlzLCBkb2VzIGl0IG1hdHRlcj8gQWZ0
ZXIgd2UgdW53ZWRnZSwgd2UgY2xvYmJlciBhZ2FpbiBmb3IKcmVhbHouIE5vdCB0aGF0IHdlIGhh
dmUgYW55dGhpbmcgZGVsaWJlcmF0ZWx5IHRyeWluZyB0byByYWNlCndlZGdlLXZzLW1vZGVzZXQo
b24vb2ZmKS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
