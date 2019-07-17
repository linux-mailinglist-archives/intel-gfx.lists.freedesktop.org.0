Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6756BDB5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB2089DB2;
	Wed, 17 Jul 2019 13:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D63489DB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:56:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17372029-1500050 for multiple; Wed, 17 Jul 2019 14:56:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-2-chris@chris-wilson.co.uk>
 <dacd4362-4e76-5165-37e5-a9d4308835bb@linux.intel.com>
 <156336891995.4375.4394847020984312949@skylake-alporthouse-com>
 <b462d4a4-d2ef-e44f-e633-a7f22f6142ef@linux.intel.com>
 <156337025269.4375.8104628033771518861@skylake-alporthouse-com>
 <8f97cfb9-3cd9-ac96-f28f-1415fe9bbe6b@linux.intel.com>
In-Reply-To: <8f97cfb9-3cd9-ac96-f28f-1415fe9bbe6b@linux.intel.com>
Message-ID: <156337178063.4375.5570535715333917830@skylake-alporthouse-com>
Date: Wed, 17 Jul 2019 14:56:20 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Push engine stopping into
 reset-prepare
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDo0MjoxNSkKPiAKPiBPbiAxNy8w
Ny8yMDE5IDE0OjMwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTE3IDE0OjIxOjUwKQo+ID4+Cj4gPj4gT24gMTcvMDcvMjAxOSAxNDowOCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE3IDE0OjA0OjM0KQo+ID4+Pj4KPiA+Pj4+IE9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiAtICAgICAgICAgICAgIGlmIChyZXRyeSkKPiA+Pj4+PiAtICAg
ICAgICAgICAgICAgICAgICAgc3RvcF9lbmdpbmVzKGd0LCBlbmdpbmVfbWFzayk7Cj4gPj4+Pj4g
LQo+ID4+Pj4KPiA+Pj4+IE9ubHkgb3RoZXIgZnVuY3Rpb25hbCBjaGFuZ2UgSSBzZWUgaXMgdGhh
dCB3ZSBzdG9wIHJldHJ5aW5nIHRvIHN0b3AgdGhlCj4gPj4+PiBlbmdpbmVzIGJlZm9yZSByZXNl
dCBhdHRlbXB0cy4gSSBkb24ndCBrbm93IGlmIHRoYXQgaXMgYSBjb25jZXJuIG9yIG5vdC4KPiA+
Pj4KPiA+Pj4gQWgsIGJ1dCB3ZSBkbyBzdG9wIHRoZSBlbmdpbmUgYmVmb3JlIHJlc2V0cyBpbiAq
cmVzZXRfcHJlcGFyZS4gVGhlIG90aGVyCj4gPj4+IHBhdGggdG8gYXJyaXZlIGlzIGluIHNhbml0
aXplIHdoZXJlIHdlIGRvbid0IGtub3cgZW5vdWdoIHN0YXRlIHRvIHNhZmVseQo+ID4+PiB0d2Vh
ayB0aGUgZW5naW5lcy4gRm9yIHRob3NlLCBJIGNsYWltIGl0IHNob3VsZG4ndCBtYXR0ZXIgYXMg
dGhlIGVuZ2luZXMKPiA+Pj4gc2hvdWxkIGJlIGlkbGUgYW5kIHdlIG9ubHkgbmVlZCB0aGUgcmVz
ZXQgdG8gY2xlYXIgc3RhbGUgY29udGV4dCBzdGF0ZS4KPiA+Pgo+ID4+IFllcyBJIGtub3cgdGhh
dCB3ZSBkbyBjYWxsIHN0b3AgaW4gcHJlcGFyZSwganVzdCBub3Qgb24gdGhlIHJlc2V0IHJldHJ5
Cj4gPj4gcGF0aC4gSXQncyB0aGUgYWJvdmUgbG9vcCwgaWYgcmVzZXQgd2FzIGZhaWxpbmcgYW5k
IG5lZWRlZCByZXRyaWVzCj4gPj4gYmVmb3JlIHdlIHdvdWxkIHJlLXJldHJpZWQgc3RvcHBpbmcg
ZW5naW5lcyBhbmQgbm93IHdlIHdvdWxkIG5vdC4KPiA+IAo+ID4gVGhlIGVuZ2luZXMgYXJlIHN0
aWxsIHN0b3BwZWQuIFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyB0byByZW1vdmUgdGhlCj4gPiBk
YW5nZXJvdXMgY2xlYXJpbmcgb2YgUklOR19IRUFEL0NUTC4KPiAKPiBPa2F5IGZvciBleGVjbGlz
dHMsIGJ1dCBmb3IgcmluZ2J1ZmZlciBJIHdhcyBzaW1wbHkgYXNraW5nIGlmIF9vbmVfIG9mIAo+
IHRoZSByZWFzb25zIGZvciBmYWlsZWQgcmVzZXQgY291bGQgYmUgZmFpbHVyZSB0byBzdG9wIGNz
LiBJbiB3aGljaCBjYXNlIAo+IHJlbW92YWwgb2Ygc3RvcF9lbmdpbmVzIGZyb20gdGhlIHJldHJ5
IGxvb3AgbWlnaHQgYmUgZGV0cmltZW50YWwgZm9yIAo+IHJpbmdidWZmZXIuCgpGb3IgcmluZ2J1
ZmZlciwgd2UgZG8gdGhlIGZ1bGwgc2hlYmFuZyBpbiBwcmVwYXJlX3Jlc2V0LCB3aXRoIGEgbmlj
ZQpzcGxhdCBpZiB3ZSBmYWlsIHRvIGNsZWFyIHRoZSBoZWFkLiBpaXJjLCB0aGF0IGhhcyBuZXZl
ciBiZWVuIGFuIGlzc3VlLAphbHRob3VnaCBvbmUgc2hvdWxkIGFsd2F5cyByZXNlcnZlIGp1ZGdt
ZW50IGZvciBnNHggdG8gcmFuZG9tbHkgZmFpbAp3aXRoIGhlYWQgdXBkYXRlcy4gSWYgaXQgaGVs
cHMsIHdlIGNhbiByZW1vdmUgdGhlIGxvb3AgaGVyZSBhcyBJIGRvbid0CnRoaW5rIGl0IGFjY29t
cGxpc2hlcyBhbnl0aGluZyAtLSB0aGUgZXhhbXBsZXMgSSBoYXZlIHdoZXJlIGl0IHRpbWVzIG91
dAphcmUgZm9sbG93ZWQgYnkgYSBoYXJkIG1hY2hpbmUgaGFuZy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
