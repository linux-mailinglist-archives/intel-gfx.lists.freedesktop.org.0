Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BC920630C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 23:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E8D6EA5C;
	Tue, 23 Jun 2020 21:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1B16EA5C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 21:19:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21595790-1500050 for multiple; Tue, 23 Jun 2020 22:19:09 +0100
MIME-Version: 1.0
In-Reply-To: <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
 <159290661156.6856.12185315246799210214@build.alporthouse.com>
 <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Christian König <ckoenig.leichtzumerken@gmail.com>, Dave Airlie <airlied@gmail.com>
Message-ID: <159294714433.24819.3044662904558073290@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 23 Jun 2020 22:19:04 +0100
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYXZlIEFpcmxpZSAoMjAyMC0wNi0yMyAyMjowMToyNCkKPiBPbiBUdWUsIDIzIEp1
biAyMDIwIGF0IDIwOjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2
LTIzIDEwOjMzOjIwKQo+ID4gPiBIaSwgQ2hyaXMhCj4gPiA+Cj4gPiA+IE9uIDYvMjIvMjAgMTE6
NTkgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gPiBJbiBvcmRlciB0byBhY3R1YWxseSBo
YW5kbGUgZXZpY3Rpb24gYW5kIHdoYXQgbm90LCB3ZSBuZWVkIHRvIHByb2Nlc3MKPiA+ID4gPiBh
bGwgdGhlIG9iamVjdHMgdG9nZXRoZXIgdW5kZXIgYSBjb21tb24gbG9jaywgcmVzZXJ2YXRpb25f
d3dfY2xhc3MuIEFzCj4gPiA+ID4gc3VjaCwgZG8gYSBtZW1vcnkgcmVzZXJ2YXRpb24gcGFzcyBh
ZnRlciBsb29raW5nIHVwIHRoZSBvYmplY3Qvdm1hLAo+ID4gPiA+IHdoaWNoIHRoZW4gZmVlZHMg
aW50byB0aGUgcmVzdCBvZiBleGVjYnVmIFtyZWxvY2F0aW9uLCBjbWRwYXJzaW5nLAo+ID4gPiA+
IGZsdXNoaW5nIGFuZCBvZmMgZXhlY3V0aW9uXS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+IC0tLQo+
ID4gPiA+ICAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwg
OTEgKysrKysrKysrKysrKystLS0tLQo+ID4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2Vy
dGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+IFdoaWNoIHRyZWUgaXMgdGhp
cyBhZ2FpbnN0PyBUaGUgc2VyaWVzIGRvZXNuJ3QgYXBwbHkgY2xlYW5seSBhZ2FpbnN0Cj4gPiA+
IGRybS10aXA/Cj4gPgo+ID4gSXQncyBjb250aW51aW5nIG9uIGZyb20gdGhlIHNjaGVkdWxlciBw
YXRjaGVzLCB0aGUgYnVnIGZpeGVzIGFuZCB0aGUKPiA+IGlyaXMtZGVmZXJyZWQtZmVuY2Ugd29y
ay4gSSB0aG91Z2h0IHRocm93aW5nIGFsbCBvZiB0aG9zZSBvbGQgcGF0Y2hlcwo+ID4gaW50byB0
aGUgcGlsZSB3b3VsZCBoYXZlIGJlZW4gZGlzdHJhY3RpbmcuCj4gPgo+ID4gPiAuLi4KPiA+ID4K
PiA+ID4gPiArc3RhdGljIGludCBlYl9yZXNlcnZlX21tKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViKQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgY29uc3QgdTY0IGlkeCA9IGViLT5jb250ZXh0
LT50aW1lbGluZS0+ZmVuY2VfY29udGV4dDsKPiA+ID4gPiArICAgICBzdHJ1Y3Qgd3dfYWNxdWly
ZV9jdHggYWNxdWlyZTsKPiA+ID4gPiArICAgICBzdHJ1Y3QgZWJfdm1hICpldjsKPiA+ID4gPiAr
ICAgICBpbnQgZXJyOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBlYi0+bW1fZmVuY2UgPSBfX2Rt
YV9mZW5jZV9jcmVhdGVfcHJveHkoMCwgMCk7Cj4gPiA+ID4gKyAgICAgaWYgKCFlYi0+bW1fZmVu
Y2UpCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ID4KPiA+ID4gV2hl
cmUgYXJlIHRoZSBwcm94eSBmZW5jZSBmdW5jdGlvbnMgZGVmaW5lZD8KPiA+Cj4gPiBJbiBkbWEt
ZmVuY2UtcHJveHkuYyA7KQo+IAo+IFRoZSBkbWEtZmVuY2UtcHJveHkgdGhhdCBDaHJpc3RpYW4g
TkFLZWQgYmVmb3JlPwoKSSBkbyBub3QgaGF2ZSBhbiBlbWFpbCBmcm9tIENocmlzdGlhbiBhYm91
dCBkbWEtZmVuY2UtcHJveHkgaW4gdGhlIGxhc3QKMyB5ZWFycyBpdCBoYXMgYmVlbiBvbiB0aGUg
bGlzdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
