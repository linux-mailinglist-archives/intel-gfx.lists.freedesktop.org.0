Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB80BDD1D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 13:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B9D89D87;
	Wed, 25 Sep 2019 11:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B103E89D87
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 11:29:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18610810-1500050 for multiple; Wed, 25 Sep 2019 12:29:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-13-chris@chris-wilson.co.uk>
 <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
 <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
 <156941064846.4979.4962798584225051716@skylake-alporthouse-com>
In-Reply-To: <156941064846.4979.4962798584225051716@skylake-alporthouse-com>
Message-ID: <156941098070.4979.2383476741571584068@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 12:29:40 +0100
Subject: Re: [Intel-gfx] [PATCH 12/27] drm/i915: Move request runtime
 management onto gt
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjUgMTI6MjQ6MDgpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDktMjUgMTI6MTc6MTQpCj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTA5LTI1IDExOjU3OjUzKQo+ID4gPiAKPiA+ID4gSSBhbSBzdGlsbCBzbGlnaHRseSB1
bmVhc3kgYWJvdXQgaGF2aW5nIHJlcXVlc3RzLCB3aGljaCBJIHNlZSBhcyBhIEdFTSAKPiA+ID4g
Y29uY2VwdCwgYmUgcmV0aXJlZCBmcm9tIEdULCBidXQgb2theSwgaXQncyBub3QgdGhlIG1vc3Qg
aW1wb3J0YW50IGlzc3VlIAo+ID4gPiBhdCB0aGUgbW9tZW50Lgo+ID4gCj4gPiByZXF1ZXN0cyBh
cmUgbm90IGEgR0VNIGNvbmNlcHQsIHRoZXkgYmVsb25nIGluIHNjaGVkLyA6KQo+IAo+IE92ZXJh
bGwgdGhvdWdoLCB0aGUgY29tcGFydG1lbnRhbGlzYXRpb24gaXMgaW50ZWxfZ3QgYmFzZWQuIE91
cgo+IHRpbWVsaW5lcyBhbmQgdGhlaXIgcG93ZXJtYW5hZ2VtZW50IGlzIGFzc29jaWF0ZWQgd2l0
aCB0aGUgZ3QsIHNvIHRoYXQncwo+IHdoZXJlIGl0IGZlZWxzIG5lY2Vzc2FyeSB0byBwcm92aWRl
IHRoZSBiYWNrZ3JvdW5kIGNsZWFudXAuIElmIHdlIGRyb3AKPiB0aGUgdGltZWxpbmUtPmd0LCB0
aGVuIEkgdGhpbmsgaXQncyB0aW1lIGZvciBhIG5ldyBob21lPwoKQWN0dWFsbHkgd291bGQgYSBz
aW1wbGUgcy8vaW50ZWxfZ3RfcmV0aXJlX3RpbWVsaW5lcygpLyBtYWtlIGl0IG1vcmUKcGFsYXRh
YmxlPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
