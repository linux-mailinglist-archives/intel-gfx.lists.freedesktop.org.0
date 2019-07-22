Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9214770517
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB2489CF1;
	Mon, 22 Jul 2019 16:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2EC89CF1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:09:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17509125-1500050 for multiple; Mon, 22 Jul 2019 17:09:51 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190722131830.14601-1-chris@chris-wilson.co.uk>
 <7c12951d-44a6-dcc0-502e-ca75103503ea@linux.intel.com>
In-Reply-To: <7c12951d-44a6-dcc0-502e-ca75103503ea@linux.intel.com>
Message-ID: <156381178828.31349.12259482798167701754@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 17:09:48 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt:
 WaSetVfGuardbandPreemptionVertexCount (bdw/chv)
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxNjo1NTozOSkKPiAKPiAKPiBPbiAy
Mi8wNy8yMDE5IDE0OjE4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyBhIHcvYSBmb3IgZGF0
YSBjb3JydXB0aW9uLCB3ZSBhcmUgdG9sZCB0byBzZXQgdGhlIHByZWVtcHRpb24gdmVydGV4Cj4g
PiBjb3VudCB0byAweDIwIG9uIGJvb3QuIEFzIGl0IGlzIGEgY291bnRlciwgb25jZSBjb250ZXh0
cyBhcmUgYWN0aXZlIHdlCj4gPiBkbyBub3QgZXhwZWN0IHRoZSB2YWx1ZSB0byBiZSByZXRhaW5l
ZCwgc28gaGlkZSBpdCBmcm9tIHRoZSB3YS1saXN0Cj4gPiB2ZXJpZmljYXRpb24uCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4g
PiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8
IDI0ICsrKysrKysrKysrKysrKysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0
aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKPiA+IGluZGV4IDcwNGFjZTAxZTdmNS4uNzYyOGY4NDYzMzE3IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gQEAgLTY0Nyw2
ICs2NDcsMjYgQEAgaW50IGludGVsX2VuZ2luZV9lbWl0X2N0eF93YShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKPiA+ICAgICAgIHJldHVybiAwOwo+ID4gICB9Cj4gPiAgIAo+ID4gK3N0YXRpYyB2
b2lkCj4gPiArZ2VuOF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwpCj4gPiArewo+ID4gKyAgICAgLyogV2FTZXRWZkd1YXJkYmFuZFByZWVtcHRpb25WZXJ0ZXhD
b3VudDpiZHcsY2h2ICovCj4gPiArICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBfTU1JTygw
eDgzQTQpLCAwLCAweGZmZmYwMDIwKTsKPiAKPiAweDgzYTQgaXMgbGlzdGVkIGluIHNhdmVkIHN0
YXRlIGZvciB0aGUgY29udGV4dCBzbyBoYXZlIHlvdSB0cmllZCAKPiBwdXR0aW5nIGl0IGFzIGEg
Y29udGV4dCB3b3JrYXJvdW5kPwoKSXQgZXhwbGljaXRseSBzYWlkIGF0IGJvb3QsIHNvIGl0IG1h
ZGUgbWUgdGhpbmsgaXQgaGFzIHRvIGJlIGJlZm9yZSB3ZQpldmVuIGxvYWQgYSBjb250ZXh0IC8g
d2FrZSB1cCB0aGUgZ3B1LiBIb3cgb24gZWFydGggYSBjb3VudGVyIHZhbHVlIGxlYWRzCnRvIGNv
cnJ1cHRpb24gSSBoYXZlIG5vIGlkZWEsIG5vciB3aGF0IGlzIHNvIHNwZWNpYWwgYWJvdXQgMzIu
IE5vciB3aHkgYQpjb3VudGVyIHdvdWxkIGJlIG1hc2tlZC4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
