Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E2190059
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00956E303;
	Fri, 16 Aug 2019 10:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41DFA6E303
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:56:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18161602-1500050 for multiple; Fri, 16 Aug 2019 11:56:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816105357.14340-1-matthew.auld@intel.com>
In-Reply-To: <20190816105357.14340-1-matthew.auld@intel.com>
Message-ID: <156595301040.11610.1844688546579119287@skylake-alporthouse-com>
Date: Fri, 16 Aug 2019 11:56:50 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/buddy: tidy up i915_buddy_fini
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMTYgMTE6NTM6NTYpCj4gSWYgd2UgYXJlIGxl
YWtpbmcgbm9kZXMgZG9uJ3QgaGlkZSBpdC4gQWxzbyBzdG9wIHRyeWluZyB0byBiZQo+ICJkZWZl
bnNpdmUiIGFuZCBpbnN0ZWFkIGVtYnJhY2UgS2FzYW4gZXQgYWwuCj4gCj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9idWRkeS5jIHwgNyArLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9idWRkeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jCj4gaW5k
ZXggYjY3OWFiNmZkODg5Li41OTk1MjQ3ZmRmNzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9idWRkeS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9i
dWRkeS5jCj4gQEAgLTE3MSwxNSArMTcxLDEwIEBAIGludCBpOTE1X2J1ZGR5X2luaXQoc3RydWN0
IGk5MTVfYnVkZHlfbW0gKm1tLCB1NjQgc2l6ZSwgdTY0IGNodW5rX3NpemUpCj4gIAo+ICB2b2lk
IGk5MTVfYnVkZHlfZmluaShzdHJ1Y3QgaTkxNV9idWRkeV9tbSAqbW0pCj4gIHsKPiAtICAgICAg
IGludCBlcnIgPSAwOwo+ICAgICAgICAgaW50IGk7Cj4gIAo+ICAgICAgICAgZm9yIChpID0gMDsg
aSA8IG1tLT5uX3Jvb3RzOyArK2kpIHsKPiAtICAgICAgICAgICAgICAgaWYgKCFpOTE1X2J1ZGR5
X2Jsb2NrX2lzX2ZyZWUobW0tPnJvb3RzW2ldKSkgewo+IC0gICAgICAgICAgICAgICAgICAgICAg
IGVyciA9IC1FQlVTWTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiAtICAg
ICAgICAgICAgICAgfQo+IC0KPiArICAgICAgICAgICAgICAgR0VNX1dBUk5fT04oIWk5MTVfYnVk
ZHlfYmxvY2tfaXNfZnJlZShtbS0+cm9vdHNbaV0pKTsKCkd1dCBmZWVsaW5nIHNheXMgb25jZSwg
b3Igb25seSBmb3IgZGVidWcsIGFuZCB3ZSBuZWVkIHNvbWV0aGluZyBvdGhlcgp0aGFuIGEgR0VN
IGRlYnVnIHByZWZpeCBoZXJlLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
