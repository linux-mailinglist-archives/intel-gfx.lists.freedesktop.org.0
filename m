Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD76D8C01B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 20:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0805C6E21E;
	Tue, 13 Aug 2019 18:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DFD6E21D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 18:05:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18019790-1500050 for multiple; Tue, 13 Aug 2019 19:05:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190813174121.129593-1-stuart.summers@intel.com>
 <156571886655.2301.17809116448263908293@skylake-alporthouse-com>
 <1565719218.30036.41.camel@intel.com>
In-Reply-To: <1565719218.30036.41.camel@intel.com>
Message-ID: <156571952762.2301.3246824173423837636@skylake-alporthouse-com>
Date: Tue, 13 Aug 2019 19:05:27 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Use render class for
 MI_SET_CONTEXT
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0xMyAxOTowMDoxOCkKPiBPbiBUdWUsIDIw
MTktMDgtMTMgYXQgMTg6NTQgKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3Rpbmcg
U3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMTMgMTg6NDE6MTkpCj4gPiA+IFJlcGxhY2UgR0VNX0JV
R19PTiB3aXRoIGV4cGxpY2l0IGNoZWNrIGZvciByZW5kZXIgY2xhc3MKPiA+ID4gd2hlbiBkb2lu
ZyB0aGUga2VybmVsIGNvbnRleHQgc3dpdGNoLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTog
U3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgNCArLS0tCj4g
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdi
dWZmZXIuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
Ywo+ID4gPiBpbmRleCA0MDlkNzY0ZjhjNmQuLjA0ZWE5YmJiODhjZSAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwo+ID4gPiBAQCAtMTc4
MSw5ICsxNzgxLDcgQEAgc3RhdGljIGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0Cj4gPiA+ICpycSkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiA+IMKgCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChy
cS0+aHdfY29udGV4dC0+c3RhdGUpIHsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoEdFTV9CVUdfT04oZW5naW5lLT5pZCAhPSBSQ1MwKTsKPiA+ID4gLQo+ID4gPiArwqDCoMKg
wqDCoMKgwqBpZiAoZW5naW5lLT5jbGFzcyA9PSBSRU5ERVJfQ0xBU1MgJiYgcnEtPmh3X2NvbnRl
eHQtPnN0YXRlKSAKPiA+ID4gewo+ID4gCj4gPiBJdCB3b3VsZCBjb21lIGFzIHNvbWUgc3VycHJp
c2UgZm9yIHRoaXMgbm90IHRvIGJlIHJjczAuIEkgZG9uJ3QgdGhpbmsKPiA+IHdlCj4gPiBhcmUg
cHJlcGFyZWQgZm9yIHRoYXQgb24gbGVnYWN5IEhXIDopCj4gCj4gSGVoLCBJIHdpbGwgYWRtaXQg
dGhhdCB0aGlzIGlzbid0IGEgc3RyaWN0IHJlcXVpcmVtZW50IGJ1dCB0aG91Z2h0IGl0Cj4gd291
bGQgYmUgbmljZSB0byBoYXZlLiBJZiB5b3UncmUgb3Bwb3NlZCB3ZSBjYW4gZHJvcCB0aGlzLgoK
SSB0aGluayB0aGlzIGlzIG1vcmUgYSBzdW1tYXRpb24gb2Ygd2hhdCB3YXMgZ29pbmcgdGhyb3Vn
aCB0aGUKcHJvZ3JhbW1lcnMgbWluZCBhdCB0aGUgdGltZSAidGhpcyBoYWQgYmV0dGVyIGJlIHJj
czAgb3Igd2UndmUgc2NyZXdlZAp1cCBiYWRseSBhbmQgSSBoYXZlIG5vIGlkZWEgd2hhdCdzIGdv
aW5nIG9uIG9yIGhvdyB0aGUgSFcgaXMgZ29pbmcgdG8KcmVzcG9uZCIgOikKLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
