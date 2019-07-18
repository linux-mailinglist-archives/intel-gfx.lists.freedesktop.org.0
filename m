Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B67996CE6B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 14:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241686E3AE;
	Thu, 18 Jul 2019 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44D66E3AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 12:59:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17399794-1500050 for multiple; Thu, 18 Jul 2019 13:59:44 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z44jfx1xxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190718080203.24704-1-chris@chris-wilson.co.uk>
 <op.z44jfx1xxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156345478170.24728.12871176123713789885@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 18 Jul 2019 13:59:41 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Flush the CT worker after
 updating log controls
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTE4IDEzOjUzOjQ3KQo+IE9uIFRodSwg
MTggSnVsIDIwMTkgMTA6MDI6MDMgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gLi4uCj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jICAKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCj4gPiBpbmRleCA3N2ZkYTFlODVkM2IuLmU4
MGMxZWIzMDllZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19sb2cuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2xvZy5jCj4gPiBAQCAtNjEzLDEyICs2MTMsMTEgQEAgdm9pZCBpbnRlbF9ndWNfbG9nX3Jl
bGF5X2ZsdXNoKHN0cnVjdCAgCj4gPiBpbnRlbF9ndWNfbG9nICpsb2cpCj4gPiAgdm9pZCBpbnRl
bF9ndWNfbG9nX3JlbGF5X2Nsb3NlKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCj4gPiAgewo+
ID4gICAgICAgc3RydWN0IGludGVsX2d1YyAqZ3VjID0gbG9nX3RvX2d1Yyhsb2cpOwo+ID4gLSAg
ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsK
PiA+ICAgICAgIGd1Y19sb2dfZGlzYWJsZV9mbHVzaF9ldmVudHMobG9nKTsKPiA+IC0gICAgIGlu
dGVsX3N5bmNocm9uaXplX2lycShpOTE1KTsKPiA+IC0gICAgIGZsdXNoX3dvcmsoJmxvZy0+cmVs
YXkuZmx1c2hfd29yayk7Cj4gPiArICAgICBmbHVzaF93b3JrKCZndWMtPmN0Lndvcmtlcik7Cj4g
Cj4gV2UgZG9uJ3QgbmVlZCB0byB0b3VjaCBjdC53b3JrZXIgaGVyZSBhcyBpbiBhYm92ZSBjYWxs
IHRvCj4gZ3VjX2xvZ19kaXNhYmxlX2ZsdXNoX2V2ZW50cygpIHdlIHdpbGwgdHVybiBvZmYgaGFu
ZGxpbmcgb2YKPiBhbGwgbG9nIGV2ZW50cyAodGhleSB3aWxsIGJlIGRyb3BwZWQgaWYgcHJvY2Vz
c2VkIGxhdGVyIGJ5Cj4gdGhlIGN0LndvcmtlciBpbiBpbnRlbF9ndWNfdG9faG9zdF9wcm9jZXNz
X3JlY3ZfbXNnKQoKQnV0Li4uIFRoZSBjaGVjayBvbiBndWMtPm1zZ19lbmFibGVkX21hc2sgaXMg
dW5zZXJpYWxpc2VkIGFuZCB5b3UgbXVzdApmbHVzaCB0aGUgd29ya2VyIHRvIGZsdXNoIGEgY29u
Y3VycmVudCBlbnF1ZXVlIGFzIHdlIGNhbmNlbCB0aGUKZmx1c2hfd29yay4gUHJldmlvdXNseSB0
aGF0IHdhcyBnaXZlbiBieSB0aGUgc3luY19pcnEsIGJ1dCB0aGUKcXVldWVfd29yayBpcyBubyBs
b25nZXIgaW5zaWRlIHRoZSBpcnEsIHNvIGl0IGRvZXMgbm90aGluZy4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
