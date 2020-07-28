Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A39230C9E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 16:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000E86E2FF;
	Tue, 28 Jul 2020 14:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5AE6E2FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 14:42:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21959044-1500050 for multiple; Tue, 28 Jul 2020 15:42:45 +0100
MIME-Version: 1.0
In-Reply-To: <ce53a500-4ec1-44f4-17d9-c63fad5aaf21@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <ce53a500-4ec1-44f4-17d9-c63fad5aaf21@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 15:42:45 +0100
Message-ID: <159594736565.665.915217302462044205@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTIzIDE1OjMzOjIwKQo+
IAo+IE9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFdlIG5lZWQg
dG8gbWFrZSB0aGUgRE1BIGFsbG9jYXRpb25zIHVzZWQgZm9yIHBhZ2UgZGlyZWN0b3JpZXMgdG8g
YmUKPiA+IHBlcmZvcm1lZCB1cCBmcm9udCBzbyB0aGF0IHdlIGNhbiBpbmNsdWRlIHRob3NlIGFs
bG9jYXRpb25zIGluIG91cgo+ID4gbWVtb3J5IHJlc2VydmF0aW9uIHBhc3MuIFRoZSBkb3duc2lk
ZSBpcyB0aGF0IHdlIGhhdmUgdG8gYXNzdW1lIHRoZQo+ID4gd29yc3QgY2FzZSwgZXZlbiBiZWZv
cmUgd2Uga25vdyB0aGUgZmluYWwgbGF5b3V0LCBhbmQgYWx3YXlzIGFsbG9jYXRlCj4gPiBlbm91
Z2ggcGFnZSBkaXJlY3RvcmllcyBmb3IgdGhpcyBvYmplY3QsIGV2ZW4gd2hlbiB0aGVyZSB3aWxs
IGJlIG92ZXJsYXAuCj4gPiBUaGlzIHVuZm9ydHVuYXRlbHkgY2FuIGJlIHF1aXRlIGV4cGVuc2l2
ZSwgZXNwZWNpYWxseSBhcyB3ZSBoYXZlIHRvCj4gPiBjbGVhci9yZXNldCB0aGUgcGFnZSBkaXJl
Y3RvcmllcyBhbmQgRE1BIHBhZ2VzLCBidXQgaXQgc2hvdWxkIG9ubHkgYmUKPiA+IHJlcXVpcmVk
IGR1cmluZyBlYXJseSBwaGFzZXMgb2YgYSB3b3JrbG9hZCB3aGVuIG5ldyBvYmplY3RzIGFyZSBi
ZWluZwo+ID4gZGlzY292ZXJlZCwgb3IgYWZ0ZXIgbWVtb3J5L2V2aWN0aW9uIHByZXNzdXJlIHdo
ZW4gd2UgbmVlZCB0byByZWJpbmQuCj4gPiBPbmNlIHdlIHJlYWNoIHN0ZWFkeSBzdGF0ZSwgdGhl
IG9iamVjdHMgc2hvdWxkIG5vdCBiZSBtb3ZlZCBhbmQgd2Ugbm8KPiA+IGxvbmdlciBuZWVkIHRv
IHByZWFsbG9jYXRpbmcgdGhlIHBhZ2VzIHRhYmxlcy4KPiA+Cj4gPiBJdCBzaG91bGQgYmUgbm90
ZWQgdGhhdCB0aGUgbGlmZXRpbWUgZm9yIHRoZSBwYWdlIGRpcmVjdG9yaWVzIERNQSBpcwo+ID4g
bW9yZSBvciBsZXNzIGRlY291cGxlZCBmcm9tIGluZGl2aWR1YWwgZmVuY2VzIGFzIHRoZXkgd2ls
bCBiZSBzaGFyZWQKPiA+IGFjcm9zcyBvYmplY3RzIGFjcm9zcyB0aW1lbGluZXMuCj4gPgo+ID4g
djI6IE9ubHkgYWxsb2NhdGUgZW5vdWdoIFBEIHNwYWNlIGZvciB0aGUgUFRFIHdlIG1heSB1c2Us
IHdlIGRvIG5vdCBuZWVkCj4gPiB0byBhbGxvY2F0ZSBQRCB0aGF0IHdpbGwgYmUgbGVmdCBhcyBz
Y3JhdGNoLgo+ID4gdjM6IFN0b3JlIHRoZSBzaGlmdCB1bnRvIHRoZSBmaXJzdCBQRCBsZXZlbCB0
byBlbmNhcHN1bGF0ZSB0aGUgZGlmZmVyZW50Cj4gPiBQVEUgY291bnRzIGZvciBnZW42L2dlbjgu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyAgICB8
IDExICstLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW42X3BwZ3R0LmMgICAgICAg
ICAgfCA0MCArKysrLS0tLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0
dC5jICAgICAgICAgIHwgNzggKysrKystLS0tLS0tLS0tLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ2d0dC5jICAgICAgICAgIHwgNjAgKysrKysrLS0tLS0tLS0KPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmggICAgICAgICAgIHwgNDYgKysrKysr
LS0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9wcGd0dC5jICAgICAgICAg
fCA4MyArKysrKysrKysrKysrKysrLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgICAgICAgICAgICAgICB8IDI3ICsrKy0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCA2MCArKysrKysrKy0tLS0tLQo+ID4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuYyAgICAgfCAyMiArKy0tLQo+ID4g
ICA5IGZpbGVzIGNoYW5nZWQsIDIzNyBpbnNlcnRpb25zKCspLCAxOTAgZGVsZXRpb25zKC0pCj4g
Cj4gSGksIENocmlzLAo+IAo+IE92ZXJhbGwgbG9va3MgZ29vZCwgYnV0IGEgcXVlc3Rpb246IFdo
eSBjYW4ndCB3ZSBwZXJmb3JtIHBhZ2UtdGFibGUgCj4gbWVtb3J5IGFsbG9jYXRpb24gb24gZGVt
YW5kIHdoZW4gbmVlZGVkPwoKV2UgbmVlZCB0byBhbGxvY2F0ZSBkZXZpY2UgbWVtb3J5IGZvciB0
aGUgcGFnZSB0YWJsZXMuIFRoZSBpbnRlbnRpb24KaGVyZSBpcyBnYXRoZXIgdXAgYWxsIHRoZSBy
ZXNvdXJjZSByZXF1aXJlbWVudHMgZm9yIGFuIG9wZXJhdGlvbiBhbmQKcmVzZXJ2ZSB0aGVtIGlu
IGEgc2luZ2xlIHBhc3MuCiAKPiBBcmUgd2UgdGhlbiB1bmRlciBhIG11dGV4IHRoYXQgd2UgYWxz
byB0YWtlIGR1cmluZyByZWNsYWltPwoKWWVzLCB0aGUgdm0tPm11dGV4IGlzIHVzZWQgZHVyaW5n
IHRoZSBzaHJpbmtlciB0byByZXZva2UgdGhlIEdQVQpiaW5kaW5ncyBiZWZvcmUgcmV0dXJuaW5n
IG1lbW9yeSB0byB0aGUgc3lzdGVtLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
