Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A700D17B57
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 16:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DC88922A;
	Wed,  8 May 2019 14:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6F68922A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 14:10:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16491306-1500050 for multiple; Wed, 08 May 2019 15:10:25 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87d0ktdp1w.fsf@gaia.fi.intel.com>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <87ftppdt6x.fsf@gaia.fi.intel.com>
 <155731921087.28545.15445835892642603065@skylake-alporthouse-com>
 <87d0ktdp1w.fsf@gaia.fi.intel.com>
Message-ID: <155732462346.28545.10338796007020060240@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 May 2019 15:10:23 +0100
Subject: Re: [Intel-gfx] [PATCH 01/40] drm/i915/hangcheck: Replace
 hangcheck.seqno with RING_HEAD
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTA4IDE1OjAwOjExKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDUtMDggMTM6MzA6NDYpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IEFmdGVyIHJlYWxpc2luZyB3
ZSBuZWVkIHRvIHNhbXBsZSBSSU5HX1NUQVJUIHRvIGRldGVjdCBjb250ZXh0IHN3aXRjaGVzCj4g
Pj4gPiBmcm9tIHByZWVtcHRpb24gZXZlbnRzIHRoYXQgZG8gbm90IGFsbG93IGZvciB0aGUgc2Vx
bm8gdG8gYWR2YW5jZSwgd2UKPiA+PiA+IGNhbiBhbHNvIHJlYWxpc2UgdGhhdCB0aGUgc2Vxbm8g
aXRzZWxmIGlzIGp1c3QgYSBkaXN0YW5jZSBhbG9uZyB0aGUgcmluZwo+ID4+ID4gYW5kIHNvIGNh
biBiZSByZXBsYWNlZCBieSBzYW1wbGluZyBSSU5HX0hFQUQuCj4gPj4gPgo+ID4+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiBD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gPiAt
LS0KPiA+PiA+ICBzdGF0aWMgZW51bSBpbnRlbF9lbmdpbmVfaGFuZ2NoZWNrX2FjdGlvbgo+ID4+
ID4gQEAgLTE1Niw3ICsxNTYsNyBAQCBoYW5nY2hlY2tfZ2V0X2FjdGlvbihzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUsCj4gPj4gPiAgICAgICBpZiAoZW5naW5lLT5oYW5nY2hlY2subGFz
dF9yaW5nICE9IGhjLT5yaW5nKQo+ID4+ID4gICAgICAgICAgICAgICByZXR1cm4gRU5HSU5FX0FD
VElWRV9TRVFOTzsKPiA+PiA+ICAKPiA+PiA+IC0gICAgIGlmIChlbmdpbmUtPmhhbmdjaGVjay5s
YXN0X3NlcW5vICE9IGhjLT5zZXFubykKPiA+PiA+ICsgICAgIGlmIChlbmdpbmUtPmhhbmdjaGVj
ay5sYXN0X2hlYWQgIT0gaGMtPmhlYWQpCj4gPj4gPiAgICAgICAgICAgICAgIHJldHVybiBFTkdJ
TkVfQUNUSVZFX1NFUU5POwo+ID4+IAo+ID4+IENoYW5nZSB0aGUgZW51bSBhbHNvPwo+ID4KPiA+
IFBmZmlmbGUuIEFzIGZhciBhcyBoYW5nY2hlY2sgZ29lcyBSSU5HX1NUQVJUOlJJTkdfSEVBRCBj
b21wcmlzZSBpdHMKPiA+IHNlcW5vLgo+ID4KPiA+IE1ha2VzIGZvciBhIGdvb2QgdGFsa2luZyBw
b2ludCBpbiBhIGZldyB5ZWFycyB0aW1lIDopCj4gCj4gRmFpciBlbm91Z2guCj4gCj4gPgo+ID4+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+PiA+IGluZGV4IGQxYTU0ZDJjM2Q1
ZC4uZjFkNjI3NDZlMDY2IDEwMDY0NAo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gPj4gPiBAQCAtMjI3NSwxMiArMjI3NSw2IEBAIHN0YXRpYyB1MzIgKmdlbjhfZW1p
dF9maW5pX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykK
PiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWVzdC0+dGltZWxpbmUt
Pmh3c3Bfb2Zmc2V0LAo+ID4+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAwKTsK
PiA+PiA+ICAKPiA+PiA+IC0gICAgIGNzID0gZ2VuOF9lbWl0X2dndHRfd3JpdGUoY3MsCj4gPj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX2VuZ2luZV9uZXh0X2hhbmdj
aGVja19zZXFubyhyZXF1ZXN0LT5lbmdpbmUpLAo+ID4+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBJOTE1X0dFTV9IV1NfSEFOR0NIRUNLX0FERFIsCj4gPj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIE1JX0ZMVVNIX0RXX1NUT1JFX0lOREVYKTsKPiA+PiA+IC0K
PiA+PiA+IC0KPiA+PiA+ICAgICAgICpjcysrID0gTUlfVVNFUl9JTlRFUlJVUFQ7Cj4gPj4gPiAg
ICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJfRU5BQkxFOwo+ID4+ID4gIAo+ID4+
ID4gQEAgLTIyOTcsMTQgKzIyOTEsMTEgQEAgc3RhdGljIHUzMiAqZ2VuOF9lbWl0X2ZpbmlfYnJl
YWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKPiA+PiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPnRpbWVsaW5lLT5o
d3NwX29mZnNldCwKPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJ
UEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VUX0NBQ0hFX0ZMVVNIIHwKPiA+PiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8
Cj4gPj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xf
RENfRkxVU0hfRU5BQkxFIHwKPiA+PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFCTEUgfAo+ID4+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0NTX1NUQUxMKTsKPiA+PiAKPiA+PiA/Pz8K
PiA+Cj4gPiBLYWJ5bGFrZSBzZW5kcyB0aGUgaW50ZXJydXB0IHRvbyBlYXJseSBvdGhlcndpc2Uu
IFRoZSBoYW5nY2hlY2sgd3JpdGUKPiA+IHNhdmVkIHVzIGJ5IHB1cmUgYWNjaWRlbnQuCj4gCj4g
SSByZWFkIHRoZSBkaWZmIHdyb25nIGF0IGZpcnN0IHRyeSBhbHNvLCB3YXMgY29uY2VybmVkIHRo
YXQgd2UgbG9zdCBjcyBzdGFsbC4KPiBSZWdhcmRsZXNzIHRoaXMgY291bGQgYmVuZWZpdCBmcm9t
IGEgY29tbWVudCBleHBsYWluaW5nIHRoZSBuZWVkIHRvCj4gZm9yY2Ugc3luYyBmb3IgdGhlIGlu
dHIuCgpJbmRlZWQsIHRoYXQgaXMgc2Vuc2libGUgc2luY2UgaXQncyBhbiBlbXBpcmljYWwgcmVz
dWx0IGFuZCB3b3J0aAp2YWxpZGF0aW5nIGFnYWluIGxhdGVyLiBEb25lIGFuZCBwdXNoZWQsIHRo
YW5rcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
