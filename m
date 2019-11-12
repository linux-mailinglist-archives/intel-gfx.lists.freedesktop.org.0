Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2D3F8C1D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 10:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68A96EAD6;
	Tue, 12 Nov 2019 09:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589B16EAD6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 09:42:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19170270-1500050 for multiple; Tue, 12 Nov 2019 09:42:25 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>, Francisco Jerez <currojerez@riseup.net>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uEgFS8FAatJBzsEid72sy2_h8x2WsyhsZuyyfaoD1Lg0Q@mail.gmail.com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-4-chris@chris-wilson.co.uk>
 <CAKMK7uEgFS8FAatJBzsEid72sy2_h8x2WsyhsZuyyfaoD1Lg0Q@mail.gmail.com>
Message-ID: <157355174344.9322.13853897964725973571@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 12 Nov 2019 09:42:23 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTEyIDA5OjA5OjA2KQo+IE9uIFRodSwgSnVs
IDE4LCAyMDE5IGF0IDQ6NTQgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+ID4KPiA+IEVuc3VyZSB0aGF0IHdlIGZsdXNoIGFueSBjYWNoZSBkaXJ0IG91
dCB0byBtYWluIG1lbW9yeSBiZWZvcmUgdGhlIHVzZXIKPiA+IGNoYW5nZXMgdGhlIGNhY2hlLWxl
dmVsIGFzIHRoZXkgbWF5IGVsZWN0IHRvIGJ5cGFzcyB0aGUgY2FjaGUgKGV2ZW4gYWZ0ZXIKPiA+
IGRlY2xhcmluZyB0aGVpciBhY2Nlc3MgY2FjaGUtY29oZXJlbnQpIHZpYSB1c2Ugb2YgdW5wcml2
aWxlZ2VkIE1PQ1MuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IC0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyB8IDUgKysr
KysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwo+ID4gaW5kZXggMmUzY2UyYTY5NjUz
Li41ZDQxZTc2OWE0MjggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG9tYWluLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kb21haW4uYwo+ID4gQEAgLTI3Nyw2ICsyNzcsMTEgQEAgaW50IGk5MTVfZ2VtX29iamVj
dF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+Cj4g
PiAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkodm1hLCAmb2JqLT52bWEubGlzdCwgb2JqX2xp
bmspCj4gPiAgICAgICAgICAgICAgICAgdm1hLT5ub2RlLmNvbG9yID0gY2FjaGVfbGV2ZWw7Cj4g
PiArCj4gPiArICAgICAgIC8qIEZsdXNoIGFueSBwcmV2aW91cyBjYWNoZSBkaXJ0IGluIGNhc2Ug
b2YgY2FjaGUgYnlwYXNzICovCj4gPiArICAgICAgIGlmIChvYmotPmNhY2hlX2RpcnR5ICYgfm9i
ai0+Y2FjaGVfY29oZXJlbnQpCj4gPiArICAgICAgICAgICAgICAgaTkxNV9nZW1fY2xmbHVzaF9v
YmplY3Qob2JqLCBJOTE1X0NMRkxVU0hfU1lOQyk7Cj4gCj4gSSB0aGluayB3cml0aW5nIG91dCB0
aGUgYml0IGxvZ2ljIGluc3RlYWQgb2YgaW1wbGljaXRseSByZWx5aW5nIG9uIHRoZQo+ICNkZWZp
bmVzIHdvdWxkIGJlIG11Y2ggYmV0dGVyLCBpLmUuICYmICEoY2FjaGVfY29oZXJlbnQgJgo+IENP
SEVSRU5UX0ZPUl9SRUFEKS4gUGx1cyBJIHRoaW5rIHdlIG9ubHkgbmVlZCB0byBzZXQgY2FjaGVf
ZGlydHkgPQo+IHRydWUgaWYgd2UgZG9uJ3QgZmx1c2ggaGVyZSBhbHJlYWR5LCB0byBhdm9pZCBk
b3VibGUgZmx1c2hpbmc/CgpOby4gVGhlIG1hc2sgaXMgYmVpbmcgdXBkYXRlZCwgc28geW91IG5l
ZWQgdG8gZmx1c2ggYmVmb3JlIHlvdSBsb3NlCnRyYWNrLiBUaGUgY2FjaGUgaXMgdGhlbiBjbGVh
cmVkIG9mIHRoZSBkaXJ0eSBiaXQgc28gd29uJ3QgYmUgZmx1c2hlZAphZ2FpbiB1bnRpbCBkaXJ0
eSBhbmQgbm8gbG9uZ2VyIGNvaGVyZW50LiBXZSBuZWVkIHRvIGZsYWcgdGhhdCB0aGUgcGFnZQpp
cyBubyBsb25nZXIgY29oZXJlbnQgYXQgdGhlIGVuZCBvZiBpdHMgbGlmZXRpbWUgKHBhc3Npbmcg
YmFjayB0byB0aGUKc3lzdGVtKSB0byBmb3JjZSB0aGUgZmx1c2ggdGhlbi4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
