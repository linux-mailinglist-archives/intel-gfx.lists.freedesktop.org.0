Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B39710FED0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85DDA899D6;
	Tue,  3 Dec 2019 13:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F705899D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 13:28:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19442893-1500050 for multiple; Tue, 03 Dec 2019 13:28:14 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191202204316.2665847-1-chris@chris-wilson.co.uk>
 <20191202204316.2665847-3-chris@chris-wilson.co.uk>
 <87blspv8y4.fsf@gaia.fi.intel.com>
In-Reply-To: <87blspv8y4.fsf@gaia.fi.intel.com>
Message-ID: <157537969425.7230.16742410061047813494@skylake-alporthouse-com>
Date: Tue, 03 Dec 2019 13:28:14 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Try hard to bind the context
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEyLTAzIDEzOjI0OjAzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJdCBpcyBub3QgYWNj
ZXB0YWJsZSBmb3IgY29udGV4dCBwaW5uaW5nIHRvIGZhaWwgd2l0aCAtRU5PU1BDIGFzIHdlCj4g
PiBzaG91bGQgYWx3YXlzIGJlIGFibGUgdG8gbWFrZSBzcGFjZSBpbiB0aGUgR0dUVC4gVGhlIG9u
bHkgcmVhc29uIHdlIG1heQo+ID4gZmFpbCBpcyB0aGF0IG90aGVyICJ0ZW1wb3JhcnkiIGNvbnRl
eHQgcGlucyBhcmUgcmVzZXJ2aW5nIHRoZWlyIHNwYWNlCj4gPiBhbmQgd2UgbmVlZCB0byB3YWl0
IGZvciBhbiBhdmFpbGFibGUgc2xvdC4KPiA+Cj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY3Ngo+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDIxICsrKysrKysrKysrKysrKysrKy0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiBpbmRleCAxMGIzZDZkNDQwNDUu
LjdlMjBjNmY2MmNkNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+
ID4gQEAgLTE5MzQsOSArMTkzNCwyNCBAQCBpbnQgZ2VuNl9wcGd0dF9waW4oc3RydWN0IGk5MTVf
cHBndHQgKmJhc2UpCj4gPiAgICAgICAgKiBzaXplLiBXZSBhbGxvY2F0ZSBhdCB0aGUgdG9wIG9m
IHRoZSBHVFQgdG8gYXZvaWQgZnJhZ21lbnRhdGlvbi4KPiA+ICAgICAgICAqLwo+ID4gICAgICAg
aWYgKCFhdG9taWNfcmVhZCgmcHBndHQtPnBpbl9jb3VudCkpIHsKPiA+IC0gICAgICAgICAgICAg
ZXJyID0gaTkxNV92bWFfcGluKHBwZ3R0LT52bWEsCj4gPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAwLCBHRU42X1BEX0FMSUdOLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKPiA+ICsgICAgICAgICAgICAgZG8gewo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0g
cHBndHQtPnZtYS0+dm07Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgZXJyID0gaTkx
NV92bWFfcGluKHBwZ3R0LT52bWEsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDAsIEdFTjZfUERfQUxJR04sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFBJTl9HTE9CQUwgfCBQSU5fSElHSCk7Cj4gPiArICAgICAgICAgICAg
ICAgICAgICAgaWYgKGVyciAhPSAtRU5PU1BDKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgLyogV2UgZG9uJ3Qg
dGFrZSBubyBmb3IgYW4gYW5zd2VyISAqLwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVyciA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmdm0tPm11dGV4KTsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBpZiAoZXJyID09IDApIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGVyciA9IGk5MTVfZ2VtX2V2aWN0X3ZtKHZtKTsKPiAKPiBXaHkgd291bGQgd2UgaG9sZCBhbnkg
c2lnbmlmaWNhbnQgYW1vdW50IG9mIHZtYXM/Cj4gSSB0aG91Z2h0IHdlIG5lZWQgdG8ga2ljayB0
aGUgZ2d0dCBoYXJkIGluIG9yZGVyIGZvciB0aGlzCj4gdG8gZml0IGluLgoKSW5mbGlnaHQgY29u
dGV4dHMgd2lsbCBiZSBwaW5uZWQgb2NjdXB5aW5nIHRoYXQgc3BhY2UgdW50aWwgdGhleSBhcmUK
Zmx1c2hlZC4gV2UgdXNlZCB0byB0cmFjayBjb250ZXh0IGFjdGl2aXR5IHNvIHdlIGNvdWxkIGV4
cGxpY2l0bHkgd2FpdApvbiBwaW5uZWQgY29udGV4dHMsIGJ1dCB3ZSBoYWQgdG8gZm9yZ28gdGhh
dCBpbiBvcmRlciB0byByYW5kb21seQpyZW9yZGVyZWQgZXhlY3V0aW9uIChndWMpLgoKVGhlIGNo
YWxsZW5nZSBpcyB0aGF0IGV2aWN0LXNvbWV0aGluZyBjYW4gbm90IGFsd2F5cyBzdWNjZWVkIGJ5
IGl0c2VsZgppbiB1bnBpbm5pbmcgdGhvc2UgY29udGV4dHMsIHNvIHdlIG5lZWQgdG8ga2ljayBh
Z2Fpbi4gSW4gdGhlIGZ1dHVyZSwKcGlwZWxpbmVkIGV2aWN0aW9ucy4uLiBUaGUgZnV0dXJlIGlz
IGNvbXBsaWNhdGVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
