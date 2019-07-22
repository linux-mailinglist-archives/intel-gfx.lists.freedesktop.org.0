Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BADFD70BB2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 23:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F373A89E5F;
	Mon, 22 Jul 2019 21:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2632B89E5F;
 Mon, 22 Jul 2019 21:41:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17516157-1500050 for multiple; Mon, 22 Jul 2019 22:40:56 +0100
MIME-Version: 1.0
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190722213759.26612-1-daniel.vetter@ffwll.ch>
References: <20190722212101.26030-1-daniel.vetter@ffwll.ch>
 <20190722213759.26612-1-daniel.vetter@ffwll.ch>
Message-ID: <156383165396.31349.434812108404058391@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 22 Jul 2019 22:40:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix up broken merge
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA3LTIyIDIyOjM3OjU5KQo+IE1heGltZSBkaWRu
J3QgcmVhbGx5IGNvbXBpbGUtdGVzdCB0aGlzIDotLwo+IAo+IFdlIG5lZWQgdG8gcmUtYXBwbHkK
PiAKPiBjb21taXQgZTRmYTg0NTdiMjE5NzExODUzOGExNDAwYjc1Yzg5OGY5ZmFhZjE2NAo+IEF1
dGhvcjogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBEYXRlOiAgIEZy
aSBKdW4gMTQgMjI6MzU6MjUgMjAxOSArMDIwMAo+IAo+ICAgICBkcm0vcHJpbWU6IEFsaWduIGdl
bV9wcmltZV9leHBvcnQgd2l0aCBvYmpfZnVuY3MuZXhwb3J0Cj4gCj4gcGx1cyBtYWtlIHN1cmUg
aTkxNV9nZW1fZG1hX2J1Zi5jIGRvZXNuJ3QgZ2V0IHpvbWJpZS1yZXN1cnJlY3QuIEl0Cj4gbW92
ZWQgaW4KPiAKPiBjb21taXQgMTBiZTk4YTc3YzU1OGY4Y2ZiODIzY2QyNzc3MTcxZmJiMzUwNDBm
Ngo+IEF1dGhvcjogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRGF0
ZTogICBUdWUgTWF5IDI4IDEwOjI5OjQ5IDIwMTkgKzAxMDAKPiAKPiAgICAgZHJtL2k5MTU6IE1v
dmUgbW9yZSBHRU0gb2JqZWN0cyB1bmRlciBnZW0vCj4gCj4gdjI6IFJlbWVtYmVyIHRoZSBzZWxm
dGVzdHMgKENocmlzKS4KPiAKPiBGaXhlczogMDNiMGYyY2U3MzVlICgiTWVyZ2UgdjUuMy1yYzEg
aW50byBkcm0tbWlzYy1uZXh0IikKPiBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBi
b290bGluLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
CgpNYXRjaGVzIHRoZSBzYW1lIGNvbXBpbGUgZml4IGFuZCBnaXQgcm0gYXMgSSBkaWQgbG9jYWxs
eSwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
