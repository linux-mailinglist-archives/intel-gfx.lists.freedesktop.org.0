Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F2658B90
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59776E7E3;
	Thu, 27 Jun 2019 20:24:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB796E5C5;
 Thu, 27 Jun 2019 20:24:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17049726-1500050 for multiple; Thu, 27 Jun 2019 21:24:12 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627201530.GA2876@intel.intel>
References: <20190627102019.9019-1-tvrtko.ursulin@linux.intel.com>
 <20190627105343.9325-1-tvrtko.ursulin@linux.intel.com>
 <20190627201530.GA2876@intel.intel>
Message-ID: <156166704963.9225.18042195058995790784@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 21:24:09 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_ctx_switch: Update
 with engine discovery
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA2LTI3IDIxOjE1OjMwKQo+ID4gK2Jvb2wgZ2VtX2Nv
bnRleHRfaGFzX2VuZ2luZV9tYXAoaW50IGZkLCB1aW50MzJfdCBjdHgpCj4gPiArewo+ID4gKyAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHBhcmFtID0gewo+ID4gKyAgICAg
ICAgICAgICAucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fRU5HSU5FUywKPiA+ICsgICAgICAg
ICAgICAgLmN0eF9pZCA9IGN0eAo+ID4gKyAgICAgfTsKPiA+ICsgICAgIGludCByZXQ7Cj4gPiAr
Cj4gPiArICAgICByZXQgPSBfX2dlbV9jb250ZXh0X2dldF9wYXJhbShmZCwgJnBhcmFtKTsKPiA+
ICsgICAgIGlndF9hc3NlcnRfZXEocmV0LCAwKTsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBwYXJh
bS5zaXplOwo+IAo+IGEgc21hbGwgbml0cGljazogYm9vbCB0byBtZSBtZWFucyAnMCcgb3IgJzEn
Lgo+IAo+IFNvLCBpZiB5b3UgZG8gJ3JldHVybiBwYXJhbS5zaXplJywgSSB3b3VsZCBjYWxsIHRo
ZSBmdW5jdGlvbgo+IGdlbV9jb250ZXh0X2dldF9wYXJhbV9zaXplLCBvdGhlcndpc2UgSSB3b3Vs
ZCByZXR1cm4KPiAnISFwYXJhbS5zaXplJyBhbmQga2VlcCBpdCBib29sLgoKQW4gaW50ZWdlciBp
biBib29sZWFuIGNvbnRleHQgaXMgMCBvciAxLCB0aGUgISEgaXMgaW1wbGljaXQuIFdlIHVzZSB0
aGF0CnF1aXRlIGZyZXF1ZW50bHksIGUuZy4gYm9vbCBoYXNfcHRyKHZvaWQgKip4KSB7IHJldHVy
biAqeDsgfQogCj4gKFdlIGFyZSBhbHNvIHNvbWVob3cgYWJ1c2luZyBvbiB0aGUgc2l6ZSBkZWZp
bml0aW9uIG9mIGJvb2wgaW4KPiBDOTkvQzE3IG9yIHByZXZpb3VzLikKCkkgaG9wZSB3ZSBuZXZl
ciBhc3N1bWUgdGhlIHNpemUgb3IgYWxpZ25tZW50IG9mIGJvb2wuIEkgYWx3YXlzIGhvcGUgdGhl
CmNvbXBpbGVyIHdpbGwganVzdCByZWR1Y2UgaXQgdG8gdGhlIGNvbnRyb2wgZmxhZ3MgZm9yIGlu
bGluZSBwcmVkaWNhdGVzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
