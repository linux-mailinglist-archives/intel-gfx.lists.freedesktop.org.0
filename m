Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0AC1C37
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 09:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4A86E2D3;
	Mon, 30 Sep 2019 07:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182A06E2D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 07:44:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18662685-1500050 for multiple; Mon, 30 Sep 2019 08:43:57 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190929202554.GF2902@intel.intel>
References: <20190928100145.13165-1-chris@chris-wilson.co.uk>
 <20190929202554.GF2902@intel.intel>
Message-ID: <156982943100.1880.2081560177017075999@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Sep 2019 08:43:51 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Magic udelay to relieve the
 random lockups with multiple engines
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA5LTI5IDIxOjI1OjU0KQo+IEhpIENocmlzLAo+IAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBAQCAtMTE4Niw2ICsxMTg2LDIx
IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQo+ID4gICAgICAgLyogd2UgbmVlZCB0byBtYW51YWxseSBsb2FkIHRoZSBz
dWJtaXQgcXVldWUgKi8KPiA+ICAgICAgIGlmIChleGVjbGlzdHMtPmN0cmxfcmVnKQo+ID4gICAg
ICAgICAgICAgICB3cml0ZWwoRUxfQ1RSTF9MT0FELCBleGVjbGlzdHMtPmN0cmxfcmVnKTsKPiA+
ICsKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBOb3cgdGhpcyBpcyBldmlsIG1hZ2ljLgo+ID4g
KyAgICAgICoKPiA+ICsgICAgICAqIEFkZGluZyB0aGUgc2FtZSB1ZGVsYXkoKSB0byBwcm9jZXNz
X2NzYiBiZWZvcmUgd2UgY2xlYXIKPiA+ICsgICAgICAqIGV4ZWNsaXN0cy0+cGVuZGluZyAodGhh
dCBpcyBhZnRlciB3ZSByZWNlaXZlIHRoZSBIVyBhY2sgZm9yIHRoaXMKPiA+ICsgICAgICAqIHN1
Ym1pdCBhbmQgYmVmb3JlIHdlIGNhbiBzdWJtaXQgYWdhaW4pIGRvZXMgbm90IHJlbGlldmUgdGhl
IHN5bXB0b21zCj4gPiArICAgICAgKiAobWFjaGluZSBsb2NrdXApLiBTbyBpcyB0aGUgYWN0aXZl
IGRpZmZlcmVuY2UgaGVyZSB0aGUgd2FpdCB1bmRlcgo+ID4gKyAgICAgICogdGhlIGlycS1vZmYg
c3BpbmxvY2s/IFRoYXQgZ2l2ZXMgbW9yZSBjcmVkYW5jZSB0byB0aGUgdGhlb3J5IHRoYXQKPiA+
ICsgICAgICAqIHRoZSBpc3N1ZSBpcyBpbnRlcnJ1cHQgZGVsaXZlcnkuIEFsc28gbm90ZSB0aGF0
IHdlIHN0aWxsIHJlbHkgb24KPiA+ICsgICAgICAqIGRpc2FibGluZyBSUFMsIGFnYWluIHRoYXQg
c2VlbXMgbGlrZSBhbiBpc3N1ZSB3aXRoIHNpbXVsdGFuZW91cwo+ID4gKyAgICAgICogR1QgaW50
ZXJydXB0cyBiZWluZyBkZWxpdmVyZWQgdG8gdGhlIHNhbWUgQ1BVLgo+ID4gKyAgICAgICovCj4g
PiArICAgICBpZiAoSVNfVElHRVJMQUtFKGVuZ2luZS0+aTkxNSkpCj4gPiArICAgICAgICAgICAg
IHVkZWxheSgyNTApOwo+IAo+IHlvdSB3YW50IGEgZGVsYXkgb2YgMjUwdXMuIFR3byBxdWVzdGlv
bnM6Cj4gCj4gMS4gd2h5IDI1MD8KCk1hZ2ljLiBQdXJlbHkgZmlyc3QgcmFuZG9tIG51bWJlci4K
Cj4gMi4gaXMgdGhlcmUgYW55IGdvb2QgcmVhc29uIGZvciB1c2luZyAndWRlbGF5JyBmb3Igc2xl
ZXBpbmcgMjUwdXMKPiAgICAodGhhdCBpcyBxdWl0ZSBhIGxvbmcgdGltZSkgYW5kIG5vdCAndXNs
ZWVwJz8KCldlIGFyZSBpbnNpZGUgaW50ZXJydXB0IGNvbnRleHQuIFRoYXQgdGhpcyB0cmljayB3
b3JrZWQgbXVjaCBiZXR0ZXIKaW5zaWRlIGludGVycnVwdCBjb250ZXh0IHRoYW4gb3V0IG1ha2Vz
IG1lIHN1c3BlY3QgaW50ZXJydXB0IGRlbGl2ZXJ5IHNvCm11Y2ggbW9yZS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
