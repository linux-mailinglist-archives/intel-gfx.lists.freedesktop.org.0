Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 013B2B7AC2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 15:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0576F745;
	Thu, 19 Sep 2019 13:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00CB6F745
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 13:46:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18546438-1500050 for multiple; Thu, 19 Sep 2019 14:46:26 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87o8zgpfps.fsf@gaia.fi.intel.com>
References: <20190915163749.19540-1-chris@chris-wilson.co.uk>
 <87y2ykpho6.fsf@gaia.fi.intel.com>
 <156889851819.31102.8177609464820930352@skylake-alporthouse-com>
 <87o8zgpfps.fsf@gaia.fi.intel.com>
Message-ID: <156890078444.31102.7183394483376139635@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 14:46:24 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise CS TLB
 invalidation
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTE5IDE0OjM5OjU5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDktMTkgMTM6NTc6NDUpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiA+ICsgICAgIHZtYSA9IGk5MTVfdm1hX2lu
c3RhbmNlKG91dCwgdm0sIE5VTEwpOwo+ID4+ID4gKyAgICAgaWYgKElTX0VSUih2bWEpKSB7Cj4g
Pj4gPiArICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIodm1hKTsKPiA+PiA+ICsgICAgICAgICAg
ICAgZ290byBvdXRfYmF0Y2g7Cj4gPj4gPiArICAgICB9Cj4gPj4gPiArCj4gPj4gPiArICAgICBl
cnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLAo+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIFBJTl9VU0VSIHwKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICBQSU5fT0ZGU0VU
X0ZJWEVEIHwKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAodm0tPnRvdGFsIC0gUEFH
RV9TSVpFKSk7Cj4gPj4gPiArICAgICBpZiAoZXJyKQo+ID4+ID4gKyAgICAgICAgICAgICBnb3Rv
IG91dF9vdXQ7Cj4gPj4gCj4gPj4gb3V0X3B1dD8KPiA+Cj4gPiBKb29uYXMgbGlrZXMgb3V0OiBm
b3Igbm9ybWFsIGV4aXQgcGF0aHMgdGhhdCBkb3VibGUgZm9yIGVycm9yIGhhbmRsaW5nLgo+IAo+
IE9rLiBGaW5lIHdpdGggbWUuIEkganVzdCBsaWtlIHRoZSBsYXN0IHBhcnQgdG8gZGVzY3JpYmUg
d2hhdCB0aGUgZmlyc3QgcGFydAo+IG9mIG9uaW9uIG91dCBkb2VzLiBEb24ndCBoYXZlIHRvIHNv
IG11Y2ggc2Nyb2xsIGJhY2sgYW5kIGZvcnRoCj4gaW4gZWRpdG9yLgoKT2gsIEkgZGlkbid0IG5v
dGljZSBJIGhhZCBhIHR5cG8uIEkgdGhvdWdodCBpdCB3YXMgb3V0X3B1dCEKLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
