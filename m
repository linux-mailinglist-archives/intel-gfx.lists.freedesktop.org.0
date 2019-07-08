Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B19661F96
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0255489C7F;
	Mon,  8 Jul 2019 13:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B316F89C7F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 13:32:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17170149-1500050 for multiple; Mon, 08 Jul 2019 14:32:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-2-chris@chris-wilson.co.uk>
 <20190708113909.18117-1-chris@chris-wilson.co.uk>
 <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
 <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
In-Reply-To: <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
Message-ID: <156259274575.9375.11752216809720039961@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 14:32:25 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add to timeline requires the
 timeline mutex
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDggMTM6MjI6MDEpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNy0wOCAxMzoxODowMikKPiA+IAo+ID4gT24gMDgvMDcvMjAxOSAx
MjozOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiB2MjogVGhvdWdoIGl0IGRvZXNuJ3QgYWZm
ZWN0IHRoZSBjdXJyZW50IHVzZXJzLCBjb250ZXh0cyBtYXkgc2hhcmUKPiA+ID4gdGltZWxpbmVz
IHNvIGNoZWNrIGlmIHdlIGFscmVhZHkgaG9sZCB0aGUgcmlnaHQgbXV0ZXguCj4gCj4gPiA+ICtp
bnQgaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBpbnRlbF90
aW1lbGluZSAqdGwgPSBjZS0+cmluZy0+dGltZWxpbmU7Cj4gPiA+ICsgICAgIGludCBlcnI7Cj4g
PiA+ICsKPiA+ID4gKyAgICAgLyogT25seSBzdWl0YWJsZSBmb3IgdXNlIGluIHJlbW90ZWx5IG1v
ZGlmeWluZyB0aGlzIGNvbnRleHQgKi8KPiA+ID4gKyAgICAgR0VNX0JVR19PTihycS0+aHdfY29u
dGV4dCA9PSBjZSk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgaWYgKHJxLT50aW1lbGluZSAhPSB0bCkg
eyAvKiBiZXdhcmUgdGltZWxpbmUgc2hhcmluZyAqLwo+ID4gPiArICAgICAgICAgICAgIGVyciA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZV9uZXN0ZWQoJnRsLT5tdXRleCwKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNJTkdMRV9ERVBU
SF9ORVNUSU5HKTsKPiA+IAo+ID4gV2hpY2ggY2FsbGVyIGlzIGhvbGRpbmcgdGwtPm11dGV4Pwo+
IAo+IE5vbmUgdG9kYXksIGJ1dCBpdCBpcyBjb25jZWl2YWJsZS4gU28gcmF0aGVyIHRoYW4gaGF2
ZSBhIG15c3RlcmlvdXMKPiBkZWFkbG9jayBub3QgcmVwb3J0ZWQgYnkgbG9ja2RlcCBpbiB0aGUg
ZnV0dXJlLCBuaXAgdGhlIHByb2JsZW0gaW4gdGhlCj4gYnVkLgoKSnVzdCBpbiBjYXNlLCBjcmVh
dGluZyBhIHJlcXVlc3QgdGFrZXMgdGhlIHRpbWVsaW5lLT5tdXRleCBhbmQgaG9sZHMgaXQKdW50
aWwgc3VibWl0dGVkLiBTbyB0aGUgc2NlbmFyaW8gSSBjb25zaWRlcmVkIHdhcyBpZiBvbmUgdXNl
ciBjb250ZXh0CndhbnRlZCB0byBtb2RpZnkgYW5vdGhlciBvbmUgKHdoaWNoIGNvdWxkIHdvcmsp
LCBidXQgdGhleSBoYXBwZW4gdG8gYmUKb24gYSBjb21tb24gdGltZWxpbmUuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
