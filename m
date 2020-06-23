Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BB0205756
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EF86EA02;
	Tue, 23 Jun 2020 16:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB936EA02
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:37:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21592658-1500050 for multiple; Tue, 23 Jun 2020 17:37:59 +0100
MIME-Version: 1.0
In-Reply-To: <5c0df713-ea47-71ff-9833-9e99b36c5474@shipmail.org>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
 <5c0df713-ea47-71ff-9833-9e99b36c5474@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Message-ID: <159293027424.3967.5828636960136815373@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 23 Jun 2020 17:37:54 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDE2OjM3OjMwKQo+
IAo+IE9uIDYvMjMvMjAgMTI6MDMgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3Rpbmcg
VGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNi0yMyAxMDozMzoyMCkKPiA+PiBIaSwg
Q2hyaXMhCj4gPj4KPiA+PiBPbiA2LzIyLzIwIDExOjU5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPj4+IEluIG9yZGVyIHRvIGFjdHVhbGx5IGhhbmRsZSBldmljdGlvbiBhbmQgd2hhdCBub3Qs
IHdlIG5lZWQgdG8gcHJvY2Vzcwo+ID4+PiBhbGwgdGhlIG9iamVjdHMgdG9nZXRoZXIgdW5kZXIg
YSBjb21tb24gbG9jaywgcmVzZXJ2YXRpb25fd3dfY2xhc3MuIEFzCj4gPj4+IHN1Y2gsIGRvIGEg
bWVtb3J5IHJlc2VydmF0aW9uIHBhc3MgYWZ0ZXIgbG9va2luZyB1cCB0aGUgb2JqZWN0L3ZtYSwK
PiA+Pj4gd2hpY2ggdGhlbiBmZWVkcyBpbnRvIHRoZSByZXN0IG9mIGV4ZWNidWYgW3JlbG9jYXRp
b24sIGNtZHBhcnNpbmcsCj4gPj4+IGZsdXNoaW5nIGFuZCBvZmMgZXhlY3V0aW9uXS4KPiA+Pj4K
PiA+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPj4+IC0tLQo+ID4+PiAgICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVj
YnVmZmVyLmMgICAgfCA5MSArKysrKysrKysrKysrKy0tLS0tCj4gPj4+ICAgIDEgZmlsZSBjaGFu
Z2VkLCA3MCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+PiBXaGljaCB0
cmVlIGlzIHRoaXMgYWdhaW5zdD8gVGhlIHNlcmllcyBkb2Vzbid0IGFwcGx5IGNsZWFubHkgYWdh
aW5zdAo+ID4+IGRybS10aXA/Cj4gPiBJdCdzIGNvbnRpbnVpbmcgb24gZnJvbSB0aGUgc2NoZWR1
bGVyIHBhdGNoZXMsIHRoZSBidWcgZml4ZXMgYW5kIHRoZQo+ID4gaXJpcy1kZWZlcnJlZC1mZW5j
ZSB3b3JrLiBJIHRob3VnaHQgdGhyb3dpbmcgYWxsIG9mIHRob3NlIG9sZCBwYXRjaGVzCj4gPiBp
bnRvIHRoZSBwaWxlIHdvdWxkIGhhdmUgYmVlbiBkaXN0cmFjdGluZy4KPiAKPiBJcyB0aGVyZSBz
b21ld2hlcmUgeW91IGNvdWxkIHB1c2ggYSBicmFuY2ggZm9yIHJldmlld2VyIGNvbnN1bXB0aW9u
PwoKSSBhZGRlZCBzb21lIHBhdGNoZXMgdG8gcmVtb3ZlIHNvbWUgbG9ja2VkIHdhaXRzIGFuZCBo
YXZpbmcgYmVlbgpyZWdyZXR0aW5nIGl0IGFsbCB0b2RheS4gQ29taW5nIHNvb24sIHNjaGVkdWxl
cnMgZm9yIGFsbC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
