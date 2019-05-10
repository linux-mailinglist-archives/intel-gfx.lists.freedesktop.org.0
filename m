Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 561D019F0B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5A189D89;
	Fri, 10 May 2019 14:22:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C3489D89
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:22:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16517357-1500050 for multiple; Fri, 10 May 2019 15:22:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
 <20190510132240.11029-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190510132240.11029-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <155749816502.10894.9129931471260975967@skylake-alporthouse-com>
Date: Fri, 10 May 2019 15:22:45 +0100
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915: Track per-context engine
 busyness
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xMCAxNDoyMjozNikKPiArc3RhdGljIGlu
bGluZSB2b2lkCj4gK2ludGVsX2NvbnRleHRfaW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBi
b29sIHN1Ym1pdCkKPiArewo+ICsgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
ID0gY2UtPmVuZ2luZTsKPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKyAgICAgICBr
dGltZV90IG5vdzsKPiAgCj4gICAgICAgICBpZiAoUkVBRF9PTkNFKGVuZ2luZS0+c3RhdHMuZW5h
YmxlZCkgPT0gMCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAKPiAgICAgICAgIHdyaXRl
X3NlcWxvY2tfaXJxc2F2ZSgmZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7Cj4gIAo+ICsgICAg
ICAgaWYgKHN1Ym1pdCkgewo+ICsgICAgICAgICAgICAgICBub3cgPSBrdGltZV9nZXQoKTsKPiAr
ICAgICAgICAgICAgICAgaW50ZWxfY29udGV4dF9zdGF0c19zdGFydCgmY2UtPnN0YXRzLCBub3cp
Owo+ICsgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgbm93ID0gMDsKPiArICAgICAg
IH0KPiArCj4gICAgICAgICBpZiAoZW5naW5lLT5zdGF0cy5lbmFibGVkID4gMCkgewo+IC0gICAg
ICAgICAgICAgICBpZiAoZW5naW5lLT5zdGF0cy5hY3RpdmUrKyA9PSAwKQo+IC0gICAgICAgICAg
ICAgICAgICAgICAgIGVuZ2luZS0+c3RhdHMuc3RhcnQgPSBrdGltZV9nZXQoKTsKPiArICAgICAg
ICAgICAgICAgaWYgKGVuZ2luZS0+c3RhdHMuYWN0aXZlKysgPT0gMCkgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGlmICghbm93KQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bm93ID0ga3RpbWVfZ2V0KCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5zdGF0
cy5zdGFydCA9IG5vdzsKPiArICAgICAgICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICBHRU1f
QlVHX09OKGVuZ2luZS0+c3RhdHMuYWN0aXZlID09IDApOwo+ICAgICAgICAgfQo+ICAKPiBAQCAt
NDczLDggKzUwMyw5IEBAIGludGVsX2VuZ2luZV9jb250ZXh0X2luKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKPiAgfQo+ICAKPiAgc3RhdGljIGlubGluZSB2b2lkCj4gLWludGVsX2Vu
Z2luZV9jb250ZXh0X291dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gK2ludGVs
X2NvbnRleHRfb3V0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgewo+ICsgICAgICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0gY2UtPmVuZ2luZTsKCmNlLT5ib3VuZC9jZS0+
aW5mbGlnaHQgYXQgdGhpcyBwb2ludC4KCj4gICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+
ICAKPiAgICAgICAgIGlmIChSRUFEX09OQ0UoZW5naW5lLT5zdGF0cy5lbmFibGVkKSA9PSAwKQo+
IEBAIC00ODMsMTQgKzUxNCwyNSBAQCBpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgICAgICAgd3JpdGVfc2VxbG9ja19pcnFzYXZlKCZl
bmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKPiAgCj4gICAgICAgICBpZiAoZW5naW5lLT5zdGF0
cy5lbmFibGVkID4gMCkgewo+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZXhlY2xpc3RfcG9ydCAq
bmV4dF9wb3J0ID0gJmVuZ2luZS0+ZXhlY2xpc3RzLnBvcnRbMV07Cj4gKyAgICAgICAgICAgICAg
IGt0aW1lX3Qgbm93ID0ga3RpbWVfZ2V0KCk7Cj4gICAgICAgICAgICAgICAgIGt0aW1lX3QgbGFz
dDsKPiAgCj4gKyAgICAgICAgICAgICAgIGludGVsX2NvbnRleHRfc3RhdHNfc3RvcCgmY2UtPnN0
YXRzLCBub3cpOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKHBvcnRfaXNzZXQobmV4dF9wb3J0
KSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKm5leHRf
cnEgPSBwb3J0X3JlcXVlc3QobmV4dF9wb3J0KTsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaW50ZWxfY29udGV4dF9zdGF0c19zdGFydCgmbmV4dF9ycS0+aHdfY29udGV4dC0+c3RhdHMs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBub3cp
OwoKT2ggY3Jpa2V5LiBZZWFoLCBJIGFtIHRoaW5raW5nIHdlIG5lZWQgdG8gYml0ZSBidWxsZXQg
YW5kIGFkZCB0aGUgZXhwbGljaXQKdHJhY2tpbmcgdG8gRUxTUCBwcm9tb3Rpb24uIEFzIGx1Y2sg
d291bGQgaGFwcGVuLi4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
