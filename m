Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E2612F4F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 15:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D6389DB4;
	Fri,  3 May 2019 13:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C21589DB4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 13:37:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16442054-1500050 for multiple; Fri, 03 May 2019 14:37:15 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <1fa5f7d8-9407-2c70-a559-594b47c429d6@linux.intel.com>
In-Reply-To: <1fa5f7d8-9407-2c70-a559-594b47c429d6@linux.intel.com>
Message-ID: <155689063353.3139.2461740627641851596@skylake-alporthouse-com>
Date: Fri, 03 May 2019 14:37:13 +0100
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Assert breadcrumbs are
 correctly ordered in the signal handler
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMyAxNDozMjo1OSkKPiAKPiBPbiAwMy8w
NS8yMDE5IDEyOjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJbnNpZGUgdGhlIHNpZ25hbCBo
YW5kbGVyLCB3ZSBleHBlY3QgdGhlIHJlcXVlc3RzIHRvIGJlIG9yZGVyZWQgYnkgdGhlaXIKPiA+
IGJyZWFkY3J1bWIgc3VjaCB0aGF0IG5vIGxhdGVyIHJlcXVlc3QgbWF5IGJlIGNvbXBsZXRlIGlm
IHdlIGZpbmQgYW4KPiA+IGVhcmxpZXIgaW5jb21wbGV0ZS4gQWRkIGFuIGFzc2VydCB0byBjaGVj
ayB0aGF0IHRoZSBuZXh0IGJyZWFkY3J1bWIKPiA+IHNob3VsZCBub3QgYmUgbG9naWNhbGx5IGJl
Zm9yZSB0aGUgY3VycmVudC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDYgKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9icmVhZGNydW1icy5jCj4gPiBpbmRleCAzY2JmZmQ0MDBiMWIuLmE2ZmZiMjVmNzJhMiAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMK
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPiA+
IEBAIC05OSw2ICs5OSwxMiBAQCB2b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxID0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGxpc3RfZW50cnkocG9zLCB0eXBlb2YoKnJxKSwgc2lnbmFsX2xpbmspOwo+ID4gICAKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKG5leHQgIT0gJmNlLT5zaWduYWxzICYmCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3NlcW5vX3Bhc3NlZChycS0+
ZmVuY2Uuc2Vxbm8sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBsaXN0X2VudHJ5KG5leHQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHR5cGVvZigqcnEpLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzaWduYWxfbGluayktPmZlbmNlLnNlcW5vKSk7Cj4gCj4gSSBrbm93IGl0cyBvbmx5IEdFTV9C
VUdfT04sIGJ1dCB3aHkgY2hlY2sgZm9yIHRoaXMgaW4gdGhlIGlycSBoYW5kbGVyPyAKPiBZb3Ug
ZG9uJ3QgdHJ1c3QgdGhlIGluc2VydGlvbiwgb3IgZ3JvdXAgZGVsZXRpb24/IE9yIGp1c3QgYmVj
dWFzZSBpdCBpcyAKPiB0aGUgc21hbGxlc3QgYW1vdW50IG9mIGNvZGUgdG8gcGlnZ3ktYmFjayBv
biBleGlzdGluZyBpdGVyYXRpb24/CgpBdCB0aGlzIHBvaW50LCBpdCdzIGRvY3VtZW50aW5nIHRo
ZSByZXF1aXJlZCBzb3J0aW5nIG9mIGNlLT5zaWduYWxzLiBUaGUKdnVsbmVyYWJsZSBwYXJ0IGlz
IGxpc3QgaW5zZXJ0aW9uLiBXb3VsZCB5b3UgbGlrZSBzb21ldGhpbmcgbGlrZQoKY2hlY2tfc2ln
bmFsX29yZGVyKGNlLCBycSkKCmFuZCB1c2UgaXQgYWZ0ZXIgaW5zZXJ0aW9uIGFzIHdlbGw/CgpX
ZSBjYW4gZG8gcHJldi9uZXh0IGNoZWNraW5nLCBqdXN0IHRvIGJlIHN1cmUuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
