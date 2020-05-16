Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC81D614E
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 15:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F28176E218;
	Sat, 16 May 2020 13:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0165B6E218
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 13:27:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21214565-1500050 for multiple; Sat, 16 May 2020 14:27:07 +0100
MIME-Version: 1.0
In-Reply-To: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
References: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158963562611.29850.14816037696869192045@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 16 May 2020 14:27:06 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Fix 400 MHz FSB readout on
 elk
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA1LTE0IDEzOjM4OjM2KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTG9va3MgbGlr
ZSBlbGsgcmVkZWZpbmVzIHNvbWUgb2YgdGhlIENMS0NGRyBGU0IgdmFsdWVzIHRvCj4gbWFrZSBy
b29tIGZvciA0MDAgTUh6IEZTQi4gVGhlIHNldHRpbmcgb3ZlcmxhcHMgd2l0aCBvbmUgb2YKPiB0
aGUgMjY2TUh6IHNldHRpbmdzICh3aGljaCBpcyBldmVuIGRvY3VtZW50ZWQgaW4gdGhlIGN0ZyBk
b2NzLAo+IGFuZCBjb2Zpcm1lZCB0byBiZSBjb3JyZWN0IG9uIG15IGN0ZykuIFNvIHdlIGxpbWl0
IHRoZSBzcGVjaWFsCj4gY2FzZSB0byBlbGsgb25seS4KPiAKPiBUaG91Z2ggaXQgbWlnaHQgYWxz
byBiZSB0aGF0IHdlIGhhdmUgc29tZSBraW5kIG9mIGRlc2t0b3AgdnMuCj4gbW9iaWxlIGRpZmZl
cmVuY2UgZ29pbmcgb24gaGVyZSBhcyBlZy4gYm90aCBnMzUgYW5kIGVsawo+IHVzZSAweDAgZm9y
IHRoZSAyNjYgTUh6IHNldHRpbmcsIHZzLiAweDYgdXNlZCBieSBjdGcpLiBUaGUKPiBnMzUgZG9l
c24ndCBsZXQgbWUgc2VsZWN0IDQwME1IeiBmb3IgdGhlIEZTQiBzdHJhcCBzbyBjYW4ndAo+IGNv
bmZpcm0gd2hpY2ggd2F5IGl0IHdvdWxkIGdvIGhlcmUuIEJ1dCBhbnl3YXlzIGFzIGl0IHNlZW1z
Cj4gb25seSBlbGsgaGFzIHRoZSA0MDBNSHogb3B0aW9uIHdlIHNob3VsZG4ndCBsb3NlIGFueXRo
aW5nCj4gYnkgbGltaXRpbmcgdGhlIHNwZWNpYWwgY2FzZSB0byBpdCBhbG9uZS4KPiAKPiBNeSBl
YXJsaWVyIGV4cGVyaW1lbnRzIG9uIHRoaXMgYXBwZWFyIHRvIGhhdmUgYmVlbiBub25zZW5zZSBh
cwo+IHRoZSBjb21tZW50IEkgYWRkZWQgY2xhaW1zIHRoYXQgRlNCIHN0cmFwIG9mIDQwME1IeiBy
ZXN1bHRzIGluCj4gYSB2YWx1ZSBvZiAweDQsIGJ1dCBJJ3ZlIG5vdyByZXRlc3RlZCBpdCBhbmQg
SSBkZWZpbml0ZWx5IGdldCBhCj4gdmFsdWUgb2YgMHg2IGluc3RlYWQuIFNvIGxldCdzIHJlbW92
ZSB0aGF0IGJvZ3VzIGNvbW1lbnQuCj4gCj4gdjI6IHMvX0VMSy9fQUxULyBpbiB0aGUgZGVmaW5l
IGluIGFudGljaXBhdGlvbiBvZiBhIGZ1bGwKPiAgICAgbW9iaWxlIHZzLiBkZXNrdG9wIENMS0NG
RyBzcGxpdAo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+CkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
